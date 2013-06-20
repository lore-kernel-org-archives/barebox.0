Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g1-56
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:05 +0200
Message-Id: <1371711261-10039-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/17] clk: divider: Add onebased divider support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

In some dividers the register value matches the divider value. This
patch adds support for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 44 ++++++++++++++++++++++++++++++++------------
 include/linux/clk.h       | 15 +++++++++++++++
 2 files changed, 47 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 58a7ea5..3bf8105 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -20,13 +20,12 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-struct clk_divider {
-	struct clk clk;
-	u8 shift;
-	u8 width;
-	void __iomem *reg;
-	const char *parent;
-};
+static unsigned int clk_divider_maxdiv(struct clk_divider *div)
+{
+	if (div->flags & CLK_DIVIDER_ONE_BASED)
+                return (1 << div->width) - 1;
+	return 1 << div->width;
+}
 
 static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 		unsigned long parent_rate)
@@ -40,11 +39,11 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 		rate = 1;
 
 	divval = DIV_ROUND_UP(parent_rate, rate);
+	if (divval > clk_divider_maxdiv(div))
+		divval = clk_divider_maxdiv(div);
 
-	if (divval > (1 << div->width))
-		divval = 1 << (div->width);
-
-	divval--;
+	if (!(div->flags & CLK_DIVIDER_ONE_BASED))
+		divval--;
 
 	val = readl(div->reg);
 	val &= ~(((1 << div->width) - 1) << div->shift);
@@ -63,7 +62,12 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 	val = readl(div->reg) >> div->shift;
 	val &= (1 << div->width) - 1;
 
-	val++;
+	if (div->flags & CLK_DIVIDER_ONE_BASED) {
+		if (!val)
+			val++;
+	} else {
+		val++;
+	}
 
 	return parent_rate / val;
 }
@@ -96,3 +100,19 @@ struct clk *clk_divider(const char *name, const char *parent,
 
 	return &div->clk;
 }
+
+struct clk *clk_divider_one_based(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	struct clk_divider *div;
+	struct clk *clk;
+
+	clk = clk_divider(name, parent, reg, shift, width);
+	if (IS_ERR(clk))
+		return clk;
+
+	div = container_of(clk, struct clk_divider, clk);
+	div->flags |= CLK_DIVIDER_ONE_BASED;
+
+	return clk;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 37a4813..9c41cb8 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -188,8 +188,23 @@ struct clk_div_table {
 };
 
 struct clk *clk_fixed(const char *name, int rate);
+
+struct clk_divider {
+	struct clk clk;
+	u8 shift;
+	u8 width;
+	void __iomem *reg;
+	const char *parent;
+#define CLK_DIVIDER_ONE_BASED	(1 << 0)
+	unsigned flags;
+};
+
+extern struct clk_ops clk_divider_ops;
+
 struct clk *clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width);
+struct clk *clk_divider_one_based(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width);
 struct clk *clk_divider_table(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 width,
 		const struct clk_div_table *table);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
