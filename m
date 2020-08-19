Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8U1K-0008RY-TX
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:45:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:45:05 +0200
Message-Id: <20200819194511.14005-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] clk: imx: make string arrays const char * const *
To: Barebox List <barebox@lists.infradead.org>

arrays of pointers to strings should be of type const char * const *,
so that not only the arrays of pointers are const, but also the strings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-composite-8m.c |  2 +-
 drivers/clk/imx/clk.h              | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 0cd52b5b46..3fa1b7cb6a 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -121,7 +121,7 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 };
 
 struct clk *imx8m_clk_composite_flags(const char *name,
-					const char **parent_names,
+					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
 					unsigned long flags)
 {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 5cd2c56a1b..374829a180 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -41,7 +41,7 @@ static inline struct clk *imx_clk_divider_table(const char *name,
 }
 
 static inline struct clk *imx_clk_mux_ldb(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, int num_parents)
+		u8 shift, u8 width, const char * const *parents, int num_parents)
 {
 	return clk_mux(name, CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT, reg,
 		       shift, width, parents, num_parents, CLK_MUX_READ_ONLY);
@@ -56,7 +56,7 @@ static inline struct clk *imx_clk_fixed_factor(const char *name,
 
 static inline struct clk *imx_clk_mux_flags(const char *name, void __iomem *reg,
 					    u8 shift, u8 width,
-					    const char **parents, u8 num_parents,
+					    const char * const *parents, u8 num_parents,
 					    unsigned long clk_flags)
 {
 	return clk_mux(name, clk_flags, reg, shift, width, parents, num_parents,
@@ -64,7 +64,7 @@ static inline struct clk *imx_clk_mux_flags(const char *name, void __iomem *reg,
 }
 
 static inline struct clk *imx_clk_mux2_flags(const char *name,
-		void __iomem *reg, u8 shift, u8 width, const char **parents,
+		void __iomem *reg, u8 shift, u8 width, const char * const *parents,
 		int num_parents, unsigned long clk_flags)
 {
 	return clk_mux(name, clk_flags | CLK_OPS_PARENT_ENABLE, reg, shift,
@@ -72,20 +72,20 @@ static inline struct clk *imx_clk_mux2_flags(const char *name,
 }
 
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
+		u8 shift, u8 width, const char * const *parents, u8 num_parents)
 {
 	return clk_mux(name, 0, reg, shift, width, parents, num_parents, 0);
 }
 
 static inline struct clk *imx_clk_mux2(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
+		u8 shift, u8 width, const char * const *parents, u8 num_parents)
 {
 	return clk_mux(name, CLK_OPS_PARENT_ENABLE, reg, shift, width, parents,
 		       num_parents, 0);
 }
 
 static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
+		u8 shift, u8 width, const char * const *parents, u8 num_parents)
 {
 	return clk_mux(name, CLK_SET_RATE_PARENT, reg, shift, width, parents,
 		       num_parents, 0);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
