Delivery-date: Tue, 22 Apr 2025 10:39:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A1-003yb9-0P
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799s-0002JD-Bw
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vzxW2zw7Rjg9xwO+Oxdc3JsHjDxqQErFuhyRrbH4rX8=; b=qCzO/pwwph6qnbSxhguP+eaMzc
	13HY7RjC/rgKcIpoFZ28/bTbHNn2ay5JTuuchCpFBWttL/bIACNV2V00ZTwVlRhhc+DPxQR2ImmD+
	O+1TdFdebY6iGm55tCnf1cQv35PhLCrEYcO8y2wZ/8x25SHfFkpoNGugc9lQHv6tG/qi7ZHvpbtum
	hIf2JPUlBN4rESFzVrqVjjjzQ9Ozl344r6qobtdEqsRJXrGPaj8WP39R9VEbCRsxCrysXIvFsPmHf
	Ff/Qnd03VFnbjF3xWbgue+uWFpDyRb/yyxdH9nqbLm+YIczbTZauL0yj6Ti7d8HWDe4R1XS6iBbY/
	ScM33bog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7990-00000006MZB-0YMW;
	Tue, 22 Apr 2025 08:38:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRH-1H1N
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000i1-6T
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-001Vw5-02
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Uf-000vQy-2w
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:32 +0200
Message-Id: <20250422075637.220688-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_529202_63A3C351 
X-CRM114-Status: GOOD (  18.29  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] clk: mux: replace width member with mask as in Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux currently has a mask member in struct clk_mux, whereas barebox has
a width member and we have had bugs due to this already.

Let's switch to what Linux uses for better API compatibility.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-mux.c              | 18 ++++++++++--------
 drivers/clk/clk-stm32f4.c          |  2 +-
 drivers/clk/clk-stm32mp1.c         |  8 ++++----
 drivers/clk/imx/clk-composite-8m.c |  6 +++---
 drivers/clk/imx/clk-composite-93.c |  4 ++--
 drivers/clk/rockchip/clk-pll.c     |  8 ++++----
 drivers/clk/rockchip/clk.c         |  4 ++--
 include/linux/clk.h                | 26 ++++++++++++++++++++++++--
 8 files changed, 50 insertions(+), 26 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 1d94e0916732..cb29e3591f4b 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -37,7 +37,10 @@ EXPORT_SYMBOL_GPL(clk_mux_index_to_val);
 static int clk_mux_get_parent(struct clk_hw *hw)
 {
 	struct clk_mux *m = to_clk_mux(hw);
-	int idx = readl(m->reg) >> m->shift & ((1 << m->width) - 1);
+	u32 idx;
+
+	idx = readl(m->reg) >> m->shift;
+	idx &= m->mask;
 
 	return clk_mux_val_to_index(hw, m->table, m->flags, idx);
 }
@@ -57,11 +60,11 @@ static int clk_mux_set_parent(struct clk_hw *hw, u8 idx)
 	idx = clk_mux_index_to_val(m->table, m->flags, idx);
 
 	val = readl(m->reg);
-	val &= ~(((1 << m->width) - 1) << m->shift);
+	val &= ~(m->mask << m->shift);
 	val |= idx << m->shift;
 
 	if (m->flags & CLK_MUX_HIWORD_MASK)
-		val |= ((1 << m->width) - 1) << (m->shift + 16);
+		val |= m->mask << (m->shift + 16);
 	writel(val, m->reg);
 
 	return 0;
