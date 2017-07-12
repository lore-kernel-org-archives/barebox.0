Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dVEKR-00006G-F8
 for barebox@lists.infradead.org; Wed, 12 Jul 2017 09:53:12 +0000
Message-ID: <1499853163.6374.10.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed, 12 Jul 2017 11:52:43 +0200
In-Reply-To: <1499849768.5060.32.camel@pengutronix.de>
References: <20170711093050.23278-1-p.zabel@pengutronix.de>
 <CAHQ1cqFqxy5WPcRtmeq5WSxNQqWdPBS_e901L9+yEp8NiKGG+w@mail.gmail.com>
 <1499849768.5060.32.camel@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX: clk-pllv3: Initially disable PLL_BYPASS bit
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 2017-07-12 at 10:56 +0200, Lucas Stach wrote:
> Am Dienstag, den 11.07.2017, 12:41 -0500 schrieb Andrey Smirnov:
> > On Tue, Jul 11, 2017 at 4:30 AM, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> > > Commit cbff8031b491 ("i.MX: clk-pllv3: Do not touch PLL_BYPASS bit")
> > > overreached a bit by removing the code that disables the PLL_BYPASS bit
> > > for all architectures instead of making an exception for Vybrid and
> > > i.MX6SL. This causes the USB controller on i.MX6Q to run at bypass
> > > frequency and fail:
> > >
> > >     barebox@Boundary Devices i.MX6 Quad Nitrogen6x Board:/ usb
> > >     usb: USB: scanning bus for devices...
> > >     usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > >     imx-usb 2184200.usb: port(0) reset error
> > >
> > > Also, the linux clk-pllv3 driver never looks at or touches the
> > > PLL_BYPASS bit, but expects the bootloader to set it up correctly.
> > >
> > 
> > Hmm, wouldn't this code:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/imx/clk-imx6q.c?h=v4.12#n469
> > 
> > alter the state of BYPASS bit?
> > 
> > > This patch adds code to unconditionally disable the PLL_BYPASS bit
> > > initially, when the PLL clocks are registered.
> > >
> > 
> > The reason I didn't make that patch as a exception for Vybrid and
> > i.MX6SL was because any other i.MX6 clock trees didn't reference that
> > clock mux, so I incorrectly assumed it not to be present in the
> > hardware. IMHO, if this is not the case, a better fix for this would
> > be to change the clock tree to include PLL_BYPASS related mux and call
> > clk_set_parent() explicitly.
> > 
> > And having looked at i.MX6Q clock tree code in the kerenel it seems
> > like Barebox version got out of sync and kernel code does create such
> > clock tree node, so maybe we should do that as well?
> 
> Possibly, but that's a bigger change than what I would like to pull into
> master and probably a 2017.07 stable.

I just did a quick whitespace / reordering patch to see what even
changed between barebox and linux (attached below), and there are quite
a few changes, among them the i.MX6Q LDB mux workaround, i.MX6Q/QP
differences in mux paths, the separate PLL bypass muxes, shared gates,
and the i.MX6Q CSCMR1 mux fixup.

----------8<----------
From 9eab6bc893303685554296d6bd8c806ef47fcbe8 Mon Sep 17 00:00:00 2001
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed, 12 Jul 2017 11:38:00 +0200
Subject: [PATCH] ARM: i.MX6: align clock driver with linux driver

This patch changes whitespace, reorders a few definitions, and renames
the clks[] array to clk[] to better align with the linux clk-imx6q
driver. No functional changes.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 592 ++++++++++++++++---------------------------
 1 file changed, 218 insertions(+), 374 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 597e502..2224323 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -56,212 +56,55 @@
 #define BM_CLPCR_MASK_SCU_IDLE		(0x1 << 26)
 #define BM_CLPCR_MASK_L2CC_IDLE		(0x1 << 27)
 
