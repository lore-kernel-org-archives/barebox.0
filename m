Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qh-6N
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:36 +0100
Message-Id: <1357910676-4231-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/16] commands: Add of_node command
To: barebox@lists.infradead.org

This command allows to create/delete device nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |    7 ++++
 commands/Makefile  |    1 +
 commands/of_node.c |  111 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 119 insertions(+)
 create mode 100644 commands/of_node.c

diff --git a/commands/Kconfig b/commands/Kconfig
index c0879b9..9c668c6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -492,6 +492,13 @@ config CMD_OF_PROPERTY
 	  The of_property command allows setting and deleting of properties in
 	  the currently loaded devicetree.
 
+config CMD_OF_NODE
+	tristate
+	select OFTREE
+	prompt "of_node"
+	help
+	  The of_property command allows adding and removing devicetree nodes.
+
 endmenu
 
 menu "testing"
diff --git a/commands/Makefile b/commands/Makefile
index 98d61c6..2df807b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -68,6 +68,7 @@ obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
+obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
diff --git a/commands/of_node.c b/commands/of_node.c
new file mode 100644
index 0000000..a370e26
--- /dev/null
+++ b/commands/of_node.c
@@ -0,0 +1,111 @@
+/*
+ * of_node.c - device tree node handling support
+ *
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <fdt.h>
+#include <of.h>
+#include <command.h>
+#include <fs.h>
+#include <malloc.h>
+#include <libfdt.h>
+#include <linux/ctype.h>
+#include <asm/byteorder.h>
+#include <errno.h>
+#include <getopt.h>
+#include <init.h>
+#include <libgen.h>
+
+static int do_of_node(int argc, char *argv[])
+{
+	int opt;
+	int delete = 0;
+	int create = 0;
+	char *path = NULL;
+	struct device_node *node = NULL;
+
+	while ((opt = getopt(argc, argv, "cd")) > 0) {
+		switch (opt) {
+		case 'c':
+			create = 1;
+			break;
+		case 'd':
+			delete = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind < argc) {
+		path = argv[optind];
+	}
+
+	if (create) {
+		char *name;
+
+		if (!path)
+			return COMMAND_ERROR_USAGE;
+
+		name = xstrdup(basename(path));
+		path = dirname(path);
+
+		node = of_find_node_by_path(path);
+		if (!node) {
+			printf("Cannot find nodepath %s\n", path);
+			free(name);
+			return -ENOENT;
+		}
+
+		debug("create node \"%s\" \"%s\"\n", path, name);
+
+		of_new_node(node, name);
+
+		free(name);
+
+		return 0;
+	}
+
+	if (delete) {
+		if (!path)
+			return COMMAND_ERROR_USAGE;
+
+		node = of_find_node_by_path(path);
+		if (!node) {
+			printf("Cannot find nodepath %s\n", path);
+			return -ENOENT;
+		}
+
+		of_free(node);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(of_node)
+BAREBOX_CMD_HELP_USAGE("of_node [OPTIONS] [NODE] [NAME]\n")
+BAREBOX_CMD_HELP_OPT  ("-c",  "create a new node\n")
+BAREBOX_CMD_HELP_OPT  ("-d",  "delete a node\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_node)
+	.cmd		= do_of_node,
+	.usage		= "handle of nodes",
+	BAREBOX_CMD_HELP(cmd_of_node_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