@@ -165,7 +168,7 @@ struct clk *clk_mux_alloc(const char *name, unsigned clk_flags, void __iomem *re
 
 	m->reg = reg;
 	m->shift = shift;
-	m->width = width;
+	m->mask = (1 << width) - 1;
 	m->flags = mux_flags;
 	m->hw.clk.ops = &clk_mux_ops;
 	m->hw.clk.name = name;
@@ -225,12 +228,11 @@ struct clk_hw *__clk_hw_register_mux(struct device *dev,
 	struct clk_mux *mux;
 	struct clk_hw *hw;
 	struct clk_init_data init = {};
-	u8 width = 0;
 	int ret = -EINVAL;
 
-	width = fls(mask) - ffs(mask) + 1;
-
 	if (clk_mux_flags & CLK_MUX_HIWORD_MASK) {
+		u8 width = fls(mask) - ffs(mask) + 1;
+
 		if (width + shift > 16) {
 			pr_err("mux value exceeds LOWORD field\n");
 			return ERR_PTR(-EINVAL);
@@ -254,7 +256,7 @@ struct clk_hw *__clk_hw_register_mux(struct device *dev,
 	/* struct clk_mux assignments */
 	mux->reg = reg;
 	mux->shift = shift;
-	mux->width = width;
+	mux->mask = mask;
 	mux->flags = clk_mux_flags;
 	mux->lock = lock;
 	mux->table = table;
diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index d6ccfa6d151e..22c47656c411 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -1081,7 +1081,7 @@ static struct clk_hw *stm32_register_cclk(struct device *dev,
 
 	mux->reg = reg;
 	mux->shift = shift;
-	mux->width = 2;
+	mux->mask = 3;
 	mux->flags = 0;
 
 	hw = clk_hw_register_composite(dev, name, parent_names, num_parents,
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 9ea4c0b83041..bd0badd5899b 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -487,7 +487,7 @@ static struct clk_hw *_get_stm32_mux(struct device *dev, void __iomem *base,
 
 		mmux->mux.reg = cfg->mux->reg_off + base;
 		mmux->mux.shift = cfg->mux->shift;
-		mmux->mux.width = cfg->mux->width;
+		mmux->mux.mask = (1 << cfg->mux->width) - 1;
 		mmux->mux.flags = cfg->mux->mux_flags;
 		mmux->mux.table = cfg->mux->table;
 		mmux->mux.lock = lock;
@@ -502,7 +502,7 @@ static struct clk_hw *_get_stm32_mux(struct device *dev, void __iomem *base,
 
 		mux->reg = cfg->mux->reg_off + base;
 		mux->shift = cfg->mux->shift;
-		mux->width = cfg->mux->width;
+		mux->mask = (1 << cfg->mux->width) - 1;
 		mux->flags = cfg->mux->mux_flags;
 		mux->table = cfg->mux->table;
 		mux->lock = lock;
@@ -735,7 +735,7 @@ struct stm32_pll_obj {
 #define FRAC_SHIFT	3
 #define FRACLE		BIT(16)
 #define PLL_MUX_SHIFT	0
-#define PLL_MUX_WIDTH	2
+#define PLL_MUX_MASK	3
 
 static int __pll_is_enabled(struct clk_hw *hw)
 {
@@ -878,7 +878,7 @@ static struct clk_hw *clk_register_pll(struct device *dev, const char *name,
 	element->mux.lock = lock;
 	element->mux.reg =  mux_reg;
 	element->mux.shift = PLL_MUX_SHIFT;
-	element->mux.width =  PLL_MUX_WIDTH;
+	element->mux.mask =  PLL_MUX_MASK;
 	element->mux.flags =  CLK_MUX_READ_ONLY;
 	element->mux.reg =  mux_reg;
 
diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 04d83d208b07..4870aac81265 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -20,7 +20,7 @@
 #define PCG_DIV_MAX		64
 
 #define PCG_PCS_SHIFT		24
-#define PCG_PCS_WIDTH		3
+#define PCG_PCS_MASK		0x7
 
 #define PCG_CGC_SHIFT		28
 
@@ -126,7 +126,7 @@ static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8 index)
 	u32 val;
 
 	val = readl(m->reg);
-	val &= ~(((1 << m->width) - 1) << m->shift);
+	val &= ~(m->mask << m->shift);
 	val |= index << m->shift;
 
 	/*
@@ -173,7 +173,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	mux_hw = &mux->hw;
 	mux->reg = reg;
 	mux->shift = PCG_PCS_SHIFT;
-	mux->width = PCG_PCS_WIDTH;
+	mux->mask = PCG_PCS_MASK;
 
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
 	if (!div)
diff --git a/drivers/clk/imx/clk-composite-93.c b/drivers/clk/imx/clk-composite-93.c
index 2b3753d56937..6ac912fbbb31 100644
--- a/drivers/clk/imx/clk-composite-93.c
+++ b/drivers/clk/imx/clk-composite-93.c
@@ -131,7 +131,7 @@ static int imx93_clk_composite_mux_set_parent(struct clk_hw *hw, u8 index)
 	int ret;
 
 	reg = readl(mux->reg);
-	reg &= ~(((1 << mux->width) - 1) << mux->shift);
+	reg &= ~(mux->mask << mux->shift);
 	val = val << mux->shift;
 	reg |= val;
 	writel(reg, mux->reg);
@@ -165,7 +165,7 @@ struct clk *imx93_clk_composite_flags(const char *name, const char * const *pare
 	mux_hw = &mux->hw;
 	mux->reg = reg;
 	mux->shift = CCM_MUX_SHIFT;
-	mux->width = 2;
+	mux->mask = CCM_MUX_MASK;
 
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
 	if (!div)
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index b4152b03b19f..64f9e0dc5ea6 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -20,11 +20,11 @@
 #include <linux/regmap.h>
 #include <linux/iopoll.h>
 
-#define PLL_MODE_WIDTH		2
+#define PLL_MODE_MASK		0x3
 #define PLL_MODE_SLOW		0x0
 #define PLL_MODE_NORM		0x1
 #define PLL_MODE_DEEP		0x2
-#define PLL_RK3328_MODE_WIDTH	1
+#define PLL_RK3328_MODE_MASK	0x1
 
 struct rockchip_clk_pll {
 	struct clk_hw		hw;
@@ -1086,9 +1086,9 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 	pll_mux->reg = ctx->reg_base + mode_offset;
 	pll_mux->shift = mode_shift;
 	if (pll_type == pll_rk3328)
-		pll_mux->width = PLL_RK3328_MODE_WIDTH;
+		pll_mux->mask = PLL_RK3328_MODE_MASK;
 	else
-		pll_mux->width = PLL_MODE_WIDTH;
+		pll_mux->mask = PLL_MODE_MASK;
 	pll_mux->flags = 0;
 	pll_mux->lock = &ctx->lock;
 	pll_mux->hw.init = &init;
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 180f38e532ba..c833f0961136 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -56,7 +56,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 
 		mux->reg = base + muxdiv_offset;
 		mux->shift = mux_shift;
-		mux->width = mux_width;
+		mux->mask = BIT(mux_width) - 1;
 		mux->flags = mux_flags;
 		mux->lock = lock;
 		mux->hw.clk.name = basprintf("%s.mux", name);
@@ -223,7 +223,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 
 		frac_mux->reg = base + child->muxdiv_offset;
 		frac_mux->shift = child->mux_shift;
-		frac_mux->width = child->mux_width;
+		frac_mux->mask = BIT(child->mux_width) - 1;
 		frac_mux->flags = child->mux_flags;
 		frac_mux->lock = lock;
 		frac_mux->hw.init = &init;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6bedc5204cca..883b1a314688 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -602,11 +602,33 @@ struct clk_fractional_divider {
 #define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
 #define CLK_FRAC_DIVIDER_POWER_OF_TWO_PS	BIT(2)
 
+/**
+ * struct clk_mux - multiplexer clock
+ *
+ * @hw:		handle between common and hardware-specific interfaces
+ * @reg:	register controlling multiplexer
+ * @mask:	mask of mutliplexer bit field
+ * @shift:	shift to multiplexer bit field
+ * @flags:	hardware-specific flags
+ * @table:	array of register values corresponding to the parent index
+ * @lock:	register lock
+ *
+ * Clock with multiple selectable parents.  Implements .get_parent, .set_parent
+ * and .recalc_rate
+ *
+ * Flags:
+ * CLK_MUX_HIWORD_MASK - The mux settings are only in lower 16-bit of this
+ *	register, and mask of mux bits are in higher 16-bit of this register.
+ *	While setting the mux bits, higher 16-bit should also be updated to
+ *	indicate changing mux bits.
+ * CLK_MUX_READ_ONLY - The mux registers can't be written, only read in the
+ * 	.get_parent clk_op.
+ */
 struct clk_mux {
 	struct clk_hw hw;
 	void __iomem *reg;
-	int shift;
-	int width;
+	u32 mask;
+	u8 shift;
 	unsigned flags;
 	u32 *table;
 	spinlock_t *lock;
-- 
2.39.5



