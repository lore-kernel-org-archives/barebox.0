Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI4-0001So-0Q
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:58 +0100
Message-Id: <1360915499-1659-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd: implement mtd_lock and mtd_unlock
To: barebox@lists.infradead.org

Needed for NOR flashes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      |   37 +++++++++++++++++++++++++++++++++++++
 include/linux/mtd/mtd.h |    2 ++
 2 files changed, 39 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index e852fb6..4ddf9d1 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -95,6 +95,20 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 
 	return 0;
 }
+
+static ssize_t mtd_op_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
+{
+	struct mtd_info *mtd = cdev->priv;
+
+	if (!mtd->unlock || !mtd->lock)
+		return -ENOSYS;
+
+	if (prot)
+		return mtd_lock(mtd, offset, count);
+	else
+		return mtd_unlock(mtd, offset, count);
+}
+
 #endif /* CONFIG_MTD_WRITE */
 
 int mtd_ioctl(struct cdev *cdev, int request, void *buf)
@@ -161,6 +175,28 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	return ret;
 }
 
+int mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	if (!mtd->lock)
+		return -EOPNOTSUPP;
+	if (ofs < 0 || ofs > mtd->size || len > mtd->size - ofs)
+		return -EINVAL;
+	if (!len)
+		return 0;
+	return mtd->lock(mtd, ofs, len);
+}
+
+int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	if (!mtd->unlock)
+		return -EOPNOTSUPP;
+	if (ofs < 0 || ofs > mtd->size || len > mtd->size - ofs)
+		return -EINVAL;
+	if (!len)
+		return 0;
+	return mtd->unlock(mtd, ofs, len);
+}
+
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
 {
 	if (!mtd->block_isbad)
@@ -206,6 +242,7 @@ static struct file_operations mtd_ops = {
 #ifdef CONFIG_MTD_WRITE
 	.write  = mtd_op_write,
 	.erase  = mtd_op_erase,
+	.protect = mtd_op_protect,
 #endif
 	.ioctl  = mtd_ioctl,
 	.lseek  = dev_lseek_default,
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index c1760de..3892bed 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -257,6 +257,8 @@ static inline void mtd_erase_callback(struct erase_info *instr)
 }
 #endif
 
+int mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
+int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
 int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
