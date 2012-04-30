Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodw-0007AF-5Q
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:18 +0200
Message-Id: <1335784768-9189-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] hush: cleanup coding style
To: barebox@lists.infradead.org

General coding style cleanup

- add some blank lines
- add whitespaces on on both sides of operators

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |  330 ++++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 221 insertions(+), 109 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 9b512f9..017f96d 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -327,12 +327,15 @@ static int b_check_space(o_string *o, int len)
 
 static int b_addchr(o_string *o, int ch)
 {
-	debug("b_addchr: %c %d %p\n", ch, o->length, o);
+	debug("%s: %c %d %p\n", __func__, ch, o->length, o);
+
 	if (b_check_space(o, 1))
 		return B_NOSPAC;
+
 	o->data[o->length] = ch;
 	o->length++;
 	o->data[o->length] = '\0';
+
 	return 0;
 }
 
@@ -340,7 +343,9 @@ static void b_reset(o_string *o)
 {
 	o->length = 0;
 	o->nonnull = 0;
-	if (o->data != NULL) *o->data = '\0';
+
+	if (o->data != NULL)
+		*o->data = '\0';
 }
 
 static void b_free(o_string *o)
@@ -358,10 +363,12 @@ static int b_addqchr(o_string *o, int ch, int quote)
 {
 	if (quote && strchr("*?[",ch)) {
 		int rc;
+
 		rc = b_addchr(o, '\\');
 		if (rc)
 			return rc;
 	}
+
 	return b_addchr(o, ch);
 }
 
@@ -369,19 +376,22 @@ static int b_adduint(o_string *o, unsigned int i)
 {
 	int r;
 	char *p = simple_itoa(i);
+
 	/* no escape checking necessary */
 	do {
-		r=b_addchr(o, *p++);
-	} while (r==0 && *p);
+		r = b_addchr(o, *p++);
+	} while (r == 0 && *p);
 
 	return r;
 }
 
 static int static_get(struct in_str *i)
 {
-	int ch=*i->p++;
-	if (ch=='\0')
+	int ch = *i->p++;
+
+	if (ch == '\0')
 		return EOF;
+
 	return ch;
 }
 
@@ -413,18 +423,21 @@ static void get_user_input(struct in_str *i)
 	static char the_command[CONFIG_CBSIZE];
 
 	i->__promptme = 1;
+
 	if (i->promptmode == 1) {
 		n = readline(getprompt(), console_buffer, CONFIG_CBSIZE);
 	} else {
 		n = readline(CONFIG_PROMPT_HUSH_PS2, console_buffer, CONFIG_CBSIZE);
 	}
+
 	if (n == -1 ) {
 		i->__promptme = 0;
 		n = 0;
 	}
 
 	console_buffer[n] = '\n';
