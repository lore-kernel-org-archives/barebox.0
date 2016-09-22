Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmz6U-00011p-Rb
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:11:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 10:11:10 +0200
Message-Id: <1474531872-15000-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
References: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] global: Make 'global' command behaviour consistent to 'nv'
To: Barebox List <barebox@lists.infradead.org>

The 'nv' command can add/remove multiple variables. Implement that
for the 'global' command aswell. Also with the 'nv' command the -r
option is for removal of variables, not for "set match". Looking at
the users of "global -r" the only user uses the command for removal
of variables and not for "Setting multiple variables to the same value"
as stated in the command help text. Let "global -r" remove variables
aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/env/boot/android |  2 +-
 commands/global.c                               | 35 ++++++++++++-------------
 2 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/android b/arch/arm/boards/at91sam9m10ihd/env/boot/android
index 8492e41..ce5aa32 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/android
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/android
@@ -3,4 +3,4 @@
 global.bootm.image="/dev/nand0.kernel.bb"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock1 rootfstype=jffs2 rw init=/init rootdelay=1"
 # clean the mtdparts otherwise android does not boot
-global -r linux.mtdparts.
+global -r "linux.mtdparts.*"
diff --git a/commands/global.c b/commands/global.c
index 581913d..d21b829 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -25,14 +25,14 @@
 
 static int do_global(int argc, char *argv[])
 {
-	int opt;
-	int do_set_match = 0;
+	int opt, i;
+	int do_remove = 0;
 	char *value;
 
 	while ((opt = getopt(argc, argv, "r")) > 0) {
 		switch (opt) {
 		case 'r':
-			do_set_match = 1;
+			do_remove = 1;
 			break;
 		}
 	}
@@ -45,37 +45,36 @@ static int do_global(int argc, char *argv[])
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
-
-	if (do_set_match) {
-		if (!value)
-			value = "";
+	for (i = 0; i < argc; i++) {
+		value = strchr(argv[i], '=');
+		if (value) {
+			*value = 0;
+			value++;
+		}
 
-		globalvar_set_match(argv[0], value);
-		return 0;
+		if (do_remove)
+			globalvar_remove(argv[i]);
+		else
+			globalvar_add_simple(argv[i], value);
 	}
 
-	return globalvar_add_simple(argv[0], value);
+	return 0;
 }
 
 BAREBOX_CMD_HELP_START(global)
 BAREBOX_CMD_HELP_TEXT("Add a new global variable named VAR, optionally set to VALUE.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-r", "set value of all global variables beginning with 'match'")
+BAREBOX_CMD_HELP_OPT("-r", "Remove globalvars")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(global)
 	.cmd		= do_global,
 	BAREBOX_CMD_DESC("create or set global variables")
-	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE]")
+	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_global_help)
 BAREBOX_CMD_END
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
