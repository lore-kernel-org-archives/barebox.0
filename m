Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077M-PH
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:21 +0200
Message-Id: <1335784768-9189-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] hush: run_pipe_real: bail out early to safe an
 indention level
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   98 +++++++++++++++++++++++++++------------------------------
 1 file changed, 47 insertions(+), 51 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 362f544..cd2afef 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -614,67 +614,67 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		return rcode;
 	}
 
-	if (pi->progs[0].argv != NULL) {
-
-		for (i = 0; is_assignment(child->argv[i]); i++)
-			{ /* nothing */ }
+	if (!pi->progs[0].argv)
+		return -1;
 
-		if (i != 0 && child->argv[i] == NULL) {
-			/* assignments, but no command: set the local environment */
-			for (i = 0; child->argv[i] != NULL; i++) {
+	for (i = 0; is_assignment(child->argv[i]); i++)
+		{ /* nothing */ }
 
-				/* Ok, this case is tricky.  We have to decide if this is a
-				 * local variable, or an already exported variable.  If it is
-				 * already exported, we have to export the new value.  If it is
-				 * not exported, we need only set this as a local variable.
-				 * This junk is all to decide whether or not to export this
-				 * variable. */
-				int export_me = 0;
-				char *name, *value;
+	if (i != 0 && child->argv[i] == NULL) {
+		/* assignments, but no command: set the local environment */
+		for (i = 0; child->argv[i] != NULL; i++) {
 
-				name = xstrdup(child->argv[i]);
-				debug("Local environment set: %s\n", name);
-				value = strchr(name, '=');
+			/* Ok, this case is tricky.  We have to decide if this is a
+			 * local variable, or an already exported variable.  If it is
+			 * already exported, we have to export the new value.  If it is
+			 * not exported, we need only set this as a local variable.
+			 * This junk is all to decide whether or not to export this
+			 * variable. */
+			int export_me = 0;
+			char *name, *value;
 
-				if (value)
-					*value = 0;
+			name = xstrdup(child->argv[i]);
+			debug("Local environment set: %s\n", name);
+			value = strchr(name, '=');
 
-				free(name);
-				p = insert_var_value(child->argv[i]);
-				set_local_var(p, export_me);
+			if (value)
+				*value = 0;
 
-				if (p != child->argv[i])
-					free(p);
-			}
-			return EXIT_SUCCESS;   /* don't worry about errors in set_local_var() yet */
-		}
-		for (i = 0; is_assignment(child->argv[i]); i++) {
+			free(name);
 			p = insert_var_value(child->argv[i]);
-			set_local_var(p, 0);
+			set_local_var(p, export_me);
 
-			if (p != child->argv[i]) {
-				child->sp--;
+			if (p != child->argv[i])
 				free(p);
-			}
 		}
-		if (child->sp) {
-			char * str = NULL;
-			struct p_context ctx1;
-
-			str = make_string((child->argv + i));
-			parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
-			release_context(&ctx1);
-			free(str);
+		return EXIT_SUCCESS;   /* don't worry about errors in set_local_var() yet */
+	}
+	for (i = 0; is_assignment(child->argv[i]); i++) {
+		p = insert_var_value(child->argv[i]);
+		set_local_var(p, 0);
 
-			return last_return_code;
+		if (p != child->argv[i]) {
+			child->sp--;
+			free(p);
 		}
+	}
+	if (child->sp) {
+		char * str = NULL;
+		struct p_context ctx1;
+
+		str = make_string((child->argv + i));
+		parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
+		release_context(&ctx1);
+		free(str);
+
+		return last_return_code;
+	}
+
 #ifdef CONFIG_HUSH_GETOPT
-		if (!strcmp(child->argv[i], "getopt"))
-			return builtin_getopt(ctx, child);
+	if (!strcmp(child->argv[i], "getopt"))
+		return builtin_getopt(ctx, child);
 #endif
-		return execute_binfmt(child->argc - i, &child->argv[i]);
-	}
-	return -1;
+	return execute_binfmt(child->argc - i, &child->argv[i]);
 }
 
 static int run_list_real(struct p_context *ctx, struct pipe *pi)
@@ -1234,13 +1234,9 @@ static int done_pipe(struct p_context *ctx, pipe_style type)
 	struct pipe *new_p;
 
 	done_command(ctx);  /* implicit closure of previous command */
-<<<<<<< HEAD
 
 	debug("%s: type %d\n", __func__, type);
 
-=======
-	debug("%s: type %d\n", __func__, type);
->>>>>>> f5c1f0c... hush use func
 	ctx->pipe->followup = type;
 	ctx->pipe->r_mode = ctx->w;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
