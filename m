Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgst8-0002oQ-Kp
 for barebox@lists.infradead.org; Fri, 28 Jun 2019 15:34:13 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Fri, 28 Jun 2019 17:33:50 +0200
Message-Id: <20190628153350.16250-3-m.niestroj@grinn-global.com>
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
Subject: [PATCH 3/3] clk: divider: Make generic for usage elsewhere
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

commit bca9690b942654f668ffb5124b2bbd0ba0f007bb Linux upstream adjusted
to current Barebox codebase.

  clk: divider: Make generic for usage elsewhere

  Some devices don't use mmio to interact with dividers. Split out the
  logic from the register read/write parts so that we can reuse the
  division logic elsewhere.

  Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
  Tested-by: Kenneth Westfield <kwestfie@codeaurora.org>
  Signed-off-by: Michael Turquette <mturquette@linaro.org>

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/clk/clk-divider.c | 116 +++++++++++++++++++++++---------------
 include/linux/clk.h       |   8 +++
 2 files changed, 79 insertions(+), 45 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index d705729af..566e6a5d0 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -22,7 +22,7 @@
 #include <linux/log2.h>
 #include <asm-generic/div64.h>
 
-#define div_mask(d)	((1 << ((d)->width)) - 1)
+#define div_mask(width)	((1 << (width)) - 1)
 
 static unsigned int _get_table_maxdiv(const struct clk_div_table *table)
 {
@@ -35,15 +35,16 @@ static unsigned int _get_table_maxdiv(const struct clk_div_table *table)
 	return maxdiv;
 }
 
-static unsigned int _get_maxdiv(struct clk_divider *divider)
+static unsigned int _get_maxdiv(const struct clk_div_table *table, u8 width,
+				unsigned long flags)
 {
-	if (divider->flags & CLK_DIVIDER_ONE_BASED)
-		return div_mask(divider);
-	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
-		return 1 << div_mask(divider);
-	if (divider->table)
-		return _get_table_maxdiv(divider->table);
-	return div_mask(divider) + 1;
+	if (flags & CLK_DIVIDER_ONE_BASED)
+		return div_mask(width);
+	if (flags & CLK_DIVIDER_POWER_OF_TWO)
+		return 1 << div_mask(width);
+	if (table)
+		return _get_table_maxdiv(table);
+	return div_mask(width) + 1;
 }
 
 static unsigned int _get_table_div(const struct clk_div_table *table,
@@ -79,14 +80,15 @@ static unsigned int _get_table_val(const struct clk_div_table *table,
 	return 0;
 }
 
-static unsigned int _get_val(struct clk_divider *divider, unsigned int div)
+static unsigned int _get_val(const struct clk_div_table *table,
+			     unsigned int div, unsigned long flags)
 {
-	if (divider->flags & CLK_DIVIDER_ONE_BASED)
+	if (flags & CLK_DIVIDER_ONE_BASED)
 		return div;
-	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+	if (flags & CLK_DIVIDER_POWER_OF_TWO)
 		return __ffs(div);
-	if (divider->table)
-		return  _get_table_val(divider->table, div);
+	if (table)
+		return  _get_table_val(table, div);
 	return div - 1;
 }
 
@@ -109,7 +111,7 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 	unsigned int val;
 
 	val = readl(divider->reg) >> divider->shift;
-	val &= div_mask(divider);
+	val &= div_mask(divider->width);
 
 	return divider_recalc_rate(clk, parent_rate, val, divider->table,
 				   divider->flags, divider->width);
@@ -132,12 +134,13 @@ static bool _is_valid_table_div(const struct clk_div_table *table,
 	return false;
 }
 
-static bool _is_valid_div(struct clk_divider *divider, unsigned int div)
+static bool _is_valid_div(const struct clk_div_table *table, unsigned int div,
+			  unsigned long flags)
 {
-	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+	if (flags & CLK_DIVIDER_POWER_OF_TWO)
 		return is_power_of_2(div);
-	if (divider->table)
-		return _is_valid_table_div(divider->table, div);
+	if (table)
+		return _is_valid_table_div(table, div);
 	return true;
 }
 
@@ -159,23 +162,25 @@ static int _round_up_table(const struct clk_div_table *table, int div)
 	return up;
 }
 
-static int _div_round_up(struct clk_divider *divider,
-		unsigned long parent_rate, unsigned long rate)
+static int _div_round_up(const struct clk_div_table *table,
+			 unsigned long parent_rate, unsigned long rate,
+			 unsigned long flags)
 {
 	int div = DIV_ROUND_UP(parent_rate, rate);
 
-	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+	if (flags & CLK_DIVIDER_POWER_OF_TWO)
 		div = __roundup_pow_of_two(div);
-	if (divider->table)
-		div = _round_up_table(divider->table, div);
+	if (table)
+		div = _round_up_table(table, div);
 
 	return div;
 }
 
 static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
