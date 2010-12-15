Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpu4-0004QL-Ju
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:17 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:40 +0100
Message-Id: <1292413908-464-27-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
References: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 26/34] doc: add documentation for 'sh' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 common/hush.c              |   15 ++++++++++-----
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 7f4e489..438d33e 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -92,7 +92,7 @@ available in @a Barebox:
 @li @subpage rmdir_command
 @li @subpage saveenv_command
 @li @subpage setenv_command
-@li @subpage sh
+@li @subpage sh_command
 @li @subpage sleep_command
 @li @subpage source_command
 @li @subpage test_command
diff --git a/common/hush.c b/common/hush.c
index 4947173..e269836 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1670,14 +1670,19 @@ static int do_sh(struct command *cmdtp, int argc, char *argv[])
 	return execute_script(argv[1], argc - 1, argv + 1);
 }
 
-static const __maybe_unused char cmd_sh_help[] =
-"Usage: sh filename [arguments]\n"
-"\n"
-"Execute a shell script\n";
+BAREBOX_CMD_HELP_START(sh)
+BAREBOX_CMD_HELP_USAGE("sh FILE [ARGS]\n")
+BAREBOX_CMD_HELP_SHORT("Execute a shell script.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page sh_command
+
+ */
 
 BAREBOX_CMD_START(sh)
 	.cmd		= do_sh,
-	.usage		= "run shell script",
+	.usage		= "execute a shell script",
 	BAREBOX_CMD_HELP(cmd_sh_help)
 BAREBOX_CMD_END
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
