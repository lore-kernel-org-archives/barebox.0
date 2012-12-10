Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThyVJ-0004cK-8V
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 08:14:23 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Dec 2012 09:14:09 +0100
Message-Id: <1355127255-24797-5-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 04/10] devfs & mtd: add MEMERASE ioctl support
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

To make that, we need to shift mtd_erase before mtd_ioctl.
ubi-utils need that, especially ubiformat.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/core.c |   68 +++++++++++++++++++++++++++-------------------------
 fs/devfs-core.c    |    3 ++-
 2 files changed, 37 insertions(+), 34 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 8601787..83e1a39 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -123,7 +123,37 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 out:
 	return ret ? ret : _count;
 }
-#endif
+
+static int mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
+{
+	struct mtd_info *mtd = cdev->priv;
+	struct erase_info erase;
+	int ret;
+
+	memset(&erase, 0, sizeof(erase));
+	erase.mtd = mtd;
+	erase.addr = offset;
+	erase.len = mtd->erasesize;
+
+	while (count > 0) {
+		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
+
+		ret = mtd_block_isbad(mtd, erase.addr);
+		if (ret > 0) {
+			printf("Skipping bad block at 0x%08x\n", erase.addr);
+		} else {
+			ret = mtd->erase(mtd, &erase);
+			if (ret)
+				return ret;
+		}
+
+		erase.addr += mtd->erasesize;
+		count -= count > mtd->erasesize ? mtd->erasesize : count;
+	}
+
+	return 0;
+}
+#endif /* CONFIG_MTD_WRITE */
 
 int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 {
@@ -134,6 +164,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	struct mtd_ecc_stats *ecc = buf;
 #endif
 	struct region_info_user *reg = buf;
+	struct erase_info_user *ei = buf;
 	loff_t *offset = buf;
 
 	switch (request) {
@@ -146,6 +177,9 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08llx\n", *offset);
 		ret = mtd->block_markbad(mtd, *offset);
 		break;
+	case MEMERASE:
+		ret = mtd_erase(cdev, ei->length, ei->start + cdev->offset);
+		break;
 #endif
 	case MEMGETINFO:
 		user->type	= mtd->type;
@@ -183,38 +217,6 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	return ret;
 }
 
-#ifdef CONFIG_MTD_WRITE
-static int mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
-{
-	struct mtd_info *mtd = cdev->priv;
-	struct erase_info erase;
-	int ret;
-
-	memset(&erase, 0, sizeof(erase));
-	erase.mtd = mtd;
-	erase.addr = offset;
-	erase.len = mtd->erasesize;
-
-	while (count > 0) {
-		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
-
-		ret = mtd_block_isbad(mtd, erase.addr);
-		if (ret > 0) {
-			printf("Skipping bad block at 0x%08x\n", erase.addr);
-		} else {
-			ret = mtd->erase(mtd, &erase);
-			if (ret)
-				return ret;
-		}
-
-		erase.addr += mtd->erasesize;
-		count -= count > mtd->erasesize ? mtd->erasesize : count;
-	}
-
-	return 0;
-}
-#endif
-
 static struct file_operations mtd_ops = {
 	.read   = mtd_read,
 #ifdef CONFIG_MTD_WRITE
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 0d2f75a..262e0a2 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -152,13 +152,14 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 		break;
 #if (defined(CONFIG_NAND_ECC_HW) || defined(CONFIG_NAND_ECC_SOFT))
 	case ECCGETSTATS:
+#endif
+	case MEMERASE:
 		if (!cdev->ops->ioctl) {
 			ret = -EINVAL;
 			break;
 		}
 		ret = cdev->ops->ioctl(cdev, request, buf);
 		break;
-#endif
 #ifdef CONFIG_PARTITION
 	case MEMGETREGIONINFO:
 		if (cdev->mtd) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
