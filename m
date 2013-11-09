Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wx-0000gT-Cg
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:56 +0000
Received: by mail-ee0-f49.google.com with SMTP id b15so210102eek.22
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:29 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:19 +0100
Message-Id: <1384003461-21039-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/5] clk: add of_clk_init and CLK_OF_DECLARE macro
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This add barebox versions of of_clk_init for parsing and registering
clock providers from DT. Also, a macro CLK_OF_DECLARE is added, that
allows to put init callbacks into its own section that can be linked
in the binary.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/clk/clk.c   | 37 +++++++++++++++++++++++++++++++++++++
 include/linux/clk.h | 14 ++++++++++++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 5942e29..31d73c0 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -271,6 +271,10 @@ struct of_clk_provider {
 	void *data;
 };
 
+extern struct of_device_id __clk_of_table_start[];
+const struct of_device_id __clk_of_table_sentinel
+	__attribute__ ((unused,section (".__clk_of_table_end")));
+
 static LIST_HEAD(of_clk_providers);
 
 struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec,
@@ -355,6 +359,39 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 
 	return clk;
 }
+
+/**
+ * of_clk_init() - Scan and init clock providers from the DT
+ * @root: parent of the first level to probe or NULL for the root of the tree
+ * @matches: array of compatible values and init functions for providers.
+ *
+ * This function scans the device tree for matching clock providers and
+ * calls their initialization functions
+ *
+ * Returns 0 on success, < 0 on failure.
+ */
+int of_clk_init(struct device_node *root, const struct of_device_id *matches)
+{
+	const struct of_device_id *match;
+	int rc;
+
+	if (!root)
+		root = of_find_node_by_path("/");
+	if (!root)
+		return -EINVAL;
+	if (!matches)
+		matches = __clk_of_table_start;
+
+	for_each_matching_node_and_match(root, matches, &match) {
+		of_clk_init_cb_t clk_init_cb = (of_clk_init_cb_t)match->data;
+		rc = clk_init_cb(root);
+		if (rc)
+			pr_err("%s: failed to init clock for %s: %d\n",
+			       __func__, root->full_name, rc);
+	}
+
+	return 0;
+}
 #endif
 
 static void dump_one(struct clk *clk, int verbose, int indent)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 4778400..af38c72 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -12,6 +12,7 @@
 #define __LINUX_CLK_H
 
 #include <linux/err.h>
+#include <linux/stringify.h>
 
 struct device_d;
 
@@ -278,6 +279,11 @@ void clk_dump(int verbose);
 struct device_node;
 struct of_phandle_args;
 
+#define CLK_OF_DECLARE(name, compat, fn)				\
+const struct of_device_id __clk_of_table_##name				\
+__attribute__ ((unused,section (".__clk_of_table_" __stringify(name)))) \
+	= { .compatible = compat, .data = (u32)fn }
+
 #if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 int of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *args,
@@ -285,6 +291,8 @@ int of_clk_add_provider(struct device_node *np,
 			void *data);
 void of_clk_del_provider(struct device_node *np);
 
+typedef int (*of_clk_init_cb_t)(struct device_node *);
+
 struct clk_onecell_data {
 	struct clk **clks;
 	unsigned int clk_num;
@@ -295,6 +303,7 @@ struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data);
 struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
+int of_clk_init(struct device_node *root, const struct of_device_id *matches);
 #else
 static inline struct clk *of_clk_get(struct device_node *np, int index)
 {
@@ -305,6 +314,11 @@ static inline struct clk *of_clk_get_by_name(struct device_node *np,
 {
 	return ERR_PTR(-ENOENT);
 }
+static inline int of_clk_init(struct device_node *root,
+			      const struct of_device_id *matches)
+{
+	return 0;
+}
 #endif
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
