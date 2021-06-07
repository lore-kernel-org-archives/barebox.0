Delivery-date: Mon, 07 Jun 2021 11:32:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqBck-0004RA-R8
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 11:32:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqBcf-0007Ii-BD
	for lore@pengutronix.de; Mon, 07 Jun 2021 11:32:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h95a3SqfLxIOp3/BbwnZ0LqBZsMFpNsimB5F32kWcw=; b=UM8Tao2TeojXgJ
	9H5Sm4HO85sJ7X57U+Q2j3dELL9lIWLMNlsSrrFiwsqtIJhZpSyRVCX3/wDgpOqyAYNhYRegr3uyP
	W9o0Uru8+/leATjtadCRPjaflPFSdsDpD9MlqvZIeh/YGPWJqKnYwx7OggIGGdBDHcVK0LXXFSm8g
	P4R7gD7PVhEaQ/k0bOAJFNHxii5kqFhV9Mb3X5QyTF4SgNopYQc3+RK1tOpFnXCTXHIAuH7KGqEx5
	dz3HW7cOYy9TESUH5dfQa4qX29S+fqV7EQzM3NIZTQAXXKAPE5zA78kcGgizG3dRWsKBgvDws2W+v
	HCqjltLyXbO25ShwVcMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBaV-002bj1-2s; Mon, 07 Jun 2021 09:30:27 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqBHU-002V2c-0x
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 09:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=38kMUytBjppHvMKTvi2nLIu44MdTupg9nhDlkNIHMNM=; b=c0qDaa4veoUEC+PbM/iEU+nBUa
 GDo/T539m6Fv3bwscnXaAOm4S6Dj7YXAmYET2DvJRUfDA8Z9wPuPkY3QhqL/Ot/foOF1GWtqWnH+K
 6vmNs+ROek571FJT4Q+h5gWxi8ojfn3HbT2FiVb1Sie2SwUmm9Rl4/EGURiI+xYY+YhK3Z8CV/1D4
 Oi7Gs8Zkf/LCXxmzBYGcYBKceDwevPLoFE9jyO0iT/VpFZMAYFhYz82qmikGfksGuRtr64AMs0abg
 mh2OmUPoNIri3nMeRuoBwaPj3D6Zh/taPk4sXkQv2lTgQdf24RJdApyGFVca9h18okuQ50rInVTZp
 RapvQOoA==;
Received: from [89.212.21.243] (port=44534 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1lqBHD-00FlZg-Fi
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 11:10:39 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Mon,  7 Jun 2021 11:09:51 +0200
Message-Id: <20210607090951.107269-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210607090951.107269-1-andrej.picej@norik.com>
References: <20210607090951.107269-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_021048_297297_F63F2E5F 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some NAND update tools/flashers do not take the full advantage of NAND's
entire page area for ECC purposes. For example, they might only use 2112
bytes of available 2176 bytes. In this case, ECC parameters have to be
read from the FCB table and taken into account in GPMI NAND xloader to
properly calculate page data length so DMA chain can be executed
correctly.

Tested on PHYTEC phyCARD i.MX6Q board with following NANDs:
- Samsung K9K8G08U0E (pagesize: 0x800, oobsize: 0x40)
- Winbond W29N08GVSIAA (pagesize: 0x800, oobsize: 0x40) and
- Spansion S34ML08G201FI00 (pagesize: 0x800, oobsize: 0x80).

All NANDs having set ECC strength to 4 (13 bytes) despite Spansion NAND
chip supporting ECC strength of 9 (29 bytes).

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 661302762..f8c456927 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -87,6 +87,7 @@ struct mxs_dma_chan {
 #define	NAND_ONFI_CRC_BASE			0x4f4e
 
 #define apbh_dma_is_imx23(aphb) ((apbh)->id == IMX23_DMA)
+#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
 
 /* udelay() is not available in PBL, need to improvise */
 static void __udelay(int us)
@@ -324,6 +325,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 		int oobsize, int pagenum, void *databuf, int raw)
 {
 	void __iomem *bch_regs = info->bch_base;
+	struct fcb_block *fcb = &info->fcb;
 	unsigned column = 0;
 	struct mxs_dma_cmd *d;
 	int cmd_queue_len;
@@ -332,10 +334,17 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 	uint8_t	*status;
 	int i;
 	int timeout;
+	int readtotal, nchunks, eccstrength;
 	int descnum = 0;
 	int max_pagenum = info->nand_size /
 		info->organization.pagesize;
 
+	eccstrength = fcb->EccBlockNEccType << 1;
+	nchunks = writesize / MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
+	readtotal = fcb->MetadataBytes;
+	readtotal += fcb->EccBlockNSize * nchunks;
+	readtotal += DIV_ROUND_UP(13 * eccstrength * nchunks, 8);
+
 	memset(info->desc, 0,
 		sizeof(*info->desc) * MXS_NAND_DMA_DESCRIPTOR_COUNT);
 
@@ -418,12 +427,12 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 			GPMI_CTRL0_WORD_LENGTH |
 			GPMI_CTRL0_CS(info->cs) |
 			GPMI_CTRL0_ADDRESS_NAND_DATA |
-			(writesize + oobsize);
+			readtotal;
 		d->pio_words[1] = 0;
 		d->pio_words[2] = GPMI_ECCCTRL_ENABLE_ECC |
 			GPMI_ECCCTRL_ECC_CMD_DECODE |
 			GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE;
-		d->pio_words[3] = writesize + oobsize;
+		d->pio_words[3] = readtotal;
 		d->pio_words[4] = (dma_addr_t)databuf;
 		d->pio_words[5] = (dma_addr_t)(databuf + writesize);
 
@@ -436,7 +445,7 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
 			GPMI_CTRL0_WORD_LENGTH |
 			GPMI_CTRL0_CS(info->cs) |
 			GPMI_CTRL0_ADDRESS_NAND_DATA |
-			(writesize + oobsize);
+			readtotal;
 	}
 
 	/* Compile DMA descriptor - de-assert the NAND lock and interrupt. */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

