Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6C4p-00072q-Sv
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 09:30:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Apr 2018 11:29:47 +0200
Message-Id: <20180411092947.4302-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: i.MX6: Adjust GPMI parent clock
To: Barebox List <barebox@lists.infradead.org>

Based on the corresponding Kernel code:

The gpmi needs 100MHz frequency in the EDO/Sync mode, We can not get the
100MHz from the pll2_pfd0_352m. So choose pll2_pfd2_396m as enfc_sel's
parent.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index d0571bce5e..c48ab7f76a 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -514,6 +514,13 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	clk_set_parent(clks[IMX6QDL_CLK_LVDS1_SEL], clks[IMX6QDL_CLK_SATA_REF_100M]);
 
+	/*
+	 * The gpmi needs 100MHz frequency in the EDO/Sync mode,
+	 * We can not get the 100MHz from the pll2_pfd0_352m.
+	 * So choose pll2_pfd2_396m as enfc_sel's parent.
+	 */
+	clk_set_parent(clks[IMX6QDL_CLK_ENFC_SEL], clks[IMX6QDL_CLK_PLL2_PFD2_396M]);
+
 	return 0;
 }
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
