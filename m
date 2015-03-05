Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWbh-0000YA-W4
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:18:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Mar 2015 15:18:12 +0100
Message-Id: <1425565092-9570-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1425565092-9570-1-git-send-email-s.hauer@pengutronix.de>
References: <1425565092-9570-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX6: switch to COMMON_CLK_OF_PROVIDER
To: Barebox List <barebox@lists.infradead.org>

Use COMMON_CLK_OF_PROVIDER to provide clocks from the device tree.
This needs several changes:
- use the clock number defines from dt-bindings/clock/imx6qdl-clock.h
- register the (previously skipped) gates, because these are bound to
  the consumers
- select COMMON_CLK_OF_PROVIDER

With this we also no longer register the fixed clocks twice.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig    |   1 +
 arch/arm/mach-imx/clk-imx6.c | 366 +++++++++++++++++++------------------------
 2 files changed, 164 insertions(+), 203 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 06c2f94..c62cea8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -173,6 +173,7 @@ config ARCH_IMX6
 	select ARCH_HAS_FEC_IMX
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_IMX6SX
 	bool
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 3bc5949..dccf0a8 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -21,6 +21,7 @@
 #include <mach/imx6-regs.h>
 #include <mach/revision.h>
 #include <mach/imx6.h>
+#include <dt-bindings/clock/imx6qdl-clock.h>
 
 #include "clk.h"
 
@@ -55,44 +56,8 @@
 #define BM_CLPCR_MASK_SCU_IDLE		(0x1 << 26)
 #define BM_CLPCR_MASK_L2CC_IDLE		(0x1 << 27)
 
