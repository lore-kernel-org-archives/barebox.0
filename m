Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward13p.cmail.yandex.net ([2a02:6b8:0:1465::bc])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZwmU-0003dk-AZ
 for barebox@lists.infradead.org; Wed, 17 Aug 2016 09:05:04 +0000
Received: from smtp2o.mail.yandex.net (smtp2o.mail.yandex.net [37.140.190.27])
 by forward13p.cmail.yandex.net (Yandex) with ESMTP id ED7BD20E3E
 for <barebox@lists.infradead.org>; Wed, 17 Aug 2016 12:04:38 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed, 17 Aug 2016 12:04:31 +0300
Message-Id: <1471424671-13315-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH] properly remove menu entry
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 common/boot.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/boot.c b/common/boot.c
index 52e181d..5f2e5cf 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -322,6 +322,7 @@ void bootsources_menu(struct bootentries *bootentries, int timeout)
 
 	menu_show(bootentries->menu);
 
+	menu_remove_entry(bootentries->menu, back_entry);
 	free(back_entry);
 }
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
