Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnO4-00067N-Ha
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 17:06:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2019 19:06:04 +0200
Message-Id: <20190717170604.23732-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190717170604.23732-1-a.fatoum@pengutronix.de>
References: <20190717170604.23732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v3 6/6] clk: imx6: define an enum for ldb mux inputs
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

For better readability should this code be reviewed
in future, replace the hardcoded input numbers
with an enum.

This is just a cosmetic change and was verified
to not affect clk-imx6.o.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 39 +++++++++++++++++++++++---------------
 1 file changed, 24 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index ffeecf02f9b5..c47281b16e68 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -214,12 +214,20 @@ static const char *ipu_sels[] = {
 	"pll3_pfd1_540m",
 };
 
+enum ldb_di_sel { /* for use in init_ldb_clks */
+	LDB_DI_SEL_PLL5_VIDEO_DIV	= 0,
+	LDB_DI_SEL_PLL2_PFD0_352M	= 1,
+	LDB_DI_SEL_PLL2_PFD2_396M	= 2,
+	LDB_DI_SEL_MMDC_CH1_AXI		= 3,
+	LDB_DI_SEL_PLL3_USB_OTG		= 4,
+};
+
 static const char *ldb_di_sels[] = {
-	"pll5_video_div",
-	"pll2_pfd0_352m",
-	"pll2_pfd2_396m",
-	"mmdc_ch1_axi_podf",
-	"pll3_usb_otg",
+	[LDB_DI_SEL_PLL5_VIDEO_DIV]	= "pll5_video_div",
+	[LDB_DI_SEL_PLL2_PFD0_352M]	= "pll2_pfd0_352m",
+	[LDB_DI_SEL_PLL2_PFD2_396M]	= "pll2_pfd2_396m",
+	[LDB_DI_SEL_MMDC_CH1_AXI]	= "mmdc_ch1_axi_podf",
+	[LDB_DI_SEL_PLL3_USB_OTG]	= "pll3_usb_otg",
 };
 
 static const char *ipu_di_pre_sels[] = {
@@ -312,23 +320,23 @@ static int ldb_di_sel_by_clock_id(int clock_id)
 	case IMX6QDL_CLK_PLL5_VIDEO_DIV:
 		if (!cpu_has_working_video_pll_post_div())
 			return -ENOENT;
-		return 0;
+		return LDB_DI_SEL_PLL5_VIDEO_DIV;
 	case IMX6QDL_CLK_PLL2_PFD0_352M:
-		return 1;
+		return LDB_DI_SEL_PLL2_PFD0_352M;
 	case IMX6QDL_CLK_PLL2_PFD2_396M:
-		return 2;
+		return LDB_DI_SEL_PLL2_PFD2_396M;
 	case IMX6QDL_CLK_MMDC_CH1_AXI:
-		return 3;
+		return LDB_DI_SEL_MMDC_CH1_AXI;
 	case IMX6QDL_CLK_PLL3_USB_OTG:
-		return 4;
+		return LDB_DI_SEL_PLL3_USB_OTG;
 	default:
 		return -ENOENT;
 	}
 }
 
 static void of_assigned_ldb_sels(struct device_node *node,
-				 unsigned int *ldb_di0_sel,
-				 unsigned int *ldb_di1_sel)
+				 enum ldb_di_sel *ldb_di0_sel,
+				 enum ldb_di_sel *ldb_di1_sel)
 {
 	struct of_phandle_args clkspec;
 	int index, rc, num_parents;
@@ -467,7 +475,7 @@ static void mmdc_ch1_reenable(void __iomem *ccm_base)
 static void init_ldb_clks(struct device_node *np, void __iomem *ccm_base)
 {
 	unsigned int reg;
-	unsigned int sel[2][4];
+	enum ldb_di_sel sel[2][4];
 	int i;
 
 	reg = readl(ccm_base + CCM_CS2CDR);
@@ -481,7 +489,7 @@ static void init_ldb_clks(struct device_node *np, void __iomem *ccm_base)
 
 	for (i = 0; i < 2; i++) {
 		/* Warn if a glitch might have been introduced already */
-		if (sel[i][0] != 3) {
+		if (sel[i][0] != LDB_DI_SEL_MMDC_CH1_AXI) {
 			pr_warn("ccm: ldb_di%d_sel already changed from reset value: %d\n",
 				i, sel[i][0]);
 		}
@@ -490,7 +498,8 @@ static void init_ldb_clks(struct device_node *np, void __iomem *ccm_base)
 			continue;
 
 		/* Only switch to or from pll2_pfd2_396m if it is disabled */
-		if ((sel[i][0] == 2 || sel[i][3] == 2) &&
+		if ((sel[i][0] == LDB_DI_SEL_PLL2_PFD2_396M ||
+		     sel[i][3] == LDB_DI_SEL_PLL2_PFD2_396M) &&
 		    (clk_get_parent(clks[IMX6QDL_CLK_PERIPH_PRE]) ==
 		     clks[IMX6QDL_CLK_PLL2_PFD2_396M])) {
 			pr_err("ccm: ldb_di%d_sel: couldn't disable pll2_pfd2_396m\n",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
