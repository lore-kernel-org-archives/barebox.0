Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadBA-0004gq-4A
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:54 +0100
Message-Id: <20170206065057.19483-7-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] clk: Add support for shared gates
To: Barebox List <barebox@lists.infradead.org>

Sometimes a single software control knob controls multiple gates
in hardware. This patch adds support for shared gates which help
coping this situation. The first gate is registered with the hardware
gate as usual, the others are registered as shared gates which does
not have hardware control itself, but only switches the real hardware
gate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Makefile          |   3 +-
 drivers/clk/clk-gate-shared.c | 123 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h           |   3 ++
 3 files changed, 128 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-gate-shared.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index a4e4ed024..5811d28b8 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-composite.o \
-				clk-fractional-divider.o clk-conf.o
+				clk-fractional-divider.o clk-conf.o \
+				clk-gate-shared.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
diff --git a/drivers/clk/clk-gate-shared.c b/drivers/clk/clk-gate-shared.c
new file mode 100644
index 000000000..a95f940dd
--- /dev/null
+++ b/drivers/clk/clk-gate-shared.c
@@ -0,0 +1,123 @@
+/*
+ * clk-gate-shared.c - generic barebox clock support. Based on Linux clk support
+ *
+ * Copyright (c) 2017 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+struct clk_gate_shared {
+	struct clk clk;
+	const char *parent;
+	const char *companion_gate;
+	struct clk *companion_clk;
+};
+
+#define to_clk_gate_shared(_clk) container_of(_clk, struct clk_gate_shared, clk)
+
+static struct clk *lookup_companion(struct clk_gate_shared *g)
+{
+	if (IS_ERR(g->companion_clk))
+		g->companion_clk = clk_lookup(g->companion_gate);
+
+	if (IS_ERR(g->companion_clk))
+		return NULL;
+
+	return g->companion_clk;
+}
+
+static int clk_gate_shared_enable(struct clk *clk)
+{
+	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+
+	return clk_enable(lookup_companion(g));
+}
+
+static void clk_gate_shared_disable(struct clk *clk)
+{
+	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+
+	clk_disable(lookup_companion(g));
+}
+
+static int clk_gate_shared_is_enabled(struct clk *clk)
+{
+	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+
+	return clk_is_enabled(lookup_companion(g));
+}
+
+static struct clk_ops clk_gate_shared_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.enable = clk_gate_shared_enable,
+	.disable = clk_gate_shared_disable,
+	.is_enabled = clk_gate_shared_is_enabled,
+};
+
+struct clk *clk_gate_shared_alloc(const char *name, const char *parent, const char *companion,
+			   unsigned flags)
+{
+	struct clk_gate_shared *g = xzalloc(sizeof(*g));
+
+	g->parent = parent;
+	g->companion_gate = companion;
+	g->companion_clk = ERR_PTR(-EINVAL);
+	g->clk.ops = &clk_gate_shared_ops;
+	g->clk.name = name;
+	g->clk.flags = flags;
+	g->clk.parent_names = &g->parent;
+	g->clk.num_parents = 1;
+
+	return &g->clk;
+}
+
+void clk_gate_shared_free(struct clk *clk)
+{
+	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+
+	free(g);
+}
+
+/*
+ * clk_gate_shared - register a gate controlled by another gate
+ * @name: The name of the new clock gate
+ * @parent: The parent name of the new clock
+ * companion: The hardware gate this clock is controlled by
+ * @flags: common CLK_* flags
+ *
+ * This gate clock is used when a single software control knob controls multiple
+ * gates in hardware. The first gate is then registered as the real hardware gate,
+ * the others are registered with this function. This gate has no hardware control
+ * itself, but only enables/disabled its companion hardware gate.
+ */
+struct clk *clk_gate_shared(const char *name, const char *parent, const char *companion,
+			    unsigned flags)
+{
+	struct clk *clk;
+	int ret;
+
+	clk = clk_gate_shared_alloc(name , parent, companion, flags);
+
+	ret = clk_register(clk);
+	if (ret) {
+		clk_gate_shared_free(clk);
+		return ERR_PTR(ret);
+	}
+
+	return clk;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 697ab4ff4..7dd52388c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -296,6 +296,9 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 		u8 shift, unsigned flags, u8 clk_gate_flags);
 struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem *reg,
 		u8 shift, unsigned flags);
+struct clk *clk_gate_shared(const char *name, const char *parent, const char *shared,
+			    unsigned flags);
+
 int clk_is_enabled(struct clk *clk);
 
 int clk_is_enabled_always(struct clk *clk);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
