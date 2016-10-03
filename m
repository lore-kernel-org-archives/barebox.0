Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qq-0008GV-Ip
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:31 +0000
Received: by mail-pa0-x243.google.com with SMTP id r9so7947141paz.1
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:45 -0700
Message-Id: <1475505657-898-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/20] i.MX: clk: Port imx_clk_gate2_cgr()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Update clk-gate2 code to be able to accept arbitrary 'cgr' value and
introduce imx_clk_gate2_cgr() (Used by Vybrid clock tree)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/clk-gate2.c | 12 +++++++-----
 arch/arm/mach-imx/clk.h       | 11 +++++++++--
 2 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/clk-gate2.c b/arch/arm/mach-imx/clk-gate2.c
index faed631..f952f3e 100644
--- a/arch/arm/mach-imx/clk-gate2.c
+++ b/arch/arm/mach-imx/clk-gate2.c
@@ -26,6 +26,7 @@ struct clk_gate2 {
 	struct clk clk;
 	void __iomem *reg;
 	int shift;
+	u8 cgr_val;
 	const char *parent;
 #define CLK_GATE_INVERTED	(1 << 0)
 	unsigned flags;
@@ -43,7 +44,7 @@ static int clk_gate2_enable(struct clk *clk)
 	if (g->flags & CLK_GATE_INVERTED)
 		val &= ~(3 << g->shift);
 	else
-		val |= 3 << g->shift;
+		val |= g->cgr_val << g->shift;
 
 	writel(val, g->reg);
 
@@ -87,12 +88,13 @@ static struct clk_ops clk_gate2_ops = {
 };
 
 struct clk *clk_gate2_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
+			    void __iomem *reg, u8 shift, u8 cgr_val)
 {
 	struct clk_gate2 *g = xzalloc(sizeof(*g));
 
 	g->parent = parent;
 	g->reg = reg;
+	g->cgr_val = cgr_val;
 	g->shift = shift;
 	g->clk.ops = &clk_gate2_ops;
 	g->clk.name = name;
@@ -111,12 +113,12 @@ void clk_gate2_free(struct clk *clk)
 }
 
 struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
-		u8 shift)
+		      u8 shift, u8 cgr_val)
 {
 	struct clk *g;
 	int ret;
 
-	g = clk_gate2_alloc(name , parent, reg, shift);
+	g = clk_gate2_alloc(name , parent, reg, shift, cgr_val);
 
 	ret = clk_register(g);
 	if (ret) {
@@ -133,7 +135,7 @@ struct clk *clk_gate2_inverted(const char *name, const char *parent,
 	struct clk *clk;
 	struct clk_gate2 *g;
 
-	clk = clk_gate2(name, parent, reg, shift);
+	clk = clk_gate2(name, parent, reg, shift, 0x3);
 	if (IS_ERR(clk))
 		return clk;
 
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index c5913e1..2aeb356 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -2,7 +2,7 @@
 #define __IMX_CLK_H
 
 struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
-		u8 shift);
+		      u8 shift, u8 cgr_val);
 
 static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
@@ -51,9 +51,16 @@ static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate2(name, parent, reg, shift);
+	return clk_gate2(name, parent, reg, shift, 0x3);
 }
 
+static inline struct clk *imx_clk_gate2_cgr(const char *name, const char *parent,
+					    void __iomem *reg, u8 shift, u8 cgr_val)
+{
+	return clk_gate2(name, parent, reg, shift, cgr_val);
+}
+
+
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
 		void __iomem *base);
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
