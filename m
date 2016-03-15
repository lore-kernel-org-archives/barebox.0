Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0p-00010B-9w
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:10 +0100
Message-Id: <1458040754-32240-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] imx-bbu-nand-fcb: Only write FCBs/DBBTs when necessary
To: Barebox List <barebox@lists.infradead.org>

Instead of writing the FCBs/DBBTs on every update write them
only if they have changed or if a block needs cleanup (returns
-EUCLEAN)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 230 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 230 insertions(+)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 3dc9274..0c7f75c 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -137,6 +137,22 @@ static void encode_hamming_13_8(void *_src, void *_ecc, size_t size)
 		ecc[i] = calculate_parity_13_8(src[i]);
 }
 
+static int lookup_single_error_13_8(unsigned char syndrome)
+{
+	int i;
+	unsigned char syndrome_table[] = {
+		0x1c, 0x16, 0x13, 0x19,
+		0x1a, 0x07, 0x15, 0x0e,
+		0x01, 0x02, 0x04, 0x08,
+		0x10,
+	};
+
+	for (i = 0; i < 13; i ++)
+		if (syndrome_table[i] == syndrome)
+			return i;
+	return -1;
+}
+
 static uint32_t calc_chksum(void *buf, size_t size)
 {
 	u32 chksum = 0;
@@ -238,6 +254,66 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
         return ret;
 }
 
