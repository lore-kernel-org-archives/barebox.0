Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4C07-00032e-AG
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 12:24:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Oct 2010 14:24:34 +0200
Message-Id: <1286540674-17174-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
References: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] hush: implement getopt builtin
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
 common/hush.c |   79 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 78 insertions(+), 1 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 1b5cd99..d16783c 100644
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
@@ -498,6 +510,48 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 	i->p = s;
 }
 
+static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
+{
+	char *optstring, *var;
+	int opt;
+	char opta[2];
+	struct option *o;
+
+	if (child->argc != 3)
+		return -1;
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
 
 /* run_pipe_real() starts all the jobs, but doesn't wait for anything
  * to finish.  See checkjobs().
@@ -583,10 +637,14 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 			struct p_context ctx;
 			str = make_string((child->argv + i));
 			parse_string_outer(&ctx, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
+			release_context(&ctx);
 			free(str);
 			return last_return_code;
 		}
 
+		if (!strcmp(child->argv[i], "getopt"))
+			return builtin_getopt(ctx, child);
+
 		if (strchr(child->argv[i], '/')) {
 			return execute_script(child->argv[i], child->argc-i, &child->argv[i]);
 		}
@@ -929,9 +987,21 @@ static void initialize_context(struct p_context *ctx)
 	ctx->w=RES_NONE;
 	ctx->stack=NULL;
 	ctx->old_flag=0;
+	ctx->options_parsed = 0;
+	INIT_LIST_HEAD(&ctx->options);
 	done_command(ctx);   /* creates the memory for working child */
 }
 
+static void release_context(struct p_context *ctx)
+{
+	struct option *opt, *tmp;
+
+	list_for_each_entry_safe(opt, tmp, &ctx->options, list) {
+		free(opt->optarg);
+		free(opt);
+	}
+}
+
 /* normal return is 0
  * if a reserved word is found, and processed, return 1
  * should handle if, then, elif, else, fi, for, while, until, do, done.
@@ -1534,7 +1604,12 @@ static char * make_string(char ** inp)
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
@@ -1565,6 +1640,7 @@ static int source_script(const char *path, int argc, char *argv[])
 
 	ret = parse_string_outer(&ctx, script, FLAG_PARSE_SEMICOLON);
 
+	release_context(&ctx);
 	free(script);
 
 	return ret;
@@ -1578,6 +1654,7 @@ int run_shell(void)
 
 	setup_file_in_str(&input);
 	rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
+	release_context(&ctx);
 	return rcode;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
