Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TA-0000eT-VI
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:32 +0200
Message-Id: <1348484692-24993-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/23] clk: initial common clk support
To: barebox@lists.infradead.org

This adds barebox common clk support loosely based on the Kernel common
clk support. differences are:

- barebox does not need prepare/unprepare
- no parent rate propagation for set_rate
- struct clk is not really encapsulated from the drivers

Along with the clk support we have support for some basic clk building
blocks:

- clk-fixed
- clk-fixed-factor
- clk-mux
- clk-divider

clk-fixed and clk-fixed-factor are completely generic, clk-mux and clk-divider
are currently the way i.MX muxes/dividers are implemented.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Kconfig            |    3 +
 drivers/clk/Makefile           |    2 +-
 drivers/clk/clk-divider.c      |   98 ++++++++++++++++++
 drivers/clk/clk-fixed-factor.c |   63 +++++++++++
 drivers/clk/clk-fixed.c        |   55 ++++++++++
 drivers/clk/clk-mux.c          |   77 ++++++++++++++
 drivers/clk/clk.c              |  224 ++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h            |   42 ++++++++
 8 files changed, 563 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-divider.c
 create mode 100644 drivers/clk/clk-fixed-factor.c
 create mode 100644 drivers/clk/clk-fixed.c
 create mode 100644 drivers/clk/clk-mux.c
 create mode 100644 drivers/clk/clk.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 4168c88..66c1c46 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -2,3 +2,6 @@
 config CLKDEV_LOOKUP
 	bool
 	select HAVE_CLK
