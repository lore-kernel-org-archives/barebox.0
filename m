Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQaJU-0008Vk-9u
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 08:58:17 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so1143291bkw.36
 for <barebox@lists.infradead.org>; Tue, 23 Oct 2012 01:58:12 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 23 Oct 2012 11:00:00 +0200
Message-Id: <1350982800-11777-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] devfs-core: add writesize in mtd partition ioctl
To: barebox@lists.infradead.org

Add writesize in mtd partition MEMGETINFO ioctl.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/devfs-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2788fe7..0d2f75a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -136,6 +136,7 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 			user->flags	= cdev->mtd->flags;
 			user->size	= cdev->mtd->size;
 			user->erasesize	= cdev->mtd->erasesize;
+			user->writesize	= cdev->mtd->writesize;
 			user->oobsize	= cdev->mtd->oobsize;
 			user->mtd	= cdev->mtd;
 			/* The below fields are obsolete */
-- 
1.8.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
