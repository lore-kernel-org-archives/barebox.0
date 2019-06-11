Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadJL-00046j-Ss
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 09:43:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-000793-Ak
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-00058f-21
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2019 11:43:16 +0200
Message-Id: <20190611094319.9143-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190611094319.9143-1-a.fatoum@pengutronix.de>
References: <20190611094319.9143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 3/6] watchdog: add stm32 watchdog and reset driver
To: barebox@lists.infradead.org

The driver supports setting watchdog timeout, system reset
and querying reset reason. Disabling watchdog isn't possible
in hardware, thus users should either only enable it before
boot or have the poller take care of feeding it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/Kconfig     |   8 +
 drivers/watchdog/Makefile    |   1 +
 drivers/watchdog/stm32_wdt.c | 304 +++++++++++++++++++++++++++++++++++
 3 files changed, 313 insertions(+)
 create mode 100644 drivers/watchdog/stm32_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 04efb1a3c866..4471e12a36d3 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -81,4 +81,12 @@ config RAVE_SP_WATCHDOG
 	depends on RAVE_SP_CORE
 	help
 	  Support for the watchdog on RAVE SP device.
+
+config STM32_IWDG_WATCHDOG
+	bool "STM32 IWDG"
+	depends on ARCH_STM32MP
+	select MFD_SYSCON
+	help
+	  Enable the STM32 watchdog (IWDG) driver. Enable support to
+	  configure STM32's on-SoC watchdog.
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 6c8d36c8b805..b2f39fa3719e 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
 obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
 obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
+obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_wdt.o
diff --git a/drivers/watchdog/stm32_wdt.c b/drivers/watchdog/stm32_wdt.c
new file mode 100644
index 000000000000..a14d5ef5d2a1
--- /dev/null
+++ b/drivers/watchdog/stm32_wdt.c
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ */
+
+#include <common.h>
+#include <init.h>
+#include <watchdog.h>
+#include <restart.h>
+#include <asm/io.h>
+#include <of_device.h>
+#include <linux/log2.h>
+#include <linux/iopoll.h>
+#include <linux/clk.h>
+#include <mfd/syscon.h>
+#include <reset_source.h>
+
+/* IWDG registers */
+#define IWDG_KR		0x00	/* Key register */
+#define IWDG_PR		0x04	/* Prescaler Register */
+#define IWDG_RLR	0x08	/* ReLoad Register */
+#define IWDG_SR		0x0C	/* Status Register */
+
+/* IWDG_KR register bit mask */
+#define KR_KEY_RELOAD	0xAAAA	/* Reload counter enable */
+#define KR_KEY_ENABLE	0xCCCC	/* Peripheral enable */
+#define KR_KEY_EWA	0x5555	/* Write access enable */
+
+/* IWDG_PR register bit values */
+#define PR_SHIFT	2
+
+/* IWDG_RLR register values */
+#define RLR_MAX		GENMASK(11, 0)
+
+/* IWDG_SR register bit mask */
+#define SR_PVU	BIT(0) /* Watchdog prescaler value update */
+#define SR_RVU	BIT(1) /* Watchdog counter reload value update */
+
+#define RCC_MP_GRSTCSETR		0x404
+#define RCC_MP_RSTSCLRR			0x408
+#define RCC_MP_GRSTCSETR_MPSYSRST	BIT(0)
+
+#define STM32MP_RCC_RSTF_POR		BIT(0)
+#define STM32MP_RCC_RSTF_BOR		BIT(1)
+#define STM32MP_RCC_RSTF_PAD		BIT(2)
+#define STM32MP_RCC_RSTF_HCSS		BIT(3)
+#define STM32MP_RCC_RSTF_VCORE		BIT(4)
+
+#define STM32MP_RCC_RSTF_MPSYS		BIT(6)
+#define STM32MP_RCC_RSTF_MCSYS		BIT(7)
+#define STM32MP_RCC_RSTF_IWDG1		BIT(8)
+#define STM32MP_RCC_RSTF_IWDG2		BIT(9)
+
+#define STM32MP_RCC_RSTF_STDBY		BIT(11)
+#define STM32MP_RCC_RSTF_CSTDBY		BIT(12)
+#define STM32MP_RCC_RSTF_MPUP0		BIT(13)
+#define STM32MP_RCC_RSTF_MPUP1		BIT(14)
+
+/* set timeout to 100 ms */
+#define TIMEOUT_US	100000
+
+struct stm32_reset_reason {
+	uint32_t mask;
+	enum reset_src_type type;
+	int instance;
+};
+
+struct stm32_iwdg {
+	struct watchdog wdd;
+	struct restart_handler restart;
+	void __iomem *iwdg_base;
+	struct regmap *rcc_regmap;
+	unsigned int timeout;
+	unsigned int rate;
+};
+
+static inline struct stm32_iwdg *to_stm32_iwdg(struct watchdog *wdd)
+{
+	return container_of(wdd, struct stm32_iwdg, wdd);
+}
+
+static void __noreturn stm32_iwdg_restart_handler(struct restart_handler *rst)
+{
+	struct stm32_iwdg *wd = container_of(rst, struct stm32_iwdg, restart);
+
+	regmap_update_bits(wd->rcc_regmap, RCC_MP_GRSTCSETR,
+			   RCC_MP_GRSTCSETR_MPSYSRST, RCC_MP_GRSTCSETR_MPSYSRST);
+
+	mdelay(1000);
+	hang();
+}
+
+static void stm32_iwdg_ping(struct stm32_iwdg *wd)
+{
+	writel(KR_KEY_RELOAD, wd->iwdg_base + IWDG_KR);
+}
+
+static int stm32_iwdg_start(struct stm32_iwdg *wd, unsigned int timeout)
+{
+	u32 presc, iwdg_rlr, iwdg_pr, iwdg_sr;
+	int ret;
+
+	presc = DIV_ROUND_UP(timeout * wd->rate, RLR_MAX + 1);
+
+	/* The prescaler is align on power of 2 and start at 2 ^ PR_SHIFT. */
+	presc = roundup_pow_of_two(presc);
+	iwdg_pr = presc <= 1 << PR_SHIFT ? 0 : ilog2(presc) - PR_SHIFT;
+	iwdg_rlr = ((timeout * wd->rate) / presc) - 1;
+
+	/* enable write access */
+	writel(KR_KEY_EWA, wd->iwdg_base + IWDG_KR);
+
+	/* set prescaler & reload registers */
+	writel(iwdg_pr, wd->iwdg_base + IWDG_PR);
+	writel(iwdg_rlr, wd->iwdg_base + IWDG_RLR);
+	writel(KR_KEY_ENABLE, wd->iwdg_base + IWDG_KR);
+
+	/* wait for the registers to be updated (max 100ms) */
+	ret = readl_poll_timeout(wd->iwdg_base + IWDG_SR, iwdg_sr,
+				 !(iwdg_sr & (SR_PVU | SR_RVU)),
+				 TIMEOUT_US);
+	if (!ret)
+		wd->timeout = timeout;
+
+	return ret;
+}
+
+
+static int stm32_iwdg_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct stm32_iwdg *wd = to_stm32_iwdg(wdd);
+	int ret;
+
+	if (!timeout)
+		return -EINVAL; /* can't disable */
+
+	if (timeout > wdd->timeout_max)
+		return -EINVAL;
+
+	if (wd->timeout != timeout) {
+		ret = stm32_iwdg_start(wd, timeout);
+		if (ret) {
+			dev_err(wdd->hwdev, "Fail to (re)start watchdog\n");
+			return ret;
+		}
+	}
+
+	stm32_iwdg_ping(wd);
+	return 0;
+}
+
+static const struct stm32_reset_reason stm32_reset_reasons[] = {
+	{ STM32MP_RCC_RSTF_POR,		RESET_POR, 0 },
+	{ STM32MP_RCC_RSTF_BOR,		RESET_BROWNOUT, 0 },
+	{ STM32MP_RCC_RSTF_STDBY,	RESET_WKE, 0 },
+	{ STM32MP_RCC_RSTF_CSTDBY,	RESET_WKE, 1 },
+	{ STM32MP_RCC_RSTF_MPSYS,	RESET_RST, 2 },
+	{ STM32MP_RCC_RSTF_MPUP0,	RESET_RST, 0 },
+	{ STM32MP_RCC_RSTF_MPUP1,	RESET_RST, 1 },
+	{ STM32MP_RCC_RSTF_IWDG1,	RESET_WDG, 0 },
+	{ STM32MP_RCC_RSTF_IWDG2,	RESET_WDG, 1 },
+	{ STM32MP_RCC_RSTF_PAD,		RESET_EXT, 1 },
+	{ /* sentinel */ }
+};
+
+static int stm32_set_reset_reason(struct regmap *rcc)
+{
+	enum reset_src_type type = RESET_UKWN;
+	u32 reg;
+	int ret;
+	int i, instance = 0;
+
+	/*
+	 * SRSR register captures ALL reset event that occured since
+	 * POR, so we need to clear it to make sure we only caputre
+	 * the latest one.
+	 */
+	ret = regmap_read(rcc, RCC_MP_RSTSCLRR, &reg);
+	if (ret)
+		return ret;
+
+	for (i = 0; stm32_reset_reasons[i].mask; i++) {
+		if (reg & stm32_reset_reasons[i].mask) {
+			type     = stm32_reset_reasons[i].type;
+			instance = stm32_reset_reasons[i].instance;
+			break;
+		}
+	}
+
+	reset_source_set_priority(type, RESET_SOURCE_DEFAULT_PRIORITY);
+	reset_source_set_instance(type, instance);
+
+	pr_info("STM32 RCC reset reason %s (MP_RSTSR: 0x%08x)\n",
+		reset_source_name(), reg);
+
+	return 0;
+}
+
+struct stm32_iwdg_data {
+	bool has_pclk;
+	u32 max_prescaler;
+};
+
+static const struct stm32_iwdg_data stm32_iwdg_data = {
+	.has_pclk = false, .max_prescaler = 256,
+};
+
+static const struct stm32_iwdg_data stm32mp1_iwdg_data = {
+	.has_pclk = true, .max_prescaler = 1024,
+};
+
+static const struct of_device_id stm32_iwdg_of_match[] = {
+	{ .compatible = "st,stm32-iwdg",    .data = &stm32_iwdg_data },
+	{ .compatible = "st,stm32mp1-iwdg", .data = &stm32mp1_iwdg_data },
+	{ /* sentinel */ }
+};
+
+static int stm32_iwdg_probe(struct device_d *dev)
+{
+	struct stm32_iwdg_data *data;
+	struct stm32_iwdg *wd;
+	struct resource *res;
+	struct watchdog *wdd;
+	struct clk *clk;
+	int ret;
+
+	wd = xzalloc(sizeof(*wd));
+
+	ret = dev_get_drvdata(dev, (const void **)&data);
+	if (ret)
+		return -ENODEV;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		dev_err(dev, "could not get timer memory region\n");
+		return PTR_ERR(res);
+	}
+	wd->iwdg_base = IOMEM(res->start);
+
+	clk = clk_get(dev, "lsi");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = clk_enable(clk);
+	if (ret)
+		return ret;
+
+	wd->rate = clk_get_rate(clk);
+
+	if (data->has_pclk) {
+		clk = clk_get(dev, "pclk");
+		if (IS_ERR(clk))
+			return PTR_ERR(clk);
+
+		ret = clk_enable(clk);
+		if (ret)
+			return ret;
+	}
+
+	wdd = &wd->wdd;
+	wdd->hwdev = dev;
+	wdd->set_timeout = stm32_iwdg_set_timeout;
+	wdd->timeout_max = (RLR_MAX + 1) * data->max_prescaler * 1000;
+	wdd->timeout_max /= wd->rate * 1000;
+	wdd->timeout_cur = wdd->timeout_max;
+
+	ret = stm32_iwdg_set_timeout(wdd, wdd->timeout_max);
+	if (ret) {
+		dev_err(dev, "Failed to set initial watchdog timeout\n");
+		return ret;
+	}
+
+	ret = watchdog_register(wdd);
+	if (ret) {
+		dev_err(dev, "Failed to register watchdog device\n");
+		return ret;
+	}
+
+	wd->restart.name = "stm32-iwdg";
+	wd->restart.restart = stm32_iwdg_restart_handler;
+	wd->restart.priority = 200;
+
+	wd->rcc_regmap = syscon_regmap_lookup_by_compatible("st,stm32mp1-rcc");
+	if (IS_ERR(wd->rcc_regmap))
+		dev_warn(dev, "Cannot register restart handler\n");
+
+	ret = restart_handler_register(&wd->restart);
+	if (ret)
+		dev_warn(dev, "Cannot register restart handler\n");
+
+	ret = stm32_set_reset_reason(wd->rcc_regmap);
+	if (ret)
+		dev_warn(dev, "Cannot determine reset reason\n");
+
+	dev_info(dev, "probed\n");
+	return 0;
+}
+
+static struct driver_d stm32_iwdg_driver = {
+	.name  = "stm32-iwdg",
+	.probe = stm32_iwdg_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32_iwdg_of_match),
+};
+device_platform_driver(stm32_iwdg_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
