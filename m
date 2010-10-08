Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4D2r-0003jm-Ax
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 13:31:37 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1P4D2p-0003kP-GL
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 15:31:31 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1P4D2p-0006nA-FC
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 15:31:31 +0200
Date: Fri, 8 Oct 2010 15:31:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101008133131.GS28242@pengutronix.de>
References: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
	<1286540674-17174-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1286540674-17174-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3 v2] hush: implement getopt builtin
To: barebox@lists.infradead.org


Positional parameters are not nice, so implement a getopt
function. This has to be done as a builtin because otherwise
we have no access to the parents argc/argv.

getopt works as expected, here is a little example:

while getopt "hs:" OPT
do
        if [ $OPT = h ]; then
                echo "usage"
                exit 1
        else
                echo "scr: opt: $OPT optarg: $OPTARG"
	fi
done

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

v2: make getopt optional, add help text.

 common/Kconfig |    7 ++++
 common/hush.c  |  110 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 115 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index ad70cde..123d070 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -248,6 +248,13 @@ config HUSH_FANCY_PROMPT
 	  Allow to set PS1 from the command line. PS1 can have several escaped commands
 	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
 
+config HUSH_GETOPT
+	bool
+	depends on SHELL_HUSH
+	prompt "enable builtin getopt"
+	help
+	  This enables a getopt function builtin to hush.
+
 config CMDLINE_EDITING
 	bool
 	prompt "Enable command line editing"
diff --git a/common/hush.c b/common/hush.c
index 1b5cd99..3359f37 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -120,6 +120,8 @@
 #include <fs.h>
 #include <libbb.h>
 #include <glob.h>
+#include <getopt.h>
+#include <linux/list.h>
 
 /*cmd_boot.c*/
 extern int do_bootd(struct command *cmdtp, int flag, int argc, char *argv[]);      /* do_bootd */
@@ -174,6 +176,12 @@ typedef enum {
 #define FLAG_PARSE_SEMICOLON (1 << 1)	  /* symbol ';' is special for parser */
 #define FLAG_REPARSING       (1 << 2)	  /* >=2nd pass */
 
+struct option {
+	struct list_head	list;
+	char	opt;
+	char	*optarg;
+};
+
 /* This holds pointers to the various results of parsing */
 struct p_context {
 	struct child_prog *child;
@@ -187,6 +195,9 @@ struct p_context {
 
 	char **global_argv;
 	unsigned int global_argc;
+
+	int options_parsed;
+	struct list_head options;
 };
 
 
@@ -274,6 +285,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi);
 static int is_assignment(const char *s);
 /*   data structure manipulation: */
 static void initialize_context(struct p_context *ctx);
+static void release_context(struct p_context *ctx);
 static int done_word(o_string *dest, struct p_context *ctx);
 static int done_command(struct p_context *ctx);
 static int done_pipe(struct p_context *ctx, pipe_style type);
@@ -498,6 +510,50 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 	i->p = s;
 }
 
+#ifdef CONFIG_HUSH_GETOPT
+static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
+{
+	char *optstring, *var;
+	int opt;
+	char opta[2];
+	struct option *o;
+
+	if (child->argc != 3)
+		return -2 - 1;
+
+	optstring = child->argv[1];
+	var = child->argv[2];
+
+	getopt_reset();
+
+	if (!ctx->options_parsed) {
+		while((opt = getopt(ctx->global_argc, ctx->global_argv, optstring)) > 0) {
+			o = xzalloc(sizeof(*o));
+			o->opt = opt;
+			o->optarg = xstrdup(optarg);
+			list_add_tail(&o->list, &ctx->options);
+		}
+	}
+
+	ctx->options_parsed = 1;
+
+	if (list_empty(&ctx->options))
+		return -1;
+
+	o = list_first_entry(&ctx->options, struct option, list);
+
+	opta[0] = o->opt;
+	opta[1] = 0;
+	setenv(var, opta);
+	setenv("OPTARG", o->optarg);
+
+	free(o->optarg);
+	list_del(&o->list);
+	free(o);
+
+	return 0;
+}
+#endif
 
 /* run_pipe_real() starts all the jobs, but doesn't wait for anything
  * to finish.  See checkjobs().
@@ -583,10 +639,14 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 			struct p_context ctx;
 			str = make_string((child->argv + i));
 			parse_string_outer(&ctx, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
+			release_context(&ctx);
 			free(str);
 			return last_return_code;
 		}
-
+#ifdef CONFIG_HUSH_GETOPT
+		if (!strcmp(child->argv[i], "getopt"))
+			return builtin_getopt(ctx, child);
+#endif
 		if (strchr(child->argv[i], '/')) {
 			return execute_script(child->argv[i], child->argc-i, &child->argv[i]);
 		}
@@ -929,9 +989,23 @@ static void initialize_context(struct p_context *ctx)
 	ctx->w=RES_NONE;
 	ctx->stack=NULL;
 	ctx->old_flag=0;
+	ctx->options_parsed = 0;
+	INIT_LIST_HEAD(&ctx->options);
 	done_command(ctx);   /* creates the memory for working child */
 }
 
+static void release_context(struct p_context *ctx)
+{
+#ifdef CONFIG_HUSH_GETOPT
+	struct option *opt, *tmp;
+
+	list_for_each_entry_safe(opt, tmp, &ctx->options, list) {
+		free(opt->optarg);
+		free(opt);
+	}
+#endif
+}
+
 /* normal return is 0
  * if a reserved word is found, and processed, return 1
  * should handle if, then, elif, else, fi, for, while, until, do, done.
@@ -1534,7 +1608,12 @@ static char * make_string(char ** inp)
 int run_command (const char *cmd, int flag)
 {
 	struct p_context ctx;
-	return parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
+	int ret;
+
+	ret = parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
+	release_context(&ctx);
+
+	return ret;
 }
 
 static int execute_script(const char *path, int argc, char *argv[])
@@ -1565,6 +1644,7 @@ static int source_script(const char *path, int argc, char *argv[])
 
 	ret = parse_string_outer(&ctx, script, FLAG_PARSE_SEMICOLON);
 
+	release_context(&ctx);
 	free(script);
 
 	return ret;
@@ -1578,6 +1658,7 @@ int run_shell(void)
 
 	setup_file_in_str(&input);
 	rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
+	release_context(&ctx);
 	return rcode;
 }
 
@@ -1628,6 +1709,31 @@ BAREBOX_CMD_START(source)
 	BAREBOX_CMD_HELP(cmd_source_help)
 BAREBOX_CMD_END
 
+#ifdef CONFIG_HUSH_GETOPT
+static int do_getopt(struct command *cmdtp, int argc, char *argv[])
+{
+	/*
+	 * This function is never reached. The 'getopt' command is
+	 * only here to provide a help text for the getopt builtin.
+	 */
+	return 0;
+}
+
+static const __maybe_unused char cmd_getopt_help[] =
+"Usage: getopt <optstring> <var>\n"
+"\n"
+"hush option parser. <optstring> is a string with valid options. Add\n"
+"a colon to an options if this option has a required argument or two\n"
+"colons for an optional argument. The current option is saved in <var>,\n"
+"arguments are saved in OPTARG.\n";
+
+BAREBOX_CMD_START(getopt)
+	.cmd		= do_getopt,
+	.usage		= "getopt <optstring> <var>",
+	BAREBOX_CMD_HELP(cmd_getopt_help)
+BAREBOX_CMD_END
+#endif
+
 /**
  * @file
  * @brief A prototype Bourne shell grammar parser
-- 
1.7.2.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
