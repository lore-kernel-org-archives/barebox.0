Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Px-2T
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:58 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:39 +0100
Message-Id: <1292413908-464-26-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 25/34] doc: add documentation for 'source' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 common/hush.c              |   22 ++++++++++++----------
 2 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 430cc52..7f4e489 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -94,7 +94,7 @@ available in @a Barebox:
 @li @subpage setenv_command
 @li @subpage sh
 @li @subpage sleep_command
-@li @subpage source
+@li @subpage source_command
 @li @subpage test_command
 @li @subpage timeout_command
 @li @subpage true_command
diff --git a/common/hush.c b/common/hush.c
index 77610bb..4947173 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1691,21 +1691,23 @@ static int do_source(struct command *cmdtp, int argc, char *argv[])
 
 static const char *source_aliases[] = { ".", NULL};
 
-static const __maybe_unused char cmd_source_help[] =
-"Usage: .  filename [arguments]\n"
-"or     source filename [arguments]\n"
-"\n"
-"Read  and  execute  commands  from filename in the current shell\n"
-"environment and return the exit status of the last command  exe-\n"
-"cuted from filename\n";
+BAREBOX_CMD_HELP_START(source)
+BAREBOX_CMD_HELP_USAGE(". FILE [ARGS], source FILE [ARGS]\n")
+BAREBOX_CMD_HELP_SHORT("Read and execute shell commands in the current shell.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page source_command
 
-static const __maybe_unused char cmd_source_usage[] =
-"execute shell script in current shell environment";
+The commands are executed in the current shell environment and return
+the exit status of the last command executed from FILE.
+
+ */
 
 BAREBOX_CMD_START(source)
 	.aliases	= source_aliases,
 	.cmd		= do_source,
-	.usage		= cmd_source_usage,
+	.usage		= "execute shell script in current shell environment"
 	BAREBOX_CMD_HELP(cmd_source_help)
 BAREBOX_CMD_END
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
