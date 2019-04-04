Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k5-0007e9-Ul
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:27 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:17 +0200
Message-Id: <20190404145320.11465-5-m.tretter@pengutronix.de>
In-Reply-To: <20190404145320.11465-1-m.tretter@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 4/7] commands: add oftree -o option for overlays
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Extend the oftree command to allow to register devicetree overlays.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 commands/oftree.c | 37 ++++++++++++++++++++++++++++++++++---
 include/of.h      |  2 +-
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 299c2edfcd..e61393ce6a 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -48,10 +48,11 @@ static int do_oftree(int argc, char *argv[])
 	int probe = 0;
 	char *load = NULL;
 	char *save = NULL;
+	char *overlay = NULL;
 	int ret;
 	struct device_node *root;
 
-	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
+	while ((opt = getopt(argc, argv, "pfl:o:s:")) > 0) {
 		switch (opt) {
 		case 'l':
 			load = optarg;
@@ -64,13 +65,21 @@ static int do_oftree(int argc, char *argv[])
 				return COMMAND_ERROR_USAGE;
 			}
 			break;
+		case 'o':
+			if (IS_ENABLED(CONFIG_OF_OVERLAY)) {
+				overlay = optarg;
+			} else {
+				printf("oftree overlay support disabled\n");
+				return COMMAND_ERROR_USAGE;
+			}
+			break;
 		case 's':
 			save = optarg;
 			break;
 		}
 	}
 
-	if (!probe && !load && !save)
+	if (!probe && !load && !save && !overlay)
 		return COMMAND_ERROR_USAGE;
 
 	if (save) {
@@ -109,6 +118,27 @@ static int do_oftree(int argc, char *argv[])
 		}
 	}
 
+	if (overlay) {
+		fdt = read_file(overlay, &size);
+		if (!fdt) {
+			printf("unable to read %s\n", overlay);
+			return 1;
+		}
+
+		root = of_unflatten_dtb(fdt);
+		if (IS_ERR(root))
+			return PTR_ERR(root);
+
+		free(fdt);
+
+		ret = of_register_overlay(root);
+		if (ret) {
+			printf("cannot apply oftree overlay: %s\n", strerror(-ret));
+			of_delete_node(root);
+			goto out;
+		}
+	}
+
 	if (probe) {
 		ret = of_probe();
 		if (ret)
@@ -125,13 +155,14 @@ BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree")
 BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>")
+BAREBOX_CMD_HELP_OPT ("-o <DTBO>",  "register devicetree overlay <DTBO>")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	BAREBOX_CMD_DESC("handle device trees")
-	BAREBOX_CMD_OPTS("[-lsp]")
+	BAREBOX_CMD_OPTS("[-lspo]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
diff --git a/include/of.h b/include/of.h
index 13ba46a669..ec7872e613 100644
--- a/include/of.h
+++ b/include/of.h
@@ -884,7 +884,7 @@ struct of_overlay_notify_data {
 
 #ifdef CONFIG_OF_OVERLAY
 struct device_node *of_resolve_phandles(struct device_node *root,
-				        struct device_node *overlay);
+					struct device_node *overlay);
 int of_register_overlay(struct device_node *overlay);
 int of_overlay_notifier_register(struct notifier_block *nb);
 int of_overlay_notifier_unregister(struct notifier_block *nb);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
