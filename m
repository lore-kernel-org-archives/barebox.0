Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sp-0006wK-Hd
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:50:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:39 +0100
Message-Id: <1323946179-9883-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] nand-bb: implement lseek in readonly mode
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c |   32 ++++++++++++++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index ae84ce1..1482374 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -45,6 +45,7 @@ struct nand_bb {
 	size_t raw_size;
 	size_t size;
 	off_t offset;
+	unsigned long flags;
 	void *writebuf;
 
 	struct cdev cdev;
@@ -171,6 +172,7 @@ static int nand_bb_open(struct cdev *cdev, unsigned long flags)
 	if (bb->open)
 		return -EBUSY;
 
+	bb->flags = flags;
 	bb->open = 1;
 	bb->offset = 0;
 	bb->needs_write = 0;
@@ -211,10 +213,40 @@ static int nand_bb_calc_size(struct nand_bb *bb)
 	return 0;
 }
 
+static off_t nand_bb_lseek(struct cdev *cdev, off_t __offset)
+{
+	struct nand_bb *bb = cdev->priv;
+	unsigned long raw_pos = 0;
+	uint32_t offset = __offset;
+	int ret;
+
+	/* lseek only in readonly mode */
+	if (bb->flags & O_ACCMODE)
+		return -ENOSYS;
+
+	while (raw_pos < bb->raw_size) {
+		off_t now = min(offset, bb->info.erasesize);
+
+		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)raw_pos);
+		if (ret < 0)
+			return ret;
+		if (!ret)
+			offset -= now;
+		raw_pos += now;
+		if (!offset) {
+			bb->offset = raw_pos;
+			return __offset;
+		}
+	}
+
+	return -EINVAL;
+}
+
 static struct file_operations nand_bb_ops = {
 	.open   = nand_bb_open,
 	.close  = nand_bb_close,
 	.read  	= nand_bb_read,
+	.lseek	= nand_bb_lseek,
 #ifdef CONFIG_NAND_WRITE
 	.write 	= nand_bb_write,
 	.erase	= nand_bb_erase,
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
