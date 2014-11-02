Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006pM-U1
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:40 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 8E5F126C2003
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:50 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:51 +0100
Message-Id: <1414959235-18095-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 09/13] clk: tegra124: add PLLE setup functions
To: barebox@lists.infradead.org

This adds functions to bring up the new style
Tegra114+ PLL_E.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-pll.c | 173 +++++++++++++++++++++++++++++++++++++++++++-
 drivers/clk/tegra/clk.h     |   7 ++
 2 files changed, 177 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index bff5651..e677eff 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -63,6 +63,7 @@
 #define PLLDU_LFCON_SET_DIVN	600
 
 #define PLLE_BASE_DIVCML_SHIFT	24
+#define PLLE_BASE_DIVCML_MASK	0xf
 #define PLLE_BASE_DIVCML_WIDTH	4
 #define PLLE_BASE_DIVP_SHIFT	16
 #define PLLE_BASE_DIVP_WIDTH	7
@@ -81,8 +82,45 @@
 					 PLLE_MISC_SETUP_EX_MASK)
 #define PLLE_MISC_SETUP_VALUE		(7 << PLLE_MISC_SETUP_BASE_SHIFT)
 
-#define PLLE_SS_CTRL		0x68
-#define PLLE_SS_DISABLE		(7 << 10)
+#define XUSBIO_PLL_CFG0				0x51c
+#define XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL	(1 << 0)
+#define XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL	(1 << 2)
+#define XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET	(1 << 6)
+#define XUSBIO_PLL_CFG0_SEQ_ENABLE		(1 << 24)
+#define XUSBIO_PLL_CFG0_SEQ_START_STATE		(1 << 25)
+
+#define PLLE_SS_CTRL			0x68
+#define PLLE_SS_CNTL_BYPASS_SS		(7 << 10)
+#define PLLE_SS_CNTL_INTERP_RESET	(1 << 11)
+#define PLLE_SS_CNTL_SSC_BYP		(1 << 12)
+#define PLLE_SS_CNTL_CENTER		(1 << 14)
+#define PLLE_SS_CNTL_INVERT		(1 << 15)
+#define PLLE_SS_MAX_MASK		0x1ff
+#define PLLE_SS_MAX_VAL			0x25
+#define PLLE_SS_INC_MASK		(0xff << 16)
+#define PLLE_SS_INC_VAL			(0x1 << 16)
+#define PLLE_SS_INCINTRV_MASK		(0x3f << 24)
+#define PLLE_SS_INCINTRV_VAL		(0x20 << 24)
+#define PLLE_SS_COEFFICIENTS_MASK \
+	(PLLE_SS_MAX_MASK | PLLE_SS_INC_MASK | PLLE_SS_INCINTRV_MASK)
+#define PLLE_SS_COEFFICIENTS_VAL \
+	(PLLE_SS_MAX_VAL | PLLE_SS_INC_VAL | PLLE_SS_INCINTRV_VAL)
+
+#define PLLE_MISC_VREG_CTRL_SHIFT	2
+#define PLLE_MISC_VREG_CTRL_MASK	(2 << PLLE_MISC_VREG_CTRL_SHIFT)
+#define PLLE_MISC_VREG_BG_CTRL_SHIFT	4
+#define PLLE_MISC_VREG_BG_CTRL_MASK	(3 << PLLE_MISC_VREG_BG_CTRL_SHIFT)
+#define PLLE_MISC_PLLE_PTS		(1 << 8)
+#define PLLE_MISC_IDDQ_SW_VALUE		(1 << 13)
+#define PLLE_MISC_IDDQ_SW_CTRL		(1 << 14)
+
+#define PLLE_AUX_PLLP_SEL		(1 << 2)
+#define PLLE_AUX_USE_LOCKDET		(1 << 3)
+#define PLLE_AUX_ENABLE_SWCTL		(1 << 4)
+#define PLLE_AUX_SS_SWCTL		(1 << 6)
+#define PLLE_AUX_SEQ_ENABLE		(1 << 24)
+#define PLLE_AUX_SEQ_START_STATE	(1 << 25)
+#define PLLE_AUX_PLLRE_SEL		(1 << 28)
 
 #define PMC_SATA_PWRGT			0x1ac
 #define PMC_SATA_PWRGT_PLLE_IDDQ_VALUE	BIT(5)
