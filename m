Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ccY-0006mr-3C
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 18:10:38 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B33E210544F4
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 20:15:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Aug 2012 20:10:42 +0200
Message-Id: <1344795043-13815-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120812180535.GK6271@game.jcrosoft.org>
 <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] fs/fat: add filetype
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fat/fat.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 5e6c81c..01724a2 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -430,6 +430,7 @@ static struct fs_driver_d fat_driver = {
 	.write     = fat_write,
 	.truncate  = fat_truncate,
 #endif
+	.type = filetype_fat,
 	.flags     = 0,
 	.drv = {
 		.probe  = fat_probe,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
