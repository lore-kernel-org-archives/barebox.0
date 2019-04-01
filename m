Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB3I0-0006kG-24
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 20:12:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 22:12:05 +0200
Message-Id: <20190401201210.17975-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/6] clk: imx6: provide helper to check if video PLL post
 dividers work
To: barebox@lists.infradead.org
Cc: pza@pengutronix.de, lst@pengutronix.de, sha@pengutronix.de

Audio/Video PLL post dividers don't work on i.MX6q revision 1.0.
This helper can be reused in the upcoming workaround patch for
erratum ERR009219.

The check in the helper has been inverted to make it clearer which
platforms are affected. Old call site was adjusted to spell
out what is really happening nowadays (with clk-imx6.c covering
more variants than just i.MX6Quad and DualLite):

   !rev1.0 || mx6dl
== !rev1.0 || !!mx6dl
== !(rev1.0 && !mx6dl)
== !(rev1.0 && (mx6s || mx6q || mx6qp || mx6d || mx6dp))
== !(rev1.0 && ((mx6q || mx6d) || (mx6s || mx6qp || mx6dp)))
== !((rev1.0 && (mx6q || mx6d)) || (rev1.0 && (mx6s || mx6qp || mx6dp)))
== (!(rev1.0 && (mx6q || mx6d)) && !(rev1.0 && (mx6s || mx6qp || mx6dp)))
== cpu_has_working_video_pll_post_div() && !(rev1.0 && (mx6s || mx6qp || mx6dp))

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 35b995dae24e..88c4bcde1cb3 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -64,6 +64,12 @@ static inline int cpu_is_plus(void)
 	return cpu_is_mx6qp() || cpu_is_mx6dp();
 }
 
+/* Audio/Video PLL post dividers don't work on i.MX6q revision 1.0 */
+static inline int cpu_has_working_video_pll_post_div(void) {
+	return !((cpu_is_mx6q() || cpu_is_mx6d()) &&
+		 imx_silicon_revision() == IMX_CHIP_REV_1_0);
+}
+
 static const char *step_sels[] = {
 	"osc",
 	"pll2_pfd2_396m",
@@ -341,8 +347,8 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 
-	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
-	    cpu_is_mx6dl()) {
+	if (cpu_has_working_video_pll_post_div() &&
+	    !((cpu_is_plus() || cpu_is_mx6s()) && imx_silicon_revision() == IMX_CHIP_REV_1_0)) {
 		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
