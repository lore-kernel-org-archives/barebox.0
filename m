Delivery-date: Tue, 01 Nov 2022 16:34:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHP-00B08N-1v
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:34:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHL-0005hs-Up
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:34:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ewp9Mr0z7v6FikbW2lFlJA7l7hxXuBQKGQNGsFA8QXs=; b=4jUjZ+gnVvxpHoo3P/1iIXXygP
	a91G7wS4V2OOMhN4jYUd1j1zQ/IyqqeAY6CE4Ft5Eso+qiqgOxUN/mTbtw9e2Mx2hCc/nUoqYbJfj
	BTXIvURzadHtfVQ+M0m/ymRbRCgLFgG8o/Nt8KI2f2bn5a3vuhxfIdPq1pNstrNccvtbSdFFhL9l5
	8i2M9dxMOsWgLDqk93Vlmhqa0ueVLXShO6yJXJJYgkpnQyiWFLavW+f3m+MSPOW/ToV4DXIre0s2T
	hMuC7lqzEndie7LqNJ5cMIBPqHw7Bh6En1ViML7GoaCoTN2mkDpDr9LHirroY2uEZwxK8cORyc0y/
	9hCbQ0qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFq-005pQa-Mi; Tue, 01 Nov 2022 15:32:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oWz-46
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004f7-At; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-001hdM-F1; Tue, 01 Nov 2022 16:30:50 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exh-6p; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:35 +0100
Message-Id: <20221101153048.772146-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_652270_12F0BF09 
X-CRM114-Status: GOOD (  20.14  )
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
	UPPERCASE_50_75,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/14] mtd: nand: nand-mxs: Move register definitions to separate file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The GPMI registers are needed in the MTD GPMI driver and also in the
xload-gpmi driver. So far both use their own set of register defines.
Move the MTD GPMI register defines to include/ so that we can use them
in the xload driver as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 186 ++++++------------------------------
 include/soc/imx/gpmi-nand.h | 114 ++++++++++++++++++++++
 2 files changed, 145 insertions(+), 155 deletions(-)
 create mode 100644 include/soc/imx/gpmi-nand.h

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 5faa17a4bd..d711708ff2 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -21,6 +21,7 @@
 #include <linux/types.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/bitfield.h>
 #include <of_mtd.h>
 #include <common.h>
 #include <dma.h>
@@ -32,139 +33,10 @@
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
 #include <mach/generic.h>
+#include <soc/imx/gpmi-nand.h>
 
 #include "internals.h"
 