-		unsigned long *best_parent_rate)
+			       unsigned long *best_parent_rate,
+			       const struct clk_div_table *table, u8 width,
+			       unsigned long flags)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
 	int i, bestdiv = 0;
 	unsigned long parent_rate, best = 0, now, maxdiv;
 	unsigned long parent_rate_saved = *best_parent_rate;
@@ -183,11 +188,11 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 	if (!rate)
 		rate = 1;
 
-	maxdiv = _get_maxdiv(divider);
+	maxdiv = _get_maxdiv(table, width, flags);
 
 	if (!(clk->flags & CLK_SET_RATE_PARENT)) {
 		parent_rate = *best_parent_rate;
-		bestdiv = _div_round_up(divider, parent_rate, rate);
+		bestdiv = _div_round_up(table, parent_rate, rate, flags);
 		bestdiv = bestdiv == 0 ? 1 : bestdiv;
 		bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
 		return bestdiv;
@@ -200,7 +205,7 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 	maxdiv = min(ULONG_MAX / rate, maxdiv);
 
 	for (i = 1; i <= maxdiv; i++) {
-		if (!_is_valid_div(divider, i))
+		if (!_is_valid_div(table, i, flags))
 			continue;
 		if (rate * i == parent_rate_saved) {
 			/*
@@ -222,25 +227,50 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 	}
 
 	if (!bestdiv) {
-		bestdiv = _get_maxdiv(divider);
+		bestdiv = _get_maxdiv(table, width, flags);
 		*best_parent_rate = clk_round_rate(clk_get_parent(clk), 1);
 	}
 
 	return bestdiv;
 }
 
+long divider_round_rate(struct clk *clk, unsigned long rate,
+			unsigned long *prate, const struct clk_div_table *table,
+			u8 width, unsigned long flags)
+{
+	int div;
+
+	div = clk_divider_bestdiv(clk, rate, prate, table, width, flags);
+
+	return DIV_ROUND_UP(*prate, div);
+}
+
 static long clk_divider_round_rate(struct clk *clk, unsigned long rate,
-		unsigned long *parent_rate)
+				unsigned long *prate)
 {
 	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
-	int div;
 
 	if (divider->flags & CLK_DIVIDER_READ_ONLY)
-		return clk_divider_recalc_rate(clk, *parent_rate);
+		return clk_divider_recalc_rate(clk, *prate);
+
+	return divider_round_rate(clk, rate, prate, divider->table,
+				  divider->width, divider->flags);
+}
+
+int divider_get_val(unsigned long rate, unsigned long parent_rate,
+		    const struct clk_div_table *table, u8 width,
+		    unsigned long flags)
+{
+	unsigned int div, value;
+
+	div = DIV_ROUND_UP(parent_rate, rate);
+
+	if (!_is_valid_div(table, div, flags))
+		return -EINVAL;
 
-	div = clk_divider_bestdiv(clk, rate, parent_rate);
+	value = _get_val(table, div, flags);
 
-	return *parent_rate / div;
+	return min_t(unsigned int, value, div_mask(width));
 }
 
 static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
@@ -255,26 +285,22 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 
 	if (clk->flags & CLK_SET_RATE_PARENT) {
 		unsigned long best_parent_rate = parent_rate;
-		div = clk_divider_bestdiv(clk, rate, &best_parent_rate);
+		div = clk_divider_bestdiv(clk, rate, &best_parent_rate,
+				divider->table, divider->width, divider->flags);
 		clk_set_rate(clk_get_parent(clk), best_parent_rate);
 	} else {
 		div = DIV_ROUND_UP(parent_rate, rate);
 	}
 
-	if (!_is_valid_div(divider->table, div, divider->flags))
-		return -EINVAL;
-
-	value = _get_val(divider, div);
-
-	if (value > div_mask(divider))
-		value = div_mask(divider);
+	value = divider_get_val(rate, parent_rate, divider->table,
+				divider->width, divider->flags);
 
 	val = readl(divider->reg);
-	val &= ~(div_mask(divider) << divider->shift);
+	val &= ~(div_mask(divider->width) << divider->shift);
 	val |= value << divider->shift;
 
 	if (clk->flags & CLK_DIVIDER_HIWORD_MASK)
-		val |= div_mask(divider) << (divider->shift + 16);
+		val |= div_mask(divider->width) << (divider->shift + 16);
 
 	writel(val, divider->reg);
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index b9c5e0ab0..ed78ffe46 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -354,6 +354,14 @@ unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 		const struct clk_div_table *table,
 		unsigned long flags, unsigned long width);
 
+long divider_round_rate(struct clk *clk, unsigned long rate,
+			unsigned long *prate, const struct clk_div_table *table,
+			u8 width, unsigned long flags);
+
+int divider_get_val(unsigned long rate, unsigned long parent_rate,
+		    const struct clk_div_table *table, u8 width,
+		    unsigned long flags);
+
 struct clk *clk_divider_alloc(const char *name, const char *parent,
 			      unsigned clk_flags, void __iomem *reg,
 			      u8 shift, u8 width, unsigned div_flags);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
