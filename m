Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TQ-0002hh-AV
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:40 +0100
Message-Id: <20181109095246.15068-15-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/20] clk: imx: Avoid missing prototype warnings
To: Barebox List <barebox@lists.infradead.org>

clk_gate2_free() is unused, so remove it. clk_gate2_alloc() is only
used locally, so make it static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-gate2.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index f2e704cdb2..8d5ed7e05c 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -87,7 +87,7 @@ static struct clk_ops clk_gate2_ops = {
 	.is_enabled = clk_gate2_is_enabled,
 };
 
-struct clk *clk_gate2_alloc(const char *name, const char *parent,
+static struct clk *clk_gate2_alloc(const char *name, const char *parent,
 			    void __iomem *reg, u8 shift, u8 cgr_val,
 			    unsigned long flags)
 {
@@ -106,13 +106,6 @@ struct clk *clk_gate2_alloc(const char *name, const char *parent,
 	return &g->clk;
 }
 
-void clk_gate2_free(struct clk *clk)
-{
-	struct clk_gate2 *g = to_clk_gate2(clk);
-
-	free(g);
-}
-
 struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
 		      u8 shift, u8 cgr_val, unsigned long flags)
 {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
