Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCJL-0005eu-SJ
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:58:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id s198so7229380pgs.2
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:58:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:58:15 -0800
Message-Id: <20190112055815.12180-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190112055815.12180-1-andrew.smirnov@gmail.com>
References: <20190112055815.12180-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] block: Replace debug() with dev_dbg()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of the functions using debug() in that file have enough info to
use dev_dbg instead. Convert all of the uses of debug() to dev_dbg()
in order to get more informative debug output.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/block.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/common/block.c b/common/block.c
index 549df71a9d..35173c65f1 100644
--- a/common/block.c
+++ b/common/block.c
@@ -76,7 +76,8 @@ static struct chunk *chunk_get_cached(struct block_device *blk, int block)
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
 		if (block >= chunk->block_start &&
 				block < chunk->block_start + blk->rdbufsize) {
-			debug("%s: found %d in %d\n", __func__, block, chunk->num);
+			dev_dbg(blk->dev, "%s: found %d in %d\n", __func__,
+				block, chunk->num);
 			/*
 			 * move most recently used entry to the head of the list
 			 */
@@ -153,8 +154,8 @@ static int block_cache(struct block_device *blk, int block)
 
 	chunk->block_start = block & ~blk->blkmask;
 
-	debug("%s: %d to %d\n", __func__, chunk->block_start,
-			chunk->num);
+	dev_dbg(blk->dev, "%s: %d to %d\n", __func__, chunk->block_start,
+		chunk->num);
 
 	num_blocks = min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
 
@@ -364,8 +365,8 @@ int blockdevice_register(struct block_device *blk)
 	INIT_LIST_HEAD(&blk->idle_blocks);
 	blk->blkmask = blk->rdbufsize - 1;
 
-	debug("%s: rdbufsize: %d blockbits: %d blkmask: 0x%08x\n", __func__, blk->rdbufsize, blk->blockbits,
-			blk->blkmask);
+	dev_dbg(blk->dev, "rdbufsize: %d blockbits: %d blkmask: 0x%08x\n",
+		blk->rdbufsize, blk->blockbits, blk->blkmask);
 
 	for (i = 0; i < 32; i++) {
 		struct chunk *chunk = xzalloc(sizeof(*chunk));
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
