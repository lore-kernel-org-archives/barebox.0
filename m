Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XY-0003e8-7k
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:54 +0100
Message-Id: <1454064243-26558-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/23] scripts: imx: move config file parser to separate file
To: Barebox List <barebox@lists.infradead.org>

To make the config parser usable by imx-usb-loader also move
it to a separate file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/Makefile    |   4 +-
 scripts/imx/imx-image.c | 326 ----------------------------------------------
 scripts/imx/imx.c       | 336 ++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/imx/imx.h       |  13 +-
 4 files changed, 350 insertions(+), 329 deletions(-)
 create mode 100644 scripts/imx/imx.c

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index ee0acc1..6883659 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -8,5 +8,5 @@ HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
 HOSTCFLAGS_imx-image.o = -I$(srctree)
 
-imx-usb-loader-objs := imx-usb-loader.o
-imx-image-objs := imx-image.o
+imx-usb-loader-objs := imx-usb-loader.o imx.o
+imx-image-objs := imx-image.o imx.o
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 03afcb6..d6ed120 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -37,15 +37,6 @@
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
-struct config_data {
-	uint32_t image_load_addr;
-	uint32_t image_dcd_offset;
-	int header_version;
-	int cpu_type;
-	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
-	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width);
-};
-
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
 static int add_barebox_header;
@@ -194,50 +185,6 @@ static void usage(const char *prgname)
 	exit(1);
 }
 
-#define MAXARGS 5
-
-static int parse_line(char *line, char *argv[])
-{
-	int nargs = 0;
-
-	while (nargs < MAXARGS) {
-
-		/* skip any white space */
-		while ((*line == ' ') || (*line == '\t'))
-			++line;
-
-		if (*line == '\0')	/* end of line, no more args	*/
-			argv[nargs] = NULL;
-
-		if (*line == '\0') {	/* end of line, no more args	*/
-			argv[nargs] = NULL;
-			return nargs;
-		}
-
-		argv[nargs++] = line;	/* begin of argument string	*/
-
-		/* find end of string */
-		while (*line && (*line != ' ') && (*line != '\t'))
-			++line;
-
-		if (*line == '\0') {	/* end of line, no more args	*/
-			argv[nargs] = NULL;
-			return nargs;
-		}
-
-		*line++ = '\0';		/* terminate current arg	 */
-	}
-
-	printf("** Too many args (max. %d) **\n", MAXARGS);
-
-	return nargs;
-}
-
-struct command {
-	const char *name;
-	int (*parse)(struct config_data *data, int argc, char *argv[]);
-};
-
 static uint32_t last_write_cmd;
 static int last_cmd_len;
 static uint32_t *last_dcd;
@@ -283,279 +230,6 @@ static int write_mem_v2(uint32_t addr, uint32_t val, int width)
 	return 0;
 }
 
