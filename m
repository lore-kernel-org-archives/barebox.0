Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnW-0008EN-MF
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:04 +0100
Message-Id: <20200217124623.14520-24-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/42] clk: imx: Add pll14xx support
To: Barebox List <barebox@lists.infradead.org>

This adds support for the pll14xx found on i.MX8MM devices. This is
taken from the Kernel as of v5.5. Since we'll need some early setup
for the PLL a PBL hook is added to be called from lowlevel code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/Makefile      |   2 +
 drivers/clk/imx/clk-pll14xx.c | 446 ++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h         |  44 ++++
 include/soc/imx8m/clk-early.h |   7 +
 4 files changed, 499 insertions(+)
 create mode 100644 drivers/clk/imx/clk-pll14xx.c
 create mode 100644 include/soc/imx8m/clk-early.h

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 97ae97a2a9..bd70853dba 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_COMMON_CLK) +=	\
 	clk-pllv1.o		\
 	clk-pllv2.o		\
 	clk-pllv3.o		\
+	clk-pll14xx.o		\
 	clk-pfd.o		\
 	clk-gate2.o		\
 	clk-gate-exclusive.o	\
@@ -25,5 +26,6 @@ obj-$(CONFIG_ARCH_IMX6SX) += clk-imx6sx.o
 obj-$(CONFIG_ARCH_IMX6SL) += clk-imx6sl.o
 obj-$(CONFIG_ARCH_IMX6UL) += clk-imx6ul.o
 obj-$(CONFIG_ARCH_IMX7) += clk-imx7.o
