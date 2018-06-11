Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSTej-0000HT-PB
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 20:43:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jun 2018 22:42:44 +0200
Message-Id: <20180611204245.8351-3-s.hauer@pengutronix.de>
In-Reply-To: <20180611204245.8351-1-s.hauer@pengutronix.de>
References: <20180611204245.8351-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] commands: oftree: kill oftree -f
To: Barebox List <barebox@lists.infradead.org>

Being able to free the live device tree seemed like a good idea in the
early days of device tree support when the first boards were brought up.
It turned out to be illusory that noone stores pointers to the live tree
which become invalid when oftree -f is executed. Enough people stumbled
upon crashed boards with this option, so remove it finally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 8a47c0be58..26a47bb581 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -48,7 +48,6 @@ static int do_oftree(int argc, char *argv[])
 	int probe = 0;
 	char *load = NULL;
 	char *save = NULL;
-	int free_of = 0;
 	int ret;
 	struct device_node *root;
 
@@ -65,25 +64,12 @@ static int do_oftree(int argc, char *argv[])
 				return COMMAND_ERROR_USAGE;
 			}
 			break;
-		case 'f':
-			free_of = 1;
-			break;
 		case 's':
 			save = optarg;
 			break;
 		}
 	}
 
-	if (free_of) {
-		struct device_node *root = of_get_root_node();
-
-		if (root)
-			of_delete_node(root);
-
-		if (!load)
-			return 0;
-	}
-
 	if (!probe && !load && !save)
 		return COMMAND_ERROR_USAGE;
 
@@ -140,13 +126,12 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree\n")
 BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>\n")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
-BAREBOX_CMD_HELP_OPT ("-f",  "free stored device tree")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	BAREBOX_CMD_DESC("handle device trees")
-	BAREBOX_CMD_OPTS("[-lspf]")
+	BAREBOX_CMD_OPTS("[-lsp]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
