Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOqd-0002Z8-H8
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:07:52 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id 14B8618B4267
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:46 +0200
Message-Id: <1372626529-23443-4-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 4/7] clk: allow to instanciate clk mux without registering
 it
To: barebox@lists.infradead.org

Allows to reuse clk mux code within other clocks.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/clk-mux.c | 29 ++++++++++++++++++++++++-----
 include/linux/clk.h   |  4 ++++
 2 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index cb5f1a1..47efe12 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -27,6 +27,8 @@ struct clk_mux {
 	int width;
 };
 
+#define to_clk_mux(_clk) container_of(_clk, struct clk_mux, clk)
+
 static int clk_mux_get_parent(struct clk *clk)
 {
 	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
@@ -53,11 +55,10 @@ struct clk_ops clk_mux_ops = {
 	.set_parent = clk_mux_set_parent,
 };
 
-struct clk *clk_mux(const char *name, void __iomem *reg,
+struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
 	struct clk_mux *m = xzalloc(sizeof(*m));
-	int ret;
 
 	m->reg = reg;
 	m->shift = shift;
@@ -67,11 +68,29 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
 	m->clk.parent_names = parents;
 	m->clk.num_parents = num_parents;
 
-	ret = clk_register(&m->clk);
+	return &m->clk;
+}
+
+void clk_mux_free(struct clk *clk_mux)
+{
+	struct clk_mux *m = to_clk_mux(clk_mux);
+
+	free(m);
+}
+
+struct clk *clk_mux(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, u8 num_parents)
+{
+	struct clk *m;
+	int ret;
+
+	m = clk_mux_alloc(name, reg, shift, width, parents, num_parents);
+
+	ret = clk_register(m);
 	if (ret) {
-		free(m);
+		free(to_clk_mux(m));
 		return ERR_PTR(ret);
 	}
 
-	return &m->clk;
+	return m;
 }
diff --git a/include/linux/clk.h b/include/linux/clk.h
index cc4f114..0a565ef 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -212,6 +212,10 @@ struct clk *clk_divider_table(const char *name,
 		const struct clk_div_table *table);
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div);
+
+struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, u8 num_parents);
+void clk_mux_free(struct clk *clk_mux);
 struct clk *clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
