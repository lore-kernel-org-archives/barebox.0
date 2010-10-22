Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001xC-33
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:50 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:20 +0200
Message-Id: <1287765924-1856-29-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 28/32] doc: unify documentation for 'edit'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/edit.c |   36 +++++++++++-------------------------
 1 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index c2ab877..d35097e 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -550,35 +550,21 @@ out:
 
 static const char *edit_aliases[] = { "sedit", NULL};
 
-static const __maybe_unused char cmd_edit_help[] =
-"Usage: (s)edit <file>\n"
-"This is a very small editor. Its only features are moving the cursor with\n"
-"the usual keys and typing characters.\n"
-"<ctrl-c> quits the editor without saving,\n"
-"<ctrl-d> quits the editor with saving the current file.\n"
-"\n"
-"If called as sedit the editor uses ansi codes to scroll the screen.\n";
-
-static const __maybe_unused char cmd_edit_usage[] = "edit a file";
+BAREBOX_CMD_HELP_START(edit)
+BAREBOX_CMD_HELP_USAGE("(s)edit <file>\n")
+BAREBOX_CMD_HELP_SHORT("A small editor. <ctrl-c> is exit, <ctrl-d> exit-with-save.\n")
+BAREBOX_CMD_HELP_TEXT ("This is a very small text editor. You can move the cursor around\n")
+BAREBOX_CMD_HELP_TEXT ("with the usual keys and type characters.\n")
+BAREBOX_CMD_HELP_TEXT ("<ctrl-c> quits the editor without saving,\n")
+BAREBOX_CMD_HELP_TEXT ("<ctrl-d> quits the editor with saving the current file.\n")
+BAREBOX_CMD_HELP_TEXT (" \n")
+BAREBOX_CMD_HELP_TEXT ("If called as sedit, the editor uses ansi codes to scroll the screen.\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(edit)
 	.cmd		= do_edit,
 	.aliases	= edit_aliases,
-	.usage		= cmd_edit_usage,
+	.usage		= "Usage: (s)edit <file>",
 	BAREBOX_CMD_HELP(cmd_edit_help)
 BAREBOX_CMD_END
 
-
-/**
- * @page edit_command edit (editor)
- *
- * Usage is: [s]edit \<file\>
- *
- * This is a very small editor. It's only features are moving the cursor with
- * the usual keys and typing characters.
- *
- * \b \<ctrl-c\> quits the editor without saving,\n
- * \b \<ctrl-d\> quits the editor with saving the current file.
- *
- * If called as \c sedit the editor uses ansi codes to scroll the screen.
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
