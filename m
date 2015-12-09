Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6miU-0002Qf-TF
 for barebox@lists.infradead.org; Wed, 09 Dec 2015 21:56:07 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 9 Dec 2015 21:55:29 +0000
Message-ID: <1449698135.26955.58.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <855EE8472DDDE242AFDAEECCA61A04F1@kymetacorp.com>
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
Subject: [PATCH 1/2] partitions: UUID was missing from partitions by name
To: barebox <barebox@lists.infradead.org>

The partition code registers one or two cdevs for each partition.  The
2nd one is used if the partition has a name.  The block of code for
each cdev is duplicated twice, and the 2nd copy is missing the bit
that copies the partition uuid and the dos partition type to the cdev.

Refactor the register cdev out to a new function that is called twice.
This way each cdev is done correctly.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 common/partitions.c | 70 +++++++++++++++++++++++++++++------------------------
 1 file changed, 38 insertions(+), 32 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 4f50bfe..9e54355 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -36,57 +36,63 @@
 static LIST_HEAD(partition_parser_list);
 
 /**
- * Register one partition on the given block device
+ * Register a cdev for given partition.  One partition
+ * can have multiple (1-2) cdev's associated with it.
  * @param blk Block device to register to
  * @param part Partition description
- * @param no Partition number
- * @return 0 on success
+ * @param partition_name Name for cdev (NULL is checked for)
+ * @param start Offset of partition start (bytes)
+ * @param size Partition size (bytes)
  */
-static int register_one_partition(struct block_device *blk,
-					struct partition *part, int no)
+static int register_partition_cdev(struct block_device *blk,
+				   const struct partition *part,
+				   const char *partition_name,
+				   uint64_t start, uint64_t size)
 {
-	char *partition_name;
-	int ret;
-	uint64_t start = part->first_sec * SECTOR_SIZE;
-	uint64_t size = part->size * SECTOR_SIZE;
 	struct cdev *cdev;
 
-	partition_name = asprintf("%s.%d", blk->cdev.name, no);
 	if (!partition_name)
 		return -ENOMEM;
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
 				partition_name, blk->cdev.name);
 	cdev = devfs_add_partition(blk->cdev.name,
-				start, size, 0, partition_name);
-	if (IS_ERR(cdev)) {
-		ret = PTR_ERR(cdev);
-		goto out;
-	}
+				   start, size, 0, partition_name);
+	if (IS_ERR(cdev))
+		return PTR_ERR(cdev);
 
 	cdev->dos_partition_type = part->dos_partition_type;
 	strcpy(cdev->partuuid, part->partuuid);
 
-	free(partition_name);
-
-	if (!part->name[0])
-		return 0;
+	return 0;
+}
 
-	partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
-	if (!partition_name)
-		return -ENOMEM;
+/**
+ * Register one partition on the given block device
+ * @param blk Block device to register to
+ * @param part Partition description
+ * @param no Partition number
+ * @return 0 on success
+ */
+static int register_one_partition(struct block_device *blk,
+					struct partition *part, int no)
+{
+	char *partition_name;
+	int ret;
+	uint64_t start = part->first_sec * SECTOR_SIZE;
+	uint64_t size = part->size * SECTOR_SIZE;
 
-	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
-				partition_name, blk->cdev.name);
-	cdev = devfs_add_partition(blk->cdev.name,
-				start, size, 0, partition_name);
+	/* Make device with partition number */
+	partition_name = asprintf("%s.%d", blk->cdev.name, no);
+	ret = register_partition_cdev(blk, part, partition_name, start, size);
+	free(partition_name);
 
-	if (IS_ERR(cdev))
-		dev_warn(blk->dev, "Registering partition %s on drive %s failed\n",
-				partition_name, blk->cdev.name);
+	/* If that worked, try to register with the part name too */
+	if (!ret && part->name[0]) {
+		partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
+		ret = register_partition_cdev(blk, part, partition_name, start, size);
+		free(partition_name);
+	}
 
-	ret = 0;
-out:
-	free(partition_name);
 	return ret;
 }
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
