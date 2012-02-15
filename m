Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZxF-0004Fk-OC
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:11:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:10:50 +0100
Message-Id: <1329293450-10234-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] block: reimplement caching
To: barebox@lists.infradead.org

The current caching layer only has a single buffer for
writing and reading. The FAT driver often accesses the
fat and then data again, which currently can't be cached.
Reimplement this with a list of cached chunks. The number
of chunks and their sizes are currently hardcoded, but
that could be easily made configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c  |  274 ++++++++++++++++++++++++++++++++++++++++---------------
 include/block.h |   16 ++--
 2 files changed, 210 insertions(+), 80 deletions(-)

diff --git a/common/block.c b/common/block.c
index 24377c6..4253fc4 100644
--- a/common/block.c
+++ b/common/block.c
@@ -21,89 +21,161 @@
  */
 #include <common.h>
 #include <block.h>
+#include <malloc.h>
 #include <linux/err.h>
+#include <linux/list.h>
 
 #define BLOCKSIZE(blk)	(1 << blk->blockbits)
 
-#define WRBUFFER_LAST(blk)	(blk->wrblock + blk->wrbufblocks - 1)
+/* a chunk of contigous data */
+struct chunk {
+	void *data; /* data buffer */
+	int block_start; /* first block in this chunk */
+	int dirty; /* need to write back to device */
+	int num; /* number of chunk, debugging only */
+	struct list_head list;
+};
 
-#ifdef CONFIG_BLOCK_WRITE
+#define BUFSIZE (PAGE_SIZE * 16)
+
+/*
+ * Write all dirty chunks back to the device
+ */
 static int writebuffer_flush(struct block_device *blk)
 {
-	if (!blk->wrbufblocks)
-		return 0;
+	struct chunk *chunk;
 
-	blk->ops->write(blk, blk->wrbuf, blk->wrblock,
-			blk->wrbufblocks);
-
-	blk->wrbufblocks = 0;
+	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
+		if (chunk->dirty) {
+			blk->ops->write(blk, chunk->data, chunk->block_start, blk->rdbufsize);
+			chunk->dirty = 0;
+		}
+	}
 
 	return 0;
 }
 
-static int block_put(struct block_device *blk, const void *buf, int block)
+/*
+ * get the chunk containing a given block. Will return NULL if the
+ * block is not cached, the chunk otherwise.
+ */
+static struct chunk *chunk_get_cached(struct block_device *blk, int block)
 {
-	if (block >= blk->num_blocks)
-		return -EIO;
-
-	if (block < blk->wrblock || block > blk->wrblock + blk->wrbufblocks) {
-		writebuffer_flush(blk);
+	struct chunk *chunk;
+
+	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
+		if (block >= chunk->block_start &&
+				block < chunk->block_start + blk->rdbufsize) {
+			debug("%s: found %d in %d\n", __func__, block, chunk->num);
+			/*
+			 * move most recently used entry to the head of the list
+			 */
+			list_move(&chunk->list, &blk->buffered_blocks);
+			return chunk;
+		}
 	}
 
-	if (blk->wrbufblocks == 0) {
-		blk->wrblock = block;
-		blk->wrbufblocks = 1;
-	}
+	return NULL;
+}
+
+/*
+ * Get the data pointer for a given block. Will return NULL if
+ * the block is not cached, the data pointer otherwise.
+ */
+static void *block_get_cached(struct block_device *blk, int block)
+{
+	struct chunk *chunk;
 
-	memcpy(blk->wrbuf + (block - blk->wrblock) * BLOCKSIZE(blk),
-			buf, BLOCKSIZE(blk));
+	chunk = chunk_get_cached(blk, block);
+	if (!chunk)
+		return NULL;
 
-	if (block > WRBUFFER_LAST(blk))
-		blk->wrbufblocks++;
+	return chunk->data + (block - chunk->block_start) * BLOCKSIZE(blk);
+}
 
-	if (blk->wrbufblocks == blk->wrbufsize)
-		writebuffer_flush(blk);
+/*
+ * Get a data chunk, either from the idle list or if the idle list
+ * is empty, the least recently used is written back to disk and
+ * returned.
+ */
+static struct chunk *get_chunk(struct block_device *blk)
+{
+	struct chunk *chunk;
+
+	if (list_empty(&blk->idle_blocks)) {
+		/* use last entry which is the most unused */
+		chunk = list_last_entry(&blk->buffered_blocks, struct chunk, list);
+		if (chunk->dirty) {
+			size_t num_blocks = min(blk->rdbufsize,
+					blk->num_blocks - chunk->block_start);
+			blk->ops->write(blk, chunk->data, chunk->block_start,
+					num_blocks);
+			chunk->dirty = 0;
+		}
+
+		list_del(&chunk->list);
+	} else {
+		chunk = list_first_entry(&blk->idle_blocks, struct chunk, list);
+		list_del(&chunk->list);
+	}
 
-	return 0;
+	return chunk;
 }
 
