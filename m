Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZbVC-0004NM-Nx
 for barebox@lists.infradead.org; Wed, 30 May 2012 05:31:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 May 2012 07:31:14 +0200
Message-Id: <1338355875-18830-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] block: propagate error code from block_get
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c |   26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/common/block.c b/common/block.c
index 4253fc4..437dc95 100644
--- a/common/block.c
+++ b/common/block.c
@@ -161,7 +161,7 @@ static void *block_get(struct block_device *blk, int block)
 	int ret;
 
 	if (block >= blk->num_blocks)
-		return NULL;
+		return ERR_PTR(-ENXIO);
 
 	outdata = block_get_cached(blk, block);
 	if (outdata)
@@ -169,7 +169,7 @@ static void *block_get(struct block_device *blk, int block)
 
 	ret = block_cache(blk, block);
 	if (ret)
-		return NULL;
+		return ERR_PTR(ret);
 
 	outdata = block_get_cached(blk, block);
 	if (!outdata)
@@ -191,8 +191,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 		size_t now = BLOCKSIZE(blk) - (offset & mask);
 		void *iobuf = block_get(blk, block);
 
-		if (!iobuf)
-			return -EIO;
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
 
 		now = min(count, now);
 
@@ -207,8 +207,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 	while (blocks) {
 		void *iobuf = block_get(blk, block);
 
-		if (!iobuf)
-			return -EIO;
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
 
 		memcpy(buf, iobuf, BLOCKSIZE(blk));
 		buf += BLOCKSIZE(blk);
@@ -220,8 +220,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
 	if (count) {
 		void *iobuf = block_get(blk, block);
 
-		if (!iobuf)
-			return -EIO;
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
 
 		memcpy(buf, iobuf, count);
 	}
@@ -244,7 +244,7 @@ static int block_put(struct block_device *blk, const void *buf, int block)
 		return -EINVAL;
 
 	data = block_get(blk, block);
-	if (!data)
+	if (IS_ERR(data))
 		BUG();
 
 	memcpy(data, buf, 1 << blk->blockbits);
@@ -270,8 +270,8 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 
 		now = min(count, now);
 
-		if (!iobuf)
-			return -EIO;
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
 
 		memcpy(iobuf + (offset & mask), buf, now);
 		ret = block_put(blk, iobuf, block);
@@ -299,8 +299,8 @@ static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
 	if (count) {
 		void *iobuf = block_get(blk, block);
 
-		if (!iobuf)
-			return -EIO;
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
 
 		memcpy(iobuf, buf, count);
 		ret = block_put(blk, iobuf, block);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
