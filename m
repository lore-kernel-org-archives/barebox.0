Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJJOO-0001HF-OG
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 10:10:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Feb 2015 11:09:57 +0100
Message-Id: <1423130998-21853-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423130998-21853-1-git-send-email-s.hauer@pengutronix.de>
References: <1423130998-21853-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mtd: nand-bb: Fix accesses beyond device
To: Barebox List <barebox@lists.infradead.org>

When a block is marked bad after the bb device has been created
the real size of the bb device is smaller than the calculated size
on creation. In this case we can't rely on the upper layers anymore
that they won't pass read/write sizes in that fit into the device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index d888f90..e38517d 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -57,6 +57,11 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	debug("%s 0x%08llx %d\n", __func__, offset, count);
 
 	while (count) {
+		loff_t max = bb->mtd->size - bb->offset;
+
+		if (max <= 0)
+			break;
+
 		if (mtd_block_isbad(bb->mtd, offset)) {
 			printf("skipping bad block at 0x%08llx\n", bb->offset);
 			bb->offset += bb->mtd->erasesize;
@@ -66,6 +71,9 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 		now = min(count, (size_t)(bb->mtd->erasesize -
 				((size_t)bb->offset % bb->mtd->erasesize)));
 
+		if (now > max)
+			now = max;
+
 		ret = mtd_read(bb->mtd, bb->offset, now, &retlen, buf);
 		if (ret < 0)
 			return ret;
@@ -90,6 +98,11 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 	loff_t cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
 
 	while (count) {
+		loff_t max = bb->mtd->size - bb->offset;
+
+		if (max <= 0)
+			return -ENOSPC;
+
 		if (mtd_block_isbad(bb->mtd, cur_ofs)) {
 			debug("skipping bad block at 0x%08llx\n", cur_ofs);
 			bb->offset += bb->mtd->erasesize;
@@ -98,6 +111,9 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 		}
 
 		now = min(count, (size_t)(bb->mtd->erasesize));
+		if (now > max)
+			return -ENOSPC;
+
 		ret = mtd_write(bb->mtd, cur_ofs, now, &retlen, buf);
 		if (ret < 0)
 			return ret;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
