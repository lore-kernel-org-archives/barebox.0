Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI4-0001Sm-0R
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:56 +0100
Message-Id: <1360915499-1659-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] mtd: Add mtd_* functions
To: barebox@lists.infradead.org

The Kernel has mtd_read, mtd_write, mtd_erase and mtd_block_markbad.
Add these functions to barebox aswell to make future mtd synchronizations
with the kernel easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      |   49 ++++++++++++++++++++++++++++++++++++++---------
 include/linux/mtd/mtd.h |    7 +++++++
 2 files changed, 47 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 40c522f..47c0226 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -30,15 +30,6 @@
 
 static LIST_HEAD(mtd_register_hooks);
 
-int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
-{
-	if (!mtd->block_isbad)
-		return 0;
-	if (ofs < 0 || ofs > mtd->size)
-		return -EINVAL;
-	return mtd->block_isbad(mtd, ofs);
-}
-
 static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
 			  loff_t _offset, ulong flags)
 {
@@ -170,6 +161,46 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	return ret;
 }
 
+int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
+{
+	if (!mtd->block_isbad)
+		return 0;
+
+	if (ofs < 0 || ofs > mtd->size)
+		return -EINVAL;
+
+	return mtd->block_isbad(mtd, ofs);
+}
+
+int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
+{
+	int ret;
+
+	if (mtd->block_markbad)
+		ret = mtd->block_markbad(mtd, ofs);
+	else
+		ret = -ENOSYS;
+
+	return ret;
+}
+
+int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
+		u_char *buf)
+{
+	return mtd->read(mtd, from, len, retlen, buf);
+}
+
+int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
+		const u_char *buf)
+{
+	return mtd->write(mtd, to, len, retlen, buf);
+}
+
+int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
+{
+	return mtd->erase(mtd, instr);
+}
+
 static struct file_operations mtd_ops = {
 	.read   = mtd_op_read,
 #ifdef CONFIG_MTD_WRITE
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index cb8b3bc..c1760de 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -207,6 +207,12 @@ struct mtd_info {
 	char *size_str;
 };
 
+int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
+int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
+	     u_char *buf);
+int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
+	      const u_char *buf);
+
 static inline uint32_t mtd_div_by_eb(uint64_t sz, struct mtd_info *mtd)
 {
 	do_div(sz, mtd->erasesize);
@@ -252,6 +258,7 @@ static inline void mtd_erase_callback(struct erase_info *instr)
 #endif
 
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
+int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs);
 
 /*
  * Debugging macro and defines
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
