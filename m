Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAm-0005Gw-A0
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:36 +0100
Message-Id: <1394807569-23620-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/29] clk: clk-fixed-factor: add set_rate/round_rate callbacks
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-fixed-factor.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index df0d2f3..cb531b1 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -35,7 +35,37 @@ static unsigned long clk_fixed_factor_recalc_rate(struct clk *clk,
 	return (parent_rate / f->div) * f->mult;
 }
 
+static long clk_factor_round_rate(struct clk *clk, unsigned long rate,
+		unsigned long *prate)
+{
+	struct clk_fixed_factor *fix = container_of(clk, struct clk_fixed_factor, clk);
+
+	if (clk->flags & CLK_SET_RATE_PARENT) {
+		unsigned long best_parent;
+
+		best_parent = (rate / fix->mult) * fix->div;
+		*prate = clk_round_rate(clk_get_parent(clk), best_parent);
+	}
+
+	return (*prate / fix->div) * fix->mult;
+}
+
+static int clk_factor_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_fixed_factor *fix = container_of(clk, struct clk_fixed_factor, clk);
+
+	if (clk->flags & CLK_SET_RATE_PARENT) {
+		printk("%s: %ld -> parent %ld\n", __func__, rate, rate * fix->div / fix->mult);
+		return clk_set_rate(clk_get_parent(clk), rate * fix->div / fix->mult);
+	}
+
+	return 0;
+}
+
 static struct clk_ops clk_fixed_factor_ops = {
+	.set_rate = clk_factor_set_rate,
+	.round_rate = clk_factor_round_rate,
 	.recalc_rate = clk_fixed_factor_recalc_rate,
 };
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
