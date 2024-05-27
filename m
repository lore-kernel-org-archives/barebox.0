Delivery-date: Mon, 27 May 2024 14:59:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBZwe-000gMY-1i
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 14:59:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBZwd-0007Kx-BV
	for lore@pengutronix.de; Mon, 27 May 2024 14:59:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tq7IKEc7n/o2o0NZJi6TyLXgPSqHhCozhlkdZ1PMQ6A=; b=Yyogr8Dw0MlZ8SkIcVkCgrxj7R
	g2s/Ay7YiPAR5rFxrsUlR0jTY/3C7pAdcFo7OsF8d+oawQWwRVK2WIlDc9k1DyF/OPBmlgnMjKgj9
	WjmIYbZ9XTQVDPKfhbpbi5seA0ArUXtmWQ9au7sRvSLPBeQn2UfQ1JzoTIV0tbojsGaPyJJc2MOW/
	QT7onYTYrK1JF482j+pRYn6Y4vkHNKd9uyr7SoeDmJzTrKB9+/vPyxMIFGazChMm127aNT6EioJ/P
	WLG2jo7zSsLshPz9fZFaJPTPPE/i2R9vK4vDvB7HDuC4KfKeGN9lmxXAO2A1moJy4qfKjR5RdpDIl
	+/yw8mZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZw0-0000000EygP-32jv;
	Mon, 27 May 2024 12:58:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZup-0000000Exzv-3RYF
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 12:57:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBZuo-0006sa-Cv; Mon, 27 May 2024 14:57:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBZuo-003BxU-0G; Mon, 27 May 2024 14:57:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBZun-007EH4-2u;
	Mon, 27 May 2024 14:57:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 14:57:25 +0200