-static const char *check_cmds[] = {
-	"while_all_bits_clear",		/* while ((*address & mask) == 0); */
-	"while_all_bits_set"	,	/* while ((*address & mask) == mask); */
-	"while_any_bit_clear",		/* while ((*address & mask) != mask); */
-	"while_any_bit_set",		/* while ((*address & mask) != 0); */
-};
-
-static void do_cmd_check_usage(void)
-{
-	fprintf(stderr,
-			"usage: check <width> <cmd> <addr> <mask>\n"
-			"<width> access width in bytes [1|2|4]\n"
-			"with <cmd> one of:\n"
-			"while_all_bits_clear: while ((*addr & mask) == 0)\n"
-			"while_all_bits_set:   while ((*addr & mask) == mask)\n"
-			"while_any_bit_clear:  while ((*addr & mask) != mask)\n"
-			"while_any_bit_set:    while ((*addr & mask) != 0)\n");
-}
-
-static int do_cmd_check(struct config_data *data, int argc, char *argv[])
-{
-	uint32_t addr, mask, cmd;
-	int i, width;
-	const char *scmd;
-
-	if (argc < 5) {
-		do_cmd_check_usage();
-		return -EINVAL;
-	}
-
-	if (!data->check)
-		return -ENOSYS;
-
-	width = strtoul(argv[1], NULL, 0) >> 3;
-	scmd = argv[2];
-	addr = strtoul(argv[3], NULL, 0);
-	mask = strtoul(argv[4], NULL, 0);
-
-	switch (width) {
-	case 1:
-	case 2:
-	case 4:
-		break;
-	default:
-		fprintf(stderr, "illegal width %d\n", width);
-		return -EINVAL;
-	};
-
-	if (curdcd > MAX_DCD - 3) {
-		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
-		return -ENOMEM;
-	}
-
-	for (i = 0; i < ARRAY_SIZE(check_cmds); i++) {
-		if (!strcmp(scmd, check_cmds[i]))
-			break;
-	}
-
-	if (i == ARRAY_SIZE(check_cmds)) {
-		do_cmd_check_usage();
-		return -EINVAL;
-	}
-
-	cmd = (TAG_CHECK << 24) | (i << 3) | width | ((sizeof(uint32_t) * 3) << 8);
-
-	return data->check(data, cmd, addr, mask);
-}
-
-static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
-{
-	uint32_t addr, val, width;
-	char *end;
-
-	if (argc != 4) {
-		fprintf(stderr, "usage: wm [8|16|32] <addr> <val>\n");
-		return -EINVAL;
-	}
-
-	width = strtoul(argv[1], &end, 0);
-	if (*end != '\0') {
-		fprintf(stderr, "illegal width token \"%s\"\n", argv[1]);
-		return -EINVAL;
-	}
-
-	addr = strtoul(argv[2], &end, 0);
-	if (*end != '\0') {
-		fprintf(stderr, "illegal address token \"%s\"\n", argv[2]);
-		return -EINVAL;
-	}
-
-	val = strtoul(argv[3], &end, 0);
-	if (*end != '\0') {
-		fprintf(stderr, "illegal value token \"%s\"\n", argv[3]);
-		return -EINVAL;
-	}
-
-	width >>= 3;
-
-	switch (width) {
-	case 1:
-	case 2:
-	case 4:
-		break;
-	default:
-		fprintf(stderr, "illegal width %d\n", width);
-		return -EINVAL;
-	};
-
-	return data->write_mem(data, addr, val, width);
-}
-
-static int do_loadaddr(struct config_data *data, int argc, char *argv[])
-{
-	if (argc < 2)
-		return -EINVAL;
-
-	data->image_load_addr = strtoul(argv[1], NULL, 0);
-
-	return 0;
-}
-
-static int do_dcd_offset(struct config_data *data, int argc, char *argv[])
-{
-	if (argc < 2)
-		return -EINVAL;
-
-	data->image_dcd_offset = strtoul(argv[1], NULL, 0);
-
-	return 0;
-}
-
-struct soc_type {
-	char *name;
-	int header_version;
-	int cpu_type;
-};
-
-static struct soc_type socs[] = {
-	{ .name = "imx25", .header_version = 1, .cpu_type = 25},
-	{ .name = "imx35", .header_version = 1, .cpu_type = 35 },
-	{ .name = "imx51", .header_version = 1, .cpu_type = 51 },
-	{ .name = "imx53", .header_version = 2, .cpu_type = 53 },
-	{ .name = "imx6", .header_version = 2, .cpu_type = 6 },
-};
-
-static int do_soc(struct config_data *data, int argc, char *argv[])
-{
-	char *soc;
-	int i;
-
-	if (argc < 2)
-		return -EINVAL;
-
-	soc = argv[1];
-
-	for (i = 0; i < ARRAY_SIZE(socs); i++) {
-		if (!strcmp(socs[i].name, soc)) {
-			data->header_version = socs[i].header_version;
-			data->cpu_type = socs[i].cpu_type;
-			return 0;
-		}
-	}
-
-	fprintf(stderr, "unkown SoC type \"%s\". Known SoCs are:\n", soc);
-	for (i = 0; i < ARRAY_SIZE(socs); i++)
-		fprintf(stderr, "%s ", socs[i].name);
-	fprintf(stderr, "\n");
-
-	return -EINVAL;
-}
-
-struct command cmds[] = {
-	{
-		.name = "wm",
-		.parse = do_cmd_write_mem,
-	}, {
-		.name = "check",
-		.parse = do_cmd_check,
-	}, {
-		.name = "loadaddr",
-		.parse = do_loadaddr,
-	}, {
-		.name = "dcdofs",
-		.parse = do_dcd_offset,
-	}, {
-		.name = "soc",
-		.parse = do_soc,
-	},
-};
-
-static char *readcmd(struct config_data *data, FILE *f)
-{
-	static char *buf;
-	char *str;
-	ssize_t ret;
-
-	if (!buf) {
-		buf = malloc(4096);
-		if (!buf)
-			return NULL;
-	}
-
-	str = buf;
-	*str = 0;
-
-	while (1) {
-		ret = fread(str, 1, 1, f);
-		if (!ret)
-			return strlen(buf) ? buf : NULL;
-
-		if (*str == '\n' || *str == ';') {
-			*str = 0;
-			return buf;
-		}
-
-		str++;
-	}
-}
-
-static int parse_config(struct config_data *data, const char *filename)
-{
-	FILE *f;
-	int lineno = 0;
-	char *line = NULL, *tmp;
-	char *argv[MAXARGS];
-	int nargs, i, ret = 0;
-
-	f = fopen(filename, "r");
-	if (!f) {
-		fprintf(stderr, "Error: %s - Can't open DCD file\n", filename);
-		exit(1);
-	}
-
-	while (1) {
-		line = readcmd(data, f);
-		if (!line)
-			break;
-
-		lineno++;
-
-		tmp = strchr(line, '#');
-		if (tmp)
-			*tmp = 0;
-
-		nargs = parse_line(line, argv);
-		if (!nargs)
-			continue;
-
-		ret = -ENOENT;
-
-		for (i = 0; i < ARRAY_SIZE(cmds); i++) {
-			if (!strcmp(cmds[i].name, argv[0])) {
-				ret = cmds[i].parse(data, nargs, argv);
-				if (ret) {
-					fprintf(stderr, "error in line %d: %s\n",
-							lineno, strerror(-ret));
-					goto cleanup;
-				}
-				break;
-			}
-		}
-
-		if (ret == -ENOENT) {
-			fprintf(stderr, "no such command: %s\n", argv[0]);
-			goto cleanup;
-		}
-	}
-
-cleanup:
-	fclose(f);
-	return ret;
-}
-
 static int xread(int fd, void *buf, int len)
 {
 	int ret;
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
new file mode 100644
index 0000000..fa705ff
--- /dev/null
+++ b/scripts/imx/imx.c
@@ -0,0 +1,336 @@
+/*
+ * (C) Copyright 2016 Sascha Hauer, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <stdint.h>
+#include <errno.h>
+#include "imx.h"
+
+#define MAXARGS 5
+
+static int parse_line(char *line, char *argv[])
+{
+	int nargs = 0;
+
+	while (nargs < MAXARGS) {
+
+		/* skip any white space */
+		while ((*line == ' ') || (*line == '\t'))
+			++line;
+
+		if (*line == '\0')	/* end of line, no more args	*/
+			argv[nargs] = NULL;
+
+		if (*line == '\0') {	/* end of line, no more args	*/
+			argv[nargs] = NULL;
+			return nargs;
+		}
+
+		argv[nargs++] = line;	/* begin of argument string	*/
+
+		/* find end of string */
+		while (*line && (*line != ' ') && (*line != '\t'))
+			++line;
+
+		if (*line == '\0') {	/* end of line, no more args	*/
+			argv[nargs] = NULL;
+			return nargs;
+		}
+
+		*line++ = '\0';		/* terminate current arg	 */
+	}
+
+	printf("** Too many args (max. %d) **\n", MAXARGS);
+
+	return nargs;
+}
+
+struct command {
+	const char *name;
+	int (*parse)(struct config_data *data, int argc, char *argv[]);
+};
+
+static const char *check_cmds[] = {
+	"while_all_bits_clear",		/* while ((*address & mask) == 0); */
+	"while_all_bits_set"	,	/* while ((*address & mask) == mask); */
+	"while_any_bit_clear",		/* while ((*address & mask) != mask); */
+	"while_any_bit_set",		/* while ((*address & mask) != 0); */
+};
+
+static void do_cmd_check_usage(void)
+{
+	fprintf(stderr,
+			"usage: check <width> <cmd> <addr> <mask>\n"
+			"<width> access width in bytes [1|2|4]\n"
+			"with <cmd> one of:\n"
+			"while_all_bits_clear: while ((*addr & mask) == 0)\n"
+			"while_all_bits_set:   while ((*addr & mask) == mask)\n"
+			"while_any_bit_clear:  while ((*addr & mask) != mask)\n"
+			"while_any_bit_set:    while ((*addr & mask) != 0)\n");
+}
+
+static int do_cmd_check(struct config_data *data, int argc, char *argv[])
+{
+	uint32_t addr, mask, cmd;
+	int i, width;
+	const char *scmd;
+
+	if (argc < 5) {
+		do_cmd_check_usage();
+		return -EINVAL;
+	}
+
+	if (!data->check)
+		return -ENOSYS;
+
+	width = strtoul(argv[1], NULL, 0) >> 3;
+	scmd = argv[2];
+	addr = strtoul(argv[3], NULL, 0);
+	mask = strtoul(argv[4], NULL, 0);
+
+	switch (width) {
+	case 1:
+	case 2:
+	case 4:
+		break;
+	default:
+		fprintf(stderr, "illegal width %d\n", width);
+		return -EINVAL;
+	};
+
+	for (i = 0; i < ARRAY_SIZE(check_cmds); i++) {
+		if (!strcmp(scmd, check_cmds[i]))
+			break;
+	}
+
+	if (i == ARRAY_SIZE(check_cmds)) {
+		do_cmd_check_usage();
+		return -EINVAL;
+	}
+
+	cmd = (TAG_CHECK << 24) | (i << 3) | width | ((sizeof(uint32_t) * 3) << 8);
+
+	return data->check(data, cmd, addr, mask);
+}
+
+static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
+{
+	uint32_t addr, val, width;
+	char *end;
+
+	if (argc != 4) {
+		fprintf(stderr, "usage: wm [8|16|32] <addr> <val>\n");
+		return -EINVAL;
+	}
+
+	width = strtoul(argv[1], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal width token \"%s\"\n", argv[1]);
+		return -EINVAL;
+	}
+
+	addr = strtoul(argv[2], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal address token \"%s\"\n", argv[2]);
+		return -EINVAL;
+	}
+
+	val = strtoul(argv[3], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal value token \"%s\"\n", argv[3]);
+		return -EINVAL;
+	}
+
+	width >>= 3;
+
+	switch (width) {
+	case 1:
+	case 2:
+	case 4:
+		break;
+	default:
+		fprintf(stderr, "illegal width %d\n", width);
+		return -EINVAL;
+	};
+
+	return data->write_mem(data, addr, val, width);
+}
+
+static int do_loadaddr(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->image_load_addr = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
+static int do_dcd_offset(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->image_dcd_offset = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
+struct soc_type {
+	char *name;
+	int header_version;
+	int cpu_type;
+};
+
+static struct soc_type socs[] = {
+	{ .name = "imx25", .header_version = 1, .cpu_type = 25},
+	{ .name = "imx35", .header_version = 1, .cpu_type = 35 },
+	{ .name = "imx51", .header_version = 1, .cpu_type = 51 },
+	{ .name = "imx53", .header_version = 2, .cpu_type = 53 },
+	{ .name = "imx6", .header_version = 2, .cpu_type = 6 },
+};
+
+static int do_soc(struct config_data *data, int argc, char *argv[])
+{
+	char *soc;
+	int i;
+
+	if (argc < 2)
+		return -EINVAL;
+
+	soc = argv[1];
+
+	for (i = 0; i < ARRAY_SIZE(socs); i++) {
+		if (!strcmp(socs[i].name, soc)) {
+			data->header_version = socs[i].header_version;
+			data->cpu_type = socs[i].cpu_type;
+			return 0;
+		}
+	}
+
+	fprintf(stderr, "unkown SoC type \"%s\". Known SoCs are:\n", soc);
+	for (i = 0; i < ARRAY_SIZE(socs); i++)
+		fprintf(stderr, "%s ", socs[i].name);
+	fprintf(stderr, "\n");
+
+	return -EINVAL;
+}
+
+struct command cmds[] = {
+	{
+		.name = "wm",
+		.parse = do_cmd_write_mem,
+	}, {
+		.name = "check",
+		.parse = do_cmd_check,
+	}, {
+		.name = "loadaddr",
+		.parse = do_loadaddr,
+	}, {
+		.name = "dcdofs",
+		.parse = do_dcd_offset,
+	}, {
+		.name = "soc",
+		.parse = do_soc,
+	},
+};
+
+static char *readcmd(struct config_data *data, FILE *f)
+{
+	static char *buf;
+	char *str;
+	ssize_t ret;
+
+	if (!buf) {
+		buf = malloc(4096);
+		if (!buf)
+			return NULL;
+	}
+
+	str = buf;
+	*str = 0;
+
+	while (1) {
+		ret = fread(str, 1, 1, f);
+		if (!ret)
+			return strlen(buf) ? buf : NULL;
+
+		if (*str == '\n' || *str == ';') {
+			*str = 0;
+			return buf;
+		}
+
+		str++;
+	}
+}
+
+int parse_config(struct config_data *data, const char *filename)
+{
+	FILE *f;
+	int lineno = 0;
+	char *line = NULL, *tmp;
+	char *argv[MAXARGS];
+	int nargs, i, ret = 0;
+
+	f = fopen(filename, "r");
+	if (!f) {
+		fprintf(stderr, "Error: %s - Can't open DCD file\n", filename);
+		exit(1);
+	}
+
+	while (1) {
+		line = readcmd(data, f);
+		if (!line)
+			break;
+
+		lineno++;
+
+		tmp = strchr(line, '#');
+		if (tmp)
+			*tmp = 0;
+
+		nargs = parse_line(line, argv);
+		if (!nargs)
+			continue;
+
+		ret = -ENOENT;
+
+		for (i = 0; i < ARRAY_SIZE(cmds); i++) {
+			if (!strcmp(cmds[i].name, argv[0])) {
+				ret = cmds[i].parse(data, nargs, argv);
+				if (ret) {
+					fprintf(stderr, "error in line %d: %s\n",
+							lineno, strerror(-ret));
+					goto cleanup;
+				}
+				break;
+			}
+		}
+
+		if (ret == -ENOENT) {
+			fprintf(stderr, "no such command: %s\n", argv[0]);
+			goto cleanup;
+		}
+	}
+
+cleanup:
+	fclose(f);
+	return ret;
+}
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 1d23e11..41a54fb 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -54,4 +54,15 @@ struct imx_flash_header_v2 {
 
 	struct imx_boot_data boot_data;
 	struct imx_ivt_header dcd_header;
-} __attribute__((packed));
\ No newline at end of file
+} __attribute__((packed));
+
+struct config_data {
+	uint32_t image_load_addr;
+	uint32_t image_dcd_offset;
+	int header_version;
+	int cpu_type;
+	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
+	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width);
+};
+
+int parse_config(struct config_data *data, const char *filename);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
