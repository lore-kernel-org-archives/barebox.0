Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadB9-0004gG-SK
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:56 +0100
Message-Id: <20170206065057.19483-9-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] clk: i.MX7: do not register PLL bypass clocks as separate
 clocks
To: Barebox List <barebox@lists.infradead.org>

In the Kernel the bypass bits in the PLLs are now registered as
separate clocks and are no longer handled in the PLL code. In
barebox we haven't made this step and there currently seems to
be no reason to do so.
This means that the bypass bits are currently modified in both
the PLL driver and in the separate clocks which does not work
properly. Drop all the bypass clocks to let the bypass bits
be handled in the PLL driver exclusively.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx7.c | 204 +++++++++++++++++++--------------------------
 1 file changed, 85 insertions(+), 119 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index eb072b73e..6bf123419 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -24,32 +24,32 @@
 #include "clk.h"
 
 static struct clk *clks[IMX7D_CLK_END];
-static const char *arm_a7_sel[] = { "osc", "pll_arm_main_clk",
-	"pll_enet_500m_clk", "pll_dram_main_clk",
-	"pll_sys_main_clk", "pll_sys_pfd0_392m_clk", "pll_audio_post_div",
+static const char *arm_a7_sel[] = { "osc", "pll_arm_main",
+	"pll_enet_500m_clk", "pll_dram_main",
+	"pll_sys_main", "pll_sys_pfd0_392m_clk", "pll_audio_post_div",
 	"pll_usb_main_clk", };
 
 static const char *arm_m4_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_250m_clk", "pll_sys_pfd2_270m_clk",
-	"pll_dram_533m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_dram_533m_clk", "pll_audio_post_div", "pll_video_main",
 	"pll_usb_main_clk", };
 
 static const char *arm_m0_sel[] = { "osc", "pll_sys_main_120m_clk",
 	"pll_enet_125m_clk", "pll_sys_pfd2_135m_clk",
-	"pll_dram_533m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_dram_533m_clk", "pll_audio_post_div", "pll_video_main",
 	"pll_usb_main_clk", };
 
 static const char *axi_sel[] = { "osc", "pll_sys_pfd1_332m_clk",
 	"pll_dram_533m_clk", "pll_enet_250m_clk", "pll_sys_pfd5_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "pll_sys_pfd7_clk", };
+	"pll_audio_post_div", "pll_video_main", "pll_sys_pfd7_clk", };
 
 static const char *disp_axi_sel[] = { "osc", "pll_sys_pfd1_332m_clk",
 	"pll_dram_533m_clk", "pll_enet_250m_clk", "pll_sys_pfd6_clk",
-	"pll_sys_pfd7_clk", "pll_audio_post_div", "pll_video_main_clk", };
+	"pll_sys_pfd7_clk", "pll_audio_post_div", "pll_video_main", };
 
 static const char *enet_axi_sel[] = { "osc", "pll_sys_pfd2_270m_clk",
 	"pll_dram_533m_clk", "pll_enet_250m_clk",
-	"pll_sys_main_240m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_sys_main_240m_clk", "pll_audio_post_div", "pll_video_main",
 	"pll_sys_pfd4_clk", };
 
 static const char *nand_usdhc_bus_sel[] = { "osc", "pll_sys_pfd2_270m_clk",
@@ -60,25 +60,25 @@ static const char *nand_usdhc_bus_sel[] = { "osc", "pll_sys_pfd2_270m_clk",
 static const char *ahb_channel_sel[] = { "osc", "pll_sys_pfd2_270m_clk",
 	"pll_dram_533m_clk", "pll_sys_pfd0_392m_clk",
 	"pll_enet_125m_clk", "pll_usb_main_clk", "pll_audio_post_div",
-	"pll_video_main_clk", };
+	"pll_video_main", };
 
-static const char *dram_phym_sel[] = { "pll_dram_main_clk",
+static const char *dram_phym_sel[] = { "pll_dram_main",
 	"dram_phym_alt_clk", };
 
-static const char *dram_sel[] = { "pll_dram_main_clk",
+static const char *dram_sel[] = { "pll_dram_main",
 	"dram_alt_root_clk", };
 
 static const char *dram_phym_alt_sel[] = { "osc", "pll_dram_533m_clk",
-	"pll_sys_main_clk", "pll_enet_500m_clk",
+	"pll_sys_main", "pll_enet_500m_clk",
 	"pll_usb_main_clk", "pll_sys_pfd7_clk", "pll_audio_post_div",
-	"pll_video_main_clk", };
+	"pll_video_main", };
 
 static const char *dram_alt_sel[] = { "osc", "pll_dram_533m_clk",
-	"pll_sys_main_clk", "pll_enet_500m_clk",
+	"pll_sys_main", "pll_enet_500m_clk",
 	"pll_enet_250m_clk", "pll_sys_pfd0_392m_clk",
 	"pll_audio_post_div", "pll_sys_pfd2_270m_clk", };
 
-static const char *usb_hsic_sel[] = { "osc", "pll_sys_main_clk",
+static const char *usb_hsic_sel[] = { "osc", "pll_sys_main",
 	"pll_usb_main_clk", "pll_sys_pfd3_clk", "pll_sys_pfd4_clk",
 	"pll_sys_pfd5_clk", "pll_sys_pfd6_clk", "pll_sys_pfd7_clk", };
 
@@ -92,63 +92,63 @@ static const char *pcie_phy_sel[] = { "osc", "pll_enet_100m_clk",
 	"ext_clk_4", "pll_sys_pfd0_392m_clk", };
 
 static const char *epdc_pixel_sel[] = { "osc", "pll_sys_pfd1_332m_clk",
-	"pll_dram_533m_clk", "pll_sys_main_clk", "pll_sys_pfd5_clk",
-	"pll_sys_pfd6_clk", "pll_sys_pfd7_clk", "pll_video_main_clk", };
+	"pll_dram_533m_clk", "pll_sys_main", "pll_sys_pfd5_clk",
+	"pll_sys_pfd6_clk", "pll_sys_pfd7_clk", "pll_video_main", };
 
 static const char *lcdif_pixel_sel[] = { "osc", "pll_sys_pfd5_clk",
 	"pll_dram_533m_clk", "ext_clk_3", "pll_sys_pfd4_clk",
-	"pll_sys_pfd2_270m_clk", "pll_video_main_clk",
+	"pll_sys_pfd2_270m_clk", "pll_video_main",
 	"pll_usb_main_clk", };
 
 static const char *mipi_dsi_sel[] = { "osc", "pll_sys_pfd5_clk",
-	"pll_sys_pfd3_clk", "pll_sys_main_clk", "pll_sys_pfd0_196m_clk",
-	"pll_dram_533m_clk", "pll_video_main_clk", "pll_audio_post_div", };
+	"pll_sys_pfd3_clk", "pll_sys_main", "pll_sys_pfd0_196m_clk",
+	"pll_dram_533m_clk", "pll_video_main", "pll_audio_post_div", };
 
 static const char *mipi_csi_sel[] = { "osc", "pll_sys_pfd4_clk",
-	"pll_sys_pfd3_clk", "pll_sys_main_clk", "pll_sys_pfd0_196m_clk",
-	"pll_dram_533m_clk", "pll_video_main_clk", "pll_audio_post_div", };
+	"pll_sys_pfd3_clk", "pll_sys_main", "pll_sys_pfd0_196m_clk",
+	"pll_dram_533m_clk", "pll_video_main", "pll_audio_post_div", };
 
 static const char *mipi_dphy_sel[] = { "osc", "pll_sys_main_120m_clk",
 	"pll_dram_533m_clk", "pll_sys_pfd5_clk", "ref_1m_clk", "ext_clk_2",
-	"pll_video_main_clk", "ext_clk_3", };
+	"pll_video_main", "ext_clk_3", };
 
 static const char *sai1_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
