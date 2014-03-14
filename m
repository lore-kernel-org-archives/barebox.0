Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAh-00055b-RD
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:34 +0100
Message-Id: <1394807569-23620-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/29] clk: clk-divider: sync with kernel code
To: barebox@lists.infradead.org

This updates the clk-divider to Kernel code, but without power-of-two
divider support which we do not need yet. This also adds table based
divider support to the divider.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 191 ++++++++++++++++++++++++++++++++++++++--------
 include/linux/clk.h       |   3 +
 2 files changed, 164 insertions(+), 30 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index bb8bcc1..9634bd3 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -20,61 +20,192 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-static unsigned int clk_divider_maxdiv(struct clk_divider *div)
+#define div_mask(d)	((1 << ((d)->width)) - 1)
+
+static unsigned int _get_maxdiv(struct clk_divider *divider)
 {
-	if (div->flags & CLK_DIVIDER_ONE_BASED)
-                return (1 << div->width) - 1;
-	return 1 << div->width;
+	if (divider->flags & CLK_DIVIDER_ONE_BASED)
+		return div_mask(divider);
+	return div_mask(divider) + 1;
 }
 
-static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
+static unsigned int _get_table_div(const struct clk_div_table *table,
+							unsigned int val)
+{
+	const struct clk_div_table *clkt;
+
+	for (clkt = table; clkt->div; clkt++)
+		if (clkt->val == val)
+			return clkt->div;
+	return 0;
+}
+
+static unsigned int _get_div(struct clk_divider *divider, unsigned int val)
+{
+	if (divider->flags & CLK_DIVIDER_ONE_BASED)
+		return val;
+	if (divider->table)
+		return _get_table_div(divider->table, val);
+	return val + 1;
+}
+
+static unsigned int _get_table_val(const struct clk_div_table *table,
+							unsigned int div)
+{
+	const struct clk_div_table *clkt;
+
+	for (clkt = table; clkt->div; clkt++)
+		if (clkt->div == div)
+			return clkt->val;
+	return 0;
+}
+
+static unsigned int _get_val(struct clk_divider *divider, unsigned int div)
+{
+	if (divider->flags & CLK_DIVIDER_ONE_BASED)
+		return div;
+	if (divider->table)
+		return  _get_table_val(divider->table, div);
+	return div - 1;
+}
+
+static unsigned long clk_divider_recalc_rate(struct clk *clk,
 		unsigned long parent_rate)
 {
-	struct clk_divider *div = container_of(clk, struct clk_divider, clk);
-	unsigned int val, divval;
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	unsigned int div, val;
+
+	val = readl(divider->reg) >> divider->shift;
+	val &= div_mask(divider);
+
+	div = _get_div(divider, val);
+
+	return parent_rate / div;
+}
+
+/*
+ * The reverse of DIV_ROUND_UP: The maximum number which
+ * divided by m is r
+ */
+#define MULT_ROUND_UP(r, m) ((r) * (m) + (m) - 1)
+
+static bool _is_valid_table_div(const struct clk_div_table *table,
+							 unsigned int div)
+{
+	const struct clk_div_table *clkt;
+
+	for (clkt = table; clkt->div; clkt++)
+		if (clkt->div == div)
+			return true;
+	return false;
+}
+
+static bool _is_valid_div(struct clk_divider *divider, unsigned int div)
+{
+	if (divider->table)
+		return _is_valid_table_div(divider->table, div);
+	return true;
+}
+
+static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
+		unsigned long *best_parent_rate)
+{
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	int i, bestdiv = 0;
+	unsigned long parent_rate, best = 0, now, maxdiv;
+	unsigned long parent_rate_saved = *best_parent_rate;
 
-	if (rate > parent_rate)
-		rate = parent_rate;
 	if (!rate)
 		rate = 1;
 
-	divval = DIV_ROUND_UP(parent_rate, rate);
-	if (divval > clk_divider_maxdiv(div))
-		divval = clk_divider_maxdiv(div);
+	maxdiv = _get_maxdiv(divider);
 
-	if (!(div->flags & CLK_DIVIDER_ONE_BASED))
-		divval--;
+	if (!(clk->flags & CLK_SET_RATE_PARENT)) {
+		parent_rate = *best_parent_rate;
+		bestdiv = DIV_ROUND_UP(parent_rate, rate);
+		bestdiv = bestdiv == 0 ? 1 : bestdiv;
+		bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
+		return bestdiv;
+	}
 
-	val = readl(div->reg);
-	val &= ~(((1 << div->width) - 1) << div->shift);
-	val |= divval << div->shift;
-	writel(val, div->reg);
+	/*
+	 * The maximum divider we can use without overflowing
+	 * unsigned long in rate * i below
+	 */
+	maxdiv = min(ULONG_MAX / rate, maxdiv);
+
+	for (i = 1; i <= maxdiv; i++) {
+		if (!_is_valid_div(divider, i))
+			continue;
+		if (rate * i == parent_rate_saved) {
+			/*
+			 * It's the most ideal case if the requested rate can be
+			 * divided from parent clock without needing to change
+			 * parent rate, so return the divider immediately.
+			 */
+			*best_parent_rate = parent_rate_saved;
+			return i;
+		}
+		parent_rate = clk_round_rate(clk_get_parent(clk),
+				MULT_ROUND_UP(rate, i));
+		now = parent_rate / i;
+		if (now <= rate && now > best) {
+			bestdiv = i;
+			best = now;
+			*best_parent_rate = parent_rate;
+		}
+	}
 
-	return 0;
+	if (!bestdiv) {
+		bestdiv = _get_maxdiv(divider);
+		*best_parent_rate = clk_round_rate(clk_get_parent(clk), 1);
+	}
+
+	return bestdiv;
 }
 
