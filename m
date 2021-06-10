Delivery-date: Thu, 10 Jun 2021 15:12:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKTc-0000Zc-9Y
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 15:12:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrKTa-0006NG-IO
	for lore@pengutronix.de; Thu, 10 Jun 2021 15:12:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wzPnd0ZlAs/M8JiKIWzCUXecnsgD+sxNH997xbHh1UI=; b=YAEBOh4Qp1+O2w
	vvIj9tgaEujaacCCW0W3NT+la4DusDHV4p2q0UI9OOHGmb6Fd/c2OwHaVmzpYyNZbSDltLCrNm8jQ
	4A9V7KN7Jj5okVNQTmyPIAuPk+tGSX1pkybIcSX8YNq+n81/fag2jYJEcLO/6tcr9gBhmGbb6vNP+
	GboJuTwXH7pk62o8vGr+jeGLaqQdDTdTehsRO/w/OGIFv7SKgE5rK8djQntoSZCGDWk1dIAAKTeeq
	/nVGjvDYoLfe/6O4vdFVFB4twU+WTZ0SsIEjOkWEAH3hXV/qQ/WsPsdrAAt7E3Uyf5Bf4mOXa1/9F
	FcYTIG/TMnr0HFTR9ydw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrKSG-000qZ8-Pp; Thu, 10 Jun 2021 13:10:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrKSB-000qY8-2H
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 13:10:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKS9-00069u-RI; Thu, 10 Jun 2021 15:10:33 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrKS9-0001u0-I9; Thu, 10 Jun 2021 15:10:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 15:10:32 +0200
Message-Id: <20210610131032.6645-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_061035_126798_C73CCD9B 
X-CRM114-Status: GOOD (  14.70  )
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
Subject: [PATCH] mci: dw_mmc: set dma mask to work correctly on 64bit platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The variant we support currently can only do 32bit DMA. Adjust dma mask
accordingly. Also use dma_map_single() rather than dma_sync_single() to
actually get errors when the mapping fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 53 ++++++++++++++++++++++++++------------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 7979568841..139193ccf5 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -25,6 +25,7 @@
 
 struct dwmci_host {
 	struct mci_host mci;
+	struct device_d *dev;
 	struct clk *clk_biu, *clk_ciu;
 	void *ioaddr;
 	unsigned int fifo_size_bytes;
@@ -34,6 +35,7 @@ struct dwmci_host {
 	int ciu_div;
 	u32 fifoth_val;
 	u32 pwren_value;
+	dma_addr_t idmac_dma;
 };
 
 struct dwmci_idmac {
@@ -110,12 +112,12 @@ static int dwmci_prepare_data_pio(struct dwmci_host *host,
 }
 
 static int dwmci_prepare_data_dma(struct dwmci_host *host,
-		struct mci_data *data)
+		struct mci_data *data, dma_addr_t dma)
 {
 	unsigned long ctrl;
 	unsigned int i = 0, flags, cnt, blk_cnt;
-	unsigned start_addr;
 	struct dwmci_idmac *desc = host->idmac;
+	dma_addr_t desc_dma = host->idmac_dma;
 
 	blk_cnt = data->blocks;
 
@@ -124,12 +126,7 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
 
 	dwmci_wait_reset(host, DWMCI_CTRL_FIFO_RESET);
 
-	dwmci_writel(host, DWMCI_DBADDR, (uint32_t)desc);
-
-	if (data->flags & MMC_DATA_READ)
-		start_addr = (uint32_t)data->dest;
-	else
-		start_addr = (uint32_t)data->src;
+	dwmci_writel(host, DWMCI_DBADDR, desc_dma);
 
 	do {
 		flags = DWMCI_IDMAC_OWN | DWMCI_IDMAC_CH;
@@ -142,10 +139,12 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
 			cnt = data->blocksize * 8;
 		}
 
+		desc_dma += sizeof(*desc);
+
 		desc->flags = flags;
 		desc->cnt = cnt;
-		desc->addr = start_addr + (i * PAGE_SIZE);
-		desc->next_addr = (uint32_t)(desc + 1);
+		desc->addr = dma + (i * PAGE_SIZE);
+		desc->next_addr = desc_dma;
 
 		dev_dbg(host->mci.hw_dev, "desc@ 0x%p 0x%08x 0x%08x 0x%08x 0x%08x\n",
 				desc, flags, cnt, desc->addr, desc->next_addr);
@@ -172,12 +171,12 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
 }
 
 static int dwmci_prepare_data(struct dwmci_host *host,
-		struct mci_data *data)
+		struct mci_data *data, dma_addr_t dma)
 {
 	if (dwmci_use_pio(host))
 		return dwmci_prepare_data_pio(host, data);
 	else
-		return dwmci_prepare_data_dma(host, data);
+		return dwmci_prepare_data_dma(host, data, dma);
 }
 
 static int dwmci_set_transfer_mode(struct dwmci_host *host,
@@ -272,6 +271,7 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	uint64_t start;
 	int ret;
 	unsigned int num_bytes = 0;
+	dma_addr_t dma = 0;
 
 	start = get_time_ns();
 	while (1) {
@@ -287,16 +287,20 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_ALL);
 
 	if (data) {
+
 		num_bytes = data->blocks * data->blocksize;
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_device((unsigned long)data->src,
-						   num_bytes, DMA_TO_DEVICE);
+			dma = dma_map_single(host->dev, (void *)data->src, num_bytes,
+					     DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_device((unsigned long)data->dest,
-						   num_bytes, DMA_FROM_DEVICE);
+			dma = dma_map_single(host->dev, data->dest, num_bytes,
+					     DMA_FROM_DEVICE);
 
-		ret = dwmci_prepare_data(host, data);
+		if (dma_mapping_error(host->dev, dma))
+			return -EFAULT;
+
+		ret = dwmci_prepare_data(host, data, dma);
 		if (ret)
 			return ret;
 	}
@@ -400,11 +404,11 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			dwmci_writel(host, DWMCI_CTRL, ctrl);
 
 			if (data->flags & MMC_DATA_WRITE)
-				dma_sync_single_for_cpu((unsigned long)data->src,
-							num_bytes, DMA_TO_DEVICE);
+				dma_unmap_single(host->dev, dma, num_bytes,
+						 DMA_TO_DEVICE);
 			else
-				dma_sync_single_for_cpu((unsigned long)data->dest,
-							num_bytes, DMA_FROM_DEVICE);
+				dma_unmap_single(host->dev, dma, num_bytes,
+						 DMA_FROM_DEVICE);
 		}
 	}
 
@@ -550,6 +554,9 @@ static int dw_mmc_probe(struct device_d *dev)
 
 	host = xzalloc(sizeof(*host));
 
+	dma_set_mask(dev, DMA_BIT_MASK(32));
+	host->dev = dev;
+
 	host->clk_biu = clk_get(dev, "biu");
 	if (IS_ERR(host->clk_biu))
 		return PTR_ERR(host->clk_biu);
@@ -567,7 +574,9 @@ static int dw_mmc_probe(struct device_d *dev)
 	host->ioaddr = IOMEM(iores->start);
 
 	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
-					 DMA_ADDRESS_BROKEN);
+					 &host->idmac_dma);
+	if (!host->idmac)
+		return PTR_ERR(-ENOMEM);
 
 	host->mci.send_cmd = dwmci_cmd;
 	host->mci.set_ios = dwmci_set_ios;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

