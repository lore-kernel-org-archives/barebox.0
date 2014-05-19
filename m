Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FL-Py
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:40 +0200
Message-Id: <1400533184-668-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] complete: Add devicetree completion
To: barebox@lists.infradead.org

The of_* commands take devicetree nodes as parameters. Add a
devicetree completion function to ease passing nodes to these
commands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_node.c     |  2 ++
 commands/of_property.c |  2 ++
 commands/oftree.c      |  2 ++
 common/complete.c      | 71 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/complete.h     |  5 +++-
 5 files changed, 81 insertions(+), 1 deletion(-)

diff --git a/commands/of_node.c b/commands/of_node.c
index 901da88..4962e52 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -21,6 +21,7 @@
 #include <environment.h>
 #include <fdt.h>
 #include <of.h>
+#include <complete.h>
 #include <command.h>
 #include <fs.h>
 #include <malloc.h>
@@ -104,5 +105,6 @@ BAREBOX_CMD_START(of_node)
 	BAREBOX_CMD_DESC("create/delete nodes in the device tree")
 	BAREBOX_CMD_OPTS("[-cd] NODE NAME")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(devicetree_complete)
 	BAREBOX_CMD_HELP(cmd_of_node_help)
 BAREBOX_CMD_END
diff --git a/commands/of_property.c b/commands/of_property.c
index f9f35b2..e0154fc 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -24,6 +24,7 @@
 #include <command.h>
 #include <fs.h>
 #include <malloc.h>
+#include <complete.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
@@ -317,5 +318,6 @@ BAREBOX_CMD_START(of_property)
 	BAREBOX_CMD_DESC("handle device tree properties")
 	BAREBOX_CMD_OPTS("[-sd] NODE [PROPERTY] [VALUES]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(devicetree_complete)
 	BAREBOX_CMD_HELP(cmd_of_property_help)
 BAREBOX_CMD_END
diff --git a/commands/oftree.c b/commands/oftree.c
index 3253cf1..16648d6 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -37,6 +37,7 @@
 #include <getopt.h>
 #include <init.h>
 #include <fcntl.h>
+#include <complete.h>
 
 static int do_oftree(int argc, char *argv[])
 {
@@ -207,4 +208,5 @@ BAREBOX_CMD_START(oftree)
 	BAREBOX_CMD_OPTS("[-lpfdn] [DTB]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
+	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 BAREBOX_CMD_END
diff --git a/common/complete.c b/common/complete.c
index 368321f..5b71f03 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -204,6 +204,77 @@ int command_var_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(command_var_complete);
 
+int devicetree_alias_complete(struct string_list *sl, char *instr)
+{
+	struct device_node *aliases;
+	struct property *p;
+
+	aliases = of_find_node_by_path("/aliases");
+	if (!aliases)
+		return 0;
+
+	list_for_each_entry(p, &aliases->properties, list) {
+		if (strncmp(instr, p->name, strlen(instr)))
+			continue;
+
+		string_list_add_asprintf(sl, "%s ", p->name);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(devicetree_alias_complete);
+
+int devicetree_nodepath_complete(struct string_list *sl, char *instr)
+{
+	struct device_node *node, *child;
+	char *dirn, *base;
+	char *path = strdup(instr);
+
+	if (*instr == '/') {
+		dirn = dirname(path);
+		base = basename(instr);
+		node = of_find_node_by_path(dirn);
+		if (!node)
+			goto out;
+	} else if (!*instr) {
+		node = of_get_root_node();
+		if (!node)
+			goto out;
+		base = "";
+	} else {
+		goto out;
+	}
+
+	for_each_child_of_node(node, child) {
+		if (strncmp(base, child->name, strlen(base)))
+			continue;
+		string_list_add_asprintf(sl, "%s/", child->full_name);
+	}
+out:
+	free(path);
+
+	return 0;
+}
+EXPORT_SYMBOL(devicetree_nodepath_complete);
+
+int devicetree_complete(struct string_list *sl, char *instr)
+{
+	devicetree_nodepath_complete(sl, instr);
+	devicetree_alias_complete(sl, instr);
+
+	return 0;
+}
+EXPORT_SYMBOL(devicetree_complete);
+
+int devicetree_file_complete(struct string_list *sl, char *instr)
+{
+	devicetree_complete(sl, instr);
+	file_complete(sl, instr, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL(devicetree_file_complete);
+
 static int env_param_complete(struct string_list *sl, char *instr, int eval)
 {
 	struct device_d *dev;
diff --git a/include/complete.h b/include/complete.h
index 33b848c..491ba66 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -17,6 +17,9 @@ int empty_complete(struct string_list *sl, char *instr);
 int eth_complete(struct string_list *sl, char *instr);
 int command_var_complete(struct string_list *sl, char *instr);
 int devfs_partition_complete(struct string_list *sl, char *instr);
+int devicetree_alias_complete(struct string_list *sl, char *instr);
+int devicetree_nodepath_complete(struct string_list *sl, char *instr);
+int devicetree_complete(struct string_list *sl, char *instr);
+int devicetree_file_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
-
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
