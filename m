Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cS-BN
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:47 +0100
Message-Id: <1361909936-2665-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 20/29] of: Pass barebox internal format devicetree to
 of_get_fixed_tree
To: barebox@lists.infradead.org

With this every devicetree is first converted to the barebox internal
format before it's converted back to dtb again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |   10 +++++++++-
 commands/bootm.c     |    9 ++++++++-
 common/oftree.c      |   19 +++++++++----------
 include/of.h         |    3 ++-
 4 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index cf192cf..234f3e0 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -181,7 +181,15 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 	}
 
 	if (IS_BUILTIN(CONFIG_OFTREE)) {
-		data->oftree = of_get_fixed_tree(oftree);
+		struct device_node *node;
+
+		node = of_unflatten_dtb(NULL, oftree);
+		if (!node) {
+			pr_err("unable to unflatten devicetree\n");
+			return -EINVAL;
+		}
+
+		data->oftree = of_get_fixed_tree(node);
 	}
 
 	pr_info("zImage: concatenated oftree detected\n");
diff --git a/commands/bootm.c b/commands/bootm.c
index 4d3f022..38233e7 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -140,6 +140,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 	enum filetype ft;
 	struct fdt_header *fdt, *fixfdt;
 	size_t size;
+	struct device_node *node;
 
 	printf("Loading devicetree from '%s'\n", oftree);
 
@@ -187,7 +188,13 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 				file_type_to_string(ft));
 	}
 
-	fixfdt = of_get_fixed_tree(fdt);
+	node = of_unflatten_dtb(NULL, fdt);
+	if (!node) {
+		pr_err("unable to unflatten devicetree\n");
+		return -EINVAL;
+	}
+
+	fixfdt = of_get_fixed_tree(node);
 	if (!fixfdt)
 		return -EINVAL;
 
diff --git a/common/oftree.c b/common/oftree.c
index 841d2c4..b616b59 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -322,24 +322,23 @@ int of_fix_tree(struct fdt_header *fdt)
  * It increases the size of the tree and applies the registered
  * fixups.
  */
-struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt)
+struct fdt_header *of_get_fixed_tree(struct device_node *node)
 {
 	int ret;
 	void *fixfdt, *internalfdt = NULL;
 	int size, align;
+	struct fdt_header *fdt;
 
-	if (!fdt) {
-		struct device_node *root_node;
-
-		root_node = of_get_root_node();
-		if (!root_node)
-			return NULL;
-
-		fdt = internalfdt = of_flatten_dtb(root_node);
-		if (!fdt)
+	if (!node) {
+		node = of_get_root_node();
+		if (!node)
 			return NULL;
 	}
 
+	fdt = internalfdt = of_flatten_dtb(node);
+	if (!fdt)
+		return NULL;
+
 	size = fdt_totalsize(fdt);
 
 	/*
diff --git a/include/of.h b/include/of.h
index 2ddbe8d..1db546c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -7,7 +7,6 @@
 
 int fdt_print(struct fdt_header *working_fdt, const char *pathp);
 
-struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt);
 int of_fix_tree(struct fdt_header *fdt);
 int of_register_fixup(int (*fixup)(struct fdt_header *));
 
@@ -62,6 +61,8 @@ struct device_node *of_find_child_by_name(struct device_node *node, const char *
 
 struct fdt_header *fdt_get_tree(void);
 
+struct fdt_header *of_get_fixed_tree(struct device_node *node);
+
 #define device_node_for_nach_child(node, child) \
 	list_for_each_entry(child, &node->children, parent_list)
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
