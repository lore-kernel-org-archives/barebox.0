Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18p3-0005nd-MK
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 13:10:00 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 14:09:52 +0100
Message-Id: <20200210130952.19779-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200210130952.19779-1-a.fatoum@pengutronix.de>
References: <20200210130952.19779-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] reset: stm32: migrate restart reason and handler from
 stm32_iwdg
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The watchdog driver will remain unprobed if the driver or the OF node
is disabled, but the reset reason is useful even then.

System reset and reset source determination is achieved with the RCC
peripheral for which we have a reset controller driver.
Move the code over there, so reset reason and reset are available
always.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/reset-stm32.c   | 117 ++++++++++++++++++++++++++++++++--
 drivers/watchdog/stm32_iwdg.c |  99 ----------------------------
 2 files changed, 113 insertions(+), 103 deletions(-)

diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index 5689dfd4888a..00c4ac74c773 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -9,14 +9,48 @@
 #include <init.h>
 #include <linux/err.h>
 #include <linux/reset-controller.h>
+#include <restart.h>
+#include <reset_source.h>
 #include <asm/io.h>
 
 #define RCC_CL 0x4
 
+#define RCC_MP_GRSTCSETR		0x404
+#define RCC_MP_RSTSCLRR			0x408
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
+struct stm32_reset_reason {
+	uint32_t mask;
+	enum reset_src_type type;
+	int instance;
+};
+
 struct stm32_reset {
 	void __iomem *base;
 	struct reset_controller_dev rcdev;
+	struct restart_handler restart;
+	const struct stm32_reset_ops *ops;
+};
+
+struct stm32_reset_ops {
 	void (*reset)(void __iomem *reg, unsigned offset, bool assert);
+	void __noreturn (*sys_reset)(struct restart_handler *rst);
+	const struct stm32_reset_reason *reset_reasons;
 };
 
 static struct stm32_reset *to_stm32_reset(struct reset_controller_dev *rcdev)
@@ -40,12 +74,40 @@ static void stm32mcu_reset(void __iomem *reg, unsigned offset, bool assert)
 		clrbits_le32(reg, BIT(offset));
 }
 
+static u32 stm32_reset_status(struct stm32_reset *priv, unsigned long bank)
+{
+	return readl(priv->base + bank);
+}
+
 static void stm32_reset(struct stm32_reset *priv, unsigned long id, bool assert)
 {
 	int bank = (id / BITS_PER_LONG) * 4;
 	int offset = id % BITS_PER_LONG;
 
-	priv->reset(priv->base + bank, offset, assert);
+	priv->ops->reset(priv->base + bank, offset, assert);
+}
+
+static void stm32_set_reset_reason(struct stm32_reset *priv,
+				   const struct stm32_reset_reason *reasons)
+{
+	enum reset_src_type type = RESET_UKWN;
+	u32 reg;
+	int i, instance = 0;
+
+	reg = stm32_reset_status(priv, RCC_MP_RSTSCLRR);
+
+	for (i = 0; reasons[i].mask; i++) {
+		if (reg & reasons[i].mask) {
+			type     = reasons[i].type;
+			instance = reasons[i].instance;
+			break;
+		}
+	}
+
+	reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, instance);
+
+	pr_info("STM32 RCC reset reason %s (MP_RSTSR: 0x%08x)\n",
+		reset_source_xlate(type), reg);
 }
 
 static int stm32_reset_assert(struct reset_controller_dev *rcdev,
@@ -74,7 +136,7 @@ static int stm32_reset_probe(struct device_d *dev)
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
-	ret = dev_get_drvdata(dev, (const void **)&priv->reset);
+	ret = dev_get_drvdata(dev, (const void **)&priv->ops);
 	if (ret)
 		return ret;
 
@@ -87,12 +149,59 @@ static int stm32_reset_probe(struct device_d *dev)
 	priv->rcdev.ops = &stm32_reset_ops;
 	priv->rcdev.of_node = dev->device_node;
 
+	if (priv->ops->sys_reset) {
+		priv->restart.name = "stm32-rcc";
+		priv->restart.restart = priv->ops->sys_reset;
+		priv->restart.priority = 200;
+
+		ret = restart_handler_register(&priv->restart);
+		if (ret)
+			dev_warn(dev, "Cannot register restart handler\n");
+	}
+
+	if (priv->ops->reset_reasons)
+		stm32_set_reset_reason(priv, priv->ops->reset_reasons);
+
 	return reset_controller_register(&priv->rcdev);
 }
 
