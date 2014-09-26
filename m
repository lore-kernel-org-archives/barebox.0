Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQnZ-0004hU-PB
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:22:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:10 +0200
Message-Id: <1411719735-30949-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] ARM: AM33xx: Enable USB and USB phy clocks
To: barebox@lists.infradead.org
Cc: Rolf Evers-Fischer <rolf.evers.fischer@delphi.com>

From: Rolf Evers-Fischer <rolf.evers.fischer@delphi.com>

These are necessary for USB support. To make sure they are actually
enabled when a USB capable barebox is started call the clock enable
function during startup also for the full barebox, not only the MLO.

Signed-off-by: Rolf Evers-Fischer <rolf.evers.fischer@delphi.com>
---
 arch/arm/mach-omap/am33xx_clock.c                | 15 +++++++++++++--
 arch/arm/mach-omap/am33xx_generic.c              |  2 ++
 arch/arm/mach-omap/include/mach/am33xx-clock.h   |  2 ++
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  1 +
 4 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 9105ddc..6d8adde 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -88,8 +88,10 @@ static void power_domain_transition_enable(void)
 /*
  * Enable the module clock and the power domain for required peripherals
  */
-static void per_clocks_enable(void)
+void am33xx_enable_per_clocks(void)
 {
+	u32 clkdcoldo;
+
 	/* Enable the module clock */
 	__raw_writel(PRCM_MOD_EN, CM_PER_TIMER2_CLKCTRL);
 	while (__raw_readl(CM_PER_TIMER2_CLKCTRL) != PRCM_MOD_EN);
@@ -154,6 +156,15 @@ static void per_clocks_enable(void)
 
 	__raw_writel(PRCM_MOD_EN, CM_PER_SPI1_CLKCTRL);
 	while (__raw_readl(CM_PER_SPI1_CLKCTRL) != PRCM_MOD_EN);
+
+	/* USB */
+	__raw_writel(PRCM_MOD_EN, CM_PER_USB0_CLKCTRL);
+	while ((__raw_readl(CM_PER_USB0_CLKCTRL) & 0x30000) != 0x0);
+
+	clkdcoldo = __raw_readl(CM_CLKDCOLDO_DPLL_PER);
+	clkdcoldo = clkdcoldo | 0x100;
+	__raw_writel(clkdcoldo, CM_CLKDCOLDO_DPLL_PER);
+	while ((__raw_readl(CM_CLKDCOLDO_DPLL_PER) & 0x00000200) != 0x200);
 }
 
 static void mpu_pll_config(int mpupll_M, int osc)
@@ -305,5 +316,5 @@ void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M)
 	/* Enable power domain transition */
 	power_domain_transition_enable();
 	/* Enable the required peripherals */
-	per_clocks_enable();
+	am33xx_enable_per_clocks();
 }
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 71c528c..f293134 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -207,6 +207,8 @@ int am33xx_init(void)
 {
 	omap_gpmc_base = (void *)AM33XX_GPMC_BASE;
 
+	am33xx_enable_per_clocks();
+
 	return am33xx_bootsource();
 }
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 10c2f29..2564fa7 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -74,6 +74,7 @@
 #define CM_CLKMODE_DPLL_PER             (CM_WKUP + 0x8c)
 #define CM_DIV_M2_DPLL_PER              (CM_WKUP + 0xAC)
 #define CM_IDLEST_DPLL_PER              (CM_WKUP + 0x70)
+#define CM_CLKDCOLDO_DPLL_PER           (CM_WKUP + 0x7C) /* for USB_PHY clock */
 
 /* Display PLL */
 #define CM_CLKSEL_DPLL_DISP             (CM_WKUP + 0x54)
@@ -140,6 +141,7 @@
 #define CM_PER_MMC0_CLKCTRL             (CM_PER + 0x3C)
 #define CM_PER_MMC1_CLKCTRL             (CM_PER + 0xF4)
 #define CM_PER_MMC2_CLKCTRL             (CM_PER + 0xF8)
+#define CM_PER_USB0_CLKCTRL             (CM_PER + 0x1c) /* USB */
 
 /* PRCM */
 #define CM_DPLL_OFFSET                  (AM33XX_PRM_BASE + 0x0300)
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index 75ac00a..6c85d51 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -30,6 +30,7 @@ u32 am33xx_running_in_sdram(void);
 
 void __noreturn am33xx_reset_cpu(unsigned long addr);
 
+void am33xx_enable_per_clocks(void);
 int am33xx_init(void);
 int am33xx_devices_init(void);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
