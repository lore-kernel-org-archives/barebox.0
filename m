Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPTk1-0002IP-HV
 for barebox@lists.infradead.org; Wed, 02 May 2012 07:12:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 May 2012 09:12:46 +0200
Message-Id: <1335942766-31064-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] hush: bail out of scripts on syntax error
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de

On a systax error we have to bail out of the shell instead of
setting inp->p to NULL and crash barebox with a NULL pointer
deref. This only happened in scripts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 053d9a5..f432c0c 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1436,6 +1436,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 		rcode = parse_stream(&temp, ctx, inp, '\n');
 		if (rcode != 1 && ctx->old_flag != 0) {
 			syntax();
+			return 1;
 		}
 		if (rcode != 1 && ctx->old_flag == 0) {
 			done_word(&temp, ctx);
@@ -1460,8 +1461,9 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 			inp->__promptme = 1;
 			temp.nonnull = 0;
 			temp.quote = 0;
-			inp->p = NULL;
 			free_pipe_list(ctx->list_head,0);
+			b_free(&temp);
+			return 1;
 		}
 		b_free(&temp);
 	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
