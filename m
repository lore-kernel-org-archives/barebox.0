Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qe0-f47.google.com ([209.85.128.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGymx-0004wN-Ov
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 22:09:33 +0000
Received: by mail-qe0-f47.google.com with SMTP id b4so1225043qen.34
 for <barebox@lists.infradead.org>; Tue, 03 Sep 2013 15:09:10 -0700 (PDT)
From: Darren Garnier <dgarnier@reinrag.net>
Message-Id: <9C79E0B3-7644-4DEB-88C6-C982C2569078@reinrag.net>
Date: Tue, 3 Sep 2013 18:09:06 -0400
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
Subject: [PATCH v2] mtd: fix erasesize math for non power-of-2 devices
To: barebox@lists.infradead.org

This patch is necessary to support Atmel's AT45 DataFlash
family of enhanced SPI based flash devices. They have a rather odd
pagesize of 0x420 bytes and an erasesize of 8 of these blocks.

Newer generations of this chip are capable of "power of 2" operation
with 1k pagesize.  However, older chips must use the larger
size and the new chips default to the 1056 byte pagesize unless
an OTP bit is set.

v2 of this patch incorporating Sacha and Robert's comments on readablity
and use of header provided macros.

Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
---
drivers/mtd/core.c | 28 +++++++++++++++++++++-------
fs/devfs-core.c    |  4 ++--
2 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 70036aa..8b4a59a 100644
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
@@ -112,15 +110,31 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
	return NULL;
}

+static loff_t aligned_offset(loff_t offset, uint32_t bs)
+{
+	if (is_pow_of_2(bs))
+		return ALIGN_DOWN(offset, bs);
+	else
+		return bs * div_u64(offset, bs);
+}
+
+static size_t aligned_count(size_t count, uint32_t bs)
+{
+	if (is_pow_of_2(bs))
+		return ALIGN(count, bs);
+	else
+		return bs * div_u64(count + (bs - 1), bs);
+}
+
static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
{
	struct mtd_erase_region_info *e;
	loff_t ofs;

	if (mtd->numeraseregions == 0) {
-		ofs = *offset & ~(mtd->erasesize - 1);
+		ofs = aligned_offset(*offset, mtd->erasesize);
		*count += (*offset - ofs);
-		*count = ALIGN(*count, mtd->erasesize);
+		*count = aligned_count(*count, mtd->erasesize);
		*offset = ofs;
		return 0;
	}
@@ -129,14 +143,14 @@ static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
	if (!e)
		return -EINVAL;

-	ofs = *offset & ~(e->erasesize - 1);
+	ofs = aligned_offset(*offset, e->erasesize);
	*count += (*offset - ofs);

	e = mtd_find_erase_region(mtd, *offset + *count);
	if (!e)
		return -EINVAL;

-	*count = ALIGN(*count, e->erasesize);
+	*count = aligned_count(*count, e->erasesize);
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
