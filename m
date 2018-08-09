Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fneqC-0007uf-EF
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 06:54:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Aug 2018 08:54:20 +0200
Message-Id: <20180809065420.6475-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts/dtc: Reenable fdtget
To: Barebox List <barebox@lists.infradead.org>
Cc: Peter Mamonov <pmamonov@gmail.com>

compilation of fdtget was lost during the update to version 1.4.6.
We need this tool internally for the build process when imd support
is enabled.

Apparently our dtc code comes from the Kernel which doesn't have the
upstream version of fdtget.c and it doesn't compile. This patch
changes fdtget.c to the upstream version as of 1.4.6. This isn't
noticed in the Kernel because fdtget isn't compiled there.

Fixes: 8a8982541 scripts/dtc: Update to upstream version 1.4.6

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/dtc/Makefile |   5 +-
 scripts/dtc/fdtget.c | 119 +++++++++++++++++++++++++------------------
 2 files changed, 73 insertions(+), 51 deletions(-)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 06aaa8c550..cc4ebefcb6 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -1,6 +1,6 @@
 # scripts/dtc makefile
 
-hostprogs-y	:= dtc
+hostprogs-y	:= dtc fdtget
 always		:= $(hostprogs-y)
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
@@ -10,6 +10,8 @@ dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 libfdt-objs	= fdt.o fdt_ro.o fdt_strerror.o fdt_wip.o fdt_overlay.o
 libfdt-objs	+= fdt_empty_tree.o fdt_rw.o fdt_sw.o
 
+fdtget-objs    += fdtget.o $(libfdt-objs) util.o
+
 # Source files need to get at the userspace version of libfdt_env.h to compile
 
 HOSTCFLAGS_DTC := -I$(src)
@@ -23,6 +25,7 @@ HOSTCFLAGS_livetree.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_srcpos.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_treesource.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_util.o := $(HOSTCFLAGS_DTC)
+HOSTCFLAGS_fdtget.o := $(HOSTCFLAGS_DTC)
 
 HOSTCFLAGS_fdt.o := $(HOSTCFLAGS_DTC)
 HOSTCFLAGS_fdt_ro.o := $(HOSTCFLAGS_DTC)
diff --git a/scripts/dtc/fdtget.c b/scripts/dtc/fdtget.c
index c2fbab2a54..6cc5242f10 100644
--- a/scripts/dtc/fdtget.c
+++ b/scripts/dtc/fdtget.c
@@ -53,6 +53,37 @@ static void report_error(const char *where, int err)
 	fprintf(stderr, "Error at '%s': %s\n", where, fdt_strerror(err));
 }
 
+/**
+ * Shows a list of cells in the requested format
+ *
+ * @param disp		Display information / options
+ * @param data		Data to display
+ * @param len		Maximum length of buffer
+ * @param size		Data size to use for display (e.g. 4 for 32-bit)
+ * @return 0 if ok, -1 on error
+ */
+static int show_cell_list(struct display_info *disp, const char *data, int len,
+			  int size)
+{
+	const uint8_t *p = (const uint8_t *)data;
+	char fmt[3];
+	int value;
+	int i;
+
+	fmt[0] = '%';
+	fmt[1] = disp->type ? disp->type : 'd';
+	fmt[2] = '\0';
+	for (i = 0; i < len; i += size, p += size) {
+		if (i)
+			printf(" ");
+		value = size == 4 ? fdt32_to_cpu(*(const fdt32_t *)p) :
+			size == 2 ? (*p << 8) | p[1] : *p;
+		printf(fmt, value);
+	}
+
+	return 0;
+}
+
 /**
  * Displays data of a given length according to selected options
  *
@@ -66,12 +97,9 @@ static void report_error(const char *where, int err)
  */
 static int show_data(struct display_info *disp, const char *data, int len)
 {
-	int i, size;
-	const uint8_t *p = (const uint8_t *)data;
+	int size;
 	const char *s;
-	int value;
 	int is_string;
-	char fmt[3];
 
 	/* no data, don't print */
 	if (len == 0)
@@ -99,17 +127,8 @@ static int show_data(struct display_info *disp, const char *data, int len)
 				"selected data size\n");
 		return -1;
 	}
