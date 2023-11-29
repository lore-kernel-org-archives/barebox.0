Delivery-date: Wed, 29 Nov 2023 07:19:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dut-00CvHw-0j
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:19:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dut-0003An-3a
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:19:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s+p5q3F3OJf5Dq+UIwsl1OvOAfgIqqxng5c+4f6vKdY=; b=Akb3mxwVYlhYKCfM/8frN/ufdY
	cD9Un2P4SpLite9I8miKJobjnlKRUwzFshpbxksmcadBJE8ztIf7HDPE6H8VqHor5FsCG5KyIPcZZ
	qOftSu1yl6FANQ9E69YAlr9BCC/QbTZYUcV2MXScPq17QpxYl0vDtDscJZ0zryUYQwCjqJrqaQfNm
	aKViuYj3XQzogOu9ZhHEhX+mt3T9drBkBbmsLxXcc1eGHCK/ryMre98mrGkm87x+wqj8x606bDKxR
	obTFU+TJc6cRMai0Azk+0NpWZqvQ/IIQa0w2FpFxw2bz2LsVbxTD84oreCeX6KHTf+4b3MbIu0dGt
	kWf/kgjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dti-007CNo-08;
	Wed, 29 Nov 2023 06:18:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dte-007CM7-0M
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:18:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-0002qz-RS; Wed, 29 Nov 2023 07:18:04 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-00CLQb-Dw; Wed, 29 Nov 2023 07:18:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-007Tac-17;
	Wed, 29 Nov 2023 07:18:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	str@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 07:17:58 +0100
Message-Id: <20231129061758.1781732-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
References: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_221806_150622_064A9CC8 
X-CRM114-Status: GOOD (  16.48  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] mci: stm32_sdmmc2: correct usage of DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new CONFIG_DMA_API_DEBUG option correctly detects that
dma_sync_single_for_device is called without dma_map_single.

In the particular case of the STM32 SDMMC2 driver, this shouldn't lead
to errors as dma_sync_single_for_cpu is only called after successful
DMA, not before. In other cases though, dirty cache lines may be evicted
and written back to cache, just before dma_sync_single_for_cpu,
resulting in memory corruption.

Switch to using dma_map_single to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 41 ++++++++++++++++++++------------------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 1bfef1ccf0eb..84969a29d0f4 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -257,11 +257,12 @@ static void stm32_sdmmc2_pwron(struct stm32_sdmmc2_priv *priv)
 	udelay(DIV_ROUND_UP(74 * USEC_PER_SEC, priv->mci.clock));
 }
 
-static void stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
+static int stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
 				    struct mci_data *data, u32 data_length)
 {
 	unsigned int num_bytes = data->blocks * data->blocksize;
-	u32 data_ctrl, idmabase0;
+	dma_addr_t idmabase0;
+	u32 data_ctrl;
 
 	/* Configure the SDMMC DPSM (Data Path State Machine) */
 	data_ctrl = (__ilog2_u32(data->blocksize) <<
@@ -270,27 +271,27 @@ static void stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
 
 	if (data->flags & MMC_DATA_READ) {
 		data_ctrl |= SDMMC_DCTRL_DTDIR;
-		idmabase0 = (u32)data->dest;
+		idmabase0 = dma_map_single(priv->dev, (void *)data->src, num_bytes,
+					   DMA_FROM_DEVICE);
 	} else {
-		idmabase0 = (u32)data->src;
+		idmabase0 = dma_map_single(priv->dev, (void *)data->src, num_bytes,
+					   DMA_TO_DEVICE);
 	}
 
+	if (dma_mapping_error(priv->dev, idmabase0))
+		return DMA_ERROR_CODE;
+
 	/* Set the SDMMC DataLength value */
 	writel(data_length, priv->base + SDMMC_DLEN);
 
 	/* Write to SDMMC DCTRL */
 	writel(data_ctrl, priv->base + SDMMC_DCTRL);
 
-	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_device(priv->dev, (unsigned long)idmabase0,
-					   num_bytes, DMA_TO_DEVICE);
-	else
-		dma_sync_single_for_device(priv->dev, (unsigned long)idmabase0,
-					   num_bytes, DMA_FROM_DEVICE);
-
 	/* Enable internal DMA */
 	writel(idmabase0, priv->base + SDMMC_IDMABASE0);
 	writel(SDMMC_IDMACTRL_IDMAEN, priv->base + SDMMC_IDMACTRL);
+
+	return idmabase0;
 }
 
 static void stm32_sdmmc2_start_cmd(struct stm32_sdmmc2_priv *priv,
@@ -415,7 +416,8 @@ static int stm32_sdmmc2_end_cmd(struct stm32_sdmmc2_priv *priv,
 
 static int stm32_sdmmc2_end_data(struct stm32_sdmmc2_priv *priv,
 				 struct mci_cmd *cmd,
-				 struct mci_data *data)
+				 struct mci_data *data,
+				 dma_addr_t dma_addr)
 {
 	u32 mask = SDMMC_STA_DCRCFAIL | SDMMC_STA_DTIMEOUT |
 		   SDMMC_STA_IDMATE | SDMMC_STA_DATAEND;
@@ -436,12 +438,10 @@ static int stm32_sdmmc2_end_data(struct stm32_sdmmc2_priv *priv,
 		return ret;
 	}
 
-	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_cpu(priv->dev, (unsigned long)data->src,
-					num_bytes, DMA_TO_DEVICE);
+	if (data->flags & MMC_DATA_READ)
+		dma_unmap_single(priv->dev, dma_addr, num_bytes, DMA_FROM_DEVICE);
 	else
-		dma_sync_single_for_cpu(priv->dev, (unsigned long)data->dest,
-					num_bytes, DMA_FROM_DEVICE);
+		dma_unmap_single(priv->dev, dma_addr, num_bytes, DMA_TO_DEVICE);
 
 	if (status & SDMMC_STA_DCRCFAIL) {
 		dev_err(priv->dev, "error SDMMC_STA_DCRCFAIL (0x%x) for cmd %d\n",
@@ -481,12 +481,15 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 {
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
 	u32 cmdat = data ? SDMMC_CMD_CMDTRANS : 0;
+	dma_addr_t dma_addr = DMA_ERROR_CODE;
 	u32 data_length = 0;
 	int ret;
 
 	if (data) {
 		data_length = data->blocks * data->blocksize;
-		stm32_sdmmc2_start_data(priv, data, data_length);
+		dma_addr = stm32_sdmmc2_start_data(priv, data, data_length);
+		if (dma_addr == DMA_ERROR_CODE)
+			return -EFAULT;
 	}
 
 	stm32_sdmmc2_start_cmd(priv, cmd, cmdat, data_length);
@@ -497,7 +500,7 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	ret = stm32_sdmmc2_end_cmd(priv, cmd);
 
 	if (data && !ret)
-		ret = stm32_sdmmc2_end_data(priv, cmd, data);
+		ret = stm32_sdmmc2_end_data(priv, cmd, data, dma_addr);
 
 	/* Clear flags */
 	writel(SDMMC_ICR_STATIC_FLAGS, priv->base + SDMMC_ICR);
-- 
2.39.2



