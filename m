Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5AS-0003ez-W7
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:30:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:30:00 +0200
Message-Id: <1349433000-1320-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349433000-1320-1-git-send-email-s.hauer@pengutronix.de>
References: <1349433000-1320-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] ARM i.MX/watchdog: Make i.MX watchdog driver the reset
 source on i.MX
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                |    1 +
 arch/arm/mach-imx/clocksource.c |   37 -------------------------------------
 drivers/watchdog/Kconfig        |    5 ++++-
 drivers/watchdog/Makefile       |    2 +-
 drivers/watchdog/imxwd.c        |   33 +++++++++++++++++++++++++++------
 5 files changed, 33 insertions(+), 45 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8278c82..dc90c02 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -42,6 +42,7 @@ config ARCH_IMX
 	select GPIOLIB
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
+	select WATCHDOG_IMX_RESET_SOURCE
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 69a688c..e482fad 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -179,40 +179,3 @@ static int imx_gpt_init(void)
 	return platform_driver_register(&imx_gpt_driver);
 }
 coredevice_initcall(imx_gpt_init);
-
-/*
- * Watchdog Registers
- */
-#ifdef CONFIG_ARCH_IMX1
-#define WDOG_WCR	0x00 /* Watchdog Control Register */
-#define WDOG_WSR	0x04 /* Watchdog Service Register */
-#define WDOG_WSTR	0x08 /* Watchdog Status Register  */
-#define WDOG_WCR_WDE	(1 << 0)
-#else
-#define WDOG_WCR	0x00 /* Watchdog Control Register */
-#define WDOG_WSR	0x02 /* Watchdog Service Register */
-#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
-#define WDOG_WCR_WDE	(1 << 2)
-#endif
-
-/*
- * Reset the cpu by setting up the watchdog timer and let it time out
- */
-void __noreturn reset_cpu (unsigned long addr)
-{
-	void __iomem *wdt = IOMEM(IMX_WDT_BASE);
-
-	/* Disable watchdog and set Time-Out field to 0 */
-	writew(0x0, wdt + WDOG_WCR);
-
-	/* Write Service Sequence */
-	writew(0x5555, wdt + WDOG_WSR);
-	writew(0xaaaa, wdt + WDOG_WSR);
-
-	/* Enable watchdog */
-	writew(WDOG_WCR_WDE, wdt + WDOG_WCR);
-
-	while (1);
-	/*NOTREACHED*/
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 645b5c7..ba33617 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -1,3 +1,7 @@
+
+config WATCHDOG_IMX_RESET_SOURCE
+	bool
+
 menuconfig WATCHDOG
 	bool "Watchdog support              "
 	help
@@ -17,5 +21,4 @@ config WATCHDOG_IMX
 	depends on ARCH_IMX
 	help
 	  Add support for watchdog found on Freescale i.MX SoCs.
-
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index e655454..f522b88 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,3 +1,3 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
-obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
+obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 43e4803..7bbb86c 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -103,6 +103,18 @@ static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	return priv->set_timeout(priv, timeout);
 }
 
+static struct imx_wd *reset_wd;
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	if (reset_wd)
+		reset_wd->set_timeout(reset_wd, -1);
+
+	mdelay(1000);
+
+	hang();
+}
+
 static int imx_wd_probe(struct device_d *dev)
 {
 	struct imx_wd *priv;
@@ -119,16 +131,22 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
 	priv->dev = dev;
 
-	ret = watchdog_register(&priv->wd);
-	if (ret)
-		goto on_error;
+	if (!reset_wd)
+		reset_wd = priv;
+
+	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
+		ret = watchdog_register(&priv->wd);
+		if (ret)
+			goto on_error;
+	}
 
 	dev->priv = priv;
 
 	return 0;
 
 on_error:
-	free(priv);
+	if (reset_wd && reset_wd != priv)
+		free(priv);
 	return ret;
 }
 
@@ -136,8 +154,11 @@ static void imx_wd_remove(struct device_d *dev)
 {
 	struct imx_wd *priv = dev->priv;
 
-	watchdog_deregister(&priv->wd);
-	free(priv);
+	if (IS_ENABLED(CONFIG_WATCHDOG_IMX))
+		watchdog_deregister(&priv->wd);
+
+	if (reset_wd && reset_wd != priv)
+		free(priv);
 }
 
 static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