-	fmt[0] = '%';
-	fmt[1] = disp->type ? disp->type : 'd';
-	fmt[2] = '\0';
-	for (i = 0; i < len; i += size, p += size) {
-		if (i)
-			printf(" ");
-		value = size == 4 ? fdt32_to_cpu(*(const uint32_t *)p) :
-			size == 2 ? (*p << 8) | p[1] : *p;
-		printf(fmt, value);
-	}
-	return 0;
+
+	return show_cell_list(disp, data, len, size);
 }
 
 /**
@@ -245,7 +264,7 @@ static int show_data_for_item(const void *blob, struct display_info *disp,
  * @param filename	Filename of blob file
  * @param arg		List of arguments to process
  * @param arg_count	Number of arguments
- * @param return 0 if ok, -ve on error
+ * @return 0 if ok, -ve on error
  */
 static int do_fdtget(struct display_info *disp, const char *filename,
 		     char **arg, int arg_count, int args_per_step)
@@ -266,44 +285,50 @@ static int do_fdtget(struct display_info *disp, const char *filename,
 				continue;
 			} else {
 				report_error(arg[i], node);
+				free(blob);
 				return -1;
 			}
 		}
 		prop = args_per_step == 1 ? NULL : arg[i + 1];
 
-		if (show_data_for_item(blob, disp, node, prop))
+		if (show_data_for_item(blob, disp, node, prop)) {
+			free(blob);
 			return -1;
+		}
 	}
+
+	free(blob);
+
 	return 0;
 }
 
-static const char *usage_msg =
-	"fdtget - read values from device tree\n"
-	"\n"
-	"Each value is printed on a new line.\n\n"
-	"Usage:\n"
+/* Usage related data. */
+static const char usage_synopsis[] =
+	"read values from device tree\n"
 	"	fdtget <options> <dt file> [<node> <property>]...\n"
 	"	fdtget -p <options> <dt file> [<node> ]...\n"
-	"Options:\n"
-	"\t-t <type>\tType of data\n"
-	"\t-p\t\tList properties for each node\n"
-	"\t-l\t\tList subnodes for each node\n"
-	"\t-d\t\tDefault value to display when the property is "
-			"missing\n"
-	"\t-h\t\tPrint this help\n\n"
+	"\n"
+	"Each value is printed on a new line.\n"
 	USAGE_TYPE_MSG;
-
-static void usage(const char *msg)
-{
-	if (msg)
-		fprintf(stderr, "Error: %s\n\n", msg);
-
-	fprintf(stderr, "%s", usage_msg);
-	exit(2);
-}
+static const char usage_short_opts[] = "t:pld:" USAGE_COMMON_SHORT_OPTS;
+static struct option const usage_long_opts[] = {
+	{"type",              a_argument, NULL, 't'},
+	{"properties",       no_argument, NULL, 'p'},
+	{"list",             no_argument, NULL, 'l'},
+	{"default",           a_argument, NULL, 'd'},
+	USAGE_COMMON_LONG_OPTS,
+};
+static const char * const usage_opts_help[] = {
+	"Type of data",
+	"List properties for each node",
+	"List subnodes for each node",
+	"Default value to display when the property is missing",
+	USAGE_COMMON_OPTS_HELP
+};
 
 int main(int argc, char *argv[])
 {
+	int opt;
 	char *filename = NULL;
 	struct display_info disp;
 	int args_per_step = 2;
@@ -312,20 +337,14 @@ int main(int argc, char *argv[])
 	memset(&disp, '\0', sizeof(disp));
 	disp.size = -1;
 	disp.mode = MODE_SHOW_VALUE;
-	for (;;) {
-		int c = getopt(argc, argv, "d:hlpt:");
-		if (c == -1)
-			break;
-
-		switch (c) {
-		case 'h':
-		case '?':
-			usage(NULL);
+	while ((opt = util_getopt_long()) != EOF) {
+		switch (opt) {
+		case_USAGE_COMMON_FLAGS
 
 		case 't':
 			if (utilfdt_decode_type(optarg, &disp.type,
 					&disp.size))
-				usage("Invalid type string");
+				usage("invalid type string");
 			break;
 
 		case 'p':
@@ -347,7 +366,7 @@ int main(int argc, char *argv[])
 	if (optind < argc)
 		filename = argv[optind++];
 	if (!filename)
-		usage("Missing filename");
+		usage("missing filename");
 
 	argv += optind;
 	argc -= optind;
@@ -358,7 +377,7 @@ int main(int argc, char *argv[])
 
 	/* Check for node, property arguments */
 	if (args_per_step == 2 && (argc % 2))
-		usage("Must have an even number of arguments");
+		usage("must have an even number of arguments");
 
 	if (do_fdtget(&disp, filename, argv, argc, args_per_step))
 		return 1;
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
