Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FN-Pw
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:42 +0200
Message-Id: <1400533184-668-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] oftree: remove dump support
To: barebox@lists.infradead.org

This can now be done with the of_dump command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |  2 --
 commands/oftree.c | 42 +++---------------------------------------
 2 files changed, 3 insertions(+), 41 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 381f3fd..6043cb6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1944,8 +1944,6 @@ config CMD_OFTREE
 		  -l		Load DTB to internal device tree
 		  -p		probe devices from stored device tree
 		  -f		free stored device tree
-		  -d		dump device tree from DTB or the parsed tree if no DTB is given
-		  -n NODE	specify root device NODE to dump for -d
 
 config CMD_TIME
 	bool "time"
diff --git a/commands/oftree.c b/commands/oftree.c
index 16648d6..db31d59 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -46,8 +46,6 @@ static int do_oftree(int argc, char *argv[])
 	int size;
 	int opt;
 	char *file = NULL;
-	const char *node = "/";
-	int dump = 0;
 	int probe = 0;
 	int load = 0;
 	int save = 0;
@@ -55,14 +53,11 @@ static int do_oftree(int argc, char *argv[])
 	int ret;
 	struct device_node *n, *root;
 
-	while ((opt = getopt(argc, argv, "dpfn:ls")) > 0) {
+	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
 		switch (opt) {
 		case 'l':
 			load = 1;
 			break;
-		case 'd':
-			dump = 1;
-			break;
 		case 'p':
 			if (IS_ENABLED(CONFIG_OFDEVICE)) {
 				probe = 1;
@@ -74,9 +69,6 @@ static int do_oftree(int argc, char *argv[])
 		case 'f':
 			free_of = 1;
 			break;
-		case 'n':
-			node = optarg;
-			break;
 		case 's':
 			save = 1;
 			break;
@@ -96,7 +88,7 @@ static int do_oftree(int argc, char *argv[])
 	if (optind < argc)
 		file = argv[optind];
 
-	if (!dump && !probe && !load && !save)
+	if (!probe && !load && !save)
 		return COMMAND_ERROR_USAGE;
 
 	if (save) {
@@ -155,31 +147,6 @@ static int do_oftree(int argc, char *argv[])
 		}
 	}
 
-	if (dump) {
-		if (fdt) {
-			root = of_unflatten_dtb(NULL, fdt);
-			if (IS_ERR(root)) {
-				printf("parse oftree: %s\n", strerror(-PTR_ERR(root)));
-				ret = 1;
-				goto out;
-			}
-			of_print_nodes(root, 0);
-			of_delete_node(root);
-		} else {
-			struct device_node *n = of_find_node_by_path_or_alias(NULL, node);
-			if (!n) {
-				ret = -ENOENT;
-				goto out;
-			}
-
-			of_print_nodes(n, 0);
-		}
-
-		ret = 0;
-
-		goto out;
-	}
-
 	if (probe) {
 		ret = of_probe();
 		if (ret)
@@ -198,15 +165,12 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l",  "Load DTB to internal device tree")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
 BAREBOX_CMD_HELP_OPT ("-f",  "free stored device tree")
-BAREBOX_CMD_HELP_OPT ("-d",  "dump device tree from DTB or the parsed tree if no DTB is given")
-BAREBOX_CMD_HELP_OPT ("-n NODE",  "specify root device NODE to dump for -d")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	BAREBOX_CMD_DESC("handle device trees")
-	BAREBOX_CMD_OPTS("[-lpfdn] [DTB]")
+	BAREBOX_CMD_OPTS("[-lpf] [DTB]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
-	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 BAREBOX_CMD_END
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
