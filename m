Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHO-0008El-B6
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 10:31:11 +0100
Message-Id: <20190311093123.7956-3-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] clk: parent_names should be const
To: Barebox List <barebox@lists.infradead.org>

Not only the array of pointers should be const, but also the strings
they point to. Add missing const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-composite.c | 2 +-
 drivers/clk/clk-mux.c       | 4 ++--
 include/linux/clk.h         | 8 ++++----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 716f6805f3..e21ab98453 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -116,7 +116,7 @@ static struct clk_ops clk_composite_ops = {
 };
 
 struct clk *clk_register_composite(const char *name,
-			const char **parent_names, int num_parents,
+			const char * const *parent_names, int num_parents,
 			struct clk *mux_clk,
 			struct clk *rate_clk,
 			struct clk *gate_clk,
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index d5fe640dce..a108a72d63 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -52,7 +52,7 @@ struct clk_ops clk_mux_ops = {
 };
 
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents,
+		u8 shift, u8 width, const char * const *parents, u8 num_parents,
 		unsigned flags)
 {
 	struct clk_mux *m = xzalloc(sizeof(*m));
@@ -77,7 +77,7 @@ void clk_mux_free(struct clk *clk_mux)
 }
 
 struct clk *clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents, unsigned flags)
+		u8 shift, u8 width, const char * const *parents, u8 num_parents, unsigned flags)
 {
 	struct clk *m;
 	int ret;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index ee888dc083..1f20eb2772 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -310,7 +310,7 @@ struct clk {
 	int enable_count;
 	struct list_head list;
 	const char *name;
-	const char **parent_names;
+	const char * const *parent_names;
 	int num_parents;
 
 	struct clk **parents;
@@ -384,11 +384,11 @@ struct clk_mux {
 extern struct clk_ops clk_mux_ops;
 
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents,
+		u8 shift, u8 width, const char * const *parents, u8 num_parents,
 		unsigned flags);
 void clk_mux_free(struct clk *clk_mux);
 struct clk *clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents,
+		u8 shift, u8 width, const char * const *parents, u8 num_parents,
 		unsigned flags);
 
 struct clk_gate {
@@ -429,7 +429,7 @@ struct clk *clk_lookup(const char *name);
 void clk_dump(int verbose);
 
 struct clk *clk_register_composite(const char *name,
-			const char **parent_names, int num_parents,
+			const char * const *parent_names, int num_parents,
 			struct clk *mux_clk,
 			struct clk *rate_clk,
 			struct clk *gate_clk,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
