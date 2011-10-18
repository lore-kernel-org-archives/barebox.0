Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG8I2-0007Io-Eq
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 11:57:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Oct 2011 13:56:57 +0200
Message-Id: <1318939019-32713-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318939019-32713-1-git-send-email-s.hauer@pengutronix.de>
References: <1318939019-32713-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] initial oftree command support
To: barebox@lists.infradead.org

This adds basic device tree command support. So far we can
parse a flat device tree (-p), which also stores the tree
in memory, dump it (-d) and free (-f) the internally stored tree.

The chosen node can be updated with barebox bootargs, no other
device tree manipulation is implemented yet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig     |    6 +
 commands/Makefile    |    1 +
 commands/oftree.c    |  135 ++++++++++++++++++++++
 common/Makefile      |    1 +
 common/oftree.c      |  312 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/libfdt_env.h |    3 +-
 include/of.h         |   21 ++++
 lib/Kconfig          |    3 +
 8 files changed, 481 insertions(+), 1 deletions(-)
 create mode 100644 commands/oftree.c
 create mode 100644 common/oftree.c
 create mode 100644 include/of.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 22e2c2e..18ab840 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -343,6 +343,12 @@ config CMD_GO
 	tristate
 	prompt "go"
 
+config CMD_OFTREE
+	tristate
+	select OFTREE
+	prompt "oftree"
+	select FDT
+
 endmenu
 
 config CMD_TIMEOUT
