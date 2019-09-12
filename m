Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KZR-0001Yi-JI
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 08:35:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Sep 2019 10:35:05 +0200
Message-Id: <20190912083505.4162-3-s.hauer@pengutronix.de>
In-Reply-To: <20190912083505.4162-1-s.hauer@pengutronix.de>
References: <20190912083505.4162-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] add of_diff command
To: Barebox List <barebox@lists.infradead.org>

The of_diff command compares two device trees against each other
and prints a diff-like result. This can be handy to find out the
differences between the barebox live tree and the one we start the
kernel with. Another usecase would be to examine the changes our
of_fixup process introduces (of_diff - +)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |   7 +++
 commands/Makefile  |   1 +
 commands/of_diff.c | 110 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 118 insertions(+)
 create mode 100644 commands/of_diff.c

diff --git a/commands/Kconfig b/commands/Kconfig
index e03110fd46..24fd47b5cd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2012,6 +2012,13 @@ config CMD_LSMOD
 	help
 	  List loaded barebox modules.
 
+config CMD_OF_DIFF
+	tristate
+	select OFTREE
+	prompt "of_diff"
+	help
+	  Compare two device tree files against each other.
+
 config CMD_OF_DUMP
 	tristate
 	select OFTREE
diff --git a/commands/Makefile b/commands/Makefile
index 5cd35b78a7..a619ee5765 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -73,6 +73,7 @@ obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
+obj-$(CONFIG_CMD_OF_DIFF)	+= of_diff.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
 obj-$(CONFIG_CMD_OF_DUMP)	+= of_dump.o
diff --git a/commands/of_diff.c b/commands/of_diff.c
new file mode 100644
index 0000000000..4ea801729f
--- /dev/null
+++ b/commands/of_diff.c
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * of_diff.c - compare device tree files
+ *
+ * Copyright (c) 2019 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ */
+
+#include <common.h>
+#include <fs.h>
+#include <libfile.h>
+#include <of.h>
+#include <command.h>
+#include <malloc.h>
+#include <complete.h>
+#include <errno.h>
+#include <linux/err.h>
+
+static struct device_node *get_tree(const char *filename, struct device_node *root)
+{
+	struct device_node *node;
+	void *fdt;
+	size_t size;
+	int ret;
+
+	if (!strcmp(filename, "-")) {
+		node = of_get_root_node();
+		if (!node)
+			return ERR_PTR(-ENOENT);
+
+		return of_copy_node(NULL, node);
+	}
+
+	if (!strcmp(filename, "+")) {
+		node = of_get_root_node();
+		if (!node)
+			return ERR_PTR(-ENOENT);
+
+		node = of_copy_node(NULL, root);
+
+		of_fix_tree(node);
+
+		return node;
+	}
+
+	ret = read_file_2(filename, &size, &fdt, FILESIZE_MAX);
+	if (ret)
+		return ERR_PTR(ret);
+
+	node = of_unflatten_dtb(fdt);
+
+	free(fdt);
+
+	return node;
+}
+
+// of_diff - /mnt/tftp/sha-oftree-phyCORE-i.MX6
+
+static int do_of_diff(int argc, char *argv[])
+{
+	int ret = 0;
+	struct device_node *a, *b, *root;
+
+	if (argc < 3)
+		return COMMAND_ERROR_USAGE;
+
+	root = of_get_root_node();
+	a = get_tree(argv[1], root);
+	b = get_tree(argv[2], root);
+
+	if (IS_ERR(a)) {
+		printf("Cannot read %s: %s\n", argv[1], strerrorp(a));
+		ret = COMMAND_ERROR;
+		a = NULL;
+		goto out;
+	}
+
+	if (IS_ERR(b)) {
+		printf("Cannot read %s: %s\n", argv[2], strerrorp(b));
+		ret = COMMAND_ERROR;
+		b = NULL;
+		goto out;
+	}
+
+	of_diff(a, b, 0);
+
+	ret = 0;
+out:
+	if (a && a != root)
+		of_delete_node(a);
+	if (b && b != root)
+		of_delete_node(b);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(of_diff)
+BAREBOX_CMD_HELP_TEXT("This command prints a diff between two given device trees.")
+BAREBOX_CMD_HELP_TEXT("The device trees are given as dtb files or:")
+BAREBOX_CMD_HELP_TEXT("'-' to compare against the barebox live tree, or")
+BAREBOX_CMD_HELP_TEXT("'+' to compare against the fixed barebox live tree")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_diff)
+	.cmd		= do_of_diff,
+	BAREBOX_CMD_DESC("diff device trees")
+	BAREBOX_CMD_OPTS("<a> <b>")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_of_diff_help)
+BAREBOX_CMD_END
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
