Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6l.mail.yandex.net ([2a02:6b8:0:1819::6])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFej-0001Hx-MR
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:37 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:42 +0300
Message-Id: <1425499906-32125-15-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 14/18] ARM: Rockchip: Update clk driver from Linux kernel
 for use with newer DTS
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/rockchip/Makefile       |   2 +-
 drivers/clk/rockchip/clk-cpu.c      | 160 +++++++
 drivers/clk/rockchip/clk-pll.c      | 368 +++++++++++++++
 drivers/clk/rockchip/clk-rk3188.c   | 872 ++++++++++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk-rockchip.c |  86 ----
 drivers/clk/rockchip/clk.c          | 279 ++++++++++++
 drivers/clk/rockchip/clk.h          | 416 +++++++++++++++++
 include/init.h                      |   1 +
 8 files changed, 2097 insertions(+), 87 deletions(-)
 create mode 100644 drivers/clk/rockchip/clk-cpu.c
 create mode 100644 drivers/clk/rockchip/clk-pll.c
 create mode 100644 drivers/clk/rockchip/clk-rk3188.c
 delete mode 100644 drivers/clk/rockchip/clk-rockchip.c
 create mode 100644 drivers/clk/rockchip/clk.c
 create mode 100644 drivers/clk/rockchip/clk.h

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 1c5271f..865542a 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -1 +1 @@
-obj-y += clk-rockchip.o
\ No newline at end of file
+obj-y += clk-cpu.o clk-pll.o clk-rk3188.o clk.o
diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
new file mode 100644
index 0000000..226b819
--- /dev/null
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -0,0 +1,160 @@
+/*
+ * Copyright (c) 2014 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * based on clk/samsung/clk-cpu.c
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ * Author: Thomas Abraham <thomas.ab@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * A CPU clock is defined as a clock supplied to a CPU or a group of CPUs.
+ * The CPU clock is typically derived from a hierarchy of clock
+ * blocks which includes mux and divider blocks. There are a number of other
+ * auxiliary clocks supplied to the CPU domain such as the debug blocks and AXI
+ * clock for CPU domain. The rates of these auxiliary clocks are related to the
+ * CPU clock rate and this relation is usually specified in the hardware manual
+ * of the SoC or supplied after the SoC characterization.
+ *
+ * The below implementation of the CPU clock allows the rate changes of the CPU
+ * clock and the corresponding rate changes of the auxillary clocks of the CPU
+ * domain. The platform clock driver provides a clock register configuration
+ * for each configurable rate which is then used to program the clock hardware
+ * registers to acheive a fast co-oridinated rate change for all the CPU domain
+ * clocks.
+ *
+ * On a rate change request for the CPU clock, the rate change is propagated
+ * upto the PLL supplying the clock to the CPU domain clock blocks. While the
+ * CPU domain PLL is reconfigured, the CPU domain clocks are driven using an
+ * alternate clock source. If required, the alternate clock source is divided
+ * down in order to keep the output clock rate within the previous OPP limits.
+ */
+
+#include <common.h>
+#include <of.h>
+#include <malloc.h>
+#include <io.h>
+#include <xfuncs.h>
+#include "clk.h"
+#include <linux/barebox-wrapper.h>
+
+/**
+ * struct rockchip_cpuclk: information about clock supplied to a CPU core.
+ * @hw:		handle between ccf and cpu clock.
+ * @alt_parent:	alternate parent clock to use when switching the speed
+ *		of the primary parent clock.
+ * @reg_base:	base register for cpu-clock values.
+ * @rate_count:	number of rates in the rate_table
+ * @rate_table:	pll-rates and their associated dividers
+ * @reg_data:	cpu-specific register settings
+ */
+struct rockchip_cpuclk {
+	struct clk				hw;
+
+	struct clk				*alt_parent;
+	void __iomem				*reg_base;
+	unsigned int				rate_count;
+	struct rockchip_cpuclk_rate_table	*rate_table;
+	const struct rockchip_cpuclk_reg_data	*reg_data;
+};
+
+#define to_rockchip_cpuclk_hw(hw) container_of(hw, struct rockchip_cpuclk, hw)
+
+static unsigned long rockchip_cpuclk_recalc_rate(struct clk *hw,
+					unsigned long parent_rate)
+{
+	struct rockchip_cpuclk *cpuclk = to_rockchip_cpuclk_hw(hw);
+	const struct rockchip_cpuclk_reg_data *reg_data = cpuclk->reg_data;
+	u32 clksel0 = readl(cpuclk->reg_base + reg_data->core_reg);
+
+	clksel0 >>= reg_data->div_core_shift;
+	clksel0 &= reg_data->div_core_mask;
+	return parent_rate / (clksel0 + 1);
+}
+
+static const struct clk_ops rockchip_cpuclk_ops = {
+	.recalc_rate = rockchip_cpuclk_recalc_rate,
+};
+
+struct clk *rockchip_clk_register_cpuclk(const char *name,
+			const char **parent_names, u8 num_parents,
+			const struct rockchip_cpuclk_reg_data *reg_data,
+			const struct rockchip_cpuclk_rate_table *rates,
+			int nrates, void __iomem *reg_base)
+{
+	struct rockchip_cpuclk *cpuclk;
+	struct clk *clk;
+	int ret;
+
+	if (num_parents != 2) {
+		pr_err("%s: needs two parent clocks\n", __func__);
+		return ERR_PTR(-EINVAL);
+	}
+
+	cpuclk = kzalloc(sizeof(*cpuclk), GFP_KERNEL);
+	if (!cpuclk)
+		return ERR_PTR(-ENOMEM);
+
+	cpuclk->hw.name = name;
+	cpuclk->hw.parent_names = &parent_names[0];
+	cpuclk->hw.num_parents = 1;
+	cpuclk->hw.ops = &rockchip_cpuclk_ops;
+
+	/* only allow rate changes when we have a rate table */
+	cpuclk->hw.flags = (nrates > 0) ? CLK_SET_RATE_PARENT : 0;
+
+	cpuclk->reg_base = reg_base;
+	cpuclk->reg_data = reg_data;
+
+	cpuclk->alt_parent = __clk_lookup(parent_names[1]);
+	if (!cpuclk->alt_parent) {
+		pr_err("%s: could not lookup alternate parent\n",
+		       __func__);
+		ret = -EINVAL;
+		goto free_cpuclk;
+	}
+
+	ret = clk_enable(cpuclk->alt_parent);
+	if (ret) {
+		pr_err("%s: could not enable alternate parent\n",
+		       __func__);
+		goto free_cpuclk;
+	}
+
+	clk = __clk_lookup(parent_names[0]);
+	if (!clk) {
+		pr_err("%s: could not lookup parent clock %s\n",
+		       __func__, parent_names[0]);
+		ret = -EINVAL;
+		goto free_cpuclk;
+	}
+
+	if (nrates > 0) {
+		cpuclk->rate_count = nrates;
+		cpuclk->rate_table = xmemdup(rates,
+					     sizeof(*rates) * nrates
+					     );
+		if (!cpuclk->rate_table) {
+			pr_err("%s: could not allocate memory for cpuclk rates\n",
+			       __func__);
+			ret = -ENOMEM;
+			goto free_cpuclk;
+		}
+	}
+
+	ret = clk_register(&cpuclk->hw);
+	if (ret) {
+		pr_err("%s: could not register cpuclk %s\n", __func__,	name);
+		goto free_rate_table;
+	}
+
+	return &cpuclk->hw;
+
+free_rate_table:
+	kfree(cpuclk->rate_table);
+free_cpuclk:
+	kfree(cpuclk);
+	return ERR_PTR(ret);
+}
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
new file mode 100644
index 0000000..f0dc120
--- /dev/null
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -0,0 +1,368 @@
+/*
+ * Copyright (c) 2014 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm-generic/div64.h>
+#include <common.h>
+#include <io.h>
+#include <linux/list.h>
+#include <of.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/barebox-wrapper.h>
+#include "clk.h"
+#include <xfuncs.h>
+
+#define PLL_MODE_MASK		0x3
+#define PLL_MODE_SLOW		0x0
+#define PLL_MODE_NORM		0x1
+#define PLL_MODE_DEEP		0x2
+
+struct rockchip_clk_pll {
+	struct clk		hw;
+
+	struct clk		pll_mux;
+	const struct clk_ops	*pll_mux_ops;
+
+	void __iomem		*reg_base;
+	int			lock_offset;
+	unsigned int		lock_shift;
+	enum rockchip_pll_type	type;
+	u8			flags;
+	const struct rockchip_pll_rate_table *rate_table;
+	unsigned int		rate_count;
+	char			pll_name[20];
+};
+
+#define to_rockchip_clk_pll(_hw) container_of(_hw, struct rockchip_clk_pll, hw)
+
+static const struct rockchip_pll_rate_table *rockchip_get_pll_settings(
+			    struct rockchip_clk_pll *pll, unsigned long rate)
+{
+	const struct rockchip_pll_rate_table  *rate_table = pll->rate_table;
+	int i;
+
+	for (i = 0; i < pll->rate_count; i++) {
+		if (rate == rate_table[i].rate)
+			return &rate_table[i];
+	}
+
+	return NULL;
+}
+
+static long rockchip_pll_round_rate(struct clk *hw,
+			    unsigned long drate, unsigned long *prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate_table = pll->rate_table;
+	int i;
+
+	/* Assumming rate_table is in descending order */
+	for (i = 0; i < pll->rate_count; i++) {
+		if (drate >= rate_table[i].rate)
+			return rate_table[i].rate;
+	}
+
+	/* return minimum supported value */
+	return rate_table[i - 1].rate;
+}
+
+/*
+ * Wait for the pll to reach the locked state.
+ * The calling set_rate function is responsible for making sure the
+ * grf regmap is available.
+ */
+#define RK3188_PLL_LOCK_REG     0x200080ac
+
+static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
+{
+	int delay = 24000000;
+	int val;
+
+	/* wait for the pll to lock */
+	while (delay > 0) {
+		val = readl(RK3188_PLL_LOCK_REG);
+		if (val & BIT(pll->lock_shift))
+			return 0;
+		delay--;
+	}
+
+	pr_err("%s: timeout waiting for pll to lock\n", __func__);
+	return -ETIMEDOUT;
+}
+
+/**
+ * PLL used in RK3066, RK3188 and RK3288
+ */
+
+#define RK3066_PLL_RESET_DELAY(nr)	((nr * 500) / 24 + 1)
+
+#define RK3066_PLLCON(i)		(i * 0x4)
+#define RK3066_PLLCON0_OD_MASK		0xf
+#define RK3066_PLLCON0_OD_SHIFT		0
+#define RK3066_PLLCON0_NR_MASK		0x3f
+#define RK3066_PLLCON0_NR_SHIFT		8
+#define RK3066_PLLCON1_NF_MASK		0x1fff
+#define RK3066_PLLCON1_NF_SHIFT		0
+#define RK3066_PLLCON2_BWADJ_MASK	0xfff
+#define RK3066_PLLCON2_BWADJ_SHIFT	0
+#define RK3066_PLLCON3_RESET		(1 << 5)
+#define RK3066_PLLCON3_PWRDOWN		(1 << 1)
+#define RK3066_PLLCON3_BYPASS		(1 << 0)
+
+static unsigned long rockchip_rk3066_pll_recalc_rate(struct clk *hw,
+						     unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	u64 nf, nr, no, rate64 = prate;
+	u32 pllcon;
+
+	pllcon = readl(pll->reg_base + RK3066_PLLCON(3));
+	if (pllcon & RK3066_PLLCON3_BYPASS) {
+		pr_debug("%s: pll %s is bypassed\n", __func__,
+			__clk_get_name(hw));
+		return prate;
+	}
+
+	pllcon = readl(pll->reg_base + RK3066_PLLCON(1));
+	nf = (pllcon >> RK3066_PLLCON1_NF_SHIFT) & RK3066_PLLCON1_NF_MASK;
+
+	pllcon = readl(pll->reg_base + RK3066_PLLCON(0));
+	nr = (pllcon >> RK3066_PLLCON0_NR_SHIFT) & RK3066_PLLCON0_NR_MASK;
+	no = (pllcon >> RK3066_PLLCON0_OD_SHIFT) & RK3066_PLLCON0_OD_MASK;
+
+	rate64 *= (nf + 1);
+	do_div(rate64, nr + 1);
+	do_div(rate64, no + 1);
+
+	pr_debug("%s: %s rate=%lu\n",
+		 __func__, hw->name, (unsigned long)rate64);
+
+	return (unsigned long)rate64;
+}
+
+static int rockchip_rk3066_pll_set_rate(struct clk *hw, unsigned long drate,
+					unsigned long prate)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	const struct rockchip_pll_rate_table *rate;
+	unsigned long old_rate = rockchip_rk3066_pll_recalc_rate(hw, prate);
+	struct clk *pll_mux = &pll->pll_mux;
+	const struct clk_ops *pll_mux_ops = pll->pll_mux_ops;
+	int rate_change_remuxed = 0;
+	int cur_parent;
+	int ret;
+
+	pr_debug("%s: changing %s from %lu to %lu with a parent rate of %lu\n",
+		 __func__, __clk_get_name(hw), old_rate, drate, prate);
+
+	/* Get required rate settings from table */
+	rate = rockchip_get_pll_settings(pll, drate);
+	if (!rate) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+			drate, __clk_get_name(hw));
+		return -EINVAL;
+	}
+
+	pr_debug("%s: rate settings for %lu (nr, no, nf): (%d, %d, %d)\n",
+		 __func__, rate->rate, rate->nr, rate->no, rate->nf);
+
+	cur_parent = pll_mux_ops->get_parent(pll_mux);
+	if (cur_parent == PLL_MODE_NORM) {
+		pll_mux_ops->set_parent(pll_mux, PLL_MODE_SLOW);
+		rate_change_remuxed = 1;
+	}
+
+	/* enter reset mode */
+	writel(HIWORD_UPDATE(RK3066_PLLCON3_RESET, RK3066_PLLCON3_RESET, 0),
+	       pll->reg_base + RK3066_PLLCON(3));
+
+	/* update pll values */
+	writel(HIWORD_UPDATE(rate->nr - 1, RK3066_PLLCON0_NR_MASK,
+					   RK3066_PLLCON0_NR_SHIFT) |
+	       HIWORD_UPDATE(rate->no - 1, RK3066_PLLCON0_OD_MASK,
+					   RK3066_PLLCON0_OD_SHIFT),
+	       pll->reg_base + RK3066_PLLCON(0));
+
+	writel(HIWORD_UPDATE(rate->nf - 1, RK3066_PLLCON1_NF_MASK,
+						   RK3066_PLLCON1_NF_SHIFT),
+		       pll->reg_base + RK3066_PLLCON(1));
+	writel(HIWORD_UPDATE(rate->bwadj, RK3066_PLLCON2_BWADJ_MASK,
+						  RK3066_PLLCON2_BWADJ_SHIFT),
+		       pll->reg_base + RK3066_PLLCON(2));
+
+	/* leave reset and wait the reset_delay */
+	writel(HIWORD_UPDATE(0, RK3066_PLLCON3_RESET, 0),
+	       pll->reg_base + RK3066_PLLCON(3));
+	udelay(RK3066_PLL_RESET_DELAY(rate->nr));
+
+	/* wait for the pll to lock */
+	ret = rockchip_pll_wait_lock(pll);
+	if (ret) {
+		pr_warn("%s: pll did not lock, trying to restore old rate %lu\n",
+			__func__, old_rate);
+		rockchip_rk3066_pll_set_rate(hw, old_rate, prate);
+	}
+
+	if (rate_change_remuxed)
+		pll_mux_ops->set_parent(pll_mux, PLL_MODE_NORM);
+
+	return ret;
+}
+
+static int rockchip_rk3066_pll_enable(struct clk *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(0, RK3066_PLLCON3_PWRDOWN, 0),
+	       pll->reg_base + RK3066_PLLCON(3));
+
+	return 0;
+}
+
+static void rockchip_rk3066_pll_disable(struct clk *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+
+	writel(HIWORD_UPDATE(RK3066_PLLCON3_PWRDOWN,
+			     RK3066_PLLCON3_PWRDOWN, 0),
+	       pll->reg_base + RK3066_PLLCON(3));
+}
+
+static int rockchip_rk3066_pll_is_enabled(struct clk *hw)
+{
+	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
+	u32 pllcon = readl(pll->reg_base + RK3066_PLLCON(3));
+
+	return !(pllcon & RK3066_PLLCON3_PWRDOWN);
+}
+
+static const struct clk_ops rockchip_rk3066_pll_clk_norate_ops = {
+	.recalc_rate = rockchip_rk3066_pll_recalc_rate,
+	.enable = rockchip_rk3066_pll_enable,
+	.disable = rockchip_rk3066_pll_disable,
+	.is_enabled = rockchip_rk3066_pll_is_enabled,
+};
+
+static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
+	.recalc_rate = rockchip_rk3066_pll_recalc_rate,
+	.round_rate = rockchip_pll_round_rate,
+	.set_rate = rockchip_rk3066_pll_set_rate,
+	.enable = rockchip_rk3066_pll_enable,
+	.disable = rockchip_rk3066_pll_disable,
+	.is_enabled = rockchip_rk3066_pll_is_enabled,
+};
+
+/*
+ * Common registering of pll clocks
+ */
+
+struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
+		const char *name, const char **parent_names, u8 num_parents,
+		void __iomem *base, int con_offset, int grf_lock_offset,
+		int lock_shift, int mode_offset, int mode_shift,
+		struct rockchip_pll_rate_table *rate_table,
+		u8 clk_pll_flags)
+{
+	const char **pll_parents;
+	struct rockchip_clk_pll *pll;
+	struct clk *pll_mux;
+	struct clk *mux_clk;
+	int ret;
+
+	if (num_parents != 2) {
+		pr_err("%s: needs two parent clocks\n", __func__);
+		return ERR_PTR(-EINVAL);
+	}
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	pll_parents = kzalloc(sizeof(char *)*3, GFP_KERNEL);
+	if (!pll_parents)
+		return ERR_PTR(-ENOMEM);
+
+	/* name the actual pll */
+	snprintf(pll->pll_name, sizeof(pll->pll_name), "pll_%s", name);
+	pll->hw.name = pll->pll_name;
+
+	pll->hw.parent_names = &parent_names[0];
+	pll->hw.num_parents = 1;
+
+	if (rate_table) {
+		int len;
+
+		/* find count of rates in rate_table */
+		for (len = 0; rate_table[len].rate != 0; )
+			len++;
+
+		pll->rate_count = len;
+		pll->rate_table = xmemdup(rate_table,
+					pll->rate_count *
+					sizeof(struct rockchip_pll_rate_table)
+					);
+		WARN(!pll->rate_table,
+			"%s: could not allocate rate table for %s\n",
+			__func__, name);
+	}
+
+	switch (pll_type) {
+	case pll_rk3066:
+		if (!pll->rate_table)
+			pll->hw.ops = &rockchip_rk3066_pll_clk_norate_ops;
+		else
+			pll->hw.ops = &rockchip_rk3066_pll_clk_ops;
+		break;
+	default:
+		pr_warn("%s: Unknown pll type for pll clk %s\n",
+			__func__, name);
+	}
+
+	pll->type = pll_type;
+	pll->reg_base = base + con_offset;
+	pll->lock_offset = grf_lock_offset;
+	pll->lock_shift = lock_shift;
+	pll->flags = clk_pll_flags;
+
+	ret = clk_register(&pll->hw);
+	if (ret) {
+		pr_err("%s: failed to register pll clock %s : %d\n",
+			__func__, name, ret);
+		mux_clk = &pll->hw;
+		goto err_exit;
+	}
+
+	/* the actual muxing is xin24m, pll-output, xin32k */
+	pll_parents[0] = parent_names[0];
+	pll_parents[1] = pll->pll_name;
+	pll_parents[2] = parent_names[1];
+
+	pll_mux = clk_mux_alloc(name, base + mode_offset, mode_shift, PLL_MODE_MASK, pll_parents, 3, CLK_SET_RATE_PARENT);
+	pll->pll_mux_ops = pll_mux->ops;
+	mux_clk = pll_mux;
+
+	if (pll_type == pll_rk3066)
+		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
+
+	ret = clk_register(pll_mux);
+	if (ret)
+		goto err_exit;
+
+	return mux_clk;
+
+err_exit:
+	kfree(pll);
+	return mux_clk;
+}
diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
new file mode 100644
index 0000000..7dda296
--- /dev/null
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -0,0 +1,872 @@
+/*
+ * Copyright (c) 2014 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <of.h>
+#include <of_address.h>
+#include <dt-bindings/clock/rk3188-cru-common.h>
+#include "clk.h"
+#include <linux/barebox-wrapper.h>
+#include <init.h>
+
+#define RK3066_GRF_SOC_STATUS	0x15c
+#define RK3188_GRF_SOC_STATUS	0xac
+
+#define CLK_SET_RATE_NO_REPARENT 0
+#define CLK_DIVIDER_READ_ONLY 0
+
+enum rk3188_plls {
+	apll, cpll, dpll, gpll,
+};
+
+struct rockchip_pll_rate_table rk3188_pll_rates[] = {
+	RK3066_PLL_RATE(2208000000, 1, 92, 1),
+	RK3066_PLL_RATE(2184000000, 1, 91, 1),
+	RK3066_PLL_RATE(2160000000, 1, 90, 1),
+	RK3066_PLL_RATE(2136000000, 1, 89, 1),
+	RK3066_PLL_RATE(2112000000, 1, 88, 1),
+	RK3066_PLL_RATE(2088000000, 1, 87, 1),
+	RK3066_PLL_RATE(2064000000, 1, 86, 1),
+	RK3066_PLL_RATE(2040000000, 1, 85, 1),
+	RK3066_PLL_RATE(2016000000, 1, 84, 1),
+	RK3066_PLL_RATE(1992000000, 1, 83, 1),
+	RK3066_PLL_RATE(1968000000, 1, 82, 1),
+	RK3066_PLL_RATE(1944000000, 1, 81, 1),
+	RK3066_PLL_RATE(1920000000, 1, 80, 1),
+	RK3066_PLL_RATE(1896000000, 1, 79, 1),
+	RK3066_PLL_RATE(1872000000, 1, 78, 1),
+	RK3066_PLL_RATE(1848000000, 1, 77, 1),
+	RK3066_PLL_RATE(1824000000, 1, 76, 1),
+	RK3066_PLL_RATE(1800000000, 1, 75, 1),
+	RK3066_PLL_RATE(1776000000, 1, 74, 1),
+	RK3066_PLL_RATE(1752000000, 1, 73, 1),
+	RK3066_PLL_RATE(1728000000, 1, 72, 1),
+	RK3066_PLL_RATE(1704000000, 1, 71, 1),
+	RK3066_PLL_RATE(1680000000, 1, 70, 1),
+	RK3066_PLL_RATE(1656000000, 1, 69, 1),
+	RK3066_PLL_RATE(1632000000, 1, 68, 1),
+	RK3066_PLL_RATE(1608000000, 1, 67, 1),
+	RK3066_PLL_RATE(1560000000, 1, 65, 1),
+	RK3066_PLL_RATE(1512000000, 1, 63, 1),
+	RK3066_PLL_RATE(1488000000, 1, 62, 1),
+	RK3066_PLL_RATE(1464000000, 1, 61, 1),
+	RK3066_PLL_RATE(1440000000, 1, 60, 1),
+	RK3066_PLL_RATE(1416000000, 1, 59, 1),
+	RK3066_PLL_RATE(1392000000, 1, 58, 1),
+	RK3066_PLL_RATE(1368000000, 1, 57, 1),
+	RK3066_PLL_RATE(1344000000, 1, 56, 1),
+	RK3066_PLL_RATE(1320000000, 1, 55, 1),
+	RK3066_PLL_RATE(1296000000, 1, 54, 1),
+	RK3066_PLL_RATE(1272000000, 1, 53, 1),
+	RK3066_PLL_RATE(1248000000, 1, 52, 1),
+	RK3066_PLL_RATE(1224000000, 1, 51, 1),
+	RK3066_PLL_RATE(1200000000, 1, 50, 1),
+	RK3066_PLL_RATE(1188000000, 2, 99, 1),
+	RK3066_PLL_RATE(1176000000, 1, 49, 1),
+	RK3066_PLL_RATE(1128000000, 1, 47, 1),
+	RK3066_PLL_RATE(1104000000, 1, 46, 1),
+	RK3066_PLL_RATE(1008000000, 1, 84, 2),
+	RK3066_PLL_RATE( 912000000, 1, 76, 2),
+	RK3066_PLL_RATE( 891000000, 8, 594, 2),
+	RK3066_PLL_RATE( 888000000, 1, 74, 2),
+	RK3066_PLL_RATE( 816000000, 1, 68, 2),
+	RK3066_PLL_RATE( 798000000, 2, 133, 2),
+	RK3066_PLL_RATE( 792000000, 1, 66, 2),
+	RK3066_PLL_RATE( 768000000, 1, 64, 2),
+	RK3066_PLL_RATE( 742500000, 8, 495, 2),
+	RK3066_PLL_RATE( 696000000, 1, 58, 2),
+	RK3066_PLL_RATE( 600000000, 1, 50, 2),
+	RK3066_PLL_RATE( 594000000, 2, 198, 4),
+	RK3066_PLL_RATE( 552000000, 1, 46, 2),
+	RK3066_PLL_RATE( 504000000, 1, 84, 4),
+	RK3066_PLL_RATE( 456000000, 1, 76, 4),
+	RK3066_PLL_RATE( 408000000, 1, 68, 4),
+	RK3066_PLL_RATE( 384000000, 2, 128, 4),
+	RK3066_PLL_RATE( 360000000, 1, 60, 4),
+	RK3066_PLL_RATE( 312000000, 1, 52, 4),
+	RK3066_PLL_RATE( 300000000, 1, 50, 4),
+	RK3066_PLL_RATE( 297000000, 2, 198, 8),
+	RK3066_PLL_RATE( 252000000, 1, 84, 8),
+	RK3066_PLL_RATE( 216000000, 1, 72, 8),
+	RK3066_PLL_RATE( 148500000, 2, 99, 8),
+	RK3066_PLL_RATE( 126000000, 1, 84, 16),
+	RK3066_PLL_RATE(  48000000, 1, 64, 32),
+	{ /* sentinel */ },
+};
+
+#define RK3066_DIV_CORE_PERIPH_MASK	0x3
+#define RK3066_DIV_CORE_PERIPH_SHIFT	6
+#define RK3066_DIV_ACLK_CORE_MASK	0x7
+#define RK3066_DIV_ACLK_CORE_SHIFT	0
+#define RK3066_DIV_ACLK_HCLK_MASK	0x3
+#define RK3066_DIV_ACLK_HCLK_SHIFT	8
+#define RK3066_DIV_ACLK_PCLK_MASK	0x3
+#define RK3066_DIV_ACLK_PCLK_SHIFT	12
+#define RK3066_DIV_AHB2APB_MASK		0x3
+#define RK3066_DIV_AHB2APB_SHIFT	14
+
+#define RK3066_CLKSEL0(_core_peri)					\
+	{								\
+		.reg = RK2928_CLKSEL_CON(0),				\
+		.val = HIWORD_UPDATE(_core_peri, RK3066_DIV_CORE_PERIPH_MASK, \
+				RK3066_DIV_CORE_PERIPH_SHIFT)		\
+	}
+#define RK3066_CLKSEL1(_aclk_core, _aclk_hclk, _aclk_pclk, _ahb2apb)	\
+	{								\
+		.reg = RK2928_CLKSEL_CON(1),				\
+		.val = HIWORD_UPDATE(_aclk_core, RK3066_DIV_ACLK_CORE_MASK, \
+				RK3066_DIV_ACLK_CORE_SHIFT) |		\
+		       HIWORD_UPDATE(_aclk_hclk, RK3066_DIV_ACLK_HCLK_MASK, \
+				RK3066_DIV_ACLK_HCLK_SHIFT) |		\
+		       HIWORD_UPDATE(_aclk_pclk, RK3066_DIV_ACLK_PCLK_MASK, \
+				RK3066_DIV_ACLK_PCLK_SHIFT) |		\
+		       HIWORD_UPDATE(_ahb2apb, RK3066_DIV_AHB2APB_MASK,	\
+				RK3066_DIV_AHB2APB_SHIFT),		\
+	}
+
+#define RK3066_CPUCLK_RATE(_prate, _core_peri, _acore, _ahclk, _apclk, _h2p) \
+	{								\
+		.prate = _prate,					\
+		.divs = {						\
+			RK3066_CLKSEL0(_core_peri),			\
+			RK3066_CLKSEL1(_acore, _ahclk, _apclk, _h2p),	\
+		},							\
+	}
+
+static struct rockchip_cpuclk_rate_table rk3066_cpuclk_rates[] __initdata = {
+	RK3066_CPUCLK_RATE(1416000000, 2, 3, 1, 2, 1),
+	RK3066_CPUCLK_RATE(1200000000, 2, 3, 1, 2, 1),
+	RK3066_CPUCLK_RATE(1008000000, 2, 2, 1, 2, 1),
+	RK3066_CPUCLK_RATE( 816000000, 2, 2, 1, 2, 1),
+	RK3066_CPUCLK_RATE( 600000000, 1, 2, 1, 2, 1),
+	RK3066_CPUCLK_RATE( 504000000, 1, 1, 1, 2, 1),
+	RK3066_CPUCLK_RATE( 312000000, 0, 1, 1, 1, 0),
+};
+
+static const struct rockchip_cpuclk_reg_data rk3066_cpuclk_data = {
+	.core_reg = RK2928_CLKSEL_CON(0),
+	.div_core_shift = 0,
+	.div_core_mask = 0x1f,
+	.mux_core_shift = 8,
+};
+
+#define RK3188_DIV_ACLK_CORE_MASK	0x7
+#define RK3188_DIV_ACLK_CORE_SHIFT	3
+
+#define RK3188_CLKSEL1(_aclk_core)		\
+	{					\
+		.reg = RK2928_CLKSEL_CON(1),	\
+		.val = HIWORD_UPDATE(_aclk_core, RK3188_DIV_ACLK_CORE_MASK,\
+				 RK3188_DIV_ACLK_CORE_SHIFT) \
+	}
+#define RK3188_CPUCLK_RATE(_prate, _core_peri, _aclk_core)	\
+	{							\
+		.prate = _prate,				\
+		.divs = {					\
+			RK3066_CLKSEL0(_core_peri),		\
+			RK3188_CLKSEL1(_aclk_core),		\
+		},						\
+	}
+
+static struct rockchip_cpuclk_rate_table rk3188_cpuclk_rates[] __initdata = {
+	RK3188_CPUCLK_RATE(1608000000, 2, 3),
+	RK3188_CPUCLK_RATE(1416000000, 2, 3),
+	RK3188_CPUCLK_RATE(1200000000, 2, 3),
+	RK3188_CPUCLK_RATE(1008000000, 2, 3),
+	RK3188_CPUCLK_RATE( 816000000, 2, 3),
+	RK3188_CPUCLK_RATE( 600000000, 1, 3),
+	RK3188_CPUCLK_RATE( 504000000, 1, 3),
+	RK3188_CPUCLK_RATE( 312000000, 0, 1),
+};
+
+static const struct rockchip_cpuclk_reg_data rk3188_cpuclk_data = {
+	.core_reg = RK2928_CLKSEL_CON(0),
+	.div_core_shift = 9,
+	.div_core_mask = 0x1f,
+	.mux_core_shift = 8,
+};
+
+PNAME(mux_pll_p)		= { "xin24m", "xin32k" };
+PNAME(mux_armclk_p)		= { "apll", "gpll_armclk" };
+PNAME(mux_ddrphy_p)		= { "dpll", "gpll_ddr" };
+PNAME(mux_pll_src_gpll_cpll_p)	= { "gpll", "cpll" };
+PNAME(mux_pll_src_cpll_gpll_p)	= { "cpll", "gpll" };
+PNAME(mux_aclk_cpu_p)		= { "apll", "gpll" };
+PNAME(mux_sclk_cif0_p)		= { "cif0_pre", "xin24m" };
+PNAME(mux_sclk_i2s0_p)		= { "i2s0_pre", "i2s0_frac", "xin12m" };
+PNAME(mux_sclk_spdif_p)		= { "spdif_src", "spdif_frac", "xin12m" };
+PNAME(mux_sclk_uart0_p)		= { "uart0_pre", "uart0_frac", "xin24m" };
+PNAME(mux_sclk_uart1_p)		= { "uart1_pre", "uart1_frac", "xin24m" };
+PNAME(mux_sclk_uart2_p)		= { "uart2_pre", "uart2_frac", "xin24m" };
+PNAME(mux_sclk_uart3_p)		= { "uart3_pre", "uart3_frac", "xin24m" };
+PNAME(mux_sclk_hsadc_p)		= { "hsadc_src", "hsadc_frac", "ext_hsadc" };
+PNAME(mux_mac_p)		= { "gpll", "dpll" };
+PNAME(mux_sclk_macref_p)	= { "mac_src", "ext_rmii" };
+
+static struct rockchip_pll_clock rk3066_pll_clks[] __initdata = {
+	[apll] = PLL(pll_rk3066, PLL_APLL, "apll", mux_pll_p, 0, RK2928_PLL_CON(0),
+		     RK2928_MODE_CON, 0, 5, 0, rk3188_pll_rates),
+	[dpll] = PLL(pll_rk3066, PLL_DPLL, "dpll", mux_pll_p, 0, RK2928_PLL_CON(4),
+		     RK2928_MODE_CON, 4, 4, 0, NULL),
+	[cpll] = PLL(pll_rk3066, PLL_CPLL, "cpll", mux_pll_p, 0, RK2928_PLL_CON(8),
+		     RK2928_MODE_CON, 8, 6, ROCKCHIP_PLL_SYNC_RATE, rk3188_pll_rates),
+	[gpll] = PLL(pll_rk3066, PLL_GPLL, "gpll", mux_pll_p, 0, RK2928_PLL_CON(12),
+		     RK2928_MODE_CON, 12, 7, ROCKCHIP_PLL_SYNC_RATE, rk3188_pll_rates),
+};
+
+static struct rockchip_pll_clock rk3188_pll_clks[] __initdata = {
+	[apll] = PLL(pll_rk3066, PLL_APLL, "apll", mux_pll_p, 0, RK2928_PLL_CON(0),
+		     RK2928_MODE_CON, 0, 6, 0, rk3188_pll_rates),
+	[dpll] = PLL(pll_rk3066, PLL_DPLL, "dpll", mux_pll_p, 0, RK2928_PLL_CON(4),
+		     RK2928_MODE_CON, 4, 5, 0, NULL),
+	[cpll] = PLL(pll_rk3066, PLL_CPLL, "cpll", mux_pll_p, 0, RK2928_PLL_CON(8),
+		     RK2928_MODE_CON, 8, 7, ROCKCHIP_PLL_SYNC_RATE, rk3188_pll_rates),
+	[gpll] = PLL(pll_rk3066, PLL_GPLL, "gpll", mux_pll_p, 0, RK2928_PLL_CON(12),
+		     RK2928_MODE_CON, 12, 8, ROCKCHIP_PLL_SYNC_RATE, rk3188_pll_rates),
+};
+
+#define MFLAGS CLK_MUX_HIWORD_MASK
+#define DFLAGS CLK_DIVIDER_HIWORD_MASK
+#define GFLAGS (CLK_GATE_HIWORD_MASK | CLK_GATE_SET_TO_DISABLE)
+
+/* 2 ^ (val + 1) */
+static struct clk_div_table div_core_peri_t[] = {
+	{ .val = 0, .div = 2 },
+	{ .val = 1, .div = 4 },
+	{ .val = 2, .div = 8 },
+	{ .val = 3, .div = 16 },
+	{ /* sentinel */ },
+};
+
+static struct rockchip_clk_branch common_clk_branches[] __initdata = {
+	/*
+	 * Clock-Architecture Diagram 2
+	 */
+
+	GATE(0, "gpll_armclk", "gpll", 0, RK2928_CLKGATE_CON(0), 1, GFLAGS),
+
+	/* these two are set by the cpuclk and should not be changed */
+	COMPOSITE_NOMUX_DIVTBL(CORE_PERI, "core_peri", "armclk", 0,
+			RK2928_CLKSEL_CON(0), 6, 2, DFLAGS | CLK_DIVIDER_READ_ONLY,
+			div_core_peri_t, RK2928_CLKGATE_CON(0), 0, GFLAGS),
+
+	COMPOSITE(0, "aclk_vepu", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(32), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 9, GFLAGS),
+	GATE(0, "hclk_vepu", "aclk_vepu", 0,
+			RK2928_CLKGATE_CON(3), 10, GFLAGS),
+	COMPOSITE(0, "aclk_vdpu", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(32), 15, 1, MFLAGS, 8, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 11, GFLAGS),
+	GATE(0, "hclk_vdpu", "aclk_vdpu", 0,
+			RK2928_CLKGATE_CON(3), 12, GFLAGS),
+
+	GATE(0, "gpll_ddr", "gpll", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(1), 7, GFLAGS),
+	COMPOSITE(0, "ddrphy", mux_ddrphy_p, CLK_IGNORE_UNUSED,
+			RK2928_CLKSEL_CON(26), 8, 1, MFLAGS, 0, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
+			RK2928_CLKGATE_CON(0), 2, GFLAGS),
+
+	GATE(0, "aclk_cpu", "aclk_cpu_pre", 0,
+			RK2928_CLKGATE_CON(0), 3, GFLAGS),
+
+	GATE(0, "atclk_cpu", "pclk_cpu_pre", 0,
+			RK2928_CLKGATE_CON(0), 6, GFLAGS),
+	GATE(0, "pclk_cpu", "pclk_cpu_pre", 0,
+			RK2928_CLKGATE_CON(0), 5, GFLAGS),
+	GATE(0, "hclk_cpu", "hclk_cpu_pre", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(0), 4, GFLAGS),
+
+	COMPOSITE(0, "aclk_lcdc0_pre", mux_pll_src_cpll_gpll_p, CLK_IGNORE_UNUSED,
+			RK2928_CLKSEL_CON(31), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 0, GFLAGS),
+	COMPOSITE(0, "aclk_lcdc1_pre", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(31), 15, 1, MFLAGS, 8, 5, DFLAGS,
+			RK2928_CLKGATE_CON(1), 4, GFLAGS),
+
+	GATE(0, "aclk_peri", "aclk_peri_pre", 0,
+			RK2928_CLKGATE_CON(2), 1, GFLAGS),
+	COMPOSITE_NOMUX(0, "hclk_peri", "aclk_peri_pre", 0,
+			RK2928_CLKSEL_CON(10), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
+			RK2928_CLKGATE_CON(2), 2, GFLAGS),
+	COMPOSITE_NOMUX(0, "pclk_peri", "aclk_peri_pre", 0,
+			RK2928_CLKSEL_CON(10), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
+			RK2928_CLKGATE_CON(2), 3, GFLAGS),
+
+	MUX(0, "cif_src", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(29), 0, 1, MFLAGS),
+	COMPOSITE_NOMUX(0, "cif0_pre", "cif_src", 0,
+			RK2928_CLKSEL_CON(29), 1, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 7, GFLAGS),
+	MUX(SCLK_CIF0, "sclk_cif0", mux_sclk_cif0_p, 0,
+			RK2928_CLKSEL_CON(29), 7, 1, MFLAGS),
+
+	GATE(0, "pclkin_cif0", "ext_cif0", 0,
+			RK2928_CLKGATE_CON(3), 3, GFLAGS),
+
+	/*
+	 * the 480m are generated inside the usb block from these clocks,
+	 * but they are also a source for the hsicphy clock.
+	 */
+	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "usb480m", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(1), 5, GFLAGS),
+	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "usb480m", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(1), 6, GFLAGS),
+
+	COMPOSITE(0, "mac_src", mux_mac_p, 0,
+			RK2928_CLKSEL_CON(21), 0, 1, MFLAGS, 8, 5, DFLAGS,
+			RK2928_CLKGATE_CON(2), 5, GFLAGS),
+	MUX(SCLK_MAC, "sclk_macref", mux_sclk_macref_p, CLK_SET_RATE_PARENT,
+			RK2928_CLKSEL_CON(21), 4, 1, MFLAGS),
+	GATE(0, "sclk_mac_lbtest", "sclk_macref",
+			RK2928_CLKGATE_CON(2), 12, 0, GFLAGS),
+
+	COMPOSITE(0, "hsadc_src", mux_pll_src_gpll_cpll_p, 0,
+			RK2928_CLKSEL_CON(22), 0, 1, MFLAGS, 8, 8, DFLAGS,
+			RK2928_CLKGATE_CON(2), 6, GFLAGS),
+	COMPOSITE_FRAC(0, "hsadc_frac", "hsadc_src", 0,
+			RK2928_CLKSEL_CON(23), 0,
+			RK2928_CLKGATE_CON(2), 7, GFLAGS),
+	MUX(SCLK_HSADC, "sclk_hsadc", mux_sclk_hsadc_p, 0,
+			RK2928_CLKSEL_CON(22), 4, 2, MFLAGS),
+
+	COMPOSITE_NOMUX(SCLK_SARADC, "sclk_saradc", "xin24m", 0,
+			RK2928_CLKSEL_CON(24), 8, 8, DFLAGS,
+			RK2928_CLKGATE_CON(2), 8, GFLAGS),
+
+	COMPOSITE_NOMUX(0, "spdif_pre", "i2s_src", 0,
+			RK2928_CLKSEL_CON(5), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(0), 13, GFLAGS),
+	COMPOSITE_FRAC(0, "spdif_frac", "spdif_pll", 0,
+			RK2928_CLKSEL_CON(9), 0,
+			RK2928_CLKGATE_CON(0), 14, GFLAGS),
+	MUX(SCLK_SPDIF, "sclk_spdif", mux_sclk_spdif_p, 0,
+			RK2928_CLKSEL_CON(5), 8, 2, MFLAGS),
+
+	/*
+	 * Clock-Architecture Diagram 4
+	 */
+
+	GATE(SCLK_SMC, "sclk_smc", "hclk_peri",
+			RK2928_CLKGATE_CON(2), 4, 0, GFLAGS),
+
+	COMPOSITE_NOMUX(SCLK_SPI0, "sclk_spi0", "pclk_peri", 0,
+			RK2928_CLKSEL_CON(25), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(2), 9, GFLAGS),
+	COMPOSITE_NOMUX(SCLK_SPI1, "sclk_spi1", "pclk_peri", 0,
+			RK2928_CLKSEL_CON(25), 8, 7, DFLAGS,
+			RK2928_CLKGATE_CON(2), 10, GFLAGS),
+
+	COMPOSITE_NOMUX(SCLK_SDMMC, "sclk_sdmmc", "hclk_peri", 0,
+			RK2928_CLKSEL_CON(11), 0, 6, DFLAGS,
+			RK2928_CLKGATE_CON(2), 11, GFLAGS),
+	COMPOSITE_NOMUX(SCLK_SDIO, "sclk_sdio", "hclk_peri", 0,
+			RK2928_CLKSEL_CON(12), 0, 6, DFLAGS,
+			RK2928_CLKGATE_CON(2), 13, GFLAGS),
+	COMPOSITE_NOMUX(SCLK_EMMC, "sclk_emmc", "hclk_peri", 0,
+			RK2928_CLKSEL_CON(12), 8, 6, DFLAGS,
+			RK2928_CLKGATE_CON(2), 14, GFLAGS),
+
+	MUX(0, "uart_src", mux_pll_src_gpll_cpll_p, 0,
+			RK2928_CLKSEL_CON(12), 15, 1, MFLAGS),
+	COMPOSITE_NOMUX(0, "uart0_pre", "uart_src", 0,
+			RK2928_CLKSEL_CON(13), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(1), 8, GFLAGS),
+	COMPOSITE_FRAC(0, "uart0_frac", "uart0_pre", 0,
+			RK2928_CLKSEL_CON(17), 0,
+			RK2928_CLKGATE_CON(1), 9, GFLAGS),
+	MUX(SCLK_UART0, "sclk_uart0", mux_sclk_uart0_p, 0,
+			RK2928_CLKSEL_CON(13), 8, 2, MFLAGS),
+	COMPOSITE_NOMUX(0, "uart1_pre", "uart_src", 0,
+			RK2928_CLKSEL_CON(14), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(1), 10, GFLAGS),
+	COMPOSITE_FRAC(0, "uart1_frac", "uart1_pre", 0,
+			RK2928_CLKSEL_CON(18), 0,
+			RK2928_CLKGATE_CON(1), 11, GFLAGS),
+	MUX(SCLK_UART1, "sclk_uart1", mux_sclk_uart1_p, 0,
+			RK2928_CLKSEL_CON(14), 8, 2, MFLAGS),
+	COMPOSITE_NOMUX(0, "uart2_pre", "uart_src", 0,
+			RK2928_CLKSEL_CON(15), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(1), 12, GFLAGS),
+	COMPOSITE_FRAC(0, "uart2_frac", "uart2_pre", 0,
+			RK2928_CLKSEL_CON(19), 0,
+			RK2928_CLKGATE_CON(1), 13, GFLAGS),
+	MUX(SCLK_UART2, "sclk_uart2", mux_sclk_uart2_p, 0,
+			RK2928_CLKSEL_CON(15), 8, 2, MFLAGS),
+	COMPOSITE_NOMUX(0, "uart3_pre", "uart_src", 0,
+			RK2928_CLKSEL_CON(16), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(1), 14, GFLAGS),
+	COMPOSITE_FRAC(0, "uart3_frac", "uart3_pre", 0,
+			RK2928_CLKSEL_CON(20), 0,
+			RK2928_CLKGATE_CON(1), 15, GFLAGS),
+	MUX(SCLK_UART3, "sclk_uart3", mux_sclk_uart3_p, 0,
+			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS),
+
+	GATE(SCLK_JTAG, "jtag", "ext_jtag", 0, RK2928_CLKGATE_CON(1), 3, GFLAGS),
+
+	GATE(SCLK_TIMER0, "timer0", "xin24m", 0, RK2928_CLKGATE_CON(1), 0, GFLAGS),
+	GATE(SCLK_TIMER1, "timer1", "xin24m", 0, RK2928_CLKGATE_CON(1), 1, GFLAGS),
+
+	/* clk_core_pre gates */
+	GATE(0, "core_dbg", "armclk", 0, RK2928_CLKGATE_CON(9), 0, GFLAGS),
+
+	/* aclk_cpu gates */
+	GATE(ACLK_DMA1, "aclk_dma1", "aclk_cpu", 0, RK2928_CLKGATE_CON(5), 0, GFLAGS),
+	GATE(0, "aclk_intmem", "aclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 12, GFLAGS),
+	GATE(0, "aclk_strc_sys", "aclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 10, GFLAGS),
+
+	/* hclk_cpu gates */
+	GATE(HCLK_ROM, "hclk_rom", "hclk_cpu", 0, RK2928_CLKGATE_CON(5), 6, GFLAGS),
+	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
+	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 1, GFLAGS),
+	GATE(0, "hclk_cpubus", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 8, GFLAGS),
+	/* hclk_ahb2apb is part of a clk branch */
+	GATE(0, "hclk_vio_bus", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 12, GFLAGS),
+	GATE(HCLK_LCDC0, "hclk_lcdc0", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 1, GFLAGS),
+	GATE(HCLK_LCDC1, "hclk_lcdc1", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 2, GFLAGS),
+	GATE(HCLK_CIF0, "hclk_cif0", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 4, GFLAGS),
+	GATE(HCLK_IPP, "hclk_ipp", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 9, GFLAGS),
+	GATE(HCLK_RGA, "hclk_rga", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 10, GFLAGS),
+
+	/* hclk_peri gates */
+	GATE(0, "hclk_peri_axi_matrix", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 0, GFLAGS),
+	GATE(0, "hclk_peri_ahb_arbi", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 6, GFLAGS),
+	GATE(0, "hclk_emem_peri", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 7, GFLAGS),
+	GATE(HCLK_EMAC, "hclk_emac", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 0, GFLAGS),
+	GATE(HCLK_NANDC0, "hclk_nandc0", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 9, GFLAGS),
+	GATE(0, "hclk_usb_peri", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 5, GFLAGS),
+	GATE(HCLK_OTG0, "hclk_usbotg0", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 13, GFLAGS),
+	GATE(HCLK_HSADC, "hclk_hsadc", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 5, GFLAGS),
+	GATE(HCLK_PIDF, "hclk_pidfilter", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 6, GFLAGS),
+	GATE(HCLK_SDMMC, "hclk_sdmmc", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 10, GFLAGS),
+	GATE(HCLK_SDIO, "hclk_sdio", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 11, GFLAGS),
+	GATE(HCLK_EMMC, "hclk_emmc", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 12, GFLAGS),
+
+	/* aclk_lcdc0_pre gates */
+	GATE(0, "aclk_vio0", "aclk_lcdc0_pre", 0, RK2928_CLKGATE_CON(6), 13, GFLAGS),
+	GATE(ACLK_LCDC0, "aclk_lcdc0", "aclk_vio0", 0, RK2928_CLKGATE_CON(6), 0, GFLAGS),
+	GATE(ACLK_CIF0, "aclk_cif0", "aclk_vio0", 0, RK2928_CLKGATE_CON(6), 5, GFLAGS),
+	GATE(ACLK_IPP, "aclk_ipp", "aclk_vio0", 0, RK2928_CLKGATE_CON(6), 8, GFLAGS),
+
+	/* aclk_lcdc1_pre gates */
+	GATE(0, "aclk_vio1", "aclk_lcdc1_pre", 0, RK2928_CLKGATE_CON(9), 5, GFLAGS),
+	GATE(ACLK_LCDC1, "aclk_lcdc1", "aclk_vio1", 0, RK2928_CLKGATE_CON(6), 3, GFLAGS),
+	GATE(ACLK_RGA, "aclk_rga", "aclk_vio1", 0, RK2928_CLKGATE_CON(6), 11, GFLAGS),
+
+	/* atclk_cpu gates */
+	GATE(0, "atclk", "atclk_cpu", 0, RK2928_CLKGATE_CON(9), 3, GFLAGS),
+	GATE(0, "trace", "atclk_cpu", 0, RK2928_CLKGATE_CON(9), 2, GFLAGS),
+
+	/* pclk_cpu gates */
+	GATE(PCLK_PWM01, "pclk_pwm01", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 10, GFLAGS),
+	GATE(PCLK_TIMER0, "pclk_timer0", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 7, GFLAGS),
+	GATE(PCLK_I2C0, "pclk_i2c0", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 4, GFLAGS),
+	GATE(PCLK_I2C1, "pclk_i2c1", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 5, GFLAGS),
+	GATE(PCLK_GPIO0, "pclk_gpio0", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 9, GFLAGS),
+	GATE(PCLK_GPIO1, "pclk_gpio1", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 10, GFLAGS),
+	GATE(PCLK_GPIO2, "pclk_gpio2", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 11, GFLAGS),
+	GATE(PCLK_EFUSE, "pclk_efuse", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 2, GFLAGS),
+	GATE(PCLK_TZPC, "pclk_tzpc", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 3, GFLAGS),
+	GATE(0, "pclk_ddrupctl", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 7, GFLAGS),
+	GATE(0, "pclk_ddrpubl", "pclk_cpu", 0, RK2928_CLKGATE_CON(9), 6, GFLAGS),
+	GATE(0, "pclk_dbg", "pclk_cpu", 0, RK2928_CLKGATE_CON(9), 1, GFLAGS),
+	GATE(PCLK_GRF, "pclk_grf", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 4, GFLAGS),
+	GATE(PCLK_PMU, "pclk_pmu", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 5, GFLAGS),
+
+	/* aclk_peri */
+	GATE(ACLK_DMA2, "aclk_dma2", "aclk_peri", 0, RK2928_CLKGATE_CON(5), 1, GFLAGS),
+	GATE(ACLK_SMC, "aclk_smc", "aclk_peri", 0, RK2928_CLKGATE_CON(5), 8, GFLAGS),
+	GATE(0, "aclk_peri_niu", "aclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 4, GFLAGS),
+	GATE(0, "aclk_cpu_peri", "aclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 2, GFLAGS),
+	GATE(0, "aclk_peri_axi_matrix", "aclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 3, GFLAGS),
+
+	/* pclk_peri gates */
+	GATE(0, "pclk_peri_axi_matrix", "pclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(4), 1, GFLAGS),
+	GATE(PCLK_PWM23, "pclk_pwm23", "pclk_peri", 0, RK2928_CLKGATE_CON(7), 11, GFLAGS),
+	GATE(PCLK_WDT, "pclk_wdt", "pclk_peri", 0, RK2928_CLKGATE_CON(7), 15, GFLAGS),
+	GATE(PCLK_SPI0, "pclk_spi0", "pclk_peri", 0, RK2928_CLKGATE_CON(7), 12, GFLAGS),
+	GATE(PCLK_SPI1, "pclk_spi1", "pclk_peri", 0, RK2928_CLKGATE_CON(7), 13, GFLAGS),
+	GATE(PCLK_UART2, "pclk_uart2", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 2, GFLAGS),
+	GATE(PCLK_UART3, "pclk_uart3", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 3, GFLAGS),
+	GATE(PCLK_I2C2, "pclk_i2c2", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 6, GFLAGS),
+	GATE(PCLK_I2C3, "pclk_i2c3", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 7, GFLAGS),
+	GATE(PCLK_I2C4, "pclk_i2c4", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 8, GFLAGS),
+	GATE(PCLK_GPIO3, "pclk_gpio3", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 12, GFLAGS),
+	GATE(PCLK_SARADC, "pclk_saradc", "pclk_peri", 0, RK2928_CLKGATE_CON(7), 14, GFLAGS),
+};
+
+PNAME(mux_rk3066_lcdc0_p)	= { "dclk_lcdc0_src", "xin27m" };
+PNAME(mux_rk3066_lcdc1_p)	= { "dclk_lcdc1_src", "xin27m" };
+PNAME(mux_sclk_cif1_p)		= { "cif1_pre", "xin24m" };
+PNAME(mux_sclk_i2s1_p)		= { "i2s1_pre", "i2s1_frac", "xin12m" };
+PNAME(mux_sclk_i2s2_p)		= { "i2s2_pre", "i2s2_frac", "xin12m" };
+
+static struct clk_div_table div_aclk_cpu_t[] = {
+	{ .val = 0, .div = 1 },
+	{ .val = 1, .div = 2 },
+	{ .val = 2, .div = 3 },
+	{ .val = 3, .div = 4 },
+	{ .val = 4, .div = 8 },
+	{ /* sentinel */ },
+};
+
+static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
+	DIVTBL(0, "aclk_cpu_pre", "armclk", 0,
+			RK2928_CLKSEL_CON(1), 0, 3, DFLAGS | CLK_DIVIDER_READ_ONLY, div_aclk_cpu_t),
+	DIV(0, "pclk_cpu_pre", "aclk_cpu_pre", 0,
+			RK2928_CLKSEL_CON(1), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO
+							    | CLK_DIVIDER_READ_ONLY),
+	DIV(0, "hclk_cpu_pre", "aclk_cpu_pre", 0,
+			RK2928_CLKSEL_CON(1), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO
+							   | CLK_DIVIDER_READ_ONLY),
+	COMPOSITE_NOMUX(0, "hclk_ahb2apb", "hclk_cpu_pre", 0,
+			RK2928_CLKSEL_CON(1), 14, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO
+							    | CLK_DIVIDER_READ_ONLY,
+			RK2928_CLKGATE_CON(4), 9, GFLAGS),
+
+	GATE(CORE_L2C, "core_l2c", "aclk_cpu", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(9), 4, GFLAGS),
+
+	COMPOSITE(0, "aclk_peri_pre", mux_pll_src_gpll_cpll_p, 0,
+			RK2928_CLKSEL_CON(10), 15, 1, MFLAGS, 0, 5, DFLAGS,
+			RK2928_CLKGATE_CON(2), 0, GFLAGS),
+
+	COMPOSITE(0, "dclk_lcdc0_src", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(27), 0, 1, MFLAGS, 8, 8, DFLAGS,
+			RK2928_CLKGATE_CON(3), 1, GFLAGS),
+	MUX(DCLK_LCDC0, "dclk_lcdc0", mux_rk3066_lcdc0_p, 0,
+			RK2928_CLKSEL_CON(27), 4, 1, MFLAGS),
+	COMPOSITE(0, "dclk_lcdc1_src", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(28), 0, 1, MFLAGS, 8, 8, DFLAGS,
+			RK2928_CLKGATE_CON(3), 2, GFLAGS),
+	MUX(DCLK_LCDC1, "dclk_lcdc1", mux_rk3066_lcdc1_p, 0,
+			RK2928_CLKSEL_CON(28), 4, 1, MFLAGS),
+
+	COMPOSITE_NOMUX(0, "cif1_pre", "cif_src", 0,
+			RK2928_CLKSEL_CON(29), 8, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 8, GFLAGS),
+	MUX(SCLK_CIF1, "sclk_cif1", mux_sclk_cif1_p, 0,
+			RK2928_CLKSEL_CON(29), 15, 1, MFLAGS),
+
+	GATE(0, "pclkin_cif1", "ext_cif1", 0,
+			RK2928_CLKGATE_CON(3), 4, GFLAGS),
+
+	COMPOSITE(0, "aclk_gpu_src", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(33), 8, 1, MFLAGS, 0, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 13, GFLAGS),
+	GATE(ACLK_GPU, "aclk_gpu", "aclk_gpu_src", 0,
+			RK2928_CLKGATE_CON(5), 15, GFLAGS),
+
+	GATE(SCLK_TIMER2, "timer2", "xin24m", 0,
+			RK2928_CLKGATE_CON(3), 2, GFLAGS),
+
+	COMPOSITE_NOMUX(0, "sclk_tsadc", "xin24m", 0,
+			RK2928_CLKSEL_CON(34), 0, 16, DFLAGS,
+			RK2928_CLKGATE_CON(2), 15, GFLAGS),
+
+	MUX(0, "i2s_src", mux_pll_src_gpll_cpll_p, 0,
+			RK2928_CLKSEL_CON(2), 15, 1, MFLAGS),
+	COMPOSITE_NOMUX(0, "i2s0_pre", "i2s_src", 0,
+			RK2928_CLKSEL_CON(2), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(0), 7, GFLAGS),
+	COMPOSITE_FRAC(0, "i2s0_frac", "i2s0_pre", 0,
+			RK2928_CLKSEL_CON(6), 0,
+			RK2928_CLKGATE_CON(0), 8, GFLAGS),
+	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, 0,
+			RK2928_CLKSEL_CON(2), 8, 2, MFLAGS),
+	COMPOSITE_NOMUX(0, "i2s1_pre", "i2s_src", 0,
+			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(0), 9, GFLAGS),
+	COMPOSITE_FRAC(0, "i2s1_frac", "i2s1_pre", 0,
+			RK2928_CLKSEL_CON(7), 0,
+			RK2928_CLKGATE_CON(0), 10, GFLAGS),
+	MUX(SCLK_I2S1, "sclk_i2s1", mux_sclk_i2s1_p, 0,
+			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS),
+	COMPOSITE_NOMUX(0, "i2s2_pre", "i2s_src", 0,
+			RK2928_CLKSEL_CON(4), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(0), 11, GFLAGS),
+	COMPOSITE_FRAC(0, "i2s2_frac", "i2s2_pre", 0,
+			RK2928_CLKSEL_CON(8), 0,
+			RK2928_CLKGATE_CON(0), 12, GFLAGS),
+	MUX(SCLK_I2S2, "sclk_i2s2", mux_sclk_i2s2_p, 0,
+			RK2928_CLKSEL_CON(4), 8, 2, MFLAGS),
+
+	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
+	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
+	GATE(0, "hclk_cif1", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 6, GFLAGS),
+	GATE(0, "hclk_hdmi", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
+
+	GATE(HCLK_OTG1, "hclk_usbotg1", "hclk_peri", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(5), 14, GFLAGS),
+
+	GATE(0, "aclk_cif1", "aclk_vio1", 0, RK2928_CLKGATE_CON(6), 7, GFLAGS),
+
+	GATE(PCLK_TIMER1, "pclk_timer1", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 8, GFLAGS),
+	GATE(PCLK_TIMER2, "pclk_timer2", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 9, GFLAGS),
+	GATE(PCLK_GPIO6, "pclk_gpio6", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 15, GFLAGS),
+	GATE(PCLK_UART0, "pclk_uart0", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 0, GFLAGS),
+	GATE(PCLK_UART1, "pclk_uart1", "pclk_cpu", 0, RK2928_CLKGATE_CON(8), 1, GFLAGS),
+
+	GATE(PCLK_GPIO4, "pclk_gpio4", "pclk_peri", 0, RK2928_CLKGATE_CON(8), 13, GFLAGS),
+	GATE(PCLK_TSADC, "pclk_tsadc", "pclk_peri", 0, RK2928_CLKGATE_CON(4), 13, GFLAGS),
+};
+
+static struct clk_div_table div_rk3188_aclk_core_t[] = {
+	{ .val = 0, .div = 1 },
+	{ .val = 1, .div = 2 },
+	{ .val = 2, .div = 3 },
+	{ .val = 3, .div = 4 },
+	{ .val = 4, .div = 8 },
+	{ /* sentinel */ },
+};
+
+PNAME(mux_hsicphy_p)		= { "sclk_otgphy0", "sclk_otgphy1",
+				    "gpll", "cpll" };
+
+static struct rockchip_clk_branch rk3188_clk_branches[] __initdata = {
+	COMPOSITE_NOMUX_DIVTBL(0, "aclk_core", "armclk", CLK_IGNORE_UNUSED,
+			RK2928_CLKSEL_CON(1), 3, 3, DFLAGS | CLK_DIVIDER_READ_ONLY,
+			div_rk3188_aclk_core_t, RK2928_CLKGATE_CON(0), 7, GFLAGS),
+
+	/* do not source aclk_cpu_pre from the apll, to keep complexity down */
+	COMPOSITE_NOGATE(0, "aclk_cpu_pre", mux_aclk_cpu_p, CLK_SET_RATE_NO_REPARENT,
+			RK2928_CLKSEL_CON(0), 5, 1, MFLAGS, 0, 5, DFLAGS),
+	DIV(0, "pclk_cpu_pre", "aclk_cpu_pre", 0,
+			RK2928_CLKSEL_CON(1), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO),
+	DIV(0, "hclk_cpu_pre", "aclk_cpu_pre", 0,
+			RK2928_CLKSEL_CON(1), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO),
+	COMPOSITE_NOMUX(0, "hclk_ahb2apb", "hclk_cpu_pre", 0,
+			RK2928_CLKSEL_CON(1), 14, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
+			RK2928_CLKGATE_CON(4), 9, GFLAGS),
+
+	GATE(CORE_L2C, "core_l2c", "armclk", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(9), 4, GFLAGS),
+
+	COMPOSITE(0, "aclk_peri_pre", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(10), 15, 1, MFLAGS, 0, 5, DFLAGS,
+			RK2928_CLKGATE_CON(2), 0, GFLAGS),
+
+	COMPOSITE(DCLK_LCDC0, "dclk_lcdc0", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(27), 0, 1, MFLAGS, 8, 8, DFLAGS,
+			RK2928_CLKGATE_CON(3), 1, GFLAGS),
+	COMPOSITE(DCLK_LCDC1, "dclk_lcdc1", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(28), 0, 1, MFLAGS, 8, 8, DFLAGS,
+			RK2928_CLKGATE_CON(3), 2, GFLAGS),
+
+	COMPOSITE(0, "aclk_gpu_src", mux_pll_src_cpll_gpll_p, 0,
+			RK2928_CLKSEL_CON(34), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK2928_CLKGATE_CON(3), 15, GFLAGS),
+	GATE(ACLK_GPU, "aclk_gpu", "aclk_gpu_src", 0,
+			RK2928_CLKGATE_CON(9), 7, GFLAGS),
+
+	GATE(SCLK_TIMER2, "timer2", "xin24m", 0, RK2928_CLKGATE_CON(3), 4, GFLAGS),
+	GATE(SCLK_TIMER3, "timer3", "xin24m", 0, RK2928_CLKGATE_CON(1), 2, GFLAGS),
+	GATE(SCLK_TIMER4, "timer4", "xin24m", 0, RK2928_CLKGATE_CON(3), 5, GFLAGS),
+	GATE(SCLK_TIMER5, "timer5", "xin24m", 0, RK2928_CLKGATE_CON(3), 8, GFLAGS),
+	GATE(SCLK_TIMER6, "timer6", "xin24m", 0, RK2928_CLKGATE_CON(3), 14, GFLAGS),
+
+	COMPOSITE_NODIV(0, "sclk_hsicphy_480m", mux_hsicphy_p, 0,
+			RK2928_CLKSEL_CON(30), 0, 2, DFLAGS,
+			RK2928_CLKGATE_CON(3), 6, GFLAGS),
+	DIV(0, "sclk_hsicphy_12m", "sclk_hsicphy_480m", 0,
+			RK2928_CLKSEL_CON(11), 8, 6, DFLAGS),
+
+	MUX(0, "i2s_src", mux_pll_src_gpll_cpll_p, 0,
+			RK2928_CLKSEL_CON(2), 15, 1, MFLAGS),
+	COMPOSITE_NOMUX(0, "i2s0_pre", "i2s_src", 0,
+			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
+			RK2928_CLKGATE_CON(0), 9, GFLAGS),
+	COMPOSITE_FRAC(0, "i2s0_frac", "i2s0_pre", 0,
+			RK2928_CLKSEL_CON(7), 0,
+			RK2928_CLKGATE_CON(0), 10, GFLAGS),
+	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, 0,
+			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS),
+
+	GATE(0, "hclk_imem0", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
+	GATE(0, "hclk_imem1", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 15, GFLAGS),
+
+	GATE(HCLK_OTG1, "hclk_usbotg1", "hclk_peri", CLK_IGNORE_UNUSED,
+			RK2928_CLKGATE_CON(7), 3, GFLAGS),
+	GATE(HCLK_HSIC, "hclk_hsic", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
+
+	GATE(PCLK_TIMER3, "pclk_timer3", "pclk_cpu", 0, RK2928_CLKGATE_CON(7), 9, GFLAGS),
+
+	GATE(PCLK_UART0, "pclk_uart0", "hclk_ahb2apb", 0, RK2928_CLKGATE_CON(8), 0, GFLAGS),
+	GATE(PCLK_UART1, "pclk_uart1", "hclk_ahb2apb", 0, RK2928_CLKGATE_CON(8), 1, GFLAGS),
+
+	GATE(ACLK_GPS, "aclk_gps", "aclk_peri", 0, RK2928_CLKGATE_CON(8), 13, GFLAGS),
+};
+
+static const char *rk3188_critical_clocks[] __initconst = {
+	"aclk_cpu",
+	"aclk_peri",
+	"hclk_peri",
+};
+
+
+static void __init rockchip_reparent_clk(char *clock, char *new_parent)
+{
+	struct clk *clk1, *clk2;
+	unsigned long rate;
+	int ret;
+
+	clk1 = __clk_lookup(clock);
+	clk2 = __clk_lookup(new_parent);
+	if (!IS_ERR(clk1) && !IS_ERR(clk2)) {
+		rate = clk_get_rate(clk1);
+
+		ret = clk_set_parent(clk1, clk2);
+		if (ret < 0)
+			pr_err("%s: could not reparent %s to %s, ret=%d\n",
+				__func__, clock, new_parent, ret);
+
+		clk_set_rate(clk1, rate);
+	} else {
+		pr_err("%s: missing clocks to reparent %s to %s\n",
+			__func__, clock, new_parent);
+	}
+}
+
+static void __init rockchip_clk_set_rate(char *clock, unsigned long rate)
+{
+	struct clk *clk;
+
+	clk = __clk_lookup(clock);
+	if(clk && !IS_ERR(clk)) {
+		clk_set_rate(clk, rate);
+		return;
+	}
+	pr_err("%s: missing clock %s when setting initial rate to %lu\n",
+		__func__, clock, rate);
+}
+
+static void __init rockchip_clk_set_defaults(void)
+{
+	struct rockchip_initial_rate {
+		char *name;
+		unsigned long rate;
+	};
+	int i;
+
+	struct rockchip_initial_rate rates[] = {
+		{"gpll", 891000000},
+		{"cpll", 600000000},
+		{"aclk_cpu", 300000000},
+		{"hclk_cpu", 150000000},
+		{"pclk_cpu", 75000000},
+		{"hclk_ahb2apb", 75000000},
+		{"aclk_peri_pre", 150000000},
+		{"hclk_peri", 150000000},
+		{"pclk_peri", 75000000},
+	};
+
+	rockchip_reparent_clk("aclk_cpu_pre", "gpll");
+	rockchip_reparent_clk("mac_src", "dpll");
+	rockchip_reparent_clk("aclk_peri_pre", "cpll");
+
+	for(i = 0; i < ARRAY_SIZE(rates); i++)
+		rockchip_clk_set_rate(rates[i].name, rates[i].rate);
+}
+
+static void __init rk3188_common_clk_init(struct device_node *np)
+{
+	void __iomem *reg_base;
+	struct clk *clk;
+
+	reg_base = of_iomap(np, 0);
+	if (!reg_base) {
+		pr_err("%s: could not map cru region\n", __func__);
+		return;
+	}
+
+	rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+
+	/* Fixed-clock should be registered before all others */
+	clk=clk_fixed("xin24m",24000000);
+	if (IS_ERR(clk))
+		pr_warn("%s: could not register clock xin24m: %ld\n",
+			__func__, PTR_ERR(clk));
+
+	/* xin12m is created by an cru-internal divider */
+	clk = clk_fixed_factor("xin12m", "xin24m", 1, 2, 0);
+	if (IS_ERR(clk))
+		pr_warn("%s: could not register clock xin12m: %ld\n",
+			__func__, PTR_ERR(clk));
+
+	clk = clk_fixed_factor("usb480m", "xin24m", 20, 1, 0);
+	if (IS_ERR(clk))
+		pr_warn("%s: could not register clock usb480m: %ld\n",
+			__func__, PTR_ERR(clk));
+
+	rockchip_clk_register_branches(common_clk_branches,
+				  ARRAY_SIZE(common_clk_branches));
+	rockchip_clk_protect_critical(rk3188_critical_clocks,
+				      ARRAY_SIZE(rk3188_critical_clocks));
+}
+
+static void __init rk3066a_clk_init(struct device_node *np)
+{
+	rk3188_common_clk_init(np);
+	rockchip_clk_register_plls(rk3066_pll_clks,
+				   ARRAY_SIZE(rk3066_pll_clks),
+				   RK3066_GRF_SOC_STATUS);
+	rockchip_clk_register_branches(rk3066a_clk_branches,
+				  ARRAY_SIZE(rk3066a_clk_branches));
+	rockchip_clk_register_armclk(ARMCLK, "armclk",
+			mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
+			&rk3066_cpuclk_data, rk3066_cpuclk_rates,
+			ARRAY_SIZE(rk3066_cpuclk_rates));
+}
+CLK_OF_DECLARE(rk3066a_cru, "rockchip,rk3066a-cru", rk3066a_clk_init);
+
+static void __init rk3188a_clk_init(struct device_node *np)
+{
+	rk3188_common_clk_init(np);
+	rockchip_clk_register_plls(rk3188_pll_clks,
+				   ARRAY_SIZE(rk3188_pll_clks),
+				   RK3188_GRF_SOC_STATUS);
+	rockchip_clk_register_branches(rk3188_clk_branches,
+				  ARRAY_SIZE(rk3188_clk_branches));
+	rockchip_clk_register_armclk(ARMCLK, "armclk",
+				  mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
+				  &rk3188_cpuclk_data, rk3188_cpuclk_rates,
+				  ARRAY_SIZE(rk3188_cpuclk_rates));
+
+	rockchip_clk_set_defaults();
+}
+CLK_OF_DECLARE(rk3188a_cru, "rockchip,rk3188a-cru", rk3188a_clk_init);
+
+static void __init rk3188_clk_init(struct device_node *np)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(rk3188_pll_clks); i++) {
+		struct rockchip_pll_clock *pll = &rk3188_pll_clks[i];
+		struct rockchip_pll_rate_table *rate;
+
+		if (!pll->rate_table)
+			continue;
+
+		rate = pll->rate_table;
+		while (rate->rate > 0) {
+			rate->bwadj = 0;
+			rate++;
+		}
+	}
+
+	rk3188a_clk_init(np);
+}
+CLK_OF_DECLARE(rk3188_cru, "rockchip,rk3188-cru", rk3188_clk_init);
diff --git a/drivers/clk/rockchip/clk-rockchip.c b/drivers/clk/rockchip/clk-rockchip.c
deleted file mode 100644
index 99f836c..0000000
--- a/drivers/clk/rockchip/clk-rockchip.c
+++ /dev/null
@@ -1,86 +0,0 @@
-/*
- * Clock gate driver for Rockchip SoCs
- *
- * Based on Linux driver:
- *   Copyright (c) 2013 MundoReader S.L.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <of_address.h>
-#include <malloc.h>
-
-static void __init rk2928_gate_clk_init(struct device_node *node)
-{
-	struct clk_onecell_data *clk_data;
-	const char *clk_parent;
-	const char *clk_name;
-	void __iomem *reg;
-	void __iomem *reg_idx;
-	int flags;
-	int qty;
-	int reg_bit;
-	int clkflags = CLK_SET_RATE_PARENT;
-	int i;
-
-	qty = of_property_count_strings(node, "clock-output-names");
-	if (qty < 0) {
-		pr_err("%s: error in clock-output-names %d\n", __func__, qty);
-		return;
-	}
-
-	if (qty == 0) {
-		pr_info("%s: nothing to do\n", __func__);
-		return;
-	}
-
-	reg = of_iomap(node, 0);
-
-	clk_data = kzalloc(sizeof(struct clk_onecell_data), GFP_KERNEL);
-	if (!clk_data)
-		return;
-
-	clk_data->clks = kzalloc(qty * sizeof(struct clk *), GFP_KERNEL);
-	if (!clk_data->clks) {
-		kfree(clk_data);
-		return;
-	}
-
-	flags = CLK_GATE_HIWORD_MASK | CLK_GATE_INVERTED;
-
-	for (i = 0; i < qty; i++) {
-		of_property_read_string_index(node, "clock-output-names",
-					      i, &clk_name);
-
-		/* ignore empty slots */
-		if (!strcmp("reserved", clk_name))
-			continue;
-
-		clk_parent = of_clk_get_parent_name(node, i);
-
-		reg_idx = reg + 4 * (i / 16);
-		reg_bit = i % 16;
-
-		clk_data->clks[i] = clk_gate(clk_name, clk_parent, reg_idx,
-					     reg_bit, clkflags, flags);
-		WARN_ON(IS_ERR(clk_data->clks[i]));
-	}
-
-	clk_data->clk_num = qty;
-
-	of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
-}
-CLK_OF_DECLARE(rk2928_gate, "rockchip,rk2928-gate-clk", rk2928_gate_clk_init);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
new file mode 100644
index 0000000..3222a4e
--- /dev/null
+++ b/drivers/clk/rockchip/clk.c
@@ -0,0 +1,279 @@
+/*
+ * Copyright (c) 2014 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * based on
+ *
+ * samsung/clk.c
+ * Copyright (c) 2013 Samsung Electronics Co., Ltd.
+ * Copyright (c) 2013 Linaro Ltd.
+ * Author: Thomas Abraham <thomas.ab@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+#include "clk.h"
+#include <init.h>
+
+/**
+ * Register a clock branch.
+ * Most clock branches have a form like
+ *
+ * src1 --|--\
+ *        |M |--[GATE]-[DIV]-
+ * src2 --|--/
+ *
+ * sometimes without one of those components.
+ */
+static struct clk *rockchip_clk_register_branch(const char *name,
+		const char **parent_names, u8 num_parents, void __iomem *base,
+		int muxdiv_offset, u8 mux_shift, u8 mux_width, u8 mux_flags,
+		u8 div_shift, u8 div_width, u8 div_flags,
+		struct clk_div_table *div_table, int gate_offset,
+		u8 gate_shift, u8 gate_flags, unsigned long flags
+		)
+{
+	struct clk *clk;
+	struct clk *mux = NULL;
+	struct clk *gate = NULL;
+	struct clk *div = NULL;
+
+	if (num_parents > 1) {
+		mux = clk_mux_alloc(name, base + muxdiv_offset, mux_shift,
+		    mux_width, parent_names, num_parents, mux_flags);
+		if (!mux)
+			return ERR_PTR(-ENOMEM);
+	}
+
+	if (gate_offset >= 0) {
+		gate = clk_gate_alloc(name, *parent_names, base + gate_offset,
+		    gate_shift, flags, gate_flags);
+		if (!gate)
+			return ERR_PTR(-ENOMEM);
+	}
+
+	if (div_width > 0) {
+		div = clk_divider_alloc(name, *parent_names,
+		    base + muxdiv_offset, div_shift, div_width, div_flags);
+		if (!div)
+			return ERR_PTR(-ENOMEM);
+	}
+
+	clk = clk_register_composite(name, parent_names, num_parents,
+				     mux,
+				     div,
+				     gate,
+				     flags);
+
+	return clk;
+}
+
+static struct clk *rockchip_clk_register_frac_branch(const char *name,
+		const char **parent_names, u8 num_parents, void __iomem *base,
+		int muxdiv_offset, u8 div_flags,
+		int gate_offset, u8 gate_shift, u8 gate_flags,
+		unsigned long flags)
+{
+	struct clk *clk;
+	struct clk *gate = NULL;
+	struct clk *div = NULL;
+
+	if (gate_offset >= 0) {
+		gate = clk_gate_alloc(name, *parent_names, base + gate_offset,
+		    gate_shift, flags, gate_flags);
+		if (!gate)
+			return ERR_PTR(-ENOMEM);
+	}
+
+	if (muxdiv_offset < 0)
+		return ERR_PTR(-EINVAL);
+
+	div = clk_fractional_divider_alloc(name, *parent_names, flags,
+		     base + muxdiv_offset, 16, 16, 0, 16, div_flags);
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	clk = clk_register_composite(name, parent_names, num_parents,
+				     NULL,
+				     div,
+				     gate,
+				     flags);
+
+	return clk;
+}
+
+static struct clk **clk_table;
+static void __iomem *reg_base;
+static struct clk_onecell_data clk_data;
+static struct device_node *cru_node;
+
+void __init rockchip_clk_init(struct device_node *np, void __iomem *base,
+			      unsigned long nr_clks)
+{
+	reg_base = base;
+	cru_node = np;
+
+	clk_table = calloc(nr_clks, sizeof(struct clk *));
+	if (!clk_table)
+		pr_err("%s: could not allocate clock lookup table\n", __func__);
+
+	clk_data.clks = clk_table;
+	clk_data.clk_num = nr_clks;
+	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+}
+
+void rockchip_clk_add_lookup(struct clk *clk, unsigned int id)
+{
+	if (clk_table && id)
+		clk_table[id] = clk;
+}
+
+void __init rockchip_clk_register_plls(struct rockchip_pll_clock *list,
+				unsigned int nr_pll, int grf_lock_offset)
+{
+	struct clk *clk;
+	int idx;
+
+	for (idx = 0; idx < nr_pll; idx++, list++) {
+		clk = rockchip_clk_register_pll(list->type, list->name,
+				list->parent_names, list->num_parents,
+				reg_base, list->con_offset, grf_lock_offset,
+				list->lock_shift, list->mode_offset,
+				list->mode_shift, list->rate_table,
+				list->pll_flags);
+		if (IS_ERR(clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+				list->name);
+			continue;
+		}
+
+		rockchip_clk_add_lookup(clk, list->id);
+	}
+}
+
+void __init rockchip_clk_register_branches(
+				      struct rockchip_clk_branch *list,
+				      unsigned int nr_clk)
+{
+	struct clk *clk = NULL;
+	unsigned int idx;
+	unsigned long flags;
+
+	for (idx = 0; idx < nr_clk; idx++, list++) {
+		flags = list->flags;
+
+		/* catch simple muxes */
+		switch (list->branch_type) {
+		case branch_mux:
+			/*
+			 * mux_flags and flags are ored, this is safe,
+			 * since there is no value clash, but isn't that elegant
+			 */
+			clk = clk_mux(list->name,
+			    reg_base + list->muxdiv_offset, list->mux_shift,
+			    list->mux_width, list->parent_names,
+			    list->num_parents, list->mux_flags | flags);
+			break;
+		case branch_divider:
+			if (list->div_table)
+				clk = clk_divider_table(list->name,
+				    list->parent_names[0],
+				    reg_base + list->muxdiv_offset,
+				    list->div_shift, list->div_width,
+				    list->div_table, list->div_flags);
+			else
+				clk = clk_divider(list->name,
+				    list->parent_names[0],
+				    reg_base + list->muxdiv_offset,
+				    list->div_shift, list->div_width,
+				    list->div_flags);
+			break;
+		case branch_fraction_divider:
+			clk = rockchip_clk_register_frac_branch(list->name,
+				list->parent_names, list->num_parents,
+				reg_base, list->muxdiv_offset, list->div_flags,
+				list->gate_offset, list->gate_shift,
+				list->gate_flags, flags);
+			break;
+		case branch_gate:
+			flags |= CLK_SET_RATE_PARENT;
+
+			clk = clk_gate(list->name, list->parent_names[0],
+			    reg_base + list->gate_offset, list->gate_shift,
+			    flags, list->gate_flags);
+			break;
+		case branch_composite:
+			clk = rockchip_clk_register_branch(list->name,
+				list->parent_names, list->num_parents,
+				reg_base, list->muxdiv_offset, list->mux_shift,
+				list->mux_width, list->mux_flags,
+				list->div_shift, list->div_width,
+				list->div_flags, list->div_table,
+				list->gate_offset, list->gate_shift,
+				list->gate_flags, flags);
+			break;
+		case branch_mmc:
+			break;
+		}
+
+		/* none of the cases above matched */
+		if (!clk) {
+			pr_err("%s: unknown clock type %d\n",
+			       __func__, list->branch_type);
+			continue;
+		}
+
+		if (IS_ERR(clk)) {
+			pr_err("%s: failed to register clock %s: %ld\n",
+			       __func__, list->name, PTR_ERR(clk));
+			continue;
+		}
+
+		rockchip_clk_add_lookup(clk, list->id);
+	}
+}
+
+void __init rockchip_clk_register_armclk(unsigned int lookup_id,
+			const char *name, const char **parent_names,
+			u8 num_parents,
+			const struct rockchip_cpuclk_reg_data *reg_data,
+			const struct rockchip_cpuclk_rate_table *rates,
+			int nrates)
+{
+	struct clk *clk;
+
+	clk = rockchip_clk_register_cpuclk(name, parent_names, num_parents,
+					   reg_data, rates, nrates, reg_base
+					   );
+	if (IS_ERR(clk)) {
+		pr_err("%s: failed to register clock %s: %ld\n",
+		       __func__, name, PTR_ERR(clk));
+		return;
+	}
+
+	rockchip_clk_add_lookup(clk, lookup_id);
+}
+
+void __init rockchip_clk_protect_critical(const char *clocks[], int nclocks)
+{
+	int i;
+
+	/* Protect the clocks that needs to stay on */
+	for (i = 0; i < nclocks; i++) {
+		struct clk *clk = __clk_lookup(clocks[i]);
+
+		if (clk)
+			clk_enable(clk);
+	}
+}
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
new file mode 100644
index 0000000..aa52638
--- /dev/null
+++ b/drivers/clk/rockchip/clk.h
@@ -0,0 +1,416 @@
+/*
+ * Copyright (c) 2014 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * based on
+ *
+ * samsung/clk.h
+ * Copyright (c) 2013 Samsung Electronics Co., Ltd.
+ * Copyright (c) 2013 Linaro Ltd.
+ * Author: Thomas Abraham <thomas.ab@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef CLK_ROCKCHIP_CLK_H
+#define CLK_ROCKCHIP_CLK_H
+
+#include <io.h>
+#include <linux/clk.h>
+
+/* To keep changes from kernel smaller */
+#define CLK_IGNORE_UNUSED 0
+#define CLK_GATE_SET_TO_DISABLE	CLK_GATE_INVERTED
+#define CLK_GET_RATE_NOCACHE 0
+
+#define HIWORD_UPDATE(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
+
+/* register positions shared by RK2928, RK3066 and RK3188 */
+#define RK2928_PLL_CON(x)		(x * 0x4)
+#define RK2928_MODE_CON		0x40
+#define RK2928_CLKSEL_CON(x)	(x * 0x4 + 0x44)
+#define RK2928_CLKGATE_CON(x)	(x * 0x4 + 0xd0)
+#define RK2928_GLB_SRST_FST		0x100
+#define RK2928_GLB_SRST_SND		0x104
+#define RK2928_SOFTRST_CON(x)	(x * 0x4 + 0x110)
+#define RK2928_MISC_CON		0x134
+
+#define RK3288_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3288_MODE_CON			0x50
+#define RK3288_CLKSEL_CON(x)		(x * 0x4 + 0x60)
+#define RK3288_CLKGATE_CON(x)		(x * 0x4 + 0x160)
+#define RK3288_GLB_SRST_FST		0x1b0
+#define RK3288_GLB_SRST_SND		0x1b4
+#define RK3288_SOFTRST_CON(x)		(x * 0x4 + 0x1b8)
+#define RK3288_MISC_CON			0x1e8
+#define RK3288_SDMMC_CON0		0x200
+#define RK3288_SDMMC_CON1		0x204
+#define RK3288_SDIO0_CON0		0x208
+#define RK3288_SDIO0_CON1		0x20c
+#define RK3288_SDIO1_CON0		0x210
+#define RK3288_SDIO1_CON1		0x214
+#define RK3288_EMMC_CON0		0x218
+#define RK3288_EMMC_CON1		0x21c
+
+enum rockchip_pll_type {
+	pll_rk3066,
+};
+
+#define RK3066_PLL_RATE(_rate, _nr, _nf, _no)	\
+{						\
+	.rate	= _rate##U,			\
+	.nr = _nr,				\
+	.nf = _nf,				\
+	.no = _no,				\
+	.bwadj = (_nf >> 1),			\
+}
+
+#define RK3066_PLL_RATE_BWADJ(_rate, _nr, _nf, _no, _bw)	\
+{								\
+	.rate	= _rate##U,					\
+	.nr = _nr,						\
+	.nf = _nf,						\
+	.no = _no,						\
+	.bwadj = _bw,						\
+}
+
+struct rockchip_pll_rate_table {
+	unsigned long rate;
+	unsigned int nr;
+	unsigned int nf;
+	unsigned int no;
+	unsigned int bwadj;
+};
+
+/**
+ * struct rockchip_pll_clock: information about pll clock
+ * @id: platform specific id of the clock.
+ * @name: name of this pll clock.
+ * @parent_name: name of the parent clock.
+ * @flags: optional flags for basic clock.
+ * @con_offset: offset of the register for configuring the PLL.
+ * @mode_offset: offset of the register for configuring the PLL-mode.
+ * @mode_shift: offset inside the mode-register for the mode of this pll.
+ * @lock_shift: offset inside the lock register for the lock status.
+ * @type: Type of PLL to be registered.
+ * @pll_flags: hardware-specific flags
+ * @rate_table: Table of usable pll rates
+ *
+ * Flags:
+ * ROCKCHIP_PLL_SYNC_RATE - check rate parameters to match against the
+ *	rate_table parameters and ajust them if necessary.
+ */
+struct rockchip_pll_clock {
+	unsigned int		id;
+	const char		*name;
+	const char		**parent_names;
+	u8			num_parents;
+	unsigned long		flags;
+	int			con_offset;
+	int			mode_offset;
+	int			mode_shift;
+	int			lock_shift;
+	enum rockchip_pll_type	type;
+	u8			pll_flags;
+	struct rockchip_pll_rate_table *rate_table;
+};
+
+#define ROCKCHIP_PLL_SYNC_RATE		BIT(0)
+
+#define PLL(_type, _id, _name, _pnames, _flags, _con, _mode, _mshift,	\
+		_lshift, _pflags, _rtable)				\
+	{								\
+		.id		= _id,					\
+		.type		= _type,				\
+		.name		= _name,				\
+		.parent_names	= _pnames,				\
+		.num_parents	= ARRAY_SIZE(_pnames),			\
+		.flags		= CLK_GET_RATE_NOCACHE | _flags,	\
+		.con_offset	= _con,					\
+		.mode_offset	= _mode,				\
+		.mode_shift	= _mshift,				\
+		.lock_shift	= _lshift,				\
+		.pll_flags	= _pflags,				\
+		.rate_table	= _rtable,				\
+	}
+
+struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
+		const char *name, const char **parent_names, u8 num_parents,
+		void __iomem *base, int con_offset, int grf_lock_offset,
+		int lock_shift, int reg_mode, int mode_shift,
+		struct rockchip_pll_rate_table *rate_table,
+		u8 clk_pll_flags);
+
+struct rockchip_cpuclk_clksel {
+	int reg;
+	u32 val;
+};
+
+#define ROCKCHIP_CPUCLK_NUM_DIVIDERS	2
+struct rockchip_cpuclk_rate_table {
+	unsigned long prate;
+	struct rockchip_cpuclk_clksel divs[ROCKCHIP_CPUCLK_NUM_DIVIDERS];
+};
+
+/**
+ * struct rockchip_cpuclk_reg_data: describes register offsets and masks of the cpuclock
+ * @core_reg:		register offset of the core settings register
+ * @div_core_shift:	core divider offset used to divide the pll value
+ * @div_core_mask:	core divider mask
+ * @mux_core_shift:	offset of the core multiplexer
+ */
+struct rockchip_cpuclk_reg_data {
+	int		core_reg;
+	u8		div_core_shift;
+	u32		div_core_mask;
+	int		mux_core_reg;
+	u8		mux_core_shift;
+};
+
+struct clk *rockchip_clk_register_cpuclk(const char *name,
+			const char **parent_names, u8 num_parents,
+			const struct rockchip_cpuclk_reg_data *reg_data,
+			const struct rockchip_cpuclk_rate_table *rates,
+			int nrates, void __iomem *reg_base);
+
+struct clk *rockchip_clk_register_mmc(const char *name,
+				const char **parent_names, u8 num_parents,
+				void __iomem *reg, int shift);
+
+#define PNAME(x) static const char *x[] __initconst
+
+enum rockchip_clk_branch_type {
+	branch_composite,
+	branch_mux,
+	branch_divider,
+	branch_fraction_divider,
+	branch_gate,
+	branch_mmc,
+};
+
+struct rockchip_clk_branch {
+	unsigned int			id;
+	enum rockchip_clk_branch_type	branch_type;
+	const char			*name;
+	const char			**parent_names;
+	u8				num_parents;
+	unsigned long			flags;
+	int				muxdiv_offset;
+	u8				mux_shift;
+	u8				mux_width;
+	u8				mux_flags;
+	u8				div_shift;
+	u8				div_width;
+	u8				div_flags;
+	struct clk_div_table		*div_table;
+	int				gate_offset;
+	u8				gate_shift;
+	u8				gate_flags;
+};
+
+#define COMPOSITE(_id, cname, pnames, f, mo, ms, mw, mf, ds, dw,\
+		  df, go, gs, gf)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
+#define COMPOSITE_NOMUX(_id, cname, pname, f, mo, ds, dw, df,	\
+			go, gs, gf)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
+#define COMPOSITE_NOMUX_DIVTBL(_id, cname, pname, f, mo, ds, dw,\
+			       df, dt, go, gs, gf)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.div_table	= dt,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
+#define COMPOSITE_NODIV(_id, cname, pnames, f, mo, ms, mw, mf,	\
+			go, gs, gf)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
+#define COMPOSITE_NOGATE(_id, cname, pnames, f, mo, ms, mw, mf,	\
+			 ds, dw, df)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= -1,				\
+	}
+
+#define COMPOSITE_FRAC(_id, cname, pname, f, mo, df, go, gs, gf)\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_fraction_divider,	\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= 16,				\
+		.div_width	= 16,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
+#define MUX(_id, cname, pnames, f, o, s, w, mf)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_mux,			\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.mux_shift	= s,				\
+		.mux_width	= w,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= -1,				\
+	}
+
+#define DIV(_id, cname, pname, f, o, s, w, df)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_divider,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.div_shift	= s,				\
+		.div_width	= w,				\
+		.div_flags	= df,				\
+		.gate_offset	= -1,				\
+	}
+
+#define DIVTBL(_id, cname, pname, f, o, s, w, df, dt)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_divider,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.div_shift	= s,				\
+		.div_width	= w,				\
+		.div_flags	= df,				\
+		.div_table	= dt,				\
+	}
+
+#define GATE(_id, cname, pname, f, o, b, gf)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_gate,			\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.gate_offset	= o,				\
+		.gate_shift	= b,				\
+		.gate_flags	= gf,				\
+	}
+
+#define MMC(_id, cname, pname, offset, shift)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_mmc,			\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.muxdiv_offset	= offset,			\
+		.div_shift	= shift,			\
+	}
+
+void rockchip_clk_init(struct device_node *np, void __iomem *base,
+		       unsigned long nr_clks);
+struct regmap *rockchip_clk_get_grf(void);
+void rockchip_clk_add_lookup(struct clk *clk, unsigned int id);
+void rockchip_clk_register_branches(struct rockchip_clk_branch *clk_list,
+				    unsigned int nr_clk);
+void rockchip_clk_register_plls(struct rockchip_pll_clock *pll_list,
+				unsigned int nr_pll, int grf_lock_offset);
+void rockchip_clk_register_armclk(unsigned int lookup_id, const char *name,
+			const char **parent_names, u8 num_parents,
+			const struct rockchip_cpuclk_reg_data *reg_data,
+			const struct rockchip_cpuclk_rate_table *rates,
+			int nrates);
+void rockchip_clk_protect_critical(const char *clocks[], int nclocks);
+
+#endif
diff --git a/include/init.h b/include/init.h
index 976f643..40cea55 100644
--- a/include/init.h
+++ b/include/init.h
@@ -6,6 +6,7 @@
  */
 #define __init
 #define __initdata
+#define __initconst
 
 /* For assembly routines */
 #define __BARE_INIT	.section ".text_bare_init.text","ax"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
