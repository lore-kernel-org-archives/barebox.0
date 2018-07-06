Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fbNlT-0001BC-Rl
 for barebox@lists.infradead.org; Fri, 06 Jul 2018 10:15:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Jul 2018 12:14:46 +0200
Message-Id: <20180706101446.5570-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: imx: remove unused clk_gate2_inverted
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-gate2.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index e7dcd87a7e..f2e704cdb2 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -129,20 +129,3 @@ struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
 
 	return g;
 }
-
-struct clk *clk_gate2_inverted(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	struct clk *clk;
-	struct clk_gate2 *g;
-
-	clk = clk_gate2(name, parent, reg, shift, 0x3, 0);
-	if (IS_ERR(clk))
-		return clk;
-
-	g = to_clk_gate2(clk);
-
-	g->flags = CLK_GATE_INVERTED;
-
-	return clk;
-}
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
