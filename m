Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXCJH-0005bW-GJ
 for barebox@lists.infradead.org; Wed, 23 May 2012 14:13:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 16:13:03 +0200
Message-Id: <1337782383-6236-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] hush: do not convert to return code too early
To: barebox@lists.infradead.org

parse_stream_outer used to convert a exit value to a return code,
but parse_stream_outer maybe inside a recursion. This means that
the exit status is lost in this case. Test case:

if [ 0 = 0 ]; then
	false
	exit $?
fi

echo "shouldn't be here"

Without this patch "shouldn't be here" will be printed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 8e8dd03..3ac1d10 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -757,13 +757,14 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	if (child->sp) {
 		char * str = NULL;
 		struct p_context ctx1;
+		int rcode;
 
 		str = make_string((child->argv + i));
-		parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
+		rcode = parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
 		release_context(&ctx1);
 		free(str);
 
-		return last_return_code;
+		return rcode;
 	}
 
 	do_glob_in_argv(&globbuf, child->argc - i, &child->argv[i]);
@@ -1603,7 +1604,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 			}
 			if (code < -1) {	/* exit */
 				b_free(&temp);
-				return -code - 2;
+				return code;
 			}
 		} else {
 			if (ctx->old_flag != 0) {
@@ -1642,11 +1643,12 @@ static int parse_string_outer(struct p_context *ctx, const char *s, int flag)
 		setup_string_in_str(&input, p);
 		rcode = parse_stream_outer(ctx, &input, flag);
 		free(p);
-		return rcode;
 	} else {
 		setup_string_in_str(&input, s);
-		return parse_stream_outer(ctx, &input, flag);
+		rcode = parse_stream_outer(ctx, &input, flag);
 	}
+
+	return rcode;
 }
 
 static char *insert_var_value(char *inp)
@@ -1793,6 +1795,8 @@ static int source_script(const char *path, int argc, char *argv[])
 	}
 
 	ret = parse_string_outer(&ctx, script, FLAG_PARSE_SEMICOLON);
+	if (ret < -1)
+		ret = -ret - 2;
 
 	release_context(&ctx);
 	free(script);
@@ -1809,6 +1813,8 @@ int run_shell(void)
 	do {
 		setup_file_in_str(&input);
 		rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
+		if (rcode < -1)
+			rcode = -rcode - 2;
 		release_context(&ctx);
 	} while (!input.__promptme);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
