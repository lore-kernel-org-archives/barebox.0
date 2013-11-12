Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOZ-000611-WC
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:17 +0100
Message-Id: <1384264339-15986-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] hush: Be more informative on syntax error
To: barebox@lists.infradead.org

Print the token that led to a syntax error, at least for the common
case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 3c4d244..35c3c3c 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -264,8 +264,27 @@ struct in_str {
 
 #define final_printf debug
 
-static void syntax(void) {
-	 printf("syntax error\n");
+static void syntax(void)
+{
+	printf("syntax error\n");
+}
+
+static void syntaxf(const char *fmt, ...)
+{
+	va_list args;
+
+	printf("syntax error: ");
+
+	va_start(args, fmt);
+
+	vprintf(fmt, args);
+
+	va_end(args);
+}
+
+static void syntax_unexpected_token(const char *token)
+{
+	syntaxf("unexpected token `%s'\n", token);
 }
 
 /*   o_string manipulation: */
@@ -1201,7 +1220,7 @@ static int reserved_word(o_string *dest, struct p_context *ctx)
 				initialize_context(ctx);
 				ctx->stack = new;
 			} else if (ctx->w == RES_NONE || !(ctx->old_flag & (1 << r->code))) {
-				syntax();
+				syntax_unexpected_token(r->literal);
 				ctx->w = RES_SNTX;
 				b_reset(dest);
 				return 1;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
