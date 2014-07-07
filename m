Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X44YY-0005Fl-Ua
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 08:45:52 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 7 Jul 2014 10:45:08 +0200
Message-ID: <1404722708-4623-1-git-send-email-Herve.CODINA@celad.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] hush: Fix error code returned value
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Just returns error code instead of 0 or 1.

With this fix, $? is set to child exit code in all cases.
Without this fix, /child $PATH;echo $? displays 1 even if
child script calls exit with a specific non zero error code.

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 common/hush.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 6be43cf..f6aaa03 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1724,7 +1724,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 		b_free(&temp);
 	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
 
-	return (code != 0) ? 1 : 0;
+	return code;
 }
 
 static int parse_string_outer(struct p_context *ctx, const char *s, int flag)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
