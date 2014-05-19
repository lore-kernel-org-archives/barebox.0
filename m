Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FP-Pl
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:44 +0200
Message-Id: <1400533184-668-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] oftree command: make devicetree file optargs to -l/-s
To: barebox@lists.infradead.org

When loading or saving a devicetree it seems logical to add the
filename to the option specifying the command. This is also slightly
easier to parse.
While at it add missing documentation for the -s option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c | 54 ++++++++++++++++--------------------------------------
 1 file changed, 16 insertions(+), 38 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 2c45b93..a3b0e04 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -42,13 +42,11 @@
 static int do_oftree(int argc, char *argv[])
 {
 	struct fdt_header *fdt = NULL;
-	void *fdt_free = NULL;
 	int size;
 	int opt;
-	char *file = NULL;
 	int probe = 0;
-	int load = 0;
-	int save = 0;
+	char *load = NULL;
+	char *save = NULL;
 	int free_of = 0;
 	int ret;
 	struct device_node *root;
@@ -56,7 +54,7 @@ static int do_oftree(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
 		switch (opt) {
 		case 'l':
-			load = 1;
+			load = optarg;
 			break;
 		case 'p':
 			if (IS_ENABLED(CONFIG_OFDEVICE)) {
@@ -70,7 +68,7 @@ static int do_oftree(int argc, char *argv[])
 			free_of = 1;
 			break;
 		case 's':
-			save = 1;
+			save = optarg;
 			break;
 		}
 	}
@@ -85,20 +83,10 @@ static int do_oftree(int argc, char *argv[])
 			return 0;
 	}
 
-	if (optind < argc)
-		file = argv[optind];
-
 	if (!probe && !load && !save)
 		return COMMAND_ERROR_USAGE;
 
 	if (save) {
-		if (!file) {
-			printf("no file given\n");
-			ret = -ENOENT;
-
-			goto out;
-		}
-
 		fdt = of_get_fixed_tree(NULL);
 		if (!fdt) {
 			printf("no devicetree available\n");
@@ -107,39 +95,29 @@ static int do_oftree(int argc, char *argv[])
 			goto out;
 		}
 
-		ret = write_file(file, fdt, fdt32_to_cpu(fdt->totalsize));
+		ret = write_file(save, fdt, fdt32_to_cpu(fdt->totalsize));
 
 		goto out;
 	}
 
-	if (file) {
-		fdt = read_file(file, &size);
+	if (load) {
+		fdt = read_file(load, &size);
 		if (!fdt) {
-			printf("unable to read %s\n", file);
+			printf("unable to read %s\n", load);
 			return 1;
 		}
 
-		fdt_free = fdt;
-	}
-
-	if (load) {
-		if (!fdt) {
-			printf("no fdt given\n");
-			ret = -ENOENT;
+		root = of_unflatten_dtb(fdt);
 
-			goto out;
-		}
+		free(fdt);
 
-		root = of_unflatten_dtb(fdt);
 		if (IS_ERR(root))
-			ret = PTR_ERR(root);
-		else
-			ret = 0;
+			return PTR_ERR(root);
 
 		ret = of_set_root_node(root);
-
 		if (ret) {
-			printf("parse oftree: %s\n", strerror(-ret));
+			printf("setting root node failed: %s\n", strerror(-ret));
+			of_delete_node(root);
 			goto out;
 		}
 	}
@@ -152,14 +130,14 @@ static int do_oftree(int argc, char *argv[])
 
 	ret = 0;
 out:
-	free(fdt_free);
 
 	return ret;
 }
 
 BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-l",  "Load DTB to internal device tree")
+BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree\n")
+BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>\n")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
 BAREBOX_CMD_HELP_OPT ("-f",  "free stored device tree")
 BAREBOX_CMD_HELP_END
@@ -167,7 +145,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	BAREBOX_CMD_DESC("handle device trees")
-	BAREBOX_CMD_OPTS("[-lpf] [DTB]")
+	BAREBOX_CMD_OPTS("[-lpfs]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
