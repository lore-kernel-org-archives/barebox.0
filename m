Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAm-0005Gv-A3
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:31 +0100
Message-Id: <1394807569-23620-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/29] clk: clk-fixed-factor: pass flags to initializers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk.h        | 2 +-
 drivers/clk/clk-fixed-factor.c | 3 ++-
 drivers/clk/mvebu/common.c     | 2 +-
 drivers/clk/mxs/clk.h          | 2 +-
 include/linux/clk.h            | 3 ++-
 5 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 072af55..54f04ed 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -10,7 +10,7 @@ static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 static inline struct clk *imx_clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div)
 {
-	return clk_fixed_factor(name, parent, mult, div);
+	return clk_fixed_factor(name, parent, mult, div, 0);
 }
 
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index f0ecbd3..df0d2f3 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -40,7 +40,7 @@ static struct clk_ops clk_fixed_factor_ops = {
 };
 
 struct clk *clk_fixed_factor(const char *name,
-		const char *parent, unsigned int mult, unsigned int div)
+		const char *parent, unsigned int mult, unsigned int div, unsigned flags)
 {
 	struct clk_fixed_factor *f = xzalloc(sizeof(*f));
 	int ret;
@@ -50,6 +50,7 @@ struct clk *clk_fixed_factor(const char *name,
 	f->parent = parent;
 	f->clk.ops = &clk_fixed_factor_ops;
 	f->clk.name = name;
+	f->clk.flags = flags;
 	f->clk.parent_names = &f->parent;
 	f->clk.num_parents = 1;
 
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index aa1e8f6..658ce3e 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -87,7 +87,7 @@ int mvebu_coreclk_probe(struct device_d *dev)
 					      2+n, &rclk_name);
 		desc->get_clk_ratio(base, desc->ratios[n].id, &mult, &div);
 		clk_data.clks[2+n] = clk_fixed_factor(rclk_name, cpuclk_name,
-						mult, div);
+						mult, div, 0);
 		WARN_ON(IS_ERR(clk_data.clks[2+n]));
 	};
 
diff --git a/drivers/clk/mxs/clk.h b/drivers/clk/mxs/clk.h
index 168fa58..7bab7b5 100644
--- a/drivers/clk/mxs/clk.h
+++ b/drivers/clk/mxs/clk.h
@@ -46,7 +46,7 @@ static inline struct clk *mxs_clk_mux(const char *name, void __iomem *reg,
 static inline struct clk *mxs_clk_fixed_factor(const char *name,
 		const char *parent_name, unsigned int mult, unsigned int div)
 {
-	return clk_fixed_factor(name, parent_name, mult, div);
+	return clk_fixed_factor(name, parent_name, mult, div, 0);
 }
 
 #endif /* __MXS_CLK_H */
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 21edfab..e65a62a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -249,7 +249,8 @@ struct clk *clk_divider_table(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 width,
 		const struct clk_div_table *table);
 struct clk *clk_fixed_factor(const char *name,
-		const char *parent, unsigned int mult, unsigned int div);
+		const char *parent, unsigned int mult, unsigned int div,
+		unsigned flags);
 
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents,
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