-#define	MX28_BLOCK_SFTRST				(1 << 31)
-#define	MX28_BLOCK_CLKGATE				(1 << 30)
-
-#define GPMI_CTRL0					0x00000000
-#define	GPMI_CTRL0_RUN					(1 << 29)
-#define	GPMI_CTRL0_DEV_IRQ_EN				(1 << 28)
-/* Disable for now since we don't need it and it is different on MX23.
-#define	GPMI_CTRL0_LOCK_CS				(1 << 27)
-*/
-#define	GPMI_CTRL0_UDMA					(1 << 26)
-#define	GPMI_CTRL0_COMMAND_MODE_MASK			(0x3 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_OFFSET			24
-#define	GPMI_CTRL0_COMMAND_MODE_WRITE			(0x0 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_READ			(0x1 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_READ_AND_COMPARE	(0x2 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY		(0x3 << 24)
-#define	GPMI_CTRL0_WORD_LENGTH				(1 << 23)
-/* Careful: Is 0x3 on MX23
-#define	GPMI_CTRL0_CS_MASK				(0x7 << 20)
-*/
-#define	GPMI_CTRL0_CS_OFFSET				20
-#define	GPMI_CTRL0_ADDRESS_MASK				(0x7 << 17)
-#define	GPMI_CTRL0_ADDRESS_OFFSET			17
-#define	GPMI_CTRL0_ADDRESS_NAND_DATA			(0x0 << 17)
-#define	GPMI_CTRL0_ADDRESS_NAND_CLE			(0x1 << 17)
-#define	GPMI_CTRL0_ADDRESS_NAND_ALE			(0x2 << 17)
-#define	GPMI_CTRL0_ADDRESS_INCREMENT			(1 << 16)
-#define	GPMI_CTRL0_XFER_COUNT_MASK			0xffff
-#define	GPMI_CTRL0_XFER_COUNT_OFFSET			0
-
-#define GPMI_CTRL1					0x00000060
-#define GPMI_CTRL1_SET					0x00000064
-#define GPMI_CTRL1_CLR					0x00000068
-#define	GPMI_CTRL1_DECOUPLE_CS				(1 << 24)
-#define	GPMI_CTRL1_WRN_DLY(d)				(((d) & 0x3) << 22)
-#define	GPMI_CTRL1_TIMEOUT_IRQ_EN			(1 << 20)
-#define	GPMI_CTRL1_GANGED_RDYBUSY			(1 << 19)
-#define	GPMI_CTRL1_BCH_MODE				(1 << 18)
-#define	GPMI_CTRL1_DLL_ENABLE				(1 << 17)
-#define	GPMI_CTRL1_HALF_PERIOD				(1 << 16)
-#define	GPMI_CTRL1_RDN_DELAY(d)				(((d) & 0xf) << 12)
-#define	GPMI_CTRL1_DMA2ECC_MODE				(1 << 11)
-#define	GPMI_CTRL1_DEV_IRQ				(1 << 10)
-#define	GPMI_CTRL1_TIMEOUT_IRQ				(1 << 9)
-#define	GPMI_CTRL1_BURST_EN				(1 << 8)
-#define	GPMI_CTRL1_ABORT_WAIT_REQUEST			(1 << 7)
-#define	GPMI_CTRL1_ABORT_WAIT_FOR_READY_CHANNEL_MASK	(0x7 << 4)
-#define	GPMI_CTRL1_ABORT_WAIT_FOR_READY_CHANNEL_OFFSET	4
-#define	GPMI_CTRL1_DEV_RESET				(1 << 3)
-#define	GPMI_CTRL1_ATA_IRQRDY_POLARITY			(1 << 2)
-#define	GPMI_CTRL1_CAMERA_MODE				(1 << 1)
-#define	GPMI_CTRL1_GPMI_MODE				(1 << 0)
-
-#define BV_GPMI_CTRL1_WRN_DLY_SEL_4_TO_8NS		0x0
-#define BV_GPMI_CTRL1_WRN_DLY_SEL_6_TO_10NS		0x1
-#define BV_GPMI_CTRL1_WRN_DLY_SEL_7_TO_12NS		0x2
-#define BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY		0x3
-
-#define GPMI_TIMING0					0x00000070
-
-#define	GPMI_TIMING0_ADDRESS_SETUP(d)			(((d) & 0xff) << 16)
-#define	GPMI_TIMING0_DATA_HOLD(d)			(((d) & 0xff) << 8)
-#define	GPMI_TIMING0_DATA_SETUP(d)			(((d) & 0xff) << 0)
-
-#define GPMI_TIMING1					0x00000080
-#define	GPMI_TIMING1_BUSY_TIMEOUT(d)			(((d) & 0xffff) << 16)
-
-#define	GPMI_ECCCTRL_HANDLE_MASK			(0xffff << 16)
-#define	GPMI_ECCCTRL_HANDLE_OFFSET			16
-#define	GPMI_ECCCTRL_ECC_CMD_MASK			(0x3 << 13)
-#define	GPMI_ECCCTRL_ECC_CMD_OFFSET			13
-#define	GPMI_ECCCTRL_ECC_CMD_DECODE			(0x0 << 13)
-#define	GPMI_ECCCTRL_ECC_CMD_ENCODE			(0x1 << 13)
-#define GPMI_ECCCTRL_RANDOMIZER_ENABLE                  (1 << 11)
-#define GPMI_ECCCTRL_RANDOMIZER_TYPE0                   0
-#define GPMI_ECCCTRL_RANDOMIZER_TYPE1                   (1 << 9)
-#define GPMI_ECCCTRL_RANDOMIZER_TYPE2                   (2 << 9)
-#define	GPMI_ECCCTRL_ENABLE_ECC				(1 << 12)
-#define	GPMI_ECCCTRL_BUFFER_MASK_MASK			0x1ff
-#define	GPMI_ECCCTRL_BUFFER_MASK_OFFSET			0
-#define	GPMI_ECCCTRL_BUFFER_MASK_BCH_AUXONLY		0x100
-#define	GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE		0x1ff
-
-#define GPMI_STAT				0x000000b0
-#define	GPMI_STAT_READY_BUSY_OFFSET			24
-
-#define GPMI_DEBUG				0x000000c0
-#define GPMI_DEBUG_READY0_OFFSET			28
-
-#define GPMI_VERSION				0x000000d0
-#define GPMI_VERSION_MINOR_OFFSET			16
-#define GPMI_VERSION_TYPE_MX23			0x0300
-
-#define BCH_CTRL				0x00000000
-#define	BCH_CTRL_COMPLETE_IRQ			(1 << 0)
-#define	BCH_CTRL_COMPLETE_IRQ_EN		(1 << 8)
-
-#define BCH_LAYOUTSELECT			0x00000070
-
-#define BCH_FLASH0LAYOUT0			0x00000080
-#define	BCH_FLASHLAYOUT0_NBLOCKS_MASK			(0xff << 24)
-#define	BCH_FLASHLAYOUT0_NBLOCKS_OFFSET			24
-#define	BCH_FLASHLAYOUT0_META_SIZE_MASK			(0xff << 16)
-#define	BCH_FLASHLAYOUT0_META_SIZE_OFFSET		16
-#define	BCH_FLASHLAYOUT0_ECC0_MASK			(0xf << 12)
-#define	BCH_FLASHLAYOUT0_ECC0_OFFSET			12
-#define	IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET		11
-#define	BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET		0
-#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1_MASK		BIT(10)
-#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1_OFFSET		10
-
-#define BCH_FLASH0LAYOUT1			0x00000090
-#define	BCH_FLASHLAYOUT1_PAGE_SIZE_MASK			(0xffff << 16)
-#define	BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET		16
-#define	BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
-#define	BCH_FLASHLAYOUT1_ECCN_OFFSET			12
-#define	IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET		11
-#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1_MASK		BIT(10)
-#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1_OFFSET		10
-#define	BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET		0
-
-#define	MXS_NAND_DMA_DESCRIPTOR_COUNT		4
-
-#define	MXS_NAND_CHUNK_DATA_CHUNK_SIZE		512
-#define	MXS_NAND_METADATA_SIZE			10
-
-#define	MXS_NAND_COMMAND_BUFFER_SIZE		32
-
-#define	MXS_NAND_BCH_TIMEOUT			10000
-
 enum gpmi_type {
 	GPMI_MXS,
 	GPMI_IMX6,
@@ -503,7 +375,7 @@ static void mxs_nand_cmd_ctrl(struct nand_chip *chip, int data, unsigned int ctr
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		nand_info->cmd_queue_len;
@@ -634,7 +506,7 @@ static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		length;
 
@@ -659,7 +531,7 @@ static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 
 	mxs_dma_desc_append(channel, d);
@@ -713,7 +585,7 @@ static void mxs_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		length;
 
@@ -749,16 +621,22 @@ static void mxs_nand_config_bch(struct nand_chip *chip, int readlen)
 	else
 		chunk_size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
 
-	fl0 = (mxs_nand_ecc_chunk_cnt(readlen) - 1)
-			<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET;
-	fl0 |= MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET;
-	fl0 |= (chip->ecc.strength >> 1) << IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET;
-	fl0 |= chunk_size;
+	fl0 = FIELD_PREP(BCH_FLASHLAYOUT0_NBLOCKS, mxs_nand_ecc_chunk_cnt(readlen) - 1);
+	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_META_SIZE, MXS_NAND_METADATA_SIZE);
+	if (mxs_nand_is_imx6(nand_info))
+		fl0 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT0_ECC0, chip->ecc.strength >> 1);
+	else
+		fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_ECC0, chip->ecc.strength >> 1);
+	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_DATA0_SIZE, chunk_size);
 	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
 
