Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmDiY-0001j0-KV
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 06:08:00 +0000
Received: by mail-pg0-x244.google.com with SMTP id g2so4696827pge.2
 for <barebox@lists.infradead.org>; Thu, 09 Mar 2017 22:07:38 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  9 Mar 2017 22:07:32 -0800
Message-Id: <20170310060732.8955-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! clk: No-op CLK_OF_DECLARE if not enabled
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha, let's try and see if this fixes the build issues you were
having with the original patch.

If you'd rather I spin a v2 of the original patch, let me know.

Thanks,
Andrey Smirnov

 include/linux/clk.h | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index f705532..081a859 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -331,10 +331,6 @@ const struct of_device_id __clk_of_table_##name				\
 __attribute__ ((unused,section (".__clk_of_table"))) \
 	= { .compatible = compat, .data = fn }
 
-int of_clk_add_provider(struct device_node *np,
-			struct clk *(*clk_src_get)(struct of_phandle_args *args,
-						   void *data),
-			void *data);
 void of_clk_del_provider(struct device_node *np);
 
 typedef int (*of_clk_init_cb_t)(struct device_node *);
@@ -350,13 +346,26 @@ struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
 unsigned int of_clk_get_parent_count(struct device_node *np);
-char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
 int of_clk_parent_fill(struct device_node *np, const char **parents,
 		       unsigned int size);
 int of_clk_init(struct device_node *root, const struct of_device_id *matches);
 #else
 
-#define CLK_OF_DECLARE(name, compat, fn)
+
+/*
+ * Create a dummy variable to avoid 'unused function'
+ * warnings. Compiler should be smart enough to throw it out.
+ */
+#define CLK_OF_DECLARE(name, compat, fn)				\
+static const struct of_device_id __clk_of_table_##name			\
+__attribute__ ((unused)) = { .data = fn }
+
+
+static inline struct clk *
+of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data)
+{
+	return ERR_PTR(-ENOENT);
+}
 
 static inline struct clk *of_clk_get(struct device_node *np, int index)
 {
@@ -378,4 +387,10 @@ struct string_list;
 
 int clk_name_complete(struct string_list *sl, char *instr);
 
+int of_clk_add_provider(struct device_node *np,
+			struct clk *(*clk_src_get)(struct of_phandle_args *args,
+						   void *data),
+			void *data);
+char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
+
 #endif
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
