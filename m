Delivery-date: Tue, 01 Nov 2022 16:34:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHL-00B07p-1Z
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:34:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optHI-0005fS-DV
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:34:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qzg799+D48QSDAYj/SKCj2ILD0dWti7mzAIK50pWqmY=; b=y8JrD2MgZZKmlt4fTY8W2LMUGR
	GPqp7O4HfpwaaqobZiNt5t0AxUdh9wgjIMr6YfKOaLce//IsKpdlojAstmDeXqsRWF/vmTbfgWVuX
	BgTtGdzJdVMAmfHFh0EbQ612NvmvnNGOHhH+OgOgJriJNXFK64N3KlDdpDcjHGP5ob4N50iVJOJ+q
	BCrV3zF+1k5mbqM5Zd3H1zOy2e+SqcPBBhO1t2CfnCR7AZpv+YJoSb7ab99G9SjqcxmNajvEBQ/hc
	P/+wRc487zeopaKjGavfBbXToo56H0YEQlrcmdhih/eVk1lWj9EcVX8vJCoGu0sGvUOSdXr9+XYY1
	56RC2AXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFl-005pMI-4w; Tue, 01 Nov 2022 15:32:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oX1-4E
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004fA-Dm; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-001hdR-Kp; Tue, 01 Nov 2022 16:30:50 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Ext-Bg; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:39 +0100
Message-Id: <20221101153048.772146-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_678421_9CF22C9D 
X-CRM114-Status: GOOD (  18.34  )
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
Subject: [PATCH 05/14] dma: apbh-dma: unify register defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have different register defines for the apbh-dma controller. One set
is used in the regular driver, the other one in the xload code. Move the
register defines to a common place and unify their names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 171 ++++++++++------------------
 drivers/dma/apbh_dma.c              |  27 -----
 drivers/mtd/nand/nand_mxs.c         |  24 ++--
 include/dma/apbh-dma.h              |  47 ++++++--
 4 files changed, 106 insertions(+), 163 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index ffbd5c22e3..165c4c5b85 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -14,41 +14,7 @@
 #include <soc/imx/gpmi-nand.h>
 #include <mach/imx6-regs.h>
 #include <mach/clock-imx6.h>
