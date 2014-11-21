Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XroNE-0007R4-5c
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 13:35:45 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <D.Lavnikevich@sam-solutions.com>)
 id 1XroMr-0008A7-Sz
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 16:35:21 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Fri, 21 Nov 2014 16:35:06 +0300
Message-ID: <1416576907-2302-2-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1416576907-2302-1-git-send-email-d.lavnikevich@sam-solutions.com>
References: <1416576907-2302-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: [PATCH v2 1/2] ARM i.MX: add 2-bit gate clock support
To: barebox@lists.infradead.org

Based on kernel clk-gate2 and barebox clk-gate implementations.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
---
 arch/arm/mach-imx/Makefile    |   2 +-
 arch/arm/mach-imx/clk-gate2.c | 142 ++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/clk.h       |   9 +++
 3 files changed, 152 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/clk-gate2.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 1d311a4..b811c13 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -15,7 +15,7 @@ obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
-obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
+obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o clk-gate2.o
 obj-y += devices.o imx.o esdctl.o
 obj-y += boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
diff --git a/arch/arm/mach-imx/clk-gate2.c b/arch/arm/mach-imx/clk-gate2.c
new file mode 100644
index 0000000..344c2fb
--- /dev/null
+++ b/arch/arm/mach-imx/clk-gate2.c
@@ -0,0 +1,142 @@
+/*
+ * clk-gate2.c - barebox 2-bit clock support. Based on Linux clk support
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
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+
+struct clk_gate2 {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	const char *parent;
+#define CLK_GATE_INVERTED	(1 << 0)
+	unsigned flags;
+};
+
+#define to_clk_gate2(_clk) container_of(_clk, struct clk_gate2, clk)
+
+static int clk_gate2_enable(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (g->flags & CLK_GATE_INVERTED)
+		val &= ~(3 << g->shift);
+	else
+		val |= 3 << g->shift;
+
+	writel(val, g->reg);
+
+	return 0;
+}
+
+static void clk_gate2_disable(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (g->flags & CLK_GATE_INVERTED)
+		val |= 3 << g->shift;
+	else
+		val &= ~(3 << g->shift);
+
+	writel(val, g->reg);
+}
+
+static int clk_gate2_is_enabled(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (val & (1 << g->shift))
+		return g->flags & CLK_GATE_INVERTED ? 0 : 1;
+	else
+		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
+}
+
+static struct clk_ops clk_gate2_ops = {
+	.enable = clk_gate2_enable,
+	.disable = clk_gate2_disable,
+	.is_enabled = clk_gate2_is_enabled,
+};
+
+struct clk *clk_gate2_alloc(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	struct clk_gate2 *g = xzalloc(sizeof(*g));
+
+	g->parent = parent;
+	g->reg = reg;
+	g->shift = shift;
+	g->clk.ops = &clk_gate2_ops;
+	g->clk.name = name;
+	g->clk.parent_names = &g->parent;
+	g->clk.num_parents = 1;
+
+	return &g->clk;
+}
+
+void clk_gate2_free(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+
+	free(g);
+}
+
+struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
+		u8 shift)
+{
+	struct clk *g;
+	int ret;
+
+	g = clk_gate2_alloc(name , parent, reg, shift);
+
+	ret = clk_register(g);
+	if (ret) {
+		free(to_clk_gate2(g));
+		return ERR_PTR(ret);
+	}
+
+	return g;
+}
+
+struct clk *clk_gate2_inverted(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	struct clk *clk;
+	struct clk_gate2 *g;
+
+	clk = clk_gate2(name, parent, reg, shift);
+	if (IS_ERR(clk))
+		return clk;
+
+	g = to_clk_gate2(clk);
+
+	g->flags = CLK_GATE_INVERTED;
+
+	return clk;
+}
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index e2f4143..8ec3eb5 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -1,6 +1,9 @@
 #ifndef __IMX_CLK_H
 #define __IMX_CLK_H
 
+struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
+		u8 shift);
+
 static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
@@ -39,6 +42,12 @@ static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT, 0);
 }
 
+static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	return clk_gate2(name, parent, reg, shift);
+}
+
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
 		void __iomem *base);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
