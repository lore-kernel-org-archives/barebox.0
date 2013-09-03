Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f176.google.com ([209.85.216.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGgGQ-0003ri-Ld
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 02:22:43 +0000
Received: by mail-qc0-f176.google.com with SMTP id u20so2300648qcx.21
 for <barebox@lists.infradead.org>; Mon, 02 Sep 2013 19:22:21 -0700 (PDT)
From: Darren Garnier <dgarnier@reinrag.net>
Message-Id: <32D9025B-5882-4030-A3DA-0CC66CEBD93C@reinrag.net>
Date: Mon, 2 Sep 2013 22:22:20 -0400
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] mtd: fix erasesize math for non power-of-2 devices
To: barebox@lists.infradead.org

Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
---
drivers/mtd/core.c | 19 ++++++++++++-------
fs/devfs-core.c    |  4 ++--
2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 70036aa..ed9658b 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -25,6 +25,7 @@
#include <ioctl.h>
#include <nand.h>
#include <errno.h>
+#include <linux/math64.h>

#include "mtd.h"

@@ -82,9 +83,6 @@ static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
	return retlen;
}

-#define NOTALIGNED(x) (x & (mtd->writesize - 1)) != 0
-#define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
-
#ifdef CONFIG_MTD_WRITE
static ssize_t mtd_op_write(struct cdev* cdev, const void *buf, size_t _count,
			  loff_t _offset, ulong flags)
@@ -112,15 +110,22 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
	return NULL;
}

+#define ALIGNED_OFFSET(offset, bs) ((bs & (bs-1)) == 0) ? \
+									offset & ~(bs-1) : \
+									bs * div_u64(offset,bs)
+#define ALIGNED_COUNT(count, bs) ((bs & (bs-1)) == 0) ? \
+									ALIGN(count,bs) : \
+									bs * div_u64(count+(bs-1),bs)
+
static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
{
	struct mtd_erase_region_info *e;
	loff_t ofs;

	if (mtd->numeraseregions == 0) {
-		ofs = *offset & ~(mtd->erasesize - 1);
+		ofs = ALIGNED_OFFSET(*offset, mtd->erasesize);
		*count += (*offset - ofs);
-		*count = ALIGN(*count, mtd->erasesize);
+		*count = ALIGNED_COUNT(*count, mtd->erasesize);
		*offset = ofs;
		return 0;
	}
@@ -129,14 +134,14 @@ static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
	if (!e)
		return -EINVAL;

-	ofs = *offset & ~(e->erasesize - 1);
+	ofs = ALIGNED_OFFSET(*offset, mtd->erasesize);
	*count += (*offset - ofs);

	e = mtd_find_erase_region(mtd, *offset + *count);
	if (!e)
		return -EINVAL;

-	*count = ALIGN(*count, e->erasesize);
+	*count = ALIGNED_COUNT(*count, e->erasesize);
	*offset = ofs;

	return 0;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index a92d434..757c9b7 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -24,6 +24,7 @@
#include <ioctl.h>
#include <linux/err.h>
#include <linux/mtd/mtd.h>
+#include <linux/math64.h>

LIST_HEAD(cdev_list);

@@ -197,11 +198,10 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
	case MEMGETREGIONINFO:
		if (cdev->mtd) {
			struct region_info_user *reg = buf;
-			int erasesize_shift = ffs(cdev->mtd->erasesize) - 1;

			reg->offset = cdev->offset;
			reg->erasesize = cdev->mtd->erasesize;
-			reg->numblocks = cdev->size >> erasesize_shift;
+			reg->numblocks = div_u64(cdev->size, cdev->mtd->erasesize);
			reg->regionindex = cdev->mtd->index;
		}
	break;
-- 
1.8.3.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
