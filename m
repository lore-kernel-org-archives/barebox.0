Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glpCv-0003Hh-TT
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 06:06:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id t13so10534478pgr.11
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2019 22:06:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 Jan 2019 22:06:24 -0800
Message-Id: <20190122060625.12337-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] block: Do not write past block device boundary during a
 flush
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When calling I/O functions of underlying block device driver we always
need to make sure that its size is small enough to not go past
device's boundary. Not only in get_chunk() and block_cache(), but in
writebuffer_flush() as well. Since the same code is used in three
different places, move it into a subroutine and adjust all of the
calls to ->write()/->read() accordingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/block.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/common/block.c b/common/block.c
index 35173c65f..3a031a4fc 100644
--- a/common/block.c
+++ b/common/block.c
@@ -38,6 +38,11 @@ struct chunk {
 
 #define BUFSIZE (PAGE_SIZE * 4)
 
+static int writebuffer_io_len(struct block_device *blk, struct chunk *chunk)
+{
+	return min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
+}
+
 /*
  * Write all dirty chunks back to the device
  */
@@ -51,7 +56,9 @@ static int writebuffer_flush(struct block_device *blk)
 
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
 		if (chunk->dirty) {
-			ret = blk->ops->write(blk, chunk->data, chunk->block_start, blk->rdbufsize);
+			ret = blk->ops->write(blk, chunk->data,
+					      chunk->block_start,
+					      writebuffer_io_len(blk, chunk));
 			if (ret < 0)
 				return ret;
 
@@ -118,10 +125,9 @@ static struct chunk *get_chunk(struct block_device *blk)
 		/* use last entry which is the most unused */
 		chunk = list_last_entry(&blk->buffered_blocks, struct chunk, list);
 		if (chunk->dirty) {
-			size_t num_blocks = min(blk->rdbufsize,
-					blk->num_blocks - chunk->block_start);
-			ret = blk->ops->write(blk, chunk->data, chunk->block_start,
-					      num_blocks);
+			ret = blk->ops->write(blk, chunk->data,
+					      chunk->block_start,
+					      writebuffer_io_len(blk, chunk));
 			if (ret < 0)
 				return ERR_PTR(ret);
 
@@ -145,7 +151,6 @@ static struct chunk *get_chunk(struct block_device *blk)
 static int block_cache(struct block_device *blk, int block)
 {
 	struct chunk *chunk;
-	size_t num_blocks;
 	int ret;
 
 	chunk = get_chunk(blk);
@@ -157,9 +162,8 @@ static int block_cache(struct block_device *blk, int block)
 	dev_dbg(blk->dev, "%s: %d to %d\n", __func__, chunk->block_start,
 		chunk->num);
 
-	num_blocks = min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
-
-	ret = blk->ops->read(blk, chunk->data, chunk->block_start, num_blocks);
+	ret = blk->ops->read(blk, chunk->data, chunk->block_start,
+			     writebuffer_io_len(blk, chunk));
 	if (ret) {
 		list_add_tail(&chunk->list, &blk->idle_blocks);
 		return ret;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
