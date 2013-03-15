Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGOF3-0004YF-JP
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 06:35:51 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 15 Mar 2013 10:35:38 +0400
Message-Id: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
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
Subject: [RFC 1/3] clk: Remove unneded private "parent" fields
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-divider-table.c |    4 +---
 drivers/clk/clk-divider.c       |    4 +---
 drivers/clk/clk-fixed-factor.c  |    4 +---
 drivers/clk/clk-gate.c          |    4 +---
 4 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
index 204e24d..e75fb78 100644
--- a/drivers/clk/clk-divider-table.c
+++ b/drivers/clk/clk-divider-table.c
@@ -25,7 +25,6 @@ struct clk_divider_table {
 	u8 shift;
 	u8 width;
 	void __iomem *reg;
-	const char *parent;
 	const struct clk_div_table *table;
 	int table_size;
 	int max_div_index;
@@ -94,10 +93,9 @@ struct clk *clk_divider_table(const char *name,
 	div->shift = shift;
 	div->reg = reg;
 	div->width = width;
-	div->parent = parent;
 	div->clk.ops = &clk_divider_table_ops;
 	div->clk.name = name;
-	div->clk.parent_names = &div->parent;
+	div->clk.parent_names = &parent;
 	div->clk.num_parents = 1;
 	div->table = table;
 
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 58a7ea5..012b960 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -25,7 +25,6 @@ struct clk_divider {
 	u8 shift;
 	u8 width;
 	void __iomem *reg;
-	const char *parent;
 };
 
 static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
@@ -82,10 +81,9 @@ struct clk *clk_divider(const char *name, const char *parent,
 	div->shift = shift;
 	div->reg = reg;
 	div->width = width;
-	div->parent = parent;
 	div->clk.ops = &clk_divider_ops;
 	div->clk.name = name;
-	div->clk.parent_names = &div->parent;
+	div->clk.parent_names = &parent;
 	div->clk.num_parents = 1;
 
 	ret = clk_register(&div->clk);
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 52e7c16..a57984d 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -24,7 +24,6 @@ struct clk_fixed_factor {
 	struct clk clk;
 	int mult;
 	int div;
-	const char *parent;
 };
 
 static unsigned long clk_fixed_factor_recalc_rate(struct clk *clk,
@@ -47,10 +46,9 @@ struct clk *clk_fixed_factor(const char *name,
 
 	f->mult = mult;
 	f->div = div;
-	f->parent = parent;
 	f->clk.ops = &clk_fixed_factor_ops;
 	f->clk.name = name;
-	f->clk.parent_names = &f->parent;
+	f->clk.parent_names = &parent;
 	f->clk.num_parents = 1;
 
 	ret = clk_register(&f->clk);
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index cf1bb1a..2dca11c 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -24,7 +24,6 @@ struct clk_gate {
 	struct clk clk;
 	void __iomem *reg;
 	int shift;
-	const char *parent;
 };
 
 static int clk_gate_enable(struct clk *clk)
@@ -60,12 +59,11 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 	struct clk_gate *g = xzalloc(sizeof(*g));
 	int ret;
 
-	g->parent = parent;
 	g->reg = reg;
 	g->shift = shift;
 	g->clk.ops = &clk_gate_ops;
 	g->clk.name = name;
-	g->clk.parent_names = &g->parent;
+	g->clk.parent_names = &parent;
 	g->clk.num_parents = 1;
 
 	ret = clk_register(&g->clk);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
