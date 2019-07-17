Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnOC-0006Cc-G9
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 17:06:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2019 19:06:01 +0200
Message-Id: <20190717170604.23732-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 3/6] clk: imx6: remove quirky clk_set_parent(LDB_diN_sel,
 pll5_video_div)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

barebox has inherited the clk_set_parent(ldb_diN_sel, pll5_video_div)
from upstream kernel commit 32f3b8da22 ("ARM i.MX6q: set the LDB serial
clock parent to the video PLL"), where it was enabled for all i.MX6Q
revisions after 1.0. It was applied whenever CONFIG_DRIVER_VIDEO_IMX_IPUV3
was defined.

The kernel removed this reparenting again as a preventive measure
against ERR009219 in 03d576f202 ("clk: imx6: Make the LDB_DI0 and
LDB_DI1 clocks read-only").

In barebox, the reparenting remains and is done for all i.MX6 SoCs
with a revision > 1.0. On all of them, except for the QuadPlus and
the DualPlus, this reparenting may glitch the LDB so that it
permanently locks up.

By removing the reparenting in this commit, producing this glitch is
avoided. The device tree[1] can elect to reinstate the reparenting:

	&clks {
		assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
				  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
		assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
					 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
	};

Follow-up patches will explicitly check for this and do reparenting
defined this way in a glitch-free manner.

As of v2019.07.0, following mainline boards are potentially broken
by this (i.e. they're supported by barebox, are in the list above,
had a LDB enabled and might be defining CONFIG_DRIVER_VIDEO_IMX_IPUV3):
  - imx6qdl-zii-rdu2.dtsi
  - imx6qdl-udoo.dtsi
  - imx6qdl-mba6x.dtsi
  - imx6q-var-custom.dts
  - imx6q-guf-santaro.dts
  - imx6q-embedsky-e9.dtsi

[1]: If barebox is configured to show a boot splash screen, this snippet
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
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index d23b7e277bdf..6f19535be7ba 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -356,12 +356,6 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-
-	if (imx_silicon_revision() != IMX_CHIP_REV_1_0) {
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	}
-
 }
 
 static int imx6_ccm_probe(struct device_d *dev)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
