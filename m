Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2ai3-0004I5-Oi
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 10:27:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e2ahe-0003Lx-DN
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 12:26:58 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Oct 2017 12:26:49 +0200
Message-Id: <20171012102658.17104-3-l.stach@pengutronix.de>
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 03/12] clk: versatile: add basic clocks
To: barebox@lists.infradead.org

This adds the necessary basic clocks used on the ARM versatile
platforms.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/Makefile                    |   1 +
 drivers/clk/vexpress/Makefile           |   1 +
 drivers/clk/vexpress/clk-sp810.c        | 136 ++++++++++++++++++++++++++++++++
 drivers/clk/vexpress/clk-vexpress-osc.c |  42 ++++++++++
 4 files changed, 180 insertions(+)
 create mode 100644 drivers/clk/vexpress/Makefile
 create mode 100644 drivers/clk/vexpress/clk-sp810.c
 create mode 100644 drivers/clk/vexpress/clk-vexpress-osc.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index b5abe1cdf5db..a36a8db03bdb 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga/
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
 obj-$(CONFIG_ARCH_IMX)		+= imx/
 obj-$(CONFIG_COMMON_CLK_AT91)	+= at91/
+obj-$(CONFIG_MACH_VEXPRESS)	+= vexpress/
diff --git a/drivers/clk/vexpress/Makefile b/drivers/clk/vexpress/Makefile
new file mode 100644
index 000000000000..c6869bac8365
--- /dev/null
+++ b/drivers/clk/vexpress/Makefile
@@ -0,0 +1 @@
+obj-y	+= clk-vexpress-osc.o clk-sp810.o
diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
new file mode 100644
index 000000000000..af72c740241c
--- /dev/null
+++ b/drivers/clk/vexpress/clk-sp810.c
@@ -0,0 +1,136 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Copyright (C) 2013 ARM Limited
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <of_address.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+/* sysctl registers offset */
+#define SCCTRL			0x000
+#define SCCTRL_TIMERENnSEL_SHIFT(n)	(15 + ((n) * 2))
+
+struct clk_sp810;
+
+struct clk_sp810_timerclken {
+	struct clk hw;
+	struct clk_sp810 *sp810;
+	int channel;
+};
+
+static inline struct clk_sp810_timerclken *
+to_clk_sp810_timerclken(struct clk *clk)
+{
+	return container_of(clk, struct clk_sp810_timerclken, hw);
+}
+
+struct clk_sp810 {
+	struct device_node *node;
+	void __iomem *base;
+	struct clk_sp810_timerclken timerclken[4];
+};
+
+static int clk_sp810_timerclken_get_parent(struct clk *hw)
+{
+	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
+	u32 val = readl(timerclken->sp810->base + SCCTRL);
+
+	return !!(val & (1 << SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel)));
+}
+
+static int clk_sp810_timerclken_set_parent(struct clk *hw, u8 index)
+{
+	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
+	struct clk_sp810 *sp810 = timerclken->sp810;
+	u32 val, shift = SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel);
+
+	if (WARN_ON(index > 1))
+		return -EINVAL;
+
+	val = readl(sp810->base + SCCTRL);
+	val &= ~(1 << shift);
+	val |= index << shift;
+	writel(val, sp810->base + SCCTRL);
+
+	return 0;
+}
+
+static const struct clk_ops clk_sp810_timerclken_ops = {
+	.get_parent = clk_sp810_timerclken_get_parent,
+	.set_parent = clk_sp810_timerclken_set_parent,
+};
+
+static struct clk *clk_sp810_timerclken_of_get(struct of_phandle_args *clkspec,
+		void *data)
+{
+	struct clk_sp810 *sp810 = data;
+
+	if (WARN_ON(clkspec->args_count != 1 ||
+		    clkspec->args[0] >=	ARRAY_SIZE(sp810->timerclken)))
+		return NULL;
+
+	return &sp810->timerclken[clkspec->args[0]].hw;
+}
+
+static void clk_sp810_of_setup(struct device_node *node)
+{
+	struct clk_sp810 *sp810 = xzalloc(sizeof(*sp810));
+	const char *parent_names[2];
+	int num = ARRAY_SIZE(parent_names);
+	char name[12];
+	static int instance;
+	int i;
+	bool deprecated;
+
+	if (!sp810)
+		return;
+
+	if (of_clk_parent_fill(node, parent_names, num) != num) {
+		pr_warn("Failed to obtain parent clocks for SP810!\n");
+		kfree(sp810);
+		return;
+	}
+
+	sp810->node = node;
+	sp810->base = of_iomap(node, 0);
+
+	deprecated = !of_find_property(node, "assigned-clock-parents", NULL);
+
+	for (i = 0; i < ARRAY_SIZE(sp810->timerclken); i++) {
+		snprintf(name, sizeof(name), "sp810_%d_%d", instance, i);
+
+		sp810->timerclken[i].sp810 = sp810;
+		sp810->timerclken[i].channel = i;
+		sp810->timerclken[i].hw.name = strdup(name);
+		sp810->timerclken[i].hw.parent_names = parent_names;
+		sp810->timerclken[i].hw.num_parents = num;
+		sp810->timerclken[i].hw.ops = &clk_sp810_timerclken_ops;
+
+		/*
+		 * If DT isn't setting the parent, force it to be
+		 * the 1 MHz clock without going through the framework.
+		 * We do this before clk_register() so that it can determine
+		 * the parent and setup the tree properly.
+		 */
+		if (deprecated)
+			clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
+
+		clk_register(&sp810->timerclken[i].hw);
+	}
+
+	of_clk_add_provider(node, clk_sp810_timerclken_of_get, sp810);
+	instance++;
+}
+CLK_OF_DECLARE(sp810, "arm,sp810", clk_sp810_of_setup);
diff --git a/drivers/clk/vexpress/clk-vexpress-osc.c b/drivers/clk/vexpress/clk-vexpress-osc.c
new file mode 100644
index 000000000000..c0d6e6066ecd
--- /dev/null
+++ b/drivers/clk/vexpress/clk-vexpress-osc.c
@@ -0,0 +1,42 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+/*
+ * This represents the vexpress-osc as a fixed clock, which isn't really
+ * accurate, as this clock allows rate changes in real implementations. As those
+ * would need access to the config bus, a whole lot more infrastructure would be
+ * needed. We skip this complication for now, as we don't have a use-case, yet.
+ */
+static int vexpress_osc_setup(struct device_node *node)
+{
+	struct clk *clk;
+	u32 range[2];
+	const char *name;
+
+	if (of_property_read_u32_array(node, "freq-range", range,
+				       ARRAY_SIZE(range)))
+		return -EINVAL;
+
+	if (of_property_read_string(node, "clock-output-names", &name))
+		return -EINVAL;
+
+	clk = clk_fixed(name, range[0]);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return of_clk_add_provider(node, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(vexpress_osc, "arm,vexpress-osc", vexpress_osc_setup);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
