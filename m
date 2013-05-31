Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiMj9-0005wk-Uk
 for barebox@lists.infradead.org; Fri, 31 May 2013 10:38:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 12:38:05 +0200
Message-Id: <1369996686-15900-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369996686-15900-1-git-send-email-s.hauer@pengutronix.de>
References: <1369996686-15900-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] block: implement block_read/block_write functions
To: barebox@lists.infradead.org

Some drivers use blk->ops->read/write. This bypasses the caching block
layer and was never intended like this. The upper API to the block layer
is the cdev layer. This patch adds block_read and block_write functions
and uses them where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c          | 22 ++++++++++++++++++++++
 common/partitions.c     |  2 +-
 common/partitions/efi.c |  4 ++--
 include/block.h         |  3 +++
 4 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/common/block.c b/common/block.c
index 2cf85ae..ad07f8b 100644
--- a/common/block.c
+++ b/common/block.c
@@ -387,3 +387,25 @@ int blockdevice_unregister(struct block_device *blk)
 
 	return 0;
 }
+
+int block_read(struct block_device *blk, void *buf, int block, int num_blocks)
+{
+	int ret;
+
+	ret = cdev_read(&blk->cdev, buf,
+			num_blocks << blk->blockbits,
+			(loff_t)block << blk->blockbits, 0);
+
+	return ret < 0 ? ret : 0;
+}
+
+int block_write(struct block_device *blk, void *buf, int block, int num_blocks)
+{
+	int ret;
+
+	ret = cdev_write(&blk->cdev, buf,
+			num_blocks << blk->blockbits,
+			(loff_t)block << blk->blockbits, 0);
+
+	return ret < 0 ? ret : 0;
+}
diff --git a/common/partitions.c b/common/partitions.c
index 683b258..35a604c 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -128,7 +128,7 @@ int parse_partition_table(struct block_device *blk)
 	pdesc = xzalloc(sizeof(*pdesc));
 	buf = dma_alloc(SECTOR_SIZE * 2);
 
-	rc = blk->ops->read(blk, buf, 0, 2);
+	rc = block_read(blk, buf, 0, 2);
 	if (rc != 0) {
 		dev_err(blk->dev, "Cannot read MBR/partition table\n");
 		goto on_error;
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index e450eeb..ee1326e 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -86,7 +86,7 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 
 	from = le64_to_cpu(pgpt_head->partition_entry_lba);
 	size = count / GPT_BLOCK_SIZE;
-	ret = blk->ops->read(blk, pte, from, size);
+	ret = block_read(blk, pte, from, size);
 	if (ret) {
 		kfree(pte);
 		pte=NULL;
@@ -121,7 +121,7 @@ static gpt_header *alloc_read_gpt_header(struct block_device *blk,
 	if (!gpt)
 		return NULL;
 
-	ret = blk->ops->read(blk, gpt, lba, 1);
+	ret = block_read(blk, gpt, lba, 1);
 	if (ret) {
 		kfree(gpt);
 		gpt=NULL;
diff --git a/include/block.h b/include/block.h
index ef36f58..9f60f0a 100644
--- a/include/block.h
+++ b/include/block.h
@@ -29,4 +29,7 @@ struct block_device {
 int blockdevice_register(struct block_device *blk);
 int blockdevice_unregister(struct block_device *blk);
 
+int block_read(struct block_device *blk, void *buf, int block, int num_blocks);
+int block_write(struct block_device *blk, void *buf, int block, int num_blocks);
+
 #endif /* __BLOCK_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
