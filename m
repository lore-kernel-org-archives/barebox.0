Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baO8g-0000O1-H1
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 14:17:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Aug 2016 16:17:20 +0200
Message-Id: <1471529842-14479-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
References: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mtd: nand-imx: split preset_v1_v2 into two functions
To: Barebox List <barebox@lists.infradead.org>

preset_v1_v2() still needs to distinguish between v1 and v2 and
the shared code is not very big. Since we need another v2 only
addtion in the next patch split the function into a v1 and a v2
specific function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 42 +++++++++++++++++++++++++++++-------------
 1 file changed, 29 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index f54fe21..47d9d9a 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -784,16 +784,37 @@ static int get_eccsize(struct mtd_info *mtd)
 		return 8;
 }
 
-static void preset_v1_v2(struct mtd_info *mtd)
+static void preset_v1(struct mtd_info *mtd)
 {
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
 	uint16_t config1 = 0;
 
-	if (nfc_is_v21())
-		config1 |= NFC_V2_CONFIG1_FP_INT;
+	host->eccsize = 1;
+
+	writew(config1, host->regs + NFC_V1_V2_CONFIG1);
+	/* preset operation */
+
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
+
+	/* Blocks to be unlocked */
+	writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
+	writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
 
-	if (nfc_is_v21() && mtd->writesize) {
+	/* Unlock Block Command for given address range */
+	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
+}
+
+static void preset_v2(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	uint16_t config1 = 0;
+
+	config1 |= NFC_V2_CONFIG1_FP_INT;
+
+	if (mtd->writesize) {
 		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
 
 		host->eccsize = get_eccsize(mtd);
@@ -812,14 +833,8 @@ static void preset_v1_v2(struct mtd_info *mtd)
 	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
 
 	/* Blocks to be unlocked */
-	if (nfc_is_v21()) {
-		writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
-		writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
-	} else if (nfc_is_v1()) {
-		writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
-		writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
-	} else
-		BUG();
+	writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
+	writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
 
 	/* Unlock Block Command for given address range */
 	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
@@ -1167,7 +1182,6 @@ static int __init imxnd_probe(struct device_d *dev)
 	host->data_buf = (uint8_t *)(host + 1);
 
 	if (nfc_is_v1() || nfc_is_v21()) {
-		host->preset = preset_v1_v2;
 		host->send_cmd = send_cmd_v1_v2;
 		host->send_addr = send_addr_v1_v2;
 		host->send_page = send_page_v1_v2;
@@ -1189,6 +1203,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 		oob_4kpage = &nandv2_hw_eccoob_4k; /* FIXME : to check */
+		host->preset = preset_v2;
 	} else if (nfc_is_v1()) {
 		iores = dev_request_mem_resource(dev, 0);
 		if (IS_ERR(iores))
@@ -1201,6 +1216,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
 		oob_largepage = &nandv1_hw_eccoob_largepage;
 		oob_4kpage = &nandv1_hw_eccoob_smallpage; /* FIXME : to check  */
+		host->preset = preset_v1;
 	} else if (nfc_is_v3_2()) {
 		iores = dev_request_mem_resource(dev, 0);
 		if (IS_ERR(iores))
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
