Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g2-53
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:06 +0200
Message-Id: <1371711261-10039-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/17] clk: gate: Add inverted gate support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

This adds support for gates which need 0 to enable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-gate.c | 37 +++++++++++++++++++++++++++++++++----
 include/linux/clk.h    |  2 ++
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index a455094..f632d85 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -25,6 +25,8 @@ struct clk_gate {
 	void __iomem *reg;
 	int shift;
 	const char *parent;
+#define CLK_GATE_INVERTED	(1 << 0)
+	unsigned flags;
 };
 
 static int clk_gate_enable(struct clk *clk)
@@ -33,7 +35,12 @@ static int clk_gate_enable(struct clk *clk)
 	u32 val;
 
 	val = readl(g->reg);
-	val |= 1 << g->shift;
+
+	if (g->flags & CLK_GATE_INVERTED)
+		val &= ~(1 << g->shift);
+	else
+		val |= 1 << g->shift;
+
 	writel(val, g->reg);
 
 	return 0;
@@ -45,7 +52,12 @@ static void clk_gate_disable(struct clk *clk)
 	u32 val;
 
 	val = readl(g->reg);
-	val &= ~(1 << g->shift);
+
+	if (g->flags & CLK_GATE_INVERTED)
+		val |= 1 << g->shift;
+	else
+		val &= ~(1 << g->shift);
+
 	writel(val, g->reg);
 }
 
@@ -57,9 +69,9 @@ static int clk_gate_is_enabled(struct clk *clk)
 	val = readl(g->reg);
 
 	if (val & (1 << g->shift))
-		return 1;
+		return g->flags & CLK_GATE_INVERTED ? 0 : 1;
 	else
-		return 0;
+		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
 }
 
 struct clk_ops clk_gate_ops = {
@@ -90,3 +102,20 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 
 	return &g->clk;
 }
+
+struct clk *clk_gate_inverted(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	struct clk *clk;
+	struct clk_gate *g;
+
+	clk = clk_gate(name, parent, reg, shift);
+	if (IS_ERR(clk))
+		return clk;
+
+	g = container_of(clk, struct clk_gate, clk);
+
+	g->flags = CLK_GATE_INVERTED;
+
+	return clk;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9c41cb8..718faa0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -214,6 +214,8 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents);
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 		u8 shift);
+struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem *reg,
+		u8 shift);
 
 int clk_is_enabled_always(struct clk *clk);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
