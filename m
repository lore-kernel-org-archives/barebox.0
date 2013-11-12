Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOZ-000610-WC
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:16 +0100
Message-Id: <1384264339-15986-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] consolidate syntax() and syntax_err()
To: barebox@lists.infradead.org

syntax is defined as syntax_err. Drop syntax_err and call syntax instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 95054b3..3c4d244 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -132,7 +132,6 @@ extern int do_bootd(int flag, int argc, char *argv[]);      /* do_bootd */
 
 #define EXIT_SUCCESS 0
 #define EOF -1
-#define syntax() syntax_err()
 #define xstrdup strdup
 #define error_msg printf
 
@@ -265,7 +264,7 @@ struct in_str {
 
 #define final_printf debug
 
-static void syntax_err(void) {
+static void syntax(void) {
 	 printf("syntax error\n");
 }
 
@@ -1551,7 +1550,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 				b_getch(input);
 				done_pipe(ctx, PIPE_AND);
 			} else {
-				syntax_err();
+				syntax();
 				return 1;
 			}
 			break;
@@ -1564,7 +1563,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 				/* we could pick up a file descriptor choice here
 				 * with redirect_opt_num(), but bash doesn't do it.
 				 * "echo foo 2| cat" yields "foo 2". */
-				syntax_err();
+				syntax();
 				return 1;
 			}
 			break;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
