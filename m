Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLQt-0007sN-Cb
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:36 +0000
Received: by mail-ee0-f54.google.com with SMTP id d49so3969204eek.27
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:15 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:39 +0200
Message-Id: <1398591044-3616-7-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 06/11] clk: gate: unify enable and disable functions handling
To: barebox@lists.infradead.org

To avoid code duplication and make easier to introduce new flags.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/clk/clk-gate.c |   33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 11c749a..54489c4 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -30,36 +30,33 @@ struct clk_gate {
 
 #define to_clk_gate(_clk) container_of(_clk, struct clk_gate, clk)
 
-static int clk_gate_enable(struct clk *clk)
+static void clk_gate_endisable(struct clk *clk, int enable)
 {
-	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
+	struct clk_gate *gate = container_of(clk, struct clk_gate, clk);
+	int set = gate->flags & CLK_GATE_INVERTED ? 1 : 0;
 	u32 val;
 
-	val = readl(g->reg);
+	set ^= enable;
+	val = readl(gate->reg);
 
-	if (g->flags & CLK_GATE_INVERTED)
-		val &= ~(1 << g->shift);
+	if (set)
+		val |= BIT(gate->shift);
 	else
-		val |= 1 << g->shift;
+		val &= ~BIT(gate->shift);
 
-	writel(val, g->reg);
+	writel(val, gate->reg);
+}
+
+static int clk_gate_enable(struct clk *clk)
+{
+	clk_gate_endisable(clk, 1);
 
 	return 0;
 }
 
 static void clk_gate_disable(struct clk *clk)
 {
-	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
-	u32 val;
-
-	val = readl(g->reg);
-
-	if (g->flags & CLK_GATE_INVERTED)
-		val |= 1 << g->shift;
-	else
-		val &= ~(1 << g->shift);
-
-	writel(val, g->reg);
+	clk_gate_endisable(clk, 0);
 }
 
 static int clk_gate_is_enabled(struct clk *clk)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
