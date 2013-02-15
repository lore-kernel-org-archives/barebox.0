Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI4-0001Sn-0V
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:55 +0100
Message-Id: <1360915499-1659-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] mtd: rename mtd file operations callback functions
To: barebox@lists.infradead.org

These are currently named mtd_read/write/erase. Functions with
the same name exist as global functions in the kernel. Rename
them to mtd_op_* to avoid name clashes with future mtd updates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c |   17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 070fda6..40c522f 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -39,7 +39,7 @@ int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
 	return mtd->block_isbad(mtd, ofs);
 }
 
-static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
+static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
 			  loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = cdev->priv;
@@ -47,7 +47,8 @@ static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 	int ret;
 	unsigned long offset = _offset;
 
-	debug("mtd_read: 0x%08lx 0x%08x\n", offset, count);
+	dev_dbg(cdev->dev, "read ofs: 0x%08lx count: 0x%08x\n",
+			offset, count);
 
 	ret = mtd->read(mtd, offset, count, &retlen, buf);
 
@@ -62,7 +63,7 @@ static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 #define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
 
 #ifdef CONFIG_MTD_WRITE
-static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
+static ssize_t mtd_op_write(struct cdev* cdev, const void *buf, size_t _count,
 			  loff_t _offset, ulong flags)
 {
 	struct mtd_info *mtd = cdev->priv;
@@ -74,7 +75,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 	return ret ? ret : _count;
 }
 
-static int mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
+static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
@@ -130,7 +131,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 		ret = mtd->block_markbad(mtd, *offset);
 		break;
 	case MEMERASE:
-		ret = mtd_erase(cdev, ei->length, ei->start + cdev->offset);
+		ret = mtd_op_erase(cdev, ei->length, ei->start + cdev->offset);
 		break;
 #endif
 	case MEMGETINFO:
@@ -170,10 +171,10 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 }
 
 static struct file_operations mtd_ops = {
-	.read   = mtd_read,
+	.read   = mtd_op_read,
 #ifdef CONFIG_MTD_WRITE
-	.write  = mtd_write,
-	.erase  = mtd_erase,
+	.write  = mtd_op_write,
+	.erase  = mtd_op_erase,
 #endif
 	.ioctl  = mtd_ioctl,
 	.lseek  = dev_lseek_default,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
