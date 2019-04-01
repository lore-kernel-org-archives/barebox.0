Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB3I3-0006lx-UF
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 20:12:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 22:12:09 +0200
Message-Id: <20190401201210.17975-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190401201210.17975-1-a.fatoum@pengutronix.de>
References: <20190401201210.17975-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/6] clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks read-only
To: barebox@lists.infradead.org
Cc: pza@pengutronix.de, lst@pengutronix.de, sha@pengutronix.de

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
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 9 ++++++---
 drivers/clk/imx/clk.h      | 8 ++++++++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index f527d1d5e565..65d8f4cd89be 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -601,10 +601,13 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb, struct dev
 		 * ldb_di_sel clocks.
 		 */
 		init_ldb_clks(ccm_np, cb);
-	}
 
-	clks[IMX6QDL_CLK_LDB_DI0_SEL]       = imx_clk_mux_p("ldb_di0_sel",    cb + 0x2c, 9,  3, ldb_di_sels,      ARRAY_SIZE(ldb_di_sels));
-	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",    cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+		clks[IMX6QDL_CLK_LDB_DI0_SEL] = imx_clk_mux_ldb("ldb_di0_sel",    cb + 0x2c, 9,  3, ldb_di_sels,      ARRAY_SIZE(ldb_di_sels));
+		clks[IMX6QDL_CLK_LDB_DI1_SEL] = imx_clk_mux_ldb("ldb_di1_sel",    cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	} else {
+		clks[IMX6QDL_CLK_LDB_DI0_SEL] = imx_clk_mux_p("ldb_di0_sel",    cb + 0x2c, 9,  3, ldb_di_sels,      ARRAY_SIZE(ldb_di_sels));
+		clks[IMX6QDL_CLK_LDB_DI1_SEL] = imx_clk_mux_p("ldb_di1_sel",    cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	}
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