+static void __noreturn stm32mp_rcc_restart_handler(struct restart_handler *rst)
+{
+	struct stm32_reset *priv = container_of(rst, struct stm32_reset, restart);
+
+	stm32_reset(priv, RCC_MP_GRSTCSETR * BITS_PER_BYTE, true);
+
+	mdelay(1000);
+	hang();
+}
+
+static const struct stm32_reset_reason stm32mp_reset_reasons[] = {
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
+static const struct stm32_reset_ops stm32mp1_reset_ops = {
+	.reset = stm32mp_reset,
+	.sys_reset = stm32mp_rcc_restart_handler,
+	.reset_reasons = stm32mp_reset_reasons,
+};
+
+static const struct stm32_reset_ops stm32mcu_reset_ops = {
+	.reset = stm32mcu_reset,
+};
+
 static const struct of_device_id stm32_rcc_reset_dt_ids[] = {
-	{ .compatible = "st,stm32mp1-rcc", .data = stm32mp_reset },
-	{ .compatible = "st,stm32-rcc", .data = stm32mcu_reset },
+	{ .compatible = "st,stm32mp1-rcc", .data = &stm32mp1_reset_ops },
+	{ .compatible = "st,stm32-rcc", .data = &stm32mcu_reset_ops },
 	{ /* sentinel */ },
 };
 
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 8a28bfd8a06a..9e38f1a669f2 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -6,14 +6,11 @@
 #include <common.h>
 #include <init.h>
 #include <watchdog.h>
-#include <restart.h>
 #include <asm/io.h>
 #include <of_device.h>
 #include <linux/log2.h>
 #include <linux/iopoll.h>
 #include <linux/clk.h>
-#include <mfd/syscon.h>
-#include <reset_source.h>
 
 /* IWDG registers */
 #define IWDG_KR		0x00	/* Key register */
@@ -36,40 +33,12 @@
 #define SR_PVU	BIT(0) /* Watchdog prescaler value update */
 #define SR_RVU	BIT(1) /* Watchdog counter reload value update */
 
-#define RCC_MP_GRSTCSETR		0x404
-#define RCC_MP_RSTSCLRR			0x408
-#define RCC_MP_GRSTCSETR_MPSYSRST	BIT(0)
-
-#define STM32MP_RCC_RSTF_POR		BIT(0)
-#define STM32MP_RCC_RSTF_BOR		BIT(1)
-#define STM32MP_RCC_RSTF_PAD		BIT(2)
-#define STM32MP_RCC_RSTF_HCSS		BIT(3)
-#define STM32MP_RCC_RSTF_VCORE		BIT(4)
-
-#define STM32MP_RCC_RSTF_MPSYS		BIT(6)
-#define STM32MP_RCC_RSTF_MCSYS		BIT(7)
-#define STM32MP_RCC_RSTF_IWDG1		BIT(8)
-#define STM32MP_RCC_RSTF_IWDG2		BIT(9)
-
-#define STM32MP_RCC_RSTF_STDBY		BIT(11)
-#define STM32MP_RCC_RSTF_CSTDBY		BIT(12)
-#define STM32MP_RCC_RSTF_MPUP0		BIT(13)
-#define STM32MP_RCC_RSTF_MPUP1		BIT(14)
-
 /* set timeout to 100 ms */
 #define TIMEOUT_US	100000
 
-struct stm32_reset_reason {
-	uint32_t mask;
-	enum reset_src_type type;
-	int instance;
-};
-
 struct stm32_iwdg {
 	struct watchdog wdd;
-	struct restart_handler restart;
 	void __iomem *iwdg_base;
-	struct regmap *rcc_regmap;
 	unsigned int timeout;
 	unsigned int rate;
 };
@@ -79,17 +48,6 @@ static inline struct stm32_iwdg *to_stm32_iwdg(struct watchdog *wdd)
 	return container_of(wdd, struct stm32_iwdg, wdd);
 }
 