+
+config COMMON_CLK
+	bool
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 07613fa..39a75a4 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,2 +1,2 @@
-
+obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o clk-mux.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
new file mode 100644
index 0000000..58a7ea5
--- /dev/null
+++ b/drivers/clk/clk-divider.c
@@ -0,0 +1,98 @@
+/*
+ * clk-divider.c - generic barebox clock support. Based on Linux clk support
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
+struct clk_divider {
+	struct clk clk;
+	u8 shift;
+	u8 width;
+	void __iomem *reg;
+	const char *parent;
+};
+
+static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_divider *div = container_of(clk, struct clk_divider, clk);
+	unsigned int val, divval;
+
+	if (rate > parent_rate)
+		rate = parent_rate;
+	if (!rate)
+		rate = 1;
+
+	divval = DIV_ROUND_UP(parent_rate, rate);
+
+	if (divval > (1 << div->width))
+		divval = 1 << (div->width);
+
+	divval--;
+
+	val = readl(div->reg);
+	val &= ~(((1 << div->width) - 1) << div->shift);
+	val |= divval << div->shift;
+	writel(val, div->reg);
+
+	return 0;
+}
+
+static unsigned long clk_divider_recalc_rate(struct clk *clk,
+		unsigned long parent_rate)
+{
+	struct clk_divider *div = container_of(clk, struct clk_divider, clk);
+	unsigned int val;
+
+	val = readl(div->reg) >> div->shift;
+	val &= (1 << div->width) - 1;
+
+	val++;
+
+	return parent_rate / val;
+}
+
+struct clk_ops clk_divider_ops = {
+	.set_rate = clk_divider_set_rate,
+	.recalc_rate = clk_divider_recalc_rate,
+};
+
+struct clk *clk_divider(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	struct clk_divider *div = xzalloc(sizeof(*div));
+	int ret;
+
+	div->shift = shift;
+	div->reg = reg;
+	div->width = width;
+	div->parent = parent;
+	div->clk.ops = &clk_divider_ops;
+	div->clk.name = name;
+	div->clk.parent_names = &div->parent;
+	div->clk.num_parents = 1;
+
+	ret = clk_register(&div->clk);
+	if (ret) {
+		free(div);
+		return ERR_PTR(ret);
+	}
+
+	return &div->clk;
+}
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
new file mode 100644
index 0000000..52e7c16
--- /dev/null
+++ b/drivers/clk/clk-fixed-factor.c
@@ -0,0 +1,63 @@
+/*
+ * clk-fixed-factor.c - generic barebox clock support. Based on Linux clk support
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
+struct clk_fixed_factor {
+	struct clk clk;
+	int mult;
+	int div;
+	const char *parent;
+};
+
+static unsigned long clk_fixed_factor_recalc_rate(struct clk *clk,
+		unsigned long parent_rate)
+{
+	struct clk_fixed_factor *f = container_of(clk, struct clk_fixed_factor, clk);
+
+	return (parent_rate / f->div) * f->mult;
+}
+
+struct clk_ops clk_fixed_factor_ops = {
+	.recalc_rate = clk_fixed_factor_recalc_rate,
+};
+
+struct clk *clk_fixed_factor(const char *name,
+		const char *parent, unsigned int mult, unsigned int div)
+{
+	struct clk_fixed_factor *f = xzalloc(sizeof(*f));
+	int ret;
+
+	f->mult = mult;
+	f->div = div;
+	f->parent = parent;
+	f->clk.ops = &clk_fixed_factor_ops;
+	f->clk.name = name;
+	f->clk.parent_names = &f->parent;
+	f->clk.num_parents = 1;
+
+	ret = clk_register(&f->clk);
+	if (ret) {
+		free(f);
+		return ERR_PTR(ret);
+	}
+
+	return &f->clk;
+}
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
new file mode 100644
index 0000000..fa89cb2
--- /dev/null
+++ b/drivers/clk/clk-fixed.c
@@ -0,0 +1,55 @@
+/*
+ * clk-fixed.c - generic barebox clock support. Based on Linux clk support
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
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+struct clk_fixed {
+	struct clk clk;
+	unsigned long rate;
+};
+
+static unsigned long clk_fixed_recalc_rate(struct clk *clk,
+		unsigned long parent_rate)
+{
+	struct clk_fixed *fix = container_of(clk, struct clk_fixed, clk);
+
+	return fix->rate;
+}
+
+struct clk_ops clk_fixed_ops = {
+	.recalc_rate = clk_fixed_recalc_rate,
+};
+
+struct clk *clk_fixed(const char *name, int rate)
+{
+	struct clk_fixed *fix = xzalloc(sizeof *fix);
+	int ret;
+
+	fix->rate = rate;
+	fix->clk.ops = &clk_fixed_ops;
+	fix->clk.name = name;
+
+	ret = clk_register(&fix->clk);
+	if (ret) {
+		free(fix);
+		return ERR_PTR(ret);
+	}
+
+	return &fix->clk;
+}
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
new file mode 100644
index 0000000..1794380
--- /dev/null
+++ b/drivers/clk/clk-mux.c
@@ -0,0 +1,77 @@
+/*
+ * clk-mux.c - generic barebox clock support. Based on Linux clk support
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
+struct clk_mux {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	int width;
+};
+
+static int clk_mux_get_parent(struct clk *clk)
+{
+	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
+	int idx = readl(m->reg) >> m->shift & ((1 << m->width) - 1);
+
+	return idx;
+}
+
+static int clk_mux_set_parent(struct clk *clk, u8 idx)
+{
+	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
+	u32 val;
+
+	val = readl(m->reg);
+	val &= ~(((1 << m->width) - 1) << m->shift);
+	val |= idx << m->shift;
+	writel(val, m->reg);
+
+	return 0;
+}
+
+struct clk_ops clk_mux_ops = {
+	.get_parent = clk_mux_get_parent,
+	.set_parent = clk_mux_set_parent,
+};
+
+struct clk *clk_mux(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, int num_parents)
+{
+	struct clk_mux *m = xzalloc(sizeof(*m));
+	int ret;
+
+	m->reg = reg;
+	m->shift = shift;
+	m->width = width;
+	m->clk.ops = &clk_mux_ops;
+	m->clk.name = name;
+	m->clk.parent_names = parents;
+	m->clk.num_parents = num_parents;
+
+	ret = clk_register(&m->clk);
+	if (ret) {
+		free(m);
+		return ERR_PTR(ret);
+	}
+
+	return &m->clk;
+}
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
new file mode 100644
index 0000000..bf61e5d
--- /dev/null
+++ b/drivers/clk/clk.c
@@ -0,0 +1,224 @@
+/*
+ * clk.c - generic barebox clock support. Based on Linux clk support
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
+#include <errno.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+static LIST_HEAD(clks);
+
+static int clk_parent_enable(struct clk *clk)
+{
+	struct clk *parent = clk_get_parent(clk);
+
+	if (!IS_ERR_OR_NULL(parent))
+		return clk_enable(parent);
+
+	return 0;
+}
+
+static void clk_parent_disable(struct clk *clk)
+{
+	struct clk *parent = clk_get_parent(clk);
+
+	if (!IS_ERR_OR_NULL(parent))
+		clk_disable(parent);
+}
+
+int clk_enable(struct clk *clk)
+{
+	int ret;
+
+	if (!clk->enable_count) {
+		ret = clk_parent_enable(clk);
+		if (ret)
+			return ret;
+
+		if (clk->ops->enable) {
+			ret = clk->ops->enable(clk);
+			if (ret) {
+				clk_parent_disable(clk);
+				return ret;
+			}
+		}
+	}
+
+	clk->enable_count++;
+
+	return 0;
+}
+
+void clk_disable(struct clk *clk)
+{
+	if (!clk->enable_count)
+		return;
+
+	clk->enable_count--;
+
+	if (!clk->enable_count) {
+		if (clk->ops->disable)
+			clk->ops->disable(clk);
+
+		clk_parent_disable(clk);
+	}
+}
+
+unsigned long clk_get_rate(struct clk *clk)
+{
+	struct clk *parent;
+	unsigned long parent_rate = 0;
+
+	parent = clk_get_parent(clk);
+	if (!IS_ERR_OR_NULL(parent))
+		parent_rate = clk_get_rate(parent);
+
+	if (clk->ops->recalc_rate)
+		return clk->ops->recalc_rate(clk, parent_rate);
+
+	return parent_rate;
+}
+
+long clk_round_rate(struct clk *clk, unsigned long rate)
+{
+	return clk_get_rate(clk);
+}
+
+int clk_set_rate(struct clk *clk, unsigned long rate)
+{
+	struct clk *parent;
+	unsigned long parent_rate = 0;
+
+	parent = clk_get_parent(clk);
+	if (parent)
+		parent_rate = clk_get_rate(parent);
+
+	if (clk->ops->set_rate)
+		return clk->ops->set_rate(clk, rate, parent_rate);
+
+	return -ENOSYS;
+}
+
+struct clk *clk_lookup(const char *name)
+{
+	struct clk *c;
+
+	if (!name)
+		return ERR_PTR(-ENODEV);
+
+	list_for_each_entry(c, &clks, list) {
+		if (!strcmp(c->name, name))
+			return c;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+
+int clk_set_parent(struct clk *clk, struct clk *parent)
+{
+	int i;
+
+	if (!clk->num_parents)
+		return -EINVAL;
+	if (!clk->ops->set_parent)
+		return -EINVAL;
+
+	for (i = 0; i < clk->num_parents; i++) {
+		if (IS_ERR_OR_NULL(clk->parents[i]))
+			clk->parents[i] = clk_lookup(clk->parent_names[i]);
+
+		if (!IS_ERR_OR_NULL(clk->parents[i]))
+			if (clk->parents[i] == parent)
+				break;
+	}
+
+	if (i == clk->num_parents)
+		return -EINVAL;
+
+	return clk->ops->set_parent(clk, i);
+}
+
+struct clk *clk_get_parent(struct clk *clk)
+{
+	int idx;
+
+	if (!clk->num_parents)
+		return ERR_PTR(-ENODEV);
+
+	if (clk->num_parents != 1) {
+		if (!clk->ops->get_parent)
+			return ERR_PTR(-EINVAL);
+
+		idx = clk->ops->get_parent(clk);
+
+		if (idx >= clk->num_parents)
+			return ERR_PTR(-ENODEV);
+	} else {
+		idx = 0;
+	}
+
+	if (IS_ERR_OR_NULL(clk->parents[idx]))
+		clk->parents[idx] = clk_lookup(clk->parent_names[idx]);
+
+	return clk->parents[idx];
+}
+
+int clk_register(struct clk *clk)
+{
+	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
+
+	list_add_tail(&clk->list, &clks);
+
+	return 0;
+}
+
+static void dump_one(struct clk *clk, int verbose, int indent)
+{
+	struct clk *c;
+
+	printf("%*s%s (rate %ld, %sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
+			clk->enable_count ? "en" : "dis");
+	if (verbose) {
+
+		if (clk->num_parents > 1) {
+			int i;
+			printf("%*s`---- possible parents: ", indent * 4, "");
+			for (i = 0; i < clk->num_parents; i++)
+				printf("%s ", clk->parent_names[i]);
+			printf("\n");
+		}
+	}
+
+	list_for_each_entry(c, &clks, list) {
+		struct clk *parent = clk_get_parent(c);
+
+		if (parent == clk) {
+			dump_one(c, verbose, indent + 1);
+		}
+	}
+}
+
+void clk_dump(int verbose)
+{
+	struct clk *c;
+
+	list_for_each_entry(c, &clks, list) {
+		struct clk *parent = clk_get_parent(c);
+
+		if (IS_ERR_OR_NULL(parent))
+			dump_one(c, verbose, 0);
+	}
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1478c97..09e5656 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -155,4 +155,46 @@ struct clk *clk_get_sys(const char *dev_id, const char *con_id);
 int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
 			struct device_d *dev);
 
+#ifdef CONFIG_COMMON_CLK
+struct clk_ops {
+	int		(*enable)(struct clk *clk);
+	void		(*disable)(struct clk *clk);
+	int		(*is_enabled)(struct clk *clk);
+	unsigned long	(*recalc_rate)(struct clk *clk,
+					unsigned long parent_rate);
+	long		(*round_rate)(struct clk *clk, unsigned long,
+					unsigned long *);
+	int		(*set_parent)(struct clk *clk, u8 index);
+	int		(*get_parent)(struct clk *clk);
+	int		(*set_rate)(struct clk *clk, unsigned long,
+				    unsigned long);
+};
+
+struct clk {
+	const struct clk_ops *ops;
+	int enable_count;
+	struct list_head list;
+	const char *name;
+	const char **parent_names;
+	int num_parents;
+
+	struct clk **parents;
+};
+
+struct clk *clk_fixed(const char *name, int rate);
+struct clk *clk_divider(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width);
+struct clk *clk_fixed_factor(const char *name,
+		const char *parent, unsigned int mult, unsigned int div);
+struct clk *clk_mux(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, int num_parents);
+
+int clk_register(struct clk *clk);
+
+struct clk *clk_lookup(const char *name);
+
+void clk_dump(int verbose);
+
+#endif
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
