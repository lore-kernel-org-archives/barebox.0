Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHxrk-0002Ae-0S
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 12:09:01 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 15 Nov 2010 14:08:14 +0200
Message-Id: <8b25e654c4237599ff3d2252e34c5e890480c7f7.1289822485.git.baruch@tkos.co.il>
In-Reply-To: <20101111103259.GY6017@pengutronix.de>
References: <20101111103259.GY6017@pengutronix.de>
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
Subject: [PATCH] mxc_nand: fix correct_data function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Commit da1ad19 upstream.

The v2 controller has a totally different mechanism to check
whether the data we read had ecc errors or not. Implement this.
The mechanism in the v2 controller happens to be identical to
the v3 controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
Hi Sascha,

This should apply cleanly on v2010.09.0, v2010.10.0, and v2010.11.0. I tested 
this on v2010.09.0 with i.MX25 (not the actual correction algorithm, just 
verified that it doesn't break anything).  Please consider using this for a 
stable release.

 drivers/mtd/nand/nand_imx.c |   73 ++++++++++++++++++++++++++++++++++---------
 1 files changed, 58 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 5454e32..8bfa2ba 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -43,10 +43,15 @@
 #define NFC_FLASH_ADDR		0xE06
 #define NFC_FLASH_CMD		0xE08
 #define NFC_CONFIG		0xE0A
-#define NFC_ECC_STATUS_RESULT	0xE0C
-#define NFC_RSLTMAIN_AREA	0xE0E
-#define NFC_RSLTSPARE_AREA	0xE10
-#define NFC_SPAS		0xe10
+
+#define NFC_V1_ECC_STATUS_RESULT	0xE0C
+#define NFC_V1_RSLTMAIN_AREA		0xE0E
+#define NFC_V1_RSLTSPARE_AREA		0xE10
+
+#define NFC_V2_ECC_STATUS_RESULT1       0xE0C
+#define NFC_V2_ECC_STATUS_RESULT2       0xE0E
+#define NFC_V2_SPAS                     0xE10
+
 #define NFC_WRPROT		0xE12
 #define NFC_V1_UNLOCKSTART_BLKADDR	0xe14
 #define NFC_V1_UNLOCKEND_BLKADDR	0xe16
@@ -153,6 +158,7 @@ struct imx_nand_host {
 	uint8_t			*data_buf;
 	unsigned int		buf_start;
 	int			spare_len;
+	int			eccsize;
 
 };
 
@@ -416,7 +422,7 @@ static void imx_nand_enable_hwecc(struct mtd_info *mtd, int mode)
 	 */
 }
 
-static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
+static int imx_nand_correct_data_v1(struct mtd_info *mtd, u_char * dat,
 				 u_char * read_ecc, u_char * calc_ecc)
 {
 	struct nand_chip *nand_chip = mtd->priv;
@@ -427,7 +433,7 @@ static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
 	 * additional correction.  2-Bit errors cannot be corrected by
 	 * HW ECC, so we need to return failure
 	 */
-	u16 ecc_status = readw(host->regs + NFC_ECC_STATUS_RESULT);
+	u16 ecc_status = readw(host->regs + NFC_V1_ECC_STATUS_RESULT);
 
 	if (((ecc_status & 0x3) == 2) || ((ecc_status >> 2) == 2)) {
 		MTD_DEBUG(MTD_DEBUG_LEVEL0,
@@ -438,6 +444,38 @@ static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
 	return 0;
 }
 
+static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
+				u_char *read_ecc, u_char *calc_ecc)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	u32 ecc_stat, err;
+	int no_subpages = mtd->writesize >> 9;
+	int ret = 0;
+	u8 ecc_bit_mask, err_limit;
+
+	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
+	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
+
+	ecc_stat = readl(host->regs + NFC_V2_ECC_STATUS_RESULT1);
+
+	do {
+		err = ecc_stat & ecc_bit_mask;
+		if (err > err_limit) {
+			printk(KERN_WARNING "UnCorrectable RS-ECC Error\n");
+			return -1;
+		} else {
+			ret += err;
+		}
+		ecc_stat >>= 4;
+	} while (--no_subpages);
+
+	mtd->ecc_stats.corrected += ret;
+	pr_debug("%d Symbol Correctable RS-ECC Error\n", ret);
+
+	return ret;
+}
+
 static int imx_nand_calculate_ecc(struct mtd_info *mtd, const u_char * dat,
 				  u_char * ecc_code)
 {
@@ -864,12 +902,14 @@ static int __init imxnd_probe(struct device_d *dev)
 		host->regs = host->base + 0x1000;
 		host->spare0 = host->base + 0x1000;
 		host->spare_len = 64;
+		host->eccsize = 1;
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 	} else if (nfc_is_v1()) {
 		host->regs = host->base;
 		host->spare0 = host->base + 0x800;
 		host->spare_len = 16;
+		host->eccsize = 4;
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
 		oob_largepage = &nandv1_hw_eccoob_largepage;
 	}
@@ -911,7 +951,10 @@ static int __init imxnd_probe(struct device_d *dev)
 	if (pdata->hw_ecc) {
 		this->ecc.calculate = imx_nand_calculate_ecc;
 		this->ecc.hwctl = imx_nand_enable_hwecc;
-		this->ecc.correct = imx_nand_correct_data;
+		if (nfc_is_v1())
+			this->ecc.correct = imx_nand_correct_data_v1;
+		else
+			this->ecc.correct = imx_nand_correct_data_v2_v3;
 		this->ecc.mode = NAND_ECC_HW;
 		this->ecc.size = 512;
 		tmp = readw(host->regs + NFC_CONFIG1);
@@ -974,17 +1017,17 @@ static int __init imxnd_probe(struct device_d *dev)
 		this->ecc.layout = oob_largepage;
 		host->pagesize_2k = 1;
 		if (nfc_is_v21()) {
-			tmp = readw(host->regs + NFC_SPAS);
+			tmp = readw(host->regs + NFC_V2_SPAS);
 			tmp &= 0xff00;
 			tmp |= NFC_SPAS_64;
-			writew(tmp, host->regs + NFC_SPAS);
+			writew(tmp, host->regs + NFC_V2_SPAS);
 		}
 	} else {
 		if (nfc_is_v21()) {
-			tmp = readw(host->regs + NFC_SPAS);
+			tmp = readw(host->regs + NFC_V2_SPAS);
 			tmp &= 0xff00;
 			tmp |= NFC_SPAS_16;
-			writew(tmp, host->regs + NFC_SPAS);
+			writew(tmp, host->regs + NFC_V2_SPAS);
 		}
 	}
 
@@ -1109,15 +1152,15 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 
 	if (nfc_is_v21()) {
 		if (host.pagesize_2k) {
-			tmp = readw(host.regs + NFC_SPAS);
+			tmp = readw(host.regs + NFC_V2_SPAS);
 			tmp &= 0xff00;
 			tmp |= NFC_SPAS_64;
-			writew(tmp, host.regs + NFC_SPAS);
+			writew(tmp, host.regs + NFC_V2_SPAS);
 		} else {
-			tmp = readw(host.regs + NFC_SPAS);
+			tmp = readw(host.regs + NFC_V2_SPAS);
 			tmp &= 0xff00;
 			tmp |= NFC_SPAS_16;
-			writew(tmp, host.regs + NFC_SPAS);
+			writew(tmp, host.regs + NFC_V2_SPAS);
 		}
 	}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
