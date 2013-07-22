Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003q1-F7
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:09 +0200
Message-Id: <1374487450-13800-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
References: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] mtd: introduce mtd_read_oob and mtd_write_oob
To: barebox@lists.infradead.org

Directly copied from the Kernel as of 3.11-rc1

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 21 +++++++++++++++++++++
 drivers/mtd/mtdoob.c    |  2 +-
 drivers/mtd/mtdraw.c    |  6 +++---
 include/linux/mtd/mtd.h | 13 +++++++++++++
 4 files changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f46ab46..70036aa 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -327,6 +327,27 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return mtd->erase(mtd, instr);
 }
 
+int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
+{
+	int ret_code;
+
+	ops->retlen = ops->oobretlen = 0;
+	if (!mtd->read_oob)
+		return -EOPNOTSUPP;
+	/*
+	 * In cases where ops->datbuf != NULL, mtd->_read_oob() has semantics
+	 * similar to mtd->_read(), returning a non-negative integer
+	 * representing max bitflips. In other cases, mtd->_read_oob() may
+	 * return -EUCLEAN. In all cases, perform similar logic to mtd_read().
+	 */
+	ret_code = mtd->read_oob(mtd, from, ops);
+	if (unlikely(ret_code < 0))
+		return ret_code;
+	if (mtd->ecc_strength == 0)
+		return 0;	/* device lacks ecc */
+	return ret_code >= mtd->bitflip_threshold ? -EUCLEAN : 0;
+}
+
 static struct file_operations mtd_ops = {
 	.read   = mtd_op_read,
 #ifdef CONFIG_MTD_WRITE
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 6023302..1e88b53 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -56,7 +56,7 @@ static ssize_t mtd_op_read_oob(struct cdev *cdev, void *buf, size_t count,
 	ops.len = mtd->oobsize;
 
 	offset /= mtd->oobsize;
-	ret = mtd->read_oob(mtd, offset * mtd->writesize, &ops);
+	ret = mtd_read_oob(mtd, offset * mtd->writesize, &ops);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 9948e7c..1a4711e 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -58,7 +58,7 @@
  *  - no actual mtd->write if done
  * A second write of 512 bytes triggers:
  *  - copy of the 16 first bytes into writebuf
- *  - a mtd->write_oob() from writebuf
+ *  - a mtd_write_oob() from writebuf
  *  - empty writebuf
  *  - copy the remaining 496 bytes into writebuf
  *    => write_fill = 496, write_ofs = offset + 528
@@ -103,7 +103,7 @@ static ssize_t mtdraw_read_unaligned(struct mtd_info *mtd, void *dst,
 	ops.len = mtd->writesize;
 	ops.oobbuf = tmp + mtd->writesize;
 	ops.ooblen = mtd->oobsize;
-	ret = mtd->read_oob(mtd, offset, &ops);
+	ret = mtd_read_oob(mtd, offset, &ops);
 	if (ret)
 		goto err;
 	if (partial)
@@ -158,7 +158,7 @@ static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, const void *buf,
 	ops.len = mtd->writesize;
 	ops.oobbuf = (void *)buf + mtd->writesize;
 	ops.ooblen = mtd->oobsize;
-	ret = mtd->write_oob(mtd, offset, &ops);
+	ret = mtd_write_oob(mtd, offset, &ops);
 	if (!ret)
 		ret = ops.retlen + ops.oobretlen;
 	return ret;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index da96483..040e50d 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -213,6 +213,19 @@ int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 	      const u_char *buf);
 
+int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops);
+
+static inline int mtd_write_oob(struct mtd_info *mtd, loff_t to,
+				struct mtd_oob_ops *ops)
+{
+	ops->retlen = ops->oobretlen = 0;
+	if (!mtd->write_oob)
+		return -EOPNOTSUPP;
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	return mtd->write_oob(mtd, to, ops);
+}
+
 static inline uint32_t mtd_div_by_eb(uint64_t sz, struct mtd_info *mtd)
 {
 	do_div(sz, mtd->erasesize);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
