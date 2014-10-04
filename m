Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00055M-2n
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:41 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:16 +0200
Message-Id: <1412444425-2569-11-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 10/19] clk: tegra: add PLLE setup functions
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-tegra/include/mach/tegra30-car.h |   2 +
 drivers/clk/tegra/clk-pll.c                    | 116 +++++++++++++++++++++++++
 drivers/clk/tegra/clk.h                        |   6 ++
 3 files changed, 124 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/tegra30-car.h b/arch/arm/mach-tegra/include/mach/tegra30-car.h
index c8f6c9f..7fb2238 100644
--- a/arch/arm/mach-tegra/include/mach/tegra30-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra30-car.h
@@ -33,3 +33,5 @@
 #define CRC_RST_DEV_V_CLR		0x434
 
 #define CRC_CLK_OUT_ENB_V_SET		0x440
+
+#define CRC_PLLE_AUX			0x48c
diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index c18c67f..bff5651 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -17,12 +17,15 @@
  */
 
 #include <common.h>
+#include <clock.h>
 #include <io.h>
 #include <malloc.h>
 #include <asm-generic/div64.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
+#include <mach/iomap.h>
+
 #include "clk.h"
 
 #define PLL_BASE_BYPASS		BIT(31)
@@ -393,6 +396,108 @@ const struct clk_ops tegra_clk_pll_ops = {
 	.set_rate = clk_pll_set_rate,
 };
 
+static unsigned long clk_plle_recalc_rate(struct clk *hw,
+					 unsigned long parent_rate)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 val = pll_readl_base(pll);
+	u32 divn = 0, divm = 0, divp = 0;
+	u64 rate = parent_rate;
+
+	divp = (val >> 16) & 0x3f;
+	divn = (val >> 8) & (0xff);
+	divm = (val >> 0) & (0xff);
+	divm *= divp;
+
+	rate *= divn;
+	do_div(rate, divm);
+	return rate;
+}
+
+static int clk_plle_training(struct tegra_clk_pll *pll)
+{
+	u32 val;
+
+	/*
+	 * PLLE is already disabled, and setup cleared;
+	 * create falling edge on PLLE IDDQ input.
+	 */
+	val = readl(TEGRA_PMC_BASE + PMC_SATA_PWRGT);
+	val |= PMC_SATA_PWRGT_PLLE_IDDQ_VALUE;
+	writel(val, TEGRA_PMC_BASE + PMC_SATA_PWRGT);
+
+	val = readl(TEGRA_PMC_BASE + PMC_SATA_PWRGT);
+	val |= PMC_SATA_PWRGT_PLLE_IDDQ_SWCTL;
+	writel(val, TEGRA_PMC_BASE + PMC_SATA_PWRGT);
+
+	val = readl(TEGRA_PMC_BASE + PMC_SATA_PWRGT);
+	val &= ~PMC_SATA_PWRGT_PLLE_IDDQ_VALUE;
+	writel(val, TEGRA_PMC_BASE + PMC_SATA_PWRGT);
+
+	return wait_on_timeout(100 * MSECOND,
+			(pll_readl_misc(pll) & PLLE_MISC_READY));
+}
+
+static int clk_plle_enable(struct clk *hw)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	unsigned long input_rate = clk_get_rate(clk_get_parent(hw));
+	struct tegra_clk_pll_freq_table sel;
+	u32 val;
+	int err;
+
+	if (_get_table_rate(hw, &sel, pll->fixed_rate, input_rate))
+		return -EINVAL;
+
+	clk_pll_disable(hw);
+
+	val = pll_readl_misc(pll);
+	val &= ~(PLLE_MISC_LOCK_ENABLE | PLLE_MISC_SETUP_MASK);
+	pll_writel_misc(val, pll);
+
+	val = pll_readl_misc(pll);
+	if (!(val & PLLE_MISC_READY)) {
+		err = clk_plle_training(pll);
+		if (err)
+			return err;
+	}
+
+	/* configure dividers */
+	val = pll_readl_base(pll);
+	val &= ~(0x3fffff);
+	val &= ~(PLLE_BASE_DIVCML_WIDTH << PLLE_BASE_DIVCML_SHIFT);
+	val |= sel.m << 0;
+	val |= sel.n << 8;
+	val |= sel.p << 16;
+	val |= sel.cpcon << PLLE_BASE_DIVCML_SHIFT;
+	pll_writel_base(val, pll);
+
+	val = pll_readl_misc(pll);
+	val |= PLLE_MISC_SETUP_VALUE;
+	val |= PLLE_MISC_LOCK_ENABLE;
+	pll_writel_misc(val, pll);
+
+	val = readl(pll->clk_base + PLLE_SS_CTRL);
+	val |= PLLE_SS_DISABLE;
+	writel(val, pll->clk_base + PLLE_SS_CTRL);
+
+	val = pll_readl_base(pll);
+	val |= (PLL_BASE_BYPASS | PLL_BASE_ENABLE);
+	pll_writel_base(val, pll);
+
+	clk_pll_wait_for_lock(pll, pll->clk_base + pll->params->base_reg,
+			      pll->params->lock_bit_idx);
+
+	return 0;
+}
+
+const struct clk_ops tegra_clk_plle_ops = {
+	.recalc_rate = clk_plle_recalc_rate,
+	.is_enabled = clk_pll_is_enabled,
+	.disable = clk_pll_disable,
+	.enable = clk_plle_enable,
+};
+
 static struct clk *_tegra_clk_register_pll(const char *name,
 		const char *parent_name, void __iomem *clk_base,
 		unsigned long flags, unsigned long fixed_rate,
@@ -447,3 +552,14 @@ struct clk *tegra_clk_register_pll(const char *name, const char *parent_name,
 			flags, fixed_rate, pll_params, pll_flags, freq_table,
 			&tegra_clk_pll_ops);
 }
+
+struct clk *tegra_clk_register_plle(const char *name, const char *parent_name,
+		void __iomem *clk_base,
+		unsigned long flags, unsigned long fixed_rate,
+		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
+		struct tegra_clk_pll_freq_table *freq_table)
+{
+	return _tegra_clk_register_pll(name, parent_name, clk_base,
+			flags, fixed_rate, pll_params, pll_flags, freq_table,
+			&tegra_clk_plle_ops);
+}
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index d5d0730..85777a8 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -101,6 +101,12 @@ struct clk *tegra_clk_register_pll(const char *name, const char *parent_name,
 		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
 		struct tegra_clk_pll_freq_table *freq_table);
 
+struct clk *tegra_clk_register_plle(const char *name, const char *parent_name,
+		void __iomem *clk_base,
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
