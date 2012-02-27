Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S1w6m-0001PO-6t
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 08:39:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 09:38:46 +0100
Message-Id: <1330331926-9856-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] getopt: save and restore context
To: barebox@lists.infradead.org

execute_command is the single point where commands are executed and thus a new
getopt context is needed. currently we call getopt_reset here to reset the
context. This breaks though when a command tries to run a command itself by
calling execute_command or run_command.  In this case we have to store the
context and restore it afterwards. The same is necessary in builtin_getopt.
Currently noone does this so this one shouldn't fix a bug, but merely allows
us to do such things later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/command.c |   12 ++++++++----
 common/hush.c    |   15 ++++++++++-----
 include/getopt.h |   14 ++++++++++++--
 lib/getopt.c     |   22 ++++++++++++++++++++--
 4 files changed, 50 insertions(+), 13 deletions(-)

diff --git a/common/command.c b/common/command.c
index ab02ed5..de2c3a9 100644
--- a/common/command.c
+++ b/common/command.c
@@ -91,8 +91,9 @@ int execute_command(int argc, char **argv)
 {
 	struct command *cmdtp;
 	int ret;
+	struct getopt_context gc;
 
-	getopt_reset();
+	getopt_context_store(&gc);
 
 	/* Look up command in command table */
 	if ((cmdtp = find_cmd(argv[0]))) {
@@ -100,17 +101,20 @@ int execute_command(int argc, char **argv)
 		ret = cmdtp->cmd(cmdtp, argc, argv);
 		if (ret == COMMAND_ERROR_USAGE) {
 			barebox_cmd_usage(cmdtp);
-			return COMMAND_ERROR;
+			ret = COMMAND_ERROR;
 		}
-		return ret;
 	} else {
 #ifdef CONFIG_CMD_HELP
 		printf ("Unknown command '%s' - try 'help'\n", argv[0]);
 #else
 		printf ("Unknown command '%s'\n", argv[0]);
 #endif
-		return -1;	/* give up after bad command */
+		ret = -1;	/* give up after bad command */
 	}
+
+	getopt_context_restore(&gc);
+
+	return ret;
 }
 
 int register_command(struct command *cmd)
diff --git a/common/hush.c b/common/hush.c
index b59e59d..97dc13c 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -502,9 +502,10 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 {
 	char *optstring, *var;
-	int opt;
+	int opt, ret = 0;
 	char opta[2];
 	struct option *o;
+	struct getopt_context gc;
 
 	if (child->argc != 3)
 		return -2 - 1;
@@ -512,7 +513,7 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 	optstring = child->argv[1];
 	var = child->argv[2];
 
-	getopt_reset();
+	getopt_context_store(&gc);
 
 	if (!ctx->options_parsed) {
 		while((opt = getopt(ctx->global_argc, ctx->global_argv, optstring)) > 0) {
@@ -525,8 +526,10 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 
 	ctx->options_parsed = 1;
 
-	if (list_empty(&ctx->options))
-		return -1;
+	if (list_empty(&ctx->options)) {
+		ret = -1;
+		goto out;
+	}
 
 	o = list_first_entry(&ctx->options, struct option, list);
 
@@ -538,8 +541,10 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 	free(o->optarg);
 	list_del(&o->list);
 	free(o);
+out:
+	getopt_context_restore(&gc);
 
-	return 0;
+	return ret;
 }
 
 BAREBOX_MAGICVAR(OPTARG, "optarg for hush builtin getopt");
diff --git a/include/getopt.h b/include/getopt.h
index 4f43ac4..ed55e22 100644
--- a/include/getopt.h
+++ b/include/getopt.h
@@ -40,10 +40,20 @@ extern char *optarg;
 
 int getopt(int argc, char *argv[], char *optstring);
 
+struct getopt_context {
+	int opterr;
+	int optind;
+	int optopt;
+	int nonopts;
+	int optindex;
+	char *optarg;
+};
+
 /*
  * We do not start a new process for each getopt() run, so we
- * need this function to reset the static variables.
+ * need this function to save and restore the context.
  */
-void getopt_reset(void);
+void getopt_context_store(struct getopt_context *ctx);
+void getopt_context_restore(struct getopt_context *ctx);
 
 #endif /* __GETOPT_H */
diff --git a/lib/getopt.c b/lib/getopt.c
index 5c35ee1..043ba05 100644
--- a/lib/getopt.c
+++ b/lib/getopt.c
@@ -34,12 +34,30 @@ EXPORT_SYMBOL(optarg);
 static int optindex = 1; /* option index in the current argv[] element */
 static int nonopts = 0;  /* number of nonopts found */
 
-void getopt_reset(void)
+void getopt_context_store(struct getopt_context *gc)
 {
+	gc->optind = optind;
+	gc->opterr = opterr;
+	gc->optopt = optopt;
+	gc->optarg = optarg;
+	gc->nonopts = nonopts;
+	gc->optindex = optindex;
+
 	optind = opterr = optindex = 1;
 	nonopts = 0;
 }
-EXPORT_SYMBOL(getopt_reset);
+EXPORT_SYMBOL(getopt_context_store);
+
+void getopt_context_restore(struct getopt_context *gc)
+{
+	optind = gc->optind;
+	opterr = gc->opterr;
+	optopt = gc->optopt;
+	optarg = gc->optarg;
+	nonopts = gc->nonopts;
+	optindex = gc->optindex;
+}
+EXPORT_SYMBOL(getopt_context_restore);
 
 int getopt(int argc, char *argv[], char *optstring)
 {
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
