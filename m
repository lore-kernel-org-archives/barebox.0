Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FM-Ps
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:41 +0200
Message-Id: <1400533184-668-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] commands: add of_dump command
To: barebox@lists.infradead.org

The oftree command is overloaded. This adds a dedicated command
which only dumps devicetrees to the console so that the corresponding
functionality in the oftree command can be removed in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |  13 +++++++
 commands/Makefile  |   1 +
 commands/of_dump.c | 108 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 commands/of_dump.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 02f0931..381f3fd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1886,6 +1886,19 @@ config CMD_LSMOD
 	help
 	  List loaded barebox modules.
 
+config CMD_OF_DUMP
+	tristate
+	select OFTREE
+	prompt "of_dump"
+	default y if CMD_OFTREE
+	help
+	  dump devicetree nodes to the console
+
+	  Usage: of_dump [-f] [NODE]
+
+	  Options:
+		-f <dtb>	work on <dtb> instead of internal devicetree
+
 config CMD_OF_NODE
 	tristate
 	select OFTREE
diff --git a/commands/Makefile b/commands/Makefile
index 2373ccf..030a906 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -75,6 +75,7 @@ obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
+obj-$(CONFIG_CMD_OF_DUMP)	+= of_dump.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomemport.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
diff --git a/commands/of_dump.c b/commands/of_dump.c
new file mode 100644
index 0000000..0ed47bb
--- /dev/null
+++ b/commands/of_dump.c
@@ -0,0 +1,108 @@
+/*
+ * of_dump.c - dump devicetrees to the console
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+#include <fdt.h>
+#include <of.h>
+#include <command.h>
+#include <fs.h>
+#include <malloc.h>
+#include <complete.h>
+#include <linux/ctype.h>
+#include <asm/byteorder.h>
+#include <errno.h>
+#include <getopt.h>
+#include <linux/err.h>
+
+static int do_of_dump(int argc, char *argv[])
+{
+	int opt;
+	int ret;
+	struct device_node *root = NULL, *node, *of_free = NULL;
+	char *dtbfile = NULL;
+	size_t size;
+	const char *nodename;
+
+	while ((opt = getopt(argc, argv, "f:")) > 0) {
+		switch (opt) {
+		case 'f':
+			dtbfile = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
+		nodename = "/";
+	else
+		nodename = argv[optind];
+
+	if (dtbfile) {
+		void *fdt;
+
+		fdt = read_file(dtbfile, &size);
+		if (!fdt) {
+			printf("unable to read %s: %s\n", dtbfile, strerror(errno));
+			return -errno;
+		}
+
+		root = of_unflatten_dtb(NULL, fdt);
+
+		free(fdt);
+
+		if (IS_ERR(root)) {
+			ret = PTR_ERR(root);
+			goto out;
+		}
+
+		of_free = root;
+	} else {
+		root = of_get_root_node();
+	}
+
+	node = of_find_node_by_path_or_alias(root, nodename);
+	if (!node) {
+		printf("Cannot find nodepath %s\n", nodename);
+		ret = -ENOENT;
+		goto out;
+	}
+
+	of_print_nodes(node, 0);
+
+out:
+	if (of_free)
+		of_delete_node(of_free);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(of_dump)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT  ("-f <dtb>",  "work on <dtb> instead of internal devicetree\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_dump)
+	.cmd		= do_of_dump,
+	BAREBOX_CMD_DESC("dump devicetree nodes")
+	BAREBOX_CMD_OPTS("[-f]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
+	BAREBOX_CMD_HELP(cmd_of_dump_help)
+BAREBOX_CMD_END
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
