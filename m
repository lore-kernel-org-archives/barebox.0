Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pl-7j
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:54 +0100
Message-Id: <1289400839-5937-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] mxc_nand: fix correct_data function
To: barebox@lists.infradead.org

The v2 controller has a totally different mechanism to check
whether the data we read had ecc errors or not. Implement this.
The mechanism in the v2 controller happens to be identical to
the v3 controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   44 +++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 99f6714..214f391 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -104,6 +104,7 @@ struct imx_nand_host {
 	uint8_t			*data_buf;
 	unsigned int		buf_start;
 	int			spare_len;
+	int			eccsize;
 
 	void			(*preset)(struct mtd_info *);
 	void			(*send_cmd)(struct imx_nand_host *, uint16_t);
@@ -363,7 +364,7 @@ static void imx_nand_enable_hwecc(struct mtd_info *mtd, int mode)
 	 */
 }
 
-static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
+static int imx_nand_correct_data_v1(struct mtd_info *mtd, u_char * dat,
 				 u_char * read_ecc, u_char * calc_ecc)
 {
 	struct nand_chip *nand_chip = mtd->priv;
@@ -385,6 +386,40 @@ static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
 	return 0;
 }
 
+static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
+				u_char *read_ecc, u_char *calc_ecc)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	u32 ecc_stat, err;
+	int no_subpages = 1;
+	int ret = 0;
+	u8 ecc_bit_mask, err_limit;
+
+	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
+	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
+
+	no_subpages = mtd->writesize >> 9;
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
@@ -818,12 +853,14 @@ static int __init imxnd_probe(struct device_d *dev)
 		host->regs = host->base + 0x1e00;
 		host->spare0 = host->base + 0x1000;
 		host->spare_len = 64;
+		host->eccsize = 1;
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 	} else if (nfc_is_v1()) {
 		host->regs = host->base + 0xe00;
 		host->spare0 = host->base + 0x800;
 		host->spare_len = 16;
+		host->eccsize = 4;
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
 		oob_largepage = &nandv1_hw_eccoob_largepage;
 	}
@@ -865,7 +902,10 @@ static int __init imxnd_probe(struct device_d *dev)
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
 		tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