@@ -102,10 +140,19 @@
 #define divp_mask(p) (p->flags & TEGRA_PLLU ? PLLU_POST_DIVP_MASK :	\
 		      mask(p->divp_width))
 
+#define divm_shift(p) (p)->divm_shift
+#define divn_shift(p) (p)->divn_shift
+#define divp_shift(p) (p)->divp_shift
+
+#define divm_mask_shifted(p) (divm_mask(p) << divm_shift(p))
+#define divn_mask_shifted(p) (divn_mask(p) << divn_shift(p))
+#define divp_mask_shifted(p) (divp_mask(p) << divp_shift(p))
+
 #define divm_max(p) (divm_mask(p))
 #define divn_max(p) (divn_mask(p))
 #define divp_max(p) (1 << (divp_mask(p)))
 
+
 #define to_clk_pll(_hw) container_of(_hw, struct tegra_clk_pll, hw)
 
 static int clk_pll_is_enabled(struct clk *hw)
@@ -478,7 +525,7 @@ static int clk_plle_enable(struct clk *hw)
 	pll_writel_misc(val, pll);
 
 	val = readl(pll->clk_base + PLLE_SS_CTRL);
-	val |= PLLE_SS_DISABLE;
+	val |= PLLE_SS_CNTL_BYPASS_SS;
 	writel(val, pll->clk_base + PLLE_SS_CTRL);
 
 	val = pll_readl_base(pll);
@@ -498,6 +545,115 @@ const struct clk_ops tegra_clk_plle_ops = {
 	.enable = clk_plle_enable,
 };
 
