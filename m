Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWq-0006tO-B2
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:06 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:53 +0100
Message-Id: <20190312102055.12386-5-m.tretter@pengutronix.de>
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 4/6] clk: add ZynqMP clock driver
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The ZynqMP has a platform management unit (PMU) that is responsible for
managing the clocks. Therefore, the clock driver uses the firmware
driver to control the clocks.

The Barebox driver is based on the Linux driver, but contains deviations
to make the driver more readable and more consistent.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/Makefile                    |   1 +
 drivers/clk/zynqmp/Makefile             |   5 +
 drivers/clk/zynqmp/clk-divider-zynqmp.c | 111 +++++
 drivers/clk/zynqmp/clk-gate-zynqmp.c    |  93 ++++
 drivers/clk/zynqmp/clk-mux-zynqmp.c     | 102 +++++
 drivers/clk/zynqmp/clk-pll-zynqmp.c     | 213 +++++++++
 drivers/clk/zynqmp/clk-zynqmp.h         |  55 +++
 drivers/clk/zynqmp/clkc.c               | 582 ++++++++++++++++++++++++
 8 files changed, 1162 insertions(+)
 create mode 100644 drivers/clk/zynqmp/Makefile
 create mode 100644 drivers/clk/zynqmp/clk-divider-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-gate-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-mux-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-pll-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-zynqmp.h
 create mode 100644 drivers/clk/zynqmp/clkc.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 5bf76a4535..4ef41d6fbd 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
+obj-$(CONFIG_ARCH_ZYNQMP)	+= zynqmp/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga/
 obj-$(CONFIG_SOC_QCA_AR9331)	+= clk-ar933x.o
 obj-$(CONFIG_SOC_QCA_AR9344)	+= clk-ar9344.o
