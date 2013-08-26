Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bv-1S
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:57 +0200
Message-Id: <1377500163-28962-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/22] ARM: am33xx: make DDR PLL frequency configurable
To: barebox@lists.infradead.org

Needed for 400MHz DDR3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c          |  2 +-
 arch/arm/boards/pcm051/lowlevel.c              |  2 +-
 arch/arm/mach-omap/am33xx_clock.c              | 10 +++++-----
 arch/arm/mach-omap/include/mach/am33xx-clock.h |  6 ++++--
 4 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index febe714..0a32d3b 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -89,7 +89,7 @@ static int beaglebone_board_init(void)
 	if (running_in_sdram())
 		return 0;
 
-	pll_init(MPUPLL_M_500, 24);
+	pll_init(MPUPLL_M_500, 24, DDRPLL_M_266);
 
 	am335x_sdram_init(0x18B, &ddr2_cmd_ctrl, &ddr2_regs, &ddr2_data);
 
diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
index 6ad170f..793d154 100644
--- a/arch/arm/boards/pcm051/lowlevel.c
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -67,7 +67,7 @@ static int pcm051_board_init(void)
 	if (running_in_sdram())
 		return 0;
 
-	pll_init(MPUPLL_M_600, 25);
+	pll_init(MPUPLL_M_600, 25, DDRPLL_M_266);
 
 	am335x_sdram_init(0x18B, &MT41J256M8HX15E_2x256M8_cmd,
 			&MT41J256M8HX15E_2x256M8_regs,
diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index c6cae42..692b0ec 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -248,7 +248,7 @@ static void per_pll_config(int osc)
 	while(__raw_readl(CM_IDLEST_DPLL_PER) != 0x1);
 }
 
-static void ddr_pll_config(int osc)
+static void ddr_pll_config(int osc, int ddrpll_M)
 {
 	u32 clkmode, clksel, div_m2;
 
@@ -263,7 +263,7 @@ static void ddr_pll_config(int osc)
 	while ((__raw_readl(CM_IDLEST_DPLL_DDR) & 0x00000100) != 0x00000100);
 
 	clksel = clksel & (~0x7ffff);
-	clksel = clksel | ((DDRPLL_M << 0x8) | (osc - 1));
+	clksel = clksel | ((ddrpll_M << 0x8) | (osc - 1));
 	__raw_writel(clksel, CM_CLKSEL_DPLL_DDR);
 
 	div_m2 = div_m2 & 0xFFFFFFE0;
@@ -288,18 +288,18 @@ void enable_ddr_clocks(void)
 		PRCM_L3_GCLK_ACTIVITY));
 	/* Poll if module is functional */
 	while ((__raw_readl(CM_PER_EMIF_CLKCTRL)) != PRCM_MOD_EN);
-
 }
 
 /*
  * Configure the PLL/PRCM for necessary peripherals
  */
-void pll_init(int mpupll_M, int osc)
+void pll_init(int mpupll_M, int osc, int ddrpll_M)
 {
 	mpu_pll_config(mpupll_M, osc);
 	core_pll_config(osc);
 	per_pll_config(osc);
-	ddr_pll_config(osc);
+	ddr_pll_config(osc, ddrpll_M);
+
 	/* Enable the required interconnect clocks */
 	interface_clocks_enable();
 	/* Enable power domain transition */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 6035da6..b3c7519 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -48,7 +48,9 @@
 
 /* DDR Freq is 266 MHZ for now*/
 /* Set Fdll = 400 MHZ , Fdll = M * 2 * CLKINP/ N + 1; clkout = Fdll /(2 * M2) */
-#define DDRPLL_M	266
+#define DDRPLL_M_266	266
+#define DDRPLL_M_400	400
+#define DDRPLL_N	(OSC - 1)
 #define DDRPLL_M2	1
 
 /* PRCM */
@@ -181,7 +183,7 @@
 
 #define CM_ALWON_GPMC_CLKCTRL           CM_PER_GPMC_CLKCTRL
 
-extern void pll_init(int mpupll_M, int osc);
+extern void pll_init(int mpupll_M, int osc, int ddrpll_M);
 extern void enable_ddr_clocks(void);
 
 #endif  /* endif _AM33XX_CLOCKS_H_ */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
