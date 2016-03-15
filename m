Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0w-0005U3-Ch
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:06 +0100
Message-Id: <1458040754-32240-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] imx-bbu-nand-fcb: factor out layout functions
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 66 +++++++++++++++++++++++++++++++++--------------
 1 file changed, 46 insertions(+), 20 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 3eb9e9b..26b0b29 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -300,12 +300,45 @@ static int imx_bbu_erase(struct mtd_info *mtd)
 	return 0;
 }
 
-static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned block,
-		unsigned num_blocks, void *buf, size_t len)
+/**
+ * imx_bbu_firmware_max_blocks - get max number of blocks for firmware
+ * @mtd: The mtd device
+ *
+ * We use 4 blocks for FCB/DBBT, the rest of the partition is
+ * divided into two equally sized firmware slots. This function
+ * returns the number of blocks available for one firmware slot.
+ * The actually usable size may be smaller due to bad blocks.
+ */
+static int imx_bbu_firmware_max_blocks(struct mtd_info *mtd)
+{
+	return (mtd_div_by_eb(mtd->size, mtd) - 4) / 2;
+}
+
+/**
+ * imx_bbu_firmware_start_block - get start block for a firmware slot
+ * @mtd: The mtd device
+ * @num: The slot number (0 or 1)
+ *
+ * We use 4 blocks for FCB/DBBT, the rest of the partition is
+ * divided into two equally sized firmware slots. This function
+ * returns the start block for the given firmware slot.
+ */
+static int imx_bbu_firmware_start_block(struct mtd_info *mtd, int num)
+{
+	return 4 + num * imx_bbu_firmware_max_blocks(mtd);
+}
+
+static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
+				  size_t len)
 {
-	uint64_t offset = block * mtd->erasesize;
 	int ret;
 	size_t written;
+	int num_blocks = imx_bbu_firmware_max_blocks(mtd);
+	int block = imx_bbu_firmware_start_block(mtd, num);
+	uint64_t offset = block * mtd->erasesize;
+
+	pr_info("writing firmware %d to block %d (ofs 0x%08x)\n",
+			num, block, block * mtd->erasesize);
 
 	while (len > 0) {
 		int now = min(len, mtd->erasesize);
@@ -364,7 +397,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 		container_of(handler, struct imx_nand_fcb_bbu_handler, handler);
 	struct cdev *bcb_cdev;
 	struct mtd_info *mtd;
-	int ret, block_fw1, block_fw2;
+	int ret;
 	struct fcb_block *fcb;
 	struct dbbt_block *dbbt;
 	void *fcb_raw_page, *dbbt_page, *dbbt_data_page;
@@ -374,7 +407,8 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	unsigned fw_size, partition_size;
 	int i;
 	enum filetype filetype;
-	unsigned num_blocks_fcb_dbbt, num_blocks, num_blocks_fw;
+	unsigned num_blocks_fw;
+	int pages_per_block;
 
 	filetype = file_detect_type(data->image, data->len);
 
@@ -392,6 +426,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 
 	mtd = bcb_cdev->mtd;
 	partition_size = mtd->size;
+	pages_per_block = mtd->erasesize / mtd->writesize;
 
 	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
 
@@ -411,17 +446,8 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	fw = xzalloc(fw_size);
 	memcpy(fw, data->image, data->len);
 
-	num_blocks_fcb_dbbt = 4;
-	num_blocks = partition_size / mtd->erasesize;
-	num_blocks_fw = (num_blocks - num_blocks_fcb_dbbt) / 2;
-
-	block_fw1 = num_blocks_fcb_dbbt;
-	block_fw2 = num_blocks_fcb_dbbt + num_blocks_fw;
+	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
 
-	pr_info("writing first firmware to block %d (ofs 0x%08x)\n",
-			block_fw1, block_fw1 * mtd->erasesize);
-	pr_info("writing second firmware to block %d (ofs 0x%08x)\n",
-			block_fw2, block_fw2 * mtd->erasesize);
 	pr_info("maximum size per firmware: 0x%08x bytes\n",
 			num_blocks_fw * mtd->erasesize);
 
@@ -436,16 +462,16 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	if (ret)
 		goto out;
 
-	ret = imx_bbu_write_firmware(mtd, block_fw1, num_blocks_fw, fw, fw_size);
+	ret = imx_bbu_write_firmware(mtd, 0, fw, fw_size);
 	if (ret < 0)
 		goto out;
 
-	ret = imx_bbu_write_firmware(mtd, block_fw2, num_blocks_fw, fw, fw_size);
+	ret = imx_bbu_write_firmware(mtd, 1, fw, fw_size);
 	if (ret < 0)
 		goto out;
 
-	fcb->Firmware1_startingPage = block_fw1 * mtd->erasesize / mtd->writesize;
-	fcb->Firmware2_startingPage = block_fw2 * mtd->erasesize / mtd->writesize;
+	fcb->Firmware1_startingPage = imx_bbu_firmware_start_block(mtd, 0) * pages_per_block;
+	fcb->Firmware2_startingPage = imx_bbu_firmware_start_block(mtd, 1) * pages_per_block;
 	fcb->PagesInFirmware1 = ALIGN(data->len, mtd->writesize) / mtd->writesize;
 	fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
 
@@ -465,7 +491,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	dbbt->FingerPrint = 0x54424244;
 	dbbt->Version = 0x01000000;
 
-	ret = dbbt_data_create(mtd, dbbt_data_page, block_fw2 + num_blocks_fw);
+	ret = dbbt_data_create(mtd, dbbt_data_page, partition_size / mtd->erasesize);
 	if (ret < 0)
 		goto out;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
