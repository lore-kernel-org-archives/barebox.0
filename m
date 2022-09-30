Delivery-date: Fri, 30 Sep 2022 14:17:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExo-001PRF-18
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExm-0003gz-4A
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weW8xghemGk/0GG9tU1XIT9jbLclPCBhXgcTkut6Rm4=; b=x3EgTWG7W8P24C
	WHGs46M1wqqQHeNnMEG13ichYj+oyewQNRdu/eE4HNZbgE4kW4ZTxtWgynbMlAbfRpUStQUI0fb3W
	Zpb2hMVBAIhjtT7oe/wxVzzGsLxJzp64vOAwUKLqpsDuoON/noY/lWEmuHcXjL1Qebw0SfkdDTBVo
	QYMwAIA48XrbldIEhrMVxtwn0wLejM+l35BaPdzzkEbbLf96cY/fE/h2a/Iq5sB/byo3lmlwsU2du
	ohmuA4/Luh2zR8vGG7RAkuk2NsA/IJA524vE92FQsmR8HVmH08+5PTxigVrC0uyXlnnuhboswhTeB
	FZeQfOd6SwZEBzOu2xtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEwM-0094pT-Jb; Fri, 30 Sep 2022 12:16:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Ze-Gg
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvr-00030P-TD; Fri, 30 Sep 2022 14:15:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUY-Kj; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001QvB-2d; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 14:15:49 +0200
Message-Id: <20220930121553.335796-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_812221_AB723CA0 
X-CRM114-Status: GOOD (  25.80  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] mtd: nand-mxs: add i.MX7 FCB write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Johannes Zink <j.zink@pengutronix.de>

The FCB on the i.MX7 is written in BCH62 mode and with randomizer
enabled. This needs special FCB read/write functions. Add them to the
driver.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c    | 209 ++++++++++++++++++++++++++++++++-
 include/linux/mtd/nand_mxs.h   |   4 +
 include/soc/imx/imx-nand-bcb.h |  11 ++
 3 files changed, 222 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 1d0a38dc9e..5faa17a4bd 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -108,6 +108,10 @@
 #define	GPMI_ECCCTRL_ECC_CMD_OFFSET			13
 #define	GPMI_ECCCTRL_ECC_CMD_DECODE			(0x0 << 13)
 #define	GPMI_ECCCTRL_ECC_CMD_ENCODE			(0x1 << 13)
+#define GPMI_ECCCTRL_RANDOMIZER_ENABLE                  (1 << 11)
+#define GPMI_ECCCTRL_RANDOMIZER_TYPE0                   0
+#define GPMI_ECCCTRL_RANDOMIZER_TYPE1                   (1 << 9)
+#define GPMI_ECCCTRL_RANDOMIZER_TYPE2                   (2 << 9)
 #define	GPMI_ECCCTRL_ENABLE_ECC				(1 << 12)
 #define	GPMI_ECCCTRL_BUFFER_MASK_MASK			0x1ff
 #define	GPMI_ECCCTRL_BUFFER_MASK_OFFSET			0
@@ -138,6 +142,9 @@
 #define	BCH_FLASHLAYOUT0_ECC0_MASK			(0xf << 12)
 #define	BCH_FLASHLAYOUT0_ECC0_OFFSET			12
 #define	IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET		11
+#define	BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET		0
+#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1_MASK		BIT(10)
+#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1_OFFSET		10
 
 #define BCH_FLASH0LAYOUT1			0x00000090
 #define	BCH_FLASHLAYOUT1_PAGE_SIZE_MASK			(0xffff << 16)
@@ -145,6 +152,9 @@
 #define	BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
 #define	BCH_FLASHLAYOUT1_ECCN_OFFSET			12
 #define	IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET		11
+#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1_MASK		BIT(10)
+#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1_OFFSET		10
+#define	BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET		0
 
 #define	MXS_NAND_DMA_DESCRIPTOR_COUNT		4
 
@@ -752,7 +762,8 @@ static void mxs_nand_config_bch(struct nand_chip *chip, int readlen)
 	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
 }
 
