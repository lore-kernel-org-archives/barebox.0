Delivery-date: Tue, 01 Nov 2022 16:34:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHQ-00B08b-35
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:34:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHO-0005jG-0A
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:34:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DKedduNt/aj2vau5GJ2hFnN+3cwcSaKRhFdtrIQvuHk=; b=uRmKTMAtwunVtv0gMD+siZqKPK
	3AIa7/P2MB5LLn/4eU0voRIoD/VCxQ0IWR6/9gNBTDfftekhdIYEFveATZwPCzqqU6LsT4ViWYlY7
	j+JWi8jmPvSrcDuWggwUlar/LFfiROwIo856XRz2zNweHKUzP6yzv98Uvuj1R1Ak1cpxTKMpMnc6k
	C7iyKM1IDrb2eQ9VRskOl517Af5frzcyzItF0tXwc2niLIZC819j0+Uq2zj1hcc/U8SRwKs6AVUCy
	xGy4cH4ZNgN6ZBznfyAukY3JLGd8TVxtLlwiDTnIVwy5zj8rs2Hifh+s9QXvsXmjTFy7EzvHhzD4/
	6IbxNcOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFy-005pVQ-8b; Tue, 01 Nov 2022 15:32:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEv-005oaG-NN
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004fC-Fp; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-001hdU-NQ; Tue, 01 Nov 2022 16:30:50 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exk-7s; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:36 +0100
Message-Id: <20221101153048.772146-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083145_961358_AA1A9833 
X-CRM114-Status: GOOD (  12.60  )
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
Subject: [PATCH 02/14] ARM: i.MX: xload nand: Use common register defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a set of GPMI register defines in include/, so use them for the
xload driver as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 66 ++++++++---------------------
 1 file changed, 17 insertions(+), 49 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 3a4f331ce6..6ac9af762f 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -11,6 +11,7 @@
 #include <mach/xload.h>
 #include <soc/imx/imx-nand-bcb.h>
 #include <linux/mtd/rawnand.h>
+#include <soc/imx/gpmi-nand.h>
 #include <mach/imx6-regs.h>
 #include <mach/clock-imx6.h>
 
@@ -203,39 +204,6 @@ static int mxs_dma_run(struct mxs_dma_chan *pchan, struct mxs_dma_cmd *pdesc,
 
 /* ----------------------------- NAND driver part -------------------------- */
 
-#define	GPMI_CTRL0					0x00000000
-#define	GPMI_CTRL0_RUN					(1 << 29)
-#define	GPMI_CTRL0_DEV_IRQ_EN				(1 << 28)
-#define	GPMI_CTRL0_UDMA					(1 << 26)
-#define	GPMI_CTRL0_COMMAND_MODE_MASK			(0x3 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_OFFSET			24
-#define	GPMI_CTRL0_COMMAND_MODE_WRITE			(0x0 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_READ			(0x1 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_READ_AND_COMPARE	(0x2 << 24)
-#define	GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY		(0x3 << 24)
-#define	GPMI_CTRL0_WORD_LENGTH				(1 << 23)
-#define	GPMI_CTRL0_CS(cs)				((cs) << 20)
-#define	GPMI_CTRL0_ADDRESS_MASK				(0x7 << 17)
-#define	GPMI_CTRL0_ADDRESS_OFFSET			17
-#define	GPMI_CTRL0_ADDRESS_NAND_DATA			(0x0 << 17)
-#define	GPMI_CTRL0_ADDRESS_NAND_CLE			(0x1 << 17)
-#define	GPMI_CTRL0_ADDRESS_NAND_ALE			(0x2 << 17)
-#define	GPMI_CTRL0_ADDRESS_INCREMENT			(1 << 16)
-#define	GPMI_CTRL0_XFER_COUNT_MASK			0xffff
-#define	GPMI_CTRL0_XFER_COUNT_OFFSET			0
-
-#define	GPMI_ECCCTRL_ECC_CMD_DECODE			(0x0 << 13)
-#define	GPMI_ECCCTRL_ENABLE_ECC				(1 << 12)
-#define	GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE		0x1ff
-
-#define	BCH_CTRL					0x00000000
-#define	BCH_CTRL_COMPLETE_IRQ				(1 << 0)
-
-#define	MXS_NAND_DMA_DESCRIPTOR_COUNT			6
-#define	MXS_NAND_CHUNK_DATA_CHUNK_SIZE			512
-#define	MXS_NAND_METADATA_SIZE				10
-#define	MXS_NAND_COMMAND_BUFFER_SIZE			128
-
 struct mxs_nand_info {
 	void __iomem *io_base;
 	void __iomem *bch_base;
@@ -352,7 +320,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -372,7 +340,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -386,7 +354,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 
 	if (raw) {
@@ -398,7 +366,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 			DMACMD_COMMAND_DMA_WRITE;
 		d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 			GPMI_CTRL0_WORD_LENGTH |
-			GPMI_CTRL0_CS(info->cs) |
+			FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 			GPMI_CTRL0_ADDRESS_NAND_DATA |
 			(writesize + oobsize);
 		d->address = (dma_addr_t)databuf;
@@ -408,7 +376,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 		d->data = DMACMD_WAIT4END | DMACMD_PIO_WORDS(6);
 		d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 			GPMI_CTRL0_WORD_LENGTH |
-			GPMI_CTRL0_CS(info->cs) |
+			FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 			GPMI_CTRL0_ADDRESS_NAND_DATA |
 			(writesize + oobsize);
 		d->pio_words[1] = 0;
@@ -426,7 +394,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 			DMACMD_PIO_WORDS(3);
 		d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 			GPMI_CTRL0_WORD_LENGTH |
-			GPMI_CTRL0_CS(info->cs) |
+			FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 			GPMI_CTRL0_ADDRESS_NAND_DATA |
 			(writesize + oobsize);
 	}
@@ -499,7 +467,7 @@ static int mxs_nand_get_read_status(struct mxs_nand_info *info, void *databuf)
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -512,7 +480,7 @@ static int mxs_nand_get_read_status(struct mxs_nand_info *info, void *databuf)
 		DMACMD_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		(1);
 	d->address = (dma_addr_t)databuf;
@@ -557,7 +525,7 @@ static int mxs_nand_reset(struct mxs_nand_info *info, void *databuf)
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -629,7 +597,7 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -643,7 +611,7 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA;
 
 	/* Compile DMA descriptor - read. */
@@ -654,7 +622,7 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 		DMACMD_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		(sizeof(struct nand_onfi_params));
 	d->address = (dma_addr_t)databuf;
@@ -733,7 +701,7 @@ static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -746,7 +714,7 @@ static int mxs_nand_check_onfi(struct mxs_nand_info *info, void *databuf)
 		DMACMD_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		(sizeof(struct onfi_header));
 	d->address = (dma_addr_t)databuf;
@@ -811,7 +779,7 @@ static int mxs_nand_get_readid(struct mxs_nand_info *info, void *databuf)
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_CLE |
 		GPMI_CTRL0_ADDRESS_INCREMENT |
 		cmd_queue_len;
@@ -824,7 +792,7 @@ static int mxs_nand_get_readid(struct mxs_nand_info *info, void *databuf)
 		DMACMD_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
-		GPMI_CTRL0_CS(info->cs) |
+		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
 		GPMI_CTRL0_ADDRESS_NAND_DATA |
 		(sizeof(struct readid_data));
 	d->address = (dma_addr_t)databuf;
-- 
2.30.2



