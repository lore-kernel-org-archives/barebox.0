Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pTt-00017V-VM
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 11:56:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z4pTP-0006RD-Bv
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:11 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z4pTN-0004UN-Hk
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:56:09 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 13:56:05 +0200
Message-Id: <1434455769-17216-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
References: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/6] Watchdog/i.MX: make the watchdog driver a regular driver
To: barebox@lists.infradead.org

Even if the driver for the internal watchdog unit is disabled, it gets
enabled again silently if we select an i.MX platform.

This change compiles the driver on user demand only. Barebox can handle one
watchdog and one reset source. This change enables a user to select a
different one if the built-in unit cannot be used due to hardware issues like
power management and voltage changes the internal watchdog cannot reset
correctly.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/Kconfig          |  1 -
 drivers/watchdog/Kconfig  | 15 ++++++++++++---
 drivers/watchdog/Makefile |  2 +-
 drivers/watchdog/imxwd.c  |  5 ++++-
 4 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 50f3095..b115d10 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -101,7 +101,6 @@ config ARCH_IMX
 	select GPIOLIB
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
-	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
 
 config ARCH_MVEBU
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7f7b02e..04fad45 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -1,7 +1,4 @@
 
-config WATCHDOG_IMX_RESET_SOURCE
-	bool
-
 menuconfig WATCHDOG
 	bool "Watchdog support"
 	help
@@ -22,6 +19,18 @@ config WATCHDOG_IMX
 	help
 	  Add support for watchdog found on Freescale i.MX SoCs.
 
+config WATCHDOG_IMX_RESET_SOURCE
+	depends on WATCHDOG_IMX
+	bool "Reset source provider"
+	help
+	  This watchdog unit can provide the reset reason.
+
+config WATCHDOG_IMX_RESET_FEATURE
+	depends on WATCHDOG_IMX
+	bool "Use for SoC reset"
+	help
+	  This watchdog unit can be used to reset/restart the SoC.
+
 config WATCHDOG_JZ4740
 	bool "Ingenic jz4740 SoC hardware watchdog"
 	depends on MACH_MIPS_XBURST
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 865fc47..446056d 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -1,4 +1,4 @@
 obj-$(CONFIG_WATCHDOG) += wd_core.o
 obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
-obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
+obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 5ffbac7..60e4c59 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -123,6 +123,7 @@ static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 
 static struct imx_wd *reset_wd;
 
+#ifdef CONFIG_WATCHDOG_IMX_RESET_FEATURE
 void __noreturn reset_cpu(unsigned long addr)
 {
 	if (reset_wd)
@@ -132,6 +133,7 @@ void __noreturn reset_cpu(unsigned long addr)
 
 	hang();
 }
+#endif
 
 static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 {
@@ -157,7 +159,8 @@ static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 
 static int imx21_wd_init(struct imx_wd *priv)
 {
-	imx_watchdog_detect_reset_source(priv);
+	if (IS_ENABLED(CONFIG_WATCHDOG_IMX_RESET_SOURCE))
+		imx_watchdog_detect_reset_source(priv);
 
 	/*
 	 * Disable watchdog powerdown counter
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
