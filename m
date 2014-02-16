Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEtXa-0004bB-M8
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 04:41:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 08:40:49 +0400
Message-Id: <1392525650-5551-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
References: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/7] lib/math.c: Fix possible crash
To: barebox@lists.infradead.org

Crash can be caused if xzalloc() for "numstack" fails.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 lib/math.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/lib/math.c b/lib/math.c
index a4731ed..1e3ee85 100644
--- a/lib/math.c
+++ b/lib/math.c
@@ -543,11 +543,11 @@ static arith_t evaluate_string(arith_state_t *math_state, const char *expr)
 	/* Stack of operator tokens */
 	operator *const stack = xzalloc(expr_len * sizeof(stack[0]));
 	operator *stackptr = stack;
-	arith_t result;
+	arith_t result = -1;
 
 	if (numstack == NULL || stack == NULL) {
 		errmsg = "out of memory";
-		goto err_with_custom_msg;
+		goto ret;
 	}
 
 	/* Start with a left paren */
@@ -565,7 +565,7 @@ static arith_t evaluate_string(arith_state_t *math_state, const char *expr)
 		if (arithval == '\0') {
 			if (expr == start_expr) {
 				/* Null expression */
-				numstack->val = 0;
+				result = numstack->val;
 				goto ret;
 			}
 
@@ -596,6 +596,7 @@ static arith_t evaluate_string(arith_state_t *math_state, const char *expr)
 				free(numstack->var);
 				numstack->var = NULL;
 			}
+			result = numstack->val;
 			goto ret;
 		}
 
@@ -733,7 +734,7 @@ static arith_t evaluate_string(arith_state_t *math_state, const char *expr)
 				}
 				errmsg = arith_apply(math_state, prev_op, numstack, &numstackptr);
 				if (errmsg)
-					goto err_with_custom_msg;
+					goto ret;
 			}
 			if (op == TOK_RPAREN)
 				goto err;
@@ -746,10 +747,7 @@ next: ;
 
 err:
 	errmsg = "arithmetic syntax error";
-err_with_custom_msg:
-	result = -1;
 ret:
-	result = numstack->val;
 	free(stack);
 	free(numstack);
 	math_state->errmsg = errmsg;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
