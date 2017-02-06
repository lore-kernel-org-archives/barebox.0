Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadBK-0004h2-3u
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:51 +0100
Message-Id: <20170206065057.19483-4-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] clk: i.MX: clk-gate2: Allow to pass flags
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-gate2.c | 11 ++++++-----
 drivers/clk/imx/clk.h       |  8 ++++----
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index f952f3e3f..e7dcd87a7 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -88,7 +88,8 @@ static struct clk_ops clk_gate2_ops = {
 };
 
 struct clk *clk_gate2_alloc(const char *name, const char *parent,
-			    void __iomem *reg, u8 shift, u8 cgr_val)
+			    void __iomem *reg, u8 shift, u8 cgr_val,
+			    unsigned long flags)
 {
 	struct clk_gate2 *g = xzalloc(sizeof(*g));
 
@@ -100,7 +101,7 @@ struct clk *clk_gate2_alloc(const char *name, const char *parent,
 	g->clk.name = name;
 	g->clk.parent_names = &g->parent;
 	g->clk.num_parents = 1;
-	g->clk.flags = CLK_SET_RATE_PARENT;
+	g->clk.flags = CLK_SET_RATE_PARENT | flags;
 
 	return &g->clk;
 }
@@ -113,12 +114,12 @@ void clk_gate2_free(struct clk *clk)
 }
 
 struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
-		      u8 shift, u8 cgr_val)
+		      u8 shift, u8 cgr_val, unsigned long flags)
 {
 	struct clk *g;
 	int ret;
 
-	g = clk_gate2_alloc(name , parent, reg, shift, cgr_val);
+	g = clk_gate2_alloc(name , parent, reg, shift, cgr_val, flags);
 
 	ret = clk_register(g);
 	if (ret) {
@@ -135,7 +136,7 @@ struct clk *clk_gate2_inverted(const char *name, const char *parent,
 	struct clk *clk;
 	struct clk_gate2 *g;
 
-	clk = clk_gate2(name, parent, reg, shift, 0x3);
+	clk = clk_gate2(name, parent, reg, shift, 0x3, 0);
 	if (IS_ERR(clk))
 		return clk;
 
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 1610c48ec..4f80a3262 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -2,7 +2,7 @@
 #define __IMX_CLK_H
 
 struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
-		      u8 shift, u8 cgr_val);
+		      u8 shift, u8 cgr_val, unsigned long flags);
 
 static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
@@ -77,13 +77,13 @@ static inline struct clk *imx_clk_gate_dis(const char *name, const char *parent,
 static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate2(name, parent, reg, shift, 0x3);
+	return clk_gate2(name, parent, reg, shift, 0x3, 0);
 }
 
 static inline struct clk *imx_clk_gate2_cgr(const char *name, const char *parent,
 					    void __iomem *reg, u8 shift, u8 cgr_val)
 {
-	return clk_gate2(name, parent, reg, shift, cgr_val);
+	return clk_gate2(name, parent, reg, shift, cgr_val, 0);
 }
 
 static inline struct clk *imx_clk_gate3(const char *name, const char *parent,
@@ -95,7 +95,7 @@ static inline struct clk *imx_clk_gate3(const char *name, const char *parent,
 static inline struct clk *imx_clk_gate4(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate2(name, parent, reg, shift, 0x3);
+	return clk_gate2(name, parent, reg, shift, 0x3, 0);
 }
 
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
