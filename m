Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yhd8c-0002vE-UI
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 12:06:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 13 Apr 2015 14:06:25 +0200
Message-Id: <1428926785-26654-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: Add support for clko clocks
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

the clko pins are general purpose clock outputs. Add support for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index f51e559505e9..f18ad402a67a 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -121,6 +121,11 @@ static const char *vdo_axi_sels[] = {
 	"ahb",
 };
 
+static const char *cko_sels[] = {
+	"cko1",
+	"cko2",
+};
+
 static const char *cko1_sels[] = {
 	"pll3_usb_otg",
 	"pll2_bus",
@@ -140,6 +145,41 @@ static const char *cko1_sels[] = {
 	"pll4_audio",
 };
 
+static const char *cko2_sels[] = {
+	"mmdc_ch0_axi",
+	"mmdc_ch1_axi",
+	"usdhc4",
+	"usdhc1",
+	"gpu2d_axi",
+	"dummy",
+	"ecspi_root",
+	"gpu3d_axi",
+	"usdhc3",
+	"dummy",
+	"arm",
+	"ipu1",
+	"ipu2",
+	"vdo_axi",
+	"osc",
+	"gpu2d_core",
+	"gpu3d_core",
+	"usdhc2",
+	"ssi1",
+	"ssi2",
+	"ssi3",
+	"gpu3d_shader",
+	"vpu_axi",
+	"can_root",
+	"ldb_di0",
+	"ldb_di1",
+	"esai",
+	"eim_slow",
+	"uart_serial",
+	"spdif",
+	"asrc",
+	"hsi_tx",
+};
+
 static const char *ipu_sels[] = {
 	"mmdc_ch0_axi_podf",
 	"pll2_pfd2_396m",
@@ -367,6 +407,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
 	clks[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
 	clks[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
+	clks[IMX6QDL_CLK_CKO2_SEL]         = imx_clk_mux("cko2_sel",         base + 0x60, 16, 5, cko2_sels,         ARRAY_SIZE(cko2_sels));
+	clks[IMX6QDL_CLK_CKO]              = imx_clk_mux("cko",              base + 0x60, 8,  1, cko_sels,          ARRAY_SIZE(cko_sels));
 	clks[IMX6QDL_CLK_PCIE_AXI_SEL]     = imx_clk_mux("pcie_axi_sel",     base + 0x18, 10, 1, pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
 
 	/*                              name         reg       shift width busy: reg, shift parent_names  num_parents */
@@ -390,6 +432,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6QDL_CLK_EIM_PODF]         = imx_clk_divider("eim_podf",         "eim_sel",           base + 0x1c, 20, 3);
 	clks[IMX6QDL_CLK_EIM_SLOW_PODF]    = imx_clk_divider("eim_slow_podf",    "eim_slow_sel",      base + 0x1c, 23, 3);
 	clks[IMX6QDL_CLK_CKO1_PODF]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
+	clks[IMX6QDL_CLK_CKO2_PODF]        = imx_clk_divider("cko2_podf",        "cko2_sel",          base + 0x60, 21, 3);
 
 	/*                                            name                  parent_name         reg        shift width busy: reg, shift */
 	clks[IMX6QDL_CLK_AXI]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
