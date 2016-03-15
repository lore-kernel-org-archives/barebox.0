Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn16-0005U9-Cj
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:20:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:08 +0100
Message-Id: <1458040754-32240-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] imx-bbu-nand-fcb: factor out a fcb write function
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 258 ++++++++++++++++++++++++++++++----------------
 1 file changed, 172 insertions(+), 86 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index f1fc404..492dd92 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -33,6 +33,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/stat.h>
 #include <io.h>
+#include <mach/generic.h>
 #include <mtd/mtd-peb.h>
 
 struct dbbt_block {
@@ -108,8 +109,6 @@ struct imx_nand_fcb_bbu_handler {
 
 	void (*fcb_create)(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd);
-	void (*dbbt_create)(struct imx_nand_fcb_bbu_handler *imx_handler,
-		struct dbbt_block *dbbt, int num_bad_blocks);
 	enum filetype filetype;
 };
 
@@ -396,12 +395,14 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 	return block;
 }
 
-static int dbbt_data_create(struct mtd_info *mtd, void *buf, int num_blocks)
+static void *dbbt_data_create(struct mtd_info *mtd)
 {
 	int n;
 	int n_bad_blocks = 0;
-	uint32_t *bb = buf + 0x8;
-	uint32_t *n_bad_blocksp = buf + 0x4;
+	void *dbbt = xzalloc(mtd->writesize);
+	uint32_t *bb = dbbt + 0x8;
+	uint32_t *n_bad_blocksp = dbbt + 0x4;
+	int num_blocks = mtd_div_by_eb(mtd->size, mtd);
 
 	for (n = 0; n < num_blocks; n++) {
 		loff_t offset = n * mtd->erasesize;
@@ -412,9 +413,167 @@ static int dbbt_data_create(struct mtd_info *mtd, void *buf, int num_blocks)
 		}
 	}
 
+	if (!n_bad_blocks) {
+		free(dbbt);
+		return NULL;
+	}
+
 	*n_bad_blocksp = n_bad_blocks;
 
