Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWMkh-0005i6-Hd
 for barebox@lists.infradead.org; Mon, 21 May 2012 07:10:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 May 2012 09:09:55 +0200
Message-Id: <1337584195-6754-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] run_shell: run again on ctrl-c
To: barebox@lists.infradead.org

We can start a new interactive shell now using the 'sh' command on
the command line. This shell exits on ctrl-c though. Add a loop
around it to continue instead of exiting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 3d51e4c..8e8dd03 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1612,7 +1612,6 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 			}
 			if (inp->__promptme == 0)
 				printf("<INTERRUPT>\n");
-			inp->__promptme = 1;
 			temp.nonnull = 0;
 			temp.quote = 0;
 			free_pipe_list(ctx->list_head,0);
@@ -1807,9 +1806,12 @@ int run_shell(void)
 	struct in_str input;
 	struct p_context ctx;
 
-	setup_file_in_str(&input);
-	rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
-	release_context(&ctx);
+	do {
+		setup_file_in_str(&input);
+		rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
+		release_context(&ctx);
+	} while (!input.__promptme);
+
 	return rcode;
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
