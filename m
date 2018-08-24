Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2EF-0005Uo-W7
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id g23-v6so443763plq.9
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:41 -0700
Message-Id: <20180824025243.19479-23-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 22/24] block: Do not ignore error in blk->ops->write()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Getting a error from blk->ops->write() is not a very unlikely
event (happens quite often during new board bringup), so we need to
catch and propagate them to upper layers so they can be at least
reported properly. Change the code of all of the callers to bail out
as soon as blk->ops->write() fails.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/block.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/common/block.c b/common/block.c
index 219b943af..8d0de42d9 100644
--- a/common/block.c
+++ b/common/block.c
@@ -44,13 +44,17 @@ struct chunk {
 static int writebuffer_flush(struct block_device *blk)
 {
 	struct chunk *chunk;
+	int ret;
 
 	if (!IS_ENABLED(CONFIG_BLOCK_WRITE))
 		return 0;
 
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
 		if (chunk->dirty) {
-			blk->ops->write(blk, chunk->data, chunk->block_start, blk->rdbufsize);
+			ret = blk->ops->write(blk, chunk->data, chunk->block_start, blk->rdbufsize);
+			if (ret < 0)
+				return ret;
+
 			chunk->dirty = 0;
 		}
 	}
@@ -107,6 +111,7 @@ static void *block_get_cached(struct block_device *blk, int block)
 static struct chunk *get_chunk(struct block_device *blk)
 {
 	struct chunk *chunk;
+	int ret;
 
 	if (list_empty(&blk->idle_blocks)) {
 		/* use last entry which is the most unused */
@@ -114,8 +119,11 @@ static struct chunk *get_chunk(struct block_device *blk)
 		if (chunk->dirty) {
 			size_t num_blocks = min(blk->rdbufsize,
 					blk->num_blocks - chunk->block_start);
-			blk->ops->write(blk, chunk->data, chunk->block_start,
-					num_blocks);
+			ret = blk->ops->write(blk, chunk->data, chunk->block_start,
+					      num_blocks);
+			if (ret < 0)
+				return ERR_PTR(ret);
+
 			chunk->dirty = 0;
 		}
 
@@ -140,6 +148,9 @@ static int block_cache(struct block_device *blk, int block)
 	int ret;
 
 	chunk = get_chunk(blk);
+	if (IS_ERR(chunk))
+		return PTR_ERR(chunk);
+
 	chunk->block_start = block & ~blk->blkmask;
 
 	debug("%s: %d to %d\n", __func__, chunk->block_start,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
