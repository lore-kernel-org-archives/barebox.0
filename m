Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5JX-0006yg-Ao
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 16:42:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gj5JT-0007Zj-W4
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:42:11 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 14 Jan 2019 17:42:05 +0100
Message-Id: <20190114164211.10871-2-l.stach@pengutronix.de>
In-Reply-To: <20190114164211.10871-1-l.stach@pengutronix.de>
References: <20190114164211.10871-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/8] clk: move struct clk_gate into header
To: barebox@lists.infradead.org

To make it reusable in a composite clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/clk-gate.c | 12 +-----------
 include/linux/clk.h    | 12 ++++++++++++
 2 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 695e19ab549c..89240ff79402 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -20,16 +20,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-struct clk_gate {
-	struct clk clk;
-	void __iomem *reg;
-	int shift;
-	const char *parent;
-	unsigned flags;
-};
-
-#define to_clk_gate(_clk) container_of(_clk, struct clk_gate, clk)
-
 static void clk_gate_endisable(struct clk *clk, int enable)
 {
 	struct clk_gate *gate = container_of(clk, struct clk_gate, clk);
@@ -79,7 +69,7 @@ static int clk_gate_is_enabled(struct clk *clk)
 		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
 }
 
-static struct clk_ops clk_gate_ops = {
+struct clk_ops clk_gate_ops = {
 	.set_rate = clk_parent_set_rate,
 	.round_rate = clk_parent_round_rate,
 	.enable = clk_gate_enable,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 494221a43070..419a2c4c86b8 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -290,6 +290,18 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents,
 		unsigned flags);
 
+struct clk_gate {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	const char *parent;
+	unsigned flags;
+};
+
+#define to_clk_gate(_clk) container_of(_clk, struct clk_gate, clk)
+
+extern struct clk_ops clk_gate_ops;
+
 struct clk *clk_gate_alloc(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned flags,
 		u8 clk_gate_flags);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
