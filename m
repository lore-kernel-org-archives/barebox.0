Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XKQVs-0007MW-Oe
 for barebox@lists.infradead.org; Thu, 21 Aug 2014 11:26:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 11028BF08C
 for <barebox@lists.infradead.org>; Thu, 21 Aug 2014 13:26:20 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 21 Aug 2014 13:26:19 +0200
Message-Id: <1408620379-9338-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20140804192141.GO23235@pengutronix.de>
References: <20140804192141.GO23235@pengutronix.de>
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
Subject: [PATCH v3] commands: of_dump switch to get fixed devictree
To: barebox@lists.infradead.org

Add a switch to get the devicetree processed by the registered fixups.
This is also whats the kernel gets.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v3: create a copy of the internal devicetree before use of_fix_tree

 commands/of_dump.c |   31 +++++++++++++++++++++++++++++--
 1 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index cafde07..f82f0fd 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -34,16 +34,20 @@ static int do_of_dump(int argc, char *argv[])
 {
 	int opt;
 	int ret;
+	int fix = 0;
 	struct device_node *root = NULL, *node, *of_free = NULL;
 	char *dtbfile = NULL;
 	size_t size;
 	const char *nodename;
 
-	while ((opt = getopt(argc, argv, "f:")) > 0) {
+	while ((opt = getopt(argc, argv, "Ff:")) > 0) {
 		switch (opt) {
 		case 'f':
 			dtbfile = optarg;
 			break;
+		case 'F':
+			fix = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -75,6 +79,28 @@ static int do_of_dump(int argc, char *argv[])
 		of_free = root;
 	} else {
 		root = of_get_root_node();
+
+		if (fix) {
+			/* create a copy of internal devicetree */
+			void *fdt;
+			fdt = of_flatten_dtb(root);
+			root = of_unflatten_dtb(fdt);
+
+			free(fdt);
+
+			if (IS_ERR(root)) {
+				ret = PTR_ERR(root);
+				goto out;
+			}
+
+			of_free = root;
+		}
+	}
+
+	if (fix) {
+		ret = of_fix_tree(root);
+		if (ret)
+			goto out;
 	}
 
 	node = of_find_node_by_path_or_alias(root, nodename);
@@ -96,12 +122,13 @@ out:
 BAREBOX_CMD_HELP_START(of_dump)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_dump)
 	.cmd		= do_of_dump,
 	BAREBOX_CMD_DESC("dump devicetree nodes")
-	BAREBOX_CMD_OPTS("[-f] [NODE]")
+	BAREBOX_CMD_OPTS("[-fF] [NODE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_dump_help)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
