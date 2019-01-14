Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5JX-0006ym-Am
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 16:42:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gj5JU-0007Zj-0U
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:42:12 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 14 Jan 2019 17:42:07 +0100
Message-Id: <20190114164211.10871-4-l.stach@pengutronix.de>
In-Reply-To: <20190114164211.10871-1-l.stach@pengutronix.de>
References: <20190114164211.10871-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/8] clk: add divider_recalc_rate helper
To: barebox@lists.infradead.org

Closer to Linux kernel implementation and needed for imx8mq
composite clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/clk-divider.c | 30 ++++++++++++++++++++++--------
 include/linux/clk.h       |  5 +++++
 2 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 791e10ea99cd..7b1bdde1ce18 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -20,6 +20,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/log2.h>
+#include <asm-generic/div64.h>
 
 #define div_mask(d)	((1 << ((d)->width)) - 1)
 
@@ -56,17 +57,17 @@ static unsigned int _get_table_div(const struct clk_div_table *table,
 	return 0;
 }
 
-static unsigned int _get_div(struct clk_divider *divider, unsigned int val)
+static unsigned int _get_div(const struct clk_div_table *table,
+			     unsigned int val, unsigned long flags, u8 width)
 {
-	if (divider->flags & CLK_DIVIDER_ONE_BASED)
+	if (flags & CLK_DIVIDER_ONE_BASED)
 		return val;
-	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+	if (flags & CLK_DIVIDER_POWER_OF_TWO)
 		return 1 << val;
-	if (divider->table)
-		return _get_table_div(divider->table, val);
+	if (table)
+		return _get_table_div(table, val);
 	return val + 1;
 }
-
 static unsigned int _get_table_val(const struct clk_div_table *table,
 							unsigned int div)
 {
@@ -89,6 +90,18 @@ static unsigned int _get_val(struct clk_divider *divider, unsigned int div)
 	return div - 1;
 }
 
+unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
+		unsigned int val,
+		const struct clk_div_table *table,
+		unsigned long flags, unsigned long width)
+{
+	unsigned int div;
+
+	div = _get_div(table, val, flags, width);
+
+	return DIV_ROUND_UP_ULL((u64)parent_rate, div);
+}
+
 static unsigned long clk_divider_recalc_rate(struct clk *clk,
 		unsigned long parent_rate)
 {
@@ -98,9 +111,10 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 	val = readl(divider->reg) >> divider->shift;
 	val &= div_mask(divider);
 
-	div = _get_div(divider, val);
+	div = _get_div(divider->table, val, divider->flags, divider->width);
 
-	return parent_rate / div;
+	return divider_recalc_rate(clk, parent_rate, val, divider->table,
+				   divider->flags, divider->width);
 }
 
 /*
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 13b1e529f57b..978a0a8a9aa7 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -259,6 +259,11 @@ struct clk_divider {
 
 extern struct clk_ops clk_divider_ops;
 
+unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
+		unsigned int val,
+		const struct clk_div_table *table,
+		unsigned long flags, unsigned long width);
+
 struct clk *clk_divider_alloc(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width, unsigned flags);
 void clk_divider_free(struct clk *clk_divider);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
