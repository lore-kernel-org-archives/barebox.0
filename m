Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltV-0001Tt-B8
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:44 +0100
Message-Id: <1423478871-15276-4-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 03/10] ARM: socfpga: clkmgr: set alteragrp clocks
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Altera's U-Boot tree has following commit

	FogBugz #159721: Enhance Arria V MPU clock to 1050MHz

It writes to the two undocumented registers
	CLKMGR_ALTERAGRP_MPUCLK
and
	CLKMGR_ALTERAGRP_MAINCLK

to setup the SoC for higher clocks.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/clock-manager.c              | 2 ++
 arch/arm/mach-socfpga/include/mach/clock-manager.h | 6 ++++++
 arch/arm/mach-socfpga/include/mach/pll_config.h    | 3 +++
 3 files changed, 11 insertions(+)

diff --git a/arch/arm/mach-socfpga/clock-manager.c b/arch/arm/mach-socfpga/clock-manager.c
index dc81301efd01..4cffb49f7cea 100644
--- a/arch/arm/mach-socfpga/clock-manager.c
+++ b/arch/arm/mach-socfpga/clock-manager.c
@@ -166,7 +166,9 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg)
 
 	writel(cfg->mpuclk, cm + CLKMGR_MAINPLLGRP_MPUCLK_ADDRESS);
 	writel(cfg->mainclk, cm + CLKMGR_MAINPLLGRP_MAINCLK_ADDRESS);
+	writel(cfg->alteragrp_mpu, cm + CLKMGR_ALTERAGRP_MPUCLK);
 	writel(cfg->dbgatclk, cm + CLKMGR_MAINPLLGRP_DBGATCLK_ADDRESS);
+	writel(cfg->alteregrp_main, cm + CLKMGR_ALTERAGRP_MAINCLK);
 	writel(cfg->cfg2fuser0clk, cm + CLKMGR_MAINPLLGRP_CFGS2FUSER0CLK_ADDRESS);
 	writel(cfg->emac0clk, cm + CLKMGR_PERPLLGRP_EMAC0CLK_ADDRESS);
 	writel(cfg->emac1clk, cm + CLKMGR_PERPLLGRP_EMAC1CLK_ADDRESS);
diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/clock-manager.h
index b67f256091d4..649cf96ae846 100644
--- a/arch/arm/mach-socfpga/include/mach/clock-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/clock-manager.h
@@ -50,6 +50,10 @@ struct socfpga_cm_config {
 	uint32_t ddr2xdqsclk;
 	uint32_t ddrdqclk;
 	uint32_t s2fuser2clk;
+
+	/* altera group */
+	uint32_t alteragrp_mpu;
+	uint32_t alteregrp_main;
 };
 
 void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg);
@@ -95,6 +99,8 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg);
 #define CLKMGR_SDRPLLGRP_DDRDQCLK_ADDRESS 0xd0
 #define CLKMGR_SDRPLLGRP_S2FUSER2CLK_ADDRESS 0xd4
 #define CLKMGR_SDRPLLGRP_EN_ADDRESS 0xd8
+#define CLKMGR_ALTERAGRP_MPUCLK 0xe0
+#define CLKMGR_ALTERAGRP_MAINCLK 0xe4
 
 #define CLKMGR_MAINPLLGRP_EN_S2FUSER0CLK_MASK 0x00000200
 #define CLKMGR_MAINPLLGRP_EN_DBGTIMERCLK_MASK 0x00000080
diff --git a/arch/arm/mach-socfpga/include/mach/pll_config.h b/arch/arm/mach-socfpga/include/mach/pll_config.h
index d25f5cfdc672..bb491d82f12c 100644
--- a/arch/arm/mach-socfpga/include/mach/pll_config.h
+++ b/arch/arm/mach-socfpga/include/mach/pll_config.h
@@ -50,4 +50,7 @@ static struct socfpga_cm_config cm_default_cfg = {
 		CLKMGR_SDRPLLGRP_DDRDQCLK_CNT_SET(CONFIG_HPS_SDRPLLGRP_DDRDQCLK_CNT),
 	.s2fuser2clk = CLKMGR_SDRPLLGRP_S2FUSER2CLK_PHASE_SET(CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_PHASE) |
 		CLKMGR_SDRPLLGRP_S2FUSER2CLK_CNT_SET(CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_CNT),
+	/* undocumented alteragrp */
+	.alteragrp_mpu = CONFIG_HPS_ALTERAGRP_MPUCLK,
+	.alteregrp_main = CONFIG_HPS_ALTERAGRP_MAINCLK,
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