-	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main_clk",
+	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main",
 	"pll_sys_pfd4_clk", "pll_enet_125m_clk", "ext_clk_2", };
 
 static const char *sai2_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
-	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main_clk",
+	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main",
 	"pll_sys_pfd4_clk", "pll_enet_125m_clk", "ext_clk_2", };
 
 static const char *sai3_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
-	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main_clk",
+	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main",
 	"pll_sys_pfd4_clk", "pll_enet_125m_clk", "ext_clk_3", };
 
 static const char *spdif_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
-	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main_clk",
+	"pll_audio_post_div", "pll_dram_533m_clk", "pll_video_main",
 	"pll_sys_pfd4_clk", "pll_enet_125m_clk", "ext_3_clk", };
 
 static const char *enet1_ref_sel[] = { "osc", "pll_enet_125m_clk",
 	"pll_enet_50m_clk", "pll_enet_25m_clk",
-	"pll_sys_main_120m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_sys_main_120m_clk", "pll_audio_post_div", "pll_video_main",
 	"ext_clk_4", };
 
 static const char *enet1_time_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_audio_post_div", "ext_clk_1", "ext_clk_2", "ext_clk_3",
-	"ext_clk_4", "pll_video_main_clk", };
+	"ext_clk_4", "pll_video_main", };
 
 static const char *enet2_ref_sel[] = { "osc", "pll_enet_125m_clk",
 	"pll_enet_50m_clk", "pll_enet_25m_clk",
-	"pll_sys_main_120m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_sys_main_120m_clk", "pll_audio_post_div", "pll_video_main",
 	"ext_clk_4", };
 
 static const char *enet2_time_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_audio_post_div", "ext_clk_1", "ext_clk_2", "ext_clk_3",