-static struct clk *clks[IMX6QDL_CLK_END];
-static struct clk_onecell_data clk_data;
-
-static const char *step_sels[] = {
-	"osc",
-	"pll2_pfd2_396m",
-};
-
-static const char *pll1_sw_sels[] = {
-	"pll1_sys",
-	"step",
-};
-
-static const char *periph_pre_sels[] = {
-	"pll2_bus",
-	"pll2_pfd2_396m",
-	"pll2_pfd0_352m",
-	"pll2_198m",
-};
-
-static const char *periph_clk2_sels[] = {
-	"pll3_usb_otg",
-	"osc",
-};
-
-static const char *periph_sels[] = {
-	"periph_pre",
-	"periph_clk2",
-};
-
-static const char *periph2_sels[] = {
-	"periph2_pre",
-	"periph2_clk2",
-};
-
-static const char *axi_sels[] = {
-	"periph",
-	"pll2_pfd2_396m",
-	"pll3_pfd1_540m",
-};
-
-static const char *usdhc_sels[] = {
-	"pll2_pfd2_396m",
-	"pll2_pfd0_352m",
-};
-
-static const char *enfc_sels[]	= {
-	"pll2_pfd0_352m",
-	"pll2_bus",
-	"pll3_usb_otg",
-	"pll2_pfd2_396m",
-};
-
-static const char *eim_sels[] = {
-	"axi",
-	"pll3_usb_otg",
-	"pll2_pfd2_396m",
-	"pll2_pfd0_352m",
-};
-
-static const char *vdo_axi_sels[] = {
-	"axi",
-	"ahb",
-};
-
-static const char *cko_sels[] = {
-	"cko1",
-	"cko2",
-};
-
-static const char *cko1_sels[] = {
-	"pll3_usb_otg",
-	"pll2_bus",
-	"pll1_sys",
-	"pll5_video",
-	"dummy",
-	"axi",
-	"enfc",
-	"ipu1_di0",
-	"ipu1_di1",
-	"ipu2_di0",
-	"ipu2_di1",
-	"ahb",
-	"ipg",
-	"ipg_per",
-	"ckil",
-	"pll4_audio",
-};
-
+static const char *step_sels[]	= { "osc", "pll2_pfd2_396m", };
+static const char *pll1_sw_sels[]	= { "pll1_sys", "step", };
+static const char *periph_pre_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll2_pfd0_352m", "pll2_198m", };
+static const char *periph_clk2_sels[]	= { "pll3_usb_otg", "osc", };
+static const char *periph_sels[]	= { "periph_pre", "periph_clk2", };
+static const char *periph2_sels[]	= { "periph2_pre", "periph2_clk2", };
+static const char *axi_sels[]		= { "periph", "pll2_pfd2_396m", "pll3_pfd1_540m", };
+static const char *ipu_sels[]		= { "mmdc_ch0_axi_podf", "pll2_pfd2_396m", "pll3_120m", "pll3_pfd1_540m", };
+static const char *ldb_di_sels[]	= { "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "mmdc_ch1_axi_podf", "pll3_usb_otg", };
+static const char *ipu_di_pre_sels[]	= { "mmdc_ch0_axi", "pll3_usb_otg", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd1_540m", };
+static const char *ipu1_di0_sels[]	= { "ipu1_di0_pre", "dummy", "dummy", "ldb_di0_podf", "ldb_di1_podf", };
+static const char *ipu1_di1_sels[]	= { "ipu1_di1_pre", "dummy", "dummy", "ldb_di0_podf", "ldb_di1_podf", };
+static const char *ipu2_di0_sels[]	= { "ipu2_di0_pre", "dummy", "dummy", "ldb_di0_podf", "ldb_di1_podf", };
+static const char *ipu2_di1_sels[]	= { "ipu2_di1_pre", "dummy", "dummy", "ldb_di0_podf", "ldb_di1_podf", };
+static const char *pcie_axi_sels[]	= { "axi", "ahb", };
+static const char *usdhc_sels[]	= { "pll2_pfd2_396m", "pll2_pfd0_352m", };
+static const char *enfc_sels[]	= { "pll2_pfd0_352m", "pll2_bus", "pll3_usb_otg", "pll2_pfd2_396m", };
+static const char *eim_sels[]		= { "axi", "pll3_usb_otg", "pll2_pfd2_396m", "pll2_pfd0_352m", };
+static const char *vdo_axi_sels[]	= { "axi", "ahb", };
+
+static const char *cko1_sels[]	= { "pll3_usb_otg", "pll2_bus", "pll1_sys", "pll5_video",
+				    "dummy", "axi", "enfc", "ipu1_di0", "ipu1_di1", "ipu2_di0",
+				    "ipu2_di1", "ahb", "ipg", "ipg_per", "ckil", "pll4_audio", };
 static const char *cko2_sels[] = {
-	"mmdc_ch0_axi",
-	"mmdc_ch1_axi",
-	"usdhc4",
-	"usdhc1",
-	"gpu2d_axi",
-	"dummy",
-	"ecspi_root",
-	"gpu3d_axi",
-	"usdhc3",
-	"dummy",
-	"arm",
-	"ipu1",
-	"ipu2",
-	"vdo_axi",
-	"osc",
-	"gpu2d_core",
-	"gpu3d_core",
-	"usdhc2",
-	"ssi1",
-	"ssi2",
-	"ssi3",
-	"gpu3d_shader",
-	"vpu_axi",
-	"can_root",
-	"ldb_di0",
-	"ldb_di1",
-	"esai",
-	"eim_slow",
-	"uart_serial",
-	"spdif",
-	"asrc",
-	"hsi_tx",
-};
-
-static const char *ipu_sels[] = {
-	"mmdc_ch0_axi_podf",
-	"pll2_pfd2_396m",
-	"pll3_120m",
-	"pll3_pfd1_540m",
-};
-
-static const char *ldb_di_sels[] = {
-	"pll5_video_div",
-	"pll2_pfd0_352m",
-	"pll2_pfd2_396m",
-	"mmdc_ch1_axi_podf",
-	"pll3_usb_otg",
-};
-
-static const char *ipu_di_pre_sels[] = {
-	"mmdc_ch0_axi",
-	"pll3_usb_otg",
-	"pll5_video_div",
-	"pll2_pfd0_352m",
-	"pll2_pfd2_396m",
-	"pll3_pfd1_540m",
-};
-
-static const char *ipu1_di0_sels[] = {
-	"ipu1_di0_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
+	"mmdc_ch0_axi", "mmdc_ch1_axi", "usdhc4", "usdhc1",
+	"gpu2d_axi", "dummy", "ecspi_root", "gpu3d_axi",
+	"usdhc3", "dummy", "arm", "ipu1",
+	"ipu2", "vdo_axi", "osc", "gpu2d_core",
+	"gpu3d_core", "usdhc2", "ssi1", "ssi2",
+	"ssi3", "gpu3d_shader", "vpu_axi", "can_root",
+	"ldb_di0", "ldb_di1", "esai", "eim_slow",
+	"uart_serial", "spdif", "asrc", "hsi_tx",
 };
-
-static const char *ipu1_di1_sels[] = {
-	"ipu1_di1_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
-static const char *ipu2_di0_sels[] = {
-	"ipu2_di0_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
-static const char *ipu2_di1_sels[] = {
-	"ipu2_di1_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
+static const char *cko_sels[] = { "cko1", "cko2", };
 static const char *lvds_sels[] = {
-	"dummy",
-	"dummy",
-	"dummy",
-	"dummy",
-	"dummy",
-	"dummy",
-	"pll4_audio",
-	"pll5_video",
-	"pll8_mlb",
-	"enet_ref",
-	"pcie_ref_125m",
-	"sata_ref_100m",
+	"dummy", "dummy", "dummy", "dummy", "dummy", "dummy",
+	"pll4_audio", "pll5_video", "pll8_mlb", "enet_ref",
+	"pcie_ref_125m", "sata_ref_100m",
 };
 
-static const char *pcie_axi_sels[] = {
-	"axi",
-	"ahb",
-};
+static struct clk *clk[IMX6QDL_CLK_END];
+static struct clk_onecell_data clk_data;
 
 static struct clk_div_table clk_enet_ref_table[] = {
 	{ .val = 0, .div = 20, },
 	{ .val = 1, .div = 10, },
 	{ .val = 2, .div = 5, },
 	{ .val = 3, .div = 4, },
-	{ },
+	{ /* sentinel */ }
 };
 
 static struct clk_div_table post_div_table[] = {
@@ -279,58 +122,59 @@ static struct clk_div_table video_div_table[] = {
 	{ /* sentinel */ }
 };
 
+
 static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 {
-	clks[IMX6QDL_CLK_PLL5_POST_DIV] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
-	clks[IMX6QDL_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
-
-	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU1_DI0_SEL]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
-	clks[IMX6QDL_CLK_IPU1_DI1_SEL]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
-	clks[IMX6QDL_CLK_IPU2_DI0_SEL]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
-	clks[IMX6QDL_CLK_IPU2_DI1_SEL]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
-
-	clks[IMX6QDL_CLK_IPU1_PODF]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
-	clks[IMX6QDL_CLK_IPU2_PODF]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
-	clks[IMX6QDL_CLK_LDB_DI0_DIV_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider_np("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
-	clks[IMX6QDL_CLK_LDB_DI1_DIV_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider_np("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
-	clks[IMX6QDL_CLK_IPU1_DI0_PRE]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
-	clks[IMX6QDL_CLK_IPU1_DI1_PRE]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
-	clks[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
-	clks[IMX6QDL_CLK_IPU2_DI1_PRE]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
-
-	clks[IMX6QDL_CLK_IPU1]         = imx_clk_gate2("ipu1",          "ipu1_podf",         cb + 0x74, 0);
-	clks[IMX6QDL_CLK_IPU1_DI0]     = imx_clk_gate2("ipu1_di0",      "ipu1_di0_sel",      cb + 0x74, 2);
-	clks[IMX6QDL_CLK_IPU1_DI1]     = imx_clk_gate2("ipu1_di1",      "ipu1_di1_sel",      cb + 0x74, 4);
-	clks[IMX6QDL_CLK_IPU2]         = imx_clk_gate2("ipu2",          "ipu2_podf",         cb + 0x74, 6);
-	clks[IMX6QDL_CLK_IPU2_DI0]     = imx_clk_gate2("ipu2_di0",      "ipu2_di0_sel",      cb + 0x74, 8);
-	clks[IMX6QDL_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_podf",      cb + 0x74, 12);
-	clks[IMX6QDL_CLK_LDB_DI1]      = imx_clk_gate2("ldb_di1",       "ldb_di1_podf",      cb + 0x74, 14);
-	clks[IMX6QDL_CLK_IPU2_DI1]     = imx_clk_gate2("ipu2_di1",      "ipu2_di1_sel",      cb + 0x74, 10);
-
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_SEL], clks[IMX6QDL_CLK_IPU1_DI0_PRE]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_SEL], clks[IMX6QDL_CLK_IPU1_DI1_PRE]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_SEL], clks[IMX6QDL_CLK_IPU2_DI0_PRE]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_SEL], clks[IMX6QDL_CLK_IPU2_DI1_PRE]);
-
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk[IMX6QDL_CLK_PLL5_POST_DIV] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
+	clk[IMX6QDL_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
+
+	clk[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clk[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clk[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clk[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clk[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clk[IMX6QDL_CLK_IPU1_DI1_PRE_SEL] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clk[IMX6QDL_CLK_IPU2_DI0_PRE_SEL] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clk[IMX6QDL_CLK_IPU2_DI1_PRE_SEL] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clk[IMX6QDL_CLK_IPU1_DI0_SEL]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
+	clk[IMX6QDL_CLK_IPU1_DI1_SEL]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
+	clk[IMX6QDL_CLK_IPU2_DI0_SEL]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
+	clk[IMX6QDL_CLK_IPU2_DI1_SEL]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
+
+	clk[IMX6QDL_CLK_IPU1_PODF]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
+	clk[IMX6QDL_CLK_IPU2_PODF]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
+	clk[IMX6QDL_CLK_LDB_DI0_DIV_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clk[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider_np("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
+	clk[IMX6QDL_CLK_LDB_DI1_DIV_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clk[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider_np("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
+	clk[IMX6QDL_CLK_IPU1_DI0_PRE]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
+	clk[IMX6QDL_CLK_IPU1_DI1_PRE]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
+	clk[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
+	clk[IMX6QDL_CLK_IPU2_DI1_PRE]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
+
+	clk[IMX6QDL_CLK_IPU1]         = imx_clk_gate2("ipu1",          "ipu1_podf",         cb + 0x74, 0);
+	clk[IMX6QDL_CLK_IPU1_DI0]     = imx_clk_gate2("ipu1_di0",      "ipu1_di0_sel",      cb + 0x74, 2);
+	clk[IMX6QDL_CLK_IPU1_DI1]     = imx_clk_gate2("ipu1_di1",      "ipu1_di1_sel",      cb + 0x74, 4);
+	clk[IMX6QDL_CLK_IPU2]         = imx_clk_gate2("ipu2",          "ipu2_podf",         cb + 0x74, 6);
+	clk[IMX6QDL_CLK_IPU2_DI0]     = imx_clk_gate2("ipu2_di0",      "ipu2_di0_sel",      cb + 0x74, 8);
+	clk[IMX6QDL_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_podf",      cb + 0x74, 12);
+	clk[IMX6QDL_CLK_LDB_DI1]      = imx_clk_gate2("ldb_di1",       "ldb_di1_podf",      cb + 0x74, 14);
+	clk[IMX6QDL_CLK_IPU2_DI1]     = imx_clk_gate2("ipu2_di1",      "ipu2_di1_sel",      cb + 0x74, 10);
+
+	clk_set_parent(clk[IMX6QDL_CLK_IPU1_DI0_SEL], clk[IMX6QDL_CLK_IPU1_DI0_PRE]);
+	clk_set_parent(clk[IMX6QDL_CLK_IPU1_DI1_SEL], clk[IMX6QDL_CLK_IPU1_DI1_PRE]);
+	clk_set_parent(clk[IMX6QDL_CLK_IPU2_DI0_SEL], clk[IMX6QDL_CLK_IPU2_DI0_PRE]);
+	clk_set_parent(clk[IMX6QDL_CLK_IPU2_DI1_SEL], clk[IMX6QDL_CLK_IPU2_DI1_PRE]);
+
+	clk_set_parent(clk[IMX6QDL_CLK_IPU1_DI0_PRE_SEL], clk[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clk[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clk[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clk[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clk[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clk[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clk[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 
 	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
 	    cpu_is_mx6dl()) {
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+		clk_set_parent(clk[IMX6QDL_CLK_LDB_DI0_SEL], clk[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+		clk_set_parent(clk[IMX6QDL_CLK_LDB_DI1_SEL], clk[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	}
 
 }
@@ -347,140 +191,140 @@ static int imx6_ccm_probe(struct device_d *dev)
 	base = anatop_base;
 
 	/*                   type                               name            parent_name base   div_mask */
-	clks[IMX6QDL_CLK_PLL1_SYS]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
-	clks[IMX6QDL_CLK_PLL2_BUS]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
-	clks[IMX6QDL_CLK_PLL3_USB_OTG]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
-	clks[IMX6QDL_CLK_PLL4_AUDIO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
-	clks[IMX6QDL_CLK_PLL5_VIDEO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
-	clks[IMX6QDL_CLK_PLL8_MLB]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
-	clks[IMX6QDL_CLK_PLL7_USB_HOST] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
-	clks[IMX6QDL_CLK_PLL6_ENET]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
-
-	clks[IMX6QDL_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg", base + 0x10, 6);
-	clks[IMX6QDL_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 6);
-
-	clks[IMX6QDL_CLK_SATA_REF] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
-	clks[IMX6QDL_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
-	clks[IMX6QDL_CLK_SATA_REF_100M] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
-	clks[IMX6QDL_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
-
-	clks[IMX6QDL_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
-
-	clks[IMX6QDL_CLK_LVDS1_SEL] = imx_clk_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
-	clks[IMX6QDL_CLK_LVDS2_SEL] = imx_clk_mux("lvds2_sel", base + 0x160, 5, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
-
-	clks[IMX6QDL_CLK_LVDS1_GATE] = imx_clk_gate_exclusive("lvds1_gate", "lvds1_sel", base + 0x160, 10, BIT(12));
-	clks[IMX6QDL_CLK_LVDS2_GATE] = imx_clk_gate_exclusive("lvds2_gate", "lvds2_sel", base + 0x160, 11, BIT(13));
-
-	/*                                name               parent_name         reg          idx */
-	clks[IMX6QDL_CLK_PLL2_PFD0_352M] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
-	clks[IMX6QDL_CLK_PLL2_PFD1_594M] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
-	clks[IMX6QDL_CLK_PLL2_PFD2_396M] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
-	clks[IMX6QDL_CLK_PLL3_PFD0_720M] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
-	clks[IMX6QDL_CLK_PLL3_PFD1_540M] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
-	clks[IMX6QDL_CLK_PLL3_PFD2_508M] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
-	clks[IMX6QDL_CLK_PLL3_PFD3_454M] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
-
-	/*                                    name          parent_name          mult div */
-	clks[IMX6QDL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
-	clks[IMX6QDL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
-	clks[IMX6QDL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
-	clks[IMX6QDL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
-	clks[IMX6QDL_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1, 2);
+	clk[IMX6QDL_CLK_PLL1_SYS]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
+	clk[IMX6QDL_CLK_PLL2_BUS]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
+	clk[IMX6QDL_CLK_PLL3_USB_OTG]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
+	clk[IMX6QDL_CLK_PLL4_AUDIO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
+	clk[IMX6QDL_CLK_PLL5_VIDEO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
+	clk[IMX6QDL_CLK_PLL8_MLB]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
+	clk[IMX6QDL_CLK_PLL7_USB_HOST] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
+	clk[IMX6QDL_CLK_PLL6_ENET]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
+
+	clk[IMX6QDL_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg", base + 0x10, 6);
+	clk[IMX6QDL_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 6);
+
+	clk[IMX6QDL_CLK_SATA_REF] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
+	clk[IMX6QDL_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
+	clk[IMX6QDL_CLK_SATA_REF_100M] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
+	clk[IMX6QDL_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
+
+	clk[IMX6QDL_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
+
+	clk[IMX6QDL_CLK_LVDS1_SEL] = imx_clk_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+	clk[IMX6QDL_CLK_LVDS2_SEL] = imx_clk_mux("lvds2_sel", base + 0x160, 5, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+
+	clk[IMX6QDL_CLK_LVDS1_GATE] = imx_clk_gate_exclusive("lvds1_gate", "lvds1_sel", base + 0x160, 10, BIT(12));
+	clk[IMX6QDL_CLK_LVDS2_GATE] = imx_clk_gate_exclusive("lvds2_gate", "lvds2_sel", base + 0x160, 11, BIT(13));
+
+	/*                                            name              parent_name        reg       idx */
+	clk[IMX6QDL_CLK_PLL2_PFD0_352M] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
+	clk[IMX6QDL_CLK_PLL2_PFD1_594M] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
+	clk[IMX6QDL_CLK_PLL2_PFD2_396M] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
+	clk[IMX6QDL_CLK_PLL3_PFD0_720M] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
+	clk[IMX6QDL_CLK_PLL3_PFD1_540M] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
+	clk[IMX6QDL_CLK_PLL3_PFD2_508M] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
+	clk[IMX6QDL_CLK_PLL3_PFD3_454M] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
+
+	/*                                                name         parent_name     mult div */
+	clk[IMX6QDL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
+	clk[IMX6QDL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
+	clk[IMX6QDL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
+	clk[IMX6QDL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
+	clk[IMX6QDL_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1, 2);
 
 	base = ccm_base;
 
-	/*                                  name                 reg       shift width parent_names     num_parents */
-	clks[IMX6QDL_CLK_STEP]             = imx_clk_mux("step",	         base + 0xc,  8,  1, step_sels,	        ARRAY_SIZE(step_sels));
-	clks[IMX6QDL_CLK_PLL1_SW]          = imx_clk_mux("pll1_sw",	         base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
-	clks[IMX6QDL_CLK_PERIPH_PRE]       = imx_clk_mux("periph_pre",       base + 0x18, 18, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[IMX6QDL_CLK_PERIPH2_PRE]      = imx_clk_mux("periph2_pre",      base + 0x18, 21, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[IMX6QDL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6QDL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6QDL_CLK_AXI_SEL]          = imx_clk_mux("axi_sel",          base + 0x14, 6,  2, axi_sels,          ARRAY_SIZE(axi_sels));
-	clks[IMX6QDL_CLK_USDHC1_SEL]       = imx_clk_mux("usdhc1_sel",       base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
-	clks[IMX6QDL_CLK_EIM_SEL]          = imx_clk_mux("eim_sel",          base + 0x1c, 27, 2, eim_sels,          ARRAY_SIZE(eim_sels));
-	clks[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
-	clks[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
-	clks[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
-	clks[IMX6QDL_CLK_CKO2_SEL]         = imx_clk_mux("cko2_sel",         base + 0x60, 16, 5, cko2_sels,         ARRAY_SIZE(cko2_sels));
-	clks[IMX6QDL_CLK_CKO]              = imx_clk_mux("cko",              base + 0x60, 8,  1, cko_sels,          ARRAY_SIZE(cko_sels));
-	clks[IMX6QDL_CLK_PCIE_AXI_SEL]     = imx_clk_mux("pcie_axi_sel",     base + 0x18, 10, 1, pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
-
-	/*                              name         reg       shift width busy: reg, shift parent_names  num_parents */
-	clks[IMX6QDL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
-	clks[IMX6QDL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
-
-	/*                                      name                 parent_name               reg       shift width */
-	clks[IMX6QDL_CLK_PERIPH_CLK2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
-	clks[IMX6QDL_CLK_PERIPH2_CLK2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
-	clks[IMX6QDL_CLK_IPG]              = imx_clk_divider("ipg",              "ahb",               base + 0x14, 8,  2);
-	clks[IMX6QDL_CLK_IPG_PER]          = imx_clk_divider("ipg_per",          "ipg",               base + 0x1c, 0,  6);
-	clks[IMX6QDL_CLK_CAN_ROOT]         = imx_clk_divider("can_root",         "pll3_usb_otg",      base + 0x20, 2,  6);
-	clks[IMX6QDL_CLK_ECSPI_ROOT]       = imx_clk_divider("ecspi_root",       "pll3_60m",          base + 0x38, 19, 6);
-	clks[IMX6QDL_CLK_UART_SERIAL_PODF] = imx_clk_divider("uart_serial_podf", "pll3_80m",          base + 0x24, 0,  6);
-	clks[IMX6QDL_CLK_USDHC1_PODF]      = imx_clk_divider("usdhc1_podf",      "usdhc1_sel",        base + 0x24, 11, 3);
-	clks[IMX6QDL_CLK_USDHC2_PODF]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
-	clks[IMX6QDL_CLK_USDHC3_PODF]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
-	clks[IMX6QDL_CLK_USDHC4_PODF]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
-	clks[IMX6QDL_CLK_ENFC_PRED]        = imx_clk_divider("enfc_pred",        "enfc_sel",          base + 0x2c, 18, 3);
-	clks[IMX6QDL_CLK_ENFC_PODF]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
-	clks[IMX6QDL_CLK_EIM_PODF]         = imx_clk_divider("eim_podf",         "eim_sel",           base + 0x1c, 20, 3);
-	clks[IMX6QDL_CLK_EIM_SLOW_PODF]    = imx_clk_divider("eim_slow_podf",    "eim_slow_sel",      base + 0x1c, 23, 3);
-	clks[IMX6QDL_CLK_CKO1_PODF]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
-	clks[IMX6QDL_CLK_CKO2_PODF]        = imx_clk_divider("cko2_podf",        "cko2_sel",          base + 0x60, 21, 3);
-
-	/*                                            name                  parent_name         reg        shift width busy: reg, shift */
-	clks[IMX6QDL_CLK_AXI]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
-	clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF] = imx_clk_busy_divider("mmdc_ch0_axi_podf", "periph",      base + 0x14, 19,  3,   base + 0x48, 4);
-	clks[IMX6QDL_CLK_MMDC_CH1_AXI_PODF] = imx_clk_busy_divider("mmdc_ch1_axi_podf", "periph2",     base + 0x14, 3,   3,   base + 0x48, 2);
-	clks[IMX6QDL_CLK_ARM]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
-	clks[IMX6QDL_CLK_AHB]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
+	/*                                              name                reg       shift width parent_names     num_parents */
+	clk[IMX6QDL_CLK_STEP]             = imx_clk_mux("step",	            base + 0xc,  8,  1, step_sels,	   ARRAY_SIZE(step_sels));
+	clk[IMX6QDL_CLK_PLL1_SW]          = imx_clk_mux("pll1_sw",	    base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
+	clk[IMX6QDL_CLK_PERIPH_PRE]       = imx_clk_mux("periph_pre",       base + 0x18, 18, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clk[IMX6QDL_CLK_PERIPH2_PRE]      = imx_clk_mux("periph2_pre",      base + 0x18, 21, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clk[IMX6QDL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clk[IMX6QDL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clk[IMX6QDL_CLK_AXI_SEL]          = imx_clk_mux("axi_sel",          base + 0x14, 6,  2, axi_sels,          ARRAY_SIZE(axi_sels));
+	clk[IMX6QDL_CLK_PCIE_AXI_SEL]     = imx_clk_mux("pcie_axi_sel",     base + 0x18, 10, 1, pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
+	clk[IMX6QDL_CLK_USDHC1_SEL]       = imx_clk_mux("usdhc1_sel",       base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clk[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clk[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clk[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clk[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
+	clk[IMX6QDL_CLK_EIM_SEL]          = imx_clk_mux("eim_sel",          base + 0x1c, 27, 2, eim_sels,          ARRAY_SIZE(eim_sels));
+	clk[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
+	clk[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
+	clk[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
+	clk[IMX6QDL_CLK_CKO2_SEL]         = imx_clk_mux("cko2_sel",         base + 0x60, 16, 5, cko2_sels,         ARRAY_SIZE(cko2_sels));
+	clk[IMX6QDL_CLK_CKO]              = imx_clk_mux("cko",              base + 0x60, 8,  1, cko_sels,          ARRAY_SIZE(cko_sels));
+
+	/*                                          name         reg      shift width busy: reg, shift parent_names  num_parents */
+	clk[IMX6QDL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
+	clk[IMX6QDL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
+
+	/*                                                  name                parent_name          reg       shift width */
+	clk[IMX6QDL_CLK_PERIPH_CLK2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
+	clk[IMX6QDL_CLK_PERIPH2_CLK2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
+	clk[IMX6QDL_CLK_IPG]              = imx_clk_divider("ipg",              "ahb",               base + 0x14, 8,  2);
+	clk[IMX6QDL_CLK_IPG_PER]          = imx_clk_divider("ipg_per",          "ipg",               base + 0x1c, 0,  6);
+	clk[IMX6QDL_CLK_CAN_ROOT]         = imx_clk_divider("can_root",         "pll3_usb_otg",      base + 0x20, 2,  6);
+	clk[IMX6QDL_CLK_ECSPI_ROOT]       = imx_clk_divider("ecspi_root",       "pll3_60m",          base + 0x38, 19, 6);
+	clk[IMX6QDL_CLK_UART_SERIAL_PODF] = imx_clk_divider("uart_serial_podf", "pll3_80m",          base + 0x24, 0,  6);
+	clk[IMX6QDL_CLK_USDHC1_PODF]      = imx_clk_divider("usdhc1_podf",      "usdhc1_sel",        base + 0x24, 11, 3);
+	clk[IMX6QDL_CLK_USDHC2_PODF]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
+	clk[IMX6QDL_CLK_USDHC3_PODF]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
+	clk[IMX6QDL_CLK_USDHC4_PODF]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
+	clk[IMX6QDL_CLK_ENFC_PRED]        = imx_clk_divider("enfc_pred",        "enfc_sel",          base + 0x2c, 18, 3);
+	clk[IMX6QDL_CLK_ENFC_PODF]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
+	clk[IMX6QDL_CLK_EIM_PODF]         = imx_clk_divider("eim_podf",         "eim_sel",           base + 0x1c, 20, 3);
+	clk[IMX6QDL_CLK_EIM_SLOW_PODF]    = imx_clk_divider("eim_slow_podf",    "eim_slow_sel",      base + 0x1c, 23, 3);
+	clk[IMX6QDL_CLK_CKO1_PODF]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
+	clk[IMX6QDL_CLK_CKO2_PODF]        = imx_clk_divider("cko2_podf",        "cko2_sel",          base + 0x60, 21, 3);
+
+	/*                                                        name                 parent_name    reg        shift width busy: reg, shift */
+	clk[IMX6QDL_CLK_AXI]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
+	clk[IMX6QDL_CLK_MMDC_CH0_AXI_PODF] = imx_clk_busy_divider("mmdc_ch0_axi_podf", "periph",      base + 0x14, 19,  3,   base + 0x48, 4);
+	clk[IMX6QDL_CLK_MMDC_CH1_AXI_PODF] = imx_clk_busy_divider("mmdc_ch1_axi_podf", "periph2",     base + 0x14, 3,   3,   base + 0x48, 2);
+	clk[IMX6QDL_CLK_ARM]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
+	clk[IMX6QDL_CLK_AHB]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
 
 	/*                                            name             parent_name          reg         shift */
-	clks[IMX6QDL_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
-	clks[IMX6QDL_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_root",        base + 0x6c, 0);
-	clks[IMX6QDL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_root",        base + 0x6c, 2);
-	clks[IMX6QDL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_root",        base + 0x6c, 4);
-	clks[IMX6QDL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_root",        base + 0x6c, 6);
+	clk[IMX6QDL_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
+	clk[IMX6QDL_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_root",        base + 0x6c, 0);
+	clk[IMX6QDL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_root",        base + 0x6c, 2);
+	clk[IMX6QDL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_root",        base + 0x6c, 4);
+	clk[IMX6QDL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_root",        base + 0x6c, 6);
 	if (cpu_is_mx6dl())
-		clks[IMX6DL_CLK_I2C4]  = imx_clk_gate2("i2c4",          "ipg_per",           base + 0x6c, 8);
+		clk[IMX6DL_CLK_I2C4]  = imx_clk_gate2("i2c4",          "ipg_per",           base + 0x6c, 8);
 	else
-		clks[IMX6Q_CLK_ECSPI5] = imx_clk_gate2("ecspi5",        "ecspi_root",        base + 0x6c, 8);
-	clks[IMX6QDL_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x6c, 10);
-	clks[IMX6QDL_CLK_GPT_IPG]      = imx_clk_gate2("gpt_ipg",       "ipg",               base + 0x6c, 20);
-	clks[IMX6QDL_CLK_GPT_IPG_PER]  = imx_clk_gate2("gpt_ipg_per",   "ipg_per",           base + 0x6c, 22);
-	clks[IMX6QDL_CLK_I2C1]         = imx_clk_gate2("i2c1",          "ipg_per",           base + 0x70, 6);
-	clks[IMX6QDL_CLK_I2C2]         = imx_clk_gate2("i2c2",          "ipg_per",           base + 0x70, 8);
-	clks[IMX6QDL_CLK_I2C3]         = imx_clk_gate2("i2c3",          "ipg_per",           base + 0x70, 10);
-	clks[IMX6QDL_CLK_IIM]          = imx_clk_gate2("iim",           "ipg",               base + 0x70, 12);
-	clks[IMX6QDL_CLK_ENFC]         = imx_clk_gate2("enfc",          "enfc_podf",         base + 0x70, 14);
-	clks[IMX6QDL_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "pcie_axi_sel",      base + 0x78, 0);
-	clks[IMX6QDL_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
-	clks[IMX6QDL_CLK_PWM1]         = imx_clk_gate2("pwm1",          "ipg_per",           base + 0x78, 16);
-	clks[IMX6QDL_CLK_PWM2]         = imx_clk_gate2("pwm2",          "ipg_per",           base + 0x78, 18);
-	clks[IMX6QDL_CLK_PWM3]         = imx_clk_gate2("pwm3",          "ipg_per",           base + 0x78, 20);
-	clks[IMX6QDL_CLK_PWM4]         = imx_clk_gate2("pwm4",          "ipg_per",           base + 0x78, 22);
-	clks[IMX6QDL_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
-	clks[IMX6QDL_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
-	clks[IMX6QDL_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "enfc",              base + 0x78, 28);
-	clks[IMX6QDL_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
-	clks[IMX6QDL_CLK_SATA]         = imx_clk_gate2("sata",          "ipg",               base + 0x7c, 4);
-	clks[IMX6QDL_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
-	clks[IMX6QDL_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_serial_podf",  base + 0x7c, 26);
-	clks[IMX6QDL_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
-	clks[IMX6QDL_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
-	clks[IMX6QDL_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
-	clks[IMX6QDL_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
-	clks[IMX6QDL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
-	clks[IMX6QDL_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
-	clks[IMX6QDL_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
-
-	clkdev_add_physbase(clks[IMX6QDL_CLK_IPG], MX6_OCOTP_BASE_ADDR, NULL);
+		clk[IMX6Q_CLK_ECSPI5] = imx_clk_gate2("ecspi5",        "ecspi_root",        base + 0x6c, 8);
+	clk[IMX6QDL_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x6c, 10);
+	clk[IMX6QDL_CLK_GPT_IPG]      = imx_clk_gate2("gpt_ipg",       "ipg",               base + 0x6c, 20);
+	clk[IMX6QDL_CLK_GPT_IPG_PER]  = imx_clk_gate2("gpt_ipg_per",   "ipg_per",           base + 0x6c, 22);
+	clk[IMX6QDL_CLK_I2C1]         = imx_clk_gate2("i2c1",          "ipg_per",           base + 0x70, 6);
+	clk[IMX6QDL_CLK_I2C2]         = imx_clk_gate2("i2c2",          "ipg_per",           base + 0x70, 8);
+	clk[IMX6QDL_CLK_I2C3]         = imx_clk_gate2("i2c3",          "ipg_per",           base + 0x70, 10);
+	clk[IMX6QDL_CLK_IIM]          = imx_clk_gate2("iim",           "ipg",               base + 0x70, 12);
+	clk[IMX6QDL_CLK_ENFC]         = imx_clk_gate2("enfc",          "enfc_podf",         base + 0x70, 14);
+	clk[IMX6QDL_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "pcie_axi_sel",      base + 0x78, 0);
+	clk[IMX6QDL_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
+	clk[IMX6QDL_CLK_PWM1]         = imx_clk_gate2("pwm1",          "ipg_per",           base + 0x78, 16);
+	clk[IMX6QDL_CLK_PWM2]         = imx_clk_gate2("pwm2",          "ipg_per",           base + 0x78, 18);
+	clk[IMX6QDL_CLK_PWM3]         = imx_clk_gate2("pwm3",          "ipg_per",           base + 0x78, 20);
+	clk[IMX6QDL_CLK_PWM4]         = imx_clk_gate2("pwm4",          "ipg_per",           base + 0x78, 22);
+	clk[IMX6QDL_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
+	clk[IMX6QDL_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
+	clk[IMX6QDL_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "enfc",              base + 0x78, 28);
+	clk[IMX6QDL_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
+	clk[IMX6QDL_CLK_SATA]         = imx_clk_gate2("sata",          "ipg",               base + 0x7c, 4);
+	clk[IMX6QDL_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
+	clk[IMX6QDL_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_serial_podf",  base + 0x7c, 26);
+	clk[IMX6QDL_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
+	clk[IMX6QDL_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
+	clk[IMX6QDL_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
+	clk[IMX6QDL_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
+	clk[IMX6QDL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
+	clk[IMX6QDL_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
+	clk[IMX6QDL_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
+
+	clkdev_add_physbase(clk[IMX6QDL_CLK_IPG], MX6_OCOTP_BASE_ADDR, NULL);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		imx6_add_video_clks(anatop_base, ccm_base);
@@ -497,15 +341,15 @@ static int imx6_ccm_probe(struct device_d *dev)
 	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
 	writel(0xffffffff, ccm_base + CCGR7);
 
-	clk_data.clks = clks;
+	clk_data.clks = clk;
 	clk_data.clk_num = IMX6QDL_CLK_END;
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
 
-	clk_enable(clks[IMX6QDL_CLK_PLL6_ENET]);
-	clk_enable(clks[IMX6QDL_CLK_SATA_REF_100M]);
-	clk_enable(clks[IMX6QDL_CLK_ENFC_PODF]);
+	clk_enable(clk[IMX6QDL_CLK_PLL6_ENET]);
+	clk_enable(clk[IMX6QDL_CLK_SATA_REF_100M]);
+	clk_enable(clk[IMX6QDL_CLK_ENFC_PODF]);
 
-	clk_set_parent(clks[IMX6QDL_CLK_LVDS1_SEL], clks[IMX6QDL_CLK_SATA_REF_100M]);
+	clk_set_parent(clk[IMX6QDL_CLK_LVDS1_SEL], clk[IMX6QDL_CLK_SATA_REF_100M]);
 
 	return 0;
 }
-- 
2.1.4
---------->8----------

regards
Philipp


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