Message-Id: <20240527125725.1722214-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_055728_204589_6987C930 
X-CRM114-Status: GOOD (  28.13  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mtd: nand: mxc_nand: sync with kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The software BCH ECC support merged into barebox was a preliminary
version. Sync this with the code that was merged to the kernel.
This hasn't hit Linus' tree yet, but is merged into next:
https://lore.kernel.org/all/20240527121848.178542-1-miquel.raynal@bootlin.com/

The version first merged into barebox has a syndrome page layout. With
this patch this is changed to the regular user data / OOB layout so that
the raw layout on the NAND matches the view the nand core has on the
chip. Merge this ASAP to match the layout the Kernel uses. The previous
layout didn't hit a release yet and should not be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 196 ++++++++++++++++++++++++++------
 1 file changed, 159 insertions(+), 37 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index f8517df823..a5500f7dda 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -665,7 +665,11 @@ static int mxc_nand_read_page_v1(struct nand_chip *chip)
 	int i;
 	unsigned int ecc_stats = 0;
 
-	no_subpages = mtd->writesize >> 9;
+	if (mtd->writesize)
+		no_subpages = mtd->writesize >> 9;
+	else
+		/* READ PARAMETER PAGE is called when mtd->writesize is not yet set */
+		no_subpages = 1;
 
 	for (i = 0; i < no_subpages; i++) {
 		/* NANDFC buffer 0 is used for page read/write */
@@ -705,6 +709,9 @@ static int mxc_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 	host->devtype_data->enable_hwecc(chip, true);
 
 	ret = nand_read_page_op(chip, page, 0, buf, mtd->writesize);
+
+	host->devtype_data->enable_hwecc(chip, false);
+
 	if (ret)
 		return ret;
 
@@ -718,11 +725,8 @@ static int mxc_nand_read_page_raw(struct nand_chip *chip, uint8_t *buf,
 				  int oob_required, int page)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	int ret;
 
-	host->devtype_data->enable_hwecc(chip, false);
-
 	ret = nand_read_page_op(chip, page, 0, buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -739,8 +743,6 @@ static int mxc_nand_read_oob(struct nand_chip *chip, int page)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	int ret;
 
-	host->devtype_data->enable_hwecc(chip, false);
-
 	ret = nand_read_page_op(chip, page, 0, host->data_buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -750,27 +752,34 @@ static int mxc_nand_read_oob(struct nand_chip *chip, int page)
 	return 0;
 }
 
-static int mxc_nand_write_page(struct nand_chip *chip, const uint8_t *buf,
-			       bool ecc, int page)
+static int mxc_nand_write_page_ecc(struct nand_chip *chip, const uint8_t *buf,
+				   int oob_required, int page)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	int ret;
 
-	host->devtype_data->enable_hwecc(chip, ecc);
+	if (oob_required)
+		copy_spare(mtd, false, chip->oob_poi);
 
-	return nand_prog_page_op(chip, page, 0, buf, mtd->writesize);
-}
+	host->devtype_data->enable_hwecc(chip, true);
 
-static int mxc_nand_write_page_ecc(struct nand_chip *chip, const uint8_t *buf,
-				   int oob_required, int page)
-{
-	return mxc_nand_write_page(chip, buf, true, page);
+	ret = nand_prog_page_op(chip, page, 0, buf, mtd->writesize);
+
+	host->devtype_data->enable_hwecc(chip, false);
+
+	return ret;
 }
 
 static int mxc_nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 				   int oob_required, int page)
 {
-	return mxc_nand_write_page(chip, buf, false, page);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	if (oob_required)
+		copy_spare(mtd, false, chip->oob_poi);
+
+	return nand_prog_page_op(chip, page, 0, buf, mtd->writesize);
 }
 
 static int mxc_nand_write_oob(struct nand_chip *chip, int page)
@@ -779,8 +788,9 @@ static int mxc_nand_write_oob(struct nand_chip *chip, int page)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 
 	memset(host->data_buf, 0xff, mtd->writesize);
+	copy_spare(mtd, false, chip->oob_poi);
 
-	return mxc_nand_write_page(chip, host->data_buf, false, page);
+	return nand_prog_page_op(chip, page, 0, host->data_buf, mtd->writesize);
 }
 
 /* This function is used by upper layer for select and
@@ -1348,19 +1358,20 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	host->eccsize = host->devtype_data->eccsize;
 	chip->ecc.size = 512;
 
-	chip->ecc.read_oob = mxc_nand_read_oob;
-	chip->ecc.read_page_raw = mxc_nand_read_page_raw;
-	chip->ecc.write_page_raw = mxc_nand_write_page_raw;
-
 	switch (chip->ecc.engine_type) {
 	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
 		chip->ecc.read_page = mxc_nand_read_page;
+		chip->ecc.read_page_raw = mxc_nand_read_page_raw;
+		chip->ecc.read_oob = mxc_nand_read_oob;
 		chip->ecc.write_page = mxc_nand_write_page_ecc;
+		chip->ecc.write_page_raw = mxc_nand_write_page_raw;
 		chip->ecc.write_oob = mxc_nand_write_oob;
 		break;
 
 	case NAND_ECC_ENGINE_TYPE_SOFT:
+		chip->ecc.write_page_raw = nand_monolithic_write_page_raw;
+		chip->ecc.read_page_raw = nand_monolithic_read_page_raw;
 		break;
 
 	default:
@@ -1416,9 +1427,90 @@ static int mxcnd_setup_interface(struct nand_chip *chip, int chipnr,
 	return host->devtype_data->setup_interface(chip, chipnr, conf);
 }
 
-static int mxcnd_exec_op(struct nand_chip *chip,
-			 const struct nand_operation *op,
-			 bool check_only)
+static void memff16_toio(void *buf, int n)
+{
+	__iomem u16 *t = buf;
+	int i;
+
+	for (i = 0; i < (n >> 1); i++)
+		__raw_writew(0xffff, t++);
+}
+
+static void copy_page_to_sram(struct mtd_info *mtd, const void *buf, int buf_len)
+{
+	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(this);
+	unsigned int no_subpages = mtd->writesize / 512;
+	int oob_per_subpage, i;
+
+	oob_per_subpage = (mtd->oobsize / no_subpages) & ~1;
+
+	/*
+	 * During a page write the i.MX NAND controller will read 512b from
+	 * main_area0 SRAM, then oob_per_subpage bytes from spare0 SRAM, then
+	 * 512b from main_area1 SRAM and so on until the full page is written.
+	 * For software ECC we want to have a 1:1 mapping between the raw page
+	 * data on the NAND chip and the view of the NAND core. This is
+	 * necessary to make the NAND_CMD_RNDOUT read the data it expects.
+	 * To accomplish this we have to write the data in the order the controller
+	 * reads it. This is reversed in copy_page_from_sram() below.
+	 *
+	 * buf_len can either be the full page including the OOB or user data only.
+	 * When it's user data only make sure that we fill up the rest of the
+	 * SRAM with 0xff.
+	 */
+	for (i = 0; i < no_subpages; i++) {
+		int now = min(buf_len, 512);
+
+		if (now)
+			memcpy16_toio(host->main_area0 + i * 512, buf, now);
+
+		if (now < 512)
+			memff16_toio(host->main_area0 + i * 512 + now, 512 - now);
+
+		buf += 512;
+		buf_len -= now;
+
+		now = min(buf_len, oob_per_subpage);
+		if (now)
+			memcpy16_toio(host->spare0 + i * host->devtype_data->spare_len,
+				      buf, now);
+
+		if (now < oob_per_subpage)
+			memff16_toio(host->spare0 + i * host->devtype_data->spare_len + now,
+				     oob_per_subpage - now);
+
+		buf += oob_per_subpage;
+		buf_len -= now;
+	}
+}
+
+static void copy_page_from_sram(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(this);
+	void *buf = host->data_buf;
+	unsigned int no_subpages = mtd->writesize / 512;
+	int oob_per_subpage, i;
+
+	/* mtd->writesize is not set during ident scanning */
+	if (!no_subpages)
+		no_subpages = 1;
+
+	oob_per_subpage = (mtd->oobsize / no_subpages) & ~1;
+
+	for (i = 0; i < no_subpages; i++) {
+		memcpy16_fromio(buf, host->main_area0 + i * 512, 512);
+		buf += 512;
+
+		memcpy16_fromio(buf, host->spare0 + i * host->devtype_data->spare_len,
+				oob_per_subpage);
+		buf += oob_per_subpage;
+	}
+}
+
+static int mxcnd_do_exec_op(struct nand_chip *chip,
+			    const struct nand_subop *op)
 {
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -1429,19 +1521,12 @@ static int mxcnd_exec_op(struct nand_chip *chip,
 	bool readid = false;
 	bool statusreq = false;
 
-	dev_dbg(host->dev, "%s: %d instructions\n", __func__, op->ninstrs);
-
 	for (i = 0; i < op->ninstrs; i++) {
 		instr = &op->instrs[i];
 
-		nand_op_trace("  ", instr);
-
 		switch (instr->type) {
 		case NAND_OP_WAITRDY_INSTR:
-			/*
-			 * NFC handles R/B internally. Therefore, this function
-			 * always returns status as ready.
-			 */
+			/* NFC handles R/B internally, nothing to do here */
 			break;
 		case NAND_OP_CMD_INSTR:
 			host->devtype_data->send_cmd(host, instr->ctx.cmd.opcode, true);
@@ -1462,8 +1547,10 @@ static int mxcnd_exec_op(struct nand_chip *chip,
 			buf_write = instr->ctx.data.buf.out;
 			buf_len = instr->ctx.data.len;
 
-			memcpy32_toio(host->main_area0, buf_write, buf_len);
-			copy_spare(mtd, false, chip->oob_poi);
+			if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
+				memcpy32_toio(host->main_area0, buf_write, buf_len);
+			else
+				copy_page_to_sram(mtd, buf_write, buf_len);
 
 			host->devtype_data->send_page(mtd, NFC_INPUT);
 
@@ -1498,10 +1585,15 @@ static int mxcnd_exec_op(struct nand_chip *chip,
 
 			host->devtype_data->read_page(chip);
 
-			if (IS_ALIGNED(buf_len, 4)) {
-				memcpy32_fromio(buf_read, host->main_area0, buf_len);
+			if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
+				if (IS_ALIGNED(buf_len, 4)) {
+					memcpy32_fromio(buf_read, host->main_area0, buf_len);
+				} else {
+					memcpy32_fromio(host->data_buf, host->main_area0, mtd->writesize);
+					memcpy(buf_read, host->data_buf, buf_len);
+				}
 			} else {
-				memcpy32_fromio(host->data_buf, host->main_area0, mtd->writesize);
+				copy_page_from_sram(mtd);
 				memcpy(buf_read, host->data_buf, buf_len);
 			}
 
@@ -1512,6 +1604,36 @@ static int mxcnd_exec_op(struct nand_chip *chip,
 	return 0;
 }
 
+#define MAX_DATA_SIZE  (4096 + 512)
+
+static const struct nand_op_parser mxcnd_op_parser = NAND_OP_PARSER(
+	NAND_OP_PARSER_PATTERN(mxcnd_do_exec_op,
+			       NAND_OP_PARSER_PAT_CMD_ELEM(false),
+			       NAND_OP_PARSER_PAT_ADDR_ELEM(true, 7),
+			       NAND_OP_PARSER_PAT_CMD_ELEM(true),
+			       NAND_OP_PARSER_PAT_WAITRDY_ELEM(true),
+			       NAND_OP_PARSER_PAT_DATA_IN_ELEM(true, MAX_DATA_SIZE)),
+	NAND_OP_PARSER_PATTERN(mxcnd_do_exec_op,
+			       NAND_OP_PARSER_PAT_CMD_ELEM(false),
+			       NAND_OP_PARSER_PAT_ADDR_ELEM(false, 7),
+			       NAND_OP_PARSER_PAT_DATA_OUT_ELEM(false, MAX_DATA_SIZE),
+			       NAND_OP_PARSER_PAT_CMD_ELEM(false),
+			       NAND_OP_PARSER_PAT_WAITRDY_ELEM(true)),
+	NAND_OP_PARSER_PATTERN(mxcnd_do_exec_op,
+			       NAND_OP_PARSER_PAT_CMD_ELEM(false),
+			       NAND_OP_PARSER_PAT_ADDR_ELEM(false, 7),
+			       NAND_OP_PARSER_PAT_DATA_OUT_ELEM(false, MAX_DATA_SIZE),
+			       NAND_OP_PARSER_PAT_CMD_ELEM(true),
+			       NAND_OP_PARSER_PAT_WAITRDY_ELEM(true)),
+	);
+
+static int mxcnd_exec_op(struct nand_chip *chip,
+			 const struct nand_operation *op, bool check_only)
+{
+	return nand_op_parser_exec_op(chip, &mxcnd_op_parser,
+				      op, check_only);
+}
+
 static const struct nand_controller_ops mxcnd_controller_ops = {
 	.attach_chip = mxcnd_attach_chip,
 	.setup_interface = mxcnd_setup_interface,
-- 
2.39.2