-static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtotal)
+static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtotal,
+				bool randomizer, int page)
 {
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
@@ -798,6 +809,12 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d->cmd.pio_words[4] = (dma_addr_t)nand_info->data_buf;
 	d->cmd.pio_words[5] = (dma_addr_t)nand_info->oob_buf;
 
+	if (randomizer) {
+		d->cmd.pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
+				       GPMI_ECCCTRL_RANDOMIZER_TYPE2;
+		d->cmd.pio_words[3] |= (page % 256) << 16;
+	}
+
 	mxs_dma_desc_append(channel, d);
 
 	/* Compile the DMA descriptor - disable the BCH block. */
@@ -874,7 +891,7 @@ static int __mxs_nand_ecc_read_page(struct nand_chip *chip,
 
 	mxs_nand_config_bch(chip, readtotal);
 
-	mxs_nand_do_bch_read(chip, channel, readtotal);
+	mxs_nand_do_bch_read(chip, channel, readtotal, false, page);
 
 	/* Read DMA completed, now do the mark swapping. */
 	mxs_nand_swap_block_mark(chip, nand_info->data_buf, nand_info->oob_buf);
@@ -1247,6 +1264,194 @@ static int mxs_nand_block_markbad(struct nand_chip *chip , loff_t ofs)
 	return 0;
 }
 
+#define BCH62_WRITESIZE		1024
+#define BCH62_OOBSIZE		838
+#define BCH62_PAGESIZE		(BCH62_WRITESIZE + BCH62_OOBSIZE)
+
+static void mxs_nand_mode_fcb_62bit(struct mxs_nand_info *nand_info)
+{
+	void __iomem *bch_regs;
+	u32 fl0, fl1;
+
+	bch_regs = nand_info->bch_base;
+
+	/* 8 ecc_chunks */
+	fl0 = 7 << BCH_FLASHLAYOUT0_NBLOCKS_OFFSET;
+	/* 32 bytes for metadata */
+	fl0 |= 32 << BCH_FLASHLAYOUT0_META_SIZE_OFFSET;
+	/* using ECC62 level to be performed */
+	fl0 |= 0x1F << IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET;
+	/* 0x20 * 4 bytes of the data0 block */
+	fl0 |= 0x20 << BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET;
+	fl0 |= 0 << BCH_FLASHLAYOUT0_GF13_0_GF14_1_OFFSET;
+	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
+
+	/* 1024 for data + 838 for OOB */
+	fl1 = BCH62_PAGESIZE << BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET;
+	/* using ECC62 level to be performed */
+	fl1 |= 0x1f << IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET;
+	/* 0x20 * 4 bytes of the data0 block */
+	fl1 |= 0x20 << BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET;
+	fl1 |= 0 << BCH_FLASHLAYOUT1_GF13_0_GF14_1_OFFSET;
+	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
+}
+
+int mxs_nand_read_fcb_bch62(unsigned int block, void *buf, size_t size)
+{
+	struct nand_chip *chip;
+	struct mxs_nand_info *nand_info;
+	struct mtd_info *mtd = mxs_nand_mtd;
+	int ret;
+	int page;
+	int flips = 0;
+	uint8_t	*status;
+	int i;
+
+	if (!mtd)
+		return -ENODEV;
+
+	chip = mtd_to_nand(mtd);
+	nand_info = chip->priv;
+
+	nand_select_target(chip, 0);
+
+	page = block * (mtd->erasesize / mtd->writesize);
+
+	mxs_nand_mode_fcb_62bit(nand_info);
+
+	nand_read_page_op(chip, page, 0, NULL, 0);
+
+	ret = mxs_nand_do_bch_read(chip, 0, BCH62_PAGESIZE, true, page);
+	if (ret)
+		goto out;
+
+	/* Read DMA completed, now do the mark swapping. */
+	mxs_nand_swap_block_mark(chip, nand_info->data_buf, nand_info->oob_buf);
+
+	/* Loop over status bytes, accumulating ECC status. */
+	status = nand_info->oob_buf + 32;
+
+	for (i = 0; i < 8; i++) {
+		switch (status[i]) {
+		case 0x0:
+			break;
+		case 0xff:
+			/*
+			 * A status of 0xff means the chunk is erased, but due to
+			 * the randomizer we see this as random data. Explicitly
+			 * memset it.
+			 */
+			memset(nand_info->data_buf + 0x80 * i, 0xff, 0x80);
+			break;
+		case 0xfe:
+			ret = -EBADMSG;
+			goto out;
+		default:
+			flips += status[0];
+			break;
+		}
+	}
+
+	memcpy(buf, nand_info->data_buf, size);
+
+out:
+	mxs_nand_config_bch(chip, mtd->writesize + mtd->oobsize);
+	nand_deselect_target(chip);
+
+	return ret;
+}
+
+int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size)
+{
+	struct nand_chip *chip;
+	struct mtd_info *mtd = mxs_nand_mtd;
+	struct mxs_nand_info *nand_info;
+	struct mxs_dma_desc *d;
+	uint32_t channel;
+	int ret = 0;
+	int page;
+
+	if (!mtd)
+		return -ENODEV;
+
+	if (size > BCH62_WRITESIZE)
+		return -EINVAL;
+
+	chip = mtd_to_nand(mtd);
+	nand_info = chip->priv;
+	channel = nand_info->dma_channel_base;
+
+	mxs_nand_mode_fcb_62bit(nand_info);
+
+	nand_select_target(chip, 0);
+
+	page = block * (mtd->erasesize / mtd->writesize);
+
+	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
+
+	memset(nand_info->data_buf, 0x0, BCH62_WRITESIZE);
+	memcpy(nand_info->data_buf, buf, size);
+
+	/* Handle block mark swapping. */
+	mxs_nand_swap_block_mark(chip, nand_info->data_buf, nand_info->oob_buf);
+
+	/* Compile the DMA descriptor - write data. */
+	d = mxs_nand_get_dma_desc(nand_info);
+	d->cmd.data = MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
+		      MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
+		      (6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+
+	d->cmd.address = 0;
+
+	d->cmd.pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
+			      GPMI_CTRL0_WORD_LENGTH |
+			      GPMI_CTRL0_ADDRESS_NAND_DATA;
+	d->cmd.pio_words[1] = 0;
+	d->cmd.pio_words[2] = GPMI_ECCCTRL_ENABLE_ECC |
+			      GPMI_ECCCTRL_ECC_CMD_ENCODE |
+			      GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE;
+	d->cmd.pio_words[3] = BCH62_PAGESIZE;
+	d->cmd.pio_words[4] = (dma_addr_t)nand_info->data_buf;
+	d->cmd.pio_words[5] = (dma_addr_t)nand_info->oob_buf;
+
+	d->cmd.pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
+			       GPMI_ECCCTRL_RANDOMIZER_TYPE2;
+	/*
+	 * Write NAND page number needed to be randomized
+	 * to GPMI_ECCCOUNT register.
+	 *
+	 * The value is between 0-255. For additional details
+	 * check 9.6.6.4 of i.MX7D Applications Processor reference
+	 */
+	d->cmd.pio_words[3] |= (page % 256) << 16;
+
+	mxs_dma_desc_append(channel, d);
+
+	/* Execute the DMA chain. */
+	ret = mxs_dma_go(channel);
+	if (ret) {
+		dev_err(nand_info->dev, "MXS NAND: DMA write error: %d\n", ret);
+		goto out;
+	}
+
+	ret = mxs_nand_wait_for_bch_complete(nand_info);
+	if (ret) {
+		dev_err(nand_info->dev, "MXS NAND: BCH write timeout\n");
+		goto out;
+	}
+
+out:
+	mxs_nand_return_dma_descs(nand_info);
+
+	if (!ret)
+		ret = nand_prog_page_end_op(chip);
+
+	mxs_nand_config_bch(chip, mtd->writesize + mtd->oobsize);
+	nand_deselect_target(chip);
+
+	return ret;
+}
+
 /*
  * Nominally, the purpose of this function is to look for or create the bad
  * block table. In fact, since the we call this function at the very end of
diff --git a/include/linux/mtd/nand_mxs.h b/include/linux/mtd/nand_mxs.h
index 7eda0b8e63..4c1e90d6f0 100644
--- a/include/linux/mtd/nand_mxs.h
+++ b/include/linux/mtd/nand_mxs.h
@@ -28,5 +28,9 @@
  */
 
 int mxs_nand_get_geo(int *ecc_strength, int *bb_mark_bit_offset);
+int mxs_nand_read_fcb_bch62(unsigned int block, void *buf, size_t size);
+int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size);
+
+struct mtd_info;
 
 #endif /* __NAND_MXS_H */
