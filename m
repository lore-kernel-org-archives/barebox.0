Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAh-00055e-UM
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:35 +0100
Message-Id: <1394807569-23620-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/29] clk: let clk-divider handle the table based divider
 aswell
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Makefile            |   2 +-
 drivers/clk/clk-divider-table.c | 120 ----------------------------------------
 drivers/clk/clk-divider.c       |  36 ++++++++++++
 3 files changed, 37 insertions(+), 121 deletions(-)
 delete mode 100644 drivers/clk/clk-divider-table.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f5c0592..7506f87 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
-				clk-mux.o clk-gate.o clk-divider-table.o
+				clk-mux.o clk-gate.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
deleted file mode 100644
index 0caf85d..0000000
--- a/drivers/clk/clk-divider-table.c
+++ /dev/null
@@ -1,120 +0,0 @@
-/*
- * clk-divider-table.c - generic barebox clock support. Based on Linux clk support
- *
- * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <io.h>
-#include <malloc.h>
-#include <linux/clk.h>
-#include <linux/err.h>
-
-struct clk_divider_table {
-	struct clk clk;
-	u8 shift;
-	u8 width;
-	void __iomem *reg;
-	const char *parent;
-	const struct clk_div_table *table;
-	int table_size;
-	int max_div_index;
-};
-
-static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_divider_table *div =
-		container_of(clk, struct clk_divider_table, clk);
-	unsigned int val;
-	int i, div_index = -1;
-	unsigned long best = 0;
-
-	if (rate > parent_rate)
-		rate = parent_rate;
-	if (rate < parent_rate / div->table[div->max_div_index].div)
-		rate = parent_rate / div->table[div->max_div_index].div;
-
-	for (i = 0; i < div->table_size; i++) {
-		unsigned long now = parent_rate / div->table[i].div;
-
-		if (now <= rate && now >= best) {
-			best = now;
-			div_index = i;
-		}
-	}
-
-	val = readl(div->reg);
-	val &= ~(((1 << div->width) - 1) << div->shift);
-	val |= div_index << div->shift;
-	writel(val, div->reg);
-
-	return 0;
-}
-
-static unsigned long clk_divider_recalc_rate(struct clk *clk,
-		unsigned long parent_rate)
-{
-	struct clk_divider_table *div =
-		container_of(clk, struct clk_divider_table, clk);
-	unsigned int val;
-
-	val = readl(div->reg) >> div->shift;
-	val &= (1 << div->width) - 1;
-
-	if (val >= div->table_size)
-		return 0;
-
-	return parent_rate / div->table[val].div;
-}
-
-static struct clk_ops clk_divider_table_ops = {
-	.set_rate = clk_divider_set_rate,
-	.recalc_rate = clk_divider_recalc_rate,
-};
-
-struct clk *clk_divider_table(const char *name,
-		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		const struct clk_div_table *table, unsigned flags)
-{
-	struct clk_divider_table *div = xzalloc(sizeof(*div));
-	const struct clk_div_table *clkt;
-	int ret, max_div = 0;
-
-	div->shift = shift;
-	div->reg = reg;
-	div->width = width;
-	div->parent = parent;
-	div->clk.ops = &clk_divider_table_ops;
-	div->clk.name = name;
-	div->clk.parent_names = &div->parent;
-	div->clk.flags = flags;
-	div->clk.num_parents = 1;
-	div->table = table;
-
-	for (clkt = div->table; clkt->div; clkt++) {
-		if (clkt->div > max_div) {
-			max_div = clkt->div;
-			div->max_div_index = div->table_size;
-		}
-		div->table_size++;
-	}
-
-	ret = clk_register(&div->clk);
-	if (ret) {
-		free(div);
-		return ERR_PTR(ret);
-	}
-
-	return &div->clk;
-}
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 9634bd3..67783da 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -248,3 +248,39 @@ struct clk *clk_divider_one_based(const char *name, const char *parent,
 
 	return clk;
 }
+
+struct clk *clk_divider_table(const char *name,
+		const char *parent, void __iomem *reg, u8 shift, u8 width,
+		const struct clk_div_table *table, unsigned flags)
+{
+	struct clk_divider *div = xzalloc(sizeof(*div));
+	const struct clk_div_table *clkt;
+	int ret, max_div = 0;
+
+	div->shift = shift;
+	div->reg = reg;
+	div->width = width;
+	div->parent = parent;
+	div->clk.ops = &clk_divider_ops;
+	div->clk.name = name;
+	div->clk.flags = flags;
+	div->clk.parent_names = &div->parent;
+	div->clk.num_parents = 1;
+	div->table = table;
+
+	for (clkt = div->table; clkt->div; clkt++) {
+		if (clkt->div > max_div) {
+			max_div = clkt->div;
+			div->max_div_index = div->table_size;
+		}
+		div->table_size++;
+	}
+
+	ret = clk_register(&div->clk);
+	if (ret) {
+		free(div);
+		return ERR_PTR(ret);
+	}
+
+	return &div->clk;
+}
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