+pbl-$(CONFIG_ARCH_IMX8MM) += clk-pll14xx.o
 obj-$(CONFIG_ARCH_IMX8MQ) += clk-imx8mq.o
 obj-$(CONFIG_ARCH_VF610)  += clk-vf610.o
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
new file mode 100644
index 0000000000..91e9624a60
--- /dev/null
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -0,0 +1,446 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2017-2018 NXP.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <linux/iopoll.h>
+#include <malloc.h>
+#include <clock.h>
+#include <soc/imx8m/clk-early.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+#define GNRL_CTL	0x0
+#define DIV_CTL		0x4
+#define LOCK_STATUS	BIT(31)
+#define LOCK_SEL_MASK	BIT(29)
+#define CLKE_MASK	BIT(11)
+#define RST_MASK	BIT(9)
+#define BYPASS_MASK	BIT(4)
+#define MDIV_SHIFT	12
+#define MDIV_MASK	GENMASK(21, 12)
+#define PDIV_SHIFT	4
+#define PDIV_MASK	GENMASK(9, 4)
+#define SDIV_SHIFT	0
+#define SDIV_MASK	GENMASK(2, 0)
+#define KDIV_SHIFT	0
+#define KDIV_MASK	GENMASK(15, 0)
+
+#define LOCK_TIMEOUT_US		10000
+
+struct clk_pll14xx {
+	struct clk			clk;
+	void __iomem			*base;
+	enum imx_pll14xx_type		type;
+	const struct imx_pll14xx_rate_table *rate_table;
+	int rate_count;
+	const char *parent;
+};
+
+#define to_clk_pll14xx(clk) container_of(clk, struct clk_pll14xx, clk)
+
+static const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
+	PLL_1416X_RATE(1800000000U, 225, 3, 0),
+	PLL_1416X_RATE(1600000000U, 200, 3, 0),
+	PLL_1416X_RATE(1500000000U, 375, 3, 1),
+	PLL_1416X_RATE(1400000000U, 350, 3, 1),
+	PLL_1416X_RATE(1200000000U, 300, 3, 1),
+	PLL_1416X_RATE(1000000000U, 250, 3, 1),
+	PLL_1416X_RATE(800000000U,  200, 3, 1),
+	PLL_1416X_RATE(750000000U,  250, 2, 2),
+	PLL_1416X_RATE(700000000U,  350, 3, 2),
+	PLL_1416X_RATE(600000000U,  300, 3, 2),
+};
+
+static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
+	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
+	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
+	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
+	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
+};
+
+struct imx_pll14xx_clk imx_1443x_pll = {
+	.type = PLL_1443X,
+	.rate_table = imx_pll1443x_tbl,
+	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
+};
+
+struct imx_pll14xx_clk imx_1416x_pll = {
+	.type = PLL_1416X,
+	.rate_table = imx_pll1416x_tbl,
+	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
+};
+
+static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
+		struct clk_pll14xx *pll, unsigned long rate)
+{
+	const struct imx_pll14xx_rate_table *rate_table = pll->rate_table;
+	int i;
+
+	for (i = 0; i < pll->rate_count; i++)
+		if (rate == rate_table[i].rate)
+			return &rate_table[i];
+
+	return NULL;
+}
+
+static long clk_pll14xx_round_rate(struct clk *clk, unsigned long rate,
+			unsigned long *prate)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	const struct imx_pll14xx_rate_table *rate_table = pll->rate_table;
+	int i;
+
+	/* Assumming rate_table is in descending order */
+	for (i = 0; i < pll->rate_count; i++)
+		if (rate >= rate_table[i].rate)
+			return rate_table[i].rate;
+
+	/* return minimum supported value */
+	return rate_table[i - 1].rate;
+}
+
+static unsigned long clk_pll1416x_recalc_rate(struct clk *clk,
+						  unsigned long parent_rate)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	u32 mdiv, pdiv, sdiv, pll_div;
+	u64 fvco = parent_rate;
+
+	pll_div = readl(pll->base + 4);
+	mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
+	pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
+	sdiv = (pll_div & SDIV_MASK) >> SDIV_SHIFT;
+
+	fvco *= mdiv;
+	do_div(fvco, pdiv << sdiv);
+
+	return fvco;
+}
+
+static unsigned long clk_pll1443x_recalc_rate(struct clk *clk,
+						  unsigned long parent_rate)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	u32 mdiv, pdiv, sdiv, pll_div_ctl0, pll_div_ctl1;
+	short int kdiv;
+	u64 fvco = parent_rate;
+
+	pll_div_ctl0 = readl(pll->base + 4);
+	pll_div_ctl1 = readl(pll->base + 8);
+	mdiv = (pll_div_ctl0 & MDIV_MASK) >> MDIV_SHIFT;
+	pdiv = (pll_div_ctl0 & PDIV_MASK) >> PDIV_SHIFT;
+	sdiv = (pll_div_ctl0 & SDIV_MASK) >> SDIV_SHIFT;
+	kdiv = pll_div_ctl1 & KDIV_MASK;
+
+	/* fvco = (m * 65536 + k) * Fin / (p * 65536) */
+	fvco *= (mdiv * 65536 + kdiv);
+	pdiv *= 65536;
+
+	do_div(fvco, pdiv << sdiv);
+
+	return fvco;
+}
+
+static inline bool clk_pll14xx_mp_change(const struct imx_pll14xx_rate_table *rate,
+					  u32 pll_div)
+{
+	u32 old_mdiv, old_pdiv;
+
+	old_mdiv = (pll_div & MDIV_MASK) >> MDIV_SHIFT;
+	old_pdiv = (pll_div & PDIV_MASK) >> PDIV_SHIFT;
+
+	return rate->mdiv != old_mdiv || rate->pdiv != old_pdiv;
+}
+
+static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
+{
+	u32 val;
+
+	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS,
+			LOCK_TIMEOUT_US);
+}
+
+static int clk_pll1416x_set_rate(struct clk *clk, unsigned long drate,
+				 unsigned long prate)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	const struct imx_pll14xx_rate_table *rate;
+	u32 tmp, div_val;
+	int ret;
+
+	rate = imx_get_pll_settings(pll, drate);
+	if (!rate) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+		       drate, clk->name);
+		return -EINVAL;
+	}
+
+	tmp = readl(pll->base + 4);
+
+	if (!clk_pll14xx_mp_change(rate, tmp)) {
+		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
+		tmp |= rate->sdiv << SDIV_SHIFT;
+		writel(tmp, pll->base + 4);
+
+		return 0;
+	}
+
+	/* Bypass clock and set lock to pll output lock */
+	tmp = readl(pll->base);
+	tmp |= LOCK_SEL_MASK;
+	writel(tmp, pll->base);
+
+	/* Enable RST */
+	tmp &= ~RST_MASK;
+	writel(tmp, pll->base);
+
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel(tmp, pll->base);
+
+	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
+		(rate->sdiv << SDIV_SHIFT);
+	writel(div_val, pll->base + 0x4);
+
+	/*
+	 * According to SPEC, t3 - t2 need to be greater than
+	 * 1us and 1/FREF, respectively.
+	 * FREF is FIN / Prediv, the prediv is [1, 63], so choose
+	 * 3us.
+	 */
+	udelay(3);
+
+	/* Disable RST */
+	tmp |= RST_MASK;
+	writel(tmp, pll->base);
+
+	/* Wait Lock */
+	ret = clk_pll14xx_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	/* Bypass */
+	tmp &= ~BYPASS_MASK;
+	writel(tmp, pll->base);
+
+	return 0;
+}
+
+int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
+			  unsigned long prate)
+{
+	struct clk_pll14xx pll = {
+		.clk = {
+			.name = "pll1416x",
+		},
+		.base = base,
+		.rate_table = imx_pll1416x_tbl,
+		.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
+	};
+
+	return clk_pll1416x_set_rate(&pll.clk, drate, prate);
+}
+
+static int clk_pll1443x_set_rate(struct clk *clk, unsigned long drate,
+				 unsigned long prate)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	const struct imx_pll14xx_rate_table *rate;
+	u32 tmp, div_val;
+	int ret;
+
+	rate = imx_get_pll_settings(pll, drate);
+	if (!rate) {
+		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
+			drate, clk->name);
+		return -EINVAL;
+	}
+
+	tmp = readl(pll->base + 4);
+
+	if (!clk_pll14xx_mp_change(rate, tmp)) {
+		tmp &= ~(SDIV_MASK) << SDIV_SHIFT;
+		tmp |= rate->sdiv << SDIV_SHIFT;
+		writel(tmp, pll->base + 4);
+
+		tmp = rate->kdiv << KDIV_SHIFT;
+		writel(tmp, pll->base + 8);
+
+		return 0;
+	}
+
+	/* Enable RST */
+	tmp = readl(pll->base);
+	tmp &= ~RST_MASK;
+	writel(tmp, pll->base);
+
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel(tmp, pll->base);
+
+	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
+		(rate->sdiv << SDIV_SHIFT);
+	writel(div_val, pll->base + 0x4);
+	writel(rate->kdiv << KDIV_SHIFT, pll->base + 0x8);
+
+	/*
+	 * According to SPEC, t3 - t2 need to be greater than
+	 * 1us and 1/FREF, respectively.
+	 * FREF is FIN / Prediv, the prediv is [1, 63], so choose
+	 * 3us.
+	 */
+	udelay(3);
+
+	/* Disable RST */
+	tmp |= RST_MASK;
+	writel(tmp, pll->base);
+
+	/* Wait Lock*/
+	ret = clk_pll14xx_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	/* Bypass */
+	tmp &= ~BYPASS_MASK;
+	writel(tmp, pll->base);
+
+	return 0;
+}
+
+static int clk_pll14xx_prepare(struct clk *clk)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	u32 val;
+	int ret;
+
+	/*
+	 * RESETB = 1 from 0, PLL starts its normal
+	 * operation after lock time
+	 */
+	val = readl(pll->base + GNRL_CTL);
+	if (val & RST_MASK)
+		return 0;
+	val |= BYPASS_MASK;
+	writel(val, pll->base + GNRL_CTL);
+	val |= RST_MASK;
+	writel(val, pll->base + GNRL_CTL);
+
+	ret = clk_pll14xx_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	val &= ~BYPASS_MASK;
+	writel(val, pll->base + GNRL_CTL);
+
+	return 0;
+}
+
+static int clk_pll14xx_is_prepared(struct clk *clk)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	u32 val;
+
+	val = readl(pll->base + GNRL_CTL);
+
+	return (val & RST_MASK) ? 1 : 0;
+}
+
+static void clk_pll14xx_unprepare(struct clk *clk)
+{
+	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	u32 val;
+printf("%s %p\n", __func__, pll);
+printf("%s %p\n", __func__, pll->base);
+	/*
+	 * Set RST to 0, power down mode is enabled and
+	 * every digital block is reset
+	 */
+	val = readl(pll->base + GNRL_CTL);
+	val &= ~RST_MASK;
+	writel(val, pll->base + GNRL_CTL);
+}
+
+static const struct clk_ops clk_pll1416x_ops = {
+	.enable		= clk_pll14xx_prepare,
+	.disable	= clk_pll14xx_unprepare,
+	.is_enabled	= clk_pll14xx_is_prepared,
+	.recalc_rate	= clk_pll1416x_recalc_rate,
+	.round_rate	= clk_pll14xx_round_rate,
+	.set_rate	= clk_pll1416x_set_rate,
+};
+
+static const struct clk_ops clk_pll1416x_min_ops = {
+	.recalc_rate	= clk_pll1416x_recalc_rate,
+};
+
+static const struct clk_ops clk_pll1443x_ops = {
+	.enable		= clk_pll14xx_prepare,
+	.disable	= clk_pll14xx_unprepare,
+	.is_enabled	= clk_pll14xx_is_prepared,
+	.recalc_rate	= clk_pll1443x_recalc_rate,
+	.round_rate	= clk_pll14xx_round_rate,
+	.set_rate	= clk_pll1443x_set_rate,
+};
+
+struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
+			    void __iomem *base,
+			    const struct imx_pll14xx_clk *pll_clk)
+{
+	struct clk_pll14xx *pll;
+	struct clk *clk;
+	u32 val;
+	int ret;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	clk = &pll->clk;
+
+	pll->parent = parent_name;
+	clk->name = name;
+	clk->flags = pll_clk->flags;
+	clk->parent_names = &pll->parent;
+	clk->num_parents = 1;
+
+	switch (pll_clk->type) {
+	case PLL_1416X:
+		if (!pll_clk->rate_table)
+			clk->ops = &clk_pll1416x_min_ops;
+		else
+			clk->ops = &clk_pll1416x_ops;
+		break;
+	case PLL_1443X:
+		clk->ops = &clk_pll1443x_ops;
+		break;
+	default:
+		pr_err("%s: Unknown pll type for pll clk %s\n",
+		       __func__, name);
+	};
+
+	pll->base = base;
+	pll->type = pll_clk->type;
+	pll->rate_table = pll_clk->rate_table;
+	pll->rate_count = pll_clk->rate_count;
+
+	val = readl(pll->base + GNRL_CTL);
+	val &= ~BYPASS_MASK;
+	writel(val, pll->base + GNRL_CTL);
+
+	ret = clk_register(clk);
+	if (ret) {
+		free(pll);
+		return ERR_PTR(ret);
+	}
+
+	return clk;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 04286f03f7..65b9717419 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -168,6 +168,50 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 			  const char *parent, void __iomem *base,
 			  u32 div_mask);
 
