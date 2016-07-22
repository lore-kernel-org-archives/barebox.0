Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXrv-0006uK-BP
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:39:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:17 +0200
Message-Id: <1469183959-9002-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] nv: Allow to set/remove multiple variables with one
 command
To: Barebox List <barebox@lists.infradead.org>

It's convenient to set/remove multiple nv variables in one go. With
this patch we iterate over the remaining nonopts instead of expecting
exactly one nonopt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nv.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index e312368..a1fb095 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -27,7 +27,7 @@ static int do_nv(int argc, char *argv[])
 {
 	int opt;
 	int do_remove = 0, do_save = 0;
-	int ret;
+	int ret, i;
 	char *value;
 
 	while ((opt = getopt(argc, argv, "rs")) > 0) {
@@ -54,19 +54,21 @@ static int do_nv(int argc, char *argv[])
 	argc -= optind;
 	argv += optind;
 
-	if (argc != 1)
+	if (argc < 1)
 		return COMMAND_ERROR_USAGE;
 
-	value = strchr(argv[0], '=');
-	if (value) {
-		*value = 0;
-		value++;
-	}
+	for (i = 0; i < argc; i++) {
+		value = strchr(argv[0], '=');
+		if (value) {
+			*value = 0;
+			value++;
+		}
 
-	if (do_remove)
-		ret = nvvar_remove(argv[0]);
-	else
-		ret = nvvar_add(argv[0], value);
+		if (do_remove)
+			ret = nvvar_remove(argv[i]);
+		else
+			ret = nvvar_add(argv[i], value);
+	}
 
 	return ret;
 }
@@ -78,14 +80,14 @@ BAREBOX_CMD_HELP_TEXT("global variables of the same name. Their value is saved i
 BAREBOX_CMD_HELP_TEXT("'saveenv' or explicitly with 'nv -s'")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-r", "remove a non volatile variable")
+BAREBOX_CMD_HELP_OPT("-r", "remove non volatile variables")
 BAREBOX_CMD_HELP_OPT("-s", "Save NV variables")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nv)
 	.cmd		= do_nv,
 	BAREBOX_CMD_DESC("create or set non volatile variables")
-	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE]")
+	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_nv_help)
 BAREBOX_CMD_END
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