-	fl1 = readlen << BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET;
-	fl1 |= (chip->ecc.strength >> 1) << IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET;
-	fl1 |= chunk_size;
+	fl1 = FIELD_PREP(BCH_FLASHLAYOUT1_PAGE_SIZE, readlen);
+	if (mxs_nand_is_imx6(nand_info))
+		fl1 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT1_ECCN, chip->ecc.strength >> 1);
+	else
+		fl1 |= FIELD_PREP(BCH_FLASHLAYOUT1_ECCN, chip->ecc.strength >> 1);
+
+	fl1 |= FIELD_PREP(BCH_FLASHLAYOUT1_DATAN_SIZE, chunk_size);
 	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
 }
 
@@ -781,7 +659,7 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 
 	mxs_dma_desc_append(channel, d);
@@ -797,7 +675,7 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		readtotal;
 	d->cmd.pio_words[1] = 0;
@@ -829,7 +707,7 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		readtotal;
 	d->cmd.pio_words[1] = 0;
@@ -1037,7 +915,7 @@ static int mxs_nand_ecc_write_page(struct nand_chip *chip, const uint8_t *buf,
 	d->cmd.pio_words[0] =
 		GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		(nand_info->cur_chip << GPMI_CTRL0_CS_OFFSET) |
+		FIELD_PREP(GPMI_CTRL0_CS, nand_info->cur_chip) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 	d->cmd.pio_words[1] = 0;
 	d->cmd.pio_words[2] =
@@ -1276,23 +1154,21 @@ static void mxs_nand_mode_fcb_62bit(struct mxs_nand_info *nand_info)
 	bch_regs = nand_info->bch_base;
 
 	/* 8 ecc_chunks */
-	fl0 = 7 << BCH_FLASHLAYOUT0_NBLOCKS_OFFSET;
+	fl0 = FIELD_PREP(BCH_FLASHLAYOUT0_NBLOCKS, 7);
 	/* 32 bytes for metadata */
-	fl0 |= 32 << BCH_FLASHLAYOUT0_META_SIZE_OFFSET;
+	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_META_SIZE, 32);
 	/* using ECC62 level to be performed */
