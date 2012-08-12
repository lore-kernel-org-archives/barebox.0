Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Wfl-0001Xv-Uy
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 11:49:34 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 262C4105431A
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 13:54:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Aug 2012 13:49:38 +0200
Message-Id: <1344772179-13591-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
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
