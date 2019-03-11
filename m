Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHM-0003ds-09
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 01/14] clk: clk-composite: return parent_rate if no rate clk
Date: Mon, 11 Mar 2019 10:31:10 +0100
Message-Id: <20190311093123.7956-2-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

When a composite clock has no rate clock then it should output the
parents rate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-composite.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 5d21a0e7e1..716f6805f3 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -54,7 +54,10 @@ static unsigned long clk_composite_recalc_rate(struct clk *clk,
 	struct clk_composite *composite = to_clk_composite(clk);
 	struct clk *rate_clk = composite->rate_clk;
 
-	return rate_clk ? rate_clk->ops->recalc_rate(rate_clk, parent_rate) : 0;
+	if (rate_clk)
+		return rate_clk->ops->recalc_rate(rate_clk, parent_rate);
+
+	return parent_rate;
 }
 
 static long clk_composite_round_rate(struct clk *clk, unsigned long rate,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
