Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZBX6-00077H-Gu
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 08:15:43 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Jan 2018 09:14:19 +0100
Message-Id: <20180110081420.10722-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
References: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: SoCFPGA: remove emac init code
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

There is a proper driver now that handles the PHY setup for SoCFPGA.
Get rid of the code from mach-socfpga.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/cyclone5-generic.c | 35 --------------------------------
 1 file changed, 35 deletions(-)

diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
index 73a8ad03b738..dfb1f49e4d36 100644
--- a/arch/arm/mach-socfpga/cyclone5-generic.c
+++ b/arch/arm/mach-socfpga/cyclone5-generic.c
@@ -161,43 +161,8 @@ static int socfpga_detect_sdram(void)
 	return 0;
 }
 
-/* Some initialization for the EMAC */
-static void socfpga_init_emac(void)
-{
-	uint32_t rst, val;
-
-	/* No need for this without network support, e.g. xloader build */
-	if (!IS_ENABLED(CONFIG_NET))
-		return;
-
-	/* According to Cyclone V datasheet, 17-60 "EMAC HPS Interface
-	 * Initialization", changing PHYSEL should be done with EMAC in reset
-	 * via permodrst.  */
-
-	/* Everything, except L4WD0/1, is out of reset via socfpga_lowlevel_init() */
-	rst = readl(CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
-	rst |= RSTMGR_PERMODRST_EMAC0 | RSTMGR_PERMODRST_EMAC1;
-	writel(rst, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
-
-	/* Set emac0/1 PHY interface select to RGMII.  We could read phy-mode
-	 * from the device tree, if it was desired to support interfaces other
-	 * than RGMII. */
-	val = readl(CONFIG_SYSMGR_EMAC_CTRL);
-	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB);
-	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB);
-	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB;
-	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB;
-	writel(val, CONFIG_SYSMGR_EMAC_CTRL);
-
-	/* Take emac0 and emac1 out of reset */
-	rst &= ~(RSTMGR_PERMODRST_EMAC0 | RSTMGR_PERMODRST_EMAC1);
-	writel(rst, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
-}
-
 static int socfpga_init(void)
 {
-	socfpga_init_emac();
-
 	writel(SYSMGR_SDMMC_CTRL_DRVSEL(3) | SYSMGR_SDMMC_CTRL_SMPLSEL(0),
 		SYSMGR_SDMMCGRP_CTRL_REG);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
