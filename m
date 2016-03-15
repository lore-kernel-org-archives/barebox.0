Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0l-000106-Ly
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:09 +0100
Message-Id: <1458040754-32240-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] imx-bbu-nand-fcb: erase on demand
To: Barebox List <barebox@lists.infradead.org>

Instead of erasing the whole partition on update entry, erase the areas
separately when we actually want to write them. This is done as a step
towards robust update.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 47 ++++++++++++++---------------------------------
 1 file changed, 14 insertions(+), 33 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 492dd92..3dc9274 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -272,34 +272,6 @@ static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 	return 0;
 }
 
-static int imx_bbu_erase(struct mtd_info *mtd)
-{
-	uint64_t offset = 0;
-	struct erase_info erase;
-	int ret;
-
-	while (offset < mtd->size) {
-		pr_debug("erasing at 0x%08llx\n", offset);
-		if (mtd_block_isbad(mtd, offset)) {
-			pr_debug("erase skip block @ 0x%08llx\n", offset);
-			offset += mtd->erasesize;
-			continue;
-		}
-
-		memset(&erase, 0, sizeof(erase));
-		erase.addr = offset;
-		erase.len = mtd->erasesize;
-
-		ret = mtd_erase(mtd, &erase);
-		if (ret)
-			return ret;
-
-		offset += mtd->erasesize;
-	}
-
-	return 0;
-}
-
 static int mtd_peb_write_block(struct mtd_info *mtd, void *buf, int block, int len)
 {
 	int ret;
@@ -352,13 +324,22 @@ static int imx_bbu_firmware_start_block(struct mtd_info *mtd, int num)
 static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 				  size_t len)
 {
-	int ret;
+	int ret, i;
 	int num_blocks = imx_bbu_firmware_max_blocks(mtd);
 	int block = imx_bbu_firmware_start_block(mtd, num);
 
 	pr_info("writing firmware %d to block %d (ofs 0x%08x)\n",
 			num, block, block * mtd->erasesize);
 
+	for (i = 0; i < num_blocks; i++) {
+		if (mtd_peb_is_bad(mtd, block + i))
+			continue;
+
+		ret = mtd_peb_erase(mtd, block + i);
+		if (ret && ret != -EIO)
+			return ret;
+	}
+
 	while (len > 0) {
 		int now = min(len, mtd->erasesize);
 
@@ -470,6 +451,10 @@ again:
 	if (cpu_is_mx28())
 		imx28_dbbt_create(dbbt, *n_bad_blocksp);
 
+	ret = mtd_peb_erase(mtd, block);
+	if (ret)
+		return ret;
+
 	ret = raw_write_page(mtd, fcb_raw_page, block * mtd->erasesize);
 	if (ret) {
 		pr_err("Writing FCB on block %d failed with %s\n",
@@ -629,10 +614,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	if (ret)
 		goto out;
 
-	ret = imx_bbu_erase(mtd);
-	if (ret)
-		goto out;
-
 	ret = imx_bbu_write_firmware(mtd, 0, fw, fw_size);
 	if (ret < 0)
 		goto out;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
