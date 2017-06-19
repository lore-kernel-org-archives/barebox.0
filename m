Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxrc-0003DO-TX
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:41:16 +0000
Received: by mail-pf0-x241.google.com with SMTP id s66so17374435pfs.2
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:40:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:40:39 -0700
Message-Id: <20170619144039.20552-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170619144039.20552-1-andrew.smirnov@gmail.com>
References: <20170619144039.20552-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] i.MX: clk: Remove imx_clk_pllv3_locked()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

Remove imx_clk_pllv3_locked() which was introduced for the sake of
Vybrid platform. The same effect (waiting on 'locked' bit) can be
achived with vanilla clk_pllv3_enable/disable, which make said
function unnecessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-pllv3.c | 24 ------------------------
 drivers/clk/imx/clk-vf610.c | 16 ++++++++++++++--
 drivers/clk/imx/clk.h       |  4 ----
 3 files changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index a14d36e..0e55a63 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -41,8 +41,6 @@ struct clk_pllv3 {
 	u32		div_mask;
 	u32		div_shift;
 	const char	*parent;
-	void __iomem	*lock_reg;
-	u32		lock_mask;
 	u32		ref_clock;
 	u32		power_bit;
 };
@@ -354,9 +352,6 @@ static int clk_pllv3_sys_vf610_set_rate(struct clk *clk, unsigned long rate,
 	writel(mfn, pll->base + SYS_VF610_PLL_OFFSET + PLL_NUM_OFFSET);
 	writel(mfd, pll->base + SYS_VF610_PLL_OFFSET + PLL_DENOM_OFFSET);
 
-	while (!(readl(pll->lock_reg) & pll->lock_mask))
-		;
-
 	return 0;
 }
 
@@ -427,22 +422,3 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 
 	return &pll->clk;
 }
-
-struct clk *imx_clk_pllv3_locked(enum imx_pllv3_type type, const char *name,
-				 const char *parent, void __iomem *base,
-				 u32 div_mask, void __iomem *lock_reg, u32 lock_mask)
-{
-	struct clk *clk;
-	struct clk_pllv3 *pll;
-
-	clk = imx_clk_pllv3(type, name, parent, base, div_mask);
-	if (IS_ERR(clk))
-		return clk;
-
-	pll = to_clk_pllv3(clk);
-
-	pll->lock_reg  = lock_reg;
-	pll->lock_mask = lock_mask;
-
-	return clk;
-}
diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 5469840..49d66fb 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -192,8 +192,8 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	clk[VF610_CLK_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", PLL6_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 	clk[VF610_CLK_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", PLL7_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 
-	clk[VF610_CLK_PLL1] = imx_clk_pllv3_locked(IMX_PLLV3_SYS_VF610, "pll1", "pll1_bypass_src", PLL1_CTRL, 0x1, PLL_LOCK, BIT(6));
-	clk[VF610_CLK_PLL2] = imx_clk_pllv3_locked(IMX_PLLV3_SYS_VF610, "pll2", "pll2_bypass_src", PLL2_CTRL, 0x1, PLL_LOCK, BIT(5));
+	clk[VF610_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_SYS_VF610, "pll1", "pll1_bypass_src", PLL1_CTRL, 0x1);
+	clk[VF610_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_SYS_VF610, "pll2", "pll2_bypass_src", PLL2_CTRL, 0x1);
 
 	clk[VF610_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB_VF610,     "pll3", "pll3_bypass_src", PLL3_CTRL, 0x2);
 	clk[VF610_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll4", "pll4_bypass_src", PLL4_CTRL, 0x7f);
@@ -478,6 +478,18 @@ static int vf610_switch_cpu_clock_to_500mhz(void)
 		return -EINVAL;
 	}
 
+	/*
+	 * Code below alters the frequency of PLL1, and doing so would
+	 * require us to wait for PLL1 lock before proceeding to
+	 * select it as a clock source again.
+	 *
+	 * We achive this by relying on PLL1 being disabled implicitly
+	 * by selecting different source for "sys_sel", and then
+	 * consecutively enabled (which would result in busy waiting
+	 * on 'lock' bit) as a part of setting "pll1_pfd_sel" as a
+	 * source for "sys_sel".
+	 *
+	 */
 	ret = clk_set_parent(clk[VF610_CLK_SYS_SEL], clk[VF610_CLK_PLL2_BUS]);
 	if (ret < 0) {
 		pr_crit("Unable to re-parent '%s'\n",
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 8da8064..c46c261 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -126,10 +126,6 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 			  const char *parent, void __iomem *base,
 			  u32 div_mask);
 
-struct clk *imx_clk_pllv3_locked(enum imx_pllv3_type type, const char *name,
-				 const char *parent, void __iomem *base,
-				 u32 div_mask, void __iomem *lock_reg, u32 lock_mask);
-
 struct clk *imx_clk_pfd(const char *name, const char *parent,
 			void __iomem *reg, u8 idx);
 
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
