Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodt-00079n-De
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:26 +0200
Message-Id: <1335784768-9189-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
References: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/13] hush: Fix globbing
To: barebox@lists.infradead.org

hush has a long standing and anoying glob bug. hush expands wildcards
during parsing of the script or command stream. When the command stream
begins to execute the wildcards are already expanded which leads to:

mkdir /tmp
cd /tmp
mkdir foo; ls *
ls: *: No such file or directory

To fix this expand wildcards right before executing the command. Since
'for' loops are not executed in commands, we have to keep the old behaviour
in here so that 'for i in *' still works.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |  127 +++++++++++++++++++++++++++++++++++----------------------
 1 file changed, 79 insertions(+), 48 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index d7ed624..ab513af 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -497,7 +497,8 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 }
 
 #ifdef CONFIG_HUSH_GETOPT
-static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
+static int builtin_getopt(struct p_context *ctx, struct child_prog *child,
+		int argc, char *argv[])
 {
 	char *optstring, *var;
 	int opt, ret = 0;
@@ -505,11 +506,11 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 	struct option *o;
 	struct getopt_context gc;
 
-	if (child->argc != 3)
+	if (argc != 3)
 		return -2 - 1;
 
-	optstring = child->argv[1];
-	var = child->argv[2];
+	optstring = argv[1];
+	var = argv[2];
 
 	getopt_context_store(&gc);
 
@@ -546,6 +547,12 @@ out:
 }
 
 BAREBOX_MAGICVAR(OPTARG, "optarg for hush builtin getopt");
+#else
+static int builtin_getopt(struct p_context *ctx, struct child_prog *child,
+		int argc, char *argv[])
+{
+	return -1;
+}
 #endif
 
 static void remove_quotes_in_str(char *src)
@@ -601,6 +608,57 @@ static void remove_quotes(int argc, char *argv[])
 		remove_quotes_in_str(argv[i]);
 }
 
+static int fake_glob(const char *src, int flags,
+		int (*errfunc) (const char *epath, int eerrno),
+		glob_t *pglob)
+{
+	int pathc;
+
+	if (!(flags & GLOB_APPEND)) {
+		globfree(pglob);
+		pglob->gl_pathv = NULL;
+		pglob->gl_pathc = 0;
+		pglob->gl_offs = 0;
+	}
+	pathc = ++pglob->gl_pathc;
+	pglob->gl_pathv = xrealloc(pglob->gl_pathv, (pathc + 1) * sizeof(*pglob->gl_pathv));
+	pglob->gl_pathv[pathc - 1] = xstrdup(src);
+	pglob->gl_pathv[pathc] = NULL;
+
+	return 0;
+}
+
+#ifdef CONFIG_GLOB
+static int do_glob(const char *src, int flags,
+		int (*errfunc) (const char *epath, int eerrno),
+		glob_t *pglob)
+{
+	return glob(src, flags, errfunc, pglob);
+}
+#else
+static int do_glob(const char *src, int flags,
+		int (*errfunc) (const char *epath, int eerrno),
+		glob_t *pglob)
+{
+	return fake_glob(src, flags, errfunc, pglob);
+}
+#endif
+
+static void do_glob_in_argv(glob_t *globbuf, int argc, char **argv)
+{
+	int i;
+	int flags;
+
+	globbuf->gl_offs = 0;
+	flags = GLOB_DOOFFS | GLOB_NOCHECK;
+
+	for (i = 0; i < argc; i++) {
+		int ret;
+		ret = do_glob(argv[i], flags, NULL, globbuf);
+		flags |= GLOB_APPEND;
+	}
+}
+
 /* run_pipe_real() starts all the jobs, but doesn't wait for anything
  * to finish.  See checkjobs().
  *
@@ -623,6 +681,8 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	int nextin;
 	struct child_prog *child;
 	char *p;
+	glob_t globbuf = {};
+	int ret;
 # if __GNUC__
 	/* Avoid longjmp clobbering */
 	(void) &i;
@@ -706,13 +766,18 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		return last_return_code;
 	}
 
-	remove_quotes(child->argc - i, &child->argv[i]);
+	do_glob_in_argv(&globbuf, child->argc - i, &child->argv[i]);
 
-#ifdef CONFIG_HUSH_GETOPT
-	if (!strcmp(child->argv[i], "getopt"))
-		return builtin_getopt(ctx, child);
-#endif
-	return execute_binfmt(child->argc - i, &child->argv[i]);
+	remove_quotes(globbuf.gl_pathc, globbuf.gl_pathv);
+
+	if (!strcmp(globbuf.gl_pathv[0], "getopt"))
+		ret = builtin_getopt(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
+	else
+		ret = execute_binfmt(globbuf.gl_pathc, globbuf.gl_pathv);
+
+	globfree(&globbuf);
+
+	return ret;
 }
 
 static int run_list_real(struct p_context *ctx, struct pipe *pi)
@@ -911,41 +976,7 @@ static int free_pipe_list(struct pipe *head, int indent)
 	return rcode;
 }
 
-static int fake_glob(const char *src, int flags,
-		int (*errfunc) (const char *epath, int eerrno),
-		glob_t *pglob)
-{
-	int pathc;
-
-	if (!(flags & GLOB_APPEND)) {
-		globfree(pglob);
-		pglob->gl_pathv = NULL;
-		pglob->gl_pathc = 0;
-		pglob->gl_offs = 0;
-	}
-	pathc = ++pglob->gl_pathc;
-	pglob->gl_pathv = xrealloc(pglob->gl_pathv, (pathc + 1) * sizeof(*pglob->gl_pathv));
-	pglob->gl_pathv[pathc - 1] = xstrdup(src);
-	pglob->gl_pathv[pathc] = NULL;
-
-	return 0;
-}
-
-/* XXX broken if the last character is '\\', check that before calling */
-static int glob_needed(const char *s)
-{
-#ifdef CONFIG_GLOB
-	for (; *s; s++) {
-		if (*s == '\\')
-			s++;
-		if (strchr("*[?",*s))
-			return 1;
-	}
-#endif
-	return 0;
-}
-
-static int xglob(o_string *dest, int flags, glob_t *pglob)
+static int xglob(o_string *dest, int flags, glob_t *pglob, int glob_needed)
 {
 	int gr;
 
@@ -959,8 +990,8 @@ static int xglob(o_string *dest, int flags, glob_t *pglob)
 		} else {
 			return 0;
 		}
-	} else if (glob_needed(dest->data)) {
-		gr = glob(dest->data, flags, NULL, pglob);
+	} else if (glob_needed) {
+		gr = do_glob(dest->data, flags, NULL, pglob);
 		debug("glob returned %d\n",gr);
 	} else {
 		gr = fake_glob(dest->data, flags, NULL, pglob);
@@ -1188,7 +1219,7 @@ static int done_word(o_string *dest, struct p_context *ctx)
 	if (child->argv)
 		flags |= GLOB_APPEND;
 
-	gr = xglob(dest, flags, glob_target);
+	gr = xglob(dest, flags, glob_target, ctx->w == RES_IN ? 1 : 0);
 	if (gr)
 		return 1;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
