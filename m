Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOe-00061E-RC
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:19 +0100
Message-Id: <1384264339-15986-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
References: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/10] hush: refactor reserved_word()
To: barebox@lists.infradead.org

Save indentation level for easier readability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 64 +++++++++++++++++++++++++++++------------------------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index d844e74..abe2ced 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1201,52 +1201,52 @@ static int reserved_word(o_string *dest, struct p_context *ctx)
 	for (i = 0; i < ARRAY_SIZE(reserved_list); i++) {
 		r = &reserved_list[i];
 
-		if (strcmp(dest->data, r->literal) == 0) {
-
-			debug("found reserved word %s, code %d\n",r->literal,r->code);
+		if (strcmp(dest->data, r->literal))
+			continue;
 
-			if (r->flag & FLAG_START) {
-				struct p_context *new = xmalloc(sizeof(struct p_context));
+		debug("found reserved word %s, code %d\n",r->literal,r->code);
 
-				debug("push stack\n");
+		if (r->flag & FLAG_START) {
+			struct p_context *new = xmalloc(sizeof(struct p_context));
 
-				if (ctx->w == RES_IN || ctx->w == RES_FOR) {
-					syntax();
-					free(new);
-					ctx->w = RES_SNTX;
-					b_reset(dest);
+			debug("push stack\n");
 
-					return 1;
-				}
-				*new = *ctx;   /* physical copy */
-				initialize_context(ctx);
-				ctx->stack = new;
-			} else if (ctx->w == RES_NONE || !(ctx->old_flag & (1 << r->code))) {
-				syntax_unexpected_token(r->literal);
+			if (ctx->w == RES_IN || ctx->w == RES_FOR) {
+				syntax();
+				free(new);
 				ctx->w = RES_SNTX;
 				b_reset(dest);
+
 				return 1;
 			}
+			*new = *ctx;   /* physical copy */
+			initialize_context(ctx);
+			ctx->stack = new;
+		} else if (ctx->w == RES_NONE || !(ctx->old_flag & (1 << r->code))) {
+			syntax_unexpected_token(r->literal);
+			ctx->w = RES_SNTX;
+			b_reset(dest);
+			return 1;
+		}
 
-			ctx->w = r->code;
-			ctx->old_flag = r->flag;
+		ctx->w = r->code;
+		ctx->old_flag = r->flag;
 
-			if (ctx->old_flag & FLAG_END) {
-				struct p_context *old;
+		if (ctx->old_flag & FLAG_END) {
+			struct p_context *old;
 
-				debug("pop stack\n");
+			debug("pop stack\n");
 
-				done_pipe(ctx,PIPE_SEQ);
-				old = ctx->stack;
-				old->child->group = ctx->list_head;
-				*ctx = *old;   /* physical copy */
-				free(old);
-			}
+			done_pipe(ctx,PIPE_SEQ);
+			old = ctx->stack;
+			old->child->group = ctx->list_head;
+			*ctx = *old;   /* physical copy */
+			free(old);
+		}
 
-			b_reset(dest);
+		b_reset(dest);
 
-			return 1;
-		}
+		return 1;
 	}
 
 	return 0;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
