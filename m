Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qe-6L
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:32 +0100
Message-Id: <1357910676-4231-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/16] oftree command: refactor
To: barebox@lists.infradead.org

This has several improvements for the oftree command:

- loading a devicetree (-l) and actually probing (-p) it now is separated
- the command now can dump the internal devicetree or a dtb given on the
  command line.
- The -f option now actually frees the internal devicetree

With this the usage pattern for this command is:

oftree -l /env/oftree

oftree -d -n /sound

oftree -d /env/oftree

oftree -f

oftree -p

oftree -l -p /env/oftree

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c |   99 ++++++++++++++++++++++++++++++++++++-----------------
 common/oftree.c   |   11 ++++--
 2 files changed, 76 insertions(+), 34 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 17af9eb..c5239eb 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -39,17 +39,23 @@
 
 static int do_oftree(int argc, char *argv[])
 {
-	struct fdt_header *fdt;
+	struct fdt_header *fdt = NULL;
+	void *fdt_free = NULL;
 	int size;
 	int opt;
 	char *file = NULL;
 	const char *node = "/";
 	int dump = 0;
 	int probe = 0;
+	int load = 0;
+	int free_of = 0;
 	int ret;
 
-	while ((opt = getopt(argc, argv, "dpfn:")) > 0) {
+	while ((opt = getopt(argc, argv, "dpfn:l")) > 0) {
 		switch (opt) {
+		case 'l':
+			load = 1;
+			break;
 		case 'd':
 			dump = 1;
 			break;
@@ -62,66 +68,97 @@ static int do_oftree(int argc, char *argv[])
 			}
 			break;
 		case 'f':
-			return 0;
+			free_of = 1;
+			break;
 		case 'n':
 			node = optarg;
 			break;
 		}
 	}
 
+	if (free_of) {
+		struct device_node *root = of_get_root_node();
+
+		if (root)
+			of_free(root);
+
+		return 0;
+	}
+
 	if (optind < argc)
 		file = argv[optind];
 
-	if (!dump && !probe)
+	if (!dump && !probe && !load)
 		return COMMAND_ERROR_USAGE;
 
-	if (dump) {
-		if (file) {
-			fdt = read_file(file, &size);
-			if (!fdt) {
-				printf("unable to read %s\n", file);
-				return 1;
-			}
-
-			fdt_print(fdt, node);
-			free(fdt);
-		} else {
+	if (file) {
+		fdt = read_file(file, &size);
+		if (!fdt) {
+			printf("unable to read %s\n", file);
 			return 1;
 		}
-		return 0;
-	}
 
-	if (probe) {
-		if (!file)
-			return COMMAND_ERROR_USAGE;
+		fdt_free = fdt;
+	}
 
-		fdt = read_file(file, &size);
+	if (load) {
 		if (!fdt) {
-			perror("open");
-			return 1;
+			printf("no fdt given\n");
+			ret = -ENOENT;
+
+			goto out;
 		}
 
 		ret = of_unflatten_dtb(fdt);
 		if (ret) {
 			printf("parse oftree: %s\n", strerror(-ret));
-			return 1;
+			goto out;
 		}
+	}
 
-		of_probe();
+	if (dump) {
+		if (fdt) {
+			ret = fdt_print(fdt, node);
+		} else {
+			struct device_node *n = of_find_node_by_path(node);
+
+			if (!n) {
+				ret = -ENOENT;
+				goto out;
+			}
+
+			of_print_nodes(n, 0);
+
+			ret = 0;
+		}
+
+		goto out;
 	}
 
-	return 0;
+	if (probe) {
+		ret = of_probe();
+		if (ret)
+			goto out;
+	}
+
+	ret = 0;
+out:
+	free(fdt_free);
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(oftree)
-BAREBOX_CMD_HELP_USAGE("oftree [OPTIONS]\n")
-BAREBOX_CMD_HELP_OPT  ("-p <FILE>",  "probe devices in oftree from <file>\n")
-BAREBOX_CMD_HELP_OPT  ("-d [FILE]",  "dump oftree from [FILE] or the parsed tree if no file is given\n")
-BAREBOX_CMD_HELP_OPT  ("-f",  "free stored oftree\n")
+BAREBOX_CMD_HELP_USAGE("oftree [OPTIONS] [DTB]\n")
+BAREBOX_CMD_HELP_OPT  ("-l",  "Load [DTB] to internal devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-p",  "probe devices from stored devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-d",  "dump oftree from [DTB] or the parsed tree if no dtb is given\n")
+BAREBOX_CMD_HELP_OPT  ("-f",  "free stored devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-n <node>",  "specify root devicenode to dump for -d\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
-	.usage		= "handle oftrees",
+	.usage		= "handle devicetrees",
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
diff --git a/common/oftree.c b/common/oftree.c
index d699cb6..0df5209 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -325,11 +325,14 @@ int of_fix_tree(struct fdt_header *fdt)
 struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt)
 {
 	int ret;
-	void *fixfdt;
+	void *fixfdt, *internalfdt = NULL;
 	int size, align;
 
-	if (!fdt)
-		return NULL;
+	if (!fdt) {
+		fdt = internalfdt = of_flatten_dtb();
+		if (!fdt)
+			return NULL;
+	}
 
 	size = fdt_totalsize(fdt);
 
@@ -343,6 +346,8 @@ struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt)
 	fixfdt = xmemalign(align, size + OFTREE_SIZE_INCREASE);
 	ret = fdt_open_into(fdt, fixfdt, size + OFTREE_SIZE_INCREASE);
 
+	free(internalfdt);
+
 	if (ret)
 		goto out_free;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
