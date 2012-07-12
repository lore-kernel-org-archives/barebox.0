Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpFyJ-00066G-OI
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 09:46:10 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 12 Jul 2012 11:46:02 +0200
Message-Id: <1342086362-2129-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH v2] mtd: fix 'write: Invalid argument' while writing to
 nand-bb devices
To: barebox@lists.infradead.org

The 'off_t cur_ofs' variable was missed during the 64 bit conversion.
For the MEMGETBADBLOCK ioctl, a pointer to a loff_t is needed.

Also adjust the debug format strings.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 5b06a9e..519337e 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -60,7 +60,7 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	struct cdev *parent = bb->cdev_parent;
 	int ret, bytes = 0, now;
 
-	debug("%s %d %d\n", __func__, offset, count);
+	debug("%s 0x%08llx %d\n", __func__, offset, count);
 
 	while(count) {
 		ret = cdev_ioctl(parent, MEMGETBADBLOCK, &bb->offset);
@@ -96,7 +96,7 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 	int ret, now;
 	struct cdev *parent = bb->cdev_parent;
 	void *buf = bb->writebuf;
-	off_t cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
+	loff_t cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
 
 	while (count) {
 		ret = cdev_ioctl(parent, MEMGETBADBLOCK, &cur_ofs);
@@ -104,7 +104,7 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 			return ret;
 
 		if (ret) {
-			debug("skipping bad block at 0x%08x\n", cur_ofs);
+			debug("skipping bad block at 0x%08llx\n", cur_ofs);
 			bb->offset += bb->info.erasesize;
 			cur_ofs += bb->info.erasesize;
 			continue;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
