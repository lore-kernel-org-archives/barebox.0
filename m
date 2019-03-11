Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHM-0003dp-0E
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 08/14] clk: mux: Support mux specific flags
Date: Mon, 11 Mar 2019 10:31:17 +0100
Message-Id: <20190311093123.7956-9-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

We'll need mux specific flags in the future, so add a parameter to
the mux initialization functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c          | 15 +++++++++------
 drivers/clk/imx/clk.h          | 19 +++++++++++--------
 drivers/clk/mxs/clk.h          |  2 +-
 drivers/clk/rockchip/clk-pll.c |  3 ++-
 drivers/clk/rockchip/clk.c     | 10 +++-------
 drivers/clk/tegra/clk-periph.c |  2 +-
 include/linux/clk.h            | 14 ++++++++------
 7 files changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index a108a72d63..ebf736bdff 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -51,18 +51,19 @@ struct clk_ops clk_mux_ops = {
 	.set_parent = clk_mux_set_parent,
 };
 
-struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
+struct clk *clk_mux_alloc(const char *name, unsigned clk_flags, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, u8 num_parents,
-		unsigned flags)
+		unsigned mux_flags)
 {
 	struct clk_mux *m = xzalloc(sizeof(*m));
 
 	m->reg = reg;
 	m->shift = shift;
 	m->width = width;
+	m->flags = mux_flags;
 	m->clk.ops = &clk_mux_ops;
 	m->clk.name = name;
-	m->clk.flags = flags;
+	m->clk.flags = clk_flags;
 	m->clk.parent_names = parents;
 	m->clk.num_parents = num_parents;
 
@@ -76,13 +77,15 @@ void clk_mux_free(struct clk *clk_mux)
 	free(m);
 }
 
-struct clk *clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char * const *parents, u8 num_parents, unsigned flags)
+struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
+		    u8 shift, u8 width, const char * const *parents,
+		    u8 num_parents, unsigned mux_flags)
 {
 	struct clk *m;
 	int ret;
 
-	m = clk_mux_alloc(name, reg, shift, width, parents, num_parents, flags);
+	m = clk_mux_alloc(name, clk_flags, reg, shift, width, parents,
+			  num_parents, mux_flags);
 
 	ret = clk_register(m);
 	if (ret) {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 60fe36c6c6..875c76a8b3 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -48,35 +48,38 @@ static inline struct clk *imx_clk_fixed_factor(const char *name,
 static inline struct clk *imx_clk_mux_flags(const char *name, void __iomem *reg,
 					    u8 shift, u8 width,
 					    const char **parents, u8 num_parents,
-					    unsigned long flags)
+					    unsigned long clk_flags)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents, flags);
+	return clk_mux(name, clk_flags, reg, shift, width, parents, num_parents,
+		       0);
 }
 
 static inline struct clk *imx_clk_mux2_flags(const char *name,
 		void __iomem *reg, u8 shift, u8 width, const char **parents,
-		int num_parents, unsigned long flags)
+		int num_parents, unsigned long clk_flags)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents,
-		       flags | CLK_OPS_PARENT_ENABLE);
+	return clk_mux(name, clk_flags | CLK_OPS_PARENT_ENABLE, reg, shift,
+		       width, parents, num_parents, 0);
 }
 
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents, 0);
+	return clk_mux(name, 0, reg, shift, width, parents, num_parents, 0);
 }
 
 static inline struct clk *imx_clk_mux2(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents, CLK_OPS_PARENT_ENABLE);
+	return clk_mux(name, CLK_OPS_PARENT_ENABLE, reg, shift, width, parents,
+		       num_parents, 0);
 }
 
 static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents, CLK_SET_RATE_PARENT);
+	return clk_mux(name, CLK_SET_RATE_PARENT, reg, shift, width, parents,
+		       num_parents, 0);
 }
 
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
index 7bab7b5e6e..00895de507 100644
--- a/drivers/clk/mxs/clk.h
+++ b/drivers/clk/mxs/clk.h
@@ -40,7 +40,7 @@ static inline struct clk *mxs_clk_gate(const char *name,
 static inline struct clk *mxs_clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parent_names, int num_parents)
 {
-	return clk_mux(name, reg, shift, width, parent_names, num_parents, 0);
+	return clk_mux(name, 0, reg, shift, width, parent_names, num_parents, 0);
 }
 
 static inline struct clk *mxs_clk_fixed_factor(const char *name,
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 87a3969c28..39ccf0a226 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -352,7 +352,8 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 	pll_parents[1] = pll->pll_name;
 	pll_parents[2] = parent_names[1];
 
-	pll_mux = clk_mux_alloc(name, base + mode_offset, mode_shift, PLL_MODE_MASK, pll_parents, 3, CLK_SET_RATE_PARENT);
+	pll_mux = clk_mux_alloc(name, CLK_SET_RATE_PARENT, base + mode_offset, mode_shift,
+				PLL_MODE_MASK, pll_parents, 3, 0);
 	pll->pll_mux_ops = pll_mux->ops;
 	mux_clk = pll_mux;
 
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 35729e0cfc..9e0cbadd57 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -50,7 +50,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 	struct clk *div = NULL;
 
 	if (num_parents > 1) {
-		mux = clk_mux_alloc(name, base + muxdiv_offset, mux_shift,
+		mux = clk_mux_alloc(name, 0, base + muxdiv_offset, mux_shift,
 		    mux_width, parent_names, num_parents, mux_flags);
 		if (!mux)
 			return ERR_PTR(-ENOMEM);
@@ -176,14 +176,10 @@ void __init rockchip_clk_register_branches(
 		/* catch simple muxes */
 		switch (list->branch_type) {
 		case branch_mux:
-			/*
-			 * mux_flags and flags are ored, this is safe,
-			 * since there is no value clash, but isn't that elegant
-			 */
-			clk = clk_mux(list->name,
+			clk = clk_mux(list->name, flags,
 			    reg_base + list->muxdiv_offset, list->mux_shift,
 			    list->mux_width, list->parent_names,
-			    list->num_parents, list->mux_flags | flags);
+			    list->num_parents, list->mux_flags);
 			break;
 		case branch_divider:
 			if (list->div_table)
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index fd1e2ed2c6..b4182861e7 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -123,7 +123,7 @@ static struct clk *_tegra_clk_register_periph(const char *name,
 		goto out_periph;
 	}
 
-	periph->mux = clk_mux_alloc(NULL, clk_base + reg_offset, 32 - mux_size,
+	periph->mux = clk_mux_alloc(NULL, 0, clk_base + reg_offset, 32 - mux_size,
 				    mux_size, parent_names, num_parents, 0);
 	if (!periph->mux)
 		goto out_mux;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 2de963e7e9..2e698e2ea6 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -384,19 +384,21 @@ struct clk_mux {
 	void __iomem *reg;
 	int shift;
 	int width;
+	unsigned flags;
 };
 
 #define to_clk_mux(_clk) container_of(_clk, struct clk_mux, clk)
 
 extern struct clk_ops clk_mux_ops;
 
-struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char * const *parents, u8 num_parents,
-		unsigned flags);
+struct clk *clk_mux_alloc(const char *name, unsigned clk_flags,
+			  void __iomem *reg, u8 shift, u8 width,
+			  const char * const *parents, u8 num_parents,
+			  unsigned mux_flags);
 void clk_mux_free(struct clk *clk_mux);
-struct clk *clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char * const *parents, u8 num_parents,
-		unsigned flags);
+struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
+		    u8 shift, u8 width, const char * const *parents,
+		    u8 num_parents, unsigned mux_flags);
 
 struct clk_gate {
 	struct clk clk;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