-	fl0 |= 0x1F << IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET;
+	fl0 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT0_ECC0, 0x1f);
 	/* 0x20 * 4 bytes of the data0 block */
-	fl0 |= 0x20 << BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET;
-	fl0 |= 0 << BCH_FLASHLAYOUT0_GF13_0_GF14_1_OFFSET;
+	fl0 |= FIELD_PREP(BCH_FLASHLAYOUT0_DATA0_SIZE, 0x20);
 	writel(fl0, bch_regs + BCH_FLASH0LAYOUT0);
 
 	/* 1024 for data + 838 for OOB */
-	fl1 = BCH62_PAGESIZE << BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET;
+	fl1 = FIELD_PREP(BCH_FLASHLAYOUT1_PAGE_SIZE, BCH62_PAGESIZE);
 	/* using ECC62 level to be performed */
-	fl1 |= 0x1f << IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET;
+	fl1 |= FIELD_PREP(IMX6_BCH_FLASHLAYOUT1_ECCN, 0x1f);
 	/* 0x20 * 4 bytes of the data0 block */
-	fl1 |= 0x20 << BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET;
-	fl1 |= 0 << BCH_FLASHLAYOUT1_GF13_0_GF14_1_OFFSET;
+	fl1 |= FIELD_PREP(BCH_FLASHLAYOUT1_DATAN_SIZE, 0x20);
 	writel(fl1, bch_regs + BCH_FLASH0LAYOUT1);
 }
 
