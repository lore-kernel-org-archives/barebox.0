Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qf-6T
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:35 +0100
Message-Id: <1357910676-4231-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/16] commands: Add of_property command
To: barebox@lists.infradead.org

The of_property command allows to modify/add/delete properties.
Parsing user input is based on U-Boot code with some fixes added
for catching invalid input.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig       |    8 ++
 commands/Makefile      |    1 +
 commands/of_property.c |  280 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 289 insertions(+)
 create mode 100644 commands/of_property.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 53cee5c..c0879b9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -484,6 +484,14 @@ config CMD_OFTREE_PROBE
 	help
 	  This enables the -p option to probe devices from the devicetree
 
+config CMD_OF_PROPERTY
+	tristate
+	select OFTREE
+	prompt "of_property"
+	help
+	  The of_property command allows setting and deleting of properties in
+	  the currently loaded devicetree.
+
 endmenu
 
 menu "testing"
diff --git a/commands/Makefile b/commands/Makefile
index 359f566..98d61c6 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -67,6 +67,7 @@ obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
+obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
diff --git a/commands/of_property.c b/commands/of_property.c
new file mode 100644
index 0000000..42b6f11
--- /dev/null
+++ b/commands/of_property.c
@@ -0,0 +1,280 @@
+/*
+ * of_property.c - device tree property handling support
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
+
+static int of_parse_prop_cells(char * const *newval, int count, char *data, int *len)
+{
+	char *cp;
+	unsigned long tmp;	/* holds converted values */
+	int stridx = 0;
+	char *newp = newval[0];
+
+	newp++;
+
+	while (1) {
+		if (*newp == '>')
+			return 0;
+
+		if (*newp == '\0') {
+			newp = newval[++stridx];
+
+			if (stridx == count) {
+				printf("missing '>'\n");
+				return -EINVAL;
+			}
+
+			continue;
+		}
+
+		cp = newp;
+		tmp = simple_strtoul(cp, &newp, 0);
+		*(__be32 *)data = __cpu_to_be32(tmp);
+		data  += 4;
+		*len += 4;
+
+		/* If the ptr didn't advance, something went wrong */
+		if ((newp - cp) <= 0) {
+			printf("cannot not convert \"%s\"\n", cp);
+			return -EINVAL;
+		}
+
+		while (*newp == ' ')
+			newp++;
+	}
+}
+
+static int of_parse_prop_stream(char * const *newval, int count, char *data, int *len)
+{
+	char *cp;
+	unsigned long tmp;	/* holds converted values */
+	int stridx = 0;
+	char *newp = newval[0];
+
+	newp++;
+
+	while (1) {
+		if (*newp == ']')
+			return 0;
+
+		while (*newp == ' ')
+			newp++;
+
+		if (*newp == '\0') {
+			newp = newval[++stridx];
+
+			if (stridx == count) {
+				printf("missing ']'\n");
+				return -EINVAL;
+			}
+
+			continue;
+		}
+
+		cp = newp;
+		tmp = simple_strtoul(newp, &newp, 16);
+		*data++ = tmp & 0xff;
+		*len    = *len + 1;
+
+		/* If the ptr didn't advance, something went wrong */
+		if ((newp - cp) <= 0) {
+			printf("cannot not convert \"%s\"\n", cp);
+			return -EINVAL;
+		}
+	}
+}
+
+static int of_parse_prop_string(char * const *newval, int count, char *data, int *len)
+{
+	int stridx = 0;
+	char *newp = newval[0];
+
+	/*
+	 * Assume it is one or more strings.  Copy it into our
+	 * data area for convenience (including the
+	 * terminating '\0's).
+	 */
+	while (stridx < count) {
+		size_t length = strlen(newp) + 1;
+
+		strcpy(data, newp);
+		data += length;
+		*len += length;
+		newp = newval[++stridx];
+	}
+
+	return 0;
+}
+
+/*
+ * Parse the user's input, partially heuristic.  Valid formats:
+ * <0x00112233 4 05>	- an array of cells.  Numbers follow standard
+ *			C conventions.
+ * [00 11 22 .. nn] - byte stream
+ * "string"	- If the the value doesn't start with "<" or "[", it is
+ *			treated as a string.  Note that the quotes are
+ *			stripped by the parser before we get the string.
+ * newval: An array of strings containing the new property as specified
+ *	on the command line
+ * count: The number of strings in the array
+ * data: A bytestream to be placed in the property
+ * len: The length of the resulting bytestream
+ */
+static int of_parse_prop(char * const *newval, int count, char *data, int *len)
+{
+	char *newp;		/* temporary newval char pointer */
+
+	*len = 0;
+
+	if (!count)
+		return 0;
+
+	newp = newval[0];
+
+	switch (*newp) {
+	case '<':
+		return of_parse_prop_cells(newval, count, data, len);
+	case '[':
+		return of_parse_prop_stream(newval, count, data, len);
+	default:
+		return of_parse_prop_string(newval, count, data, len);
+	}
+}
+
+static int do_of_property(int argc, char *argv[])
+{
+	int opt;
+	int delete = 0;
+	int set = 0;
+	int ret;
+	char *path = NULL, *propname = NULL;
+	struct device_node *node = NULL;
+	struct property *pp = NULL;
+
+	while ((opt = getopt(argc, argv, "ds")) > 0) {
+		switch (opt) {
+		case 'd':
+			delete = 1;
+			break;
+		case 's':
+			set = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind < argc) {
+		path = argv[optind];
+		node = of_find_node_by_path(path);
+		if (!node) {
+			printf("Cannot find nodepath %s\n", path);
+			return -ENOENT;
+		}
+	}
+
+	if (optind + 1 < argc) {
+		propname = argv[optind + 1];
+
+		pp = of_find_property(node, propname);
+		if (!set && !pp) {
+			printf("Cannot find property %s\n", propname);
+			return -ENOENT;
+		}
+	}
+
+	debug("path: %s propname: %s\n", path, propname);
+
+	if (delete) {
+		if (!node || !pp)
+			return COMMAND_ERROR_USAGE;
+
+		of_delete_property(pp);
+
+		return 0;
+	}
+
+	if (set) {
+		int num_args = argc - optind - 2;
+		int len;
+		void *data;
+
+		if (!node)
+			return COMMAND_ERROR_USAGE;
+
+		/*
+		 * standard console buffer size. The result won't be bigger than the
+		 * string input.
+		 */
+		data = malloc(1024);
+		if (!data)
+			return -ENOMEM;
+
+		ret = of_parse_prop(&argv[optind + 2], num_args, data, &len);
+		if (ret) {
+			free(data);
+			return ret;
+		}
+
+		if (pp) {
+			free(pp->value);
+			/* limit property data to the actual size */
+			data = xrealloc(data, len);
+			pp->value = data;
+			pp->length = len;
+		} else {
+			pp = of_new_property(node, propname, data, len);
+			if (!pp) {
+				printf("Cannot create property %s\n", propname);
+				free(data);
+				return 1;
+			}
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(of_property)
+BAREBOX_CMD_HELP_USAGE("of_property [OPTIONS] [NODE] [PROPERTY] [VALUES]\n")
+BAREBOX_CMD_HELP_OPT  ("-s",  "set property to value\n")
+BAREBOX_CMD_HELP_OPT  ("-d",  "delete property\n")
+BAREBOX_CMD_HELP_TEXT ("\nvalid formats for values:\n")
+BAREBOX_CMD_HELP_TEXT ("<0x00112233 4 05> - an array of cells\n")
+BAREBOX_CMD_HELP_TEXT ("[00 11 22 .. nn]  - byte stream\n")
+BAREBOX_CMD_HELP_TEXT ("If the value does not start with '<' or '[' it is interpreted as strings\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(of_property)
+	.cmd		= do_of_property,
+	.usage		= "handle of properties",
+	BAREBOX_CMD_HELP(cmd_of_property_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
