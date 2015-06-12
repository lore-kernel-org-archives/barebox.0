Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZZ-0006uz-Ij
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:46 +0200
Message-Id: <1434090946-6574-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] imx-bbu-nand-fcb: Split space for firmware in two equal
 regions
To: Barebox List <barebox@lists.infradead.org>

We used to write the second firmware right after the first
firmware. However, splitting the available space into two
equal regions has advantages: When we update barebox the next
time the generated FCB/DBBT blocks will be the same as with the
last update, so in case of power failure it is more likely that
we have valid data in one of the FCB/DBBT areas.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 48 ++++++++++++++++++++++++++++++++---------------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index c4f49b5..22031f5 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -300,7 +300,8 @@ static int imx_bbu_erase(struct mtd_info *mtd)
 	return 0;
 }
 
-static int imx_bbu_write_firmware(struct mtd_info *mtd, int block, void *buf, size_t len)
+static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned block,
+		unsigned num_blocks, void *buf, size_t len)
 {
 	uint64_t offset = block * mtd->erasesize;
 	int ret;
@@ -309,6 +310,9 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, int block, void *buf, si
 	while (len > 0) {
 		int now = min(len, mtd->erasesize);
 
+		if (!num_blocks)
+			return -ENOSPC;
+
 		pr_debug("writing %p at 0x%08llx, left 0x%08x\n",
 				buf, offset, len);
 
@@ -327,6 +331,7 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, int block, void *buf, si
 		len -= now;
 		buf += now;
 		block++;
+		num_blocks--;
 	}
 
 	return block;
@@ -359,16 +364,17 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 		container_of(handler, struct imx_nand_fcb_bbu_handler, handler);
 	struct cdev *bcb_cdev;
 	struct mtd_info *mtd;
-	int ret, block_fw1, block_fw2, block_last;
+	int ret, block_fw1, block_fw2;
 	struct fcb_block *fcb;
 	struct dbbt_block *dbbt;
 	void *fcb_raw_page, *dbbt_page, *dbbt_data_page;
 	void *ecc;
 	int written;
 	void *fw;
-	unsigned fw_size;
+	unsigned fw_size, partition_size;
 	int i;
 	enum filetype filetype;
+	unsigned num_blocks_fcb_dbbt, num_blocks, num_blocks_fw;
 
 	filetype = file_detect_type(data->image, data->len);
 
@@ -378,10 +384,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 				file_type_to_string(filetype)))
 		return -EINVAL;
 
-	ret = bbu_confirm(data);
-	if (ret)
-		return ret;
-
 	bcb_cdev = cdev_by_name(handler->devicefile);
 	if (!bcb_cdev) {
 		pr_err("%s: No FCB device!\n", __func__);
@@ -389,6 +391,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	}
 
 	mtd = bcb_cdev->mtd;
+	partition_size = mtd->size;
 
 	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
 
@@ -408,24 +411,39 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	fw = xzalloc(fw_size);
 	memcpy(fw, data->image, data->len);
 
-	block_fw1 = 4;
+	num_blocks_fcb_dbbt = 4;
+	num_blocks = partition_size / mtd->erasesize;
+	num_blocks_fw = (num_blocks - num_blocks_fcb_dbbt) / 2;
+
+	block_fw1 = num_blocks_fcb_dbbt;
+	block_fw2 = num_blocks_fcb_dbbt + num_blocks_fw;
+
+	pr_info("writing first firmware to block %d (ofs 0x%08x)\n",
+			block_fw1, block_fw1 * mtd->erasesize);
+	pr_info("writing second firmware to block %d (ofs 0x%08x)\n",
+			block_fw2, block_fw2 * mtd->erasesize);
+	pr_info("maximum size per firmware: 0x%08x bytes\n",
+			num_blocks_fw * mtd->erasesize);
+
+	if (num_blocks_fw * mtd->erasesize < fw_size)
+		return -ENOSPC;
+
+	ret = bbu_confirm(data);
+	if (ret)
+		goto out;
 
 	ret = imx_bbu_erase(mtd);
 	if (ret)
 		goto out;
 
-	ret = imx_bbu_write_firmware(mtd, block_fw1, fw, fw_size);
+	ret = imx_bbu_write_firmware(mtd, block_fw1, num_blocks_fw, fw, fw_size);
 	if (ret < 0)
 		goto out;
 
-	block_fw2 = ret;
-
-	ret = imx_bbu_write_firmware(mtd, block_fw2, fw, fw_size);
+	ret = imx_bbu_write_firmware(mtd, block_fw2, num_blocks_fw, fw, fw_size);
 	if (ret < 0)
 		goto out;
 
-	block_last = ret;
-
 	fcb->Firmware1_startingPage = block_fw1 * mtd->erasesize / mtd->writesize;
 	fcb->Firmware2_startingPage = block_fw2 * mtd->erasesize / mtd->writesize;
 	fcb->PagesInFirmware1 = ALIGN(data->len, mtd->writesize) / mtd->writesize;
@@ -451,7 +469,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	dbbt->FingerPrint = 0x54424244;
 	dbbt->Version = 0x01000000;
 
-	ret = dbbt_data_create(mtd, dbbt_data_page, block_last);
+	ret = dbbt_data_create(mtd, dbbt_data_page, block_fw2 + num_blocks_fw);
 	if (ret < 0)
 		goto out;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
