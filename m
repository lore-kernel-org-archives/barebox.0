Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tb6KJ-00015N-Fg
 for barebox@lists.infradead.org; Wed, 21 Nov 2012 09:10:36 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D678BFFA2B2
 for <barebox@lists.infradead.org>; Wed, 21 Nov 2012 10:21:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 21 Nov 2012 10:07:47 +0100
Message-Id: <1353488867-24020-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353488867-24020-1-git-send-email-plagnioj@jcrosoft.com>
References: <87boesdjk4.fsf@free.fr>
 <1353488867-24020-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] bmp: specify we need to keep the data read from the file
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/gui/bmp.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index d576121..fce0e69 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -125,6 +125,7 @@ static struct image_renderer bmp = {
 	.open = bmp_open,
 	.close = bmp_close,
 	.renderer = bmp_renderer,
+	.keep_file_data = 1,
 };
 
 static int bmp_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
