Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StAD3-00084o-AX
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 04:25:30 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 81599FF9319
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 06:31:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Jul 2012 06:25:58 +0200
Message-Id: <1343017563-27932-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] decompress_unlzo: define decompress_unlzo as decompress
To: barebox@lists.infradead.org

so we can use decompress in the decompressor
this will simplify multi decompress support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/decompress_unlzo.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 0e6a7ad..56abfc6 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -289,3 +289,4 @@ exit_1:
 exit:
 	return ret;
 }
+#define decompress decompress_unlzo
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
