Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oE-Sf
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:07 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:44 +0100
Message-Id: <1288600434-6112-12-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 11/21] doc: unify documentation for 'edit'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/edit.c |   38 ++++++++++++++------------------------
 1 files changed, 14 insertions(+), 24 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index c2ab877..ca40d59 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -550,35 +550,25 @@ out:
 
 static const char *edit_aliases[] = { "sedit", NULL};
 
-static const __maybe_unused char cmd_edit_help[] =
-"Usage: (s)edit <file>\n"
-"This is a very small editor. Its only features are moving the cursor with\n"
-"the usual keys and typing characters.\n"
-"<ctrl-c> quits the editor without saving,\n"
-"<ctrl-d> quits the editor with saving the current file.\n"
-"\n"
-"If called as sedit the editor uses ansi codes to scroll the screen.\n";
+BAREBOX_CMD_HELP_START(edit)
+BAREBOX_CMD_HELP_USAGE("(s)edit <file>\n")
+BAREBOX_CMD_HELP_SHORT("A small editor. <ctrl-c> is exit, <ctrl-d> exit-with-save.\n")
+BAREBOX_CMD_HELP_END
 
-static const __maybe_unused char cmd_edit_usage[] = "edit a file";
+/**
+ * @page edit_command
+
+<p> Barebox contains a small text editor which can be used to edit
+config files in /env. You can move the cursor around with the arrow keys
+and type characters. </p>
+
+If called as sedit, the editor uses ansi codes to scroll the screen.
+ */
 
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
