Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOe-00061D-RE
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:15 +0100
Message-Id: <1384264339-15986-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] hush: rename __promptme to interrupt
To: barebox@lists.infradead.org

the name '__promptme' does not make clear what the variable means. rename
it to 'interrupt' which is set to true when the user has hit ctrl-c.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index f0f2eda..95054b3 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -254,7 +254,7 @@ typedef struct {
  * available?  Where is it documented? */
 struct in_str {
 	const char *p;
-	int __promptme;
+	int interrupt;
 	int promptmode;
 	int (*get) (struct in_str *);
 	int (*peek) (struct in_str *);
@@ -422,8 +422,6 @@ static void get_user_input(struct in_str *i)
 	static char the_command[CONFIG_CBSIZE];
 	char *prompt;
 
-	i->__promptme = 1;
-
 	if (i->promptmode == 1)
 		prompt = getprompt();
 	else
@@ -431,7 +429,7 @@ static void get_user_input(struct in_str *i)
 
 	n = readline(prompt, console_buffer, CONFIG_CBSIZE);
 	if (n == -1 ) {
-		i->__promptme = 0;
+		i->interrupt = 1;
 		n = 0;
 	}
 
@@ -456,7 +454,7 @@ static void get_user_input(struct in_str *i)
 		}
 	}
 
-	if (i->__promptme == 0) {
+	if (i->interrupt) {
 		the_command[0] = '\n';
 		the_command[1] = '\0';
 	}
@@ -503,7 +501,7 @@ static void setup_file_in_str(struct in_str *i)
 {
 	i->peek = file_peek;
 	i->get = file_get;
-	i->__promptme = 1;
+	i->interrupt = 0;
 	i->promptmode = 1;
 	i->p = NULL;
 }
@@ -512,7 +510,7 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 {
 	i->peek = static_peek;
 	i->get = static_get;
-	i->__promptme = 1;
+	i->interrupt = 0;
 	i->promptmode = 1;
 	i->p = s;
 }
@@ -1470,7 +1468,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 
 	while ((ch = b_getch(input)) != EOF) {
 		m = map[ch];
-		if (input->__promptme == 0)
+		if (input->interrupt)
 			return 1;
 		next = (ch == '\n') ? 0 : b_peek(input);
 
@@ -1528,7 +1526,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 			dest->nonnull = 1;
 			b_addchr(dest, '\'');
 			while (ch = b_getch(input), ch != EOF && ch != '\'') {
-				if (input->__promptme == 0)
+				if (input->interrupt)
 					return 1;
 				b_addchr(dest,ch);
 			}
@@ -1660,7 +1658,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 				free(ctx->stack);
 				b_reset(&temp);
 			}
-			if (inp->__promptme == 0)
+			if (inp->interrupt)
 				printf("<INTERRUPT>\n");
 			temp.nonnull = 0;
 			temp.quote = 0;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
