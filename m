Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6PzC-0006CD-MP
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:26:15 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4D5C1DC1885
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 19:36:41 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 15 Feb 2013 19:25:05 +0100
Message-Id: <1360952705-1808-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] hush: return exit code a real instead of 0/1 only
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/hush.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 602f8f1..3e89a11 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1639,7 +1639,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 		b_free(&temp);
 	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
 
-	return (code != 0) ? 1 : 0;
+	return code;
 }
 
 static int parse_string_outer(struct p_context *ctx, const char *s, int flag)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