+static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
+{
+	int i;
+	int bitflips = 0;
+	u8 parity, np, syndrome, bit_to_flip;
+	u8 *fcb, *ecc;
+	int ret;
+	void *rawpage;
+
+	*retfcb = NULL;
+
+	rawpage = xmalloc(mtd->writesize + mtd->oobsize);
+
+	ret = raw_read_page(mtd, rawpage, mtd->erasesize * num);
+	if (ret) {
+		pr_err("Cannot read block %d\n", num);
+		goto err;
+	}
+
+	fcb = rawpage + 12;
+	ecc = rawpage + 512 + 12;
+
+	for (i = 0; i < 512; i++) {
+		parity = ecc[i];
+		np = calculate_parity_13_8(fcb[i]);
+
+		syndrome = np ^ parity;
+		if (syndrome == 0)
+			continue;
+
+		if (!(hweight8(syndrome) & 1)) {
+			pr_err("Uncorrectable error at offset %d\n", i);
+			ret = -EIO;
+			goto err;
+		}
+
+		bit_to_flip = lookup_single_error_13_8(syndrome);
+		if (bit_to_flip < 0) {
+			pr_err("Uncorrectable error at offset %d\n", i);
+			ret = -EIO;
+			goto err;
+		}
+
+		bitflips++;
+
+		if (bit_to_flip > 7)
+			ecc[i] ^= 1 << (bit_to_flip - 8);
+		else
+			fcb[i] ^= 1 << bit_to_flip;
+	}
+
+	*retfcb = xmemdup(rawpage + 12, 512);
+
+	ret = 0;
+err:
+	free(rawpage);
+
+	return ret;
+}
+
 static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd)
 {
@@ -495,6 +571,154 @@ out:
 }
 
 /**
+ * dbbt_block_is_bad - Check if according to the given DBBT a block is bad
+ * @dbbt: The DBBT data page
+ * @block: The block to test
+ *
+ * This function checks if a block is marked as bad in the given DBBT.
+ *
+ * return: true if the block is bad, false otherwise.
+ */
+static int dbbt_block_is_bad(void *_dbbt, int block)
+{
+	int i;
+	u32 *dbbt = _dbbt;
+	int num_bad_blocks;
+
+	if (!_dbbt)
+		return false;
+
+	dbbt++; /* reserved */
+
+	num_bad_blocks = *dbbt++;
+
+	for (i = 0; i < num_bad_blocks; i++) {
+		if (*dbbt == block)
+			return true;
+		dbbt++;
+	}
+
+	return false;
+}
+
+/**
+ * dbbt_check - Check if DBBT is readable and consistent to the mtd BBT
+ * @mtd: The mtd Nand device
+ * @dbbt: The page where the DBBT is found
+ *
+ * This function checks if the DBBT is readable and consistent to the mtd
+ * layers idea of bad blocks.
+ *
+ * return: 0 if the DBBT is readable and consistent to the mtd BBT, a
+ * negative error code otherwise.
+ */
+static int dbbt_check(struct mtd_info *mtd, int page)
+{
+	int ret, needs_cleanup = 0;
+	size_t r;
+	void *dbbt_header;
+	void *dbbt_entries = NULL;
+	struct dbbt_block *dbbt;
+	int num_blocks = mtd_div_by_eb(mtd->size, mtd);
+	int n;
+
+	dbbt_header = xmalloc(mtd->writesize);
+
+	ret = mtd_read(mtd, page * mtd->writesize, mtd->writesize, &r, dbbt_header);
+	if (ret == -EUCLEAN) {
+		pr_warn("page %d needs cleaning\n", page);
+		needs_cleanup = 1;
+	} else if (ret < 0) {
+		pr_err("Cannot read page %d: %s\n", page, strerror(-ret));
+		goto out;
+	}
+
+	dbbt = dbbt_header;
+
+	if (dbbt->FingerPrint != 0x54424244) {
+		pr_err("dbbt at page %d is readable but does not contain a valid DBBT\n",
+		       page);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (dbbt->DBBTNumOfPages) {
+		dbbt_entries = xmalloc(mtd->writesize);
+
+		ret = mtd_read(mtd, (page + 4) * mtd->writesize, mtd->writesize, &r, dbbt_entries);
+		if (ret == -EUCLEAN) {
+			pr_warn("page %d needs cleaning\n", page);
+			needs_cleanup = 1;
+		} else if (ret < 0) {
+			pr_err("Cannot read page %d: %s\n", page, strerror(-ret));
+			free(dbbt_entries);
+			goto out;
+		}
+	} else {
+		dbbt_entries = NULL;
+	}
+
+	for (n = 0; n < num_blocks; n++) {
+		if (mtd_peb_is_bad(mtd, n) != dbbt_block_is_bad(dbbt_entries, n)) {
+			ret = -EINVAL;
+			goto out;
+		}
+	}
+
+	ret = 0;
+out:
+	free(dbbt_header);
+	free(dbbt_entries);
+
+	if (ret < 0)
+		return ret;
+	if (needs_cleanup)
+		return -EUCLEAN;
+	return 0;
+}
+
+/**
+ * fcb_dbbt_check - Check if a FCB/DBBT is valid
+ * @mtd: The mtd Nand device
+ * @num: The number of the FCB, corresponds to the eraseblock number
+ * @fcb: The FCB to check against
+ *
+ * This function checks if FCB/DBBT found on a device are valid. This
+ * means:
+ * - the FCB is readable on the device
+ * - the FCB is the same as the reference passed in @fcb
+ * - the DBBT is consistent to the mtd BBT
+ *
+ * return: 0 if the FCB/DBBT are valid, a negative error code otherwise
+ */
+static int fcb_dbbt_check(struct mtd_info *mtd, int num, struct fcb_block *fcb)
+{
+	int ret;
+	struct fcb_block *f;
+	int pages_per_block = mtd->erasesize / mtd->writesize;
+
+	ret = read_fcb(mtd, num, &f);
+	if (ret)
+		return ret;
+
+	if (memcmp(fcb, f, sizeof(*fcb))) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	ret = dbbt_check(mtd, num * pages_per_block + 1);
+	if (ret)
+		goto out;
+
+	ret = 0;
+
+out:
+	free(f);
+
+	return ret;
+}
+
+/**
  * imx_bbu_write_fcbs_dbbts - Write FCBs/DBBTs to first four blocks
  * @mtd: The mtd device to write the FCBs/DBBTs to
  * @fcb: The FCB block to write
@@ -543,6 +767,12 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 		if (mtd_peb_is_bad(mtd, i))
 			continue;
 
+		if (!fcb_dbbt_check(mtd, i, fcb)) {
+			valid++;
+			pr_info("FCB/DBBT on block %d still valid\n", i);
+			continue;
+		}
+
 		pr_info("Writing FCB/DBBT on block %d\n", i);
 
 		ret = imx_bbu_write_fcb(mtd, i, fcb_raw_page, dbbt);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