-	"ext_clk_4", "pll_video_main_clk", };
+	"ext_clk_4", "pll_video_main", };
 
 static const char *enet_phy_ref_sel[] = { "osc", "pll_enet_25m_clk",
 	"pll_enet_50m_clk", "pll_enet_125m_clk",
-	"pll_dram_533m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_dram_533m_clk", "pll_audio_post_div", "pll_video_main",
 	"pll_sys_pfd3_clk", };
 
 static const char *eim_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
@@ -156,10 +156,10 @@ static const char *eim_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 	"pll_sys_pfd2_270m_clk", "pll_sys_pfd3_clk", "pll_enet_125m_clk",
 	"pll_usb_main_clk", };
 
-static const char *nand_sel[] = { "osc", "pll_sys_main_clk",
+static const char *nand_sel[] = { "osc", "pll_sys_main",
 	"pll_dram_533m_clk", "pll_sys_pfd0_392m_clk", "pll_sys_pfd3_clk",
 	"pll_enet_500m_clk", "pll_enet_250m_clk",
-	"pll_video_main_clk", };
+	"pll_video_main", };
 
 static const char *qspi_sel[] = { "osc", "pll_sys_pfd4_clk",
 	"pll_dram_533m_clk", "pll_enet_500m_clk", "pll_sys_pfd3_clk",
@@ -178,113 +178,113 @@ static const char *usdhc3_sel[] = { "osc", "pll_sys_pfd0_392m_clk",
 	"pll_sys_pfd2_270m_clk", "pll_sys_pfd6_clk", "pll_sys_pfd7_clk", };
 
 static const char *can1_sel[] = { "osc", "pll_sys_main_120m_clk",
-	"pll_dram_533m_clk", "pll_sys_main_clk",
+	"pll_dram_533m_clk", "pll_sys_main",
 	"pll_enet_40m_clk", "pll_usb_main_clk", "ext_clk_1",
 	"ext_clk_4", };
 
 static const char *can2_sel[] = { "osc", "pll_sys_main_120m_clk",
-	"pll_dram_533m_clk", "pll_sys_main_clk",
+	"pll_dram_533m_clk", "pll_sys_main",
 	"pll_enet_40m_clk", "pll_usb_main_clk", "ext_clk_1",
 	"ext_clk_3", };
 
 static const char *i2c1_sel[] = { "osc", "pll_sys_main_120m_clk",
 	"pll_enet_50m_clk", "pll_dram_533m_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "pll_usb_main_clk",
+	"pll_audio_post_div", "pll_video_main", "pll_usb_main_clk",
 	"pll_sys_pfd2_135m_clk", };
 
 static const char *i2c2_sel[] = { "osc", "pll_sys_main_120m_clk",
 	"pll_enet_50m_clk", "pll_dram_533m_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "pll_usb_main_clk",
+	"pll_audio_post_div", "pll_video_main", "pll_usb_main_clk",
 	"pll_sys_pfd2_135m_clk", };
 
 static const char *i2c3_sel[] = { "osc", "pll_sys_main_120m_clk",
 	"pll_enet_50m_clk", "pll_dram_533m_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "pll_usb_main_clk",
+	"pll_audio_post_div", "pll_video_main", "pll_usb_main_clk",
 	"pll_sys_pfd2_135m_clk", };
 
 static const char *i2c4_sel[] = { "osc", "pll_sys_main_120m_clk",
 	"pll_enet_50m_clk", "pll_dram_533m_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "pll_usb_main_clk",
+	"pll_audio_post_div", "pll_video_main", "pll_usb_main_clk",
 	"pll_sys_pfd2_135m_clk", };
 
 static const char *uart1_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_4",
+	"pll_sys_main", "ext_clk_2", "ext_clk_4",
 	"pll_usb_main_clk", };
 
 static const char *uart2_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_3",
