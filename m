Delivery-date: Tue, 01 Nov 2022 16:33:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGs-00B052-RQ
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGq-0005Rn-4P
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dQ8IfVedInAj3AgoLjcYRyb4QbN+6UFx5FZ7s3h60ck=; b=fg2A45xfAvfJyeKQjCV0cOpFAl
	hDeWnxjjZJ2onQSkFvDWIpRe+AVerCcqI0oxvSoLbeoXPzO9fPL/GpiNQ0XeP203vgPJLJUDbLira
	aoK38LqBteKK8XOwxhUHF5wC1O/myFMmdxygMQ/WENOJubhFUpvbuT30dN873D6AUK0tnoLktVKL9
	NanNWNFrPOBoTg3At0p/987cwEkCGmECCvKthtBhx1e+hrw7d3doijv1aKYHMkpRoYs8HdIekIokG
	o+VRomuVUgrU9QUBisyX5jFBKiFUPREOLSB7rbs+i3VVxDuXpF/M0PZR9No31Yz4aq+3tjc1j+075
	5SNo5icw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFR-005p6E-Cg; Tue, 01 Nov 2022 15:32:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXI-46
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-0004fy-4R; Tue, 01 Nov 2022 16:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdq-CK; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exn-8t; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:37 +0100
Message-Id: <20221101153048.772146-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_516594_1DD35A0A 
X-CRM114-Status: GOOD (  15.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/14] ARM: i.MX: xload nand: add common readid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mxs_nand_check_onfi() and mxs_nand_read_id() setup the same DMA
descriptors with only a small difference. factor out a common
read_id function from it and share the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 148 ++++++++++------------------
 1 file changed, 54 insertions(+), 94 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 6ac9af762f..ffbd5c22e3 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -668,7 +668,7 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 	return ret;
 }
 
-static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
+static int mxs_nand_read_id(struct mxs_nand_info *info, u8 adr, void *databuf, size_t len)
 {
 	int ret;
 	u8 *cmd_buf;
@@ -676,13 +676,6 @@ static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
 	int descnum = 0;
 	int cmd_queue_len;
 
-	struct onfi_header {
-		u8 byte0;
-		u8 byte1;
-		u8 byte2;
-		u8 byte3;
-	} onfi_head;
-
 	memset(info->desc, 0,
 		sizeof(*info->desc) * MXS_NAND_DMA_DESCRIPTOR_COUNT);
 
@@ -692,7 +685,7 @@ static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
 	d = &info->desc[descnum++];
 	d->address = (dma_addr_t)(cmd_buf);
 	cmd_buf[cmd_queue_len++] = NAND_CMD_READID;
-	cmd_buf[cmd_queue_len++] = 0x20;
+	cmd_buf[cmd_queue_len++] = adr;
 
 	d->data = DMACMD_COMMAND_DMA_READ |
 		DMACMD_WAIT4END |
@@ -710,13 +703,13 @@ static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
 	d = &info->desc[descnum++];
 	d->data = DMACMD_WAIT4END |
 		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(sizeof(struct onfi_header)) |
+		DMACMD_XFER_COUNT(len) |
 		DMACMD_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
-		(sizeof(struct onfi_header));
+		len;
 	d->address = (dma_addr_t)databuf;
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
@@ -725,119 +718,86 @@ static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
 
 	/* Execute the DMA chain. */
 	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
-	if (ret) {
+	if (ret)
 		pr_err("DMA read error\n");
-		return ret;
-	}
 
-	memcpy(&onfi_head, databuf, sizeof(struct onfi_header));
+	return ret;
+}
+
+struct onfi_header {
+	u8 byte0;
+	u8 byte1;
+	u8 byte2;
+	u8 byte3;
+};
+
+static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
+{
+	int ret;
+	struct onfi_header *onfi_head = databuf;
+
+	ret = mxs_nand_read_id(info, 0x20, databuf, sizeof(struct onfi_header));
+	if (ret)
+		return ret;
 
-	pr_debug("ONFI Byte0: 0x%x\n", onfi_head.byte0);
-	pr_debug("ONFI Byte1: 0x%x\n", onfi_head.byte1);
-	pr_debug("ONFI Byte2: 0x%x\n", onfi_head.byte2);
-	pr_debug("ONFI Byte3: 0x%x\n", onfi_head.byte3);
+	pr_debug("ONFI Byte0: 0x%x\n", onfi_head->byte0);
+	pr_debug("ONFI Byte1: 0x%x\n", onfi_head->byte1);
+	pr_debug("ONFI Byte2: 0x%x\n", onfi_head->byte2);
+	pr_debug("ONFI Byte3: 0x%x\n", onfi_head->byte3);
 
 	/* check if returned values correspond to ascii characters "ONFI" */
-	if (onfi_head.byte0 != 0x4f || onfi_head.byte1 != 0x4e ||
-		onfi_head.byte2 != 0x46 || onfi_head.byte3 != 0x49)
+	if (onfi_head->byte0 != 0x4f || onfi_head->byte1 != 0x4e ||
+		onfi_head->byte2 != 0x46 || onfi_head->byte3 != 0x49)
 		return 1;
 
 	return 0;
 }
 