-
-/*
- * MXS DMA hardware command.
- *
- * This structure describes the in-memory layout of an entire DMA command,
- * including space for the maximum number of PIO accesses. See the appropriate
- * reference manual for a detailed description of what these fields mean to the
- * DMA hardware.
- */
-#define	DMACMD_COMMAND_DMA_WRITE	0x1
-#define	DMACMD_COMMAND_DMA_READ		0x2
-#define	DMACMD_COMMAND_DMA_SENSE	0x3
-#define	DMACMD_CHAIN			(1 << 2)
-#define	DMACMD_IRQ			(1 << 3)
-#define	DMACMD_NAND_LOCK		(1 << 4)
-#define	DMACMD_NAND_WAIT_4_READY	(1 << 5)
-#define	DMACMD_DEC_SEM			(1 << 6)
-#define	DMACMD_WAIT4END			(1 << 7)
-#define	DMACMD_HALT_ON_TERMINATE	(1 << 8)
-#define	DMACMD_TERMINATE_FLUSH		(1 << 9)
-#define	DMACMD_PIO_WORDS(words)		((words) << 12)
-#define	DMACMD_XFER_COUNT(x)		((x) << 16)
-
-struct mxs_dma_cmd {
-	unsigned long		next;
-	unsigned long		data;
-	unsigned long		address;
-#define	APBH_DMA_PIO_WORDS	6
-	unsigned long		pio_words[APBH_DMA_PIO_WORDS];
-};
-
-enum mxs_dma_id {
-	IMX23_DMA,
-	IMX28_DMA,
-};
+#include <dma/apbh-dma.h>
 
 struct apbh_dma {
 	void __iomem *regs;
@@ -61,25 +27,6 @@ struct mxs_dma_chan {
 	struct apbh_dma *apbh;
 };
 
-#define	HW_APBHX_CTRL0				0x000
-#define	BM_APBH_CTRL0_APB_BURST8_EN		(1 << 29)
-#define	BM_APBH_CTRL0_APB_BURST_EN		(1 << 28)
-#define	BP_APBH_CTRL0_CLKGATE_CHANNEL		8
-#define	BP_APBH_CTRL0_RESET_CHANNEL		16
-#define	HW_APBHX_CTRL1				0x010
-#define	BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN	16
-#define	HW_APBHX_CTRL2				0x020
-#define	HW_APBHX_CHANNEL_CTRL			0x030
-#define	BP_APBHX_CHANNEL_CTRL_RESET_CHANNEL	16
-#define	BP_APBHX_VERSION_MAJOR			24
-#define	HW_APBHX_CHn_NXTCMDAR_MX23(n)		(0x050 + (n) * 0x70)
-#define	HW_APBHX_CHn_NXTCMDAR_MX28(n)		(0x110 + (n) * 0x70)
-#define	HW_APBHX_CHn_SEMA_MX23(n)		(0x080 + (n) * 0x70)
-#define	HW_APBHX_CHn_SEMA_MX28(n)		(0x140 + (n) * 0x70)
-#define	NAND_ONFI_CRC_BASE			0x4f4e
-
-#define apbh_dma_is_imx23(aphb) ((apbh)->id == IMX23_DMA)
-
 /* udelay() is not available in PBL, need to improvise */
 static void __udelay(int us)
 {
@@ -168,7 +115,7 @@ static int mxs_dma_run(struct mxs_dma_chan *pchan, struct mxs_dma_cmd *pdesc,
 	/* chain descriptors */
 	for (i = 0; i < num - 1; i++) {
 		pdesc[i].next = (unsigned long)(&pdesc[i + 1]);
-		pdesc[i].data |= DMACMD_CHAIN;
+		pdesc[i].data |= MXS_DMA_DESC_CHAIN;
 	}
 
 	writel(1 << (pchan->channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
@@ -313,10 +260,10 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 	if ((max_pagenum - 1) >= SZ_64K)
 		cmd_buf[cmd_queue_len++] = pagenum >> 16;
 
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
+	d->data = MXS_DMA_DESC_COMMAND_DMA_READ |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(cmd_queue_len);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -333,10 +280,10 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 	cmd_buf[cmd_queue_len++] = NAND_CMD_READSTART;
 
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
+	d->data = MXS_DMA_DESC_COMMAND_DMA_READ |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(cmd_queue_len);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -347,10 +294,10 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 	/* Compile DMA descriptor - wait for ready. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_CHAIN |
-		DMACMD_NAND_WAIT_4_READY |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(2);
+	d->data = MXS_DMA_DESC_CHAIN |
+		MXS_DMA_DESC_NAND_WAIT_4_READY |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(2);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -360,10 +307,10 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 	if (raw) {
 		/* Compile DMA descriptor - read. */
 		d = &info->desc[descnum++];
-		d->data = DMACMD_WAIT4END |
-			DMACMD_PIO_WORDS(1) |
-			DMACMD_XFER_COUNT(writesize + oobsize) |
-			DMACMD_COMMAND_DMA_WRITE;
+		d->data = MXS_DMA_DESC_WAIT4END |
+			MXS_DMA_DESC_PIO_WORDS(1) |
+			MXS_DMA_DESC_XFER_COUNT(writesize + oobsize) |
+			MXS_DMA_DESC_COMMAND_DMA_WRITE;
 		d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 			GPMI_CTRL0_WORD_LENGTH |
 			FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
@@ -373,7 +320,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 	} else {
 		/* Compile DMA descriptor - enable the BCH block and read. */
 		d = &info->desc[descnum++];
-		d->data = DMACMD_WAIT4END | DMACMD_PIO_WORDS(6);
+		d->data = MXS_DMA_DESC_WAIT4END | MXS_DMA_DESC_PIO_WORDS(6);
 		d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 			GPMI_CTRL0_WORD_LENGTH |
 			FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
@@ -389,9 +336,9 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 		/* Compile DMA descriptor - disable the BCH block. */
 		d = &info->desc[descnum++];
-		d->data = DMACMD_NAND_WAIT_4_READY |
-			DMACMD_WAIT4END |
-			DMACMD_PIO_WORDS(3);
+		d->data = MXS_DMA_DESC_NAND_WAIT_4_READY |
+			MXS_DMA_DESC_WAIT4END |
+			MXS_DMA_DESC_PIO_WORDS(3);
 		d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 			GPMI_CTRL0_WORD_LENGTH |
 			FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
@@ -401,7 +348,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_IRQ | DMACMD_DEC_SEM;
+	d->data = MXS_DMA_DESC_IRQ | MXS_DMA_DESC_DEC_SEM;
 
 	/* Execute the DMA chain. */
 	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
@@ -460,10 +407,10 @@ static int mxs_nand_get_read_status(struct mxs_nand_info *info, void *databuf)
 	d->address = (dma_addr_t)(cmd_buf);
 	cmd_buf[cmd_queue_len++] = NAND_CMD_STATUS;
 
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
+	d->data = MXS_DMA_DESC_COMMAND_DMA_READ |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(cmd_queue_len);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -474,10 +421,10 @@ static int mxs_nand_get_read_status(struct mxs_nand_info *info, void *databuf)
 
 	/* Compile DMA descriptor - read. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(1) |
-		DMACMD_COMMAND_DMA_WRITE;
+	d->data = MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(1) |
+		MXS_DMA_DESC_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
@@ -487,7 +434,7 @@ static int mxs_nand_get_read_status(struct mxs_nand_info *info, void *databuf)
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_IRQ | DMACMD_DEC_SEM;
+	d->data = MXS_DMA_DESC_IRQ | MXS_DMA_DESC_DEC_SEM;
 
 	/* Execute the DMA chain. */
 	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
@@ -518,10 +465,10 @@ static int mxs_nand_reset(struct mxs_nand_info *info, void *databuf)
 	d->address = (dma_addr_t)(cmd_buf);
 	cmd_buf[cmd_queue_len++] = NAND_CMD_RESET;
 
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
+	d->data = MXS_DMA_DESC_COMMAND_DMA_READ |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(cmd_queue_len);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -532,7 +479,7 @@ static int mxs_nand_reset(struct mxs_nand_info *info, void *databuf)
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_IRQ | DMACMD_DEC_SEM;
+	d->data = MXS_DMA_DESC_IRQ | MXS_DMA_DESC_DEC_SEM;
 
 	/* Execute the DMA chain. */
 	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
@@ -590,10 +537,10 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 	cmd_buf[cmd_queue_len++] = NAND_CMD_PARAM;
 	cmd_buf[cmd_queue_len++] = 0x00;
 
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
+	d->data = MXS_DMA_DESC_COMMAND_DMA_READ |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(cmd_queue_len);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -604,10 +551,10 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 
 	/* Compile DMA descriptor - wait for ready. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_CHAIN |
-		DMACMD_NAND_WAIT_4_READY |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(2);
+	d->data = MXS_DMA_DESC_CHAIN |
+		MXS_DMA_DESC_NAND_WAIT_4_READY |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(2);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WAIT_FOR_READY |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -616,10 +563,10 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 
 	/* Compile DMA descriptor - read. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(sizeof(struct nand_onfi_params)) |
-		DMACMD_COMMAND_DMA_WRITE;
+	d->data = MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(sizeof(struct nand_onfi_params)) |
+		MXS_DMA_DESC_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
@@ -629,7 +576,7 @@ static int mxs_nand_get_onfi(struct mxs_nand_info *info, void *databuf)
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_IRQ | DMACMD_DEC_SEM;
+	d->data = MXS_DMA_DESC_IRQ | MXS_DMA_DESC_DEC_SEM;
 
 	/* Execute the DMA chain. */
 	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
@@ -687,10 +634,10 @@ static int mxs_nand_read_id(struct mxs_nand_info *info, u8 adr, void *databuf, s
 	cmd_buf[cmd_queue_len++] = NAND_CMD_READID;
 	cmd_buf[cmd_queue_len++] = adr;
 
-	d->data = DMACMD_COMMAND_DMA_READ |
-		DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(cmd_queue_len);
+	d->data = MXS_DMA_DESC_COMMAND_DMA_READ |
+		MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(cmd_queue_len);
 
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_WRITE |
 		GPMI_CTRL0_WORD_LENGTH |
@@ -701,10 +648,10 @@ static int mxs_nand_read_id(struct mxs_nand_info *info, u8 adr, void *databuf, s
 
 	/* Compile DMA descriptor - read. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_WAIT4END |
-		DMACMD_PIO_WORDS(1) |
-		DMACMD_XFER_COUNT(len) |
-		DMACMD_COMMAND_DMA_WRITE;
+	d->data = MXS_DMA_DESC_WAIT4END |
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(len) |
+		MXS_DMA_DESC_COMMAND_DMA_WRITE;
 	d->pio_words[0] = GPMI_CTRL0_COMMAND_MODE_READ |
 		GPMI_CTRL0_WORD_LENGTH |
 		FIELD_PREP(GPMI_CTRL0_CS, info->cs) |
@@ -714,7 +661,7 @@ static int mxs_nand_read_id(struct mxs_nand_info *info, u8 adr, void *databuf, s
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
 	d = &info->desc[descnum++];
-	d->data = DMACMD_IRQ | DMACMD_DEC_SEM;
+	d->data = MXS_DMA_DESC_IRQ | MXS_DMA_DESC_DEC_SEM;
 
 	/* Execute the DMA chain. */
 	ret = mxs_dma_run(info->dma_channel, info->desc, descnum);
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index e93bffd595..767c095314 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -24,39 +24,12 @@
 #include <init.h>
 #include <io.h>
 
-
-#define HW_APBHX_CTRL0				0x000
-#define BM_APBH_CTRL0_APB_BURST8_EN		(1 << 29)
-#define BM_APBH_CTRL0_APB_BURST_EN		(1 << 28)
-#define BP_APBH_CTRL0_CLKGATE_CHANNEL		8
-#define BP_APBH_CTRL0_RESET_CHANNEL		16
-#define HW_APBHX_CTRL1				0x010
-#define	BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN	16
-#define HW_APBHX_CTRL2				0x020
-#define HW_APBHX_CHANNEL_CTRL			0x030
-#define BP_APBHX_CHANNEL_CTRL_RESET_CHANNEL	16
-#define BP_APBHX_VERSION_MAJOR			24
-#define HW_APBHX_CHn_NXTCMDAR_MX23(n)		(0x050 + (n) * 0x70)
-#define HW_APBHX_CHn_NXTCMDAR_MX28(n)		(0x110 + (n) * 0x70)
-#define HW_APBHX_CHn_SEMA_MX23(n)		(0x080 + (n) * 0x70)
-#define HW_APBHX_CHn_SEMA_MX28(n)		(0x140 + (n) * 0x70)
-#define	BM_APBHX_CHn_SEMA_PHORE			(0xff << 16)
-#define	BP_APBHX_CHn_SEMA_PHORE			16
-
-enum mxs_dma_id {
-	UNKNOWN_DMA_ID,
-	IMX23_DMA,
-	IMX28_DMA,
-};
-
 struct apbh_dma {
 	void __iomem *regs;
 	struct clk *clk;
 	enum mxs_dma_id id;
 };
 
-#define apbh_dma_is_imx23(aphb) ((apbh)->id == IMX23_DMA)
-
 static struct apbh_dma *apbh_dma;
 
 /*
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 9f53c437b7..b162c23743 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -366,8 +366,8 @@ static void mxs_nand_cmd_ctrl(struct nand_chip *chip, int data, unsigned int ctr
 	d->data =
 		MXS_DMA_DESC_COMMAND_DMA_READ | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_CHAIN | MXS_DMA_DESC_DEC_SEM |
-		MXS_DMA_DESC_WAIT4END | (3 << MXS_DMA_DESC_PIO_WORDS_OFFSET) |
-		(nand_info->cmd_queue_len << MXS_DMA_DESC_BYTES_OFFSET);
+		MXS_DMA_DESC_WAIT4END | MXS_DMA_DESC_PIO_WORDS(3) |
+		MXS_DMA_DESC_XFER_COUNT(nand_info->cmd_queue_len);
 
 	d->address = (dma_addr_t)nand_info->cmd_buf;
 
@@ -495,8 +495,8 @@ static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 	d->data =
 		MXS_DMA_DESC_COMMAND_DMA_WRITE | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
-		(1 << MXS_DMA_DESC_PIO_WORDS_OFFSET) |
-		(length << MXS_DMA_DESC_BYTES_OFFSET);
+		MXS_DMA_DESC_PIO_WORDS(1) |
+		MXS_DMA_DESC_XFER_COUNT(length);
 
 	d->address = (dma_addr_t)nand_info->data_buf;
 
@@ -519,7 +519,7 @@ static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_NAND_WAIT_4_READY | MXS_DMA_DESC_DEC_SEM |
-		MXS_DMA_DESC_WAIT4END | (4 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+		MXS_DMA_DESC_WAIT4END | MXS_DMA_DESC_PIO_WORDS(4);
 
 	d->address = 0;
 
@@ -570,8 +570,8 @@ static void mxs_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 	d->data =
 		MXS_DMA_DESC_COMMAND_DMA_READ | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
-		(4 << MXS_DMA_DESC_PIO_WORDS_OFFSET) |
-		(length << MXS_DMA_DESC_BYTES_OFFSET);
+		MXS_DMA_DESC_PIO_WORDS(4) |
+		MXS_DMA_DESC_XFER_COUNT(length);
 
 	d->address = (dma_addr_t)nand_info->data_buf;
 
@@ -643,7 +643,7 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_CHAIN |
 		MXS_DMA_DESC_NAND_WAIT_4_READY | MXS_DMA_DESC_WAIT4END |
-		(1 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+		MXS_DMA_DESC_PIO_WORDS(1);
 
 	d->address = 0;
 
@@ -657,7 +657,7 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d = mxs_nand_get_dma_desc(nand_info);
 	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_CHAIN |
-		MXS_DMA_DESC_WAIT4END |	(6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+		MXS_DMA_DESC_WAIT4END |	MXS_DMA_DESC_PIO_WORDS(6);
 
 	d->address = 0;
 
@@ -687,7 +687,7 @@ static int mxs_nand_do_bch_read(struct nand_chip *chip, int channel, int readtot
 	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_CHAIN |
 		MXS_DMA_DESC_NAND_WAIT_4_READY | MXS_DMA_DESC_WAIT4END |
-		(3 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+		MXS_DMA_DESC_PIO_WORDS(3);
 
 	d->address = 0;
 
@@ -891,7 +891,7 @@ static int mxs_nand_ecc_write_page(struct nand_chip *chip, const uint8_t *buf,
 	d->data =
 		MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
-		(6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+		MXS_DMA_DESC_PIO_WORDS(6);
 
 	d->address = 0;
 
@@ -1256,7 +1256,7 @@ int mxs_nand_write_fcb_bch62(unsigned int block, void *buf, size_t size)
 	d = mxs_nand_get_dma_desc(nand_info);
 	d->data = MXS_DMA_DESC_COMMAND_NO_DMAXFER | MXS_DMA_DESC_IRQ |
 		      MXS_DMA_DESC_DEC_SEM | MXS_DMA_DESC_WAIT4END |
-		      (6 << MXS_DMA_DESC_PIO_WORDS_OFFSET);
+		      MXS_DMA_DESC_PIO_WORDS(6);
 
 	d->address = 0;
 
diff --git a/include/dma/apbh-dma.h b/include/dma/apbh-dma.h
index e5b5825925..4584b504c2 100644
--- a/include/dma/apbh-dma.h
+++ b/include/dma/apbh-dma.h
@@ -30,6 +30,31 @@
 
 #define MXS_DMA_ALIGNMENT	32
 
+#define	HW_APBHX_CTRL0				0x000
+#define	BM_APBH_CTRL0_APB_BURST8_EN		BIT(29)
+#define	BM_APBH_CTRL0_APB_BURST_EN		BIT(28)
+#define	BP_APBH_CTRL0_CLKGATE_CHANNEL		8
+#define	BP_APBH_CTRL0_RESET_CHANNEL		16
+#define	HW_APBHX_CTRL1				0x010
+#define	BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN	16
+#define	HW_APBHX_CTRL2				0x020
+#define	HW_APBHX_CHANNEL_CTRL			0x030
+#define	BP_APBHX_CHANNEL_CTRL_RESET_CHANNEL	16
+#define	BP_APBHX_VERSION_MAJOR			24
+#define	HW_APBHX_CHn_NXTCMDAR_MX23(n)		(0x050 + (n) * 0x70)
+#define	HW_APBHX_CHn_NXTCMDAR_MX28(n)		(0x110 + (n) * 0x70)
+#define	HW_APBHX_CHn_SEMA_MX23(n)		(0x080 + (n) * 0x70)
+#define	HW_APBHX_CHn_SEMA_MX28(n)		(0x140 + (n) * 0x70)
+#define	NAND_ONFI_CRC_BASE			0x4f4e
+
+enum mxs_dma_id {
+	UNKNOWN_DMA_ID,
+	IMX23_DMA,
+	IMX28_DMA,
+};
+
+#define apbh_dma_is_imx23(aphb) ((apbh)->id == IMX23_DMA)
+
 /*
  * MXS DMA channels
  */
@@ -64,18 +89,16 @@ enum {
 #define	MXS_DMA_DESC_COMMAND_DMA_WRITE	0x1
 #define	MXS_DMA_DESC_COMMAND_DMA_READ	0x2
 #define	MXS_DMA_DESC_COMMAND_DMA_SENSE	0x3
-#define	MXS_DMA_DESC_CHAIN		(1 << 2)
-#define	MXS_DMA_DESC_IRQ		(1 << 3)
-#define	MXS_DMA_DESC_NAND_LOCK		(1 << 4)
-#define	MXS_DMA_DESC_NAND_WAIT_4_READY	(1 << 5)
-#define	MXS_DMA_DESC_DEC_SEM		(1 << 6)
-#define	MXS_DMA_DESC_WAIT4END		(1 << 7)
-#define	MXS_DMA_DESC_HALT_ON_TERMINATE	(1 << 8)
-#define	MXS_DMA_DESC_TERMINATE_FLUSH	(1 << 9)
-#define	MXS_DMA_DESC_PIO_WORDS_MASK	(0xf << 12)
-#define	MXS_DMA_DESC_PIO_WORDS_OFFSET	12
-#define	MXS_DMA_DESC_BYTES_MASK		(0xffff << 16)
-#define	MXS_DMA_DESC_BYTES_OFFSET	16
+#define	MXS_DMA_DESC_CHAIN		BIT(2)
+#define	MXS_DMA_DESC_IRQ		BIT(3)
+#define	MXS_DMA_DESC_NAND_LOCK		BIT(4)
+#define	MXS_DMA_DESC_NAND_WAIT_4_READY	BIT(5)
+#define	MXS_DMA_DESC_DEC_SEM		BIT(6)
+#define	MXS_DMA_DESC_WAIT4END		BIT(7)
+#define	MXS_DMA_DESC_HALT_ON_TERMINATE	BIT(8)
+#define	MXS_DMA_DESC_TERMINATE_FLUSH	BIT(9)
+#define	MXS_DMA_DESC_PIO_WORDS(words)	((words) << 12)
+#define	MXS_DMA_DESC_XFER_COUNT(x)	((x) << 16)
 
 struct mxs_dma_cmd {
 	unsigned long		next;
-- 
2.30.2