+	"pll_sys_main", "ext_clk_2", "ext_clk_3",
 	"pll_usb_main_clk", };
 
 static const char *uart3_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_4",
+	"pll_sys_main", "ext_clk_2", "ext_clk_4",
 	"pll_usb_main_clk", };
 
 static const char *uart4_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_3",
+	"pll_sys_main", "ext_clk_2", "ext_clk_3",
 	"pll_usb_main_clk", };
 
 static const char *uart5_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_4",
+	"pll_sys_main", "ext_clk_2", "ext_clk_4",
 	"pll_usb_main_clk", };
 
 static const char *uart6_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_3",
+	"pll_sys_main", "ext_clk_2", "ext_clk_3",
 	"pll_usb_main_clk", };
 
 static const char *uart7_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_enet_100m_clk",
-	"pll_sys_main_clk", "ext_clk_2", "ext_clk_4",
+	"pll_sys_main", "ext_clk_2", "ext_clk_4",
 	"pll_usb_main_clk", };
 
 static const char *ecspi1_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_sys_main_120m_clk",
-	"pll_sys_main_clk", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
+	"pll_sys_main", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
 	"pll_usb_main_clk", };
 
 static const char *ecspi2_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_sys_main_120m_clk",
-	"pll_sys_main_clk", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
+	"pll_sys_main", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
 	"pll_usb_main_clk", };
 
 static const char *ecspi3_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_sys_main_120m_clk",
-	"pll_sys_main_clk", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
+	"pll_sys_main", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
 	"pll_usb_main_clk", };
 
 static const char *ecspi4_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_enet_40m_clk", "pll_sys_main_120m_clk",
-	"pll_sys_main_clk", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
+	"pll_sys_main", "pll_sys_pfd4_clk", "pll_enet_250m_clk",
 	"pll_usb_main_clk", };
 
 static const char *pwm1_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_sys_main_120m_clk", "pll_enet_40m_clk", "pll_audio_post_div",
-	"ext_clk_1", "ref_1m_clk", "pll_video_main_clk", };
+	"ext_clk_1", "ref_1m_clk", "pll_video_main", };
 
 static const char *pwm2_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_sys_main_120m_clk", "pll_enet_40m_clk", "pll_audio_post_div",
-	"ext_clk_1", "ref_1m_clk", "pll_video_main_clk", };
+	"ext_clk_1", "ref_1m_clk", "pll_video_main", };
 
 static const char *pwm3_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_sys_main_120m_clk", "pll_enet_40m_clk", "pll_audio_post_div",
-	"ext_clk_2", "ref_1m_clk", "pll_video_main_clk", };
+	"ext_clk_2", "ref_1m_clk", "pll_video_main", };
 
 static const char *pwm4_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_sys_main_120m_clk", "pll_enet_40m_clk", "pll_audio_post_div",
-	"ext_clk_2", "ref_1m_clk", "pll_video_main_clk", };
+	"ext_clk_2", "ref_1m_clk", "pll_video_main", };
 
 static const char *flextimer1_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_sys_main_120m_clk", "pll_enet_40m_clk", "pll_audio_post_div",
-	"ext_clk_3", "ref_1m_clk", "pll_video_main_clk", };
+	"ext_clk_3", "ref_1m_clk", "pll_video_main", };
 
 static const char *flextimer2_sel[] = { "osc", "pll_enet_100m_clk",
 	"pll_sys_main_120m_clk", "pll_enet_40m_clk", "pll_audio_post_div",
-	"ext_clk_3", "ref_1m_clk", "pll_video_main_clk", };
+	"ext_clk_3", "ref_1m_clk", "pll_video_main", };
 
 static const char *sim1_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 	"pll_sys_main_120m_clk", "pll_dram_533m_clk",
@@ -293,23 +293,23 @@ static const char *sim1_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 
 static const char *sim2_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 	"pll_sys_main_120m_clk", "pll_dram_533m_clk",
