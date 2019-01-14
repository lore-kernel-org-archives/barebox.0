Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5JX-0006yp-9u
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 16:42:30 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gj5JU-0007Zj-2C
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:42:12 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 14 Jan 2019 17:42:08 +0100
Message-Id: <20190114164211.10871-5-l.stach@pengutronix.de>
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
Subject: [PATCH 5/8] clk: imx: add imx8mq composite clock
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/imx/Makefile           |   1 +
 drivers/clk/imx/clk-composite-8m.c | 171 +++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h              |  12 ++
 3 files changed, 184 insertions(+)
 create mode 100644 drivers/clk/imx/clk-composite-8m.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 8f441a97e7c8..97ae97a2a91c 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_COMMON_CLK) +=	\
+	clk-composite-8m.o	\
 	clk-pllv1.o		\
 	clk-pllv2.o		\
 	clk-pllv3.o		\
diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
new file mode 100644
index 000000000000..0cd52b5b466e
--- /dev/null
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2018 NXP
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <linux/slab.h>
+#include <linux/clk.h>
+
+#include "clk.h"
+
+#define PCG_PREDIV_SHIFT	16
+#define PCG_PREDIV_WIDTH	3
+#define PCG_PREDIV_MAX		8
+
+#define PCG_DIV_SHIFT		0
+#define PCG_DIV_WIDTH		6
+#define PCG_DIV_MAX		64
+
+#define PCG_PCS_SHIFT		24
+#define PCG_PCS_WIDTH		3
+
+#define PCG_CGC_SHIFT		28
+
+#define clk_div_mask(width)	((1 << (width)) - 1)
+
+static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk *clk,
+						unsigned long parent_rate)
+{
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	unsigned long prediv_rate;
+	unsigned int prediv_value;
+	unsigned int div_value;
+
+	prediv_value = readl(divider->reg) >> divider->shift;
+	prediv_value &= clk_div_mask(divider->width);
+
+	prediv_rate = divider_recalc_rate(clk, parent_rate, prediv_value,
+						NULL, divider->flags,
+						divider->width);
+
+	div_value = readl(divider->reg) >> PCG_DIV_SHIFT;
+	div_value &= clk_div_mask(PCG_DIV_WIDTH);
+
+	return divider_recalc_rate(clk, prediv_rate, div_value, NULL,
+				   divider->flags, PCG_DIV_WIDTH);
+}
+
+static int imx8m_clk_composite_compute_dividers(unsigned long rate,
+						unsigned long parent_rate,
+						int *prediv, int *postdiv)
+{
+	int div1, div2;
+	int error = INT_MAX;
+	int ret = -EINVAL;
+
+	*prediv = 1;
+	*postdiv = 1;
+
+	for (div1 = 1; div1 <= PCG_PREDIV_MAX; div1++) {
+		for (div2 = 1; div2 <= PCG_DIV_MAX; div2++) {
+			int new_error = ((parent_rate / div1) / div2) - rate;
+
+			if (abs(new_error) < abs(error)) {
+				*prediv = div1;
+				*postdiv = div2;
+				error = new_error;
+				ret = 0;
+			}
+		}
+	}
+	return ret;
+}
+
+static long imx8m_clk_composite_divider_round_rate(struct clk *clk,
+						unsigned long rate,
+						unsigned long *prate)
+{
+	int prediv_value;
+	int div_value;
+
+	imx8m_clk_composite_compute_dividers(rate, *prate,
+						&prediv_value, &div_value);
+	rate = DIV_ROUND_UP(*prate, prediv_value);
+
+	return DIV_ROUND_UP(rate, div_value);
+
+}
+
+static int imx8m_clk_composite_divider_set_rate(struct clk *clk,
+					unsigned long rate,
+					unsigned long parent_rate)
+{
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	int prediv_value;
+	int div_value;
+	int ret;
+	u32 val;
+
+	ret = imx8m_clk_composite_compute_dividers(rate, parent_rate,
+						&prediv_value, &div_value);
+	if (ret)
+		return -EINVAL;
+
+	val = readl(divider->reg);
+	val &= ~((clk_div_mask(divider->width) << divider->shift) |
+			(clk_div_mask(PCG_DIV_WIDTH) << PCG_DIV_SHIFT));
+
+	val |= (u32)(prediv_value  - 1) << divider->shift;
+	val |= (u32)(div_value - 1) << PCG_DIV_SHIFT;
+	writel(val, divider->reg);
+
+	return ret;
+}
+
+static const struct clk_ops imx8m_clk_composite_divider_ops = {
+	.recalc_rate = imx8m_clk_composite_divider_recalc_rate,
+	.round_rate = imx8m_clk_composite_divider_round_rate,
+	.set_rate = imx8m_clk_composite_divider_set_rate,
+};
+
+struct clk *imx8m_clk_composite_flags(const char *name,
+					const char **parent_names,
+					int num_parents, void __iomem *reg,
+					unsigned long flags)
+{
+	struct clk *comp = ERR_PTR(-ENOMEM);
+	struct clk_divider *div = NULL;
+	struct clk_gate *gate = NULL;
+	struct clk_mux *mux = NULL;
+
+	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
+	if (!mux)
+		goto fail;
+
+	mux->reg = reg;
+	mux->shift = PCG_PCS_SHIFT;
+	mux->width = PCG_PCS_WIDTH;
+	mux->clk.ops = &clk_mux_ops;
+
+	div = kzalloc(sizeof(*div), GFP_KERNEL);
+	if (!div)
+		goto fail;
+
+	div->reg = reg;
+	div->shift = PCG_PREDIV_SHIFT;
+	div->width = PCG_PREDIV_WIDTH;
+	div->clk.ops = &imx8m_clk_composite_divider_ops;
+
+	gate = kzalloc(sizeof(*gate), GFP_KERNEL);
+	if (!gate)
+		goto fail;
+
+	gate->reg = reg;
+	gate->shift = PCG_CGC_SHIFT;
+	gate->clk.ops = &clk_gate_ops;
+
+	comp = clk_register_composite(name, parent_names, num_parents,
+				      &mux->clk, &div->clk, &gate->clk, flags);
+	if (IS_ERR(comp))
+		goto fail;
+
+	return comp;
+
+fail:
+	kfree(gate);
+	kfree(div);
+	kfree(mux);
+	return ERR_CAST(comp);
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index c6ec0fc403f0..c5d5ae327a40 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -194,4 +194,16 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
+struct clk *imx8m_clk_composite_flags(const char *name,
+		const char **parent_names, int num_parents, void __iomem *reg,
+		unsigned long flags);
+
+#define __imx8m_clk_composite(name, parent_names, reg, flags) \
+		imx8m_clk_composite_flags(name, parent_names, \
+			ARRAY_SIZE(parent_names), reg, \
+			flags | CLK_OPS_PARENT_ENABLE)
+
+#define imx8m_clk_composite(name, parent_names, reg) \
+	__imx8m_clk_composite(name, parent_names, reg, 0)
+
 #endif /* __IMX_CLK_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
