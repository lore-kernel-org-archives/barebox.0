Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibZA-0001WL-SA
 for barebox@lists.infradead.org; Wed, 03 Jul 2019 09:28:42 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  3 Jul 2019 11:27:56 +0200
Message-Id: <20190703092756.18476-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH] clk: divider: export clk_div_mask() helper
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

commit e6d3cc7b1fac3d7f1313faf8ac9b23830113e3ec Linux upstream.

  clk: divider: export clk_div_mask() helper

  Export clk_div_mask() in clk-provider header so every clock providers
  derived from the generic clock divider may share the definition instead
  of redefining it.

  Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
  Signed-off-by: Michael Turquette <mturquette@baylibre.com>
  Signed-off-by: Stephen Boyd <sboyd@kernel.org>

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/clk/clk-divider.c | 16 +++++++---------
 include/linux/clk.h       |  2 ++
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 566e6a5d0..78b415317 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -22,8 +22,6 @@
 #include <linux/log2.h>
 #include <asm-generic/div64.h>
 
-#define div_mask(width)	((1 << (width)) - 1)
-
 static unsigned int _get_table_maxdiv(const struct clk_div_table *table)
 {
 	unsigned int maxdiv = 0;
@@ -39,12 +37,12 @@ static unsigned int _get_maxdiv(const struct clk_div_table *table, u8 width,
 				unsigned long flags)
 {
 	if (flags & CLK_DIVIDER_ONE_BASED)
-		return div_mask(width);
+		return clk_div_mask(width);
 	if (flags & CLK_DIVIDER_POWER_OF_TWO)
-		return 1 << div_mask(width);
+		return 1 << clk_div_mask(width);
 	if (table)
 		return _get_table_maxdiv(table);
-	return div_mask(width) + 1;
+	return clk_div_mask(width) + 1;
 }
 
 static unsigned int _get_table_div(const struct clk_div_table *table,
@@ -111,7 +109,7 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 	unsigned int val;
 
 	val = readl(divider->reg) >> divider->shift;
-	val &= div_mask(divider->width);
+	val &= clk_div_mask(divider->width);
 
 	return divider_recalc_rate(clk, parent_rate, val, divider->table,
 				   divider->flags, divider->width);
@@ -270,7 +268,7 @@ int divider_get_val(unsigned long rate, unsigned long parent_rate,
 
 	value = _get_val(table, div, flags);
 
-	return min_t(unsigned int, value, div_mask(width));
+	return min_t(unsigned int, value, clk_div_mask(width));
 }
 
 static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
@@ -296,11 +294,11 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 				divider->width, divider->flags);
 
 	val = readl(divider->reg);
-	val &= ~(div_mask(divider->width) << divider->shift);
+	val &= ~(clk_div_mask(divider->width) << divider->shift);
 	val |= value << divider->shift;
 
 	if (clk->flags & CLK_DIVIDER_HIWORD_MASK)
-		val |= div_mask(divider->width) << (divider->shift + 16);
+		val |= clk_div_mask(divider->width) << (divider->shift + 16);
 
 	writel(val, divider->reg);
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index ed78ffe46..c3aeea80d 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -340,6 +340,8 @@ struct clk_divider {
 	int table_size;
 };
 
+#define clk_div_mask(width)	((1 << (width)) - 1)
+
 #define CLK_DIVIDER_POWER_OF_TWO	(1 << 1)
 #define CLK_DIVIDER_HIWORD_MASK		(1 << 3)
 #define CLK_DIVIDER_READ_ONLY		(1 << 5)
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