-	"pll_usb_main_clk", "pll_video_main_clk", "pll_enet_125m_clk",
+	"pll_usb_main_clk", "pll_video_main", "pll_enet_125m_clk",
 	"pll_sys_pfd7_clk", };
 
 static const char *gpt1_sel[] = { "osc", "pll_enet_100m_clk",
-	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main_clk",
+	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main",
 	"ref_1m_clk", "pll_audio_post_div", "ext_clk_1", };
 
 static const char *gpt2_sel[] = { "osc", "pll_enet_100m_clk",
-	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main_clk",
+	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main",
 	"ref_1m_clk", "pll_audio_post_div", "ext_clk_2", };
 
 static const char *gpt3_sel[] = { "osc", "pll_enet_100m_clk",
-	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main_clk",
+	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main",
 	"ref_1m_clk", "pll_audio_post_div", "ext_clk_3", };
 
 static const char *gpt4_sel[] = { "osc", "pll_enet_100m_clk",
-	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main_clk",
+	"pll_sys_pfd0_392m_clk", "pll_enet_40m_clk", "pll_video_main",
 	"ref_1m_clk", "pll_audio_post_div", "ext_clk_4", };
 
 static const char *trace_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
@@ -324,12 +324,12 @@ static const char *wdog_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 
 static const char *csi_mclk_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 	"pll_sys_main_120m_clk", "pll_dram_533m_clk",
