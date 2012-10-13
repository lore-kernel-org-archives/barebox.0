Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMwOA-0007kq-JE
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 07:44:03 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so2027740wgb.18
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 00:43:58 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Sat, 13 Oct 2012 09:45:28 +0200
Message-Id: <1350114328-23060-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] mtd-core: add writesize in MEMGETINFO ioctl
To: barebox@lists.infradead.org

Add writesize in MEMGETINFO ioctl.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mtd/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6550741..7c323a1 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -143,6 +143,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		user->flags	= mtd->flags;
 		user->size	= mtd->size;
 		user->erasesize	= mtd->erasesize;
+		user->writesize	= mtd->writesize;
 		user->oobsize	= mtd->oobsize;
 		user->mtd	= mtd;
 		/* The below fields are obsolete */
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
