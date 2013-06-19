Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22a.google.com ([2a00:1450:4008:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPH-0004z2-DA
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:35 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so2261504bkc.29
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:03 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:36 +0200
Message-Id: <1371632991-1504-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 07/22] OF: base: sync of_find_node_by_path with linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Barebox of_find_node_by_path requires a node to be passed as start node
to start searching. Linux OF API does not pass this node and no current
user of it in barebox is passing anything else than the root node.
Therefore, we rename current function to of_find_node_by_path_from and
introduce a Linux OF API compatible of_find_node_by_path that always
passes the current root_node. Also, all current users of that function
are updated to reflect the API change.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org

Changelog:
v1->v2:
- rename current of_find_node_by_path to of_find_node_by_path_from
  (Suggested by Sascha Hauer)
- implement of_find_node_by_path with root_node passed to above
  (Suggested by Sascha Hauer)
---
 arch/arm/boards/highbank/init.c |    4 +-
 arch/ppc/mach-mpc5xxx/cpu.c     |    4 +-
 commands/of_node.c              |    2 +-
 commands/of_property.c          |   10 +-------
 commands/oftree.c               |   11 +---------
 common/oftree.c                 |    2 +-
 drivers/of/base.c               |   43 ++++++++++++++++++++++++--------------
 include/of.h                    |   17 +++++++++++++-
 net/eth.c                       |    2 +-
 9 files changed, 52 insertions(+), 43 deletions(-)

diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index d4a5c5a..1aa713b 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -53,7 +53,7 @@ static int hb_fixup(struct device_node *root)
 	if ((opp_table[0] >> 16) != HB_OPP_VERSION)
 		return 0;
 
-	node = of_find_node_by_path(root, "/cpus/cpu@0");
+	node = of_find_node_by_path("/cpus/cpu@0");
 	if (!node)
 		return 0;
 
@@ -89,7 +89,7 @@ static int highbank_mem_init(void)
 
 	of_set_root_node(root);
 
-	np = of_find_node_by_path(root, "/memory");
+	np = of_find_node_by_path("/memory");
 	if (!np) {
 		pr_warn("no memory node use default configuration\n");
 		goto not_found;
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 99f16eb..0ece4a9 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -83,7 +83,7 @@ static int of_mpc5200_fixup(struct device_node *root)
 
 	int div = in_8((void*)CFG_MBAR + 0x204) & 0x0020 ? 8 : 4;
 
-	node = of_find_node_by_path(root, "/cpus/PowerPC,5200@0");
+	node = of_find_node_by_path("/cpus/PowerPC,5200@0");
 	if (!node)
 		return -EINVAL;
 
@@ -91,7 +91,7 @@ static int of_mpc5200_fixup(struct device_node *root)
 	of_property_write_u32(node, "bus-frequency", get_bus_clock());
 	of_property_write_u32(node, "clock-frequency", get_cpu_clock());
 
-	node = of_find_node_by_path(root, "/soc5200@f0000000");
+	node = of_find_node_by_path("/soc5200@f0000000");
 	if (!node)
 		return -EINVAL;
 
diff --git a/commands/of_node.c b/commands/of_node.c
index 0249d97..e60ef66 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -81,7 +81,7 @@ static int do_of_node(int argc, char *argv[])
 		if (!path)
 			return COMMAND_ERROR_USAGE;
 
-		node = of_find_node_by_path(root, path);
+		node = of_find_node_by_path(path);
 		if (!node) {
 			printf("Cannot find nodepath %s\n", path);
 			return -ENOENT;
diff --git a/commands/of_property.c b/commands/of_property.c
index d1a9a17..8ffe30b 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -175,7 +175,7 @@ static int do_of_property(int argc, char *argv[])
 	int set = 0;
 	int ret;
 	char *path = NULL, *propname = NULL;
-	struct device_node *root, *node = NULL;
+	struct device_node *node = NULL;
 	struct property *pp = NULL;
 
 	while ((opt = getopt(argc, argv, "ds")) > 0) {
@@ -194,15 +194,9 @@ static int do_of_property(int argc, char *argv[])
 	if (optind == argc)
 		return COMMAND_ERROR_USAGE;
 
-	root = of_get_root_node();
-	if (!root) {
-		printf("root node not set\n");
-		return -ENOENT;
-	}
-
 	if (optind < argc) {
 		path = argv[optind];
-		node = of_find_node_by_path(root, path);
+		node = of_find_node_by_path(path);
 		if (!node) {
 			printf("Cannot find nodepath %s\n", path);
 			return -ENOENT;
diff --git a/commands/oftree.c b/commands/oftree.c
index 468235a..9149517 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -164,16 +164,7 @@ static int do_oftree(int argc, char *argv[])
 			of_print_nodes(root, 0);
 			of_free(root);
 		} else {
-			struct device_node *root, *n;
-
-			root = of_get_root_node();
-			if (!root) {
-				ret = -ENOENT;
-				goto out;
-			}
-
-			n = of_find_node_by_path(root, node);
-
+			struct device_node *n = of_find_node_by_path(node);
 			if (!n) {
 				ret = -ENOENT;
 				goto out;
diff --git a/common/oftree.c b/common/oftree.c
index 475d418..aff4c28 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -100,7 +100,7 @@ void of_print_property(const void *data, int len)
 
 void of_print_cmdline(struct device_node *root)
 {
-	struct device_node *node = of_find_node_by_path(root, "/chosen");
+	struct device_node *node = of_find_node_by_path("/chosen");
 	const char *cmdline;
 
 	if (!node) {
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 85199b6..f822f8d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -153,7 +153,7 @@ void of_alias_scan(void)
 	if (!root_node)
 		return;
 
-	of_aliases = of_find_node_by_path(root_node, "/aliases");
+	of_aliases = of_find_node_by_path("/aliases");
 	if (!of_aliases)
 		return;
 
@@ -170,7 +170,7 @@ void of_alias_scan(void)
 		    !of_prop_cmp(pp->name, "linux,phandle"))
 			continue;
 
-		np = of_find_node_by_path(root_node, pp->value);
+		np = of_find_node_by_path(pp->value);
 		if (!np)
 			continue;
 
@@ -556,19 +556,18 @@ int of_machine_is_compatible(const char *compat)
 EXPORT_SYMBOL(of_machine_is_compatible);
 
 /**
- *	of_find_node_by_path - Find a node matching a full OF path
- *	@root:	The root node of this tree
+ *	of_find_node_by_path_from - Find a node matching a full OF path
+ *      relative to a given root node.
  *	@path:	The full path to match
  *
- *	Returns a node pointer with refcount incremented, use
- *	of_node_put() on it when done.
+ *	Returns a pointer to the node found or NULL.
  */
-struct device_node *of_find_node_by_path(struct device_node *root, const char *path)
+struct device_node *of_find_node_by_path_from(struct device_node *from,
+					const char *path)
 {
 	char *slash, *p, *freep;
-	struct device_node *dn = root;
 
-	if (*path != '/')
+	if (!from || !path || *path != '/')
 		return NULL;
 
 	path++;
@@ -583,8 +582,8 @@ struct device_node *of_find_node_by_path(struct device_node *root, const char *p
 		if (slash)
 			*slash = 0;
 
-		dn = of_find_child_by_name(dn, p);
-		if (!dn)
+		from = of_get_child_by_name(from, p);
+		if (!from)
 			goto out;
 
 		if (!slash)
@@ -595,7 +594,19 @@ struct device_node *of_find_node_by_path(struct device_node *root, const char *p
 out:
 	free(freep);
 
-	return dn;
+	return from;
+}
+EXPORT_SYMBOL(of_find_node_by_path_from);
+
+/**
+ *	of_find_node_by_path - Find a node matching a full OF path
+ *	@path:	The full path to match
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_node_by_path(const char *path)
+{
+	return of_find_node_by_path_from(root_node, path);
 }
 EXPORT_SYMBOL(of_find_node_by_path);
 
@@ -1156,12 +1167,12 @@ int of_probe(void)
 	if(!root_node)
 		return -ENODEV;
 
-	of_chosen = of_find_node_by_path(root_node, "/chosen");
+	of_chosen = of_find_node_by_path("/chosen");
 	of_property_read_string(root_node, "model", &of_model);
 
 	__of_parse_phandles(root_node);
 
-	memory = of_find_node_by_path(root_node, "/memory");
+	memory = of_find_node_by_path("/memory");
 	if (memory)
 		of_add_memory(memory, false);
 
@@ -1234,8 +1245,8 @@ int of_device_is_stdout_path(struct device_d *dev)
 	name = of_get_property(of_chosen, "linux,stdout-path", NULL);
 	if (name == NULL)
 		return 0;
-	dn = of_find_node_by_path(root_node, name);
 
+	dn = of_find_node_by_path(name);
 	if (!dn)
 		return 0;
 
@@ -1264,7 +1275,7 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 	struct device_node *chosen;
 	__be32 buf[2];
 
-	chosen = of_find_node_by_path(root, "/chosen");
+	chosen = of_find_node_by_path("/chosen");
 	if (!chosen)
 		return -EINVAL;
 
diff --git a/include/of.h b/include/of.h
index 7ebde62..a56587f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -67,8 +67,6 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 int of_n_addr_cells(struct device_node *np);
 int of_n_size_cells(struct device_node *np);
 
-struct device_node *of_find_node_by_path(struct device_node *root, const char *path);
-
 struct device_node *of_find_child_by_name(struct device_node *node, const char *name);
 
 struct fdt_header *fdt_get_tree(void);
@@ -184,6 +182,10 @@ struct cdev;
 extern struct property *of_find_property(const struct device_node *np,
 					const char *name, int *lenp);
 
+extern struct device_node *of_find_node_by_path_from(struct device_node *from,
+						const char *path);
+extern struct device_node *of_find_node_by_path(const char *path);
+
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern const char *of_alias_get(struct device_node *np);
@@ -235,6 +237,17 @@ static inline struct property *of_find_property(const struct device_node *np,
 	return NULL;
 }
 
+static inline struct device_node *of_find_node_by_path_from(
+	struct device_node *from, const char *path)
+{
+	return NULL;
+}
+
+static inline struct device_node *of_find_node_by_path(const char *path)
+{
+	return NULL;
+}
+
 static inline void of_alias_scan(void)
 {
 }
diff --git a/net/eth.c b/net/eth.c
index 7240b4d..09b3bd5 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -296,7 +296,7 @@ static int eth_of_fixup(struct device_node *root)
 			continue;
 		}
 
-		node = of_find_node_by_path(root, edev->nodepath);
+		node = of_find_node_by_path(edev->nodepath);
 		if (!node) {
 			dev_dbg(&edev->dev, "%s: fixup node %s not found\n",
 					__func__, edev->nodepath);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
