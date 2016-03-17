Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agVna-0000S9-7f
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:09:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:08:39 +0100
Message-Id: <1458212919-30507-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
References: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] mtd: nand-imx: fix raw read/write
To: Barebox List <barebox@lists.infradead.org>

raw read/write was not possible because we enabled the ECC engine
during driver initialization. To support raw mode we have to disable
the ECC engine dynamically when needed. This has to be done before
the send_page function is called. The places where we have to disable
the ECC engine are not available in the driver, but are buried in the
Nand layer. To make them available we have to implement driver specific
write/read_page functions in which we configure the ECC mode.
This also makes the driver better readable as it makes the detour around
the driver internal data buffer when reading/writing pages unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 139 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 111 insertions(+), 28 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 590d7fe..f54fe21 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -114,6 +114,8 @@ struct imx_nand_host {
 	void			(*send_read_param)(struct imx_nand_host *);
 	uint16_t		(*get_dev_status)(struct imx_nand_host *);
 	int			(*check_int)(struct imx_nand_host *);
+	int			(*correct)(struct mtd_info *mtd);
+	void			(*enable_hwecc)(struct nand_chip *, bool enable);
 };
 
 /*
@@ -485,16 +487,44 @@ static int imx_nand_dev_ready(struct mtd_info *mtd)
 	return 1;
 }
 
-static void imx_nand_enable_hwecc(struct mtd_info *mtd, int mode)
+static void imx_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
 {
-	/*
-	 * If HW ECC is enabled, we turn it on during init.  There is
-	 * no need to enable again here.
-	 */
+	struct imx_nand_host *host = chip->priv;
+	uint16_t config1;
+
+	if (chip->ecc.mode != NAND_ECC_HW)
+		return;
+
+	config1 = readw(host->regs + NFC_V1_V2_CONFIG1);
+
+	if (enable)
+		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
+	else
+		config1 &= ~NFC_V1_V2_CONFIG1_ECC_EN;
+
+	writew(config1, host->regs + NFC_V1_V2_CONFIG1);
+
 }
 
