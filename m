Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQAUI-0007Zx-H0
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 08:37:19 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Aug 2015 10:36:43 +0200
Message-Id: <1439541405-15388-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/4] clk: socfpga: fix dt binding support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Change the set_parent/get_parent functions for clock-gates to work
with the Linux kernel DT bindings.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/socfpga.c | 73 ++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 52 insertions(+), 21 deletions(-)

diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga.c
index 3387c0e63451..5952efb3368e 100644
--- a/drivers/clk/socfpga.c
+++ b/drivers/clk/socfpga.c
@@ -42,6 +42,11 @@
 #define SOCFPGA_PLL_DIVQ_SHIFT	16
 #define SOCFGPA_MAX_PARENTS	3
 
+#define SOCFPGA_L4_MP_CLK		"l4_mp_clk"
+#define SOCFPGA_L4_SP_CLK		"l4_sp_clk"
+#define SOCFPGA_NAND_CLK		"nand_clk"
+#define SOCFPGA_NAND_X_CLK		"nand_x_clk"
+#define SOCFPGA_MMC_CLK			"sdmmc_clk"
 #define SOCFPGA_DB_CLK			"gpio_db_clk"
 
 #define div_mask(width)	((1 << (width)) - 1)
@@ -164,13 +169,10 @@ struct clk_socfpga {
 	const char *parent;
 	void __iomem *reg;
 	void __iomem *div_reg;
-	void __iomem *parent_reg;
 	unsigned int fixed_div;
 	unsigned int bit_idx;
 	unsigned int shift;
 	unsigned int width;
-	unsigned int parent_shift;
-	unsigned int parent_width;
 	const char *parent_names[SOCFGPA_MAX_PARENTS];
 };
 
@@ -231,21 +233,58 @@ static unsigned long clk_socfpga_recalc_rate(struct clk *clk,
 
 static int clk_socfpga_get_parent(struct clk *clk)
 {
-	struct clk_socfpga *cs = container_of(clk, struct clk_socfpga, clk);
+	u32 perpll_src;
+	u32 l4_src;
+
+	if (streq(clk->name, SOCFPGA_L4_MP_CLK)) {
+		l4_src = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
+		return l4_src &= 0x1;
+	}
+	if (streq(clk->name, SOCFPGA_L4_SP_CLK)) {
+		l4_src = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
+		return !!(l4_src & 2);
+	}
+
+	perpll_src = readl(clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
+	if (streq(clk->name, SOCFPGA_MMC_CLK))
+		return perpll_src &= 0x3;
+	if (streq(clk->name, SOCFPGA_NAND_CLK) ||
+	    streq(clk->name, SOCFPGA_NAND_X_CLK))
+		return (perpll_src >> 2) & 3;
 
-	return readl(cs->parent_reg) >> cs->parent_shift &
-		((1 << cs->parent_width) - 1);
+	/* QSPI clock */
+	return (perpll_src >> 4) & 3;
 }
 
 static int clk_socfpga_set_parent(struct clk *clk, u8 parent)
 {
-	struct clk_socfpga *cs = container_of(clk, struct clk_socfpga, clk);
-	uint32_t val;
-
-	val = readl(cs->parent_reg);
-	val &= ~(((1 << cs->parent_width) - 1) << cs->parent_shift);
-	val |= parent << cs->parent_shift;
-	writel(val, cs->parent_reg);
+	u32 src_reg;
+
+	if (streq(clk->name, SOCFPGA_L4_MP_CLK)) {
+		src_reg = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
+		src_reg &= ~0x1;
+		src_reg |= parent;
+		writel(src_reg, clk_mgr_base_addr + CLKMGR_L4SRC);
+	} else if (streq(clk->name, SOCFPGA_L4_SP_CLK)) {
+		src_reg = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
+		src_reg &= ~0x2;
+		src_reg |= (parent << 1);
+		writel(src_reg, clk_mgr_base_addr + CLKMGR_L4SRC);
+	} else {
+		src_reg = readl(clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
+		if (streq(clk->name, SOCFPGA_MMC_CLK)) {
+			src_reg &= ~0x3;
+			src_reg |= parent;
+		} else if (streq(clk->name, SOCFPGA_NAND_CLK) ||
+			streq(clk->name, SOCFPGA_NAND_X_CLK)) {
+			src_reg &= ~0xC;
+			src_reg |= (parent << 2);
+		} else {/* QSPI clock */
+			src_reg &= ~0x30;
+			src_reg |= (parent << 4);
+		}
+		writel(src_reg, clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
+	}
 
 	return 0;
 }
@@ -263,7 +302,6 @@ static struct clk *socfpga_gate_clk(struct device_node *node)
 {
 	u32 clk_gate[2];
 	u32 div_reg[3];
-	u32 parent_reg[3];
 	u32 fixed_div;
 	struct clk_socfpga *cs;
 	int ret;
@@ -293,13 +331,6 @@ static struct clk *socfpga_gate_clk(struct device_node *node)
 		cs->width = div_reg[2];
 	}
 
-	ret = of_property_read_u32_array(node, "parent-reg", parent_reg, 3);
-	if (!ret) {
-		cs->parent_reg = clk_mgr_base_addr + parent_reg[0];
-		cs->parent_shift = parent_reg[1];
-		cs->parent_width = parent_reg[2];
-	}
-
 	for (i = 0; i < SOCFGPA_MAX_PARENTS; i++) {
 		cs->parent_names[i] = of_clk_get_parent_name(node, i);
 		if (!cs->parent_names[i])
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
