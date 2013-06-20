Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g4-55
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:55:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:08 +0200
Message-Id: <1371711261-10039-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/17] ARM: MXS: Add MXS specific clk types
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

MXS needs some special MXS specific clock types:

- pll
- ref (fractional divider)
- busy divider (divider with additional busy bit to poll on a rate change)
- lcdif (Combined clock out of a fractional divider, a divider and a gate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig            |   2 +
 drivers/clk/Makefile        |   2 +
 drivers/clk/mxs/Makefile    |   2 +
 drivers/clk/mxs/clk-div.c   | 112 ++++++++++++++++++++++++++++++++
 drivers/clk/mxs/clk-frac.c  | 136 +++++++++++++++++++++++++++++++++++++++
 drivers/clk/mxs/clk-lcdif.c |  75 ++++++++++++++++++++++
 drivers/clk/mxs/clk-pll.c   | 117 ++++++++++++++++++++++++++++++++++
 drivers/clk/mxs/clk-ref.c   | 152 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/mxs/clk.h       |  52 +++++++++++++++
 9 files changed, 650 insertions(+)
 create mode 100644 drivers/clk/mxs/Makefile
 create mode 100644 drivers/clk/mxs/clk-div.c
 create mode 100644 drivers/clk/mxs/clk-frac.c
 create mode 100644 drivers/clk/mxs/clk-lcdif.c
 create mode 100644 drivers/clk/mxs/clk-pll.c
 create mode 100644 drivers/clk/mxs/clk-ref.c
 create mode 100644 drivers/clk/mxs/clk.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cfb82b0..af5d8cd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -88,6 +88,8 @@ config ARCH_MVEBU
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
 	select GENERIC_GPIO
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
 
 config ARCH_NETX
 	bool "Hilscher NetX based"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 656b859..d6c923d 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,3 +1,5 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-divider-table.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
+
+obj-$(CONFIG_ARCH_MXS)		+= mxs/
diff --git a/drivers/clk/mxs/Makefile b/drivers/clk/mxs/Makefile
new file mode 100644
index 0000000..8b1173d
--- /dev/null
+++ b/drivers/clk/mxs/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_ARCH_MXS) += clk-ref.o clk-pll.o clk-frac.o clk-div.o
+obj-$(CONFIG_DRIVER_VIDEO_STM) += clk-lcdif.o
diff --git a/drivers/clk/mxs/clk-div.c b/drivers/clk/mxs/clk-div.c
new file mode 100644
index 0000000..e8dae25
--- /dev/null
+++ b/drivers/clk/mxs/clk-div.c
@@ -0,0 +1,112 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+/**
+ * struct clk_div - mxs integer divider clock
+ * @divider: the parent class
+ * @ops: pointer to clk_ops of parent class
+ * @reg: register address
+ * @busy: busy bit shift
+ *
+ * The mxs divider clock is a subclass of basic clk_divider with an
+ * addtional busy bit.
+ */
+struct clk_div {
+	struct clk_divider divider;
+	const char *parent;
+	const struct clk_ops *ops;
+	void __iomem *reg;
+	u8 busy;
+};
+
+static inline struct clk_div *to_clk_div(struct clk *clk)
+{
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+
+	return container_of(divider, struct clk_div, divider);
+}
+
+static unsigned long clk_div_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct clk_div *div = to_clk_div(clk);
+
+	return div->ops->recalc_rate(&div->divider.clk, parent_rate);
+}
+
+static long clk_div_round_rate(struct clk *clk, unsigned long rate,
+			       unsigned long *prate)
+{
+	struct clk_div *div = to_clk_div(clk);
+
+	return div->ops->round_rate(&div->divider.clk, rate, prate);
+}
+
+static int clk_div_set_rate(struct clk *clk, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_div *div = to_clk_div(clk);
+	int ret;
+
+	ret = div->ops->set_rate(&div->divider.clk, rate, parent_rate);
+	if (ret)
+		return ret;
+
+	if (clk_is_enabled(clk))
+		while (readl(div->reg) & 1 << div->busy);
+
+	return 0;
+}
+
+static struct clk_ops clk_div_ops = {
+	.recalc_rate = clk_div_recalc_rate,
+	.round_rate = clk_div_round_rate,
+	.set_rate = clk_div_set_rate,
+};
+
+struct clk *mxs_clk_div(const char *name, const char *parent_name,
+			void __iomem *reg, u8 shift, u8 width, u8 busy)
+{
+	struct clk_div *div;
+	int ret;
+
+	div = xzalloc(sizeof(*div));
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	div->parent = parent_name;
+	div->divider.clk.name = name;
+	div->divider.clk.ops = &clk_div_ops;
+	div->divider.clk.parent_names = &div->parent;
+	div->divider.clk.num_parents = 1;
+
+	div->reg = reg;
+	div->busy = busy;
+
+	div->divider.reg = reg;
+	div->divider.shift = shift;
+	div->divider.width = width;
+	div->divider.flags = CLK_DIVIDER_ONE_BASED;
+	div->ops = &clk_divider_ops;
+
+	ret = clk_register(&div->divider.clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &div->divider.clk;
+}
diff --git a/drivers/clk/mxs/clk-frac.c b/drivers/clk/mxs/clk-frac.c
new file mode 100644
index 0000000..7aa8504
--- /dev/null
+++ b/drivers/clk/mxs/clk-frac.c
@@ -0,0 +1,136 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+/**
+ * struct clk_frac - mxs fractional divider clock
+ * @hw: clk_hw for the fractional divider clock
+ * @reg: register address
+ * @shift: the divider bit shift
+ * @width: the divider bit width
+ * @busy: busy bit shift
+ *
+ * The clock is an adjustable fractional divider with a busy bit to wait
+ * when the divider is adjusted.
+ */
+struct clk_frac {
+	struct clk clk;
+	const char *parent;
+	void __iomem *reg;
+	u8 shift;
+	u8 width;
+	u8 busy;
+};
+
+#define to_clk_frac(_hw) container_of(_hw, struct clk_frac, clk)
+
+static unsigned long clk_frac_recalc_rate(struct clk *clk,
+					  unsigned long parent_rate)
+{
+	struct clk_frac *frac = to_clk_frac(clk);
+	u32 div;
+
+	div = readl(frac->reg) >> frac->shift;
+	div &= (1 << frac->width) - 1;
+
+	return (parent_rate >> frac->width) * div;
+}
+
+static long clk_frac_round_rate(struct clk *clk, unsigned long rate,
+				unsigned long *prate)
+{
+	struct clk_frac *frac = to_clk_frac(clk);
+	unsigned long parent_rate = *prate;
+	u32 div;
+	u64 tmp;
+
+	if (rate > parent_rate)
+		return -EINVAL;
+
+	tmp = rate;
+	tmp <<= frac->width;
+	do_div(tmp, parent_rate);
+	div = tmp;
+
+	if (!div)
+		return -EINVAL;
+
+	return (parent_rate >> frac->width) * div;
+}
+
+static int clk_frac_set_rate(struct clk *clk, unsigned long rate,
+			     unsigned long parent_rate)
+{
+	struct clk_frac *frac = to_clk_frac(clk);
+	u32 div, val;
+	u64 tmp;
+
+	if (rate > parent_rate)
+		return -EINVAL;
+
+	tmp = rate;
+	tmp <<= frac->width;
+	do_div(tmp, parent_rate);
+	div = tmp;
+
+	if (!div)
+		return -EINVAL;
+
+	val = readl(frac->reg);
+	val &= ~(((1 << frac->width) - 1) << frac->shift);
+	val |= div << frac->shift;
+	writel(val, frac->reg);
+
+	if (clk_is_enabled(clk))
+		while (readl(frac->reg) & 1 << frac->busy);
+
+	return 0;
+}
+
+static struct clk_ops clk_frac_ops = {
+	.recalc_rate = clk_frac_recalc_rate,
+	.round_rate = clk_frac_round_rate,
+	.set_rate = clk_frac_set_rate,
+};
+
+struct clk *mxs_clk_frac(const char *name, const char *parent_name,
+			 void __iomem *reg, u8 shift, u8 width, u8 busy)
+{
+	struct clk_frac *frac;
+	int ret;
+
+	frac = kzalloc(sizeof(*frac), GFP_KERNEL);
+	if (!frac)
+		return ERR_PTR(-ENOMEM);
+
+	frac->parent = parent_name;
+	frac->clk.name = name;
+	frac->clk.ops = &clk_frac_ops;
+	frac->clk.parent_names = &frac->parent;
+	frac->clk.num_parents = 1;
+
+	frac->reg = reg;
+	frac->shift = shift;
+	frac->width = width;
+
+	ret = clk_register(&frac->clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &frac->clk;
+}
diff --git a/drivers/clk/mxs/clk-lcdif.c b/drivers/clk/mxs/clk-lcdif.c
new file mode 100644
index 0000000..86dfe89
--- /dev/null
+++ b/drivers/clk/mxs/clk-lcdif.c
@@ -0,0 +1,75 @@
+#include <common.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+struct clk_lcdif {
+	struct clk clk;
+
+	struct clk *frac, *div, *gate;
+	const char *parent;
+};
+
+#define to_clk_lcdif(_hw) container_of(_hw, struct clk_lcdif, clk)
+
+static int clk_lcdif_set_rate(struct clk *clk, unsigned long rate,
+			    unsigned long unused)
+{
+	struct clk_lcdif *lcdif = to_clk_lcdif(clk);
+	unsigned long frac, div, best_div = 1;
+	int delta, best_delta = 0x7fffffff;
+	unsigned long frate, rrate, best_frate;
+	unsigned long parent_rate = clk_get_rate(clk_get_parent(lcdif->frac));
+
+	best_frate = parent_rate;
+
+	for (frac = 18; frac < 35; frac++) {
+		frate = (parent_rate / frac) * 18;
+		div = frate / rate;
+		if (!div)
+			div = 1;
+		rrate = frate / div;
+		delta = rate - rrate;
+		if (abs(delta) < abs(best_delta)) {
+			best_frate = frate;
+			best_div = div;
+			best_delta = delta;
+		}
+	}
+
+	clk_set_rate(lcdif->frac, best_frate);
+	best_frate = clk_get_rate(lcdif->frac);
+	clk_set_rate(lcdif->div, (best_frate + best_div) / best_div);
+
+	return 0;
+}
+
+static const struct clk_ops clk_lcdif_ops = {
+	.set_rate	= clk_lcdif_set_rate,
+};
+
+struct clk *mxs_clk_lcdif(const char *name, struct clk *frac, struct clk *div,
+			  struct clk *gate)
+{
+	struct clk_lcdif *lcdif;
+	int ret;
+
+	lcdif = xzalloc(sizeof(*lcdif));
+
+	lcdif->parent = gate->name;
+	lcdif->frac = frac;
+	lcdif->div = div;
+	lcdif->gate = gate;
+	lcdif->clk.name = name;
+	lcdif->clk.ops = &clk_lcdif_ops;
+	lcdif->clk.parent_names = &lcdif->parent;
+	lcdif->clk.num_parents = 1;
+
+	ret = clk_register(&lcdif->clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &lcdif->clk;
+}
diff --git a/drivers/clk/mxs/clk-pll.c b/drivers/clk/mxs/clk-pll.c
new file mode 100644
index 0000000..89fd6b5
--- /dev/null
+++ b/drivers/clk/mxs/clk-pll.c
@@ -0,0 +1,117 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+
+#include "clk.h"
+
+#define SET	0x4
+#define CLR	0x8
+
+/**
+ * struct clk_pll - mxs pll clock
+ * @hw: clk_hw for the pll
+ * @base: base address of the pll
+ * @power: the shift of power bit
+ * @rate: the clock rate of the pll
+ *
+ * The mxs pll is a fixed rate clock with power and gate control,
+ * and the shift of gate bit is always 31.
+ */
+struct clk_pll {
+	struct clk clk;
+	const char *parent;
+	void __iomem *base;
+	u8 power;
+	unsigned long rate;
+};
+
+#define to_clk_pll(_hw) container_of(_hw, struct clk_pll, clk)
+
+static int clk_pll_enable(struct clk *clk)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+
+	writel(1 << pll->power, pll->base + SET);
+
+	udelay(10);
+
+	writel(1 << 31, pll->base + CLR);
+
+	return 0;
+}
+
+static void clk_pll_disable(struct clk *clk)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+
+	writel(1 << 31, pll->base + SET);
+
+	writel(1 << pll->power, pll->base + CLR);
+}
+
+static int clk_pll_is_enabled(struct clk *clk)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+	u32 val;
+
+	val = readl(pll->base);
+
+	if (val & (1 << 31))
+		return 0;
+	else
+		return 1;
+}
+
+static unsigned long clk_pll_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct clk_pll *pll = to_clk_pll(clk);
+
+	return pll->rate;
+}
+
+static const struct clk_ops clk_pll_ops = {
+	.enable = clk_pll_enable,
+	.disable = clk_pll_disable,
+	.recalc_rate = clk_pll_recalc_rate,
+	.is_enabled = clk_pll_is_enabled,
+};
+
+struct clk *mxs_clk_pll(const char *name, const char *parent_name,
+			void __iomem *base, u8 power, unsigned long rate)
+{
+	struct clk_pll *pll;
+	int ret;
+
+	pll = xzalloc(sizeof(*pll));
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	pll->parent = parent_name;
+	pll->clk.name = name;
+	pll->clk.ops = &clk_pll_ops;
+	pll->clk.parent_names = &pll->parent;
+	pll->clk.num_parents = 1;
+
+	pll->base = base;
+	pll->rate = rate;
+	pll->power = power;
+
+	ret = clk_register(&pll->clk);
+	if (ret)
+		ERR_PTR(ret);
+
+	return &pll->clk;
+}
diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
new file mode 100644
index 0000000..d62ebfc
--- /dev/null
+++ b/drivers/clk/mxs/clk-ref.c
@@ -0,0 +1,152 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <io.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+/**
+ * struct clk_ref - mxs reference clock
+ * @hw: clk_hw for the reference clock
+ * @reg: register address
+ * @idx: the index of the reference clock within the same register
+ *
+ * The mxs reference clock sources from pll.  Every 4 reference clocks share
+ * one register space, and @idx is used to identify them.  Each reference
+ * clock has a gate control and a fractional * divider.  The rate is calculated
+ * as pll rate  * (18 / FRAC), where FRAC = 18 ~ 35.
+ */
+struct clk_ref {
+	struct clk clk;
+	const char *parent;
+	void __iomem *reg;
+	u8 idx;
+};
+
+#define to_clk_ref(_hw) container_of(_hw, struct clk_ref, clk)
+
+#define SET	0x4
+#define CLR	0x8
+
+static int clk_ref_enable(struct clk *clk)
+{
+	struct clk_ref *ref = to_clk_ref(clk);
+
+	writel(1 << ((ref->idx + 1) * 8 - 1), ref->reg + CLR);
+
+	return 0;
+}
+
+static void clk_ref_disable(struct clk *clk)
+{
+	struct clk_ref *ref = to_clk_ref(clk);
+
+	writel(1 << ((ref->idx + 1) * 8 - 1), ref->reg + SET);
+}
+
+static unsigned long clk_ref_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct clk_ref *ref = to_clk_ref(clk);
+	u64 tmp = parent_rate;
+	u8 frac = (readl(ref->reg) >> (ref->idx * 8)) & 0x3f;
+
+	tmp *= 18;
+	do_div(tmp, frac);
+
+	return tmp;
+}
+
+static long clk_ref_round_rate(struct clk *clk, unsigned long rate,
+			       unsigned long *prate)
+{
+	unsigned long parent_rate = *prate;
+	u64 tmp = parent_rate;
+	u32 frac;
+
+	tmp = tmp * 18 + rate / 2;
+	do_div(tmp, rate);
+	frac = tmp;
+
+	if (frac < 18)
+		frac = 18;
+	else if (frac > 35)
+		frac = 35;
+
+	tmp = parent_rate;
+	tmp *= 18;
+	do_div(tmp, frac);
+
+	return tmp;
+}
+
+static int clk_ref_set_rate(struct clk *clk, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_ref *ref = to_clk_ref(clk);
+	u64 tmp = parent_rate;
+	u32 val;
+	u32 frac, shift = ref->idx * 8;
+
+	tmp = tmp * 18 + rate / 2;
+	do_div(tmp, rate);
+	frac = tmp;
+
+	if (frac < 18)
+		frac = 18;
+	else if (frac > 35)
+		frac = 35;
+
+	val = readl(ref->reg);
+	val &= ~(0x3f << shift);
+	val |= frac << shift;
+	writel(val, ref->reg);
+
+	return 0;
+}
+
+static const struct clk_ops clk_ref_ops = {
+	.enable		= clk_ref_enable,
+	.disable	= clk_ref_disable,
+	.recalc_rate	= clk_ref_recalc_rate,
+	.round_rate	= clk_ref_round_rate,
+	.set_rate	= clk_ref_set_rate,
+};
+
+struct clk *mxs_clk_ref(const char *name, const char *parent_name,
+			void __iomem *reg, u8 idx)
+{
+	struct clk_ref *ref;
+	int ret;
+
+	ref = xzalloc(sizeof(*ref));
+	if (!ref)
+		return ERR_PTR(-ENOMEM);
+
+	ref->parent = parent_name;
+	ref->clk.name = name;
+	ref->clk.ops = &clk_ref_ops;
+	ref->clk.parent_names = &ref->parent;
+	ref->clk.num_parents = 1;
+
+	ref->reg = reg;
+	ref->idx = idx;
+
+	ret = clk_register(&ref->clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &ref->clk;
+}
diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
new file mode 100644
index 0000000..b4fcfa0
--- /dev/null
+++ b/drivers/clk/mxs/clk.h
@@ -0,0 +1,52 @@
+#ifndef __MXS_CLK_H
+#define __MXS_CLK_H
+
+int mxs_clk_wait(void __iomem *reg, u8 shift);
+
+struct clk *mxs_clk_pll(const char *name, const char *parent_name,
+			void __iomem *base, u8 power, unsigned long rate);
+
+struct clk *mxs_clk_ref(const char *name, const char *parent_name,
+			void __iomem *reg, u8 idx);
+
+struct clk *mxs_clk_div(const char *name, const char *parent_name,
+			void __iomem *reg, u8 shift, u8 width, u8 busy);
+
+struct clk *mxs_clk_frac(const char *name, const char *parent_name,
+			 void __iomem *reg, u8 shift, u8 width, u8 busy);
+
+#ifdef CONFIG_DRIVER_VIDEO_STM
+struct clk *mxs_clk_lcdif(const char *name, struct clk *frac, struct clk *div,
+			  struct clk *gate);
+#else
+static inline struct clk *mxs_clk_lcdif(const char *name, struct clk *frac, struct clk *div,
+			  struct clk *gate)
+{
+	return ERR_PTR(-ENOSYS);
+}
+#endif
+
+static inline struct clk *mxs_clk_fixed(const char *name, int rate)
+{
+	return clk_fixed(name, rate);
+}
+
+static inline struct clk *mxs_clk_gate(const char *name,
+			const char *parent_name, void __iomem *reg, u8 shift)
+{
+	return clk_gate_inverted(name, parent_name, reg, shift);
+}
+
+static inline struct clk *mxs_clk_mux(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parent_names, int num_parents)
+{
+	return clk_mux(name, reg, shift, width, parent_names, num_parents);
+}
+
+static inline struct clk *mxs_clk_fixed_factor(const char *name,
+		const char *parent_name, unsigned int mult, unsigned int div)
+{
+	return clk_fixed_factor(name, parent_name, mult, div);
+}
+
+#endif /* __MXS_CLK_H */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