-	"pll_enet_125m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_enet_125m_clk", "pll_audio_post_div", "pll_video_main",
 	"pll_usb_main_clk", };
 
 static const char *audio_mclk_sel[] = { "osc", "pll_sys_pfd2_135m_clk",
 	"pll_sys_main_120m_clk", "pll_dram_533m_clk",
-	"pll_enet_125m_clk", "pll_audio_post_div", "pll_video_main_clk",
+	"pll_enet_125m_clk", "pll_audio_post_div", "pll_video_main",
 	"pll_usb_main_clk", };
 
 static const char *wrclk_sel[] = { "osc", "pll_enet_40m_clk",
@@ -337,30 +337,22 @@ static const char *wrclk_sel[] = { "osc", "pll_enet_40m_clk",
 	"pll_sys_main_240m_clk", "pll_sys_pfd2_270m_clk",
 	"pll_enet_500m_clk", "pll_sys_pfd7_clk", };
 
-static const char *clko1_sel[] = { "osc", "pll_sys_main_clk",
+static const char *clko1_sel[] = { "osc", "pll_sys_main",
 	"pll_sys_main_240m_clk", "pll_sys_pfd0_196m_clk", "pll_sys_pfd3_clk",
 	"pll_enet_500m_clk", "pll_dram_533m_clk", "ref_1m_clk", };
 
 static const char *clko2_sel[] = { "osc", "pll_sys_main_240m_clk",
 	"pll_sys_pfd0_392m_clk", "pll_sys_pfd1_166m_clk", "pll_sys_pfd4_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "ckil", };
+	"pll_audio_post_div", "pll_video_main", "ckil", };
 
-static const char *lvds1_sel[] = { "pll_arm_main_clk",
-	"pll_sys_main_clk", "pll_sys_pfd0_392m_clk", "pll_sys_pfd1_332m_clk",
+static const char *lvds1_sel[] = { "pll_arm_main",
+	"pll_sys_main", "pll_sys_pfd0_392m_clk", "pll_sys_pfd1_332m_clk",
 	"pll_sys_pfd2_270m_clk", "pll_sys_pfd3_clk", "pll_sys_pfd4_clk",
 	"pll_sys_pfd5_clk", "pll_sys_pfd6_clk", "pll_sys_pfd7_clk",
-	"pll_audio_post_div", "pll_video_main_clk", "pll_enet_500m_clk",
+	"pll_audio_post_div", "pll_video_main", "pll_enet_500m_clk",
 	"pll_enet_250m_clk", "pll_enet_125m_clk", "pll_enet_100m_clk",
 	"pll_enet_50m_clk", "pll_enet_40m_clk", "pll_enet_25m_clk",
-	"pll_dram_main_clk", };
-
-static const char *pll_bypass_src_sel[] = { "osc", "dummy", };
-static const char *pll_arm_bypass_sel[] = { "pll_arm_main", "pll_arm_main_src", };
-static const char *pll_dram_bypass_sel[] = { "pll_dram_main", "pll_dram_main_src", };
-static const char *pll_sys_bypass_sel[] = { "pll_sys_main", "pll_sys_main_src", };
-static const char *pll_enet_bypass_sel[] = { "pll_enet_main", "pll_enet_main_src", };
-static const char *pll_audio_bypass_sel[] = { "pll_audio_main", "pll_audio_main_src", };
-static const char *pll_video_bypass_sel[] = { "pll_video_main", "pll_video_main_src", };
+	"pll_dram_main", };
 
 static int const clks_init_on[] __initconst = {
 	IMX7D_ARM_A7_ROOT_CLK, IMX7D_MAIN_AXI_ROOT_CLK,
@@ -398,13 +390,6 @@ static int imx7_ccm_probe(struct device_d *dev)
 
 	base = anatop_base;
 
-	clks[IMX7D_PLL_ARM_MAIN_SRC]  = imx_clk_mux("pll_arm_main_src", base + 0x60, 14, 2, pll_bypass_src_sel, ARRAY_SIZE(pll_bypass_src_sel));
-	clks[IMX7D_PLL_DRAM_MAIN_SRC] = imx_clk_mux("pll_dram_main_src", base + 0x70, 14, 2, pll_bypass_src_sel, ARRAY_SIZE(pll_bypass_src_sel));
-	clks[IMX7D_PLL_SYS_MAIN_SRC]  = imx_clk_mux("pll_sys_main_src", base + 0xb0, 14, 2, pll_bypass_src_sel, ARRAY_SIZE(pll_bypass_src_sel));
-	clks[IMX7D_PLL_ENET_MAIN_SRC] = imx_clk_mux("pll_enet_main_src", base + 0xe0, 14, 2, pll_bypass_src_sel, ARRAY_SIZE(pll_bypass_src_sel));
-	clks[IMX7D_PLL_AUDIO_MAIN_SRC] = imx_clk_mux("pll_audio_main_src", base + 0xf0, 14, 2, pll_bypass_src_sel, ARRAY_SIZE(pll_bypass_src_sel));
-	clks[IMX7D_PLL_VIDEO_MAIN_SRC] = imx_clk_mux("pll_video_main_src", base + 0x130, 14, 2, pll_bypass_src_sel, ARRAY_SIZE(pll_bypass_src_sel));
-
 	clks[IMX7D_PLL_ARM_MAIN]  = imx_clk_pllv3(IMX_PLLV3_SYS, "pll_arm_main", "osc", base + 0x60, 0x7f);
 	clks[IMX7D_PLL_DRAM_MAIN] = imx_clk_pllv3(IMX_PLLV3_AV, "pll_dram_main", "osc", base + 0x70, 0x7f);
 	clks[IMX7D_PLL_SYS_MAIN]  = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll_sys_main", "osc", base + 0xb0, 0x1);
@@ -412,33 +397,20 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_PLL_AUDIO_MAIN] = imx_clk_pllv3(IMX_PLLV3_AV, "pll_audio_main", "osc", base + 0xf0, 0x7f);
 	clks[IMX7D_PLL_VIDEO_MAIN] = imx_clk_pllv3(IMX_PLLV3_AV, "pll_video_main", "osc", base + 0x130, 0x7f);
 
-	clks[IMX7D_PLL_ARM_MAIN_BYPASS]  = imx_clk_mux_p("pll_arm_main_bypass", base + 0x60, 16, 1, pll_arm_bypass_sel, ARRAY_SIZE(pll_arm_bypass_sel));
-	clks[IMX7D_PLL_DRAM_MAIN_BYPASS] = imx_clk_mux_p("pll_dram_main_bypass", base + 0x70, 16, 1, pll_dram_bypass_sel, ARRAY_SIZE(pll_dram_bypass_sel));
-	clks[IMX7D_PLL_SYS_MAIN_BYPASS]  = imx_clk_mux_p("pll_sys_main_bypass", base + 0xb0, 16, 1, pll_sys_bypass_sel, ARRAY_SIZE(pll_sys_bypass_sel));
-	clks[IMX7D_PLL_ENET_MAIN_BYPASS] = imx_clk_mux_p("pll_enet_main_bypass", base + 0xe0, 16, 1, pll_enet_bypass_sel, ARRAY_SIZE(pll_enet_bypass_sel));
-	clks[IMX7D_PLL_AUDIO_MAIN_BYPASS] = imx_clk_mux_p("pll_audio_main_bypass", base + 0xf0, 16, 1, pll_audio_bypass_sel, ARRAY_SIZE(pll_audio_bypass_sel));
-	clks[IMX7D_PLL_VIDEO_MAIN_BYPASS] = imx_clk_mux_p("pll_video_main_bypass", base + 0x130, 16, 1, pll_video_bypass_sel, ARRAY_SIZE(pll_video_bypass_sel));
-
-	clks[IMX7D_PLL_ARM_MAIN_CLK] = imx_clk_gate("pll_arm_main_clk", "pll_arm_main_bypass", base + 0x60, 13);
-	clks[IMX7D_PLL_DRAM_MAIN_CLK] = imx_clk_gate("pll_dram_main_clk", "pll_dram_main_bypass", base + 0x70, 13);
-	clks[IMX7D_PLL_SYS_MAIN_CLK] = imx_clk_gate("pll_sys_main_clk", "pll_sys_main_bypass", base + 0xb0, 13);
-	clks[IMX7D_PLL_AUDIO_MAIN_CLK] = imx_clk_gate("pll_audio_main_clk", "pll_audio_main_bypass", base + 0xf0, 13);
-	clks[IMX7D_PLL_VIDEO_MAIN_CLK] = imx_clk_gate("pll_video_main_clk", "pll_video_main_bypass", base + 0x130, 13);
-
-	clks[IMX7D_PLL_SYS_PFD0_392M_CLK] = imx_clk_pfd("pll_sys_pfd0_392m_clk", "pll_sys_main_clk", base + 0xc0, 0);
-	clks[IMX7D_PLL_SYS_PFD1_332M_CLK] = imx_clk_pfd("pll_sys_pfd1_332m_clk", "pll_sys_main_clk", base + 0xc0, 1);
-	clks[IMX7D_PLL_SYS_PFD2_270M_CLK] = imx_clk_pfd("pll_sys_pfd2_270m_clk", "pll_sys_main_clk", base + 0xc0, 2);
-
-	clks[IMX7D_PLL_SYS_PFD3_CLK] = imx_clk_pfd("pll_sys_pfd3_clk", "pll_sys_main_clk", base + 0xc0, 3);
-	clks[IMX7D_PLL_SYS_PFD4_CLK] = imx_clk_pfd("pll_sys_pfd4_clk", "pll_sys_main_clk", base + 0xd0, 0);
-	clks[IMX7D_PLL_SYS_PFD5_CLK] = imx_clk_pfd("pll_sys_pfd5_clk", "pll_sys_main_clk", base + 0xd0, 1);
-	clks[IMX7D_PLL_SYS_PFD6_CLK] = imx_clk_pfd("pll_sys_pfd6_clk", "pll_sys_main_clk", base + 0xd0, 2);
-	clks[IMX7D_PLL_SYS_PFD7_CLK] = imx_clk_pfd("pll_sys_pfd7_clk", "pll_sys_main_clk", base + 0xd0, 3);
-
-	clks[IMX7D_PLL_SYS_MAIN_480M] = imx_clk_fixed_factor("pll_sys_main_480m", "pll_sys_main_clk", 1, 1);
-	clks[IMX7D_PLL_SYS_MAIN_240M] = imx_clk_fixed_factor("pll_sys_main_240m", "pll_sys_main_clk", 1, 2);
-	clks[IMX7D_PLL_SYS_MAIN_120M] = imx_clk_fixed_factor("pll_sys_main_120m", "pll_sys_main_clk", 1, 4);
-	clks[IMX7D_PLL_DRAM_MAIN_533M] = imx_clk_fixed_factor("pll_dram_533m", "pll_dram_main_clk", 1, 2);
+	clks[IMX7D_PLL_SYS_PFD0_392M_CLK] = imx_clk_pfd("pll_sys_pfd0_392m_clk", "pll_sys_main", base + 0xc0, 0);
+	clks[IMX7D_PLL_SYS_PFD1_332M_CLK] = imx_clk_pfd("pll_sys_pfd1_332m_clk", "pll_sys_main", base + 0xc0, 1);
+	clks[IMX7D_PLL_SYS_PFD2_270M_CLK] = imx_clk_pfd("pll_sys_pfd2_270m_clk", "pll_sys_main", base + 0xc0, 2);
+
+	clks[IMX7D_PLL_SYS_PFD3_CLK] = imx_clk_pfd("pll_sys_pfd3_clk", "pll_sys_main", base + 0xc0, 3);
+	clks[IMX7D_PLL_SYS_PFD4_CLK] = imx_clk_pfd("pll_sys_pfd4_clk", "pll_sys_main", base + 0xd0, 0);
+	clks[IMX7D_PLL_SYS_PFD5_CLK] = imx_clk_pfd("pll_sys_pfd5_clk", "pll_sys_main", base + 0xd0, 1);
+	clks[IMX7D_PLL_SYS_PFD6_CLK] = imx_clk_pfd("pll_sys_pfd6_clk", "pll_sys_main", base + 0xd0, 2);
+	clks[IMX7D_PLL_SYS_PFD7_CLK] = imx_clk_pfd("pll_sys_pfd7_clk", "pll_sys_main", base + 0xd0, 3);
+
+	clks[IMX7D_PLL_SYS_MAIN_480M] = imx_clk_fixed_factor("pll_sys_main_480m", "pll_sys_main", 1, 1);
+	clks[IMX7D_PLL_SYS_MAIN_240M] = imx_clk_fixed_factor("pll_sys_main_240m", "pll_sys_main", 1, 2);
+	clks[IMX7D_PLL_SYS_MAIN_120M] = imx_clk_fixed_factor("pll_sys_main_120m", "pll_sys_main", 1, 4);
+	clks[IMX7D_PLL_DRAM_MAIN_533M] = imx_clk_fixed_factor("pll_dram_533m", "pll_dram_main", 1, 2);
 
 	clks[IMX7D_PLL_SYS_MAIN_480M_CLK] = imx_clk_gate_dis("pll_sys_main_480m_clk", "pll_sys_main_480m", base + 0xb0, 4);
 	clks[IMX7D_PLL_SYS_MAIN_240M_CLK] = imx_clk_gate_dis("pll_sys_main_240m_clk", "pll_sys_main_240m", base + 0xb0, 5);
@@ -453,7 +425,7 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_PLL_SYS_PFD1_166M_CLK] = imx_clk_gate_dis("pll_sys_pfd1_166m_clk", "pll_sys_pfd1_166m", base + 0xb0, 27);
 	clks[IMX7D_PLL_SYS_PFD2_135M_CLK] = imx_clk_gate_dis("pll_sys_pfd2_135m_clk", "pll_sys_pfd2_135m", base + 0xb0, 28);
 
-	clks[IMX7D_PLL_ENET_MAIN_CLK] = imx_clk_fixed_factor("pll_enet_main_clk", "pll_enet_main_bypass", 1, 1);
+	clks[IMX7D_PLL_ENET_MAIN_CLK] = imx_clk_fixed_factor("pll_enet_main_clk", "pll_enet_main", 1, 1);
 	clks[IMX7D_PLL_ENET_MAIN_500M] = imx_clk_fixed_factor("pll_enet_500m", "pll_enet_main_clk", 1, 2);
 	clks[IMX7D_PLL_ENET_MAIN_250M] = imx_clk_fixed_factor("pll_enet_250m", "pll_enet_main_clk", 1, 4);
 	clks[IMX7D_PLL_ENET_MAIN_125M] = imx_clk_fixed_factor("pll_enet_125m", "pll_enet_main_clk", 1, 8);
@@ -866,12 +838,6 @@ static int imx7_clk_setup(void)
 	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
 		clk_enable(clks[clks_init_on[i]]);
 
-	clk_set_parent(clks[IMX7D_PLL_ARM_MAIN_BYPASS], clks[IMX7D_PLL_ARM_MAIN]);
-	clk_set_parent(clks[IMX7D_PLL_DRAM_MAIN_BYPASS], clks[IMX7D_PLL_DRAM_MAIN]);
-	clk_set_parent(clks[IMX7D_PLL_SYS_MAIN_BYPASS], clks[IMX7D_PLL_SYS_MAIN]);
-	clk_set_parent(clks[IMX7D_PLL_AUDIO_MAIN_BYPASS], clks[IMX7D_PLL_AUDIO_MAIN]);
-	clk_set_parent(clks[IMX7D_PLL_VIDEO_MAIN_BYPASS], clks[IMX7D_PLL_VIDEO_MAIN]);
-
 	/* use old gpt clk setting, gpt1 root clk must be twice as gpt counter freq */
 	clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
