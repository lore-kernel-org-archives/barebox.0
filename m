Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055a-UF
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:30 +0100
Message-Id: <1394807569-23620-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/29] clk: clk-gate: pass flags to initializers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk.h        |  2 +-
 drivers/clk/clk-gate.c         | 11 ++++++-----
 drivers/clk/mvebu/common.c     |  2 +-
 drivers/clk/mxs/clk.h          |  2 +-
 drivers/clk/tegra/clk-periph.c |  2 +-
 include/linux/clk.h            |  6 +++---
 6 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 8e218fb..072af55 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -22,7 +22,7 @@ static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate(name, parent, reg, shift);
+	return clk_gate(name, parent, reg, shift, 0);
 }
 
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index baec855..f356de7 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -83,7 +83,7 @@ static struct clk_ops clk_gate_ops = {
 };
 
 struct clk *clk_gate_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
+		void __iomem *reg, u8 shift, unsigned flags)
 {
 	struct clk_gate *g = xzalloc(sizeof(*g));
 
@@ -92,6 +92,7 @@ struct clk *clk_gate_alloc(const char *name, const char *parent,
 	g->shift = shift;
 	g->clk.ops = &clk_gate_ops;
 	g->clk.name = name;
+	g->clk.flags = flags;
 	g->clk.parent_names = &g->parent;
 	g->clk.num_parents = 1;
 
@@ -106,12 +107,12 @@ void clk_gate_free(struct clk *clk_gate)
 }
 
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
-		u8 shift)
+		u8 shift, unsigned flags)
 {
 	struct clk *g;
 	int ret;
 
-	g = clk_gate_alloc(name , parent, reg, shift);
+	g = clk_gate_alloc(name , parent, reg, shift, flags);
 
 	ret = clk_register(g);
 	if (ret) {
@@ -123,12 +124,12 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 }
 
 struct clk *clk_gate_inverted(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
+		void __iomem *reg, u8 shift, unsigned flags)
 {
 	struct clk *clk;
 	struct clk_gate *g;
 
-	clk = clk_gate(name, parent, reg, shift);
+	clk = clk_gate(name, parent, reg, shift, flags);
 	if (IS_ERR(clk))
 		return clk;
 
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 37cc156..aa1e8f6 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -188,7 +188,7 @@ int mvebu_clk_gating_probe(struct device_d *dev)
 			(desc[n].parent) ? desc[n].parent : default_parent;
 		gate->bit_idx = desc[n].bit_idx;
 		gate->clk = clk_gate(desc[n].name, parent,
-				base, desc[n].bit_idx);
+				base, desc[n].bit_idx, 0);
 		WARN_ON(IS_ERR(gate->clk));
 	}
 
diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
index 3db38b4..168fa58 100644
--- a/drivers/clk/mxs/clk.h
+++ b/drivers/clk/mxs/clk.h
@@ -34,7 +34,7 @@ static inline struct clk *mxs_clk_fixed(const char *name, int rate)
 static inline struct clk *mxs_clk_gate(const char *name,
 			const char *parent_name, void __iomem *reg, u8 shift)
 {
-	return clk_gate_inverted(name, parent_name, reg, shift);
+	return clk_gate_inverted(name, parent_name, reg, shift, 0);
 }
 
 static inline struct clk *mxs_clk_mux(const char *name, void __iomem *reg,
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index 0b9c8dc..c970f63 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -145,7 +145,7 @@ struct clk *_tegra_clk_register_periph(const char *name,
 		goto out_mux;
 
 	periph->gate = clk_gate_alloc(NULL, NULL, clk_base + 0x10 +
-				      ((id >> 3) & 0xc), id & 0x1f);
+				      ((id >> 3) & 0xc), id & 0x1f, 0);
 	if (!periph->gate)
 		goto out_gate;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 439e88c..21edfab 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -260,12 +260,12 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
 		unsigned flags);
 
 struct clk *clk_gate_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift);
+		void __iomem *reg, u8 shift, unsigned flags);
 void clk_gate_free(struct clk *clk_gate);
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
-		u8 shift);
+		u8 shift, unsigned flags);
 struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem *reg,
-		u8 shift);
+		u8 shift, unsigned flags);
 int clk_is_enabled(struct clk *clk);
 
 int clk_is_enabled_always(struct clk *clk);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
