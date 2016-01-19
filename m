Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLRhk-0007py-Ad
 for barebox@lists.infradead.org; Tue, 19 Jan 2016 08:31:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D97DEA0039D
 for <barebox@lists.infradead.org>; Tue, 19 Jan 2016 09:31:41 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 19 Jan 2016 09:30:54 +0100
Message-Id: <1453192254-8266-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1453192254-8266-1-git-send-email-t.remmet@phytec.de>
References: <1453192254-8266-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/2] arm: am33xx: Master Osc clock speed handling
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Setup the plls with Master Osc. clock speed from the SYSBOOT
Configuration Pin.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/afi-gf/lowlevel.c              |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c          |  4 ++--
 arch/arm/boards/phytec-som-am335x/lowlevel.c   |  4 +---
 arch/arm/mach-omap/am33xx_clock.c              | 10 +++++++++-
 arch/arm/mach-omap/include/mach/am33xx-clock.h |  2 +-
 5 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 4aaecb9..efe15ec 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -222,7 +222,7 @@ static noinline int gf_sram_init(void)
 	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
 	/* Setup the PLLs and the clocks for the peripherals */
-	am33xx_pll_init(MPUPLL_M_500, 24, DDRPLL_M_200);
+	am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_200);
 
 	board_config_ddr();
 
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 05b3e5f..79d5985 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -138,11 +138,11 @@ static noinline int beaglebone_sram_init(void)
 
 	/* Setup the PLLs and the clocks for the peripherals */
 	if (is_beaglebone_black()) {
-		am33xx_pll_init(MPUPLL_M_500, 24, DDRPLL_M_400);
+		am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);
 		am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs,
 				&ddr3_data);
 	} else {
-		am33xx_pll_init(MPUPLL_M_500, 24, DDRPLL_M_266);
+		am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_266);
 		am335x_sdram_init(0x18B, &ddr2_cmd_ctrl, &ddr2_regs,
 				&ddr2_data);
 	}
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 64c1c53..d7afbb6 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -32,7 +32,6 @@
 
 #include "ram-timings.h"
 
-#define CLK_M_OSC_MHZ	25
 #define DDR_IOCTRL	0x18B
 
 static const struct am33xx_cmd_control physom_cmd = {
@@ -67,11 +66,10 @@ static noinline void physom_board_init(int sdram, void *fdt)
 	writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
 	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
-
 	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
 	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
-	am33xx_pll_init(MPUPLL_M_600, CLK_M_OSC_MHZ, DDRPLL_M_400);
+	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
 
 	am335x_sdram_init(DDR_IOCTRL, &physom_cmd,
 			&timing->regs,
diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index 19aeb59..23666f2 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <asm/io.h>
 #include <mach/am33xx-clock.h>
+#include <asm-generic/div64.h>
 
 #define PRCM_MOD_EN		0x2
 #define	PRCM_FORCE_WAKEUP	0x2
@@ -304,8 +305,15 @@ void am33xx_enable_ddr_clocks(void)
 /*
  * Configure the PLL/PRCM for necessary peripherals
  */
-void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M)
+void am33xx_pll_init(int mpupll_M, int ddrpll_M)
 {
+	int osc;
+	u64 tmp;
+
+	tmp = am33xx_get_osc_clock();
+	do_div(tmp, 1000000);
+	osc = tmp;
+
 	mpu_pll_config(mpupll_M, osc);
 	core_pll_config(osc);
 	per_pll_config(osc);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index a458ccd..95a147f 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -183,7 +183,7 @@
 
 #define CM_ALWON_GPMC_CLKCTRL           CM_PER_GPMC_CLKCTRL
 
-void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M);
+void am33xx_pll_init(int mpupll_M, int ddrpll_M);
 void am33xx_enable_ddr_clocks(void);
 u64 am33xx_get_osc_clock(void);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