diff --git a/commands/Makefile b/commands/Makefile
index 40fb26c..5c51916 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -57,3 +57,4 @@ obj-$(CONFIG_CMD_LED)		+= led.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
+obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
diff --git a/commands/oftree.c b/commands/oftree.c
new file mode 100644
index 0000000..d8deb36
--- /dev/null
+++ b/commands/oftree.c
@@ -0,0 +1,135 @@
+/*
+ * oftree.c - device tree command support
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * based on U-Boot code by:
+ *
+ * Gerald Van Baren, Custom IDEAS, vanbaren@cideas.com
+ * Pantelis Antoniou <pantelis.antoniou@gmail.com> and
+ * Matthew McClintock <msm@freescale.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
+static int do_oftree(struct command *cmdtp, int argc, char *argv[])
+{
+	struct fdt_header *fdt;
+	int size;
+	int opt;
+	char *file = NULL;
+	const char *node = "/";
+	int dump = 0;
+	int parse = 0;
+
+	while ((opt = getopt(argc, argv, "dpfn:")) > 0) {
+		switch (opt) {
+		case 'd':
+			dump = 1;
+			break;
+		case 'p':
+			parse = 1;
+			break;
+		case 'f':
+			free(barebox_fdt);
+			barebox_fdt = NULL;
+			return 0;
+		case 'n':
+			node = optarg;
+			break;
+		}
+	}
+
+	if (optind < argc)
+		file = argv[optind];
+
+	if (!dump && !parse)
+		return COMMAND_ERROR_USAGE;
+
+	if (dump) {
+		if (file) {
+			fdt = read_file(file, &size);
+			if (!fdt) {
+				printf("unable to read %s\n", file);
+				return 1;
+			}
+
+			fdt_print(fdt, node);
+			free(fdt);
+		} else {
+			if (barebox_fdt) {
+				fdt_print(barebox_fdt, node);
+				return 0;
+			} else {
+				return 1;
+			}
+		}
+		return 0;
+	}
+
+	if (parse) {
+		if (!file)
+			return COMMAND_ERROR_USAGE;
+
+		fdt = read_file(file, &size);
+		if (!fdt) {
+			perror("open");
+			return 1;
+		}
+
+		fdt = xrealloc(fdt, size + 0x8000);
+		fdt_open_into(fdt, fdt, size + 0x8000);
+		if (!fdt) {
+			printf("unable to read %s\n", file);
+			return 1;
+		}
+
+		if (barebox_fdt)
+			free(barebox_fdt);
+
+		barebox_fdt = fdt;
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(oftree)
+BAREBOX_CMD_HELP_USAGE("oftree [OPTIONS]\n")
+BAREBOX_CMD_HELP_OPT  ("-p <FILE>",  "parse and store oftree from <file>\n")
+BAREBOX_CMD_HELP_OPT  ("-d [FILE]",  "dump oftree from [FILE] or the parsed tree if no file is given\n")
+BAREBOX_CMD_HELP_OPT  ("-f",  "free stored oftree\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(oftree)
+	.cmd		= do_oftree,
+	.usage		= "handle oftrees",
+	BAREBOX_CMD_HELP(cmd_oftree_help)
+BAREBOX_CMD_END
diff --git a/common/Makefile b/common/Makefile
index 74946e9..7bb8ea4 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
+obj-$(CONFIG_OFTREE)		+= oftree.o
 
 obj-y += memory.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
diff --git a/common/oftree.c b/common/oftree.c
new file mode 100644
index 0000000..2a2f464
--- /dev/null
+++ b/common/oftree.c
@@ -0,0 +1,312 @@
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
+#define MAX_LEVEL	32		/* how deeply nested we will go */
+
+static int is_printable_string(const void *data, int len)
+{
+	const char *s = data;
+
+	/* zero length is not */
+	if (len == 0)
+		return 0;
+
+	/* must terminate with zero */
+	if (s[len - 1] != '\0')
+		return 0;
+
+	/* printable or a null byte (concatenated strings) */
+	while (((*s == '\0') || isprint(*s)) && (len > 0)) {
+		/*
+		 * If we see a null, there are three possibilities:
+		 * 1) If len == 1, it is the end of the string, printable
+		 * 2) Next character also a null, not printable.
+		 * 3) Next character not a null, continue to check.
+		 */
+		if (s[0] == '\0') {
+			if (len == 1)
+				return 1;
+			if (s[1] == '\0')
+				return 0;
+		}
+		s++;
+		len--;
+	}
+
+	/* Not the null termination, or not done yet: not printable */
+	if (*s != '\0' || (len != 0))
+		return 0;
+
+	return 1;
+}
+
+/*
+ * Print the property in the best format, a heuristic guess.  Print as
+ * a string, concatenated strings, a byte, word, double word, or (if all
+ * else fails) it is printed as a stream of bytes.
+ */
+static void print_data(const void *data, int len)
+{
+	int j;
+
+	/* no data, don't print */
+	if (len == 0)
+		return;
+
+	/*
+	 * It is a string, but it may have multiple strings (embedded '\0's).
+	 */
+	if (is_printable_string(data, len)) {
+		puts("\"");
+		j = 0;
+		while (j < len) {
+			if (j > 0)
+				puts("\", \"");
+			puts(data);
+			j    += strlen(data) + 1;
+			data += strlen(data) + 1;
+		}
+		puts("\"");
+		return;
+	}
+
+	if ((len % 4) == 0) {
+		const u32 *p;
+
+		printf("<");
+		for (j = 0, p = data; j < len/4; j ++)
+			printf("0x%x%s", fdt32_to_cpu(p[j]), j < (len/4 - 1) ? " " : "");
+		printf(">");
+	} else { /* anything else... hexdump */
+		const u8 *s;
+
+		printf("[");
+		for (j = 0, s = data; j < len; j++)
+			printf("%02x%s", s[j], j < len - 1 ? " " : "");
+		printf("]");
+	}
+}
+
+static void printf_indent(int level, const char *fmt, ...)
+{
+	va_list args;
+
+	printf("%*s", level * 8, "");
+
+	va_start (args, fmt);
+	vprintf(fmt, args);
+	va_end (args);
+}
+
+int fdt_print(struct fdt_header *working_fdt, const char *pathp)
+{
+	const void *nodep;	/* property node pointer */
+	int  nodeoffset;	/* node offset from libfdt */
+	int  nextoffset;	/* next node offset from libfdt */
+	uint32_t tag;		/* tag */
+	int  len;		/* length of the property */
+	int  level = 0;		/* keep track of nesting level */
+	const struct fdt_property *fdt_prop;
+
+	nodeoffset = fdt_path_offset(working_fdt, pathp);
+	if (nodeoffset < 0) {
+		/*
+		 * Not found or something else bad happened.
+		 */
+		printf("libfdt fdt_path_offset() returned %s\n",
+			fdt_strerror(nodeoffset));
+		return 1;
+	}
+
+	while (level >= 0) {
+		tag = fdt_next_tag(working_fdt, nodeoffset, &nextoffset);
+		switch (tag) {
+		case FDT_BEGIN_NODE:
+			pathp = fdt_get_name(working_fdt, nodeoffset, NULL);
+			if (pathp == NULL)
+				pathp = "/* NULL pointer error */";
+			if (*pathp == '\0')
+				pathp = "/";	/* root is nameless */
+			printf_indent(level, "%s {\n",pathp);
+			level++;
+			if (level >= MAX_LEVEL) {
+				printf("Nested too deep, aborting.\n");
+				return 1;
+			}
+			break;
+		case FDT_END_NODE:
+			level--;
+			printf_indent(level, "};\n");
+			if (level == 0) {
+				level = -1;		/* exit the loop */
+			}
+			break;
+		case FDT_PROP:
+			fdt_prop = fdt_offset_ptr(working_fdt, nodeoffset,
+					sizeof(*fdt_prop));
+			pathp    = fdt_string(working_fdt,
+					fdt32_to_cpu(fdt_prop->nameoff));
+			len      = fdt32_to_cpu(fdt_prop->len);
+			nodep    = fdt_prop->data;
+			if (len < 0) {
+				printf("libfdt fdt_getprop(): %s\n",
+					fdt_strerror(len));
+				return 1;
+			} else if (len == 0) {
+				/* the property has no value */
+				printf_indent(level, "%s;\n", pathp);
+			} else {
+				printf_indent(level, "%s = ", pathp);
+				print_data(nodep, len);
+				printf(";\n");
+			}
+			break;
+		case FDT_NOP:
+			printf_indent(level, "/* NOP */\n");
+			break;
+		case FDT_END:
+			return 1;
+		default:
+			printf("Unknown tag 0x%08X\n", tag);
+			return 1;
+		}
+		nodeoffset = nextoffset;
+	}
+	return 0;
+}
+
+/**
+ * fdt_find_and_setprop: Find a node and set it's property
+ *
+ * @fdt: ptr to device tree
+ * @node: path of node
+ * @prop: property name
+ * @val: ptr to new value
+ * @len: length of new property value
+ * @create: flag to create the property if it doesn't exist
+ *
+ * Convenience function to directly set a property given the path to the node.
+ */
+int fdt_find_and_setprop(struct fdt_header *fdt, const char *node,
+		const char *prop, const void *val, int len, int create)
+{
+	int nodeoff = fdt_path_offset(fdt, node);
+
+	if (nodeoff < 0)
+		return nodeoff;
+
+	if ((!create) && (fdt_get_property(fdt, nodeoff, prop, 0) == NULL))
+		return 0; /* create flag not set; so exit quietly */
+
+	return fdt_setprop(fdt, nodeoff, prop, val, len);
+}
+
+void do_fixup_by_path(struct fdt_header *fdt, const char *path,
+		const char *prop, const void *val, int len, int create)
+{
+	int rc = fdt_find_and_setprop(fdt, path, prop, val, len, create);
+	if (rc)
+		printf("Unable to update property %s:%s, err=%s\n",
+			path, prop, fdt_strerror(rc));
+}
+
+void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path,
+		const char *prop, u32 val, int create)
+{
+	val = cpu_to_fdt32(val);
+	do_fixup_by_path(fdt, path, prop, &val, sizeof(val), create);
+}
+
+int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
+{
+	int nodeoffset;
+
+	nodeoffset = fdt_path_offset (fdt, path);
+	if (nodeoffset < 0) {
+		nodeoffset = fdt_add_subnode(fdt, 0, path + 1);
+		if (nodeoffset < 0) {
+			printf("WARNING: could not create %s %s.\n",
+					path, fdt_strerror(nodeoffset));
+                        return -EINVAL;
+                }
+        }
+
+	return nodeoffset;
+}
+
+struct fdt_header *barebox_fdt;
+
+static int of_fixup_bootargs(struct fdt_header *fdt)
+{
+	int nodeoffset;
+	const char *str;
+	int err;
+
+	nodeoffset = fdt_get_path_or_create(fdt, "/chosen");
+	if (nodeoffset < 0)
+		return nodeoffset;
+
+	str = getenv("bootargs");
+	if (str) {
+		err = fdt_setprop(fdt, nodeoffset,
+				"bootargs", str, strlen(str)+1);
+		if (err < 0)
+			printf("WARNING: could not set bootargs %s.\n",
+					fdt_strerror(err));
+        }
+
+	return 0;
+}
+
+static int of_register_bootargs_fixup(void)
+{
+	return of_register_fixup(of_fixup_bootargs);
+}
+late_initcall(of_register_bootargs_fixup);
+
+struct of_fixup {
+	int (*fixup)(struct fdt_header *);
+	struct list_head list;
+};
+
+static LIST_HEAD(of_fixup_list);
+
+int of_register_fixup(int (*fixup)(struct fdt_header *))
+{
+	struct of_fixup *of_fixup = xzalloc(sizeof(*of_fixup));
+
+	of_fixup->fixup = fixup;
+
+	list_add_tail(&of_fixup->list, &of_fixup_list);
+
+	return 0;
+}
+
+struct fdt_header *of_get_fixed_tree(void)
+{
+	struct of_fixup *of_fixup;
+	int ret;
+
+	if (!barebox_fdt)
+		return NULL;
+
+	list_for_each_entry(of_fixup, &of_fixup_list, list) {
+		ret = of_fixup->fixup(barebox_fdt);
+		if (ret)
+			return NULL;
+	}
+
+	return barebox_fdt;
+}
+
diff --git a/include/libfdt_env.h b/include/libfdt_env.h
index 449bf60..aa8fb5f 100644
--- a/include/libfdt_env.h
+++ b/include/libfdt_env.h
@@ -2,9 +2,10 @@
 #define _LIBFDT_ENV_H
 
 #include <stddef.h>