+struct readid_data {
+	u8 byte0;
+	u8 byte1;
+	u8 byte2;
+	u8 byte3;
+	u8 byte4;
+} id_data;
+
 static int mxs_nand_get_readid(struct mxs_nand_info *info, void *databuf)
 {
 	int ret;
-	u8 *cmd_buf;
-	struct mxs_dma_cmd *d;
-	int descnum = 0;
-	int cmd_queue_len;
-
-	struct readid_data {
-		u8 byte0;
-		u8 byte1;
-		u8 byte2;
-		u8 byte3;
-		u8 byte4;
-	} id_data;
-
-	memset(info->desc, 0,
-		sizeof(*info->desc) * MXS_NAND_DMA_DESCRIPTOR_COUNT);
+	struct readid_data *id_data = databuf;
 
-	/* Compile DMA descriptor - READID */
-	cmd_buf = info->cmd_buf;
-	cmd_queue_len = 0;
-	d = &info->desc[descnum++];
-	d->address = (dma_addr_t)(cmd_buf);
-	cmd_buf[cmd_queue_len++] = NAND_CMD_READID;
-	cmd_buf[cmd_queue_len++] = 0x00;
-
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
-
-	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
-		GPMI_CTRL0_WORD_LENGTH |
-		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
-		GPMI_CTRL0_ADDRESS_NAND_CLE |
-		GPMI_CTRL0_ADDRESS_INCREMENT |
-		cmd_queue_len;
-
-	/* Compile DMA descriptor - read. */
-	d = &info->desc[descnum++];
-	d->data = DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(sizeof(struct readid_data)) |
-		DMACMD_COMMAND_DMA_WRITE;
-	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
-		GPMI_CTRL0_WORD_LENGTH |
-		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
-		GPMI_CTRL0_ADDRESS_NAND_DATA |
-		(sizeof(struct readid_data));
-	d->address = (dma_addr_t)databuf;
-
-	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
-	d = &info->desc[descnum++];
-	d->data = DMACMD_IRQ | DMACMD_DEC_SEM;
-
-	/* Execute the DMA chain. */
-	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
-	if (ret) {
-		pr_err("DMA read error\n");
+	ret = mxs_nand_read_id(info, 0x0, databuf, sizeof(struct readid_data));
+	if (ret)
 		return ret;
-	}
-
-	memcpy(&id_data, databuf, sizeof(struct readid_data));
 
-	pr_debug("NAND Byte0: 0x%x\n", id_data.byte0);
-	pr_debug("NAND Byte1: 0x%x\n", id_data.byte1);
-	pr_debug("NAND Byte2: 0x%x\n", id_data.byte2);
-	pr_debug("NAND Byte3: 0x%x\n", id_data.byte3);
-	pr_debug("NAND Byte4: 0x%x\n", id_data.byte4);
+	pr_debug("NAND Byte0: 0x%x\n", id_data->byte0);
+	pr_debug("NAND Byte1: 0x%x\n", id_data->byte1);
+	pr_debug("NAND Byte2: 0x%x\n", id_data->byte2);
+	pr_debug("NAND Byte3: 0x%x\n", id_data->byte3);
+	pr_debug("NAND Byte4: 0x%x\n", id_data->byte4);
 
-	if (id_data.byte0 == 0xff || id_data.byte1 == 0xff ||
-		id_data.byte2 == 0xff || id_data.byte3 == 0xff ||
-		id_data.byte4 == 0xff) {
+	if (id_data->byte0 == 0xff || id_data->byte1 == 0xff ||
+		id_data->byte2 == 0xff || id_data->byte3 == 0xff ||
+		id_data->byte4 == 0xff) {
 		pr_err("\"READ ID\" returned 0xff, possible error!\n");
 		return -EOVERFLOW;
 	}
 
 	/* Fill the NAND organization struct with data */
 	info->organization.bits_per_cell =
-		(1 << ((id_data.byte2 >> 2) & 0x3)) * 2;
+		(1 << ((id_data->byte2 >> 2) & 0x3)) * 2;
 	info->organization.pagesize =
-		(1 << (id_data.byte3 & 0x3)) * SZ_1K;
-	info->organization.oobsize = id_data.byte3 & 0x4 ?
+		(1 << (id_data->byte3 & 0x3)) * SZ_1K;
+	info->organization.oobsize = id_data->byte3 & 0x4 ?
 		info->organization.pagesize / 512 * 16 :
 		info->organization.pagesize / 512 * 8;
 	info->organization.pages_per_eraseblock =
-		(1 << ((id_data.byte3 >> 4) & 0x3)) * SZ_64K /
+		(1 << ((id_data->byte3 >> 4) & 0x3)) * SZ_64K /
 		info->organization.pagesize;
 	info->organization.planes_per_lun =
-		1 << ((id_data.byte4 >> 2) & 0x3);
+		1 << ((id_data->byte4 >> 2) & 0x3);
 	info->nand_size = info->organization.planes_per_lun *
-		(1 << ((id_data.byte4 >> 4) & 0x7)) * SZ_8M;
+		(1 << ((id_data->byte4 >> 4) & 0x7)) * SZ_8M;
 	info->organization.eraseblocks_per_lun = info->nand_size /
 		(info->organization.pages_per_eraseblock *
 		info->organization.pagesize);
-- 
2.30.2



