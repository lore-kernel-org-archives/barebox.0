Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9rS6-0002a6-FI
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 07:59:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Jul 2014 09:58:41 +0200
Message-Id: <1406102321-14416-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: clk-divider: divider calculation in clk_set_rate needs
 DIV_ROUND_UP
To: barebox@lists.infradead.org

To make the resulting rate is always smaller than the desired rate, and
not bigger.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 67783da..506a966 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -186,7 +186,7 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 		div = clk_divider_bestdiv(clk, rate, &best_parent_rate);
 		clk_set_rate(clk_get_parent(clk), best_parent_rate);
 	} else {
-		div = parent_rate / rate;
+		div = DIV_ROUND_UP(parent_rate, rate);
 	}
 
 	value = _get_val(divider, div);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
