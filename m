Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdFz-0002kE-Ai
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:53:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CD3BDA00431
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:53:22 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:51:16 +0100
Message-Id: <1455619877-40393-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/2] commands: Add of_fixup_status
To: barebox@lists.infradead.org

of_fixup_status enables or disables the status property of a
given node with a device tree fixup.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 commands/Kconfig           |  16 +++++++
 commands/Makefile          |   1 +
 commands/of_fixup_status.c | 101 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 118 insertions(+)
 create mode 100644 commands/of_fixup_status.c

diff --git a/commands/Kconfig b/commands/Kconfig
index b4fdc86..9519a44 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2114,6 +2114,22 @@ config CMD_OF_DISPLAY_TIMINGS
 		  -s path	select display-timings and register oftree fixup
 		  -f dtb	work on dtb. Has no effect on -s option
 
+config CMD_OF_FIXUP_STATUS
+	tristate
+	select OFTREE
+	prompt "of_fixup_status"
+	help
+	  Register a fixup to enable or disable node
+
+	  Usage: of_fixup_node [-d] path
+
+	  Options:
+		  -d		disable node
+		  path		Node path or alias
+
+	  Register a fixup to enable or disable a device tree node.
+	  Nodes are enabled on default. Disabled with -d.
+
 config CMD_OFTREE
 	tristate
 	select OFTREE
diff --git a/commands/Makefile b/commands/Makefile
index d985341..8975d4b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -78,6 +78,7 @@ obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
 obj-$(CONFIG_CMD_OF_DUMP)	+= of_dump.o
 obj-$(CONFIG_CMD_OF_DISPLAY_TIMINGS)	+= of_display_timings.o
+obj-$(CONFIG_CMD_OF_FIXUP_STATUS)	+= of_fixup_status.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomemport.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
diff --git a/commands/of_fixup_status.c b/commands/of_fixup_status.c
new file mode 100644
index 0000000..03494cc
--- /dev/null
+++ b/commands/of_fixup_status.c
@@ -0,0 +1,101 @@
+/*
+ * of_fixup_status.c - Register a fixup to enable or disable nodes in the
+ * device tree
+ *
+ * Copyright (c) 2014-2016 PHYTEC Messtechnik GmbH
+ * Author:
+ *	Teresa Remmet
+ *	Wadim Egorov
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
+ */
+
+#include <common.h>
+#include <of.h>
+#include <command.h>
+#include <malloc.h>
+#include <complete.h>
+#include <asm/byteorder.h>
+#include <linux/err.h>
+#include <getopt.h>
+#include <string.h>
+
+struct fixup_status_data {
+	char *node;
+	bool status;
+};
+
+static int of_fixup_status(struct device_node *root, void *context)
+{
+	struct fixup_status_data *data = context;
+	struct device_node *node;
+
+	node = of_find_node_by_path_from(root, data->node);
+	if (!node) {
+		pr_err("Could not find node in tree: %s\n", data->node);
+		return -EINVAL;
+	}
+
+	if (data->status)
+		return of_device_enable(node);
+	else
+		return of_device_disable(node);
+}
+
+static int do_of_fixup_status(int argc, char *argv[])
+{
+	int opt;
+	bool status = 1;
+	char *node = NULL;
+	struct fixup_status_data *data;
+
+	while ((opt = getopt(argc, argv, "d")) > 0) {
+		switch (opt) {
+		case 'd':
+			status = 0;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
+	node = xstrdup(argv[optind]);
+
+	data = xzalloc(sizeof(*data));
+	data->node = node;
+	data->status = status;
+
+	of_register_fixup(of_fixup_status, (void *)data);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(of_fixup_status)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d",  "disable node")
+BAREBOX_CMD_HELP_OPT("path",  "Node path\n")
+BAREBOX_CMD_HELP_TEXT("Register a fixup to enable or disable a device tree node.")
+BAREBOX_CMD_HELP_TEXT("Nodes are enabled on default. Disabled with -d.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_fixup_status)
+	.cmd	= do_of_fixup_status,
+	BAREBOX_CMD_DESC("register a fixup to enable or disable node")
+	BAREBOX_CMD_OPTS("[-d] path")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
+	BAREBOX_CMD_HELP(cmd_of_fixup_status_help)
+BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