diff --git a/include/soc/imx/imx-nand-bcb.h b/include/soc/imx/imx-nand-bcb.h
index 6c42d80428..c5481e602e 100644
--- a/include/soc/imx/imx-nand-bcb.h
+++ b/include/soc/imx/imx-nand-bcb.h
@@ -77,6 +77,17 @@ struct fcb_block {
 
 	uint32_t DISBBM;	/* the flag to enable (1)/disable(0) bi swap */
 	uint32_t BBMarkerPhysicalOffsetInSpareData; /* The swap position of main area in spare area */
+
+	/* iMX7 only */
+	uint32_t onfi_sync_enable; /* enable Onfi nand sync support */
+	uint32_t onfi_sync_speed;  /* Speed for Onfi nand sync mode */
+	uint32_t onfi_sync_nand_data; /* parameters for Onfi nand sync mode timing */
+	uint32_t reserved[6];
+	uint32_t disbbm_search; /* disable bad block search function when reading the firmware, only using DBBT */
+	uint32_t disbbm_search_limit; /* ???randomizer type 2 enable ???*/
+	uint32_t reserved1[15]; /* reserved for future use */
+	uint32_t read_retry_enable; /* enable read retry for DBBT and firmware */
+	uint32_t reserved2[1]; /*reserved, keep at 0 */
 };
 
 #endif /* __MACH_IMX_NAND_BCB_H */
-- 
2.30.2



