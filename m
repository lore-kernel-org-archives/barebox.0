Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIvz-0003hq-Am
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 20:11:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvx-00064d-61
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvu-0001sy-Kn
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jul 2019 22:11:12 +0200
Message-Id: <20190710201112.9086-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190710201112.9086-1-a.fatoum@pengutronix.de>
References: <20190710201112.9086-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/7] watchdog: add support for STPMIC1 integrated watchdog
To: barebox@lists.infradead.org

The driver adds support for the PMIC's watchdog, reset, poweroff
and reset reason query capabilities.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/Kconfig       |   7 ++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/stpmic1_wdt.c | 224 +++++++++++++++++++++++++++++++++
 3 files changed, 232 insertions(+)
 create mode 100644 drivers/watchdog/stpmic1_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 486ef784eb79..fbaab896d460 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -89,4 +89,11 @@ config STM32_IWDG_WATCHDOG
 	help
 	  Enable to support configuration of the STM32's on-SoC IWDG watchdog.
 	  Once started by the user, the IWDG can't be disabled.
+
+config STPMIC1_WATCHDOG
+	bool "STPMIC1 Watchdog"
+	depends on MFD_STPMIC1
+	help
+	  Enable to support configuration of the stpmic1's built-in watchdog.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index e731c632c9aa..1fbd780885cb 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
 obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
 obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_iwdg.o
+obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
new file mode 100644
index 000000000000..9b37a5ae3b92
--- /dev/null
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -0,0 +1,224 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ */
+
+#include <common.h>
+#include <init.h>
+#include <watchdog.h>
+#include <asm/io.h>
+#include <of_device.h>
+#include <linux/iopoll.h>
+#include <poweroff.h>
+#include <mfd/syscon.h>
+#include <restart.h>
+#include <reset_source.h>
+
+#define RESTART_SR		0x05
+#define MAIN_CR			0x10
+#define WCHDG_CR		0x1B
+#define WCHDG_TIMER_CR		0x1C
+
+/* Restart Status Register (RESTART_SR) */
+#define R_RST			BIT(0)
+#define R_SWOFF			BIT(1)
+#define R_WDG			BIT(2)
+#define R_PKEYLKP		BIT(3)
+#define R_VINOK_FA		BIT(4)
+
+/* Main PMIC Control Register (MAIN_CR) */
+#define SWOFF                   BIT(0)
+#define RREQ_EN                 BIT(1)
+
+/* Watchdog Control Register (WCHDG_CR) */
+#define WDT_START		BIT(0)
+#define WDT_PING		BIT(1)
+#define WDT_START_MASK		BIT(0)
+#define WDT_PING_MASK		BIT(1)
+#define WDT_STOP		0
+
+#define PMIC_WDT_MIN_TIMEOUT 1
+#define PMIC_WDT_MAX_TIMEOUT 256
+#define PMIC_WDT_DEFAULT_TIMEOUT 30
+
+
+struct stpmic1_reset_reason {
+	uint32_t mask;
+	enum reset_src_type type;
+	int instance;
+};
+
+struct stpmic1_wdt {
+	struct watchdog wdd;
+	struct restart_handler restart;
+	struct poweroff_handler poweroff;
+	struct regmap *regmap;
+	unsigned int timeout;
+};
+
+static inline struct stpmic1_wdt *to_stpmic1_wdt(struct watchdog *wdd)
+{
+	return container_of(wdd, struct stpmic1_wdt, wdd);
+}
+
+static int stpmic1_wdt_ping(struct regmap *regmap)
+{
+	return regmap_update_bits(regmap, WCHDG_CR, WDT_PING_MASK, WDT_PING);
+}
+
+static int stpmic1_wdt_start(struct regmap *regmap, unsigned int timeout)
+{
+	int ret = regmap_write(regmap, WCHDG_TIMER_CR, timeout - 1);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(regmap, WCHDG_CR, WDT_START_MASK, WDT_START);
+}
+
+static int stpmic1_wdt_stop(struct regmap *regmap)
+{
+	return regmap_update_bits(regmap, WCHDG_CR, WDT_START_MASK, WDT_STOP);
+}
+
+static int stpmic1_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct stpmic1_wdt *wdt = to_stpmic1_wdt(wdd);
+	int ret;
+
+	if (!timeout)
+		return stpmic1_wdt_stop(wdt->regmap);
+
+	if (timeout < PMIC_WDT_MIN_TIMEOUT || timeout > wdd->timeout_max)
+		return -EINVAL;
+
+	if (wdt->timeout == timeout)
+		return stpmic1_wdt_ping(wdt->regmap);
+
+	ret = stpmic1_wdt_start(wdt->regmap, timeout);
+	if (ret)
+		return ret;
+
+	wdt->timeout = timeout;
+	return 0;
+}
+
+static void __noreturn stpmic1_restart_handler(struct restart_handler *rst)
+{
+	struct stpmic1_wdt *wdt = container_of(rst, struct stpmic1_wdt, restart);
+
+	regmap_write_bits(wdt->regmap, MAIN_CR,
+			  SWOFF | RREQ_EN, SWOFF | RREQ_EN);
+
+	mdelay(1000);
+	hang();
+}
+
+static void __noreturn stpmic1_poweroff(struct poweroff_handler *handler)
+{
+	struct stpmic1_wdt *wdt = container_of(handler, struct stpmic1_wdt, poweroff);
+
+	shutdown_barebox();
+
+	regmap_write_bits(wdt->regmap, MAIN_CR,
+			  SWOFF | RREQ_EN, SWOFF);
+
+	mdelay(1000);
+	hang();
+}
+
+static const struct stpmic1_reset_reason stpmic1_reset_reasons[] = {
+	{ R_VINOK_FA,	RESET_BROWNOUT, 0 },
+	{ R_PKEYLKP,	RESET_EXT, 0 },
+	{ R_WDG,	RESET_WDG, 2 },
+	{ R_SWOFF,	RESET_RST, 0 },
+	{ R_RST,	RESET_EXT, 0 },
+	{ /* sentinel */ }
+};
+
+static int stpmic1_set_reset_reason(struct regmap *map)
+{
+	enum reset_src_type type = RESET_POR;
+	u32 reg;
+	int ret;
+	int i, instance = 0;
+
+	ret = regmap_read(map, RESTART_SR, &reg);
+	if (ret)
+		return ret;
+
+	for (i = 0; stpmic1_reset_reasons[i].mask; i++) {
+		if (reg & stpmic1_reset_reasons[i].mask) {
+			type     = stpmic1_reset_reasons[i].type;
+			instance = stpmic1_reset_reasons[i].instance;
+			break;
+		}
+	}
+
+	reset_source_set_priority(type, 400);
+	reset_source_set_instance(type, instance);
+
+	pr_info("STPMIC1 reset reason %s (RESTART_SR: 0x%08x)\n",
+		reset_source_name(), reg);
+
+	return 0;
+}
+
+static int stpmic1_wdt_probe(struct device_d *dev)
+{
+	struct stpmic1_wdt *wdt;
+	struct watchdog *wdd;
+	int ret;
+
+	wdt = xzalloc(sizeof(*wdt));
+	wdt->regmap = dev->parent->priv;
+
+	wdd = &wdt->wdd;
+	wdd->hwdev = dev;
+	wdd->set_timeout = stpmic1_wdt_set_timeout;
+	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
+	wdd->timeout_cur = PMIC_WDT_DEFAULT_TIMEOUT;
+
+	/* have the watchdog reset, not power-off the system */
+	regmap_write_bits(wdt->regmap, MAIN_CR, RREQ_EN, RREQ_EN);
+
+	ret = watchdog_register(wdd);
+	if (ret) {
+		dev_err(dev, "Failed to register watchdog device\n");
+		return ret;
+	}
+
+	wdt->restart.name = "stpmic1-reset";
+	wdt->restart.restart = stpmic1_restart_handler;
+	wdt->restart.priority = 300;
+
+	ret = restart_handler_register(&wdt->restart);
+	if (ret)
+		dev_warn(dev, "Cannot register restart handler\n");
+
+	wdt->poweroff.name = "stpmic1-poweroff";
+	wdt->poweroff.poweroff = stpmic1_poweroff;
+	wdt->poweroff.priority = 200;
+
+	ret = poweroff_handler_register(&wdt->poweroff);
+	if (ret)
+		dev_warn(dev, "Cannot register poweroff handler\n");
+
+	stpmic1_set_reset_reason(wdt->regmap);
+	if (ret)
+		dev_warn(dev, "Cannot query reset reason\n");
+
+	dev_info(dev, "probed\n");
+	return 0;
+}
+
+static __maybe_unused const struct of_device_id stpmic1_wdt_of_match[] = {
+	{ .compatible = "st,stpmic1-wdt" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d stpmic1_wdt_driver = {
+	.name  = "stpmic1-wdt",
+	.probe = stpmic1_wdt_probe,
+	.of_compatible = DRV_OF_COMPAT(stpmic1_wdt_of_match),
+};
+device_platform_driver(stpmic1_wdt_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
