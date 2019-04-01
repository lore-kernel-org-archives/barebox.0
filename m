Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB3LT-00004t-OD
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 20:15:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 22:15:40 +0200
Message-Id: <20190401201540.10451-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] clk: imx6: remove quirky clk_set_parent(LDB_diN_sel,
 pll5_video_div)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Raphael Poggi <poggi.raph@gmail.com>, lst@pengutronix.de, pza@pengutronix.de, sha@pengutronix.de

barebox has inherited the clk_set_parent(ldb_diN_sel, pll5_video_div)
from upstream kernel commit 32f3b8da22 ("ARM i.MX6q: set the LDB serial
clock parent to the video PLL"), where it was enabled for all i.MX6Q
revisions after 1.0. It was applied whenever CONFIG_DRIVER_VIDEO_IMX_IPUV3
was defined.

The kernel removed this reparenting again as a preventive measure
against ERR009219 in 03d576f202 ("clk: imx6: Make the LDB_DI0 and
LDB_DI1 clocks read-only").

As the kernel used the device tree compatible, which is the same
for e.g. i.MX6Solo and DualLite, but barebox queried ANATOP which
lists different CPU types for i.MX6Solo and DualLite and because
i.MX6QuadPlus wasn't supported at first, barebox grew to do
the reparenting on the odd set of:
  - Quad and Dual rev >1.0
  - DualLite
  - Solo rev >1.0
  - QuadPlus and DualPlus rev >1.0

On all of these, except for the QuadPlus and the DualPlus, this
reparenting may glitch the LDB so that it permanently locks up.

Previous commits work around this glitch and this commit
now removes this unituituve quirk and instead of _sometimes_
breaking the boards in the previous list, _always_ breaks them
if they are strictly dependent on pll5_video_div being the parent
of ldb_diN_sel.

As of v2019.03.0, following mainline boards are potentially broken
by this (i.e. they're supported by barebox, are in the list above,
have a LDB enabled and might be defining CONFIG_DRIVER_VIDEO_IMX_IPUV3):
  - imx6qdl-zii-rdu2.dtsi
  - imx6qdl-udoo.dtsi
  - imx6qdl-mba6x.dtsi
  - imx6q-var-custom.dts
  - imx6q-guf-santaro.dts
  - imx6q-embedsky-e9.dtsi

These and any other affected non-mainline boards can have the old behavior
reinstated by adding the following to their respective device trees, but
this time in a glitch-free manner:

	&clks {
		assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
				  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
		assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
					 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
	};

If barebox is configured to show a boot splash screen, this snippet
should exist in the barebox device tree. If barebox acts on it, the
kernel will show following warning:
	ccm: ldb_di0_sel already changed from reset value: 0
	ccm: ldb_di1_sel already changed from reset value: 0

This warning is safe to ignore.

Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Raphael Poggi <poggi.raph@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 65d8f4cd89be..a595785fed60 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -484,14 +484,6 @@ static void init_ldb_clks(struct device_node *np, void __iomem *ccm_base)
 	sel[0][3] = sel[0][2] = sel[0][1] = sel[0][0];
 	sel[1][3] = sel[1][2] = sel[1][1] = sel[1][0];
 
-	/*
-	 * This is for compatibility with the existing barebox behavior where
-	 * these configurations had their ldb_diN_sel clocks reparented.
-	 */
-	if (!(cpu_is_mx6s() && imx_silicon_revision() == IMX_CHIP_REV_1_0)) {
-		sel[0][3] = sel[1][3] = LDB_DI_SEL_PLL5_VIDEO_DIV;
-	}
-
 	of_assigned_ldb_sels(np, &sel[0][3], &sel[1][3]);
 
 	for (i = 0; i < 2; i++) {
@@ -646,17 +638,6 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb, struct dev
 	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-
-	/*
-	 * On SoC affected by ERR009219, it's not safe to call these
-	 * clk_set_parent. Thus we do this via init_ldb_clks if the device tree
-	 * indicates so. QuadPlus doesn't suffer from the erratum, so for now,
-	 * we leave the old behavior as is.
-	 */
-	if (((cpu_is_plus() && imx_silicon_revision() != IMX_CHIP_REV_1_0))) {
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	}
 }
 
 static int imx6_ccm_probe(struct device_d *dev)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