diff --git a/include/soc/imx/gpmi-nand.h b/include/soc/imx/gpmi-nand.h
new file mode 100644
index 0000000000..f7a2caa1d6
--- /dev/null
+++ b/include/soc/imx/gpmi-nand.h
@@ -0,0 +1,114 @@
+#ifndef __SOC_IMX_GPMI_NAND_H
+#define __SOC_IMX_GPMI_NAND_H
+
+#include <linux/bitfield.h>
+
+#define GPMI_CTRL0				0x00000000
+#define GPMI_CTRL0_SFTRST				BIT(31)
+#define	GPMI_CTRL0_RUN					BIT(29)
+#define	GPMI_CTRL0_DEV_IRQ_EN				BIT(28)
+#define	GPMI_CTRL0_UDMA					BIT(26)
+#define	GPMI_CTRL0_COMMAND_MODE				GENMASK(25, 24)
+#define	GPMI_CTRL0_COMMAND_MODE_WRITE			(0x0 << 24)
+#define	GPMI_CTRL0_COMMAND_MODE_READ			(0x1 << 24)
+#define	GPMI_CTRL0_COMMAND_MODE_READ_AND_COMPARE	(0x2 << 24)
+#define	GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY		(0x3 << 24)
+#define	GPMI_CTRL0_WORD_LENGTH				(1 << 23)
+#define	GPMI_CTRL0_CS					GENMASK(22, 20)
+#define	GPMI_CTRL0_ADDRESS				GENMASK(19, 17)
+#define	GPMI_CTRL0_ADDRESS_NAND_DATA			(0x0 << 17)
+#define	GPMI_CTRL0_ADDRESS_NAND_CLE			(0x1 << 17)
+#define	GPMI_CTRL0_ADDRESS_NAND_ALE			(0x2 << 17)
+#define	GPMI_CTRL0_ADDRESS_INCREMENT			BIT(16)
+#define	GPMI_CTRL0_XFER_COUNT				GENMASK(15, 0)
+
+#define GPMI_CTRL1				0x00000060
+#define GPMI_CTRL1_SET				0x00000064
+#define GPMI_CTRL1_CLR				0x00000068
+#define	GPMI_CTRL1_DECOUPLE_CS				BIT(24)
+#define	GPMI_CTRL1_WRN_DLY(d)				(((d) & 0x3) << 22)
+#define	GPMI_CTRL1_TIMEOUT_IRQ_EN			BIT(20)
+#define	GPMI_CTRL1_GANGED_RDYBUSY			BIT(19)
+#define	GPMI_CTRL1_BCH_MODE				BIT(18)
+#define	GPMI_CTRL1_DLL_ENABLE				BIT(17)
+#define	GPMI_CTRL1_HALF_PERIOD				BIT(16)
+#define	GPMI_CTRL1_RDN_DELAY(d)				(((d) & 0xf) << 12)
+#define	GPMI_CTRL1_DMA2ECC_MODE				BIT(11)
+#define	GPMI_CTRL1_DEV_IRQ				BIT(10)
+#define	GPMI_CTRL1_TIMEOUT_IRQ				BIT(9)
+#define	GPMI_CTRL1_BURST_EN				BIT(8)
+#define	GPMI_CTRL1_ABORT_WAIT_REQUEST			BIT(7)
+#define	GPMI_CTRL1_ABORT_WAIT_FOR_READY			GENMASK(6, 4)
+#define	GPMI_CTRL1_DEV_RESET				BIT(3)
+#define	GPMI_CTRL1_ATA_IRQRDY_POLARITY			BIT(2)
+#define	GPMI_CTRL1_CAMERA_MODE				BIT(1)
+#define	GPMI_CTRL1_GPMI_MODE				BIT(0)
+
+#define BV_GPMI_CTRL1_WRN_DLY_SEL_4_TO_8NS		0x0
+#define BV_GPMI_CTRL1_WRN_DLY_SEL_6_TO_10NS		0x1
+#define BV_GPMI_CTRL1_WRN_DLY_SEL_7_TO_12NS		0x2
+#define BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY		0x3
+
+#define GPMI_TIMING0				0x00000070
+
+#define	GPMI_TIMING0_ADDRESS_SETUP(d)			(((d) & 0xff) << 16)
+#define	GPMI_TIMING0_DATA_HOLD(d)			(((d) & 0xff) << 8)
+#define	GPMI_TIMING0_DATA_SETUP(d)			(((d) & 0xff) << 0)
+
+#define GPMI_TIMING1				0x00000080
+#define	GPMI_TIMING1_BUSY_TIMEOUT(d)			(((d) & 0xffff) << 16)
+
+#define	GPMI_ECCCTRL_HANDLE				GENMASK(31, 16)
+#define	GPMI_ECCCTRL_ECC_CMD				GENMASK(14, 13)
+#define	GPMI_ECCCTRL_ECC_CMD_DECODE			(0x0 << 13)
+#define	GPMI_ECCCTRL_ECC_CMD_ENCODE			(0x1 << 13)
+#define GPMI_ECCCTRL_RANDOMIZER_ENABLE                  BIT(11)
+#define GPMI_ECCCTRL_RANDOMIZER_TYPE0                   0
+#define GPMI_ECCCTRL_RANDOMIZER_TYPE1                   (1 << 9)
+#define GPMI_ECCCTRL_RANDOMIZER_TYPE2                   (2 << 9)
+#define	GPMI_ECCCTRL_ENABLE_ECC				BIT(12)
+#define	GPMI_ECCCTRL_BUFFER_MASK			GENMASK(8, 0)
+#define	GPMI_ECCCTRL_BUFFER_MASK_BCH_AUXONLY		0x100
+#define	GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE		0x1ff
+
+#define GPMI_STAT				0x000000b0
+#define	GPMI_STAT_READY_BUSY_OFFSET			24
+
+#define GPMI_DEBUG				0x000000c0
+#define GPMI_DEBUG_READY0_OFFSET			28
+
+#define GPMI_VERSION				0x000000d0
+#define GPMI_VERSION_MINOR_OFFSET			16
+#define GPMI_VERSION_TYPE_MX23				0x0300
+
+#define BCH_CTRL				0x00000000
+#define	BCH_CTRL_COMPLETE_IRQ				BIT(0)
+#define	BCH_CTRL_COMPLETE_IRQ_EN			BIT(8)
+
+#define BCH_LAYOUTSELECT			0x00000070
+
+#define BCH_FLASH0LAYOUT0			0x00000080
+#define	BCH_FLASHLAYOUT0_NBLOCKS			GENMASK(31, 24)
+#define	BCH_FLASHLAYOUT0_META_SIZE			GENMASK(23, 16)
+#define	BCH_FLASHLAYOUT0_ECC0				GENMASK(15, 12)
+#define	IMX6_BCH_FLASHLAYOUT0_ECC0			GENMASK(15, 11)
+#define	BCH_FLASHLAYOUT0_DATA0_SIZE			GENMASK(9, 0)
+#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1			BIT(10)
+
+#define BCH_FLASH0LAYOUT1			0x00000090
+#define	BCH_FLASHLAYOUT1_PAGE_SIZE			GENMASK(31, 16)
+#define	BCH_FLASHLAYOUT1_ECCN				GENMASK(15, 12)
+#define	IMX6_BCH_FLASHLAYOUT1_ECCN			GENMASK(15, 11)
+#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1			BIT(10)
+#define	BCH_FLASHLAYOUT1_DATAN_SIZE			GENMASK(9, 0)
+
+#define	MXS_NAND_DMA_DESCRIPTOR_COUNT		4
+
+#define	MXS_NAND_CHUNK_DATA_CHUNK_SIZE		512
+#define	MXS_NAND_METADATA_SIZE			10
+
+#define	MXS_NAND_COMMAND_BUFFER_SIZE		32
+
+#define	MXS_NAND_BCH_TIMEOUT			10000
+
+#endif /* __SOC_IMX_GPMI_NAND_H */
-- 
2.30.2



