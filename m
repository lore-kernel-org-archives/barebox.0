Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003pv-FC
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:04 +0200
Message-Id: <1374487450-13800-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] mtd: rename MTD_OOB_* to MTD_OPS_*
To: barebox@lists.infradead.org

To sync with the Linux kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/docg3.c   | 26 +++++++++++++-------------
 drivers/mtd/mtdoob.c          |  2 +-
 drivers/mtd/mtdraw.c          |  4 ++--
 drivers/mtd/nand/nand_base.c  | 18 +++++++++---------
 drivers/mtd/nand/nand_bbt.c   |  8 ++++----
 drivers/mtd/nand/nand_mxs.c   |  4 ++--
 drivers/mtd/nand/nand_write.c | 18 +++++++++---------
 include/linux/mtd/mtd-abi.h   | 19 +++++++++++++++++++
 include/linux/mtd/mtd.h       | 18 +-----------------
 9 files changed, 60 insertions(+), 57 deletions(-)

diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index af3d174..e15c809 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -468,7 +468,7 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 	else
 		ooblen = 0;
 
-	if (oobbuf && ops->mode == MTD_OOB_PLACE)
+	if (oobbuf && ops->mode == MTD_OPS_PLACE_OOB)
 		oobbuf += ops->ooboffs;
 
 	doc_dbg("doc_read_oob(from=%lld, mode=%d, data=(%p:%zu), oob=(%p:%zu))\n",
@@ -537,7 +537,7 @@ static int doc_read_oob(struct mtd_info *mtd, loff_t from,
 		if ((block0 >= DOC_LAYOUT_BLOCK_FIRST_DATA) &&
 		    (eccconf1 & DOC_ECCCONF1_BCH_SYNDROM_ERR) &&
 		    (eccconf1 & DOC_ECCCONF1_PAGE_IS_WRITTEN) &&
-		    (ops->mode != MTD_OOB_RAW) &&
+		    (ops->mode != MTD_OPS_RAW) &&
 		    (nbdata == DOC_LAYOUT_PAGE_SIZE)) {
 			ret = doc_ecc_bch_fix_data(docg3, buf, hwecc);
 			if (ret < 0) {
@@ -577,7 +577,7 @@ static int doc_read(struct mtd_info *mtd, loff_t from, size_t len,
 	memset(&ops, 0, sizeof(ops));
 	ops.datbuf = buf;
 	ops.len = len;
-	ops.mode = MTD_OOB_AUTO;
+	ops.mode = MTD_OPS_AUTO_OOB;
 
 	ret = doc_read_oob(mtd, from, &ops);
 	*retlen = ops.retlen;
@@ -631,11 +631,11 @@ static int doc_guess_autoecc(struct mtd_oob_ops *ops)
 	int autoecc;
 
 	switch (ops->mode) {
-	case MTD_OOB_PLACE:
-	case MTD_OOB_AUTO:
+	case MTD_OPS_PLACE_OOB:
+	case MTD_OPS_AUTO_OOB:
 		autoecc = 1;
 		break;
-	case MTD_OOB_RAW:
+	case MTD_OPS_RAW:
 		autoecc = 0;
 		break;
 	default:
@@ -663,7 +663,7 @@ static int doc_backup_oob(struct docg3 *docg3, loff_t to,
 
 	docg3->oob_write_ofs = to;
 	docg3->oob_autoecc = autoecc;
-	if (ops->mode == MTD_OOB_AUTO) {
+	if (ops->mode == MTD_OPS_AUTO_OOB) {
 		doc_fill_autooob(docg3->oob_write_buf, ops->oobbuf);
 		ops->oobretlen = 8;
 	} else {
@@ -960,17 +960,17 @@ static int doc_write_oob(struct mtd_info *mtd, loff_t ofs,
 	else
 		ooblen = 0;
 
-	if (oobbuf && ops->mode == MTD_OOB_PLACE)
+	if (oobbuf && ops->mode == MTD_OPS_PLACE_OOB)
 		oobbuf += ops->ooboffs;
 
 	doc_dbg("doc_write_oob(from=%lld, mode=%d, data=(%p:%zu), oob=(%p:%zu))\n",
 		ofs, ops->mode, buf, len, oobbuf, ooblen);
 	switch (ops->mode) {
-	case MTD_OOB_PLACE:
-	case MTD_OOB_RAW:
+	case MTD_OPS_PLACE_OOB:
+	case MTD_OPS_RAW:
 		oobdelta = mtd->oobsize;
 		break;
-	case MTD_OOB_AUTO:
+	case MTD_OPS_AUTO_OOB:
 		oobdelta = mtd->ecclayout->oobavail;
 		break;
 	default:
@@ -1005,7 +1005,7 @@ static int doc_write_oob(struct mtd_info *mtd, loff_t ofs,
 		memset(oob, 0, sizeof(oob));
 		if (ofs == docg3->oob_write_ofs)
 			memcpy(oob, docg3->oob_write_buf, DOC_LAYOUT_OOB_SIZE);
-		else if (ooblen > 0 && ops->mode == MTD_OOB_AUTO)
+		else if (ooblen > 0 && ops->mode == MTD_OPS_AUTO_OOB)
 			doc_fill_autooob(oob, oobbuf);
 		else if (ooblen > 0)
 			memcpy(oob, oobbuf, DOC_LAYOUT_OOB_SIZE);
@@ -1036,7 +1036,7 @@ static int doc_write(struct mtd_info *mtd, loff_t to, size_t len,
 	doc_dbg("doc_write(to=%lld, len=%zu)\n", to, len);
 	ops.datbuf = (char *)buf;
 	ops.len = len;
-	ops.mode = MTD_OOB_PLACE;
+	ops.mode = MTD_OPS_PLACE_OOB;
 	ops.oobbuf = NULL;
 	ops.ooblen = 0;
 	ops.ooboffs = 0;
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index e5d8039..903138c 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -48,7 +48,7 @@ static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
 	if (count < mtd->oobsize)
 		return -EINVAL;
 
-	ops.mode = MTD_OOB_RAW;
+	ops.mode = MTD_OPS_RAW;
 	ops.ooboffs = 0;
 	ops.ooblen = mtd->oobsize;
 	ops.oobbuf = buf;
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index c289e8d..9948e7c 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -97,7 +97,7 @@ static ssize_t mtdraw_read_unaligned(struct mtd_info *mtd, void *dst,
 		tmp = malloc(mtd->writesize + mtd->oobsize);
 	if (!tmp)
 		return -ENOMEM;
-	ops.mode = MTD_OOB_RAW;
+	ops.mode = MTD_OPS_RAW;
 	ops.ooboffs = 0;
 	ops.datbuf = tmp;
 	ops.len = mtd->writesize;
@@ -152,7 +152,7 @@ static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, const void *buf,
 	struct mtd_oob_ops ops;
 	int ret;
 
-	ops.mode = MTD_OOB_RAW;
+	ops.mode = MTD_OPS_RAW;
 	ops.ooboffs = 0;
 	ops.datbuf = (void *)buf;
 	ops.len = mtd->writesize;
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 829ab42..6a81f41 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -610,12 +610,12 @@ static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
 {
 	switch(ops->mode) {
 
-	case MTD_OOB_PLACE:
-	case MTD_OOB_RAW:
+	case MTD_OPS_PLACE_OOB:
+	case MTD_OPS_RAW:
 		memcpy(oob, chip->oob_poi + ops->ooboffs, len);
 		return oob + len;
 
-	case MTD_OOB_AUTO: {
+	case MTD_OPS_AUTO_OOB: {
 		struct nand_oobfree *free = chip->ecc.layout->oobfree;
 		uint32_t boffs = 0, roffs = ops->ooboffs;
 		size_t bytes = 0;
@@ -696,7 +696,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 			}
 
 			/* Now read the page into the buffer */
-			if (unlikely(ops->mode == MTD_OOB_RAW))
+			if (unlikely(ops->mode == MTD_OPS_RAW))
 				ret = chip->ecc.read_page_raw(mtd, chip, bufpoi);
 			else
 				ret = chip->ecc.read_page(mtd, chip, bufpoi);
@@ -714,7 +714,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 #ifdef CONFIG_NAND_READ_OOB
 			if (unlikely(oob)) {
 				/* Raw mode does data:oob:data:oob */
-				if (ops->mode != MTD_OOB_RAW) {
+				if (ops->mode != MTD_OPS_RAW) {
 					int toread = min(oobreadlen,
 						chip->ecc.layout->oobavail);
 					if (toread) {
@@ -856,7 +856,7 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_read_oob: from = 0x%08Lx, len = %i\n",
 	      (unsigned long long)from, readlen);
 
-	if (ops->mode == MTD_OOB_AUTO)
+	if (ops->mode == MTD_OPS_AUTO_OOB)
 		len = chip->ecc.layout->oobavail;
 	else
 		len = mtd->oobsize;
@@ -951,9 +951,9 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 	}
 
 	switch(ops->mode) {
-	case MTD_OOB_PLACE:
-	case MTD_OOB_AUTO:
-	case MTD_OOB_RAW:
+	case MTD_OPS_PLACE_OOB:
+	case MTD_OPS_AUTO_OOB:
+	case MTD_OPS_RAW:
 		break;
 
 	default:
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index ba51e0b..e598ca6 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -244,7 +244,7 @@ static int scan_read_raw(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
 {
 	struct mtd_oob_ops ops;
 
-	ops.mode = MTD_OOB_RAW;
+	ops.mode = MTD_OPS_RAW;
 	ops.ooboffs = 0;
 	ops.ooblen = mtd->oobsize;
 	ops.oobbuf = buf;
@@ -263,7 +263,7 @@ static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
 {
 	struct mtd_oob_ops ops;
 
-	ops.mode = MTD_OOB_PLACE;
+	ops.mode = MTD_OPS_PLACE_OOB;
 	ops.ooboffs = 0;
 	ops.ooblen = mtd->oobsize;
 	ops.datbuf = buf;
@@ -343,7 +343,7 @@ static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
 	ops.oobbuf = buf;
 	ops.ooboffs = 0;
 	ops.datbuf = NULL;
-	ops.mode = MTD_OOB_PLACE;
+	ops.mode = MTD_OPS_PLACE_OOB;
 
 	for (j = 0; j < len; j++) {
 		/*
@@ -581,7 +581,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 	ops.ooblen = mtd->oobsize;
 	ops.ooboffs = 0;
 	ops.datbuf = NULL;
-	ops.mode = MTD_OOB_PLACE;
+	ops.mode = MTD_OPS_PLACE_OOB;
 
 	if (!rcode)
 		rcode = 0xff;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 09ee55e..6ecfe04 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -830,7 +830,7 @@ static int mxs_nand_hook_read_oob(struct mtd_info *mtd, loff_t from,
 	struct mxs_nand_info *nand_info = chip->priv;
 	int ret;
 
-	if (ops->mode == MTD_OOB_RAW)
+	if (ops->mode == MTD_OPS_RAW)
 		nand_info->raw_oob_mode = 1;
 	else
 		nand_info->raw_oob_mode = 0;
@@ -855,7 +855,7 @@ static int mxs_nand_hook_write_oob(struct mtd_info *mtd, loff_t to,
 	struct mxs_nand_info *nand_info = chip->priv;
 	int ret;
 
-	if (ops->mode == MTD_OOB_RAW)
+	if (ops->mode == MTD_OPS_RAW)
 		nand_info->raw_oob_mode = 1;
 	else
 		nand_info->raw_oob_mode = 0;
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index bb963f9..3d8003e 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -107,7 +107,7 @@ int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		} else {
 			ops.len = ops.ooblen = 1;
 		}
-		ops.mode = MTD_OOB_PLACE;
+		ops.mode = MTD_OPS_PLACE_OOB;
 
 		/* Write to first/last page(s) if necessary */
 		if (chip->options & NAND_BBT_LASTBLOCK)
@@ -256,12 +256,12 @@ static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob,
 
 	switch(ops->mode) {
 
-	case MTD_OOB_PLACE:
-	case MTD_OOB_RAW:
+	case MTD_OPS_PLACE_OOB:
+	case MTD_OPS_RAW:
 		memcpy(chip->oob_poi + ops->ooboffs, oob, len);
 		return oob + len;
 
-	case MTD_OOB_AUTO: {
+	case MTD_OPS_AUTO_OOB: {
 		struct nand_oobfree *free = chip->ecc.layout->oobfree;
 		uint32_t boffs = 0, woffs = ops->ooboffs;
 		size_t bytes = 0;
@@ -363,7 +363,7 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 
 		if (oob || !mtd_all_ff(wbuf, mtd->writesize)) {
 			ret = chip->write_page(mtd, chip, wbuf, page, cached,
-					       (ops->mode == MTD_OOB_RAW));
+					       (ops->mode == MTD_OPS_RAW));
 			if (ret)
 				break;
 		}
@@ -441,7 +441,7 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_write_oob: to = 0x%08x, len = %i\n",
 	      (unsigned int)to, (int)ops->ooblen);
 
-	if (ops->mode == MTD_OOB_AUTO)
+	if (ops->mode == MTD_OPS_AUTO_OOB)
 		len = chip->ecc.layout->oobavail;
 	else
 		len = mtd->oobsize;
@@ -525,9 +525,9 @@ int nand_write_oob(struct mtd_info *mtd, loff_t to,
 	}
 
 	switch(ops->mode) {
-	case MTD_OOB_PLACE:
-	case MTD_OOB_AUTO:
-	case MTD_OOB_RAW:
+	case MTD_OPS_PLACE_OOB:
+	case MTD_OPS_AUTO_OOB:
+	case MTD_OPS_RAW:
 		break;
 
 	default:
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index 90dee7e..fa8e36f 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -20,6 +20,25 @@ struct mtd_oob_buf {
 	unsigned char *ptr;
 };
 
+/**
+ * MTD operation modes
+ *
+ * @MTD_OPS_PLACE_OOB:	OOB data are placed at the given offset (default)
+ * @MTD_OPS_AUTO_OOB:	OOB data are automatically placed at the free areas
+ *			which are defined by the internal ecclayout
+ * @MTD_OPS_RAW:	data are transferred as-is, with no error correction;
+ *			this mode implies %MTD_OPS_PLACE_OOB
+ *
+ * These modes can be passed to ioctl(MEMWRITE) and are also used internally.
+ * See notes on "MTD file modes" for discussion on %MTD_OPS_RAW vs.
+ * %MTD_FILE_MODE_RAW.
+ */
+enum {
+	MTD_OPS_PLACE_OOB = 0,
+	MTD_OPS_AUTO_OOB = 1,
+	MTD_OPS_RAW = 2,
+};
+
 #define MTD_ABSENT		0
 #define MTD_RAM			1
 #define MTD_ROM			2
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index df04030..51348b9 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -52,22 +52,6 @@ struct mtd_erase_region_info {
 	unsigned long *lockmap;		/* If keeping bitmap of locks */
 };
 
-/*
- * oob operation modes
- *
- * MTD_OOB_PLACE:	oob data are placed at the given offset
- * MTD_OOB_AUTO:	oob data are automatically placed at the free areas
- *			which are defined by the ecclayout
- * MTD_OOB_RAW:		mode to read raw data+oob in one chunk. The oob data
- *			is inserted into the data. Thats a raw image of the
- *			flash contents.
- */
-typedef enum {
-	MTD_OOB_PLACE,
-	MTD_OOB_AUTO,
-	MTD_OOB_RAW,
-} mtd_oob_mode_t;
-
 /**
  * struct mtd_oob_ops - oob operation operands
  * @mode:	operation mode
@@ -88,7 +72,7 @@ typedef enum {
  * OOB area.
  */
 struct mtd_oob_ops {
-	mtd_oob_mode_t	mode;
+	unsigned int	mode;
 	size_t		len;
 	size_t		retlen;
 	size_t		ooblen;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
