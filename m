Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltV-0001Ts-BB
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:48 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:43 +0100
Message-Id: <1423478871-15276-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 02/10] ARM: socfpga: avoid using external regulator for PLL
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From Altera U-Boot:
	FogBugz #210587: Fixing PLL HW configuration issue

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/clock-manager.c              | 20 +++++++++++++-------
 arch/arm/mach-socfpga/include/mach/clock-manager.h |  5 +++++
 2 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-socfpga/clock-manager.c b/arch/arm/mach-socfpga/clock-manager.c
index 13ca69b977a0..dc81301efd01 100644
--- a/arch/arm/mach-socfpga/clock-manager.c
+++ b/arch/arm/mach-socfpga/clock-manager.c
@@ -123,11 +123,14 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg)
 	 * Put all plls VCO registers back to reset value.
 	 * Some code might have messed with them.
 	 */
-	writel(CLKMGR_MAINPLLGRP_VCO_RESET_VALUE,
+	writel(CLKMGR_MAINPLLGRP_VCO_RESET_VALUE &
+		~CLKMGR_MAINPLLGRP_VCO_REGEXTSEL_MASK,
 		cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
-	writel(CLKMGR_PERPLLGRP_VCO_RESET_VALUE,
+	writel(CLKMGR_PERPLLGRP_VCO_RESET_VALUE &
+		~CLKMGR_PERPLLGRP_VCO_REGEXTSEL_MASK,
 		cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
-	writel(CLKMGR_SDRPLLGRP_VCO_RESET_VALUE,
+	writel(CLKMGR_SDRPLLGRP_VCO_RESET_VALUE &
+		~CLKMGR_SDRPLLGRP_VCO_REGEXTSEL_MASK,
 		cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
 
 	/*
@@ -151,12 +154,15 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg)
 	 * We made sure bgpwr down was assert for 5 us. Now deassert BG PWR DN
 	 * with numerator and denominator.
 	 */
-	writel(cfg->main_vco_base | CLKMGR_MAINPLLGRP_VCO_REGEXTSEL_MASK,
+	writel(cfg->main_vco_base | CLEAR_BGP_EN_PWRDN,
 		cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
-	writel(cfg->peri_vco_base | CLKMGR_PERPLLGRP_VCO_REGEXTSEL_MASK,
+	writel(cfg->peri_vco_base | CLEAR_BGP_EN_PWRDN,
 		cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
-	writel(cfg->sdram_vco_base | CLKMGR_SDRPLLGRP_VCO_REGEXTSEL_MASK,
-		cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+	writel(cfg->sdram_vco_base |
+	       CLKMGR_SDRPLLGRP_VCO_OUTRESET_SET(0) |
+	       CLKMGR_SDRPLLGRP_VCO_OUTRESETALL_SET(0) |
+	       CLEAR_BGP_EN_PWRDN,
+	       cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
 
 	writel(cfg->mpuclk, cm + CLKMGR_MAINPLLGRP_MPUCLK_ADDRESS);
 	writel(cfg->mainclk, cm + CLKMGR_MAINPLLGRP_MAINCLK_ADDRESS);
diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/clock-manager.h
index a2b697561aeb..b67f256091d4 100644
--- a/arch/arm/mach-socfpga/include/mach/clock-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/clock-manager.h
@@ -185,4 +185,9 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg);
 #define CLKMGR_SDRPLLGRP_DDRDQCLK_CNT_MASK 0x000001ff
 #define CLKMGR_SDRPLLGRP_S2FUSER2CLK_CNT_MASK 0x000001ff
 
+#define CLEAR_BGP_EN_PWRDN \
+	(CLKMGR_MAINPLLGRP_VCO_PWRDN_SET(0)| \
+	CLKMGR_MAINPLLGRP_VCO_EN_SET(0)| \
+	CLKMGR_MAINPLLGRP_VCO_BGPWRDN_SET(0))
+
 #endif /* _CLOCK_MANAGER_H_ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