-static unsigned long clk_divider_recalc_rate(struct clk *clk,
-		unsigned long parent_rate)
+static long clk_divider_round_rate(struct clk *clk, unsigned long rate,
+		unsigned long *parent_rate)
 {
-	struct clk_divider *div = container_of(clk, struct clk_divider, clk);
-	unsigned int val;
+	int div;
 
-	val = readl(div->reg) >> div->shift;
-	val &= (1 << div->width) - 1;
+	div = clk_divider_bestdiv(clk, rate, parent_rate);
 
-	if (div->flags & CLK_DIVIDER_ONE_BASED) {
-		if (!val)
-			val++;
+	return *parent_rate / div;
+}
+
+static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	unsigned int div, value;
+	u32 val;
+
+	if (clk->flags & CLK_SET_RATE_PARENT) {
+		unsigned long best_parent_rate = parent_rate;
+		div = clk_divider_bestdiv(clk, rate, &best_parent_rate);
+		clk_set_rate(clk_get_parent(clk), best_parent_rate);
 	} else {
-		val++;
+		div = parent_rate / rate;
 	}
 
-	return parent_rate / val;
+	value = _get_val(divider, div);
+
+	if (value > div_mask(divider))
+		value = div_mask(divider);
+
+	val = readl(divider->reg);
+	val &= ~(div_mask(divider) << divider->shift);
+	val |= value << divider->shift;
+	writel(val, divider->reg);
+
+	return 0;
 }
 
 struct clk_ops clk_divider_ops = {
 	.set_rate = clk_divider_set_rate,
 	.recalc_rate = clk_divider_recalc_rate,
+	.round_rate = clk_divider_round_rate,
 };
 
 struct clk *clk_divider(const char *name, const char *parent,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 2704b0f..71b0466 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -240,6 +240,9 @@ struct clk_divider {
 	const char *parent;
 #define CLK_DIVIDER_ONE_BASED	(1 << 0)
 	unsigned flags;
+	const struct clk_div_table *table;
+	int max_div_index;
+	int table_size;
 };
 
 extern struct clk_ops clk_divider_ops;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
