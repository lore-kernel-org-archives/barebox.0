Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodo-000797-4B
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:16 +0200
Message-Id: <1335784768-9189-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/13] hush: safe indention level by continueing a loop
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |  160 +++++++++++++++++++++++++++++----------------------------
 1 file changed, 81 insertions(+), 79 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 2d89f2b..091938d 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1284,95 +1284,97 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 			ch >= ' ' ? ch : '.', ch, m,
 			dest->quote, ctx->stack == NULL ? '*' : '.');
 
-		if (m==0 || ((m==1 || m==2) && dest->quote)) {
+		if (m == 0 || ((m == 1 || m == 2) && dest->quote)) {
 			b_addqchr(dest, ch, dest->quote);
-		} else {
-			if (m==2) {  /* unquoted IFS */
-				if (done_word(dest, ctx)) {
-					return 1;
-				}
-				/* If we aren't performing a substitution, treat a newline as a
-				 * command separator.  */
-				if (end_trigger != '\0' && ch=='\n')
-					done_pipe(ctx,PIPE_SEQ);
-			}
-			if (ch == end_trigger && !dest->quote && ctx->w==RES_NONE) {
-				debug("leaving parse_stream (triggered)\n");
-				return 0;
+			continue;
+		}
+
+		if (m == 2) {  /* unquoted IFS */
+			if (done_word(dest, ctx)) {
+				return 1;
 			}
-			if (m!=2) {
-				switch (ch) {
-				case '#':
-					if (dest->length == 0 && !dest->quote) {
-						while(ch=b_peek(input),ch!=EOF && ch!='\n') {
-							b_getch(input);
-						}
-					} else {
-						b_addqchr(dest, ch, dest->quote);
-					}
-					break;
-				case '\\':
-					if (next == EOF) {
-						syntax();
-						return 1;
-					}
-					b_addqchr(dest, '\\', dest->quote);
-					b_addqchr(dest, b_getch(input), dest->quote);
-					break;
-				case '$':
-					if (handle_dollar(dest, ctx, input)!=0)
-						return 1;
-					break;
-				case '\'':
-					dest->nonnull = 1;
-					while(ch=b_getch(input),ch!=EOF && ch!='\'') {
-						if(input->__promptme == 0)
-							return 1;
-						b_addchr(dest,ch);
-					}
-					if (ch==EOF) {
-						syntax();
-						return 1;
-					}
-					break;
-				case '"':
-					dest->nonnull = 1;
-					dest->quote = !dest->quote;
-					break;
-				case ';':
-					done_word(dest, ctx);
-					done_pipe(ctx,PIPE_SEQ);
-					break;
-				case '&':
-					done_word(dest, ctx);
-					if (next=='&') {
+			/* If we aren't performing a substitution, treat a newline as a
+			 * command separator.  */
+			if (end_trigger != '\0' && ch=='\n')
+				done_pipe(ctx,PIPE_SEQ);
+		}
+		if (ch == end_trigger && !dest->quote && ctx->w==RES_NONE) {
+			debug("leaving parse_stream (triggered)\n");
+			return 0;
+		}
+		if (m != 2) {
+			switch (ch) {
+			case '#':
+				if (dest->length == 0 && !dest->quote) {
+					while (ch = b_peek(input), ch != EOF && ch!='\n') {
 						b_getch(input);
-						done_pipe(ctx,PIPE_AND);
-					} else {
-						syntax_err();
-						return 1;
 					}
-					break;
-				case '|':
-					done_word(dest, ctx);
-					if (next=='|') {
-						b_getch(input);
-						done_pipe(ctx,PIPE_OR);
-					} else {
-						/* we could pick up a file descriptor choice here
-						 * with redirect_opt_num(), but bash doesn't do it.
-						 * "echo foo 2| cat" yields "foo 2". */
-						syntax_err();
+				} else {
+					b_addqchr(dest, ch, dest->quote);
+				}
+				break;
+			case '\\':
+				if (next == EOF) {
+					syntax();
+					return 1;
+				}
+				b_addqchr(dest, '\\', dest->quote);
+				b_addqchr(dest, b_getch(input), dest->quote);
+				break;
+			case '$':
+				if (handle_dollar(dest, ctx, input)!=0)
+					return 1;
+				break;
+			case '\'':
+				dest->nonnull = 1;
+				while (ch = b_getch(input), ch!=EOF && ch != '\'') {
+					if (input->__promptme == 0)
 						return 1;
-					}
-					break;
-				default:
-					syntax();   /* this is really an internal logic error */
+					b_addchr(dest,ch);
+				}
+				if (ch == EOF) {
+					syntax();
+					return 1;
+				}
+				break;
+			case '"':
+				dest->nonnull = 1;
+				dest->quote = !dest->quote;
+				break;
+			case ';':
+				done_word(dest, ctx);
+				done_pipe(ctx, PIPE_SEQ);
+				break;
+			case '&':
+				done_word(dest, ctx);
+				if (next == '&') {
+					b_getch(input);
+					done_pipe(ctx, PIPE_AND);
+				} else {
+					syntax_err();
 					return 1;
 				}
+				break;
+			case '|':
+				done_word(dest, ctx);
+				if (next == '|') {
+					b_getch(input);
+					done_pipe(ctx, PIPE_OR);
+				} else {
+					/* we could pick up a file descriptor choice here
+					 * with redirect_opt_num(), but bash doesn't do it.
+					 * "echo foo 2| cat" yields "foo 2". */
+					syntax_err();
+					return 1;
+				}
+				break;
+			default:
+				syntax();   /* this is really an internal logic error */
+				return 1;
 			}
 		}
 	}
+
 	/* complain if quote?  No, maybe we just finished a command substitution
 	 * that was quoted.  Example:
 	 * $ echo "`cat foo` plus more"
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
