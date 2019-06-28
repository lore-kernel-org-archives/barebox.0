Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgst8-0002nH-2I
 for barebox@lists.infradead.org; Fri, 28 Jun 2019 15:34:13 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Fri, 28 Jun 2019 17:33:48 +0200
Message-Id: <20190628153350.16250-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 1/3] clk: divider: Remove unused variable in
 clk_divider_recalc_rate
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

commit "clk: add divider_recalc_rate helper" reworked
clk_divider_recalc_rate() function and as part of that left one variable
assignment, which is not used later.

Fixes: e27c0b64db01 ("clk: add divider_recalc_rate helper")
Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/clk/clk-divider.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index d9d3407e7..84a5322cf 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -106,13 +106,11 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 		unsigned long parent_rate)
 {
 	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
-	unsigned int div, val;
+	unsigned int val;
 
 	val = readl(divider->reg) >> divider->shift;
 	val &= div_mask(divider);
 
-	div = _get_div(divider->table, val, divider->flags, divider->width);
-
 	return divider_recalc_rate(clk, parent_rate, val, divider->table,
 				   divider->flags, divider->width);
 }
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
