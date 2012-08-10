Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzmvE-000759-5T
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 10:58:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 12:58:16 +0200
Message-Id: <1344596297-10781-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344596297-10781-1-git-send-email-s.hauer@pengutronix.de>
References: <1344596297-10781-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] hush: Make exit a shell builtin
To: barebox@lists.infradead.org

'exit' used to do its job by returning value < 0. This is a sign
for hush that 'exit' is executed. This has problems:

- Often commands accidently return a negative value. This causes
  the shell to exit.
- execute_binfmt returns a negative value when it does not find
  a binary to execute. This again causes the shell to exit.
  Returning a negative error value seems to be the right thing
  to do, but catching this in the shell would mean that the exit
  command does not work anymore.
- if called without arguments exit is supposed to return the code
  of the last command. As a command exit has no access to this code.

This patch changes exit to be a builtin and also fixes the last return
code problem. While at it, update the help text.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/command.c |   20 --------------------
 common/hush.c    |   36 +++++++++++++++++++++++++++++++-----
 2 files changed, 31 insertions(+), 25 deletions(-)

diff --git a/common/command.c b/common/command.c
index c18998c..2bfc511 100644
--- a/common/command.c
+++ b/common/command.c
@@ -38,26 +38,6 @@
 LIST_HEAD(command_list);
 EXPORT_SYMBOL(command_list);
 
-#ifdef CONFIG_SHELL_HUSH
-
-static int do_exit(int argc, char *argv[])
-{
-	int r;
-
-	r = 0;
-	if (argc > 1)
-		r = simple_strtoul(argv[1], NULL, 0);
-
-	return -r - 2;
-}
-
-BAREBOX_CMD_START(exit)
-	.cmd		= do_exit,
-	.usage		= "exit script",
-BAREBOX_CMD_END
-
-#endif
-
 void barebox_cmd_usage(struct command *cmdtp)
 {
 #ifdef	CONFIG_LONGHELP
diff --git a/common/hush.c b/common/hush.c
index 8200931..288114c 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -557,6 +557,18 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child,
 }
 #endif
 
+static int builtin_exit(struct p_context *ctx, struct child_prog *child,
+		int argc, char *argv[])
+{
+	int r;
+
+	r = last_return_code;
+	if (argc > 1)
+		r = simple_strtoul(argv[1], NULL, 0);
+
+	return -r - 2;
+}
+
 static void remove_quotes_in_str(char *src)
 {
 	char *trg = src;
@@ -775,6 +787,8 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	if (!strcmp(globbuf.gl_pathv[0], "getopt"))
 		ret = builtin_getopt(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
+	else if (!strcmp(globbuf.gl_pathv[0], "exit"))
+		ret = builtin_exit(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
 	else
 		ret = execute_binfmt(globbuf.gl_pathc, globbuf.gl_pathv);
 
@@ -1885,16 +1899,28 @@ BAREBOX_CMD_START(source)
 	BAREBOX_CMD_HELP(cmd_source_help)
 BAREBOX_CMD_END
 
-#ifdef CONFIG_HUSH_GETOPT
-static int do_getopt(int argc, char *argv[])
+static int do_dummy_command(int argc, char *argv[])
 {
 	/*
-	 * This function is never reached. The 'getopt' command is
-	 * only here to provide a help text for the getopt builtin.
+	 * This function is never reached. These commands are only here to
+	 * provide help texts for the builtins.
 	 */
 	return 0;
 }
 
+static const __maybe_unused char cmd_exit_help[] =
+"Usage: exit [n]\n"
+"\n"
+"exit script with a status of n. If n is omitted, the exit status is that\n"
+"of the last command executed\n";
+
+BAREBOX_CMD_START(exit)
+	.cmd		= do_dummy_command,
+	.usage		= "exit script",
+	BAREBOX_CMD_HELP(cmd_exit_help)
+BAREBOX_CMD_END
+
+#ifdef CONFIG_HUSH_GETOPT
 static const __maybe_unused char cmd_getopt_help[] =
 "Usage: getopt <optstring> <var>\n"
 "\n"
@@ -1905,7 +1931,7 @@ static const __maybe_unused char cmd_getopt_help[] =
 "can be accessed starting from $1\n";
 
 BAREBOX_CMD_START(getopt)
-	.cmd		= do_getopt,
+	.cmd		= do_dummy_command,
 	.usage		= "getopt <optstring> <var>",
 	BAREBOX_CMD_HELP(cmd_getopt_help)
 BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
