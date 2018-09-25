Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4iFe-0000Ig-K9
 for barebox@lists.infradead.org; Tue, 25 Sep 2018 07:59:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Sep 2018 09:58:46 +0200
Message-Id: <20180925075847.4585-3-s.hauer@pengutronix.de>
In-Reply-To: <20180925075847.4585-1-s.hauer@pengutronix.de>
References: <20180925075847.4585-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] imx-bbu-nand-fcb: Workaround ROM not being able to handle
 bad blocks properly
To: Barebox List <barebox@lists.infradead.org>

When reading a firmware image the ROM only checks for a bad block when
advancing the read position, but not if the initial block is good.
Hence we cannot directly point to the first firmware block, but must
instead point to the first *good* firmware block.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 45 +++++++++++++++++++++++++++++++++------
 1 file changed, 38 insertions(+), 7 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 5535a92d54..15ddf5d7b0 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -555,6 +555,40 @@ static int imx_bbu_firmware_start_block(struct mtd_info *mtd, int num)
 	return 4 + num * imx_bbu_firmware_max_blocks(mtd);
 }
 
+/**
+ * imx_bbu_firmware_fcb_start_page - get start page for a firmware slot
+ * @mtd: The mtd device
+ * @num: The slot number (0 or 1)
+ *
+ * This returns the start page for a firmware slot, to be written into the
+ * Firmwaren_startingPage field in the FCB.
+ */
+static int imx_bbu_firmware_fcb_start_page(struct mtd_info *mtd, int num)
+{
+	int block, blocksleft;
+	int pages_per_block = mtd->erasesize / mtd->writesize;
+
+	block = imx_bbu_firmware_start_block(mtd, num);
+
+	blocksleft = imx_bbu_firmware_max_blocks(mtd);
+
+	/*
+	 * The ROM only checks for a bad block when advancing the read position,
+	 * but not if the initial block is good, hence we cannot directly point
+	 * to the first firmware block, but must instead point to the first *good*
+	 * firmware block.
+	 */
+	while (mtd_peb_is_bad(mtd, block)) {
+		block++;
+		blocksleft--;
+		if (!blocksleft)
+			break;
+	}
+
+	return block * pages_per_block;
+}
+
+
 static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 				  size_t len)
 {
@@ -1073,9 +1107,8 @@ static void read_firmware_all(struct mtd_info *mtd, struct fcb_block *fcb, void
 			     int *used_refresh, int *unused_refresh, int *used)
 {
 	void *primary = NULL, *secondary = NULL;
-	int pages_per_block = mtd->erasesize / mtd->writesize;
-	int fw0 = imx_bbu_firmware_start_block(mtd, 0) * pages_per_block;
-	int fw1 = imx_bbu_firmware_start_block(mtd, 1) * pages_per_block;
+	int fw0 = imx_bbu_firmware_fcb_start_page(mtd, 0);
+	int fw1 = imx_bbu_firmware_fcb_start_page(mtd, 1);
 	int first, ret, primary_refresh = 0, secondary_refresh = 0;
 
 	*used_refresh = 0;
@@ -1157,7 +1190,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	unsigned fw_size, partition_size;
 	enum filetype filetype;
 	unsigned num_blocks_fw;
-	int pages_per_block;
 	int used = 0;
 	int fw_orig_len;
 	int used_refresh = 0, unused_refresh = 0;
@@ -1180,7 +1212,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 
 	mtd = bcb_cdev->mtd;
 	partition_size = mtd->size;
-	pages_per_block = mtd->erasesize / mtd->writesize;
 
 	for (i = 0; i < 4; i++) {
 		read_fcb(mtd, i, &fcb);
@@ -1263,8 +1294,8 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 
 		free(fcb);
 		fcb = xzalloc(sizeof(*fcb));
-		fcb->Firmware1_startingPage = imx_bbu_firmware_start_block(mtd, !used) * pages_per_block;
-		fcb->Firmware2_startingPage = imx_bbu_firmware_start_block(mtd, used) * pages_per_block;
+		fcb->Firmware1_startingPage = imx_bbu_firmware_fcb_start_page(mtd, !used);
+		fcb->Firmware2_startingPage = imx_bbu_firmware_fcb_start_page(mtd, used);
 		fcb->PagesInFirmware1 = fw_size / mtd->writesize;
 		fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