+enum imx_pll14xx_type {
+	PLL_1416X,
+	PLL_1443X,
+};
+
+/* NOTE: Rate table should be kept sorted in descending order. */
+struct imx_pll14xx_rate_table {
+	unsigned int rate;
+	unsigned int pdiv;
+	unsigned int mdiv;
+	unsigned int sdiv;
+	unsigned int kdiv;
+};
+
+#define PLL_1416X_RATE(_rate, _m, _p, _s)		\
+	{						\
+		.rate	=	(_rate),		\
+		.mdiv	=	(_m),			\
+		.pdiv	=	(_p),			\
+		.sdiv	=	(_s),			\
+	}
+
+#define PLL_1443X_RATE(_rate, _m, _p, _s, _k)		\
+	{						\
+		.rate	=	(_rate),		\
+		.mdiv	=	(_m),			\
+		.pdiv	=	(_p),			\
+		.sdiv	=	(_s),			\
+		.kdiv	=	(_k),			\
+	}
+
+struct imx_pll14xx_clk {
+	enum imx_pll14xx_type type;
+	const struct imx_pll14xx_rate_table *rate_table;
+	int rate_count;
+	int flags;
+};
+
+extern struct imx_pll14xx_clk imx_1443x_pll;
+extern struct imx_pll14xx_clk imx_1416x_pll;
+
+struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
+                 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
+
 struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
 			     void __iomem *base);
 
diff --git a/include/soc/imx8m/clk-early.h b/include/soc/imx8m/clk-early.h
new file mode 100644
index 0000000000..1e1ca59543
--- /dev/null
+++ b/include/soc/imx8m/clk-early.h
@@ -0,0 +1,7 @@
+#ifndef __SOC_IMX8M_CLK_EARLY_H
+#define __SOC_IMX8M_CLK_EARLY_H
+
+int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
+			  unsigned long prate);
+
+#endif /* __SOC_IMX8M_CLK_EARLY_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
