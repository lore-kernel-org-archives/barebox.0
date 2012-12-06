Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbWS-0007ID-Pa
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:29:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:29:45 +0100
Message-Id: <1354800588-23053-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/6] clk: Add clk table based divider support
To: barebox@lists.infradead.org

For easy support of table based dividers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Makefile            |    2 +-
 drivers/clk/clk-divider-table.c |  119 +++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h             |   10 ++++
 3 files changed, 130 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-divider-table.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 3cc7163..656b859 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,3 +1,3 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
-				clk-mux.o clk-gate.o
+				clk-mux.o clk-gate.o clk-divider-table.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
new file mode 100644
index 0000000..204e24d
--- /dev/null
+++ b/drivers/clk/clk-divider-table.c
@@ -0,0 +1,119 @@
+/*
+ * clk-divider-table.c - generic barebox clock support. Based on Linux clk support
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+struct clk_divider_table {
+	struct clk clk;
+	u8 shift;
+	u8 width;
+	void __iomem *reg;
+	const char *parent;
+	const struct clk_div_table *table;
+	int table_size;
+	int max_div_index;
+};
+
+static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_divider_table *div =
+		container_of(clk, struct clk_divider_table, clk);
+	unsigned int val;
+	int i, div_index = -1;
+	unsigned long best = 0;
+
+	if (rate > parent_rate)
+		rate = parent_rate;
+	if (rate < parent_rate / div->table[div->max_div_index].div)
+		rate = parent_rate / div->table[div->max_div_index].div;
+
+	for (i = 0; i < div->table_size; i++) {
+		unsigned long now = parent_rate / div->table[i].div;
+
+		if (now <= rate && now >= best) {
+			best = now;
+			div_index = i;
+		}
+	}
+
+	val = readl(div->reg);
+	val &= ~(((1 << div->width) - 1) << div->shift);
+	val |= div_index << div->shift;
+	writel(val, div->reg);
+
+	return 0;
+}
+
+static unsigned long clk_divider_recalc_rate(struct clk *clk,
+		unsigned long parent_rate)
+{
+	struct clk_divider_table *div =
+		container_of(clk, struct clk_divider_table, clk);
+	unsigned int val;
+
+	val = readl(div->reg) >> div->shift;
+	val &= (1 << div->width) - 1;
+
+	if (val >= div->table_size)
+		return 0;
+
+	return parent_rate / div->table[val].div;
+}
+
+struct clk_ops clk_divider_table_ops = {
+	.set_rate = clk_divider_set_rate,
+	.recalc_rate = clk_divider_recalc_rate,
+};
+
+struct clk *clk_divider_table(const char *name,
+		const char *parent, void __iomem *reg, u8 shift, u8 width,
+		const struct clk_div_table *table)
+{
+	struct clk_divider_table *div = xzalloc(sizeof(*div));
+	const struct clk_div_table *clkt;
+	int ret, max_div = 0;
+
+	div->shift = shift;
+	div->reg = reg;
+	div->width = width;
+	div->parent = parent;
+	div->clk.ops = &clk_divider_table_ops;
+	div->clk.name = name;
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
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 00588bf..91574f2 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -181,9 +181,19 @@ struct clk {
 	struct clk **parents;
 };
 
+#define CLK_ALWAYS_ENABLED	(1 << 0)
+
+struct clk_div_table {
+	unsigned int	val;
+	unsigned int	div;
+};
+
 struct clk *clk_fixed(const char *name, int rate);
 struct clk *clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width);
+struct clk *clk_divider_table(const char *name,
+		const char *parent, void __iomem *reg, u8 shift, u8 width,
+		const struct clk_div_table *table);
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div);
 struct clk *clk_mux(const char *name, void __iomem *reg,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
