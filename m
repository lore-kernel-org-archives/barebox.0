Delivery-date: Mon, 31 May 2021 09:40:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWy-0003Ap-Gm
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:40:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWv-0000PE-Mo
	for lore@pengutronix.de; Mon, 31 May 2021 09:40:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4WtktVnQgLSzpCd9sa5P/9dkvoczpJYYekFrcw8iM8=; b=TJvQ39d2HwWSoS
	zF+nQuj+zSxmNa6/3bOH2dWRtauqTJ60CyxnRm76k5UidF2u6Li4fj4vheV3nABHHKY4PdvBPHSKg
	wADVVIPHh6IQ5Le93BISgbsYR/mVV+cbBOVbmuEwxYAFKc3wFXwGj9driN87tb17wUx0e51NbdBwZ
	maEjTEcUR+ytWRn2g1fb7zjPe+EFDDuUbW5Oar1RGNRLSYWgtxFoqtoi47uNMB/i6NdS8KTI86/IM
	jgHUJDlDaaPqKXQ/QIlHirFIh983CxxhZp4s+//Y0xK6PktjtsCs7yxjxddLkc5kKkgrtaohNk6lD
	aZKy88Ael+m8rPkE1iWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncVi-00BCqJ-LO; Mon, 31 May 2021 07:38:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCcq-UV
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080Q-Et; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00046H-4i; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:16 +0200
Message-Id: <20210531073821.15257-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003826_033027_08649609 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/20] mci: dw_mmc: enable use on 64-bit CPUs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Provided that all DMA addresses can be safely truncated to 32-bit, the
driver is already usable on 64-bit CPUs. Silence the warnings and add
a check to ensure that coherent DMA addresses are indeed 32-bit.

arch code will need to make sure that dma_alloc() returns DMA memory
suitable for all DMA masters.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 7979568841fc..db8aa9473458 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -124,12 +124,12 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
 
 	dwmci_wait_reset(host, DWMCI_CTRL_FIFO_RESET);
 
-	dwmci_writel(host, DWMCI_DBADDR, (uint32_t)desc);
+	dwmci_writel(host, DWMCI_DBADDR, virt_to_phys(desc));
 
 	if (data->flags & MMC_DATA_READ)
-		start_addr = (uint32_t)data->dest;
+		start_addr = virt_to_phys(data->dest);
 	else
-		start_addr = (uint32_t)data->src;
+		start_addr = virt_to_phys((void *)data->src);
 
 	do {
 		flags = DWMCI_IDMAC_OWN | DWMCI_IDMAC_CH;
@@ -145,7 +145,7 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
 		desc->flags = flags;
 		desc->cnt = cnt;
 		desc->addr = start_addr + (i * PAGE_SIZE);
-		desc->next_addr = (uint32_t)(desc + 1);
+		desc->next_addr = virt_to_phys(desc + 1);
 
 		dev_dbg(host->mci.hw_dev, "desc@ 0x%p 0x%08x 0x%08x 0x%08x 0x%08x\n",
 				desc, flags, cnt, desc->addr, desc->next_addr);
@@ -290,10 +290,10 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		num_bytes = data->blocks * data->blocksize;
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_device((unsigned long)data->src,
+			dma_sync_single_for_device(virt_to_phys((void *)data->src),
 						   num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_device((unsigned long)data->dest,
+			dma_sync_single_for_device(virt_to_phys(data->dest),
 						   num_bytes, DMA_FROM_DEVICE);
 
 		ret = dwmci_prepare_data(host, data);
@@ -400,10 +400,10 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			dwmci_writel(host, DWMCI_CTRL, ctrl);
 
 			if (data->flags & MMC_DATA_WRITE)
-				dma_sync_single_for_cpu((unsigned long)data->src,
+				dma_sync_single_for_cpu(virt_to_phys((void *)data->src),
 							num_bytes, DMA_TO_DEVICE);
 			else
-				dma_sync_single_for_cpu((unsigned long)data->dest,
+				dma_sync_single_for_cpu(virt_to_phys(data->dest),
 							num_bytes, DMA_FROM_DEVICE);
 		}
 	}
@@ -547,6 +547,9 @@ static int dw_mmc_probe(struct device_d *dev)
 	struct resource *iores;
 	struct dwmci_host *host;
 	struct dw_mmc_platform_data *pdata = dev->platform_data;
+	dma_addr_t idmac;
+
+	dma_set_mask(dev, DMA_BIT_MASK(32));
 
 	host = xzalloc(sizeof(*host));
 
@@ -567,7 +570,12 @@ static int dw_mmc_probe(struct device_d *dev)
 	host->ioaddr = IOMEM(iores->start);
 
 	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
-					 DMA_ADDRESS_BROKEN);
+					 &idmac); /* still DMA_ADDRESS_BROKEN */
+
+	if (dma_mapping_error(dev, idmac)) {
+		dev_err(dev, "allocated buffer violates DMA mask\n");
+		return -ENOMEM;
+	}
 
 	host->mci.send_cmd = dwmci_cmd;
 	host->mci.set_ios = dwmci_set_ios;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

