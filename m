Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXrq-0006tv-Db
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:39:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:16 +0200
Message-Id: <1469183959-9002-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
References: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] nv: Add option to explicitly save nv variables
To: Barebox List <barebox@lists.infradead.org>

We now have code to save the nv variables without saving the
rest of the environment. This gives us the possibility to explicitly
save the nv variables. This patch adds an option to the 'nv' command
for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nv.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index 8cebb85..e312368 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -26,20 +26,26 @@
 static int do_nv(int argc, char *argv[])
 {
 	int opt;
-	int do_remove = 0;
+	int do_remove = 0, do_save = 0;
 	int ret;
 	char *value;
 
-	while ((opt = getopt(argc, argv, "r")) > 0) {
+	while ((opt = getopt(argc, argv, "rs")) > 0) {
 		switch (opt) {
 		case 'r':
 			do_remove = 1;
 			break;
+		case 's':
+			do_save = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
+	if (do_save)
+		return nvvar_save();
+
 	if (argc == optind) {
 		nvvar_print();
 		return 0;
@@ -68,11 +74,12 @@ static int do_nv(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(nv)
 BAREBOX_CMD_HELP_TEXT("Add a new non volatile variable named VAR, optionally set to VALUE.")
 BAREBOX_CMD_HELP_TEXT("non volatile variables are persistent variables that overwrite the")
-BAREBOX_CMD_HELP_TEXT("global variables of the same name. Their value is saved with")
-BAREBOX_CMD_HELP_TEXT("'saveenv'.")
+BAREBOX_CMD_HELP_TEXT("global variables of the same name. Their value is saved implicitly with")
+BAREBOX_CMD_HELP_TEXT("'saveenv' or explicitly with 'nv -s'")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-r", "remove a non volatile variable")
+BAREBOX_CMD_HELP_OPT("-s", "Save NV variables")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nv)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
