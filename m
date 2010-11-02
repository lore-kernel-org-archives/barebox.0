Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xj-Nt
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:51 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:37 +0100
Message-Id: <1288703442-5032-9-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 08/13] doc: unify documentation for 'setenv'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/setenv.c |   30 +++++++++++++-----------------
 1 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/commands/setenv.c b/commands/setenv.c
index 257348f..e39db20 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -38,27 +38,23 @@ static int do_setenv(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_setenv_help[] =
-"name value ...\n"
-"    - set environment variable 'name' to 'value ...'\n"
-"setenv name\n"
-"    - delete environment variable 'name'\n";
+BAREBOX_CMD_HELP_START(setenv)
+BAREBOX_CMD_HELP_USAGE("setenv <name> [<value>]\n")
+BAREBOX_CMD_HELP_SHORT("Set environment variable to a value or delete if value is avoided.\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page setenv_command
+
+<p> This command is only available if the simple command line parser is
+in use. Within the hush shell, \c setenv is not required.</p>
+
+\todo Check if kconfig does this correctly.
+
+ */
 
 BAREBOX_CMD_START(setenv)
 	.cmd		= do_setenv,
 	.usage		= "set environment variables",
 	BAREBOX_CMD_HELP(cmd_setenv_help)
 BAREBOX_CMD_END
-
-/**
- * @page setenv_command setenv: set an environment variable
- *
- * Usage: setenv \<name> [\<value>]
- *
- * Set environment variable \<name> to \<value>. Without a given value, the
- * environment variable will be deleted.
- *
- * @note This command is only available if the simple command line parser is
- * in use. Within the hush shell \c setenv is not required.
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