-static void __noreturn stm32_iwdg_restart_handler(struct restart_handler *rst)
-{
-	struct stm32_iwdg *wd = container_of(rst, struct stm32_iwdg, restart);
-
-	regmap_update_bits(wd->rcc_regmap, RCC_MP_GRSTCSETR,
-			   RCC_MP_GRSTCSETR_MPSYSRST, RCC_MP_GRSTCSETR_MPSYSRST);
-
-	mdelay(1000);
-	hang();
-}
-
 static void stm32_iwdg_ping(struct stm32_iwdg *wd)
 {
 	writel(KR_KEY_RELOAD, wd->iwdg_base + IWDG_KR);
@@ -149,47 +107,6 @@ static int stm32_iwdg_set_timeout(struct watchdog *wdd, unsigned int timeout)
 	return 0;
 }
 
-static const struct stm32_reset_reason stm32_reset_reasons[] = {
-	{ STM32MP_RCC_RSTF_POR,		RESET_POR, 0 },
-	{ STM32MP_RCC_RSTF_BOR,		RESET_BROWNOUT, 0 },
-	{ STM32MP_RCC_RSTF_STDBY,	RESET_WKE, 0 },
-	{ STM32MP_RCC_RSTF_CSTDBY,	RESET_WKE, 1 },
-	{ STM32MP_RCC_RSTF_MPSYS,	RESET_RST, 2 },
-	{ STM32MP_RCC_RSTF_MPUP0,	RESET_RST, 0 },
-	{ STM32MP_RCC_RSTF_MPUP1,	RESET_RST, 1 },
-	{ STM32MP_RCC_RSTF_IWDG1,	RESET_WDG, 0 },
-	{ STM32MP_RCC_RSTF_IWDG2,	RESET_WDG, 1 },
-	{ STM32MP_RCC_RSTF_PAD,		RESET_EXT, 1 },
-	{ /* sentinel */ }
-};
-
-static int stm32_set_reset_reason(struct regmap *rcc)
-{
-	enum reset_src_type type = RESET_UKWN;
-	u32 reg;
-	int ret;
-	int i, instance = 0;
-
-	ret = regmap_read(rcc, RCC_MP_RSTSCLRR, &reg);
-	if (ret)
-		return ret;
-
-	for (i = 0; stm32_reset_reasons[i].mask; i++) {
-		if (reg & stm32_reset_reasons[i].mask) {
-			type     = stm32_reset_reasons[i].type;
-			instance = stm32_reset_reasons[i].instance;
-			break;
-		}
-	}
-
-	reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, instance);
-
-	pr_info("STM32 RCC reset reason %s (MP_RSTSR: 0x%08x)\n",
-		reset_source_xlate(type), reg);
-
-	return 0;
-}
-
 struct stm32_iwdg_data {
 	bool has_pclk;
 	u32 max_prescaler;
@@ -264,22 +181,6 @@ static int stm32_iwdg_probe(struct device_d *dev)
 		return ret;
 	}
 
-	wd->restart.name = "stm32-iwdg";
-	wd->restart.restart = stm32_iwdg_restart_handler;
-	wd->restart.priority = 200;
-
-	wd->rcc_regmap = syscon_regmap_lookup_by_compatible("st,stm32mp1-rcc");
-	if (IS_ERR(wd->rcc_regmap))
-		dev_warn(dev, "Cannot register restart handler\n");
-
-	ret = restart_handler_register(&wd->restart);
-	if (ret)
-		dev_warn(dev, "Cannot register restart handler\n");
-
-	ret = stm32_set_reset_reason(wd->rcc_regmap);
-	if (ret)
-		dev_warn(dev, "Cannot determine reset reason\n");
-
 	dev_info(dev, "probed\n");
 	return 0;
 }
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
