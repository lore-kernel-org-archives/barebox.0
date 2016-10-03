Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qr-0008GS-Sj
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:36 +0000
Received: by mail-pa0-x242.google.com with SMTP id t6so5023982pae.2
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:43 -0700
Message-Id: <1475505657-898-7-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/20] clk: Port clock dependency resolution code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port the clock dependency resolution algorithm utilized by Linux
kernel's version of of_clk_init(), to allow for SoCs whose DT clock
configuration reqires such behaviour for correct initialization (Vybrid
is one such example).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/clk.c | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 82 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 630a84d..a38f339 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -404,7 +404,7 @@ EXPORT_SYMBOL_GPL(of_clk_del_provider);
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 {
 	struct of_clk_provider *provider;
-	struct clk *clk = ERR_PTR(-ENOENT);
+	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
 
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_clk_providers, link) {
@@ -437,6 +437,47 @@ char *of_clk_get_parent_name(struct device_node *np, unsigned int index)
 }
 EXPORT_SYMBOL_GPL(of_clk_get_parent_name);
 
+struct clock_provider {
+	of_clk_init_cb_t clk_init_cb;
+	struct device_node *np;
+	struct list_head node;
+};
+
+/*
+ * This function looks for a parent clock. If there is one, then it
+ * checks that the provider for this parent clock was initialized, in
+ * this case the parent clock will be ready.
+ */
+static int parent_ready(struct device_node *np)
+{
+	int i = 0;
+
+	while (true) {
+		struct clk *clk = of_clk_get(np, i);
+
+		/* this parent is ready we can check the next one */
+		if (!IS_ERR(clk)) {
+			clk_put(clk);
+			i++;
+			continue;
+		}
+
+		/* at least one parent is not ready, we exit now */
+		if (PTR_ERR(clk) == -EPROBE_DEFER)
+			return 0;
+
+		/*
+		 * Here we make assumption that the device tree is
+		 * written correctly. So an error means that there is
+		 * no more parent. As we didn't exit yet, then the
+		 * previous parent are ready. If there is no clock
+		 * parent, no need to wait for them, then we can
+		 * consider their absence as being ready
+		 */
+		return 1;
+	}
+}
+
 /**
  * of_clk_init() - Scan and init clock providers from the DT
  * @root: parent of the first level to probe or NULL for the root of the tree
@@ -449,8 +490,11 @@ EXPORT_SYMBOL_GPL(of_clk_get_parent_name);
  */
 int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 {
+	struct clock_provider *clk_provider, *next;
+	bool is_init_done;
+	bool force = false;
+	LIST_HEAD(clk_provider_list);
 	const struct of_device_id *match;
-	int rc;
 
 	if (!root)
 		root = of_find_node_by_path("/");
@@ -459,12 +503,43 @@ int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 	if (!matches)
 		matches = __clk_of_table_start;
 
+	/* First prepare the list of the clocks providers */
 	for_each_matching_node_and_match(root, matches, &match) {
-		of_clk_init_cb_t clk_init_cb = (of_clk_init_cb_t)match->data;
-		rc = clk_init_cb(root);
-		if (rc)
-			pr_err("%s: failed to init clock for %s: %d\n",
-			       __func__, root->full_name, rc);
+		struct clock_provider *parent;
+
+		if (!of_device_is_available(root))
+			continue;
+
+		parent = xzalloc(sizeof(*parent));
+
+		parent->clk_init_cb = match->data;
+		parent->np = root;
+		list_add_tail(&parent->node, &clk_provider_list);
+	}
+
+	while (!list_empty(&clk_provider_list)) {
+		is_init_done = false;
+		list_for_each_entry_safe(clk_provider, next,
+					 &clk_provider_list, node) {
+
+			if (force || parent_ready(clk_provider->np)) {
+
+				clk_provider->clk_init_cb(clk_provider->np);
+
+				list_del(&clk_provider->node);
+				free(clk_provider);
+				is_init_done = true;
+			}
+		}
+
+		/*
+		 * We didn't manage to initialize any of the
+		 * remaining providers during the last loop, so now we
+		 * initialize all the remaining ones unconditionally
+		 * in case the clock parent was not mandatory
+		 */
+		if (!is_init_done)
+			force = true;
 	}
 
 	return 0;
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
