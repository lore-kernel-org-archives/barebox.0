Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRZ6D-00029z-QR
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:52:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2018 09:51:48 +0100
Message-Id: <20181127085149.21008-2-s.hauer@pengutronix.de>
In-Reply-To: <20181127085149.21008-1-s.hauer@pengutronix.de>
References: <20181127085149.21008-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] hush: Add extra define for hush debugging
To: Barebox List <barebox@lists.infradead.org>

I've seen people increasing the compile loglevel to get more debugging
output from barebox. This is generally a good idea, but the tons of hush
debugging printed makes barebox quite unusable. This patch puts hush
debugging behind an extra HUSH_DEBUG define so increasing the compile
loglevel no longer results in hush debugging.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 55 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 30 insertions(+), 25 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 386b3d7aef..d2f9cc70f5 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -266,8 +266,13 @@ struct in_str {
 #define b_getch(input) ((input)->get(input))
 #define b_peek(input) ((input)->peek(input))
 
+#ifdef HUSH_DEBUG
+#define hush_debug(fmt, arg...) debug(fmt, ##arg)
+#else
+#define hush_debug(fmt, arg...)
+#endif
 
-#define final_printf debug
+#define final_printf hush_debug
 
 static void syntax(void)
 {
@@ -352,7 +357,7 @@ static int b_check_space(o_string *o, int len)
 
 static int b_addchr(o_string *o, int ch)
 {
-	debug("%s: %c %d %p\n", __func__, ch, o->length, o);
+	hush_debug("%s: %c %d %p\n", __func__, ch, o->length, o);
 
 	if (b_check_space(o, 1))
 		return B_NOSPAC;
@@ -507,7 +512,7 @@ static int file_get(struct in_str *i)
 	if (i->p && *i->p)
 		ch = *i->p++;
 
-	debug("%s: got a %d\n", __func__, ch);
+	hush_debug("%s: got a %d\n", __func__, ch);
 
 	return ch;
 }
@@ -759,7 +764,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	child = &pi->progs[0];
 
 	if (child->group) {
-		debug("non-subshell grouping\n");
+		hush_debug("non-subshell grouping\n");
 		rcode = run_list_real(ctx, child->group);
 
 		return rcode;
@@ -785,7 +790,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 			char *name, *value;
 
 			name = xstrdup(child->argv[i]);
-			debug("Local environment set: %s\n", name);
+			hush_debug("Local environment set: %s\n", name);
 			value = strchr(name, '=');
 
 			if (value)
@@ -891,7 +896,7 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 			}
 		}
 		rmode = pi->r_mode;
-		debug("rmode=%d  if_code=%d  next_if_code=%d skip_more=%d\n",
+		hush_debug("rmode=%d  if_code=%d  next_if_code=%d skip_more=%d\n",
 				rmode, if_code, next_if_code, skip_more_in_this_rmode);
 		if (rmode == skip_more_in_this_rmode && flag_skip) {
 			if (pi->followup == PIPE_SEQ)
@@ -962,7 +967,7 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 			continue;
 
 		rcode = run_pipe_real(ctx, pi);
-		debug("run_pipe_real returned %d\n",rcode);
+		hush_debug("run_pipe_real returned %d\n",rcode);
 
 		if (rcode < -1) {
 			last_return_code = -rcode - 2;
@@ -1053,16 +1058,16 @@ static int xglob(o_string *dest, int flags, glob_t *pglob, int glob_needed)
 		if (dest->nonnull) {
 			/* bash man page calls this an "explicit" null */
 			gr = fake_glob(dest->data, flags, NULL, pglob);
-			debug("globhack returned %d\n",gr);
+			hush_debug("globhack returned %d\n",gr);
 		} else {
 			return 0;
 		}
 	} else if (glob_needed) {
 		gr = do_glob(dest->data, flags, NULL, pglob);
-		debug("glob returned %d\n",gr);
+		hush_debug("glob returned %d\n",gr);
 	} else {
 		gr = fake_glob(dest->data, flags, NULL, pglob);
-		debug("globhack returned %d\n",gr);
+		hush_debug("globhack returned %d\n",gr);
 	}
 	if (gr != 0) { /* GLOB_ABORTED ? */
 		error_msg("glob(3) error %d",gr);
@@ -1213,12 +1218,12 @@ static int reserved_word(o_string *dest, struct p_context *ctx)
 		if (strcmp(dest->data, r->literal))
 			continue;
 
-		debug("found reserved word %s, code %d\n",r->literal,r->code);
+		hush_debug("found reserved word %s, code %d\n",r->literal,r->code);
 
 		if (r->flag & FLAG_START) {
 			struct p_context *new = xmalloc(sizeof(struct p_context));
 
-			debug("push stack\n");
+			hush_debug("push stack\n");
 
 			if (ctx->w == RES_IN || ctx->w == RES_FOR) {
 				syntax();
@@ -1244,7 +1249,7 @@ static int reserved_word(o_string *dest, struct p_context *ctx)
 		if (ctx->old_flag & FLAG_END) {
 			struct p_context *old;
 
-			debug("pop stack\n");
+			hush_debug("pop stack\n");
 
 			done_pipe(ctx,PIPE_SEQ);
 			old = ctx->stack;
@@ -1269,9 +1274,9 @@ static int done_word(o_string *dest, struct p_context *ctx)
 	glob_t *glob_target;
 	int gr, flags = GLOB_NOCHECK;
 
-	debug("%s: %s %p\n", __func__, dest->data, child);
+	hush_debug("%s: %s %p\n", __func__, dest->data, child);
 	if (dest->length == 0 && !dest->nonnull) {
-		debug("  true null, ignored\n");
+		hush_debug("  true null, ignored\n");
 		return 0;
 	}
 	if (child->group) {
@@ -1279,7 +1284,7 @@ static int done_word(o_string *dest, struct p_context *ctx)
 		return 1;  /* syntax error, groups and arglists don't mix */
 	}
 	if (!child->argv && (ctx->type & FLAG_PARSE_SEMICOLON)) {
-		debug("checking %s for reserved-ness\n",dest->data);
+		hush_debug("checking %s for reserved-ness\n",dest->data);
 		if (reserved_word(dest,ctx))
 			return ctx->w == RES_SNTX;
 	}
@@ -1318,13 +1323,13 @@ static int done_command(struct p_context *ctx)
 	struct child_prog *prog = ctx->child;
 
 	if (prog && prog->group == NULL && prog->argv == NULL) {
-		debug("%s: skipping null command\n", __func__);
+		hush_debug("%s: skipping null command\n", __func__);
 		return 0;
 	} else if (prog) {
 		pi->num_progs++;
-		debug("%s: num_progs incremented to %d\n", __func__, pi->num_progs);
+		hush_debug("%s: num_progs incremented to %d\n", __func__, pi->num_progs);
 	} else {
-		debug("%s: initializing\n", __func__);
+		hush_debug("%s: initializing\n", __func__);
 	}
 	pi->progs = xrealloc(pi->progs, sizeof(*pi->progs) * (pi->num_progs + 1));
 
@@ -1347,7 +1352,7 @@ static int done_pipe(struct p_context *ctx, pipe_style type)
 
 	done_command(ctx);  /* implicit closure of previous command */
 
-	debug("%s: type %d\n", __func__, type);
+	hush_debug("%s: type %d\n", __func__, type);
 
 	ctx->pipe->followup = type;
 	ctx->pipe->r_mode = ctx->w;
@@ -1408,7 +1413,7 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 	int advance = 0, i;
 	int ch = input->peek(input);  /* first character after the $ */
 
-	debug("%s: ch=%c\n", __func__, ch);
+	hush_debug("%s: ch=%c\n", __func__, ch);
 
 	if (isalpha(ch)) {
 		b_addchr(dest, SPECIAL_VAR_SYMBOL);
@@ -1493,7 +1498,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 	 * A single-quote triggers a bypass of the main loop until its mate is
 	 * found.  When recursing, quote state is passed in via dest->quote. */
 
-	debug("%s: end_trigger=%d\n", __func__, end_trigger);
+	hush_debug("%s: end_trigger=%d\n", __func__, end_trigger);
 
 	while ((ch = b_getch(input)) != EOF) {
 		m = map[ch];
@@ -1501,7 +1506,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 			return 1;
 		next = (ch == '\n') ? 0 : b_peek(input);
 
-		debug("%s: ch=%c (%d) m=%d quote=%d - %c\n",
+		hush_debug("%s: ch=%c (%d) m=%d quote=%d - %c\n",
 				__func__,
 				ch >= ' ' ? ch : '.', ch, m,
 				dest->quote, ctx->stack == NULL ? '*' : '.');
@@ -1522,7 +1527,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 		}
 
 		if (ch == end_trigger && !dest->quote && ctx->w==RES_NONE) {
-			debug("%s: leaving (triggered)\n", __func__);
+			hush_debug("%s: leaving (triggered)\n", __func__);
 			return 0;
 		}
 
@@ -1611,7 +1616,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 	 * that is, we were really supposed to get end_trigger, and never got
 	 * one before the EOF.  Can't use the standard "syntax error" return code,
 	 * so that parse_stream_outer can distinguish the EOF and exit smoothly. */
-	debug("%s: leaving (EOF)\n", __func__);
+	hush_debug("%s: leaving (EOF)\n", __func__);
 
 	if (end_trigger != '\0')
 		return -1;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
