Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8P-0008F4-PG
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:39 +0100
Message-Id: <1385132083-7484-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/16] ARM: am33xx: Add am33xx_ prefix to SoC specific
 functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c          | 4 ++--
 arch/arm/boards/pcm051/lowlevel.c              | 2 +-
 arch/arm/mach-omap/am33xx_clock.c              | 4 ++--
 arch/arm/mach-omap/am33xx_generic.c            | 2 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 1f2b833..a4d3232 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -126,11 +126,11 @@ static int beaglebone_board_init(void)
 
 	/* Setup the PLLs and the clocks for the peripherals */
 	if (is_beaglebone_black()) {
-		pll_init(MPUPLL_M_500, 24, DDRPLL_M_400);
+		am33xx_pll_init(MPUPLL_M_500, 24, DDRPLL_M_400);
 		am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs,
 				&ddr3_data);
 	} else {
-		pll_init(MPUPLL_M_500, 24, DDRPLL_M_266);
+		am33xx_pll_init(MPUPLL_M_500, 24, DDRPLL_M_266);
 		am335x_sdram_init(0x18B, &ddr2_cmd_ctrl, &ddr2_regs,
 				&ddr2_data);
 	}
diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
index 0a55ad7..ded108e 100644
--- a/arch/arm/boards/pcm051/lowlevel.c
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -68,7 +68,7 @@ static int pcm051_board_init(void)
 	if (am33xx_running_in_sdram())
 		return 0;
 
-	pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
+	am33xx_pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
 
 	am335x_sdram_init(0x18B, &MT41J256M8HX15E_2x256M8_cmd,
 			&MT41J256M8HX15E_2x256M8_regs,
diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 692b0ec..9105ddc 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -276,7 +276,7 @@ static void ddr_pll_config(int osc, int ddrpll_M)
 	while ((__raw_readl(CM_IDLEST_DPLL_DDR) & 0x00000001) != 0x1);
 }
 
-void enable_ddr_clocks(void)
+void am33xx_enable_ddr_clocks(void)
 {
 	/* Enable the  EMIF_FW Functional clock */
 	__raw_writel(PRCM_MOD_EN, CM_PER_EMIF_FW_CLKCTRL);
@@ -293,7 +293,7 @@ void enable_ddr_clocks(void)
 /*
  * Configure the PLL/PRCM for necessary peripherals
  */
-void pll_init(int mpupll_M, int osc, int ddrpll_M)
+void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M)
 {
 	mpu_pll_config(mpupll_M, osc);
 	core_pll_config(osc);
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 864f210..4e81fcd 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -337,7 +337,7 @@ void am335x_sdram_init(int ioctrl, const struct am33xx_cmd_control *cmd_ctrl,
 {
 	uint32_t val;
 
-	enable_ddr_clocks();
+	am33xx_enable_ddr_clocks();
 
 	am33xx_config_vtp();
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index ecd90b2..65fbed6 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -184,7 +184,7 @@
 
 #define CM_ALWON_GPMC_CLKCTRL           CM_PER_GPMC_CLKCTRL
 
-extern void pll_init(int mpupll_M, int osc, int ddrpll_M);
-extern void enable_ddr_clocks(void);
+void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M);
+void am33xx_enable_ddr_clocks(void);
 
 #endif  /* endif _AM33XX_CLOCKS_H_ */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