-	console_buffer[n+1]= '\0';
+	console_buffer[n + 1]= '\0';
+
 	if (i->promptmode == 1) {
 		strcpy(the_command,console_buffer);
 		i->p = the_command;
@@ -433,8 +446,8 @@ static void get_user_input(struct in_str *i)
 			if (strlen(the_command) + strlen(console_buffer)
 			    < CONFIG_CBSIZE) {
 				n = strlen(the_command);
-				the_command[n-1] = ' ';
-				strcpy(&the_command[n],console_buffer);
+				the_command[n - 1] = ' ';
+				strcpy(&the_command[n], console_buffer);
 			}
 			else {
 				the_command[0] = '\n';
@@ -458,18 +471,18 @@ static int file_get(struct in_str *i)
 	ch = 0;
 	/* If there is data waiting, eat it up */
 	if (i->p && *i->p) {
-		ch=*i->p++;
+		ch = *i->p++;
 	} else {
 		/* need to double check i->file because we might be doing something
 		 * more complicated by now, like sourcing or substituting. */
-			while(! i->p  || strlen(i->p)==0 ) {
+			while (!i->p  || strlen(i->p) == 0 ) {
 				get_user_input(i);
 			}
-			i->promptmode=2;
+			i->promptmode = 2;
 			if (i->p && *i->p) {
-				ch=*i->p++;
+				ch = *i->p++;
 			}
-		debug("b_getch: got a %d\n", ch);
+		debug("%s: got a %d\n", __func__, ch);
 	}
 	return ch;
 }
@@ -486,8 +499,8 @@ static void setup_file_in_str(struct in_str *i)
 {
 	i->peek = file_peek;
 	i->get = file_get;
-	i->__promptme=1;
-	i->promptmode=1;
+	i->__promptme = 1;
+	i->promptmode = 1;
 	i->p = NULL;
 }
 
@@ -495,8 +508,8 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 {
 	i->peek = static_peek;
 	i->get = static_get;
-	i->__promptme=1;
-	i->promptmode=1;
+	i->__promptme = 1;
+	i->promptmode = 1;
 	i->p = s;
 }
 
@@ -518,7 +531,7 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 	getopt_context_store(&gc);
 
 	if (!ctx->options_parsed) {
-		while((opt = getopt(ctx->global_argc, ctx->global_argv, optstring)) > 0) {
+		while ((opt = getopt(ctx->global_argc, ctx->global_argv, optstring)) > 0) {
 			o = xzalloc(sizeof(*o));
 			o->opt = opt;
 			o->optarg = xstrdup(optarg);
@@ -588,17 +601,23 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	 * pseudo_exec.  "echo foo | read bar" doesn't work on bash, either.
 	 */
 	if (pi->num_progs == 1)
-		child = & (pi->progs[0]);
+		child = &pi->progs[0];
+
 	if (pi->num_progs == 1 && child->group) {
 		int rcode;
+
 		debug("non-subshell grouping\n");
 		rcode = run_list_real(ctx, child->group);
+
 		return rcode;
 	} else if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
-		for (i=0; is_assignment(child->argv[i]); i++) { /* nothing */ }
-		if (i!=0 && child->argv[i]==NULL) {
+
+		for (i = 0; is_assignment(child->argv[i]); i++)
+			{ /* nothing */ }
+
+		if (i != 0 && child->argv[i] == NULL) {
 			/* assignments, but no command: set the local environment */
-			for (i=0; child->argv[i]!=NULL; i++) {
+			for (i = 0; child->argv[i] != NULL; i++) {
 
 				/* Ok, this case is tricky.  We have to decide if this is a
 				 * local variable, or an already exported variable.  If it is
@@ -606,16 +625,20 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 				 * not exported, we need only set this as a local variable.
 				 * This junk is all to decide whether or not to export this
 				 * variable. */
-				int export_me=0;
+				int export_me = 0;
 				char *name, *value;
+
 				name = xstrdup(child->argv[i]);
 				debug("Local environment set: %s\n", name);
 				value = strchr(name, '=');
+
 				if (value)
-					*value=0;
+					*value = 0;
+
 				free(name);
 				p = insert_var_value(child->argv[i]);
 				set_local_var(p, export_me);
+
 				if (p != child->argv[i])
 					free(p);
 			}
@@ -624,6 +647,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		for (i = 0; is_assignment(child->argv[i]); i++) {
 			p = insert_var_value(child->argv[i]);
 			set_local_var(p, 0);
+
 			if (p != child->argv[i]) {
 				child->sp--;
 				free(p);
@@ -632,10 +656,12 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		if (child->sp) {
 			char * str = NULL;
 			struct p_context ctx1;
+
 			str = make_string((child->argv + i));
 			parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
 			release_context(&ctx1);
 			free(str);
+
 			return last_return_code;
 		}
 #ifdef CONFIG_HUSH_GETOPT
@@ -657,7 +683,8 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 	int rcode=0, flag_skip=1;
 	int flag_restore = 0;
 	int if_code=0, next_if_code=0;  /* need double-buffer to handle elif */
-	reserved_style rmode, skip_more_in_this_rmode=RES_XXXX;
+	reserved_style rmode, skip_more_in_this_rmode = RES_XXXX;
+
 	/* check syntax for "for" */
 	for (rpipe = pi; rpipe; rpipe = rpipe->next) {
 		if ((rpipe->r_mode == RES_IN ||
@@ -688,26 +715,35 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 				}
 		}
 		rmode = pi->r_mode;
-		debug("rmode=%d  if_code=%d  next_if_code=%d skip_more=%d\n", rmode, if_code, next_if_code, skip_more_in_this_rmode);
+		debug("rmode=%d  if_code=%d  next_if_code=%d skip_more=%d\n",
+				rmode, if_code, next_if_code, skip_more_in_this_rmode);
 		if (rmode == skip_more_in_this_rmode && flag_skip) {
-			if (pi->followup == PIPE_SEQ) flag_skip=0;
+			if (pi->followup == PIPE_SEQ)
+				flag_skip=0;
 			continue;
 		}
+
 		flag_skip = 1;
 		skip_more_in_this_rmode = RES_XXXX;
+
 		if (rmode == RES_THEN || rmode == RES_ELSE)
 			if_code = next_if_code;
+
 		if (rmode == RES_THEN &&  if_code)
 			continue;
+
 		if (rmode == RES_ELSE && !if_code)
 			continue;
+
 		if (rmode == RES_ELIF && !if_code)
 			break;
+
 		if (rmode == RES_FOR && pi->num_progs) {
 			if (!list) {
 				/* if no variable values after "in" we skip "for" */
 				if (!pi->next->progs->argv)
 					continue;
+
 				/* create list of variable values */
 				list = make_list_in(pi->next->progs->argv,
 					pi->progs->argv[0]);
@@ -732,35 +768,45 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 		}
 		if (rmode == RES_IN)
 			continue;
+
 		if (rmode == RES_DO) {
 			if (!flag_rep)
 				continue;
 		}
-		if ((rmode == RES_DONE)) {
+
+		if (rmode == RES_DONE) {
 			if (flag_rep) {
 				flag_restore = 1;
 			} else {
 				rpipe = NULL;
 			}
 		}
+
 		if (pi->num_progs == 0)
 			continue;
+
 		rcode = run_pipe_real(ctx, pi);
 		debug("run_pipe_real returned %d\n",rcode);
+
 		if (rcode < -1) {
 			last_return_code = -rcode - 2;
 			return rcode;	/* exit */
 		}
-		last_return_code=rcode;
-		if ( rmode == RES_IF || rmode == RES_ELIF )
-			next_if_code=rcode;  /* can be overwritten a number of times */
+
+		last_return_code = rcode;
+
+		if (rmode == RES_IF || rmode == RES_ELIF )
+			next_if_code = rcode;  /* can be overwritten a number of times */
+
 		if (rmode == RES_WHILE)
 			flag_rep = !last_return_code;
+
 		if (rmode == RES_UNTIL)
 			flag_rep = last_return_code;
-		if ( (rcode==EXIT_SUCCESS && pi->followup==PIPE_OR) ||
-		     (rcode!=EXIT_SUCCESS && pi->followup==PIPE_AND) )
-			skip_more_in_this_rmode=rmode;
+
+		if ((rcode == EXIT_SUCCESS && pi->followup == PIPE_OR) ||
+		     (rcode != EXIT_SUCCESS && pi->followup == PIPE_AND) )
+			skip_more_in_this_rmode = rmode;
 	}
 	return rcode;
 }
@@ -769,8 +815,8 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 /* broken, of course, but OK for testing */
 static char *indenter(int i)
 {
-	static char blanks[]="                                    ";
-	return &blanks[sizeof(blanks)-i-1];
+	static char blanks[] = "                                    ";
+	return &blanks[sizeof(blanks) - i - 1];
 }
 #endif
 
@@ -779,17 +825,20 @@ static int free_pipe(struct pipe *pi, int indent)
 {
 	char **p;
 	struct child_prog *child;
-	int a, i, ret_code=0;
+	int a, i, ret_code = 0;
+
+	for (i = 0; i < pi->num_progs; i++) {
 
-	for (i=0; i<pi->num_progs; i++) {
 		child = &pi->progs[i];
-		final_printf("%s  command %d:\n",indenter(indent),i);
+		final_printf("%s  command %d:\n", indenter(indent), i);
+
 		if (child->argv) {
-			for (a=0,p=child->argv; *p; a++,p++) {
-				final_printf("%s   argv[%d] = %s\n",indenter(indent),a,*p);
+			for (a = 0,p = child->argv; *p; a++,p++) {
+				final_printf("%s   argv[%d] = %s\n",
+						indenter(indent),a,*p);
 			}
 			globfree(&child->glob_result);
-			child->argv=NULL;
+			child->argv = NULL;
 		} else if (child->group) {
 			ret_code = free_pipe_list(child->group,indent+3);
 			final_printf("%s   end group\n",indenter(indent));
@@ -797,21 +846,24 @@ static int free_pipe(struct pipe *pi, int indent)
 			final_printf("%s   (nil)\n",indenter(indent));
 		}
 	}
+
 	free(pi->progs);   /* children are an array, they get freed all at once */
-	pi->progs=NULL;
+	pi->progs = NULL;
+
 	return ret_code;
 }
 
 static int free_pipe_list(struct pipe *head, int indent)
 {
-	int rcode=0;   /* if list has no members */
+	int rcode = 0;   /* if list has no members */
 	struct pipe *pi, *next;
-	for (pi=head; pi; pi=next) {
+
+	for (pi = head; pi; pi = next) {
 		final_printf("%s pipe reserved mode %d\n", indenter(indent), pi->r_mode);
 		rcode = free_pipe(pi, indent);
 		final_printf("%s pipe followup code %d\n", indenter(indent), pi->followup);
-		next=pi->next;
-		pi->next=NULL;
+		next = pi->next;
+		pi->next = NULL;
 		free(pi);
 	}
 	return rcode;
@@ -826,15 +878,18 @@ static int free_pipe_list(struct pipe *head, int indent)
  */
 static int globhack(const char *src, int flags, glob_t *pglob)
 {
-	int cnt=0, pathc;
+	int cnt = 0, pathc;
 	const char *s;
 	char *dest;
 
-	for (cnt=1, s=src; s && *s; s++) {
-		if (*s == '\\' && strchr("*[?", *(s + 1))) s++;
+	for (cnt = 1, s = src; s && *s; s++) {
+		if (*s == '\\' && strchr("*[?", *(s + 1)))
+			s++;
 		cnt++;
 	}
+
 	dest = xmalloc(cnt);
+
 	if (!(flags & GLOB_APPEND)) {
 		globfree(pglob);
 		pglob->gl_pathv = NULL;
@@ -842,14 +897,18 @@ static int globhack(const char *src, int flags, glob_t *pglob)
 		pglob->gl_offs = 0;
 	}
 	pathc = ++pglob->gl_pathc;
-	pglob->gl_pathv = xrealloc(pglob->gl_pathv, (pathc+1)*sizeof(*pglob->gl_pathv));
-	pglob->gl_pathv[pathc-1] = dest;
+	pglob->gl_pathv = xrealloc(pglob->gl_pathv, (pathc + 1) * sizeof(*pglob->gl_pathv));
+	pglob->gl_pathv[pathc - 1] = dest;
 	pglob->gl_pathv[pathc] = NULL;
-	for (s=src; s && *s; s++, dest++) {
-		if (*s == '\\' && strchr("*[?", *(s + 1))) s++;
+
+	for (s = src; s && *s; s++, dest++) {
+		if (*s == '\\' && strchr("*[?", *(s + 1)))
+			s++;
 		*dest = *s;
 	}
-	*dest='\0';
+
+	*dest = '\0';
+
 	return 0;
 }
 
@@ -858,7 +917,8 @@ static int glob_needed(const char *s)
 {
 #ifdef CONFIG_GLOB
 	for (; *s; s++) {
-		if (*s == '\\') s++;
+		if (*s == '\\')
+			s++;
 		if (strchr("*[?",*s))
 			return 1;
 	}
@@ -895,7 +955,9 @@ static int xglob(o_string *dest, int flags, glob_t *pglob)
 	if (gr != 0) { /* GLOB_ABORTED ? */
 		error_msg("glob(3) error %d",gr);
 	}
+
 	/* globprint(glob_target); */
+
 	return gr;
 }
 
@@ -909,7 +971,8 @@ static int run_list(struct p_context *ctx, struct pipe *pi)
 	/* free_pipe_list has the side effect of clearing memory
 	 * In the long run that function can be merged with run_list_real,
 	 * but doing that now would hobble the debugging effort. */
-	free_pipe_list(pi,0);
+	free_pipe_list(pi, 0);
+
 	return rcode;
 }
 
@@ -955,26 +1018,30 @@ static int is_assignment(const char *s)
 
 	if (!isalpha(*s))
 		return 0;
+
 	++s;
+
 	while(isalnum(*s) || *s=='_' || *s=='.')
 		++s;
+
 	return *s=='=';
 }
 
 
-static struct pipe *new_pipe(void) {
-	return (struct pipe *)xzalloc(sizeof(struct pipe));
+static struct pipe *new_pipe(void)
+{
+	return xzalloc(sizeof(struct pipe));
 }
 
 static void initialize_context(struct p_context *ctx)
 {
-	ctx->pipe=NULL;
-	ctx->child=NULL;
-	ctx->list_head=new_pipe();
-	ctx->pipe=ctx->list_head;
-	ctx->w=RES_NONE;
-	ctx->stack=NULL;
-	ctx->old_flag=0;
+	ctx->pipe = NULL;
+	ctx->child = NULL;
+	ctx->list_head = new_pipe();
+	ctx->pipe = ctx->list_head;
+	ctx->w = RES_NONE;
+	ctx->stack = NULL;
+	ctx->old_flag = 0;
 	ctx->options_parsed = 0;
 	INIT_LIST_HEAD(&ctx->options);
 	done_command(ctx);   /* creates the memory for working child */
@@ -1025,44 +1092,56 @@ static struct reserved_combo reserved_list[] = {
 static int reserved_word(o_string *dest, struct p_context *ctx)
 {
 	struct reserved_combo *r;
-	for (r=reserved_list;
-		r<reserved_list+NRES; r++) {
+
+	for (r = reserved_list; r < reserved_list + NRES; r++) {
 		if (strcmp(dest->data, r->literal) == 0) {
+
 			debug("found reserved word %s, code %d\n",r->literal,r->code);
+
 			if (r->flag & FLAG_START) {
 				struct p_context *new = xmalloc(sizeof(struct p_context));
+
 				debug("push stack\n");
+
 				if (ctx->w == RES_IN || ctx->w == RES_FOR) {
 					syntax();
 					free(new);
 					ctx->w = RES_SNTX;
 					b_reset(dest);
+
 					return 1;
 				}
 				*new = *ctx;   /* physical copy */
 				initialize_context(ctx);
-				ctx->stack=new;
-			} else if ( ctx->w == RES_NONE || ! (ctx->old_flag & (1<<r->code))) {
+				ctx->stack = new;
+			} else if (ctx->w == RES_NONE || !(ctx->old_flag & (1 << r->code))) {
 				syntax();
 				ctx->w = RES_SNTX;
 				b_reset(dest);
 				return 1;
 			}
-			ctx->w=r->code;
+
+			ctx->w = r->code;
 			ctx->old_flag = r->flag;
+
 			if (ctx->old_flag & FLAG_END) {
 				struct p_context *old;
+
 				debug("pop stack\n");
+
 				done_pipe(ctx,PIPE_SEQ);
 				old = ctx->stack;
 				old->child->group = ctx->list_head;
 				*ctx = *old;   /* physical copy */
 				free(old);
 			}
-			b_reset (dest);
+
+			b_reset(dest);
+
 			return 1;
 		}
 	}
+
 	return 0;
 }
 
@@ -1070,11 +1149,11 @@ static int reserved_word(o_string *dest, struct p_context *ctx)
  * Syntax or xglob errors return 1. */
 static int done_word(o_string *dest, struct p_context *ctx)
 {
-	struct child_prog *child=ctx->child;
+	struct child_prog *child = ctx->child;
 	glob_t *glob_target;
 	int gr, flags = 0;
 
-	debug("done_word: %s %p\n", dest->data, child);
+	debug("%s: %s %p\n", __func__, dest->data, child);
 	if (dest->length == 0 && !dest->nonnull) {
 		debug("  true null, ignored\n");
 		return 0;
@@ -1086,7 +1165,7 @@ static int done_word(o_string *dest, struct p_context *ctx)
 	if (!child->argv && (ctx->type & FLAG_PARSE_SEMICOLON)) {
 		debug("checking %s for reserved-ness\n",dest->data);
 		if (reserved_word(dest,ctx))
-			return ctx->w==RES_SNTX;
+			return ctx->w == RES_SNTX;
 	}
 
 	glob_target = &child->glob_result;
@@ -1106,6 +1185,7 @@ static int done_word(o_string *dest, struct p_context *ctx)
 		done_word(dest,ctx);
 		done_pipe(ctx,PIPE_SEQ);
 	}
+
 	return 0;
 }
 
@@ -1118,21 +1198,19 @@ static int done_command(struct p_context *ctx)
 	 * Only real trickiness here is that the uncommitted
 	 * child structure, to which ctx->child points, is not
 	 * counted in pi->num_progs. */
-	struct pipe *pi=ctx->pipe;
-	struct child_prog *prog=ctx->child;
+	struct pipe *pi = ctx->pipe;
+	struct child_prog *prog = ctx->child;
 
-	if (prog && prog->group == NULL
-		 && prog->argv == NULL
-										) {
-		debug("done_command: skipping null command\n");
+	if (prog && prog->group == NULL && prog->argv == NULL) {
+		debug("%s: skipping null command\n", __func__);
 		return 0;
 	} else if (prog) {
 		pi->num_progs++;
-		debug("done_command: num_progs incremented to %d\n",pi->num_progs);
+		debug("%s: num_progs incremented to %d\n", __func__, pi->num_progs);
 	} else {
-		debug("done_command: initializing\n");
+		debug("%s: initializing\n", __func__);
 	}
-	pi->progs = xrealloc(pi->progs, sizeof(*pi->progs) * (pi->num_progs+1));
+	pi->progs = xrealloc(pi->progs, sizeof(*pi->progs) * (pi->num_progs + 1));
 
 	prog = pi->progs + pi->num_progs;
 	prog->glob_result.gl_pathv = NULL;
@@ -1150,15 +1228,26 @@ static int done_command(struct p_context *ctx)
 static int done_pipe(struct p_context *ctx, pipe_style type)
 {
 	struct pipe *new_p;
+
 	done_command(ctx);  /* implicit closure of previous command */
-	debug("done_pipe, type %d\n", type);
+<<<<<<< HEAD
+
+	debug("%s: type %d\n", __func__, type);
+
+=======
+	debug("%s: type %d\n", __func__, type);
+>>>>>>> f5c1f0c... hush use func
 	ctx->pipe->followup = type;
 	ctx->pipe->r_mode = ctx->w;
-	new_p=new_pipe();
+
+	new_p = new_pipe();
+
 	ctx->pipe->next = new_p;
 	ctx->pipe = new_p;
 	ctx->child = NULL;
+
 	done_command(ctx);  /* set up new pipe to accept commands */
+
 	return 0;
 }
 
@@ -1179,7 +1268,9 @@ static const char *lookup_param(char *src)
 static int parse_string(o_string *dest, struct p_context *ctx, const char *src)
 {
 	struct in_str foo;
+
 	setup_string_in_str(&foo, src);
+
 	return parse_stream(dest, ctx, &foo, '\0');
 }
 
@@ -1188,6 +1279,7 @@ static char *get_dollar_var(char ch)
 	static char buf[40];
 
 	buf[0] = '\0';
+
 	switch (ch) {
 		case '?':
 			sprintf(buf, "%u", (unsigned int)last_return_code);
@@ -1203,15 +1295,20 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 {
 	int advance = 0, i;
 	int ch = input->peek(input);  /* first character after the $ */
-	debug("handle_dollar: ch=%c\n",ch);
+
+	debug("%s: ch=%c\n", __func__, ch);
+
 	if (isalpha(ch)) {
 		b_addchr(dest, SPECIAL_VAR_SYMBOL);
 		ctx->child->sp++;
-		while(ch=b_peek(input),isalnum(ch) || ch=='_' || ch=='.') {
+
+		while (ch = b_peek(input),isalnum(ch) || ch == '_' || ch == '.') {
 			b_getch(input);
 			b_addchr(dest,ch);
 		}
+
 		b_addchr(dest, SPECIAL_VAR_SYMBOL);
+
 	} else if (isdigit(ch)) {
 
 		i = ch - '0';	/* XXX is $0 special? */
@@ -1237,8 +1334,10 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 			b_addchr(dest, SPECIAL_VAR_SYMBOL);
 			ctx->child->sp++;
 			b_getch(input);
+
 			/* XXX maybe someone will try to escape the '}' */
-			while(ch=b_getch(input),ch!=EOF && ch!='}') {
+
+			while(ch = b_getch(input),ch != EOF && ch != '}') {
 				b_addchr(dest,ch);
 			}
 			if (ch != '}') {
@@ -1258,6 +1357,7 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 	 */
 	if (advance)
 		b_getch(input);
+
 	return 0;
 }
 
@@ -1273,16 +1373,18 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 	 * A single-quote triggers a bypass of the main loop until its mate is
 	 * found.  When recursing, quote state is passed in via dest->quote. */
 
-	debug("parse_stream, end_trigger=%d\n",end_trigger);
+	debug("%s: end_trigger=%d\n", __func__, end_trigger);
+
 	while ((ch = b_getch(input)) != EOF) {
 		m = map[ch];
 		if (input->__promptme == 0)
 			return 1;
 		next = (ch == '\n') ? 0 : b_peek(input);
 
-		debug("parse_stream: ch=%c (%d) m=%d quote=%d - %c\n",
-			ch >= ' ' ? ch : '.', ch, m,
-			dest->quote, ctx->stack == NULL ? '*' : '.');
+		debug("%s: ch=%c (%d) m=%d quote=%d - %c\n",
+				__func__,
+				ch >= ' ' ? ch : '.', ch, m,
+				dest->quote, ctx->stack == NULL ? '*' : '.');
 
 		if (m == 0 || ((m == 1 || m == 2) && dest->quote)) {
 			b_addqchr(dest, ch, dest->quote);
@@ -1295,12 +1397,12 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 			}
 			/* If we aren't performing a substitution, treat a newline as a
 			 * command separator.  */
-			if (end_trigger != '\0' && ch=='\n')
-				done_pipe(ctx,PIPE_SEQ);
+			if (end_trigger != '\0' && ch == '\n')
+				done_pipe(ctx, PIPE_SEQ);
 		}
 
 		if (ch == end_trigger && !dest->quote && ctx->w==RES_NONE) {
-			debug("leaving parse_stream (triggered)\n");
+			debug("%s: leaving (triggered)\n", __func__);
 			return 0;
 		}
 
@@ -1386,15 +1488,19 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 	 * that is, we were really supposed to get end_trigger, and never got
 	 * one before the EOF.  Can't use the standard "syntax error" return code,
 	 * so that parse_stream_outer can distinguish the EOF and exit smoothly. */
-	debug("leaving parse_stream (EOF)\n");
-	if (end_trigger != '\0') return -1;
+	debug("%s: leaving (EOF)\n", __func__);
+
+	if (end_trigger != '\0')
+		return -1;
 	return 0;
 }
 
 static void mapset(const unsigned char *set, int code)
 {
 	const unsigned char *s;
-	for (s=set; *s; s++) map[*s] = code;
+
+	for (s = set; *s; s++)
+		map[*s] = code;
 }
 
 static void update_ifs_map(void)
@@ -1402,40 +1508,46 @@ static void update_ifs_map(void)
 	/* char *ifs and char map[256] are both globals. */
 	ifs = (uchar *)getenv("IFS");
 	ifs = NULL;
-	if (ifs == NULL) ifs=(uchar *)" \t\n";
+	if (ifs == NULL)
+		ifs = (uchar *)" \t\n";
+
 	/* Precompute a list of 'flow through' behavior so it can be treated
 	 * quickly up front.  Computation is necessary because of IFS.
 	 * Special case handling of IFS == " \t\n" is not implemented.
 	 * The map[] array only really needs two bits each, and on most machines
 	 * that would be faster because of the reduced L1 cache footprint.
 	 */
-	memset(map,0,sizeof(map)); /* most characters flow through always */
-	mapset((uchar *)"\\$'\"", 3);       /* never flow through */
-	mapset((uchar *)";&|#", 1);         /* flow through if quoted */
-	mapset(ifs, 2);            /* also flow through if quoted */
+	memset(map, 0, sizeof(map));	/* most characters flow through always */
+	mapset((uchar *)"\\$'\"", 3);	/* never flow through */
+	mapset((uchar *)";&|#", 1);	/* flow through if quoted */
+	mapset(ifs, 2);			/* also flow through if quoted */
 }
 
 /* most recursion does not come through here, the exeception is
  * from builtin_source() */
 static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int flag)
 {
-	o_string temp=NULL_O_STRING;
+	o_string temp = NULL_O_STRING;
 	int rcode;
 	int code = 0;
+
 	do {
 		ctx->type = flag;
 		initialize_context(ctx);
 		update_ifs_map();
+
 		if (!(flag & FLAG_PARSE_SEMICOLON) || (flag & FLAG_REPARSING))
 			mapset((uchar *)";$&|", 0);
-		inp->promptmode=1;
+
+		inp->promptmode = 1;
 		rcode = parse_stream(&temp, ctx, inp, '\n');
+
 		if (rcode != 1 && ctx->old_flag != 0) {
 			syntax();
 		}
 		if (rcode != 1 && ctx->old_flag == 0) {
 			done_word(&temp, ctx);
-			done_pipe(ctx,PIPE_SEQ);
+			done_pipe(ctx, PIPE_SEQ);
 			if (ctx->list_head->num_progs) {
 				code = run_list(ctx, ctx->list_head);
 			} else {
@@ -1457,7 +1569,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 			temp.nonnull = 0;
 			temp.quote = 0;
 			inp->p = NULL;
-			free_pipe_list(ctx->list_head,0);
+			free_pipe_list(ctx->list_head, 0);
 		}
 		b_free(&temp);
 	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
