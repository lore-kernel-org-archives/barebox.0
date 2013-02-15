Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI9-0001UQ-V5
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:57 +0100
Message-Id: <1360915499-1659-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] mtd: Use mtd_* functions where appropriate
To: barebox@lists.infradead.org

Instead of dereferencing struct mtd_info members directly use
the wrapper functions which have an additional check if the
callback exists if it is optional, like mark_bad or is_bad.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c          |    8 ++++----
 drivers/mtd/mtdraw.c        |    2 +-
 drivers/mtd/nand/nand_bbt.c |    4 ++--
 drivers/mtd/ubi/io.c        |    8 ++++----
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 47c0226..e852fb6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -41,7 +41,7 @@ static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
 	dev_dbg(cdev->dev, "read ofs: 0x%08lx count: 0x%08x\n",
 			offset, count);
 
-	ret = mtd->read(mtd, offset, count, &retlen, buf);
+	ret = mtd_read(mtd, offset, count, &retlen, buf);
 
 	if(ret) {
 		printf("err %d\n", ret);
@@ -61,7 +61,7 @@ static ssize_t mtd_op_write(struct cdev* cdev, const void *buf, size_t _count,
 	size_t retlen;
 	int ret;
 
-	ret = mtd->write(mtd, _offset, _count, &retlen, buf);
+	ret = mtd_write(mtd, _offset, _count, &retlen, buf);
 
 	return ret ? ret : _count;
 }
@@ -84,7 +84,7 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
-			ret = mtd->erase(mtd, &erase);
+			ret = mtd_erase(mtd, &erase);
 			if (ret)
 				return ret;
 		}
@@ -119,7 +119,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 #ifdef CONFIG_MTD_WRITE
 	case MEMSETBADBLOCK:
 		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08llx\n", *offset);
-		ret = mtd->block_markbad(mtd, *offset);
+		ret = mtd_block_markbad(mtd, *offset);
 		break;
 	case MEMERASE:
 		ret = mtd_op_erase(cdev, ei->length, ei->start + cdev->offset);
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index ec77692..5aaa017 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -245,7 +245,7 @@ static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
-			ret = mtd->erase(mtd, &erase);
+			ret = mtd_erase(mtd, &erase);
 			if (ret)
 				return ret;
 		}
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index f7ae7cd..56396bf 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -160,7 +160,7 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 
 	while (totlen) {
 		len = min(totlen, (size_t) (1 << this->bbt_erase_shift));
-		res = mtd->read(mtd, from, len, &retlen, buf);
+		res = mtd_read(mtd, from, len, &retlen, buf);
 		if (res < 0) {
 			if (retlen != len) {
 				pr_info("nand_bbt: Error reading bad block table\n");
@@ -669,7 +669,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 			/* Make it block aligned */
 			to &= ~((loff_t) ((1 << this->bbt_erase_shift) - 1));
 			len = 1 << this->bbt_erase_shift;
-			res = mtd->read(mtd, to, len, &retlen, buf);
+			res = mtd_read(mtd, to, len, &retlen, buf);
 			if (res < 0) {
 				if (retlen != len) {
 					pr_info("nand_bbt: Error "
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index e3598b9..000fc5d 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -151,7 +151,7 @@ int ubi_io_read(const struct ubi_device *ubi, void *buf, int pnum, int offset,
 
 	addr = (loff_t)pnum * ubi->peb_size + offset;
 retry:
-	err = ubi->mtd->read(ubi->mtd, addr, len, &read, buf);
+	err = mtd_read(ubi->mtd, addr, len, &read, buf);
 	if (err) {
 		if (err == -EUCLEAN) {
 			/*
@@ -265,7 +265,7 @@ int ubi_io_write(struct ubi_device *ubi, const void *buf, int pnum, int offset,
 	}
 
 	addr = (loff_t)pnum * ubi->peb_size + offset;
-	err = ubi->mtd->write(ubi->mtd, addr, len, &written, buf);
+	err = mtd_write(ubi->mtd, addr, len, &written, buf);
 	if (err) {
 		ubi_err("error %d while writing %d bytes to PEB %d:%d, written"
 			" %zd bytes", err, len, pnum, offset, written);
@@ -315,7 +315,7 @@ retry:
 	ei.callback = erase_callback;
 	ei.priv     = (unsigned long)&wq;
 
-	err = ubi->mtd->erase(ubi->mtd, &ei);
+	err = mtd_erase(ubi->mtd, &ei);
 	if (err) {
 		if (retries++ < UBI_IO_RETRIES) {
 			dbg_io("error %d while erasing PEB %d, retry",
@@ -1239,7 +1239,7 @@ static int paranoid_check_all_ff(struct ubi_device *ubi, int pnum, int offset,
 	loff_t addr = (loff_t)pnum * ubi->peb_size + offset;
 
 	mutex_lock(&ubi->dbg_buf_mutex);
-	err = ubi->mtd->read(ubi->mtd, addr, len, &read, ubi->dbg_peb_buf);
+	err = mtd_read(ubi->mtd, addr, len, &read, ubi->dbg_peb_buf);
 	if (err && err != -EUCLEAN) {
 		ubi_err("error %d while reading %d bytes from PEB %d:%d, "
 			"read %zd bytes", err, len, pnum, offset, read);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