-#else
-static int writebuffer_flush(struct block_device *blk)
+/*
+ * read a block into the cache. This assumes that the block is
+ * not cached already. By definition block_get_cached() for
+ * the same block will succeed after this call.
+ */
+static int block_cache(struct block_device *blk, int block)
 {
+	struct chunk *chunk;
+	size_t num_blocks;
+	int ret;
+
+	chunk = get_chunk(blk);
+	chunk->block_start = block & ~blk->blkmask;
+
+	debug("%s: %d to %d %s\n", __func__, chunk->block_start,
+			chunk->num);
+
+	num_blocks = min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
+
+	ret = blk->ops->read(blk, chunk->data, chunk->block_start, num_blocks);
+	if (ret) {
+		list_add_tail(&chunk->list, &blk->idle_blocks);
+		return ret;
+	}
+	list_add(&chunk->list, &blk->buffered_blocks);
+
 	return 0;
 }
-#endif
 
+/*
+ * Get the data for a block, either from the cache or from
+ * the device.
+ */
 static void *block_get(struct block_device *blk, int block)
 {
+	void *outdata;
 	int ret;
-	int num_blocks;
 
 	if (block >= blk->num_blocks)
-		return ERR_PTR(-EIO);
-
-	/* first look into write buffer */
-	if (block >= blk->wrblock && block <= WRBUFFER_LAST(blk))
-		return blk->wrbuf + (block - blk->wrblock) * BLOCKSIZE(blk);
+		return NULL;
 
-	/* then look into read buffer */
-	if (block >= blk->rdblock && block <= blk->rdblockend)
-		return blk->rdbuf + (block - blk->rdblock) * BLOCKSIZE(blk);
+	outdata = block_get_cached(blk, block);
+	if (outdata)
+		return outdata;
 
-	/*
-	 * If none of the buffers above match read the block from
-	 * the device
-	 */
-	num_blocks = min(blk->rdbufsize, blk->num_blocks - block);
-
-	ret = blk->ops->read(blk, blk->rdbuf, block, num_blocks);
+	ret = block_cache(blk, block);
 	if (ret)
-		return ERR_PTR(ret);
+		return NULL;
 
-	blk->rdblock = block;
-	blk->rdblockend = block + num_blocks - 1;
+	outdata = block_get_cached(blk, block);
+	if (!outdata)
+		BUG();
 
-	return blk->rdbuf;
+	return outdata;
 }
 
 static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
@@ -119,10 +191,10 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 		size_t now = BLOCKSIZE(blk) - (offset & mask);
 		void *iobuf = block_get(blk, block);
 
-		now = min(count, now);
+		if (!iobuf)
+			return -EIO;
 
-		if (IS_ERR(iobuf))
-			return PTR_ERR(iobuf);
+		now = min(count, now);
 
 		memcpy(buf, iobuf + (offset & mask), now);
 		buf += now;
@@ -135,8 +207,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 	while (blocks) {
 		void *iobuf = block_get(blk, block);
 
-		if (IS_ERR(iobuf))
-			return PTR_ERR(iobuf);
+		if (!iobuf)
+			return -EIO;
 
 		memcpy(buf, iobuf, BLOCKSIZE(blk));
 		buf += BLOCKSIZE(blk);
@@ -148,8 +220,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 	if (count) {
 		void *iobuf = block_get(blk, block);
 
-		if (IS_ERR(iobuf))
-			return PTR_ERR(iobuf);
+		if (!iobuf)
+			return -EIO;
 
 		memcpy(buf, iobuf, count);
 	}
@@ -158,6 +230,31 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 }
 
 #ifdef CONFIG_BLOCK_WRITE