diff --git a/drivers/clk/zynqmp/Makefile b/drivers/clk/zynqmp/Makefile
new file mode 100644
index 0000000000..9432cd3980
--- /dev/null
+++ b/drivers/clk/zynqmp/Makefile
@@ -0,0 +1,5 @@
+obj-y += clkc.o
+obj-y += clk-pll-zynqmp.o
+obj-y += clk-gate-zynqmp.o
+obj-y += clk-divider-zynqmp.o
+obj-y += clk-mux-zynqmp.o
diff --git a/drivers/clk/zynqmp/clk-divider-zynqmp.c b/drivers/clk/zynqmp/clk-divider-zynqmp.c
new file mode 100644
index 0000000000..2fe65b566a
--- /dev/null
+++ b/drivers/clk/zynqmp/clk-divider-zynqmp.c
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Zynq UltraScale+ MPSoC Clock Divider
+ *
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ *
+ * Based on the Linux driver in drivers/clk/zynqmp/
+ *
+ * Copyright (C) 2016-2018 Xilinx
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <mach/firmware-zynqmp.h>
+
+#include "clk-zynqmp.h"
+
+struct zynqmp_clk_divider {
+	struct clk clk;
+	unsigned int clk_id;
+	enum topology_type type;
+	const char *parent;
+	const struct zynqmp_eemi_ops *ops;
+};
+#define to_zynqmp_clk_divider(clk) \
+	container_of(clk, struct zynqmp_clk_divider, clk)
+
+static int zynqmp_clk_divider_bestdiv(unsigned long rate,
+				      unsigned long *best_parent_rate)
+{
+	return DIV_ROUND_CLOSEST(*best_parent_rate, rate);
+}
+
+static unsigned long zynqmp_clk_divider_recalc_rate(struct clk *clk,
+						    unsigned long parent_rate)
+{
+	struct zynqmp_clk_divider *div = to_zynqmp_clk_divider(clk);
+	u32 value;
+
+	div->ops->clock_getdivider(div->clk_id, &value);
+	if (div->type == TYPE_DIV1)
+		value = value & 0xFFFF;
+	else
+		value = value >> 16;
+
+	return DIV_ROUND_UP(parent_rate, value);
+}
+
+static long zynqmp_clk_divider_round_rate(struct clk *clk, unsigned long rate,
+					  unsigned long *parent_rate)
+{
+	int bestdiv;
+
+	bestdiv = zynqmp_clk_divider_bestdiv(rate, parent_rate);
+
+	return *parent_rate / bestdiv;
+}
+
+static int zynqmp_clk_divider_set_rate(struct clk *clk, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	struct zynqmp_clk_divider *div = to_zynqmp_clk_divider(clk);
+	u32 bestdiv;
+
+	bestdiv = zynqmp_clk_divider_bestdiv(rate, &parent_rate);
+	if (div->type == TYPE_DIV1)
+		bestdiv = (0xffff << 16) | (bestdiv & 0xffff);
+	else
+		bestdiv = (bestdiv << 16) | 0xffff;
+
+	return div->ops->clock_setdivider(div->clk_id, bestdiv);
+}
+
+static const struct clk_ops zynqmp_clk_divider_ops = {
+	.recalc_rate = zynqmp_clk_divider_recalc_rate,
+	.round_rate = zynqmp_clk_divider_round_rate,
+	.set_rate = zynqmp_clk_divider_set_rate,
+};
+
+struct clk *zynqmp_clk_register_divider(const char *name,
+					unsigned int clk_id,
+					const char **parents,
+					unsigned int num_parents,
+					const struct clock_topology *nodes)
+{
+	struct zynqmp_clk_divider *div;
+	int ret;
+
+	div = kzalloc(sizeof(*div), GFP_KERNEL);
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	div->clk_id = clk_id;
+	div->type = nodes->type;
+	div->ops = zynqmp_pm_get_eemi_ops();
+	div->parent = strdup(parents[0]);
+
+	div->clk.name = strdup(name);
+	div->clk.ops = &zynqmp_clk_divider_ops;
+	div->clk.flags = nodes->flag;
+	div->clk.parent_names = &div->parent;
+	div->clk.num_parents = 1;
+
+	ret = clk_register(&div->clk);
+	if (ret) {
+		kfree(div);
+		return ERR_PTR(ret);
+	}
+
+	return &div->clk;
+}
diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
new file mode 100644
index 0000000000..6f03357768
--- /dev/null
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Zynq UltraScale+ MPSoC Clock Gate
+ *
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ *
+ * Based on the Linux driver in drivers/clk/zynqmp/
+ *
+ * Copyright (C) 2016-2018 Xilinx
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <mach/firmware-zynqmp.h>
+
+#include "clk-zynqmp.h"
+
+struct zynqmp_clk_gate {
+	struct clk clk;
+	unsigned int clk_id;
+	const char *parent;
+	const struct zynqmp_eemi_ops *ops;
+};
+
+#define to_zynqmp_clk_gate(_hw) container_of(_hw, struct zynqmp_clk_gate, clk)
+
+static int zynqmp_clk_gate_enable(struct clk *clk)
+{
+	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(clk);
+
+	return gate->ops->clock_enable(gate->clk_id);
+}
+
+static void zynqmp_clk_gate_disable(struct clk *clk)
+{
+	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(clk);
+
+	gate->ops->clock_disable(gate->clk_id);
+}
+
+static int zynqmp_clk_gate_is_enabled(struct clk *clk)
+{
+	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(clk);
+	u32 state;
+	int ret;
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
+
+	ret = eemi_ops->clock_getstate(gate->clk_id, &state);
+	if (ret)
+		return -EIO;
+
+	return !!state;
+}
+
+static const struct clk_ops zynqmp_clk_gate_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.enable = zynqmp_clk_gate_enable,
+	.disable = zynqmp_clk_gate_disable,
+	.is_enabled = zynqmp_clk_gate_is_enabled,
+};
+
+struct clk *zynqmp_clk_register_gate(const char *name,
+				     unsigned int clk_id,
+				     const char **parents,
+				     unsigned int num_parents,
+				     const struct clock_topology *nodes)
+{
+	struct zynqmp_clk_gate *gate;
+	int ret;
+
+	gate = kzalloc(sizeof(*gate), GFP_KERNEL);
+	if (!gate)
+		return ERR_PTR(-ENOMEM);
+
+	gate->clk_id = clk_id;
+	gate->ops = zynqmp_pm_get_eemi_ops();
+	gate->parent = strdup(parents[0]);
+
+	gate->clk.name = strdup(name);
+	gate->clk.ops = &zynqmp_clk_gate_ops;
+	gate->clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
+	gate->clk.parent_names = &gate->parent;
+	gate->clk.num_parents = 1;
+
+	ret = clk_register(&gate->clk);
+	if (ret) {
+		kfree(gate);
+		return ERR_PTR(ret);
+	}
+
+	return &gate->clk;
+}
diff --git a/drivers/clk/zynqmp/clk-mux-zynqmp.c b/drivers/clk/zynqmp/clk-mux-zynqmp.c
new file mode 100644
index 0000000000..4003267bd1
--- /dev/null
+++ b/drivers/clk/zynqmp/clk-mux-zynqmp.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Zynq UltraScale+ MPSoC Clock Multiplexer
+ *
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ *
+ * Based on the Linux driver in drivers/clk/zynqmp/
+ *
+ * Copyright (C) 2016-2018 Xilinx
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <mach/firmware-zynqmp.h>
+
+#include "clk-zynqmp.h"
+
+#define CLK_MUX_READ_ONLY		BIT(3)
+
+struct zynqmp_clk_mux {
+	struct clk clk;
+	u32 clk_id;
+	const struct zynqmp_eemi_ops *ops;
+};
+
+#define to_zynqmp_clk_mux(clk) \
+	container_of(clk, struct zynqmp_clk_mux, clk)
+
+static int zynqmp_clk_mux_get_parent(struct clk *clk)
+{
+	struct zynqmp_clk_mux *mux = to_zynqmp_clk_mux(clk);
+	u32 value;
+
+	mux->ops->clock_getparent(mux->clk_id, &value);
+
+	return value;
+}
+
+static int zynqmp_clk_mux_set_parent(struct clk *clk, u8 index)
+{
+	struct zynqmp_clk_mux *mux = to_zynqmp_clk_mux(clk);
+
+	return mux->ops->clock_setparent(mux->clk_id, index);
+}
+
+static const struct clk_ops zynqmp_clk_mux_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.get_parent = zynqmp_clk_mux_get_parent,
+	.set_parent = zynqmp_clk_mux_set_parent,
+};
+
+static const struct clk_ops zynqmp_clk_mux_ro_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.get_parent = zynqmp_clk_mux_get_parent,
+};
+
+struct clk *zynqmp_clk_register_mux(const char *name,
+				    unsigned int clk_id,
+				    const char **parents,
+				    unsigned int num_parents,
+				    const struct clock_topology *nodes)
+{
+	struct zynqmp_clk_mux *mux;
+	int ret;
+	int i;
+	const char **parent_names;
+
+	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
+	if (!mux)
+		return ERR_PTR(-ENOMEM);
+
+	parent_names = kcalloc(num_parents, sizeof(*parent_names), GFP_KERNEL);
+	if (!parent_names) {
+		kfree(mux);
+		return ERR_PTR(-ENOMEM);
+	}
+	for (i = 0; i < num_parents; i++)
+		parent_names[i] = strdup(parents[i]);
+
+	mux->clk_id = clk_id;
+	mux->ops = zynqmp_pm_get_eemi_ops();
+
+	mux->clk.name = strdup(name);
+	if (nodes->type_flag & CLK_MUX_READ_ONLY)
+		mux->clk.ops = &zynqmp_clk_mux_ro_ops;
+	else
+		mux->clk.ops = &zynqmp_clk_mux_ops;
+	mux->clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
+	mux->clk.parent_names = parent_names;
+	mux->clk.num_parents = num_parents;
+
+	ret = clk_register(&mux->clk);
+	if (ret) {
+		kfree(parent_names);
+		kfree(mux);
+		return ERR_PTR(ret);
+	}
+
+	return &mux->clk;
+}
diff --git a/drivers/clk/zynqmp/clk-pll-zynqmp.c b/drivers/clk/zynqmp/clk-pll-zynqmp.c
new file mode 100644
index 0000000000..e4b759b73c
--- /dev/null
+++ b/drivers/clk/zynqmp/clk-pll-zynqmp.c
@@ -0,0 +1,213 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Zynq UltraScale+ MPSoC PLL Clock
+ *
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ *
+ * Based on the Linux driver in drivers/clk/zynqmp/
+ *
+ * Copyright (C) 2016-2018 Xilinx
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <mach/firmware-zynqmp.h>
+
+#include "clk-zynqmp.h"
+
+struct zynqmp_pll {
+	struct clk clk;
+	unsigned int clk_id;
+	const char *parent;
+	const struct zynqmp_eemi_ops *ops;
+};
+
+#define to_zynqmp_pll(clk) \
+	container_of(clk, struct zynqmp_pll, clk)
+
+#define PLL_FBDIV_MIN		25
+#define PLL_FBDIV_MAX		125
+
+#define PS_PLL_VCO_MIN		1500000000
+#define PS_PLL_VCO_MAX		3000000000UL
+
+enum pll_mode {
+	PLL_MODE_INT,
+	PLL_MODE_FRAC,
+};
+
+#define FRAC_DIV 		(1 << 16)
+
+static inline enum pll_mode zynqmp_pll_get_mode(struct zynqmp_pll *pll)
+{
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	pll->ops->ioctl(0, IOCTL_GET_PLL_FRAC_MODE, pll->clk_id, 0,
+			      ret_payload);
+
+	return ret_payload[1];
+}
+
+static inline void zynqmp_pll_set_mode(struct zynqmp_pll *pll, enum pll_mode mode)
+{
+	pll->ops->ioctl(0, IOCTL_SET_PLL_FRAC_MODE, pll->clk_id, mode, NULL);
+}
+
+static long zynqmp_pll_round_rate(struct clk *clk, unsigned long rate,
+				  unsigned long *prate)
+{
+	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	u32 fbdiv;
+	long rate_div;
+
+	rate_div = (rate * FRAC_DIV) / *prate;
+	if (rate_div % FRAC_DIV)
+		zynqmp_pll_set_mode(pll, PLL_MODE_FRAC);
+	else
+		zynqmp_pll_set_mode(pll, PLL_MODE_INT);
+
+	if (zynqmp_pll_get_mode(pll) == PLL_MODE_FRAC) {
+		if (rate > PS_PLL_VCO_MAX) {
+			fbdiv = rate / PS_PLL_VCO_MAX;
+			rate = rate / (fbdiv + 1);
+		}
+		if (rate < PS_PLL_VCO_MIN) {
+			fbdiv = DIV_ROUND_UP(PS_PLL_VCO_MIN, rate);
+			rate = rate * fbdiv;
+		}
+	} else {
+		fbdiv = DIV_ROUND_CLOSEST(rate, *prate);
+		fbdiv = clamp_t(u32, fbdiv, PLL_FBDIV_MIN, PLL_FBDIV_MAX);
+		rate = *prate * fbdiv;
+	}
+
+	return rate;
+}
+
+static unsigned long zynqmp_pll_recalc_rate(struct clk *clk,
+					    unsigned long parent_rate)
+{
+	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	u32 clk_id = pll->clk_id;
+	u32 fbdiv, data;
+	unsigned long rate, frac;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	ret = pll->ops->clock_getdivider(clk_id, &fbdiv);
+
+	rate = parent_rate * fbdiv;
+
+	if (zynqmp_pll_get_mode(pll) == PLL_MODE_FRAC) {
+		pll->ops->ioctl(0, IOCTL_GET_PLL_FRAC_DATA, clk_id, 0,
+				ret_payload);
+		data = ret_payload[1];
+		frac = (parent_rate * data) / FRAC_DIV;
+		rate = rate + frac;
+	}
+
+	return rate;
+}
+
+static int zynqmp_pll_set_rate(struct clk *clk, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	u32 clk_id = pll->clk_id;
+	u32 fbdiv;
+	long rate_div, frac, m, f;
+
+	if (zynqmp_pll_get_mode(pll) == PLL_MODE_FRAC) {
+		rate_div = (rate * FRAC_DIV) / parent_rate;
+		m = rate_div / FRAC_DIV;
+		f = rate_div % FRAC_DIV;
+		m = clamp_t(u32, m, (PLL_FBDIV_MIN), (PLL_FBDIV_MAX));
+		rate = parent_rate * m;
+		frac = (parent_rate * f) / FRAC_DIV;
+
+		pll->ops->clock_setdivider(clk_id, m);
+		pll->ops->ioctl(0, IOCTL_SET_PLL_FRAC_DATA, clk_id, f, NULL);
+
+		return rate + frac;
+	} else {
+		fbdiv = DIV_ROUND_CLOSEST(rate, parent_rate);
+		fbdiv = clamp_t(u32, fbdiv, PLL_FBDIV_MIN, PLL_FBDIV_MAX);
+		pll->ops->clock_setdivider(clk_id, fbdiv);
+
+		return parent_rate * fbdiv;
+	}
+}
+
+static int zynqmp_pll_is_enabled(struct clk *clk)
+{
+	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	u32 is_enabled;
+	int ret;
+
+	ret = pll->ops->clock_getstate(pll->clk_id, &is_enabled);
+	if (ret)
+		return -EIO;
+
+	return !!(is_enabled);
+}
+
+static int zynqmp_pll_enable(struct clk *clk)
+{
+	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+
+	if (zynqmp_pll_is_enabled(clk))
+		return 0;
+
+	return pll->ops->clock_enable(pll->clk_id);
+}
+
+static void zynqmp_pll_disable(struct clk *clk)
+{
+	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+
+	if (!zynqmp_pll_is_enabled(clk))
+		return;
+
+	pll->ops->clock_disable(pll->clk_id);
+}
+
+static const struct clk_ops zynqmp_pll_ops = {
+	.enable = zynqmp_pll_enable,
+	.disable = zynqmp_pll_disable,
+	.is_enabled = zynqmp_pll_is_enabled,
+	.round_rate = zynqmp_pll_round_rate,
+	.recalc_rate = zynqmp_pll_recalc_rate,
+	.set_rate = zynqmp_pll_set_rate,
+};
+
+struct clk *zynqmp_clk_register_pll(const char *name,
+				    unsigned int clk_id,
+				    const char **parents,
+				    unsigned int num_parents,
+				    const struct clock_topology *nodes)
+{
+	struct zynqmp_pll *pll;
+	int ret;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	pll->clk_id = clk_id;
+	pll->ops = zynqmp_pm_get_eemi_ops();
+	pll->parent = strdup(parents[0]);
+
+	pll->clk.name = strdup(name);
+	pll->clk.ops = &zynqmp_pll_ops;
+	pll->clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
+	pll->clk.parent_names = &pll->parent;
+	pll->clk.num_parents = 1;
+
+	ret = clk_register(&pll->clk);
+	if (ret) {
+		kfree(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->clk;
+}
diff --git a/drivers/clk/zynqmp/clk-zynqmp.h b/drivers/clk/zynqmp/clk-zynqmp.h
new file mode 100644
index 0000000000..eeee9d2b5a
--- /dev/null
+++ b/drivers/clk/zynqmp/clk-zynqmp.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2016-2018 Xilinx
+ */
+
+#ifndef __LINUX_CLK_ZYNQMP_H_
+#define __LINUX_CLK_ZYNQMP_H_
+
+enum topology_type {
+	TYPE_INVALID,
+	TYPE_MUX,
+	TYPE_PLL,
+	TYPE_FIXEDFACTOR,
+	TYPE_DIV1,
+	TYPE_DIV2,
+	TYPE_GATE,
+};
+
+struct clock_topology {
+	enum topology_type type;
+	u32 flag;
+	u32 type_flag;
+};
+
+struct clk *zynqmp_clk_register_pll(const char *name,
+				    unsigned int clk_id,
+				    const char **parents,
+				    unsigned int num_parents,
+				    const struct clock_topology *node);
+
+struct clk *zynqmp_clk_register_gate(const char *name,
+				     unsigned int clk_id,
+				     const char **parents,
+				     unsigned int num_parents,
+				     const struct clock_topology *node);
+
+struct clk *zynqmp_clk_register_divider(const char *name,
+					unsigned int clk_id,
+					const char **parents,
+					unsigned int num_parents,
+					const struct clock_topology *node);
+
+struct clk *zynqmp_clk_register_mux(const char *name,
+				    unsigned int clk_id,
+				    const char **parents,
+				    unsigned int num_parents,
+				    const struct clock_topology *node);
+
+struct clk *zynqmp_clk_register_fixed_factor(const char *name,
+					     unsigned int clk_id,
+					     const char **parents,
+					     unsigned int num_parents,
+					     const struct clock_topology *node);
+
+#endif
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
new file mode 100644
index 0000000000..366a12e70a
--- /dev/null
+++ b/drivers/clk/zynqmp/clkc.c
@@ -0,0 +1,582 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Zynq UltraScale+ MPSoC Clock Controller
+ *
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ *
+ * Based on the Linux driver in drivers/clk/zynqmp/
+ *
+ * Copyright (C) 2016-2018 Xilinx
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <mach/firmware-zynqmp.h>
+
+#include "clk-zynqmp.h"
+
+#define MAX_PARENT			100
+#define MAX_NODES			6
+#define MAX_NAME_LEN			50
+
+#define CLK_TYPE_FIELD_MASK		GENMASK(3, 0)
+#define CLK_FLAG_FIELD_MASK		GENMASK(21, 8)
+#define CLK_TYPE_FLAG_FIELD_MASK	GENMASK(31, 24)
+
+#define CLK_PARENTS_ID_MASK		GENMASK(15, 0)
+#define CLK_PARENTS_TYPE_MASK		GENMASK(31, 16)
+
+#define CLK_GET_ATTR_VALID		BIT(0)
+#define CLK_GET_ATTR_TYPE		BIT(2)
+
+#define CLK_NAME_RESERVED		""
+#define CLK_NAME_DUMMY			"dummy_name"
+
+#define CLK_GET_NAME_RESP_LEN		16
+#define CLK_GET_TOPOLOGY_RESP_WORDS	3
+#define CLK_GET_PARENTS_RESP_WORDS	3
+
+#define CLK_GET_PARENTS_NONE		(-1)
+#define CLK_GET_PARENTS_DUMMY		(-2)
+
+enum clk_type {
+	CLK_TYPE_INVALID,
+	CLK_TYPE_OUTPUT,
+	CLK_TYPE_EXTERNAL,
+};
+
+enum parent_type {
+	PARENT_CLK_SELF,
+	PARENT_CLK_NODE1,
+	PARENT_CLK_NODE2,
+	PARENT_CLK_NODE3,
+	PARENT_CLK_NODE4,
+	PARENT_CLK_EXTERNAL,
+};
+
+struct clock_parent {
+	char name[MAX_NAME_LEN];
+	enum parent_type type;
+};
+
+struct zynqmp_clock_info {
+	char clk_name[MAX_NAME_LEN];
+	bool valid;
+	enum clk_type type;
+	struct clock_topology node[MAX_NODES];
+	unsigned int num_nodes;
+	struct clock_parent parent[MAX_PARENT];
+	unsigned int num_parents;
+};
+
+static const char clk_type_postfix[][10] = {
+	[TYPE_INVALID] = "",
+	[TYPE_MUX] = "_mux",
+	[TYPE_GATE] = "",
+	[TYPE_DIV1] = "_div1",
+	[TYPE_DIV2] = "_div2",
+	[TYPE_FIXEDFACTOR] = "_ff",
+	[TYPE_PLL] = ""
+};
+
+static struct clk *(*const clk_topology[]) (const char *name,
+				            unsigned int clk_id,
+					    const char **parents,
+					    unsigned int num_parents,
+					    const struct clock_topology *nodes)
+					= {
+	[TYPE_INVALID] = NULL,
+	[TYPE_MUX] = zynqmp_clk_register_mux,
+	[TYPE_PLL] = zynqmp_clk_register_pll,
+	[TYPE_FIXEDFACTOR] = zynqmp_clk_register_fixed_factor,
+	[TYPE_DIV1] = zynqmp_clk_register_divider,
+	[TYPE_DIV2] = zynqmp_clk_register_divider,
+	[TYPE_GATE] = zynqmp_clk_register_gate
+};
+
+static struct zynqmp_clock_info *clock_info;
+static const struct zynqmp_eemi_ops *eemi_ops;
+
+static inline bool zynqmp_is_valid_clock(unsigned int id)
+{
+	return clock_info[id].valid;
+}
+
+static char *zynqmp_get_clock_name(unsigned int id)
+{
+	if (!zynqmp_is_valid_clock(id))
+		return ERR_PTR(-EINVAL);
+
+	return clock_info[id].clk_name;
+}
+
+static enum clk_type zynqmp_get_clock_type(unsigned int id)
+{
+	if (!zynqmp_is_valid_clock(id))
+		return CLK_TYPE_INVALID;
+
+	return clock_info[id].type;
+}
+
+static int zynqmp_get_parent_names(struct device_node *np,
+				   unsigned int clk_id,
+				   const char **parent_names)
+{
+	int i;
+	struct clock_topology *clk_nodes;
+	struct clock_parent *parents;
+	int ret;
+
+	clk_nodes = clock_info[clk_id].node;
+	parents = clock_info[clk_id].parent;
+
+	for (i = 0; i < clock_info[clk_id].num_parents; i++) {
+		switch (parents[i].type) {
+		case PARENT_CLK_SELF:
+			break;
+		case PARENT_CLK_EXTERNAL:
+			ret = of_property_match_string(np, "clock-names",
+						       parents[i].name);
+			if (ret < 0)
+				strcpy(parents[i].name, CLK_NAME_DUMMY);
+			break;
+		default:
+			strcat(parents[i].name,
+			       clk_type_postfix[clk_nodes[parents[i].type - 1].type]);
+			break;
+		}
+		parent_names[i] = parents[i].name;
+	}
+
+	return clock_info[clk_id].num_parents;
+}
+
+static int zynqmp_pm_clock_query_num_clocks(void)
+{
+	struct zynqmp_pm_query_data qdata = {0};
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	qdata.qid = PM_QID_CLOCK_GET_NUM_CLOCKS;
+
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		return ret;
+
+	return ret_payload[1];
+}
+
+static int zynqmp_pm_clock_query_name(unsigned int id, char *response)
+{
+	struct zynqmp_pm_query_data qdata = {0};
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	qdata.qid = PM_QID_CLOCK_GET_NAME;
+	qdata.arg1 = id;
+
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		return ret;
+
+	memcpy(response, ret_payload, CLK_GET_NAME_RESP_LEN);
+
+	return 0;
+}
+
+struct zynqmp_pm_query_fixed_factor {
+	unsigned int mul;
+	unsigned int div;
+};
+
+static int zynqmp_pm_clock_query_fixed_factor(unsigned int id,
+		struct zynqmp_pm_query_fixed_factor *response)
+{
+	struct zynqmp_pm_query_data qdata = {0};
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	qdata.qid = PM_QID_CLOCK_GET_FIXEDFACTOR_PARAMS;
+	qdata.arg1 = id;
+
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		return ret;
+
+	response->mul = ret_payload[1];
+	response->div = ret_payload[2];
+
+	return 0;
+}
+
+struct zynqmp_pm_query_topology {
+	unsigned int node[CLK_GET_TOPOLOGY_RESP_WORDS];
+};
+
+static int zynqmp_pm_clock_query_topology(unsigned int id, unsigned int index,
+		struct zynqmp_pm_query_topology *response)
+{
+	struct zynqmp_pm_query_data qdata;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	memset(&qdata, 0, sizeof(qdata));
+	qdata.qid = PM_QID_CLOCK_GET_TOPOLOGY;
+	qdata.arg1 = id;
+	qdata.arg2 = index;
+
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		return ret;
+
+	memcpy(response, &ret_payload[1], sizeof(*response));
+
+	return 0;
+}
+
+struct zynqmp_pm_query_parents {
+	unsigned int parent[CLK_GET_PARENTS_RESP_WORDS];
+};
+
+static int zynqmp_pm_clock_query_parents(unsigned int id, unsigned int index,
+		struct zynqmp_pm_query_parents *response)
+{
+	struct zynqmp_pm_query_data qdata;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	memset(&qdata, 0, sizeof(qdata));
+	qdata.qid = PM_QID_CLOCK_GET_PARENTS;
+	qdata.arg1 = id;
+	qdata.arg2 = index;
+
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		return ret;
+
+	memcpy(response, &ret_payload[1], sizeof(*response));
+
+	return 0;
+}
+
+static int zynqmp_pm_clock_query_attributes(unsigned int id, unsigned int *attr)
+{
+	struct zynqmp_pm_query_data qdata;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	memset(&qdata, 0, sizeof(qdata));
+	qdata.qid = PM_QID_CLOCK_GET_ATTRIBUTES;
+	qdata.arg1 = id;
+
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		return ret;
+
+	*attr = ret_payload[1];
+
+	return 0;
+}
+
+static int zynqmp_clock_parse_topology(struct clock_topology *topology,
+				       struct zynqmp_pm_query_topology *response,
+				       size_t max_nodes)
+{
+	int i;
+	enum topology_type type;
+
+	for (i = 0; i < max_nodes && i < ARRAY_SIZE(response->node); i++) {
+		type = FIELD_GET(CLK_TYPE_FIELD_MASK, response->node[i]);
+		if (type == TYPE_INVALID)
+			break;
+
+		topology[i].type = type;
+		topology[i].flag =
+			FIELD_GET(CLK_FLAG_FIELD_MASK, response->node[i]);
+		topology[i].type_flag =
+			FIELD_GET(CLK_TYPE_FLAG_FIELD_MASK, response->node[i]);
+	}
+
+	return i;
+}
+
+static int zynqmp_clock_parse_parents(struct clock_parent *parents,
+				      struct zynqmp_pm_query_parents *response,
+				      size_t max_parents)
+{
+	int i;
+	struct clock_parent *parent;
+	char *parent_name;
+	int parent_id;
+
+	for (i = 0; i < max_parents && i < ARRAY_SIZE(response->parent); i++) {
+		if (response->parent[i] == CLK_GET_PARENTS_NONE)
+			break;
+
+		parent = &parents[i];
+		if (response->parent[i] == CLK_GET_PARENTS_DUMMY) {
+			parent->type = PARENT_CLK_SELF;
+			strncpy(parent->name, CLK_NAME_DUMMY, MAX_NAME_LEN);
+			continue;
+		}
+
+		parent_id = FIELD_GET(CLK_PARENTS_ID_MASK, response->parent[i]);
+		parent_name = zynqmp_get_clock_name(parent_id);
+		if (IS_ERR(parent_name))
+			continue;
+
+		strncpy(parent->name, parent_name, MAX_NAME_LEN);
+		parent->type = FIELD_GET(CLK_PARENTS_TYPE_MASK, response->parent[i]);
+	}
+
+	return i;
+}
+
+static int zynqmp_clock_get_topology(unsigned int id,
+				     struct clock_topology *topology,
+				     size_t max_nodes)
+{
+	int ret;
+	int i;
+	struct zynqmp_pm_query_topology response;
+
+	for (i = 0; i < max_nodes; i += ret) {
+		ret = zynqmp_pm_clock_query_topology(id, i, &response);
+		if (ret)
+			return ret;
+
+		ret = zynqmp_clock_parse_topology(&topology[i], &response,
+						  max_nodes - i);
+		if (ret == 0)
+			break;
+	}
+
+	return i;
+}
+
+static int zynqmp_clock_get_parents(unsigned int clk_id,
+				    struct clock_parent *parents,
+				    size_t max_parents)
+{
+	int ret;
+	int i;
+	struct zynqmp_pm_query_parents response;
+
+	for (i = 0; i < max_parents; i += ret) {
+		ret = zynqmp_pm_clock_query_parents(clk_id, i, &response);
+		if (ret)
+			return ret;
+
+		ret = zynqmp_clock_parse_parents(&parents[i], &response,
+						 max_parents - i);
+		if (ret == 0)
+			break;
+	}
+
+	return i;
+}
+
+struct clk *zynqmp_clk_register_fixed_factor(const char *name,
+					     unsigned int clk_id,
+					     const char **parents,
+					     unsigned int num_parents,
+					     const struct clock_topology *topology)
+{
+	unsigned int err;
+	struct zynqmp_pm_query_fixed_factor response = {0};
+	unsigned flags;
+
+	err = zynqmp_pm_clock_query_fixed_factor(clk_id, &response);
+	if (err)
+		return ERR_PTR(err);
+
+	flags = topology->flag;
+
+	return clk_fixed_factor(strdup(name), strdup(parents[0]),
+			        response.mul, response.div, flags);
+}
+
+static struct clk *zynqmp_register_clk_topology(char *clk_name,
+					        int clk_id,
+						int num_parents,
+						const char **parent_names)
+{
+	int i;
+	unsigned int num_nodes;
+	char tmp_name[MAX_NAME_LEN];
+	char parent_name[MAX_NAME_LEN];
+	struct clock_topology *nodes;
+	struct clk *clk = NULL;
+
+	nodes = clock_info[clk_id].node;
+	num_nodes = clock_info[clk_id].num_nodes;
+
+	for (i = 0; i < num_nodes; i++) {
+		if (!clk_topology[nodes[i].type])
+			continue;
+
+		/*
+		 * Register only the last sub-node in the chain with the name of the
+		 * original clock, but postfix other sub-node inside the chain with
+		 * their type.
+		 */
+		snprintf(tmp_name, MAX_NAME_LEN, "%s%s", clk_name,
+			(i == num_nodes - 1) ? "" : clk_type_postfix[nodes[i].type]);
+
+		clk = (*clk_topology[nodes[i].type])(tmp_name, clk_id,
+						     parent_names,
+						     num_parents,
+						     &nodes[i]);
+		if (IS_ERR(clk))
+			pr_warn("failed to register node %s of clock %s\n",
+				tmp_name, clk_name);
+
+		/*
+		 * Only link the first sub-node to the original (first)
+		 * parent, but link every other sub-node with their preceeding
+		 * sub-clock via the first parent.
+		 */
+		parent_names[0] = parent_name;
+		strncpy(parent_name, tmp_name, MAX_NAME_LEN);
+	}
+
+	return clk;
+}
+
+static int zynqmp_register_clocks(struct device_d *dev,
+				  struct clk **clks, size_t num_clocks)
+{
+	unsigned int i;
+	const char *parent_names[MAX_PARENT];
+	char *name;
+	struct device_node *node = dev->device_node;
+	unsigned int num_parents;
+
+	for (i = 0; i < num_clocks; i++) {
+		if (zynqmp_get_clock_type(i) != CLK_TYPE_OUTPUT)
+			continue;
+		name = zynqmp_get_clock_name(i);
+		if (IS_ERR(name))
+			continue;
+
+		num_parents = zynqmp_get_parent_names(node, i, parent_names);
+		if (num_parents < 0) {
+			dev_warn(dev, "failed to find parents for %s\n", name);
+			continue;
+		}
+
+		clks[i] = zynqmp_register_clk_topology(name, i, num_parents,
+						       parent_names);
+		if (IS_ERR_OR_NULL(clks[i]))
+			dev_warn(dev, "failed to register clock %s: %ld\n",
+				 name, PTR_ERR(clks[i]));
+	}
+
+	return 0;
+}
+
+static void zynqmp_fill_clock_info(struct zynqmp_clock_info *clock_info,
+				   size_t num_clocks)
+{
+	int i;
+	int ret;
+	unsigned int attr;
+
+	for (i = 0; i < num_clocks; i++) {
+		zynqmp_pm_clock_query_name(i, clock_info[i].clk_name);
+		if (!strcmp(clock_info[i].clk_name, CLK_NAME_RESERVED))
+			continue;
+
+		ret = zynqmp_pm_clock_query_attributes(i, &attr);
+		if (ret)
+			continue;
+
+		clock_info[i].valid = attr & CLK_GET_ATTR_VALID;
+		clock_info[i].type = attr & CLK_GET_ATTR_TYPE ?
+			CLK_TYPE_EXTERNAL : CLK_TYPE_OUTPUT;
+	}
+
+	for (i = 0; i < num_clocks; i++) {
+		if (zynqmp_get_clock_type(i) != CLK_TYPE_OUTPUT)
+			continue;
+		clock_info[i].num_nodes =
+			zynqmp_clock_get_topology(i, clock_info[i].node,
+						  ARRAY_SIZE(clock_info[i].node));
+	}
+
+	for (i = 0; i < num_clocks; i++) {
+		if (zynqmp_get_clock_type(i) != CLK_TYPE_OUTPUT)
+			continue;
+		ret = zynqmp_clock_get_parents(i, clock_info[i].parent,
+					       ARRAY_SIZE(clock_info[i].parent));
+		if (ret < 0)
+			continue;
+		clock_info[i].num_parents = ret;
+	}
+}
+
+static int zynqmp_clock_probe(struct device_d *dev)
+{
+	int err;
+	u32 api_version;
+	int num_clocks;
+	struct clk_onecell_data *clk_data;
+
+	eemi_ops = zynqmp_pm_get_eemi_ops();
+	if (!eemi_ops)
+		return -ENODEV;
+
+	/* Check version to make sure firmware is available */
+	err = eemi_ops->get_api_version(&api_version);
+	if (err) {
+		dev_err(dev, "Firmware not available\n");
+		return err;
+	}
+
+	num_clocks = zynqmp_pm_clock_query_num_clocks();
+	if (num_clocks < 1)
+		return num_clocks;
+
+	clock_info = kcalloc(num_clocks, sizeof(*clock_info), GFP_KERNEL);
+	if (!clock_info)
+		return -ENOMEM;
+
+	zynqmp_fill_clock_info(clock_info, num_clocks);
+
+	clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->clks = kcalloc(num_clocks, sizeof(*clk_data->clks), GFP_KERNEL);
+	if (!clk_data->clks) {
+		kfree(clk_data);
+		return -ENOMEM;
+	}
+
+	zynqmp_register_clocks(dev, clk_data->clks, num_clocks);
+	clk_data->clk_num = num_clocks;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, clk_data);
+
+	/*
+	 * We can free clock_info now, as is only used to store clock info
+	 * from firmware for registering the clocks.
+	 */
+	kfree(clock_info);
+
+	return 0;
+}
+
+static struct of_device_id zynqmp_clock_of_match[] = {
+	{.compatible = "xlnx,zynqmp-clk"},
+	{},
+};
+
+static struct driver_d zynqmp_clock_driver = {
+	.probe	= zynqmp_clock_probe,
+	.name	= "zynqmp_clock",
+	.of_compatible = DRV_OF_COMPAT(zynqmp_clock_of_match),
+};
+postcore_platform_driver(zynqmp_clock_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
