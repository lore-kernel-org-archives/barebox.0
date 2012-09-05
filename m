Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9H4k-00046U-6o
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 14:59:31 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6B6E0FF8957
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 17:07:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Sep 2012 16:59:45 +0200
Message-Id: <1346857185-30532-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] uncompress: drop wrong BUG(uncompress_size)
To: barebox@lists.infradead.org

As uncompress_size is a static and will set if call uncompress_size multiple
time.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/uncompress.c |    2 --
 1 file changed, 2 deletions(-)

diff --git a/lib/uncompress.c b/lib/uncompress.c
index cdfebe9..3cf98dd 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -80,8 +80,6 @@ int uncompress(unsigned char *inbuf, int len,
 	int ret;
 	char *err;
 
-	BUG_ON(uncompress_size);
-
 	if (inbuf) {
 		ft = file_detect_type(inbuf);
 		uncompress_buf = NULL;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