+
+/*
+ * Put data into a block. This only overwrites the data in the
+ * cache and marks the corresponding chunk as dirty.
+ */
+static int block_put(struct block_device *blk, const void *buf, int block)
+{
+	struct chunk *chunk;
+	void *data;
+
+	if (block >= blk->num_blocks)
+		return -EINVAL;
+
+	data = block_get(blk, block);
+	if (!data)
+		BUG();
+
+	memcpy(data, buf, 1 << blk->blockbits);
+
+	chunk = chunk_get_cached(blk, block);
+	chunk->dirty = 1;
+
+	return 0;
+}
+
 static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 		unsigned long offset, ulong flags)
 {
@@ -165,7 +262,7 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 	unsigned long mask = BLOCKSIZE(blk) - 1;
 	unsigned long block = offset >> blk->blockbits;
 	size_t icount = count;
-	int blocks;
+	int blocks, ret;
 
 	if (offset & mask) {
 		size_t now = BLOCKSIZE(blk) - (offset & mask);
@@ -173,11 +270,14 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 
 		now = min(count, now);
 
-		if (IS_ERR(iobuf))
-			return PTR_ERR(iobuf);
+		if (!iobuf)
+			return -EIO;
 
 		memcpy(iobuf + (offset & mask), buf, now);
-		block_put(blk, iobuf, block);
+		ret = block_put(blk, iobuf, block);
+		if (ret)
+			return ret;
+
 		buf += now;
 		count -= now;
 		block++;
@@ -186,7 +286,10 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 	blocks = count >> blk->blockbits;
 
 	while (blocks) {
-		block_put(blk, buf, block);
+		ret = block_put(blk, buf, block);
+		if (ret)
+			return ret;
+
 		buf += BLOCKSIZE(blk);
 		blocks--;
 		block++;
@@ -196,11 +299,13 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 	if (count) {
 		void *iobuf = block_get(blk, block);
 
-		if (IS_ERR(iobuf))
-			return PTR_ERR(iobuf);
+		if (!iobuf)
+			return -EIO;
 
 		memcpy(iobuf, buf, count);
-		block_put(blk, iobuf, block);
+		ret = block_put(blk, iobuf, block);
+		if (ret)
+			return ret;
 	}
 
 	return icount;
@@ -221,7 +326,7 @@ static int block_flush(struct cdev *cdev)
 	return writebuffer_flush(blk);
 }
 
-struct file_operations block_ops = {
+static struct file_operations block_ops = {
 	.read	= block_read,
 #ifdef CONFIG_BLOCK_WRITE
 	.write	= block_write,
@@ -235,19 +340,27 @@ int blockdevice_register(struct block_device *blk)
 {
 	size_t size = blk->num_blocks * BLOCKSIZE(blk);
 	int ret;
+	int i;
 
 	blk->cdev.size = size;
 	blk->cdev.dev = blk->dev;
 	blk->cdev.ops = &block_ops;
 	blk->cdev.priv = blk;
-	blk->rdbufsize = PAGE_SIZE >> blk->blockbits;
-	blk->rdbuf = xmalloc(PAGE_SIZE);
-	blk->rdblock = 1;
-	blk->rdblockend = 0;
-	blk->wrbufsize = PAGE_SIZE >> blk->blockbits;
-	blk->wrbuf = xmalloc(PAGE_SIZE);
-	blk->wrblock = 0;
-	blk->wrbufblocks = 0;
+	blk->rdbufsize = BUFSIZE >> blk->blockbits;
+
+	INIT_LIST_HEAD(&blk->buffered_blocks);
+	INIT_LIST_HEAD(&blk->idle_blocks);
+	blk->blkmask = blk->rdbufsize - 1;
+
+	debug("%s: rdbufsize: %d blockbits: %d blkmask: 0x%08x\n", __func__, blk->rdbufsize, blk->blockbits,
+			blk->blkmask);
+
+	for (i = 0; i < 8; i++) {
+		struct chunk *chunk = xzalloc(sizeof(*chunk));
+		chunk->data = xmalloc(BUFSIZE);
+		chunk->num = i;
+		list_add_tail(&chunk->list, &blk->idle_blocks);
+	}
 
 	ret = devfs_create(&blk->cdev);
 	if (ret)
@@ -258,6 +371,21 @@ int blockdevice_register(struct block_device *blk)
 
 int blockdevice_unregister(struct block_device *blk)
 {
+	struct chunk *chunk, *tmp;
+
+	writebuffer_flush(blk);
+
+	list_for_each_entry_safe(chunk, tmp, &blk->buffered_blocks, list) {
+		free(chunk->data);
+		free(chunk);
+	}
+
+	list_for_each_entry_safe(chunk, tmp, &blk->idle_blocks, list) {
+		free(chunk->data);
+		free(chunk);
+	}
+
+	devfs_remove(&blk->cdev);
+
 	return 0;
 }
-
diff --git a/include/block.h b/include/block.h
index aaab4e3..cfa4cb9 100644
--- a/include/block.h
+++ b/include/block.h
@@ -8,21 +8,23 @@ struct block_device;
 struct block_device_ops {
 	int (*read)(struct block_device *, void *buf, int block, int num_blocks);
 	int (*write)(struct block_device *, const void *buf, int block, int num_blocks);
+	int (*read_start)(struct block_device *, void *buf, int block, int num_blocks);
+	int (*read_done)(struct block_device *);
 };
 
+struct chunk;
+
 struct block_device {
 	struct device_d *dev;
 	struct block_device_ops *ops;
 	int blockbits;
 	int num_blocks;
-	void *rdbuf; /* read buffer */
 	int rdbufsize;
-	int rdblock; /* start block in read buffer */
-	int rdblockend; /* end block in read buffer */
-	void *wrbuf; /* write buffer */
-	int wrblock; /* start block in write buffer */
-	int wrbufblocks; /* number of blocks currently in write buffer */
-	int wrbufsize; /* size of write buffer in blocks */
+	int blkmask;
+
+	struct list_head buffered_blocks;
+	struct list_head idle_blocks;
+
 	struct cdev cdev;
 };
 
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