+static int clk_plle_tegra114_enable(struct clk *hw)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	unsigned long input_rate = clk_get_rate(clk_get_parent(hw));
+	struct tegra_clk_pll_freq_table sel;
+	u32 val;
+	int ret;
+
+	if (_get_table_rate(hw, &sel, pll->fixed_rate, input_rate))
+		return -EINVAL;
+
+	val = pll_readl_base(pll);
+	val &= ~BIT(29); /* Disable lock override */
+	pll_writel_base(val, pll);
+
+	val = pll_readl(pll->params->aux_reg, pll);
+	val |= PLLE_AUX_ENABLE_SWCTL;
+	val &= ~PLLE_AUX_SEQ_ENABLE;
+	pll_writel(val, pll->params->aux_reg, pll);
+	udelay(1);
+
+	val = pll_readl_misc(pll);
+	val |= PLLE_MISC_LOCK_ENABLE;
+	val |= PLLE_MISC_IDDQ_SW_CTRL;
+	val &= ~PLLE_MISC_IDDQ_SW_VALUE;
+	val |= PLLE_MISC_PLLE_PTS;
+	val |= PLLE_MISC_VREG_BG_CTRL_MASK | PLLE_MISC_VREG_CTRL_MASK;
+	pll_writel_misc(val, pll);
+	udelay(5);
+
+	val = pll_readl(PLLE_SS_CTRL, pll);
+	val |= PLLE_SS_CNTL_BYPASS_SS;
+	pll_writel(val, PLLE_SS_CTRL, pll);
+
+	val = pll_readl_base(pll);
+	val &= ~(divp_mask_shifted(pll) | divn_mask_shifted(pll) |
+		 divm_mask_shifted(pll));
+	val &= ~(PLLE_BASE_DIVCML_MASK << PLLE_BASE_DIVCML_SHIFT);
+	val |= sel.m << divm_shift(pll);
+	val |= sel.n << divn_shift(pll);
+	val |= sel.cpcon << PLLE_BASE_DIVCML_SHIFT;
+	pll_writel_base(val, pll);
+	udelay(1);
+
+	clk_pll_enable(hw);
+	ret = clk_pll_wait_for_lock(pll, pll->clk_base + pll->params->misc_reg,
+				    pll->params->lock_bit_idx);
+
+	if (ret < 0)
+		return ret;
+
+	val = pll_readl(PLLE_SS_CTRL, pll);
+	val &= ~(PLLE_SS_CNTL_CENTER | PLLE_SS_CNTL_INVERT);
+	val &= ~PLLE_SS_COEFFICIENTS_MASK;
+	val |= PLLE_SS_COEFFICIENTS_VAL;
+	pll_writel(val, PLLE_SS_CTRL, pll);
+	val &= ~(PLLE_SS_CNTL_SSC_BYP | PLLE_SS_CNTL_BYPASS_SS);
+	pll_writel(val, PLLE_SS_CTRL, pll);
+	udelay(1);
+	val &= ~PLLE_SS_CNTL_INTERP_RESET;
+	pll_writel(val, PLLE_SS_CTRL, pll);
+	udelay(1);
+
+	/* Enable hw control of xusb brick pll */
+	val = pll_readl_misc(pll);
+	val &= ~PLLE_MISC_IDDQ_SW_CTRL;
+	pll_writel_misc(val, pll);
+
+	val = pll_readl(pll->params->aux_reg, pll);
+	val |= (PLLE_AUX_USE_LOCKDET | PLLE_AUX_SEQ_START_STATE);
+	val &= ~(PLLE_AUX_ENABLE_SWCTL | PLLE_AUX_SS_SWCTL);
+	pll_writel(val, pll->params->aux_reg, pll);
+	udelay(1);
+	val |= PLLE_AUX_SEQ_ENABLE;
+	pll_writel(val, pll->params->aux_reg, pll);
+
+	val = pll_readl(XUSBIO_PLL_CFG0, pll);
+	val |= (XUSBIO_PLL_CFG0_PADPLL_USE_LOCKDET |
+		XUSBIO_PLL_CFG0_SEQ_START_STATE);
+	val &= ~(XUSBIO_PLL_CFG0_CLK_ENABLE_SWCTL |
+		 XUSBIO_PLL_CFG0_PADPLL_RESET_SWCTL);
+	pll_writel(val, XUSBIO_PLL_CFG0, pll);
+	udelay(1);
+	val |= XUSBIO_PLL_CFG0_SEQ_ENABLE;
+	pll_writel(val, XUSBIO_PLL_CFG0, pll);
+
+	return ret;
+}
+
+static void clk_plle_tegra114_disable(struct clk *hw)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 val;
+
+	clk_pll_disable(hw);
+
+	val = pll_readl_misc(pll);
+	val |= PLLE_MISC_IDDQ_SW_CTRL | PLLE_MISC_IDDQ_SW_VALUE;
+	pll_writel_misc(val, pll);
+	udelay(1);
+}
+
+const struct clk_ops tegra_clk_plle_tegra114_ops = {
+	.recalc_rate = clk_pll_recalc_rate,
+	.is_enabled = clk_pll_is_enabled,
+	.disable = clk_plle_tegra114_disable,
+	.enable = clk_plle_tegra114_enable,
+};
+
 static struct clk *_tegra_clk_register_pll(const char *name,
 		const char *parent_name, void __iomem *clk_base,
 		unsigned long flags, unsigned long fixed_rate,
@@ -563,3 +719,14 @@ struct clk *tegra_clk_register_plle(const char *name, const char *parent_name,
 			flags, fixed_rate, pll_params, pll_flags, freq_table,
 			&tegra_clk_plle_ops);
 }
+
+struct clk *tegra_clk_register_plle_tegra114(const char *name,
+		const char *parent_name, void __iomem *clk_base,
+		unsigned long flags, unsigned long fixed_rate,
+		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
+		struct tegra_clk_pll_freq_table *freq_table)
+{
+	return _tegra_clk_register_pll(name, parent_name, clk_base,
+			flags, fixed_rate, pll_params, pll_flags, freq_table,
+			&tegra_clk_plle_tegra114_ops);
+}
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 85777a8..10d0357 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -63,6 +63,7 @@ struct tegra_clk_pll_params {
 
 	u32		base_reg;
 	u32		misc_reg;
+	u32		aux_reg;
 	u32		lock_reg;
 	u8		lock_bit_idx;
 	u8		lock_enable_bit_idx;
@@ -107,6 +108,12 @@ struct clk *tegra_clk_register_plle(const char *name, const char *parent_name,
 		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
 		struct tegra_clk_pll_freq_table *freq_table);
 
+struct clk *tegra_clk_register_plle_tegra114(const char *name,
+		const char *parent_name, void __iomem *clk_base,
+		unsigned long flags, unsigned long fixed_rate,
+		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
+		struct tegra_clk_pll_freq_table *freq_table);
+
 /* struct tegra_clk_pll_out - PLL output divider */
 struct tegra_clk_pll_out {
 	struct clk	hw;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
