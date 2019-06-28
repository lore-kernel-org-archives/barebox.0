Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgst8-0002o2-4D
 for barebox@lists.infradead.org; Fri, 28 Jun 2019 15:34:13 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Fri, 28 Jun 2019 17:33:49 +0200
Message-Id: <20190628153350.16250-2-m.niestroj@grinn-global.com>
In-Reply-To: <20190628153350.16250-1-m.niestroj@grinn-global.com>
References: <20190628153350.16250-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 2/3] clk: divider: Fix best div calculation for power-of-two
 and table dividers
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

commit dd23c2cd38da2c64af381b19795d2c4f115e8ecb Linux upstream.

  clk: divider: Fix best div calculation for power-of-two and table dividers

  The divider returned by clk_divider_bestdiv() is likely to be invalid in case
  of power-of-two and table dividers when CLK_SET_RATE_PARENT flag isn't set.

  Fixes boot on STiH416 platform.

  Signed-off-by: Maxime Coquelin <maxime.coquelin@st.com>
  Signed-off-by: Mike Turquette <mturquette@linaro.org>
  [mturquette@linaro.org: trivial merge conflict & updated changelog]

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/clk/clk-divider.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 84a5322cf..d705729af 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -141,6 +141,37 @@ static bool _is_valid_div(struct clk_divider *divider, unsigned int div)
 	return true;
 }
 
+static int _round_up_table(const struct clk_div_table *table, int div)
+{
+	const struct clk_div_table *clkt;
+	int up = _get_table_maxdiv(table);
+
+	for (clkt = table; clkt->div; clkt++) {
+		if (clkt->div == div)
+			return clkt->div;
+		else if (clkt->div < div)
+			continue;
+
+		if ((clkt->div - div) < (up - div))
+			up = clkt->div;
+	}
+
+	return up;
+}
+
+static int _div_round_up(struct clk_divider *divider,
+		unsigned long parent_rate, unsigned long rate)
+{
+	int div = DIV_ROUND_UP(parent_rate, rate);
+
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		div = __roundup_pow_of_two(div);
+	if (divider->table)
+		div = _round_up_table(divider->table, div);
+
+	return div;
+}
+
 static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 		unsigned long *best_parent_rate)
 {
@@ -156,7 +187,7 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 
 	if (!(clk->flags & CLK_SET_RATE_PARENT)) {
 		parent_rate = *best_parent_rate;
-		bestdiv = DIV_ROUND_UP(parent_rate, rate);
+		bestdiv = _div_round_up(divider, parent_rate, rate);
 		bestdiv = bestdiv == 0 ? 1 : bestdiv;
 		bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
 		return bestdiv;
@@ -230,6 +261,9 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 		div = DIV_ROUND_UP(parent_rate, rate);
 	}
 
+	if (!_is_valid_div(divider->table, div, divider->flags))
+		return -EINVAL;
+
 	value = _get_val(divider, div);
 
 	if (value > div_mask(divider))
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
