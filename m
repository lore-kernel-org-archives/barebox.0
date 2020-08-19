Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8U1S-0008VI-Ia
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:45:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:45:08 +0200
Message-Id: <20200819194511.14005-4-s.hauer@pengutronix.de>
In-Reply-To: <20200819194511.14005-1-s.hauer@pengutronix.de>
References: <20200819194511.14005-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] clk: imx. clk-composite-8m: Update from Linux Kernel
To: Barebox List <barebox@lists.infradead.org>

Update clk-composite-8m to Linux as of v5.9-rc2. This is a combination
of Linux commits:

0e40198dc28b6 ("clk: imx: add imx8m_clk_hw_composite_bus")
f90b68d6c8b00 ("clk: imx: add mux ops for i.MX8M composite clk")
62668b68dc8e7 ("clk: imx: composite-8m: add imx8m_clk_hw_composite_core")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-composite-8m.c | 54 ++++++++++++++++++++++++++++--
 drivers/clk/imx/clk.h              | 20 +++++++++--
 2 files changed, 69 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 3fa1b7cb6a..6c7f10a2c9 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -15,6 +15,7 @@
 #define PCG_PREDIV_MAX		8
 
 #define PCG_DIV_SHIFT		0
+#define PCG_CORE_DIV_WIDTH	3
 #define PCG_DIV_WIDTH		6
 #define PCG_DIV_MAX		64
 
@@ -113,6 +114,29 @@ static int imx8m_clk_composite_divider_set_rate(struct clk *clk,
 
 	return ret;
 }
+static int imx8m_clk_composite_mux_get_parent(struct clk *clk)
+{
+	return clk_mux_ops.get_parent(clk);
+}
+
+static int imx8m_clk_composite_mux_set_parent(struct clk *clk, u8 index)
+{
+	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
+	u32 val;
+
+	val = readl(m->reg);
+	val &= ~(((1 << m->width) - 1) << m->shift);
+	val |= index << m->shift;
+
+	/*
+	 * write twice to make sure non-target interface
+	 * SEL_A/B point the same clk input.
+	 */
+	writel(val, m->reg);
+	writel(val, m->reg);
+
+	return 0;
+}
 
 static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.recalc_rate = imx8m_clk_composite_divider_recalc_rate,
@@ -120,15 +144,25 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
+static const struct clk_ops imx8m_clk_composite_mux_ops = {
+	.get_parent = imx8m_clk_composite_mux_get_parent,
+	.set_parent = imx8m_clk_composite_mux_set_parent,
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+};
+
 struct clk *imx8m_clk_composite_flags(const char *name,
 					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
+					u32 composite_flags,
 					unsigned long flags)
 {
 	struct clk *comp = ERR_PTR(-ENOMEM);
 	struct clk_divider *div = NULL;
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
+	const struct clk_ops *divider_ops;
+	const struct clk_ops *mux_ops;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
@@ -144,9 +178,23 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 		goto fail;
 
 	div->reg = reg;
-	div->shift = PCG_PREDIV_SHIFT;
-	div->width = PCG_PREDIV_WIDTH;
-	div->clk.ops = &imx8m_clk_composite_divider_ops;
+	if (composite_flags & IMX_COMPOSITE_CORE) {
+		div->shift = PCG_DIV_SHIFT;
+		div->width = PCG_CORE_DIV_WIDTH;
+		divider_ops = &clk_divider_ops;
+		mux_ops = &imx8m_clk_composite_mux_ops;
+	} else if (composite_flags & IMX_COMPOSITE_BUS) {
+		div->shift = PCG_PREDIV_SHIFT;
+		div->width = PCG_PREDIV_WIDTH;
+		divider_ops = &imx8m_clk_composite_divider_ops;
+		mux_ops = &imx8m_clk_composite_mux_ops;
+	} else {
+		div->shift = PCG_PREDIV_SHIFT;
+		div->width = PCG_PREDIV_WIDTH;
+		divider_ops = &imx8m_clk_composite_divider_ops;
+		mux_ops = &clk_mux_ops;
+	}
+	div->clk.ops = divider_ops;
 
 	gate = kzalloc(sizeof(*gate), GFP_KERNEL);
 	if (!gate)
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 374829a180..32e7c5cbb7 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -259,13 +259,29 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
+#define IMX_COMPOSITE_CORE      BIT(0)
+#define IMX_COMPOSITE_BUS       BIT(1)
+
 struct clk *imx8m_clk_composite_flags(const char *name,
-		const char **parent_names, int num_parents, void __iomem *reg,
+		const char * const *parent_names, int num_parents, void __iomem *reg,
+		u32 composite_flags,
 		unsigned long flags);
 
+#define imx8m_clk_hw_composite_core(name, parent_names, reg)    \
+        imx8m_clk_hw_composite_flags(name, parent_names, \
+                        ARRAY_SIZE(parent_names), reg, \
+                        IMX_COMPOSITE_CORE, \
+                        CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
+#define imx8m_clk_hw_composite_bus(name, parent_names, reg)     \
+        imx8m_clk_hw_composite_flags(name, parent_names, \
+                        ARRAY_SIZE(parent_names), reg, \
+                        IMX_COMPOSITE_BUS, \
+                        CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
 #define __imx8m_clk_composite(name, parent_names, reg, flags) \
 		imx8m_clk_composite_flags(name, parent_names, \
-			ARRAY_SIZE(parent_names), reg, \
+			ARRAY_SIZE(parent_names), reg, 0, \
 			flags | CLK_OPS_PARENT_ENABLE)
 
 #define imx8m_clk_composite(name, parent_names, reg) \
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
