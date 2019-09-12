Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Kmh-0006Bk-3P
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 08:49:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Sep 2019 10:48:52 +0200
Message-Id: <20190912084852.5528-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: i.MX6qp: Fix location of the enfc_sel mux
To: Barebox List <barebox@lists.infradead.org>

On the i.MX6qp the enfc_sel mux is at bits 15-17, not on 16-17. Fix
this. During clock tree initialization we reparented the enfc_sel to:

	clk_set_parent(clks[IMX6QDL_CLK_ENFC_SEL], clks[IMX6QDL_CLK_PLL2_PFD2_396M]);

This resulted in a register setting 0b110 for the enfc_sel mux which is
reserved. Apparently this reserved setting resulted in the enfc clock
being driven from pll3_pfd3_454m. This means our enfc clock was the
factor 454/396 too high.

With b534f79112f0 ("clk: imx6: Fix procedure to switch the parent of
LDB_DI_CLK") we happened to disable pll3_pfd3_454m during init, so with
this commit NAND stopped working entirely on i.MX6qp.

Both issues are fixed with this patch

Fixes: b534f79112f0 ("clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK")
Fixes: 92fd61d12723 ("clk: i.MX6: Fix enfc_sel for i.MX6dqp")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index c47281b16e..ed29e8c271 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -708,7 +708,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
 	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
 	if (cpu_mx6_is_plus())
-		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels_plus,    ARRAY_SIZE(enfc_sels_plus));
+		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 15, 3, enfc_sels_plus,    ARRAY_SIZE(enfc_sels_plus));
 	else
 		clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
 	clks[IMX6QDL_CLK_EIM_SEL]          = imx_clk_mux("eim_sel",          base + 0x1c, 27, 2, eim_sels,          ARRAY_SIZE(eim_sels));
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
