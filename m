Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAh-00055c-Qh
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:29 +0100
Message-Id: <1394807569-23620-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/29] clk: clk-mux: pass clk flags from initializers
To: barebox@lists.infradead.org

struct clk has a flags field, let the clk-mux initializers set this
field.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk.h        | 2 +-
 drivers/clk/clk-mux.c          | 8 +++++---
 drivers/clk/mxs/clk.h          | 2 +-
 drivers/clk/tegra/clk-periph.c | 2 +-
 include/linux/clk.h            | 6 ++++--
 5 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 4a7298d..8e218fb 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -16,7 +16,7 @@ static inline struct clk *imx_clk_fixed_factor(const char *name,
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents);
+	return clk_mux(name, reg, shift, width, parents, num_parents, 0);
 }
 
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index b22bdd1..9dcd39c 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -56,7 +56,8 @@ static struct clk_ops clk_mux_ops = {
 };
 
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
+		u8 shift, u8 width, const char **parents, u8 num_parents,
+		unsigned flags)
 {
 	struct clk_mux *m = xzalloc(sizeof(*m));
 
@@ -65,6 +66,7 @@ struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
 	m->width = width;
 	m->clk.ops = &clk_mux_ops;
 	m->clk.name = name;
+	m->clk.flags = flags;
 	m->clk.parent_names = parents;
 	m->clk.num_parents = num_parents;
 
@@ -79,12 +81,12 @@ void clk_mux_free(struct clk *clk_mux)
 }
 
 struct clk *clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
+		u8 shift, u8 width, const char **parents, u8 num_parents, unsigned flags)
 {
 	struct clk *m;
 	int ret;
 
-	m = clk_mux_alloc(name, reg, shift, width, parents, num_parents);
+	m = clk_mux_alloc(name, reg, shift, width, parents, num_parents, flags);
 
 	ret = clk_register(m);
 	if (ret) {
diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
index b4fcfa0..3db38b4 100644
--- a/drivers/clk/mxs/clk.h
+++ b/drivers/clk/mxs/clk.h
@@ -40,7 +40,7 @@ static inline struct clk *mxs_clk_gate(const char *name,
 static inline struct clk *mxs_clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parent_names, int num_parents)
 {
-	return clk_mux(name, reg, shift, width, parent_names, num_parents);
+	return clk_mux(name, reg, shift, width, parent_names, num_parents, 0);
 }
 
 static inline struct clk *mxs_clk_fixed_factor(const char *name,
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index e969495..0b9c8dc 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -140,7 +140,7 @@ struct clk *_tegra_clk_register_periph(const char *name,
 	}
 
 	periph->mux = clk_mux_alloc(NULL, clk_base + reg_offset, 30, 2,
-				    parent_names, num_parents);
+				    parent_names, num_parents, 0);
 	if (!periph->mux)
 		goto out_mux;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index af38c72..439e88c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -252,10 +252,12 @@ struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div);
 
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents);
+		u8 shift, u8 width, const char **parents, u8 num_parents,
+		unsigned flags);
 void clk_mux_free(struct clk *clk_mux);
 struct clk *clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents);
+		u8 shift, u8 width, const char **parents, u8 num_parents,
+		unsigned flags);
 
 struct clk *clk_gate_alloc(const char *name, const char *parent,
 		void __iomem *reg, u8 shift);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