-#include <stdint.h>
 #include <string.h>
 
+typedef unsigned long int     uintptr_t;
+
 #define _B(n)	((unsigned long long)((uint8_t *)&x)[n])
 static inline uint32_t fdt32_to_cpu(uint32_t x)
 {
diff --git a/include/of.h b/include/of.h
new file mode 100644
index 0000000..c2661ef
--- /dev/null
+++ b/include/of.h
@@ -0,0 +1,21 @@
+#ifndef __OF_H
+#define __OF_H
+
+#include <fdt.h>
+
+extern struct fdt_header *barebox_fdt;
+
+int fdt_print(struct fdt_header *working_fdt, const char *pathp);
+
+struct fdt_header *of_get_fixed_tree(void);
+int of_register_fixup(int (*fixup)(struct fdt_header *));
+
+int fdt_find_and_setprop(struct fdt_header *fdt, const char *node, const char *prop,
+			 const void *val, int len, int create);
+void do_fixup_by_path(struct fdt_header *fdt, const char *path, const char *prop,
+		      const void *val, int len, int create);
+void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path, const char *prop,
+			  u32 val, int create);
+int fdt_get_path_or_create(struct fdt_header *fdt, const char *path);
+
+#endif /* __OF_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index c7dc161..531398f 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -15,3 +15,6 @@ source lib/lzo/Kconfig
 config FDT
 	bool
 
+config OFTREE
+	select FDT
+	bool
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
