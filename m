Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXlA0-0006FX-Vs
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:39:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:38:50 +0100
Message-Id: <1426574331-22797-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
References: <1426574331-22797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: i.MX6: Add PCI clocks
To: Barebox List <barebox@lists.infradead.org>

Needed for pcie support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index dccf0a8..2d46447 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -196,6 +196,26 @@ static const char *ipu2_di1_sels[] = {
 	"ldb_di1_podf",
 };
 
+static const char *lvds_sels[] = {
+	"dummy",
+	"dummy",
+	"dummy",
+	"dummy",
+	"dummy",
+	"dummy",
+	"pll4_audio",
+	"pll5_video",
+	"pll8_mlb",
+	"enet_ref",
+	"pcie_ref_125m",
+	"sata_ref_100m",
+};
+
+static const char *pcie_axi_sels[] = {
+	"axi",
+	"ahb",
+};
+
 static struct clk_div_table clk_enet_ref_table[] = {
 	{ .val = 0, .div = 20, },
 	{ .val = 1, .div = 10, },
@@ -306,6 +326,12 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	clks[IMX6QDL_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
 
+	clks[IMX6QDL_CLK_LVDS1_SEL] = imx_clk_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+	clks[IMX6QDL_CLK_LVDS2_SEL] = imx_clk_mux("lvds2_sel", base + 0x160, 5, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+
+	clks[IMX6QDL_CLK_LVDS1_GATE] = imx_clk_gate_exclusive("lvds1_gate", "lvds1_sel", base + 0x160, 10, BIT(12));
+	clks[IMX6QDL_CLK_LVDS2_GATE] = imx_clk_gate_exclusive("lvds2_gate", "lvds2_sel", base + 0x160, 11, BIT(13));
+
 	/*                                name               parent_name         reg          idx */
 	clks[IMX6QDL_CLK_PLL2_PFD0_352M] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
 	clks[IMX6QDL_CLK_PLL2_PFD1_594M] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
@@ -341,6 +367,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
 	clks[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
 	clks[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
+	clks[IMX6QDL_CLK_PCIE_AXI_SEL]     = imx_clk_mux("pcie_axi_sel",     base + 0x18, 10, 1, pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
 
 	/*                              name         reg       shift width busy: reg, shift parent_names  num_parents */
 	clks[IMX6QDL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
@@ -433,6 +460,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clk_enable(clks[IMX6QDL_CLK_SATA_REF_100M]);
 	clk_enable(clks[IMX6QDL_CLK_ENFC_PODF]);
 
+	clk_set_parent(clks[IMX6QDL_CLK_LVDS1_SEL], clks[IMX6QDL_CLK_SATA_REF_100M]);
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
