Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDug0-0005TM-GN
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:35 +0000
Received: by mail-pg0-x244.google.com with SMTP id 3so16684737pgd.0
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:12 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:33 -0800
Message-Id: <1480949684-18520-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/16] i.MX: clk: Add IMX_PLLV3_SYS_VF610 subtype
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add IMX_PLLV3_SYS_VF610 subtype to pllv3 code to be able to control and
re-clock PLL1 and PLL2 on Vybrid SoC. This commit also introduces
imx_clk_pllv3_locked which allows the user to create PLLv3 and specify
how it should be polled for "locked" status (used in .set_rate callback)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-pllv3.c | 108 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h       |   5 ++
 2 files changed, 113 insertions(+)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index 29c0f1c..dd924a4 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -26,6 +26,8 @@
 #define PLL_NUM_OFFSET		0x10
 #define PLL_DENOM_OFFSET	0x20
 
+#define SYS_VF610_PLL_OFFSET	0x10
+
 #define BM_PLL_POWER		(0x1 << 12)
 #define BM_PLL_ENABLE		(0x1 << 13)
 #define BM_PLL_BYPASS		(0x1 << 16)
@@ -38,6 +40,8 @@ struct clk_pllv3 {
 	u32		div_mask;
 	u32		div_shift;
 	const char	*parent;
+	void __iomem	*lock_reg;
+	u32		lock_mask;
 };
 
 #define to_clk_pllv3(_clk) container_of(_clk, struct clk_pllv3, clk)
@@ -279,6 +283,88 @@ static const struct clk_ops clk_pllv3_mlb_ops = {
 	.disable	= clk_pllv3_disable,
 };
 
+static unsigned long clk_pllv3_sys_vf610_recalc_rate(struct clk *clk,
+						     unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+
+	u32 mfn = readl(pll->base + SYS_VF610_PLL_OFFSET + PLL_NUM_OFFSET);
+	u32 mfd = readl(pll->base + SYS_VF610_PLL_OFFSET + PLL_DENOM_OFFSET);
+	u32 div = (readl(pll->base) & pll->div_mask) ? 22 : 20;
+
+	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
+}
+
+static long clk_pllv3_sys_vf610_round_rate(struct clk *clk, unsigned long rate,
+					   unsigned long *prate)
+{
+	unsigned long parent_rate = *prate;
+	unsigned long min_rate = parent_rate * 20;
+	unsigned long max_rate = 528000000;
+	u32 mfn, mfd = 1000000;
+	u64 temp64;
+
+	if (rate >= max_rate)
+		return max_rate;
+	else if (rate < min_rate)
+		rate = min_rate;
+
+	temp64 = (u64) (rate - 20 * parent_rate);
+	temp64 *= mfd;
+	do_div(temp64, parent_rate);
+	mfn = temp64;
+
+	return parent_rate * 20 + parent_rate / mfd * mfn;
+}
+
+static int clk_pllv3_sys_vf610_set_rate(struct clk *clk, unsigned long rate,
+					unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	unsigned long min_rate = parent_rate * 20;
+	unsigned long max_rate = 528000000;
+	u32 val;
+	u32 mfn, mfd = 1000000;
+	u64 temp64;
+
+	if (rate < min_rate || rate > max_rate)
+		return -EINVAL;
+
+	val = readl(pll->base);
+
+	if (rate == max_rate) {
+		writel(0, pll->base + SYS_VF610_PLL_OFFSET + PLL_NUM_OFFSET);
+		val |= pll->div_mask;
+		writel(val, pll->base);
+
+		return 0;
+	} else {
+		val &= ~pll->div_mask;
+	}
+
+	temp64 = (u64) (rate - 20 * parent_rate);
+	temp64 *= mfd;
+	do_div(temp64, parent_rate);
+	mfn = temp64;
+
+	writel(val, pll->base);
+	writel(mfn, pll->base + SYS_VF610_PLL_OFFSET + PLL_NUM_OFFSET);
+	writel(mfd, pll->base + SYS_VF610_PLL_OFFSET + PLL_DENOM_OFFSET);
+
+	while (!(readl(pll->lock_reg) & pll->lock_mask))
+		;
+
+	return 0;
+}
+
+static const struct clk_ops clk_pllv3_sys_vf610_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+	.recalc_rate	= clk_pllv3_sys_vf610_recalc_rate,
+	.round_rate	= clk_pllv3_sys_vf610_round_rate,
+	.set_rate	= clk_pllv3_sys_vf610_set_rate,
+};
+
 struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 			  const char *parent, void __iomem *base,
 			  u32 div_mask)
@@ -290,6 +376,9 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 	pll = xzalloc(sizeof(*pll));
 
 	switch (type) {
+	case IMX_PLLV3_SYS_VF610:
+		ops = &clk_pllv3_sys_vf610_ops;
+		break;
 	case IMX_PLLV3_SYS:
 		ops = &clk_pllv3_sys_ops;
 		break;
@@ -327,3 +416,22 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 
 	return &pll->clk;
 }
+
+struct clk *imx_clk_pllv3_locked(enum imx_pllv3_type type, const char *name,
+				 const char *parent, void __iomem *base,
+				 u32 div_mask, void __iomem *lock_reg, u32 lock_mask)
+{
+	struct clk *clk;
+	struct clk_pllv3 *pll;
+
+	clk = imx_clk_pllv3(type, name, parent, base, div_mask);
+	if (IS_ERR(clk))
+		return clk;
+
+	pll = to_clk_pllv3(clk);
+
+	pll->lock_reg  = lock_reg;
+	pll->lock_mask = lock_mask;
+
+	return clk;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 970f65c..0b28fb2 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -78,6 +78,7 @@ struct clk *imx_clk_pllv2(const char *name, const char *parent,
 enum imx_pllv3_type {
 	IMX_PLLV3_GENERIC,
 	IMX_PLLV3_SYS,
+	IMX_PLLV3_SYS_VF610,
 	IMX_PLLV3_USB,
 	IMX_PLLV3_USB_VF610,
 	IMX_PLLV3_AV,
@@ -89,6 +90,10 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 			  const char *parent, void __iomem *base,
 			  u32 div_mask);
 
+struct clk *imx_clk_pllv3_locked(enum imx_pllv3_type type, const char *name,
+				 const char *parent, void __iomem *base,
+				 u32 div_mask, void __iomem *lock_reg, u32 lock_mask);
+
 struct clk *imx_clk_pfd(const char *name, const char *parent,
 			void __iomem *reg, u8 idx);
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
