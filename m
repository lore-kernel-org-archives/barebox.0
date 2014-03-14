Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAo-00055k-5b
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:32 +0100
Message-Id: <1394807569-23620-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/29] clk: clk-divider: pass flags to initializers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c    | 2 +-
 arch/arm/mach-imx/clk.h         | 2 +-
 drivers/clk/clk-divider-table.c | 3 ++-
 drivers/clk/clk-divider.c       | 7 ++++---
 include/linux/clk.h             | 6 +++---
 5 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 5560fff..8d78a18 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -214,7 +214,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[sata_ref_100m] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
 	clks[pcie_ref_125m] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
 
-	clks[enet_ref] = clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
+	clks[enet_ref] = clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table, 0);
 
 	/*                                name               parent_name         reg          idx */
 	clks[pll2_pfd0_352m] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 54f04ed..cdafad1 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -4,7 +4,7 @@
 static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_divider(name, parent, reg, shift, width);
+	return clk_divider(name, parent, reg, shift, width, 0);
 }
 
 static inline struct clk *imx_clk_fixed_factor(const char *name,
diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
index fd2d3fc..0caf85d 100644
--- a/drivers/clk/clk-divider-table.c
+++ b/drivers/clk/clk-divider-table.c
@@ -85,7 +85,7 @@ static struct clk_ops clk_divider_table_ops = {
 
 struct clk *clk_divider_table(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		const struct clk_div_table *table)
+		const struct clk_div_table *table, unsigned flags)
 {
 	struct clk_divider_table *div = xzalloc(sizeof(*div));
 	const struct clk_div_table *clkt;
@@ -98,6 +98,7 @@ struct clk *clk_divider_table(const char *name,
 	div->clk.ops = &clk_divider_table_ops;
 	div->clk.name = name;
 	div->clk.parent_names = &div->parent;
+	div->clk.flags = flags;
 	div->clk.num_parents = 1;
 	div->table = table;
 
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 3bf8105..bb8bcc1 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -78,7 +78,7 @@ struct clk_ops clk_divider_ops = {
 };
 
 struct clk *clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width)
+		void __iomem *reg, u8 shift, u8 width, unsigned flags)
 {
 	struct clk_divider *div = xzalloc(sizeof(*div));
 	int ret;
@@ -89,6 +89,7 @@ struct clk *clk_divider(const char *name, const char *parent,
 	div->parent = parent;
 	div->clk.ops = &clk_divider_ops;
 	div->clk.name = name;
+	div->clk.flags = flags;
 	div->clk.parent_names = &div->parent;
 	div->clk.num_parents = 1;
 
@@ -102,12 +103,12 @@ struct clk *clk_divider(const char *name, const char *parent,
 }
 
 struct clk *clk_divider_one_based(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width)
+		void __iomem *reg, u8 shift, u8 width, unsigned flags)
 {
 	struct clk_divider *div;
 	struct clk *clk;
 
-	clk = clk_divider(name, parent, reg, shift, width);
+	clk = clk_divider(name, parent, reg, shift, width, flags);
 	if (IS_ERR(clk))
 		return clk;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index e65a62a..7e5010a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -242,12 +242,12 @@ struct clk_divider {
 extern struct clk_ops clk_divider_ops;
 
 struct clk *clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width);
+		void __iomem *reg, u8 shift, u8 width, unsigned flags);
 struct clk *clk_divider_one_based(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width);
+		void __iomem *reg, u8 shift, u8 width, unsigned flags);
 struct clk *clk_divider_table(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		const struct clk_div_table *table);
+		const struct clk_div_table *table, unsigned flags);
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
