Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Yxh-0006vP-UF
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 11:16:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2020 12:16:40 +0100
Message-Id: <20200214111641.6350-3-s.hauer@pengutronix.de>
In-Reply-To: <20200214111641.6350-1-s.hauer@pengutronix.de>
References: <20200214111641.6350-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 3/4] block: Implement discard_range
To: Barebox List <barebox@lists.infradead.org>

This implements the discard_range hook. When a range of data is
discarded then we do not have to read it from the device and can
pass a zeroed buffer instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c  | 21 +++++++++++++++++++++
 include/block.h |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/common/block.c b/common/block.c
index 97cf5dc4de..8b43c3c83a 100644
--- a/common/block.c
+++ b/common/block.c
@@ -161,6 +161,14 @@ static int block_cache(struct block_device *blk, int block)
 	dev_dbg(blk->dev, "%s: %d to %d\n", __func__, chunk->block_start,
 		chunk->num);
 
+	if (chunk->block_start * BLOCKSIZE(blk) >= blk->discard_start &&
+	    chunk->block_start * BLOCKSIZE(blk) + writebuffer_io_len(blk, chunk)
+	    <= blk->discard_start + blk->discard_size) {
+		memset(chunk->data, 0, writebuffer_io_len(blk, chunk));
+		list_add(&chunk->list, &blk->buffered_blocks);
+		return 0;
+	}
+
 	ret = blk->ops->read(blk, chunk->data, chunk->block_start,
 			     writebuffer_io_len(blk, chunk));
 	if (ret) {
@@ -337,11 +345,23 @@ static int block_op_flush(struct cdev *cdev)
 {
 	struct block_device *blk = cdev->priv;
 
+	blk->discard_start = blk->discard_size = 0;
+
 	return writebuffer_flush(blk);
 }
 
 static int block_op_close(struct cdev *cdev) __alias(block_op_flush);
 
+static int block_op_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
+{
+	struct block_device *blk = cdev->priv;
+
+	blk->discard_start = offset;
+	blk->discard_size = count;
+
+	return 0;
+}
+
 static struct cdev_operations block_ops = {
 	.read	= block_op_read,
 #ifdef CONFIG_BLOCK_WRITE
@@ -349,6 +369,7 @@ static struct cdev_operations block_ops = {
 #endif
 	.close	= block_op_close,
 	.flush	= block_op_flush,
+	.discard_range = block_op_discard_range,
 };
 
 int blockdevice_register(struct block_device *blk)
diff --git a/include/block.h b/include/block.h
index 91377679b0..d35c4ecdf4 100644
--- a/include/block.h
+++ b/include/block.h
@@ -23,6 +23,9 @@ struct block_device {
 	int rdbufsize;
 	int blkmask;
 
+	loff_t discard_start;
+	loff_t discard_size;
+
 	struct list_head buffered_blocks;
 	struct list_head idle_blocks;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
