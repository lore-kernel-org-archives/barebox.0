Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHO-0008En-9s
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 10:31:15 +0100
Message-Id: <20190311093123.7956-7-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] clk: divider: pass divider flags
To: Barebox List <barebox@lists.infradead.org>

The generic clk divider needs clock flags and divider flags. Fix
prototypes to take both as separate arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-clps711x/clock.c |  4 ++--
 drivers/clk/clk-divider.c      | 28 +++++++++++++++++-----------
 drivers/clk/imx/clk-vf610.c    |  2 +-
 drivers/clk/imx/clk.h          | 14 ++++++++------
 drivers/clk/rockchip/clk.c     |  6 +++---
 include/linux/clk.h            | 16 ++++++++++------
 6 files changed, 41 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 4d6403b92e..2c5137c582 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -71,9 +71,9 @@ static __init int clps711x_clk_init(void)
 	clks[CLPS711X_CLK_BUS] = clk_fixed("bus", f_bus);
 	clks[CLPS711X_CLK_UART] = clk_fixed("uart", f_uart);
 	clks[CLPS711X_CLK_TIMERREF] = clk_fixed("timer_ref", f_timer_ref);
-	clks[CLPS711X_CLK_TIMER1] = clk_divider_table("timer1", "timer_ref",
+	clks[CLPS711X_CLK_TIMER1] = clk_divider_table("timer1", "timer_ref", 0,
 		IOMEM(SYSCON1), 5, 1, tdiv_tbl, ARRAY_SIZE(tdiv_tbl));
-	clks[CLPS711X_CLK_TIMER2] = clk_divider_table("timer2", "timer_ref",
+	clks[CLPS711X_CLK_TIMER2] = clk_divider_table("timer2", "timer_ref", 0,
 		IOMEM(SYSCON1), 7, 1, tdiv_tbl, ARRAY_SIZE(tdiv_tbl));
 
 	clkdev_add_physbase(clks[CLPS711X_CLK_UART], UARTDR1, NULL);
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 7b1bdde1ce..407aae78ea 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -249,7 +249,8 @@ struct clk_ops clk_divider_ops = {
 };
 
 struct clk *clk_divider_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width, unsigned flags)
+			      unsigned clk_flags, void __iomem *reg, u8 shift,
+			      u8 width, unsigned div_flags)
 {
 	struct clk_divider *div = xzalloc(sizeof(*div));
 
@@ -257,9 +258,10 @@ struct clk *clk_divider_alloc(const char *name, const char *parent,
 	div->reg = reg;
 	div->width = width;
 	div->parent = parent;
+	div->flags = div_flags;
 	div->clk.ops = &clk_divider_ops;
 	div->clk.name = name;
-	div->clk.flags = flags;
+	div->clk.flags = clk_flags;
 	div->clk.parent_names = &div->parent;
 	div->clk.num_parents = 1;
 
@@ -273,13 +275,14 @@ void clk_divider_free(struct clk *clk)
 	free(d);
 }
 
-struct clk *clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width, unsigned flags)
+struct clk *clk_divider(const char *name, const char *parent, unsigned clk_flags,
+			void __iomem *reg, u8 shift, u8 width, unsigned div_flags)
 {
 	struct clk *d;
 	int ret;
 
-	d = clk_divider_alloc(name , parent, reg, shift, width, flags);
+	d = clk_divider_alloc(name , parent, clk_flags, reg, shift, width,
+			      div_flags);
 
 	ret = clk_register(d);
 	if (ret) {
@@ -291,12 +294,13 @@ struct clk *clk_divider(const char *name, const char *parent,
 }
 
 struct clk *clk_divider_one_based(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width, unsigned flags)
+				  unsigned clk_flags, void __iomem *reg, u8 shift,
+				  u8 width, unsigned div_flags)
 {
 	struct clk_divider *div;
 	struct clk *clk;
 
-	clk = clk_divider(name, parent, reg, shift, width, flags);
+	clk = clk_divider(name, parent, clk_flags, reg, shift, width, div_flags);
 	if (IS_ERR(clk))
 		return clk;
 
@@ -306,9 +310,10 @@ struct clk *clk_divider_one_based(const char *name, const char *parent,
 	return clk;
 }
 
-struct clk *clk_divider_table(const char *name,
-		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		const struct clk_div_table *table, unsigned flags)
+struct clk *clk_divider_table(const char *name, const char *parent,
+			      unsigned clk_flags, void __iomem *reg, u8 shift,
+			      u8 width, const struct clk_div_table *table,
+			      unsigned div_flags)
 {
 	struct clk_divider *div = xzalloc(sizeof(*div));
 	const struct clk_div_table *clkt;
@@ -318,9 +323,10 @@ struct clk *clk_divider_table(const char *name,
 	div->reg = reg;
 	div->width = width;
 	div->parent = parent;
+	div->flags = div_flags;
 	div->clk.ops = &clk_divider_ops;
 	div->clk.name = name;
-	div->clk.flags = flags;
+	div->clk.flags = clk_flags;
 	div->clk.parent_names = &div->parent;
 	div->clk.num_parents = 1;
 	div->table = table;
diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 49d66fb592..1b1b881052 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -252,7 +252,7 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	clk[VF610_CLK_IPG_BUS] = imx_clk_divider("ipg_bus", "platform_bus", CCM_CACRR, 11, 2);
 
 	clk[VF610_CLK_PLL3_MAIN_DIV] = imx_clk_divider("pll3_usb_otg_div", "pll3_usb_otg", CCM_CACRR, 20, 1);
-	clk[VF610_CLK_PLL4_MAIN_DIV] = clk_divider_table("pll4_audio_div", "pll4_audio", CCM_CACRR, 6, 3, pll4_audio_div_table, 0);
+	clk[VF610_CLK_PLL4_MAIN_DIV] = clk_divider_table("pll4_audio_div", "pll4_audio", 0, CCM_CACRR, 6, 3, pll4_audio_div_table, 0);
 	clk[VF610_CLK_PLL6_MAIN_DIV] = imx_clk_divider("pll6_video_div", "pll6_video", CCM_CACRR, 21, 1);
 
 	clk[VF610_CLK_DDRMC] = imx_clk_gate2_cgr("ddrmc", "ddr_sel", CCM_CCGR6, CCM_CCGRx_CGn(14), 0x2);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 945671cbad..60fe36c6c6 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -7,34 +7,36 @@ struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
 static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_divider(name, parent, reg, shift, width, CLK_SET_RATE_PARENT);
+	return clk_divider(name, parent, CLK_SET_RATE_PARENT, reg, shift, width,
+			   0);
 }
 
 static inline struct clk *imx_clk_divider_flags(const char *name,
                 const char *parent, void __iomem *reg, u8 shift, u8 width,
                 unsigned long flags)
 {
-	return clk_divider(name, parent, reg, shift, width, flags);
+	return clk_divider(name, parent, flags, reg, shift, width, 0);
 }
 
 static inline struct clk *imx_clk_divider_np(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_divider(name, parent, reg, shift, width, 0);
+	return clk_divider(name, parent, 0, reg, shift, width, 0);
 }
 
 static inline struct clk *imx_clk_divider2(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_divider(name, parent, reg, shift, width, CLK_OPS_PARENT_ENABLE);
+	return clk_divider(name, parent, CLK_OPS_PARENT_ENABLE, reg, shift,
+			   width, 0);
 }
 
 static inline struct clk *imx_clk_divider_table(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 width,
 		const struct clk_div_table *table)
 {
-	return clk_divider_table(name, parent, reg, shift, width, table,
-			CLK_SET_RATE_PARENT);
+	return clk_divider_table(name, parent, CLK_SET_RATE_PARENT, reg, shift,
+				 width, table, 0);
 }
 
 static inline struct clk *imx_clk_fixed_factor(const char *name,
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 3222a4e09e..35729e0cfc 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -64,7 +64,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 	}
 
 	if (div_width > 0) {
-		div = clk_divider_alloc(name, *parent_names,
+		div = clk_divider_alloc(name, *parent_names, 0,
 		    base + muxdiv_offset, div_shift, div_width, div_flags);
 		if (!div)
 			return ERR_PTR(-ENOMEM);
@@ -188,13 +188,13 @@ void __init rockchip_clk_register_branches(
 		case branch_divider:
 			if (list->div_table)
 				clk = clk_divider_table(list->name,
-				    list->parent_names[0],
+				    list->parent_names[0], flags,
 				    reg_base + list->muxdiv_offset,
 				    list->div_shift, list->div_width,
 				    list->div_table, list->div_flags);
 			else
 				clk = clk_divider(list->name,
-				    list->parent_names[0],
+				    list->parent_names[0], flags,
 				    reg_base + list->muxdiv_offset,
 				    list->div_shift, list->div_width,
 				    list->div_flags);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 5ad12c571c..65d163c78d 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -352,15 +352,19 @@ unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 		unsigned long flags, unsigned long width);
 
 struct clk *clk_divider_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width, unsigned flags);
+			      unsigned clk_flags, void __iomem *reg,
+			      u8 shift, u8 width, unsigned div_flags);
 void clk_divider_free(struct clk *clk_divider);
 struct clk *clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width, unsigned flags);
+			unsigned clk_flags, void __iomem *reg, u8 shift,
+			u8 width, unsigned div_flags);
 struct clk *clk_divider_one_based(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width, unsigned flags);
-struct clk *clk_divider_table(const char *name,
-		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		const struct clk_div_table *table, unsigned flags);
+				  unsigned clk_flags, void __iomem *reg,
+				  u8 shift, u8 width, unsigned div_flags);
+struct clk *clk_divider_table(const char *name, const char *parent,
+			      unsigned clk_flags, void __iomem *reg, u8 shift,
+			      u8 width, const struct clk_div_table *table,
+			      unsigned div_flags);
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
