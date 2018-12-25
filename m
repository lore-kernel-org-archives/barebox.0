Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.i.mail.ru ([217.69.128.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gbggt-0004a7-U5
 for barebox@lists.infradead.org; Tue, 25 Dec 2018 06:59:50 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 25 Dec 2018 09:59:22 +0300
Message-Id: <20181225065923.15943-1-shc_work@mail.ru>
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
Subject: [PATCH 1/2] imx-bbu-nand-fcb: Check the required space a bit earlier
To: barebox@lists.infradead.org

If the partition size is too small for imx_bbu_nand_update(),
this can lead to an infinite loop in the imx_bbu_firmware_fcb_start_page()
function, because imx_bbu_firmware_max_blocks() returns zero.
Fix this by place imx_bbu_firmware_max_blocks() a bit early.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/imx-bbu-nand-fcb.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 8c276a43c..8383aeacf 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1224,6 +1224,12 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	mtd = bcb_cdev->mtd;
 	partition_size = mtd->size;
 
+	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
+	if (num_blocks_fw < 1) {
+		pr_err("Not enough space for firmware\n");
+		return -ENOSPC;
+	}
+
 	for (i = 0; i < 4; i++) {
 		read_fcb(mtd, i, &fcb);
 		if (fcb)
@@ -1329,8 +1335,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 		pr_info("Refreshing existing firmware\n");
 	}
 
-	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
-
 	if (num_blocks_fw * mtd->erasesize < fw_size) {
 		pr_err("Not enough space for update\n");
 		return -ENOSPC;
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
