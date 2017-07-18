Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSOH-0006lZ-9R
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:18:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dXSNt-0006DK-QE
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 15:17:53 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jul 2017 15:17:53 +0200
Message-Id: <20170718131753.24879-3-l.stach@pengutronix.de>
In-Reply-To: <20170718131753.24879-1-l.stach@pengutronix.de>
References: <20170718131753.24879-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] clk: clk-fixed-factor: remove leftover debugging
To: barebox@lists.infradead.org

Don't spam the output with rate propagation messages. It isn't done
for any other clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/clk-fixed-factor.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 0be48558e680..021c43339feb 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -56,7 +56,6 @@ static int clk_factor_set_rate(struct clk *clk, unsigned long rate,
 	struct clk_fixed_factor *fix = container_of(clk, struct clk_fixed_factor, clk);
 
 	if (clk->flags & CLK_SET_RATE_PARENT) {
-		printk("%s: %ld -> parent %ld\n", __func__, rate, rate * fix->div / fix->mult);
 		return clk_set_rate(clk_get_parent(clk), rate * fix->div / fix->mult);
 	}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
