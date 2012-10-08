Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058S-Hv
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:10 +0200
Message-Id: <1349725459-20226-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] clk: Add clk gate support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Makefile   |    3 +-
 drivers/clk/clk-gate.c |   78 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h    |    2 ++
 3 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-gate.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 39a75a4..3cc7163 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,2 +1,3 @@
-obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o clk-mux.o
+obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
+				clk-mux.o clk-gate.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
new file mode 100644
index 0000000..cf1bb1a
--- /dev/null
+++ b/drivers/clk/clk-gate.c
@@ -0,0 +1,78 @@
+/*
+ * clk-gate.c - generic barebox clock support. Based on Linux clk support
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
+struct clk_gate {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	const char *parent;
+};
+
+static int clk_gate_enable(struct clk *clk)
+{
+	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
+	u32 val;
+
+	val = readl(g->reg);
+	val |= 1 << g->shift;
+	writel(val, g->reg);
+
+	return 0;
+}
+
+static void clk_gate_disable(struct clk *clk)
+{
+	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
+	u32 val;
+
+	val = readl(g->reg);
+	val &= ~(1 << g->shift);
+	writel(val, g->reg);
+}
+
+struct clk_ops clk_gate_ops = {
+	.enable = clk_gate_enable,
+	.disable = clk_gate_disable,
+};
+
+struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
+		u8 shift)
+{
+	struct clk_gate *g = xzalloc(sizeof(*g));
+	int ret;
+
+	g->parent = parent;
+	g->reg = reg;
+	g->shift = shift;
+	g->clk.ops = &clk_gate_ops;
+	g->clk.name = name;
+	g->clk.parent_names = &g->parent;
+	g->clk.num_parents = 1;
+
+	ret = clk_register(&g->clk);
+	if (ret) {
+		free(g);
+		return ERR_PTR(ret);
+	}
+
+	return &g->clk;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index e9031dd..00588bf 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -188,6 +188,8 @@ struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div);
 struct clk *clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents);
+struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
+		u8 shift);
 
 int clk_register(struct clk *clk);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
