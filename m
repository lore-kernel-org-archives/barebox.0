Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xh-NZ
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:50 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:34 +0100
Message-Id: <1288703442-5032-6-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 05/13] doc: unify documentation for 'printenv'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/printenv.c |   30 +++++++++++++-----------------
 1 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/commands/printenv.c b/commands/printenv.c
index e6fc0e4..4078bbc 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -65,26 +65,22 @@ static int do_printenv(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_printenv_help[] =
-"\n    - print values of all environment variables\n"
-"printenv name ...\n"
-"    - print value of environment variable 'name'\n";
+BAREBOX_CMD_HELP_START(printenv)
+BAREBOX_CMD_HELP_USAGE("printenv [variable]\n")
+BAREBOX_CMD_HELP_SHORT("Print value of one or all environment variables.\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page printenv_command
+
+<p>If an argument is given, printenv prints the content of an environment
+variable to the terminal. If no argument is specified, all variables are
+printed.</p>
+
+ */
 
 BAREBOX_CMD_START(printenv)
 	.cmd		= do_printenv,
-	.usage		= "print environment variables",
+	.usage		= "Print value of one or all environment variables.",
 	BAREBOX_CMD_HELP(cmd_printenv_help)
 BAREBOX_CMD_END
-
-/**
- * @page printenv_command printenv
- *
- * Usage: printenv [\<name>]
- *
- * Print environment variables.
- * If \<name> was given, it prints out its content if the environment variable
- * \<name> exists.
- *
- * Without the \<name> argument all current environment variables are printed.
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