-	return n_bad_blocks;
+	return dbbt;
+}
+
+static void imx28_dbbt_create(struct dbbt_block *dbbt, int num_bad_blocks)
+{
+	uint32_t a = 0;
+	uint8_t *p = (void *)dbbt;
+	int i;
+
+	dbbt->numberBB = num_bad_blocks;
+
+	for (i = 4; i < 512; i++)
+		a += p[i];
+
+	a ^= 0xffffffff;
+
+	dbbt->Checksum = a;
+}
+
+/**
+ * imx_bbu_write_fcb - Write FCB and DBBT raw data to the device
+ * @mtd: The mtd Nand device
+ * @block: The block to write to
+ * @fcb_raw_page: The raw FCB data
+ * @dbbt_data_page: The DBBT data
+ *
+ * This function writes the FCB/DBBT data to the block given in @block
+ * to the Nand device. The FCB data has to be given in the raw flash
+ * layout, already with ecc data supplied.
+ *
+ * return: 0 on success or a negative error code otherwise.
+ */
+static int imx_bbu_write_fcb(struct mtd_info *mtd, int block, void *fcb_raw_page,
+			     void *dbbt_data_page)
+{
+	struct dbbt_block *dbbt;
+	int ret;
+	int retries = 0;
+	uint32_t *n_bad_blocksp = dbbt_data_page + 0x4;
+again:
+	dbbt = xzalloc(mtd->writesize);
+
+	dbbt->Checksum = 0;
+	dbbt->FingerPrint = 0x54424244;
+	dbbt->Version = 0x01000000;
+	if (dbbt_data_page)
+		dbbt->DBBTNumOfPages = 1;
+	if (cpu_is_mx28())
+		imx28_dbbt_create(dbbt, *n_bad_blocksp);
+
+	ret = raw_write_page(mtd, fcb_raw_page, block * mtd->erasesize);
+	if (ret) {
+		pr_err("Writing FCB on block %d failed with %s\n",
+		       block, strerror(-ret));
+		goto out;
+	}
+
+	ret = mtd_peb_write(mtd, (void *)dbbt, block, mtd->writesize,
+			    mtd->writesize);
+	if (ret < 0) {
+		pr_err("Writing DBBT header on block %d failed with %s\n",
+		       block, strerror(-ret));
+		goto out;
+	}
+
+	if (dbbt_data_page) {
+		ret = mtd_peb_write(mtd, dbbt_data_page, block, mtd->writesize * 5,
+				    mtd->writesize);
+		if (ret < 0) {
+			pr_err("Writing DBBT on block %d failed with %s\n",
+			       block, strerror(-ret));
+			goto out;
+		}
+	}
+
+	ret = 0;
+out:
+	free(dbbt);
+
+	if (ret == -EBADMSG) {
+		ret = mtd_peb_torture(mtd, block);
+
+		if (!ret && retries++ < 3)
+			goto again;
+	}
+
+	return ret;
+}
+
+/**
+ * imx_bbu_write_fcbs_dbbts - Write FCBs/DBBTs to first four blocks
+ * @mtd: The mtd device to write the FCBs/DBBTs to
+ * @fcb: The FCB block to write
+ *
+ * This creates the FCBs/DBBTs and writes them to the first four blocks
+ * of the Nand device. The raw FCB data is created from the input FCB
+ * block, the DBBTs are created from the barebox mtd Nand Bad Block
+ * Table. The DBBTs are written in the second page same of each FCB block.
+ * Data will actually only be written if it differs from the data found
+ * on the device or if a return value of -EUCLEAN while reading
+ * indicates that a refresh is necessary.
+ *
+ * return: 0 for success or a negative error code otherwise.
+ */
+static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
+{
+	void *dbbt = NULL;
+	int i, ret, valid = 0;
+	void *fcb_raw_page;
+
+	/*
+	 * The DBBT search start page is configurable in the FCB block.
+	 * This function writes the DBBTs in the pages directly behind
+	 * the FCBs, so everything else is invalid here.
+	 */
+	if (fcb->DBBTSearchAreaStartAddress != 1)
+		return -EINVAL;
+
+	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
+
+	memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
+	encode_hamming_13_8(fcb_raw_page + 12, fcb_raw_page + 12 + 512, 512);
+
+	dbbt = dbbt_data_create(mtd);
+
+	/*
+	 * Set the first and second byte of OOB data to 0xFF, not 0x00. These
+	 * bytes are used as the Manufacturers Bad Block Marker (MBBM). Since
+	 * the FCB is mostly written to the first page in a block, a scan for
+	 * factory bad blocks will detect these blocks as bad, e.g. when
+	 * function nand_scan_bbt() is executed to build a new bad block table.
+	 */
+	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
+
+	for (i = 0; i < 4; i++) {
+		if (mtd_peb_is_bad(mtd, i))
+			continue;
+
+		pr_info("Writing FCB/DBBT on block %d\n", i);
+
+		ret = imx_bbu_write_fcb(mtd, i, fcb_raw_page, dbbt);
+		if (ret)
+			pr_err("Writing FCB/DBBT %d failed with: %s\n", i, strerror(-ret));
+		else
+			valid++;
+	}
+
+	free(fcb_raw_page);
+	free(dbbt);
+
+	if (!valid)
+		pr_err("No FCBs/DBBTs could be written. System won't boot from Nand\n");
+
+	return valid > 0 ? 0 : -EIO;
 }
 
 static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *data)
@@ -424,14 +583,9 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	struct cdev *bcb_cdev;
 	struct mtd_info *mtd;
 	int ret;
-	struct fcb_block *fcb;
-	struct dbbt_block *dbbt;
-	void *fcb_raw_page, *dbbt_page, *dbbt_data_page;
-	void *ecc;
-	int written;
+	struct fcb_block fcb = {};
 	void *fw;
 	unsigned fw_size, partition_size;
-	int i;
 	enum filetype filetype;
 	unsigned num_blocks_fw;
 	int pages_per_block;
@@ -454,15 +608,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	partition_size = mtd->size;
 	pages_per_block = mtd->erasesize / mtd->writesize;
 