-enum mx6q_clks {
-	dummy, ckil, ckih, osc, pll2_pfd0_352m, pll2_pfd1_594m, pll2_pfd2_396m,
-	pll3_pfd0_720m, pll3_pfd1_540m, pll3_pfd2_508m, pll3_pfd3_454m,
-	pll2_198m, pll3_120m, pll3_80m, pll3_60m, twd, step, pll1_sw,
-	periph_pre, periph2_pre, periph_clk2_sel, periph2_clk2_sel, axi_sel,
-	esai_sel, asrc_sel, spdif_sel, gpu2d_axi, gpu3d_axi, gpu2d_core_sel,
-	gpu3d_core_sel, gpu3d_shader_sel, ipu1_sel, ipu2_sel, ldb_di0_sel,
-	ldb_di1_sel, ipu1_di0_pre_sel, ipu1_di1_pre_sel, ipu2_di0_pre_sel,
-	ipu2_di1_pre_sel, ipu1_di0_sel, ipu1_di1_sel, ipu2_di0_sel,
-	ipu2_di1_sel, hsi_tx_sel, pcie_axi_sel, ssi1_sel, ssi2_sel, ssi3_sel,
-	usdhc1_sel, usdhc2_sel, usdhc3_sel, usdhc4_sel, enfc_sel, emi_sel,
-	emi_slow_sel, vdo_axi_sel, vpu_axi_sel, cko1_sel, periph, periph2,
-	periph_clk2, periph2_clk2, ipg, ipg_per, esai_pred, esai_podf,
-	asrc_pred, asrc_podf, spdif_pred, spdif_podf, can_root, ecspi_root,
-	gpu2d_core_podf, gpu3d_core_podf, gpu3d_shader, ipu1_podf, ipu2_podf,
-	ldb_di0_podf, ldb_di1_podf, ipu1_di0_pre, ipu1_di1_pre, ipu2_di0_pre,
-	ipu2_di1_pre, hsi_tx_podf, ssi1_pred, ssi1_podf, ssi2_pred, ssi2_podf,
-	ssi3_pred, ssi3_podf, uart_serial_podf, usdhc1_podf, usdhc2_podf,
-	usdhc3_podf, usdhc4_podf, enfc_pred, enfc_podf, emi_podf,
-	emi_slow_podf, vpu_axi_podf, cko1_podf, axi, mmdc_ch0_axi_podf,
-	mmdc_ch1_axi_podf, arm, ahb, apbh_dma, asrc, can1_ipg, can1_serial,
-	can2_ipg, can2_serial, ecspi1, ecspi2, ecspi3, ecspi4, ecspi5, enet,
-	esai, gpt_ipg, gpt_ipg_per, gpu2d_core, gpu3d_core, hdmi_iahb,
-	hdmi_isfr, i2c1, i2c2, i2c3, iim, enfc, ipu1, ipu1_di0, ipu1_di1, ipu2,
-	ipu2_di0, ldb_di0, ldb_di1, ipu2_di1, hsi_tx, mlb, mmdc_ch0_axi,
-	mmdc_ch1_axi, ocram, openvg_axi, pcie_axi, pwm1, pwm2, pwm3, pwm4, per1_bch,
-	gpmi_bch_apb, gpmi_bch, gpmi_io, gpmi_apb, sata, sdma, spba, ssi1,
-	ssi2, ssi3, uart_ipg, uart_serial, usboh3, usdhc1, usdhc2, usdhc3,
-	usdhc4, vdo_axi, vpu_axi, cko1, pll1_sys, pll2_bus, pll3_usb_otg,
-	pll4_audio, pll5_video, pll8_mlb, pll7_usb_host, pll6_enet, ssi1_ipg,
-	ssi2_ipg, ssi3_ipg, rom, usbphy1, usbphy2, ldb_di0_div_3_5, ldb_di1_div_3_5,
-	sata_ref, sata_ref_100m, pcie_ref, pcie_ref_125m, enet_ref, usbphy1_gate,
-	usbphy2_gate, pll4_post_div, pll5_post_div, pll5_video_div, eim_slow,
-	spdif, cko2_sel, cko2_podf, cko2, cko, vdoa, pll4_audio_div,
-	lvds1_sel, lvds2_sel, lvds1_gate, lvds2_gate, enfc_gate, clk_max,
-};
-
-static struct clk *clks[clk_max];
+static struct clk *clks[IMX6QDL_CLK_END];
+static struct clk_onecell_data clk_data;
 
 static const char *step_sels[] = {
 	"osc",
@@ -144,7 +109,7 @@ static const char *enfc_sels[]	= {
 	"pll2_pfd2_396m",
 };
 
-static const char *emi_sels[] = {
+static const char *eim_sels[] = {
 	"axi",
 	"pll3_usb_otg",
 	"pll2_pfd2_396m",
@@ -256,65 +221,56 @@ static struct clk_div_table video_div_table[] = {
 
 static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 {
-	clks[pll5_post_div] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
-	clks[pll5_video_div] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
-
-	clks[ipu1_sel]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[ipu2_sel]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[ldb_di0_sel]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[ldb_di1_sel]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[ipu1_di0_pre_sel] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[ipu1_di1_pre_sel] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[ipu2_di0_pre_sel] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[ipu2_di1_pre_sel] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[ipu1_di0_sel]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
-	clks[ipu1_di1_sel]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
-	clks[ipu2_di0_sel]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
-	clks[ipu2_di1_sel]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
-
-	clks[ipu1_podf]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
-	clks[ipu2_podf]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
-	clks[ldb_di0_div_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[ldb_di0_podf]     = imx_clk_divider("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
-	clks[ldb_di1_div_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[ldb_di1_podf]     = imx_clk_divider("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
-	clks[ipu1_di0_pre]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
-	clks[ipu1_di1_pre]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
-	clks[ipu2_di0_pre]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
-	clks[ipu2_di1_pre]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
-
-	clkdev_add_physbase(clks[ipu1_podf], MX6_IPU1_BASE_ADDR, "bus");
-	clkdev_add_physbase(clks[ipu1_di0_sel], MX6_IPU1_BASE_ADDR, "di0");
-	clkdev_add_physbase(clks[ipu1_di1_sel], MX6_IPU1_BASE_ADDR, "di1");
-	clkdev_add_physbase(clks[ipu2_podf], MX6_IPU2_BASE_ADDR, "bus");
-	clkdev_add_physbase(clks[ipu2_di0_sel], MX6_IPU2_BASE_ADDR, "di0");
-	clkdev_add_physbase(clks[ipu2_di1_sel], MX6_IPU2_BASE_ADDR, "di1");
-
-	clkdev_add_physbase(clks[ldb_di0_sel], 0x020e0008, "di0_pll");
-	clkdev_add_physbase(clks[ldb_di1_sel], 0x020e0008, "di1_pll");
-	clkdev_add_physbase(clks[ipu1_di0_sel], 0x020e0008, "di0_sel");
-	clkdev_add_physbase(clks[ipu1_di1_sel], 0x020e0008, "di1_sel");
-	clkdev_add_physbase(clks[ipu2_di0_sel], 0x020e0008, "di2_sel");
-	clkdev_add_physbase(clks[ipu2_di1_sel], 0x020e0008, "di3_sel");
-	clkdev_add_physbase(clks[ldb_di0], 0x020e0008, "di0");
-	clkdev_add_physbase(clks[ldb_di1], 0x020e0008, "di1");
-	clkdev_add_physbase(clks[ahb], 0x00120000, "iahb");
-	clkdev_add_physbase(clks[pll3_pfd1_540m], 0x00120000, "isfr");
-
-	clk_set_parent(clks[ipu1_di0_sel], clks[ipu1_di0_pre]);
-	clk_set_parent(clks[ipu1_di1_sel], clks[ipu1_di1_pre]);
-	clk_set_parent(clks[ipu2_di0_sel], clks[ipu2_di0_pre]);
-	clk_set_parent(clks[ipu2_di1_sel], clks[ipu2_di1_pre]);
-
-	clk_set_parent(clks[ipu1_di0_pre_sel], clks[pll5_video_div]);
-	clk_set_parent(clks[ipu1_di1_pre_sel], clks[pll5_video_div]);
-	clk_set_parent(clks[ipu2_di0_pre_sel], clks[pll5_video_div]);
-	clk_set_parent(clks[ipu2_di1_pre_sel], clks[pll5_video_div]);
+	clks[IMX6QDL_CLK_PLL5_POST_DIV] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
+	clks[IMX6QDL_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
+
+	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clks[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU1_DI0_SEL]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
+	clks[IMX6QDL_CLK_IPU1_DI1_SEL]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
+	clks[IMX6QDL_CLK_IPU2_DI0_SEL]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
+	clks[IMX6QDL_CLK_IPU2_DI1_SEL]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
+
+	clks[IMX6QDL_CLK_IPU1_PODF]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
+	clks[IMX6QDL_CLK_IPU2_PODF]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
+	clks[IMX6QDL_CLK_LDB_DI0_DIV_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clks[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
+	clks[IMX6QDL_CLK_LDB_DI1_DIV_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clks[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
+	clks[IMX6QDL_CLK_IPU1_DI0_PRE]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
+	clks[IMX6QDL_CLK_IPU1_DI1_PRE]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
+	clks[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
+	clks[IMX6QDL_CLK_IPU2_DI1_PRE]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
+
+	clks[IMX6QDL_CLK_IPU1]         = imx_clk_gate2("ipu1",          "ipu1_podf",         cb + 0x74, 0);
+	clks[IMX6QDL_CLK_IPU1_DI0]     = imx_clk_gate2("ipu1_di0",      "ipu1_di0_sel",      cb + 0x74, 2);
+	clks[IMX6QDL_CLK_IPU1_DI1]     = imx_clk_gate2("ipu1_di1",      "ipu1_di1_sel",      cb + 0x74, 4);
+	clks[IMX6QDL_CLK_IPU2]         = imx_clk_gate2("ipu2",          "ipu2_podf",         cb + 0x74, 6);
+	clks[IMX6QDL_CLK_IPU2_DI0]     = imx_clk_gate2("ipu2_di0",      "ipu2_di0_sel",      cb + 0x74, 8);
+	clks[IMX6QDL_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_podf",      cb + 0x74, 12);
+	clks[IMX6QDL_CLK_LDB_DI1]      = imx_clk_gate2("ldb_di1",       "ldb_di1_podf",      cb + 0x74, 14);
+	clks[IMX6QDL_CLK_IPU2_DI1]     = imx_clk_gate2("ipu2_di1",      "ipu2_di1_sel",      cb + 0x74, 10);
+
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_SEL], clks[IMX6QDL_CLK_IPU1_DI0_PRE]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_SEL], clks[IMX6QDL_CLK_IPU1_DI1_PRE]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_SEL], clks[IMX6QDL_CLK_IPU2_DI0_PRE]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_SEL], clks[IMX6QDL_CLK_IPU2_DI1_PRE]);
+
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 
 	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
 	    cpu_is_mx6dl()) {
-		clk_set_parent(clks[ldb_di0_sel], clks[pll5_video_div]);
-		clk_set_parent(clks[ldb_di1_sel], clks[pll5_video_div]);
+		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	}
 
 }
@@ -322,9 +278,6 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 static int imx6_ccm_probe(struct device_d *dev)
 {
 	void __iomem *base, *anatop_base, *ccm_base;
-	unsigned long ckil_rate = 32768;
-	unsigned long ckih_rate = 0;
-	unsigned long osc_rate = 24000000;
 
 	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
 	ccm_base = dev_request_mem_region(dev, 0);
@@ -333,126 +286,129 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	base = anatop_base;
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckil] = clk_fixed("ckil", ckil_rate);
-	clks[ckih] = clk_fixed("ckih", ckih_rate);
-	clks[osc] = clk_fixed("osc", osc_rate);
-
 	/*                   type                               name            parent_name base   div_mask */
-	clks[pll1_sys]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
-	clks[pll2_bus]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
-	clks[pll3_usb_otg]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
-	clks[pll4_audio]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
-	clks[pll5_video]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
-	clks[pll8_mlb]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
-	clks[pll7_usb_host] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
-	clks[pll6_enet]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
+	clks[IMX6QDL_CLK_PLL1_SYS]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
+	clks[IMX6QDL_CLK_PLL2_BUS]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
+	clks[IMX6QDL_CLK_PLL3_USB_OTG]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
+	clks[IMX6QDL_CLK_PLL4_AUDIO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
+	clks[IMX6QDL_CLK_PLL5_VIDEO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
+	clks[IMX6QDL_CLK_PLL8_MLB]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
+	clks[IMX6QDL_CLK_PLL7_USB_HOST] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
+	clks[IMX6QDL_CLK_PLL6_ENET]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
 
-	clks[usbphy1] = imx_clk_gate("usbphy1", "pll3_usb_otg", base + 0x10, 6);
-	clks[usbphy2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 6);
+	clks[IMX6QDL_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg", base + 0x10, 6);
+	clks[IMX6QDL_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 6);
 
-	clks[sata_ref] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
-	clks[pcie_ref] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
-	clks[sata_ref_100m] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
-	clks[pcie_ref_125m] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
+	clks[IMX6QDL_CLK_SATA_REF] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
+	clks[IMX6QDL_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
+	clks[IMX6QDL_CLK_SATA_REF_100M] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
+	clks[IMX6QDL_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
 
-	clks[enet_ref] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
+	clks[IMX6QDL_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
 
 	/*                                name               parent_name         reg          idx */
-	clks[pll2_pfd0_352m] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
-	clks[pll2_pfd1_594m] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
-	clks[pll2_pfd2_396m] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
-	clks[pll3_pfd0_720m] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
-	clks[pll3_pfd1_540m] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
-	clks[pll3_pfd2_508m] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
-	clks[pll3_pfd3_454m] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
+	clks[IMX6QDL_CLK_PLL2_PFD0_352M] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
+	clks[IMX6QDL_CLK_PLL2_PFD1_594M] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
+	clks[IMX6QDL_CLK_PLL2_PFD2_396M] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
+	clks[IMX6QDL_CLK_PLL3_PFD0_720M] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
+	clks[IMX6QDL_CLK_PLL3_PFD1_540M] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
+	clks[IMX6QDL_CLK_PLL3_PFD2_508M] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
+	clks[IMX6QDL_CLK_PLL3_PFD3_454M] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
 
 	/*                                    name          parent_name          mult div */
-	clks[pll2_198m] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
-	clks[pll3_120m] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
-	clks[pll3_80m]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
-	clks[pll3_60m]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
-	clks[twd]       = imx_clk_fixed_factor("twd",       "arm",            1, 2);
+	clks[IMX6QDL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
+	clks[IMX6QDL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
+	clks[IMX6QDL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
+	clks[IMX6QDL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
+	clks[IMX6QDL_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1, 2);
 
 	base = ccm_base;
 
 	/*                                  name                 reg       shift width parent_names     num_parents */
-	clks[step]             = imx_clk_mux("step",	         base + 0xc,  8,  1, step_sels,	        ARRAY_SIZE(step_sels));
-	clks[pll1_sw]          = imx_clk_mux("pll1_sw",	         base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
-	clks[periph_pre]       = imx_clk_mux("periph_pre",       base + 0x18, 18, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[periph2_pre]      = imx_clk_mux("periph2_pre",      base + 0x18, 21, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[periph_clk2_sel]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[periph2_clk2_sel] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[axi_sel]          = imx_clk_mux("axi_sel",          base + 0x14, 6,  2, axi_sels,          ARRAY_SIZE(axi_sels));
-	clks[usdhc1_sel]       = imx_clk_mux("usdhc1_sel",       base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[usdhc2_sel]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[usdhc3_sel]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[usdhc4_sel]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[enfc_sel]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
-	clks[emi_sel]          = imx_clk_mux("emi_sel",          base + 0x1c, 27, 2, emi_sels,          ARRAY_SIZE(emi_sels));
-	clks[emi_slow_sel]     = imx_clk_mux("emi_slow_sel",     base + 0x1c, 29, 2, emi_sels,          ARRAY_SIZE(emi_sels));
-	clks[vdo_axi_sel]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
-	clks[cko1_sel]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
+	clks[IMX6QDL_CLK_STEP]             = imx_clk_mux("step",	         base + 0xc,  8,  1, step_sels,	        ARRAY_SIZE(step_sels));
+	clks[IMX6QDL_CLK_PLL1_SW]          = imx_clk_mux("pll1_sw",	         base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
+	clks[IMX6QDL_CLK_PERIPH_PRE]       = imx_clk_mux("periph_pre",       base + 0x18, 18, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clks[IMX6QDL_CLK_PERIPH2_PRE]      = imx_clk_mux("periph2_pre",      base + 0x18, 21, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clks[IMX6QDL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clks[IMX6QDL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clks[IMX6QDL_CLK_AXI_SEL]          = imx_clk_mux("axi_sel",          base + 0x14, 6,  2, axi_sels,          ARRAY_SIZE(axi_sels));
+	clks[IMX6QDL_CLK_USDHC1_SEL]       = imx_clk_mux("usdhc1_sel",       base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
+	clks[IMX6QDL_CLK_EIM_SEL]          = imx_clk_mux("eim_sel",          base + 0x1c, 27, 2, eim_sels,          ARRAY_SIZE(eim_sels));
+	clks[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
+	clks[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
+	clks[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
 
 	/*                              name         reg       shift width busy: reg, shift parent_names  num_parents */
-	clks[periph]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
-	clks[periph2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
-
-	clks[enfc_gate] = imx_clk_gate2("enfc_gate", "enfc_sel", base + 0x70, 14);
+	clks[IMX6QDL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
+	clks[IMX6QDL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
 
 	/*                                      name                 parent_name               reg       shift width */
-	clks[periph_clk2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
-	clks[periph2_clk2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
-	clks[ipg]              = imx_clk_divider("ipg",              "ahb",               base + 0x14, 8,  2);
-	clks[ipg_per]          = imx_clk_divider("ipg_per",          "ipg",               base + 0x1c, 0,  6);
-	clks[can_root]         = imx_clk_divider("can_root",         "pll3_usb_otg",      base + 0x20, 2,  6);
-	clks[ecspi_root]       = imx_clk_divider("ecspi_root",       "pll3_60m",          base + 0x38, 19, 6);
-	clks[uart_serial_podf] = imx_clk_divider("uart_serial_podf", "pll3_80m",          base + 0x24, 0,  6);
-	clks[usdhc1_podf]      = imx_clk_divider("usdhc1_podf",      "usdhc1_sel",        base + 0x24, 11, 3);
-	clks[usdhc2_podf]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
-	clks[usdhc3_podf]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
-	clks[usdhc4_podf]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
-	clks[enfc_pred]        = imx_clk_divider("enfc_pred",        "enfc_gate",         base + 0x2c, 18, 3);
-	clks[enfc_podf]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
-	clks[emi_podf]         = imx_clk_divider("emi_podf",         "emi_sel",           base + 0x1c, 20, 3);
-	clks[emi_slow_podf]    = imx_clk_divider("emi_slow_podf",    "emi_slow_sel",      base + 0x1c, 23, 3);
-	clks[cko1_podf]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
+	clks[IMX6QDL_CLK_PERIPH_CLK2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
+	clks[IMX6QDL_CLK_PERIPH2_CLK2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
+	clks[IMX6QDL_CLK_IPG]              = imx_clk_divider("ipg",              "ahb",               base + 0x14, 8,  2);
+	clks[IMX6QDL_CLK_IPG_PER]          = imx_clk_divider("ipg_per",          "ipg",               base + 0x1c, 0,  6);
+	clks[IMX6QDL_CLK_CAN_ROOT]         = imx_clk_divider("can_root",         "pll3_usb_otg",      base + 0x20, 2,  6);
+	clks[IMX6QDL_CLK_ECSPI_ROOT]       = imx_clk_divider("ecspi_root",       "pll3_60m",          base + 0x38, 19, 6);
+	clks[IMX6QDL_CLK_UART_SERIAL_PODF] = imx_clk_divider("uart_serial_podf", "pll3_80m",          base + 0x24, 0,  6);
+	clks[IMX6QDL_CLK_USDHC1_PODF]      = imx_clk_divider("usdhc1_podf",      "usdhc1_sel",        base + 0x24, 11, 3);
+	clks[IMX6QDL_CLK_USDHC2_PODF]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
+	clks[IMX6QDL_CLK_USDHC3_PODF]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
+	clks[IMX6QDL_CLK_USDHC4_PODF]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
+	clks[IMX6QDL_CLK_ENFC_PRED]        = imx_clk_divider("enfc_pred",        "enfc_sel",          base + 0x2c, 18, 3);
+	clks[IMX6QDL_CLK_ENFC_PODF]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
+	clks[IMX6QDL_CLK_EIM_PODF]         = imx_clk_divider("eim_podf",         "eim_sel",           base + 0x1c, 20, 3);
+	clks[IMX6QDL_CLK_EIM_SLOW_PODF]    = imx_clk_divider("eim_slow_podf",    "eim_slow_sel",      base + 0x1c, 23, 3);
+	clks[IMX6QDL_CLK_CKO1_PODF]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
 
 	/*                                            name                  parent_name         reg        shift width busy: reg, shift */
-	clks[axi]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
-	clks[mmdc_ch0_axi_podf] = imx_clk_busy_divider("mmdc_ch0_axi_podf", "periph",      base + 0x14, 19,  3,   base + 0x48, 4);
-	clks[mmdc_ch1_axi_podf] = imx_clk_busy_divider("mmdc_ch1_axi_podf", "periph2",     base + 0x14, 3,   3,   base + 0x48, 2);
-	clks[arm]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
-	clks[ahb]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
-
-	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_serial_podf], MX6_UART5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_root], MX6_ECSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_root], MX6_ECSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_root], MX6_ECSPI3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_root], MX6_ECSPI4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_root], MX6_ECSPI5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX6_GPT_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX6_ENET_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX6_OCOTP_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[usdhc1_podf], MX6_USDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[usdhc2_podf], MX6_USDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[usdhc3_podf], MX6_USDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[usdhc4_podf], MX6_USDHC4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX6_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX6_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX6_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ahb], MX6_SATA_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[usbphy1], MX6_USBPHY1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[usbphy2], MX6_USBPHY2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[enfc_podf], MX6_GPMI_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX6_PWM1_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[ipg_per], MX6_PWM2_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[ipg_per], MX6_PWM3_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[ipg_per], MX6_PWM4_BASE_ADDR, "per");
+	clks[IMX6QDL_CLK_AXI]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
+	clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF] = imx_clk_busy_divider("mmdc_ch0_axi_podf", "periph",      base + 0x14, 19,  3,   base + 0x48, 4);
+	clks[IMX6QDL_CLK_MMDC_CH1_AXI_PODF] = imx_clk_busy_divider("mmdc_ch1_axi_podf", "periph2",     base + 0x14, 3,   3,   base + 0x48, 2);
+	clks[IMX6QDL_CLK_ARM]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
+	clks[IMX6QDL_CLK_AHB]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
+
+	/*                                            name             parent_name          reg         shift */
+	clks[IMX6QDL_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
+	clks[IMX6QDL_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_root",        base + 0x6c, 0);
+	clks[IMX6QDL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_root",        base + 0x6c, 2);
+	clks[IMX6QDL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_root",        base + 0x6c, 4);
+	clks[IMX6QDL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_root",        base + 0x6c, 6);
+	if (cpu_is_mx6dl())
+		clks[IMX6DL_CLK_I2C4]  = imx_clk_gate2("i2c4",          "ipg_per",           base + 0x6c, 8);
+	else
+		clks[IMX6Q_CLK_ECSPI5] = imx_clk_gate2("ecspi5",        "ecspi_root",        base + 0x6c, 8);
+	clks[IMX6QDL_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x6c, 10);
+	clks[IMX6QDL_CLK_GPT_IPG]      = imx_clk_gate2("gpt_ipg",       "ipg",               base + 0x6c, 20);
+	clks[IMX6QDL_CLK_GPT_IPG_PER]  = imx_clk_gate2("gpt_ipg_per",   "ipg_per",           base + 0x6c, 22);
+	clks[IMX6QDL_CLK_I2C1]         = imx_clk_gate2("i2c1",          "ipg_per",           base + 0x70, 6);
+	clks[IMX6QDL_CLK_I2C2]         = imx_clk_gate2("i2c2",          "ipg_per",           base + 0x70, 8);
+	clks[IMX6QDL_CLK_I2C3]         = imx_clk_gate2("i2c3",          "ipg_per",           base + 0x70, 10);
+	clks[IMX6QDL_CLK_IIM]          = imx_clk_gate2("iim",           "ipg",               base + 0x70, 12);
+	clks[IMX6QDL_CLK_ENFC]         = imx_clk_gate2("enfc",          "enfc_podf",         base + 0x70, 14);
+	clks[IMX6QDL_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "pcie_axi_sel",      base + 0x78, 0);
+	clks[IMX6QDL_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
+	clks[IMX6QDL_CLK_PWM1]         = imx_clk_gate2("pwm1",          "ipg_per",           base + 0x78, 16);
+	clks[IMX6QDL_CLK_PWM2]         = imx_clk_gate2("pwm2",          "ipg_per",           base + 0x78, 18);
+	clks[IMX6QDL_CLK_PWM3]         = imx_clk_gate2("pwm3",          "ipg_per",           base + 0x78, 20);
+	clks[IMX6QDL_CLK_PWM4]         = imx_clk_gate2("pwm4",          "ipg_per",           base + 0x78, 22);
+	clks[IMX6QDL_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
+	clks[IMX6QDL_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
+	clks[IMX6QDL_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "enfc",              base + 0x78, 28);
+	clks[IMX6QDL_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
+	clks[IMX6QDL_CLK_SATA]         = imx_clk_gate2("sata",          "ipg",               base + 0x7c, 4);
+	clks[IMX6QDL_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
+	clks[IMX6QDL_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_serial_podf",  base + 0x7c, 26);
+	clks[IMX6QDL_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
+	clks[IMX6QDL_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
+	clks[IMX6QDL_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
+	clks[IMX6QDL_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
+	clks[IMX6QDL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
+	clks[IMX6QDL_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
+	clks[IMX6QDL_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		imx6_add_video_clks(anatop_base, ccm_base);
@@ -469,9 +425,13 @@ static int imx6_ccm_probe(struct device_d *dev)
 	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
 	writel(0xffffffff, ccm_base + CCGR7);
 
-	clk_enable(clks[pll6_enet]);
-	clk_enable(clks[sata_ref_100m]);
-	clk_enable(clks[enfc_podf]);
+	clk_data.clks = clks;
+	clk_data.clk_num = IMX6QDL_CLK_END;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+
+	clk_enable(clks[IMX6QDL_CLK_PLL6_ENET]);
+	clk_enable(clks[IMX6QDL_CLK_SATA_REF_100M]);
+	clk_enable(clks[IMX6QDL_CLK_ENFC_PODF]);
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
