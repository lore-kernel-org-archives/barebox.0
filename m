Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOqd-0002Z6-HU
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:07:53 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id 5DE5518B4266
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:45 +0200
Message-Id: <1372626529-23443-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
References: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 3/7] clk: allow to instanciate clk gate without registering
 it
To: barebox@lists.infradead.org

Allows to reuse the clk gate code within other clocks.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/clk-gate.c | 31 +++++++++++++++++++++++++------
 include/linux/clk.h    |  4 ++++
 2 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index f632d85..f33effd 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -29,6 +29,8 @@ struct clk_gate {
 	unsigned flags;
 };
 
+#define to_clk_gate(_clk) container_of(_clk, struct clk_gate, clk)
+
 static int clk_gate_enable(struct clk *clk)
 {
 	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
@@ -80,11 +82,10 @@ struct clk_ops clk_gate_ops = {
 	.is_enabled = clk_gate_is_enabled,
 };
 
-struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
-		u8 shift)
+struct clk *clk_gate_alloc(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
 {
 	struct clk_gate *g = xzalloc(sizeof(*g));
-	int ret;
 
 	g->parent = parent;
 	g->reg = reg;
@@ -94,13 +95,31 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 	g->clk.parent_names = &g->parent;
 	g->clk.num_parents = 1;
 
-	ret = clk_register(&g->clk);
+	return &g->clk;
+}
+
+void clk_gate_free(struct clk *clk_gate)
+{
+	struct clk_gate *g = to_clk_gate(clk_gate);
+
+	free(g);
+}
+
+struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
+		u8 shift)
+{
+	struct clk *g;
+	int ret;
+
+	g = clk_gate_alloc(name , parent, reg, shift);
+
+	ret = clk_register(g);
 	if (ret) {
-		free(g);
+		free(to_clk_gate(g));
 		return ERR_PTR(ret);
 	}
 
-	return &g->clk;
+	return g;
 }
 
 struct clk *clk_gate_inverted(const char *name, const char *parent,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1cb661e..cc4f114 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -214,6 +214,10 @@ struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div);
 struct clk *clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents);
+
+struct clk *clk_gate_alloc(const char *name, const char *parent,
+		void __iomem *reg, u8 shift);
+void clk_gate_free(struct clk *clk_gate);
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 		u8 shift);
 struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem *reg,
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
