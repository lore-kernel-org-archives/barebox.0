Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vu0mq-0004Wy-49
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 14:10:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2013 15:10:20 +0100
Message-Id: <1387548620-26893-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387548620-26893-1-git-send-email-s.hauer@pengutronix.de>
References: <1387548620-26893-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mtd: Add subpagesize to mtd_info_user
To: barebox@lists.infradead.org

ubiformat needs the subpagesize to work correctly. The kernel uses
sysfs to pass the subpagesize, but in barebox we have the possibility
to extend struct mtd_info_user. Add a corresponding field and use it
in ubiformat.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c          | 1 +
 fs/devfs-core.c             | 1 +
 include/linux/mtd/mtd-abi.h | 1 +
 lib/libmtd.c                | 2 +-
 4 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index fc2ac00..6db1c6d 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -236,6 +236,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		user->erasesize	= mtd->erasesize;
 		user->writesize	= mtd->writesize;
 		user->oobsize	= mtd->oobsize;
+		user->subpagesize = mtd->writesize >> mtd->subpage_sft;
 		user->mtd	= mtd;
 		/* The below fields are obsolete */
 		user->ecctype	= -1;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index a92d434..44f0169 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -171,6 +171,7 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 			user->erasesize	= cdev->mtd->erasesize;
 			user->writesize	= cdev->mtd->writesize;
 			user->oobsize	= cdev->mtd->oobsize;
+			user->subpagesize = cdev->mtd->writesize >> cdev->mtd->subpage_sft;
 			user->mtd	= cdev->mtd;
 			/* The below fields are obsolete */
 			user->ecctype	= -1;
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index fa8e36f..11d51e2 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -82,6 +82,7 @@ struct mtd_info_user {
 	uint32_t ecctype;
 	uint32_t eccsize;
 	struct mtd_info *mtd;
+	uint32_t subpagesize;
 };
 
 struct region_info_user {
diff --git a/lib/libmtd.c b/lib/libmtd.c
index eecc760..1606b87 100644
--- a/lib/libmtd.c
+++ b/lib/libmtd.c
@@ -308,6 +308,7 @@ int mtd_get_dev_info(const char *node, struct mtd_dev_info *mtd)
 	mtd->eb_size = ui.erasesize;
 	mtd->min_io_size = ui.writesize;
 	mtd->oob_size = ui.oobsize;
+	mtd->subpage_size = ui.subpagesize;
 
 	if (mtd->min_io_size <= 0) {
 		errmsg("%s has insane min. I/O unit size %d",
@@ -356,7 +357,6 @@ int mtd_get_dev_info(const char *node, struct mtd_dev_info *mtd)
 
 	if (ui.flags & MTD_WRITEABLE)
 		mtd->writable = 1;
-	mtd->subpage_size = mtd->min_io_size;
 
 	close(fd);
 
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
