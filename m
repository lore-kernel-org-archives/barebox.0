Delivery-date: Thu, 10 Jun 2021 16:48:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLzG-0001JZ-86
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 16:48:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLzF-00028o-8M
	for lore@pengutronix.de; Thu, 10 Jun 2021 16:48:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7afWHhNNu9SO+05WIMJMtrkp2Xlbeus6lnrCMXwRiCg=; b=iKc5Xum+dVO+BB
	KXaHLgGe3TklosG5iEsJL9zLkWU5lpH5V3ApkUDu3F2o1K0OABWA2ECH9G41/flueWnHAdcf0751A
	dtOeaTnvRSo2lDnZCnjjywc8DvfVmCCRW3xhHiQqDr3ZJfWRDk8u4Gj7rccl80ofGd0RaT/7QfpW3
	+XDlcw/vIyDQQB4wFwQGwUlw02EWuCTUpZWkOrratopFmhMDvqyUNB0/ba94wZrO3cqKQ1vFzvSLJ
	oWD2EXmRCHCoWd38+SEG2I6uzOIHhXwmenG1gVHlEElWVNcB++fqbp9KIpFCGQ4t4io3X9eVzNXn2
	rFKKELNcgC9haAAZPXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrLxv-001CZP-SB; Thu, 10 Jun 2021 14:47:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrLxr-001CYl-6A
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 14:47:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrLxp-0001yF-Vx; Thu, 10 Jun 2021 16:47:21 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrLxp-0004V0-N7; Thu, 10 Jun 2021 16:47:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 16:47:20 +0200
Message-Id: <20210610144720.25620-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210610144720.25620-1-s.hauer@pengutronix.de>
References: <20210610144720.25620-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_074723_253795_0CA029C2 
X-CRM114-Status: GOOD (  15.92  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mci: imx-esdhc: Use common DMA helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Convert the driver to use the new common SDHCI DMA helpers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 88 ++++++++++------------------------
 1 file changed, 24 insertions(+), 64 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index a85459d29c..a0290275be 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -10,12 +10,6 @@
 
 #define PRSSTAT_DAT0  0x01000000
 
-struct fsl_esdhc_dma_transfer {
-	dma_addr_t dma;
-	unsigned int size;
-	enum dma_data_direction dir;
-};
-
 static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
@@ -58,71 +52,33 @@ static bool esdhc_use_pio_mode(void)
 {
 	return IN_PBL || IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO);
 }
+
 static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
-			    struct fsl_esdhc_dma_transfer *tr)
+			    dma_addr_t *dma)
 {
 	u32 wml_value;
-	void *ptr;
-
-	if (!esdhc_use_pio_mode()) {
-		wml_value = data->blocksize/4;
-
-		if (data->flags & MMC_DATA_READ) {
-			if (wml_value > 0x10)
-				wml_value = 0x10;
-
-			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
-		} else {
-			if (wml_value > 0x80)
-				wml_value = 0x80;
 
-			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
-						wml_value << 16);
-		}
-
-		tr->size = data->blocks * data->blocksize;
+	wml_value = data->blocksize / 4;
 
-		if (data->flags & MMC_DATA_WRITE) {
-			ptr = (void *)data->src;
-			tr->dir = DMA_TO_DEVICE;
-		} else {
-			ptr = data->dest;
-			tr->dir = DMA_FROM_DEVICE;
-		}
+	if (data->flags & MMC_DATA_READ) {
+		if (wml_value > 0x10)
+			wml_value = 0x10;
 
-		tr->dma = dma_map_single(host->dev, ptr, tr->size, tr->dir);
-		if (dma_mapping_error(host->dev, tr->dma))
-			return -EFAULT;
+		esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
+	} else {
+		if (wml_value > 0x80)
+			wml_value = 0x80;
 
-
-		sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, tr->dma);
+		esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
+					wml_value << 16);
 	}
 
-	sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
-
-	return 0;
-}
-
-static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
-		  struct fsl_esdhc_dma_transfer *tr)
-{
-	u32 irqstat;
+	host->sdhci.sdma_boundary = 0;
 
 	if (esdhc_use_pio_mode())
-		return sdhci_transfer_data_pio(&host->sdhci, data);
-
-	do {
-		irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-
-		if (irqstat & DATA_ERR)
-			return -EIO;
-
-		if (irqstat & SDHCI_INT_DATA_TIMEOUT)
-			return -ETIMEDOUT;
-	} while (!(irqstat & SDHCI_INT_XFER_COMPLETE) &&
-		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_DATA_LINE_ACTIVE));
-
-	dma_unmap_single(host->dev, tr->dma, tr->size, tr->dir);
+		sdhci_setup_data_pio(&host->sdhci, data);
+	else
+		sdhci_setup_data_dma(&host->sdhci, data, dma);
 
 	return 0;
 }
@@ -172,7 +128,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 {
 	u32	xfertyp, mixctrl, command;
 	u32	irqstat;
-	struct fsl_esdhc_dma_transfer tr = { 0 };
+	dma_addr_t dma = SDHCI_NO_DMA;
 	int ret;
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
@@ -182,13 +138,13 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 
 	/* Set up for a data transfer if we have one */
 	if (data) {
-		ret = esdhc_setup_data(host, data, &tr);
+		ret = esdhc_setup_data(host, data, &dma);
 		if (ret)
 			return ret;
 	}
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
-				!esdhc_use_pio_mode(), &command, &xfertyp);
+				dma != SDHCI_NO_DMA, &command, &xfertyp);
 
 	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
 	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
@@ -245,7 +201,11 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		ret = esdhc_do_data(host, data, &tr);
+		if (esdhc_use_pio_mode())
+			ret = sdhci_transfer_data_pio(&host->sdhci, data);
+		else
+			ret = sdhci_transfer_data_dma(&host->sdhci, data, dma);
+
 		if (ret)
 			return ret;
 	}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

