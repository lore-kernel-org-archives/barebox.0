Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005Gd-99
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:18 +0200
Message-Id: <20170331053323.17821-10-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] fs: devfs-core: remove unused code
To: Barebox List <barebox@lists.infradead.org>

Partitions on mtd devices are implemented as mtd devices themselves
which have a ioctl hook. The DEVFS_IS_PARTITION flag is never set
for these devices, so the partition offset translation code in
fs/devfs-core.c is unused. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 68 ---------------------------------------------------------
 1 file changed, 68 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c51ea6a871..7b3754ed8e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -184,76 +184,8 @@ int cdev_flush(struct cdev *cdev)
 	return cdev->ops->flush(cdev);
 }
 
-static int partition_ioctl(struct cdev *cdev, int request, void *buf)
-{
-	int ret = 0;
-	loff_t offset, *_buf = buf;
-	struct mtd_info_user *user = buf;
-
-	switch (request) {
-	case MEMSETBADBLOCK:
-	case MEMSETGOODBLOCK:
-	case MEMGETBADBLOCK:
-		offset = *_buf;
-		offset += cdev->offset;
-		ret = cdev->ops->ioctl(cdev, request, &offset);
-		break;
-	case MEMGETINFO:
-		if (cdev->mtd) {
-			user->type	= cdev->mtd->type;
-			user->flags	= cdev->mtd->flags;
-			user->size	= cdev->mtd->size;
-			user->erasesize	= cdev->mtd->erasesize;
-			user->writesize	= cdev->mtd->writesize;
-			user->oobsize	= cdev->mtd->oobsize;
-			user->subpagesize = cdev->mtd->writesize >> cdev->mtd->subpage_sft;
-			user->mtd	= cdev->mtd;
-			/* The below fields are obsolete */
-			user->ecctype	= -1;
-			user->eccsize	= 0;
-			break;
-		}
-		if (!cdev->ops->ioctl) {
-			ret = -EINVAL;
-			break;
-		}
-		ret = cdev->ops->ioctl(cdev, request, buf);
-		break;
-#if (defined(CONFIG_NAND_ECC_HW) || defined(CONFIG_NAND_ECC_SOFT))
-	case ECCGETSTATS:
-#endif
-	case MEMERASE:
-		if (!cdev->ops->ioctl) {
-			ret = -EINVAL;
-			break;
-		}
-		ret = cdev->ops->ioctl(cdev, request, buf);
-		break;
-#ifdef CONFIG_PARTITION
-	case MEMGETREGIONINFO:
-		if (cdev->mtd) {
-			struct region_info_user *reg = buf;
-			int erasesize_shift = ffs(cdev->mtd->erasesize) - 1;
-
-			reg->offset = cdev->offset;
-			reg->erasesize = cdev->mtd->erasesize;
-			reg->numblocks = cdev->size >> erasesize_shift;
-			reg->regionindex = cdev->mtd->index;
-		}
-	break;
-#endif
-	default:
-		ret = -EINVAL;
-	}
-
-	return ret;
-}
-
 int cdev_ioctl(struct cdev *cdev, int request, void *buf)
 {
-	if (cdev->flags & DEVFS_IS_PARTITION)
-		return partition_ioctl(cdev, request, buf);
-
 	if (!cdev->ops->ioctl)
 		return -EINVAL;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
