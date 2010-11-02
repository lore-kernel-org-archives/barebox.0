Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xl-No
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:51 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:36 +0100
Message-Id: <1288703442-5032-8-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 07/13] doc: unify documentation for 'saveenv'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/saveenv.c |   31 ++++++++++++++-----------------
 1 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 42ea58f..2f969fe 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -94,12 +94,10 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_saveenv_help[] =
-"Usage: saveenv [<envfs>] [<directory>]\n"
-"Save the files in <directory> to the persistent storage device <envfs>.\n"
-"<envfs> is normally a block in flash, but could be any other file.\n"
-"If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n"
-"Note that envfs can only handle files. Directories are skipped silently.\n";
+BAREBOX_CMD_HELP_START(saveenv)
+BAREBOX_CMD_HELP_USAGE("saveenv [envfs] [directory]\n")
+BAREBOX_CMD_HELP_SHORT("Save the files in <directory> to the persistent storage device <envfs>.\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(saveenv)
 	.cmd		= do_saveenv,
@@ -108,15 +106,14 @@ BAREBOX_CMD_START(saveenv)
 BAREBOX_CMD_END
 
 /**
- * @page saveenv_command saveenv
- *
- * Usage: saveenv [\<envfs>] [\<directory>]
- *
- * Save the files in \<directory> to the persistent storage device \<envfs>.
- * \<envfs> is normally a block in flash, but could be any other file.
- *
- * If ommitted \<directory> defaults to \c /env and \<envfs> defaults to
- * \c /dev/env0.
- *
- * @note envfs can only handle files. Directories are skipped silently.
+ * @page saveenv_command
+
+<p>\<envfs> is usually a block in flash but can be any other file. If
+ommitted, \<directory> defaults to /env and \<envfs> defaults to
+/dev/env0. Note that envfs can only handle files, directories are being
+skipped silently.</p>
+
+\todo What does 'block in flash' mean? Add example.
+
  */
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
