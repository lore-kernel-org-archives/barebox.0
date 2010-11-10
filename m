Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3s-0005Po-Us
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:55 +0100
Message-Id: <1289400839-5937-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/13] imx nand: move initialization to preset function
To: barebox@lists.infradead.org

This has two purposes. First we need to factor out initialization
to be able to do something different on v3 type controllers,
second with this patch we are independent of preinitialized register
values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |  110 +++++++++++++++++++++++++++---------------
 1 files changed, 71 insertions(+), 39 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 214f391..b3191a7 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -64,6 +64,8 @@
 #define NFC_V1_V2_CONFIG1_RST		(1 << 6)
 #define NFC_V1_V2_CONFIG1_CE		(1 << 7)
 #define NFC_V1_V2_CONFIG1_ONE_CYCLE	(1 << 8)
+#define NFC_V2_CONFIG1_PPB(x)		(((x) & 0x3) << 9)
+#define NFC_V2_CONFIG1_FP_INT		(1 << 11)
 
 #define NFC_V1_V2_CONFIG2_INT		(1 << 15)
 
@@ -640,6 +642,67 @@ static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
 }
 
 /*
+ * v2 and v3 type controllers can do 4bit or 8bit ecc depending
+ * on how much oob the nand chip has. For 8bit ecc we need at least
+ * 26 bytes of oob data per 512 byte block.
+ */
+static int get_eccsize(struct mtd_info *mtd)
+{
+	int oobbytes_per_512 = 0;
+
+	oobbytes_per_512 = mtd->oobsize * 512 / mtd->writesize;
+
+	if (oobbytes_per_512 < 26)
+		return 4;
+	else
+		return 8;
+}
+
+static void preset_v1_v2(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	uint16_t config1 = 0;
+
+	if (nand_chip->ecc.mode == NAND_ECC_HW)
+		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
+
+	if (nfc_is_v21())
+		config1 |= NFC_V2_CONFIG1_FP_INT;
+
+	if (nfc_is_v21() && mtd->writesize) {
+		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
+
+		host->eccsize = get_eccsize(mtd);
+		if (host->eccsize == 4)
+			config1 |= NFC_V2_CONFIG1_ECC_MODE_4;
+
+		config1 |= NFC_V2_CONFIG1_PPB(ffs(pages_per_block) - 6);
+	} else {
+		host->eccsize = 1;
+	}
+
+	writew(config1, host->regs + NFC_V1_V2_CONFIG1);
+	/* preset operation */
+
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
+
+	/* Blocks to be unlocked */
+	if (nfc_is_v21()) {
+		writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
+		writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
+	} else if (nfc_is_v1()) {
+		writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
+		writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
+	} else
+		BUG();
+
+	/* Unlock Block Command for given address range */
+	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
+}
+
+/*
  * This function is used by the upper layer to write command to NAND Flash for
  * different operations to be carried out on NAND Flash
  *
@@ -667,6 +730,10 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	 * Command pre-processing step
 	 */
 	switch (command) {
+	case NAND_CMD_RESET:
+		host->preset(mtd);
+		host->send_cmd(host, command);
+		break;
 
 	case NAND_CMD_STATUS:
 		host->buf_start = 0;
@@ -745,7 +812,6 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 
 	case NAND_CMD_ERASE1:
 	case NAND_CMD_ERASE2:
-	case NAND_CMD_RESET:
 		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		break;
@@ -821,7 +887,6 @@ static int __init imxnd_probe(struct device_d *dev)
 	struct imx_nand_platform_data *pdata = dev->platform_data;
 	struct imx_nand_host *host;
 	struct nand_ecclayout *oob_smallpage, *oob_largepage;
-	u16 tmp;
 	int err = 0;
 
 #ifdef CONFIG_ARCH_IMX27
@@ -842,6 +907,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	host->main_area0 = host->base;
 
 	if (nfc_is_v1() || nfc_is_v21()) {
+		host->preset = preset_v1_v2;
 		host->send_cmd = send_cmd_v1_v2;
 		host->send_addr = send_addr_v1_v2;
 		host->send_page = send_page_v1_v2;
@@ -853,14 +919,12 @@ static int __init imxnd_probe(struct device_d *dev)
 		host->regs = host->base + 0x1e00;
 		host->spare0 = host->base + 0x1000;
 		host->spare_len = 64;
-		host->eccsize = 1;
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 	} else if (nfc_is_v1()) {
 		host->regs = host->base + 0xe00;
 		host->spare0 = host->base + 0x800;
 		host->spare_len = 16;
-		host->eccsize = 4;
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
 		oob_largepage = &nandv1_hw_eccoob_largepage;
 	}
@@ -891,14 +955,6 @@ static int __init imxnd_probe(struct device_d *dev)
 	clk_enable(host->clk);
 #endif
 
-	tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
-	tmp |= NFC_V1_V2_CONFIG1_INT_MSK;
-	tmp &= ~NFC_V1_V2_CONFIG1_SP_EN;
-	if (nfc_is_v21())
-		/* currently no support for 218 byte OOB with stronger ECC */
-		tmp |= NFC_V2_CONFIG1_ECC_MODE_4;
-	writew(tmp, host->regs + NFC_V1_V2_CONFIG1);
-
 	if (pdata->hw_ecc) {
 		this->ecc.calculate = imx_nand_calculate_ecc;
 		this->ecc.hwctl = imx_nand_enable_hwecc;
@@ -908,38 +964,11 @@ static int __init imxnd_probe(struct device_d *dev)
 			this->ecc.correct = imx_nand_correct_data_v2_v3;
 		this->ecc.mode = NAND_ECC_HW;
 		this->ecc.size = 512;
-		tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
-		tmp |= NFC_V1_V2_CONFIG1_ECC_EN;
-		writew(tmp, host->regs + NFC_V1_V2_CONFIG1);
 	} else {
 		this->ecc.size = 512;
 		this->ecc.mode = NAND_ECC_SOFT;
-		tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
-		tmp &= ~NFC_V1_V2_CONFIG1_ECC_EN;
-		writew(tmp, host->regs + NFC_V1_V2_CONFIG1);
 	}
 
-	/* Reset NAND */
-	this->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
-
-	/* preset operation */
-	/* Unlock the internal RAM Buffer */
-	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
-
-	/* Blocks to be unlocked */
-	if (nfc_is_v21()) {
-		writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
-		writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
-		this->ecc.bytes = 9;
-	} else if (nfc_is_v1()) {
-		writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
-		writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
-		this->ecc.bytes = 3;
-	}
-
-	/* Unlock Block Command for given address range */
-	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
-
 	this->ecc.layout = oob_smallpage;
 
 	/* NAND bus width determines access funtions used by upper layer */
@@ -962,6 +991,9 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
+	/* Call preset again, with correct writesize this time */
+	host->preset(mtd);
+
 	imx_nand_set_layout(mtd->writesize, pdata->width == 2 ? 16 : 8);
 
 	if (mtd->writesize == 2048) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