-static int imx_nand_correct_data_v1(struct mtd_info *mtd, u_char * dat,
-				 u_char * read_ecc, u_char * calc_ecc)
+static void imx_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
+{
+	struct imx_nand_host *host = chip->priv;
+	uint32_t config2;
+
+	if (chip->ecc.mode != NAND_ECC_HW)
+		return;
+
+	config2 = readl(NFC_V3_CONFIG2);
+
+	if (enable)
+		config2 |= NFC_V3_CONFIG2_ECC_EN;
+	else
+		config2 &= ~NFC_V3_CONFIG2_ECC_EN;
+
+	writel(config2, NFC_V3_CONFIG2);
+}
+
+static int imx_nand_correct_data_v1(struct mtd_info *mtd)
 {
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
@@ -510,8 +540,7 @@ static int imx_nand_correct_data_v1(struct mtd_info *mtd, u_char * dat,
 		return 0;
 }
 
-static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
-				u_char *read_ecc, u_char *calc_ecc)
+static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd)
 {
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
@@ -651,13 +680,13 @@ static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
 /*
  * Function to transfer data to/from spare area.
  */
-static void copy_spare(struct mtd_info *mtd, int bfrom)
+static void copy_spare(struct mtd_info *mtd, int bfrom, void *buf)
 {
 	struct nand_chip *this = mtd->priv;
 	struct imx_nand_host *host = this->priv;
 	u16 i, j;
 	u16 n = mtd->writesize >> 9;
-	u8 *d = host->data_buf + mtd->writesize;
+	u8 *d = buf;
 	u8 *s = host->spare0;
 	u16 t = host->spare_len;
 
@@ -761,9 +790,6 @@ static void preset_v1_v2(struct mtd_info *mtd)
 	struct imx_nand_host *host = nand_chip->priv;
 	uint16_t config1 = 0;
 
-	if (nand_chip->ecc.mode == NAND_ECC_HW)
-		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
-
 	if (nfc_is_v21())
 		config1 |= NFC_V2_CONFIG1_FP_INT;
 
@@ -828,9 +854,6 @@ static void preset_v3(struct mtd_info *mtd)
 		NFC_V3_CONFIG2_ST_CMD(0x70) |
 		NFC_V3_CONFIG2_NUM_ADDR_PHASE0;
 
-	if (chip->ecc.mode == NAND_ECC_HW)
-		config2 |= NFC_V3_CONFIG2_ECC_EN;
-
 	addr_phases = fls(chip->pagemask) >> 3;
 
 	if (mtd->writesize == 2048) {
@@ -872,6 +895,68 @@ static void preset_v3(struct mtd_info *mtd)
 	writel(0, NFC_V3_DELAY_LINE);
 }
 
+static int imx_nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+		uint32_t offset, int data_len, const uint8_t *buf,
+		int oob_required, int page, int cached, int raw)
+{
+	struct imx_nand_host *host = chip->priv;
+	int status;
+
+	host->enable_hwecc(chip, !raw);
+
+	chip->cmdfunc(mtd, NAND_CMD_SEQIN, 0x00, page);
+
+	memcpy32(host->main_area0, buf, mtd->writesize);
+	if (oob_required)
+		copy_spare(mtd, 0, chip->oob_poi);
+
+	host->send_page(host, NFC_INPUT);
+	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->waitfunc(mtd, chip);
+
+	if (status & NAND_STATUS_FAIL)
+		return -EIO;
+
+	return 0;
+}
+
+static void imx_nand_do_read_page(struct mtd_info *mtd,
+		struct nand_chip *chip, uint8_t *buf, int oob_required)
+{
+	struct imx_nand_host *host = chip->priv;
+
+	host->send_page(host, NFC_OUTPUT);
+
+	memcpy32(buf, host->main_area0, mtd->writesize);
+
+	if (oob_required)
+		copy_spare(mtd, 1, chip->oob_poi);
+}
+
+static int imx_nand_read_page(struct mtd_info *mtd,
+		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+{
+	struct imx_nand_host *host = chip->priv;
+
+	host->enable_hwecc(chip, true);
+
+	imx_nand_do_read_page(mtd, chip, buf, oob_required);
+
+	return host->correct(mtd);
+}
+
+static int imx_nand_read_page_raw(struct mtd_info *mtd,
+		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+{
+	struct imx_nand_host *host = chip->priv;
+
+	host->enable_hwecc(chip, false);
+
+	imx_nand_do_read_page(mtd, chip, buf, oob_required);
+
+	return 0;
+}
+
 /*
  * This function is used by the upper layer to write command to NAND Flash for
  * different operations to be carried out on NAND Flash
@@ -927,11 +1012,6 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 		if (host->pagesize_2k)
 			/* send read confirm command */
 			host->send_cmd(host, NAND_CMD_READSTART);
-
-		host->send_page(host, NFC_OUTPUT);
-
-		memcpy32(host->data_buf, host->main_area0, mtd->writesize);
-		copy_spare(mtd, 1);
 		break;
 
 	case NAND_CMD_SEQIN:
@@ -966,9 +1046,6 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 		break;
 
 	case NAND_CMD_PAGEPROG:
-		memcpy32(host->main_area0, host->data_buf, mtd->writesize);
-		copy_spare(mtd, 0);
-		host->send_page(host, NFC_INPUT);
 		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		break;
@@ -1179,16 +1256,22 @@ static int __init imxnd_probe(struct device_d *dev)
 	this->read_word = imx_nand_read_word;
 	this->write_buf = imx_nand_write_buf;
 	this->read_buf = imx_nand_read_buf;
+	this->write_page = imx_nand_write_page;
 
 	if (host->hw_ecc) {
 		this->ecc.calculate = imx_nand_calculate_ecc;
-		this->ecc.hwctl = imx_nand_enable_hwecc;
+		if (nfc_is_v3())
+			host->enable_hwecc = imx_nand_enable_hwecc_v3;
+		else
+			host->enable_hwecc = imx_nand_enable_hwecc_v1_v2;
 		if (nfc_is_v1())
-			this->ecc.correct = imx_nand_correct_data_v1;
+			host->correct = imx_nand_correct_data_v1;
 		else
-			this->ecc.correct = imx_nand_correct_data_v2_v3;
+			host->correct = imx_nand_correct_data_v2_v3;
 		this->ecc.mode = NAND_ECC_HW;
 		this->ecc.size = 512;
+		this->ecc.read_page_raw = imx_nand_read_page_raw;
+		this->ecc.read_page = imx_nand_read_page;
 	} else {
 		this->ecc.size = 512;
 		this->ecc.mode = NAND_ECC_SOFT;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
