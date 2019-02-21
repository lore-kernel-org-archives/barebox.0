Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from chandra.tablix.org ([193.95.199.109])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwkfB-0006nQ-K2
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 09:29:11 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gwkev-0001EJ-Q3
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 10:28:49 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 21 Feb 2019 10:28:48 +0100
Message-Id: <20190221092848.4488-4-tomaz.solc@tablix.org>
In-Reply-To: <20190221092848.4488-1-tomaz.solc@tablix.org>
References: <20190221092848.4488-1-tomaz.solc@tablix.org>
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
Subject: [PATCH 3/3] commands: add of_bootargs command.
To: barebox@lists.infradead.org

When booting a Raspberry Pi, it is useful to extract bootargs from the
device tree that was created by the VideoCore firmware. These bootargs
contain for example settings for the framebuffer that the kernel needs
to properly set the video output.

This commit adds an of_bootargs command that extracts a bootargs
property from a device tree and saves it to a global variable.

For example, a bootloader environment can use this command to extract
the bootargs to linux.bootargs.vc, which then gets included into the
final bootargs for the kernel using CONFIG_FLEXIBLE_BOOTARGS.
---
 Documentation/boards/bcm2835.rst |  4 ++
 commands/Kconfig                 | 13 ++++++
 commands/Makefile                |  1 +
 commands/of_bootargs.c           | 99 ++++++++++++++++++++++++++++++++++++++++
 4 files changed, 117 insertions(+)
 create mode 100644 commands/of_bootargs.c

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 95e910896..b8a6c18ea 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -34,5 +34,9 @@ VideoCore firmware creates a device tree based on the entries in ``config.txt``.
 
     bootm -o /vc.dtb /boot/kernel7.img
 
+VideoCore device tree also contains the kernel command-line that is constructed from ``cmdline.txt`` and other parameters internally determined by the VideoCore firmware. Normally in Barebox this command-line gets overwritten by the Linux bootargs (see :ref:`booting_linux`). You can extract the VideoCore command-line from the device tree using the following command::
+
+    of_bootargs /vc.dtb linux.bootargs.vc
+
 .. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
 .. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
diff --git a/commands/Kconfig b/commands/Kconfig
index c14332c9d..0ae6d526f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2015,6 +2015,19 @@ config CMD_OF_DUMP
 	  Options:
 		-f <dtb>	work on <dtb> instead of internal devicetree
 
+config CMD_OF_BOOTARGS
+	tristate
+	select OFTREE
+	prompt "of_bootargs"
+	help
+	  Extract bootargs from a device tree into a global variable
+
+	  Usage: of_bootargs [DTB] [VAR]
+
+	  DTB is path to a device tree file (e.g. /vc.dtb).
+	  VAR is a name of the global variable to set (e.g. linux.bootargs.vc)
+
+
 config CMD_OF_NODE
 	tristate
 	select OFTREE
diff --git a/commands/Makefile b/commands/Makefile
index 358671bb5..f554f6041 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -76,6 +76,7 @@ obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_OF_NODE)	+= of_node.o
 obj-$(CONFIG_CMD_OF_DUMP)	+= of_dump.o
+obj-$(CONFIG_CMD_OF_BOOTARGS)	+= of_bootargs.o
 obj-$(CONFIG_CMD_OF_DISPLAY_TIMINGS)	+= of_display_timings.o
 obj-$(CONFIG_CMD_OF_FIXUP_STATUS)	+= of_fixup_status.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
diff --git a/commands/of_bootargs.c b/commands/of_bootargs.c
new file mode 100644
index 000000000..93e7b74b1
--- /dev/null
+++ b/commands/of_bootargs.c
@@ -0,0 +1,99 @@
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
+#include <libfile.h>
+#include <of.h>
+#include <command.h>
+#include <malloc.h>
+#include <complete.h>
+#include <linux/ctype.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <globalvar.h>
+
+static int do_of_bootargs(int argc, char *argv[])
+{
+	int ret = 0;
+	struct device_node *root = NULL, *node;
+	char *dtbfile, *varname;
+	void *fdt;
+
+	size_t size;
+	const char *cmdline;
+
+	if (argc != 3) {
+		return COMMAND_ERROR_USAGE;
+	}
+
+	dtbfile = argv[1];
+	varname = argv[2];
+
+	fdt = read_file(dtbfile, &size);
+	if (!fdt) {
+		printf("unable to read %s: %s\n", dtbfile, strerror(errno));
+		return -errno;
+	}
+
+	root = of_unflatten_dtb(fdt);
+
+	free(fdt);
+
+	if (IS_ERR(root)) {
+		ret = PTR_ERR(root);
+		root = NULL;
+		goto out;
+	}
+
+	node = of_find_node_by_path_from(root, "/chosen");
+	if (!node) {
+		printf("no /chosen node\n");
+		ret = -ENOENT;
+		goto out;
+	}
+
+	cmdline = of_get_property(node, "bootargs", NULL);
+	if (!cmdline) {
+		printf("no bootargs property in the /chosen node\n");
+		ret = -ENOENT;
+		goto out;
+	}
+
+	globalvar_add_simple(varname, cmdline);
+
+out:
+	if (root)
+		of_delete_node(root);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(of_bootargs)
+BAREBOX_CMD_HELP_TEXT("DTB is path to a device tree file (e.g. /vc.dtb).")
+BAREBOX_CMD_HELP_TEXT("VAR is a name of the global variable to set (e.g. linux.bootargs.vc)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_bootargs)
+	.cmd		= do_of_bootargs,
+	BAREBOX_CMD_DESC("extract bootargs from a device tree into a global variable")
+	BAREBOX_CMD_OPTS("[DTB] [VAR]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
+	BAREBOX_CMD_HELP(cmd_of_bootargs_help)
+BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
