Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT782-0006pc-O3
 for barebox@lists.infradead.org; Tue, 21 May 2019 15:56:41 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 May 2019 17:56:23 +0200
Message-Id: <20190521155626.9906-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190521155626.9906-1-a.fatoum@pengutronix.de>
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/5] clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks
 read-only
To: barebox@lists.infradead.org
Cc: pza@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Philipp Zabel <p.zabel@pengutronix.de>

Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
enter the ldb_di_ipu_div divider. If the divider gets locked up, no
ldb_di[x]_clk is generated, and the LVDS display will hang when the
ipu_di_clk is sourced from ldb_di_clk.

To fix the problem, both the new and current parent of the ldb_di_clk
should be disabled before the switch. As this can not be guaranteed by
the clock framework during runtime, make the ldb_di[x]_sel muxes read-only.
A workaround to set the muxes once during boot could be added to the
kernel or bootloader.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
[afa: ported from Linux kernel commit 03d576f202]
[afa: added exception for i.MX6QP, see kernel commit f4a0a6c309]
[afa: added cpu_has_err009219 helper function]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 17 +++++++++++++++--
 drivers/clk/imx/clk.h      |  8 ++++++++
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 319485f8521c..01b649ebbd26 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -64,6 +64,12 @@ static inline int cpu_is_plus(void)
 	return cpu_is_mx6qp() || cpu_is_mx6dp();
 }
 
+/* i.MX6 Quad/Dual/DualLite/Solo are all affected */
+static inline int cpu_has_err009219(void) {
+	return cpu_is_mx6d() || cpu_is_mx6q() ||
+		cpu_is_mx6dl() || cpu_is_mx6s();
+}
+
 static const char *step_sels[] = {
 	"osc",
 	"pll2_pfd2_396m",
@@ -300,8 +306,15 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 
 	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
 	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+
+	if (cpu_has_err009219()) {
+		clks[IMX6QDL_CLK_LDB_DI0_SEL] = imx_clk_mux_ldb("ldb_di0_sel",    cb + 0x2c, 9,  3, ldb_di_sels,      ARRAY_SIZE(ldb_di_sels));
+		clks[IMX6QDL_CLK_LDB_DI1_SEL] = imx_clk_mux_ldb("ldb_di1_sel",    cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	} else {
+		clks[IMX6QDL_CLK_LDB_DI0_SEL] = imx_clk_mux_p("ldb_di0_sel",    cb + 0x2c, 9,  3, ldb_di_sels,      ARRAY_SIZE(ldb_di_sels));
+		clks[IMX6QDL_CLK_LDB_DI1_SEL] = imx_clk_mux_p("ldb_di1_sel",    cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	}
+
 	clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
 	clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
 	clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 875c76a8b3e4..04286f03f727 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -39,6 +39,14 @@ static inline struct clk *imx_clk_divider_table(const char *name,
 				 width, table, 0);
 }
 
+static inline struct clk *imx_clk_mux_ldb(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, int num_parents)
+{
+	return clk_mux(name, CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT, reg,
+		       shift, width, parents, num_parents, CLK_MUX_READ_ONLY);
+}
+
+
 static inline struct clk *imx_clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