-	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
-
-	fcb = fcb_raw_page + 12;
-	ecc = fcb_raw_page + 512 + 12;
-
-	dbbt_page = xzalloc(mtd->writesize);
-	dbbt_data_page = xzalloc(mtd->writesize);
-	dbbt = dbbt_page;
-
 	/*
 	 * We have to write one additional page to make the ROM happy.
 	 * Maybe the PagesInFirmwarex fields are really the number of pages - 1.
@@ -496,59 +641,18 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	if (ret < 0)
 		goto out;
 
-	fcb->Firmware1_startingPage = imx_bbu_firmware_start_block(mtd, 0) * pages_per_block;
-	fcb->Firmware2_startingPage = imx_bbu_firmware_start_block(mtd, 1) * pages_per_block;
-	fcb->PagesInFirmware1 = ALIGN(data->len, mtd->writesize) / mtd->writesize;
-	fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
-
-	fcb_create(imx_handler, fcb, mtd);
-	encode_hamming_13_8(fcb, ecc, 512);
-
-	/*
-	 * Set the first and second byte of OOB data to 0xFF, not 0x00. These
-	 * bytes are used as the Manufacturers Bad Block Marker (MBBM). Since
-	 * the FCB is mostly written to the first page in a block, a scan for
-	 * factory bad blocks will detect these blocks as bad, e.g. when
-	 * function nand_scan_bbt() is executed to build a new bad block table.
-	 */
-	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
+	fcb.Firmware1_startingPage = imx_bbu_firmware_start_block(mtd, 0) * pages_per_block;
+	fcb.Firmware2_startingPage = imx_bbu_firmware_start_block(mtd, 1) * pages_per_block;
+	fcb.PagesInFirmware1 = ALIGN(data->len, mtd->writesize) / mtd->writesize;
+	fcb.PagesInFirmware2 = fcb.PagesInFirmware1;
 
-	dbbt->Checksum = 0;
-	dbbt->FingerPrint = 0x54424244;
-	dbbt->Version = 0x01000000;
+	fcb_create(imx_handler, &fcb, mtd);
 
-	ret = dbbt_data_create(mtd, dbbt_data_page, partition_size / mtd->erasesize);
+	ret = imx_bbu_write_fcbs_dbbts(mtd, &fcb);
 	if (ret < 0)
 		goto out;
 
-	if (ret > 0) {
-		dbbt->DBBTNumOfPages = 1;
-		if (imx_handler->dbbt_create)
-			imx_handler->dbbt_create(imx_handler, dbbt, ret);
-	}
-
-	for (i = 0; i < 4; i++) {
-		ret = raw_write_page(mtd, fcb_raw_page, mtd->erasesize * i);
-		if (ret)
-			goto out;
-
-		ret = mtd_write(mtd, mtd->erasesize * i + mtd->writesize,
-				mtd->writesize, &written, dbbt_page);
-		if (ret)
-			goto out;
-
-		if (dbbt->DBBTNumOfPages > 0) {
-			ret = mtd_write(mtd, mtd->erasesize * i + mtd->writesize * 5,
-					mtd->writesize, &written, dbbt_data_page);
-			if (ret)
-				goto out;
-		}
-	}
-
 out:
-	free(dbbt_page);
-	free(dbbt_data_page);
-	free(fcb_raw_page);
 	free(fw);
 
 	return ret;
@@ -641,23 +745,6 @@ static void imx28_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 	fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
 }
 
-static void imx28_dbbt_create(struct imx_nand_fcb_bbu_handler *imx_handler,
-		struct dbbt_block *dbbt, int num_bad_blocks)
-{
-	uint32_t a = 0;
-	uint8_t *p = (void *)dbbt;
-	int i;
-
-	dbbt->numberBB = num_bad_blocks;
-
-	for (i = 4; i < 512; i++)
-		a += p[i];
-
-	a ^= 0xffffffff;
-
-	dbbt->Checksum = a;
-}
-
 int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 {
 	struct imx_nand_fcb_bbu_handler *imx_handler;
@@ -666,7 +753,6 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 
 	imx_handler = xzalloc(sizeof(*imx_handler));
 	imx_handler->fcb_create = imx28_fcb_create;
-	imx_handler->dbbt_create = imx28_dbbt_create;
 
 	imx_handler->filetype = filetype_mxs_bootstream;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
