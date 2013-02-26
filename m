Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cL-0s
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:36 +0100
Message-Id: <1361909936-2665-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/29] of: Add root node argument to of_find_node_by_path
To: barebox@lists.infradead.org

This makes of_find_node_by_path usable with multiple trees.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_node.c     |    2 +-
 commands/of_property.c |   10 ++++++++--
 commands/oftree.c      |   10 +++++++++-
 drivers/of/base.c      |   16 +++++++---------
 include/of.h           |    2 +-
 5 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/commands/of_node.c b/commands/of_node.c
index bf9799c..2f6ecae 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -79,7 +79,7 @@ static int do_of_node(int argc, char *argv[])
 		if (!path)
 			return COMMAND_ERROR_USAGE;
 
-		node = of_find_node_by_path(path);
+		node = of_find_node_by_path(root, path);
 		if (!node) {
 			printf("Cannot find nodepath %s\n", path);
 			return -ENOENT;
diff --git a/commands/of_property.c b/commands/of_property.c
index 42b6f11..585522c 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -176,7 +176,7 @@ static int do_of_property(int argc, char *argv[])
 	int set = 0;
 	int ret;
 	char *path = NULL, *propname = NULL;
-	struct device_node *node = NULL;
+	struct device_node *root, *node = NULL;
 	struct property *pp = NULL;
 
 	while ((opt = getopt(argc, argv, "ds")) > 0) {
@@ -192,9 +192,15 @@ static int do_of_property(int argc, char *argv[])
 		}
 	}
 
+	root = of_get_root_node();
+	if (!root) {
+		printf("root node not set\n");
+		return -ENOENT;
+	}
+
 	if (optind < argc) {
 		path = argv[optind];
-		node = of_find_node_by_path(path);
+		node = of_find_node_by_path(root, path);
 		if (!node) {
 			printf("Cannot find nodepath %s\n", path);
 			return -ENOENT;
diff --git a/commands/oftree.c b/commands/oftree.c
index ddbff3e..0ee787e 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -146,7 +146,15 @@ static int do_oftree(int argc, char *argv[])
 		if (fdt) {
 			ret = fdt_print(fdt, node);
 		} else {
-			struct device_node *n = of_find_node_by_path(node);
+			struct device_node *root, *n;
+
+			root = of_get_root_node();
+			if (!root) {
+				ret = -ENOENT;
+				goto out;
+			}
+
+			n = of_find_node_by_path(root, node);
 
 			if (!n) {
 				ret = -ENOENT;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index ecc49c4..0eafa39 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -144,7 +144,7 @@ void of_alias_scan(void)
 
 	INIT_LIST_HEAD(&aliases_lookup);
 
-	of_aliases = of_find_node_by_path("/aliases");
+	of_aliases = of_find_node_by_path(root_node, "/aliases");
 	if (!of_aliases)
 		return;
 
@@ -161,7 +161,7 @@ void of_alias_scan(void)
 		    !strcmp(pp->name, "linux,phandle"))
 			continue;
 
-		np = of_find_node_by_path(pp->value);
+		np = of_find_node_by_path(root_node, pp->value);
 		if (!np)
 			continue;
 
@@ -481,18 +481,16 @@ EXPORT_SYMBOL(of_machine_is_compatible);
 
 /**
  *	of_find_node_by_path - Find a node matching a full OF path
+ *	@root:	The root node of this tree
  *	@path:	The full path to match
  *
  *	Returns a node pointer with refcount incremented, use
  *	of_node_put() on it when done.
  */
-struct device_node *of_find_node_by_path(const char *path)
+struct device_node *of_find_node_by_path(struct device_node *root, const char *path)
 {
 	char *slash, *p, *freep;
-	struct device_node *dn = root_node;
-
-	if (!root_node)
-		return NULL;
+	struct device_node *dn = root;
 
 	if (*path != '/')
 		return NULL;
@@ -902,7 +900,7 @@ int of_probe(void)
 	if(!root_node)
 		return -ENODEV;
 
-	of_chosen = of_find_node_by_path("/chosen");
+	of_chosen = of_find_node_by_path(root_node, "/chosen");
 	of_property_read_string(root_node, "model", &of_model);
 
 	__of_probe(root_node);
@@ -1122,7 +1120,7 @@ int of_device_is_stdout_path(struct device_d *dev)
 	name = of_get_property(of_chosen, "linux,stdout-path", NULL);
 	if (name == NULL)
 		return 0;
-	dn = of_find_node_by_path(name);
+	dn = of_find_node_by_path(root_node, name);
 
 	if (!dn)
 		return 0;
diff --git a/include/of.h b/include/of.h
index 12c5703..82475c3 100644
--- a/include/of.h
+++ b/include/of.h
@@ -56,7 +56,7 @@ int of_match(struct device_d *dev, struct driver_d *drv);
 
 struct property *of_find_property(const struct device_node *node, const char *name);
 
-struct device_node *of_find_node_by_path(const char *path);
+struct device_node *of_find_node_by_path(struct device_node *root, const char *path);
 
 struct device_node *of_find_child_by_name(struct device_node *node, const char *name);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
