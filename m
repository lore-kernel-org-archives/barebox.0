Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xd-OJ
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:54 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:31 +0100
Message-Id: <1288703442-5032-3-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 02/13] doc: unify documentation for 'loadenv'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/loadenv.c |   34 ++++++++++++++--------------------
 1 files changed, 14 insertions(+), 20 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 14fbf1e..c33c34f 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -43,28 +43,22 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 	return envfs_load(filename, dirname);
 }
 
-static const __maybe_unused char cmd_loadenv_help[] =
-"Usage: loadenv [ENVFS] [DIRECTORY]\n"
-"Load the persistent storage contained in <envfs> to the directory\n"
-"<directory>.\n"
-"If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n"
-"Note that envfs can only handle files. Directories are skipped silently.\n";
+BAREBOX_CMD_HELP_START(loadenv)
+BAREBOX_CMD_HELP_USAGE("loadenv [ENVFS] [DIRECTORY]\n")
+BAREBOX_CMD_HELP_SHORT("Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page loadenv_command
+
+ENVFS can only handle files, directories are skipped silently.
+
+\todo This needs proper documentation. What is ENVFS, why is it FS etc. Explain the concepts.
+
+ */
 
 BAREBOX_CMD_START(loadenv)
 	.cmd		= do_loadenv,
-	.usage		= "load environment from persistent storage",
+	.usage		= "Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).",
 	BAREBOX_CMD_HELP(cmd_loadenv_help)
 BAREBOX_CMD_END
-
-/**
- * @page loadenv_command loadenv
- *
- * Usage: loadenv [\<directory>] [\<envfs>]
- *
- * Load the persistent storage contained in \<envfs> to the directory \<directory>.
- *
- * If ommitted \<directory> defaults to \c /env and \<envfs> defaults to
- * \c /dev/env0.
- *
- * @note envfs can only handle files. Directories are skipped silently.
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
