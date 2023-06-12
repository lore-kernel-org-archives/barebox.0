Delivery-date: Mon, 12 Jun 2023 15:03:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD1-003qdD-UM
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCz-0000ki-6b
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L01+RosmYXHveneyJXbG4xdtHo6OMkWPfaK2ayP89Sk=; b=4vxLlMvaBHqL0vhuOJlamVQcNH
	o0J97yLeRRzfhO7N/yULleMp+G5RkpsbgwMMiV35m1WsF2oYn3lBan4BQwspR4UTC6AbM8LghvXM2
	gnGBkLdrtHg8DWaoK26F2J2Tmoi91pXArNmDJ9zsb85nIgTiD4+PTh5+VNjLiO9c408lMKn2CACsG
	YH09fQCGQecAYejhdyD8nLii1jkqHJkFk1/FOVX1wGNiGoLoq9opjoZBi+Op4GPmCiTKlA5iZMrWr
	OCBTZWsmsouAojfEMMZaSOod5L2pLUuPpXmwK4K10aiy6hNhV7AFmKuwOlEs5HVVNa+BygSpVVCvu
	BnXA3EQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCJ-0047OX-2Q;
	Mon, 12 Jun 2023 13:03:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC8-0047DS-0z
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-0008Lv-2k; Mon, 12 Jun 2023 15:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-006tVp-Ae; Mon, 12 Jun 2023 15:02:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJl-6l; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:32 +0200
Message-Id: <20230612130239.1087599-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060252_356129_558E1862 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/19] mci: sdhci: dove: fix pointer to u32 casts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The dove SDHCI driver doesn't fully work on 64-bit, which
is ok as the SoC is ARMv7-only anways. We do want to be able to build
test the driver though, so replace straight casts of addr with
lower_32_bits(virt_to_phys(addr)), which has the same result, but makes
it clear that the upper 32 bit are truncated and silences the compiler
warnings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/dove-sdhci.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 9e6da6a81be1..5954058e6b30 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -87,9 +87,11 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	if (data) {
 		num_bytes = data->blocks * data->blocksize;
 		if (data->flags & MMC_DATA_READ)
-			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS,
+				      lower_32_bits(virt_to_phys(data->dest)));
 		else
-			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->src);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS,
+				      lower_32_bits(virt_to_phys(data->src)));
 		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
 				SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
 		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
@@ -97,10 +99,12 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_device(host->mci.hw_dev, (unsigned long)data->src,
+			dma_sync_single_for_device(host->mci.hw_dev,
+						   lower_32_bits(virt_to_phys(data->src)),
 						    num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_device(host->mci.hw_dev, (unsigned long)data->dest,
+			dma_sync_single_for_device(host->mci.hw_dev,
+						   lower_32_bits(virt_to_phys(data->dest)),
 						    num_bytes, DMA_FROM_DEVICE);
 	}
 
@@ -126,11 +130,13 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	if (data) {
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_cpu(host->mci.hw_dev, (unsigned long)data->src,
+			dma_sync_single_for_cpu(host->mci.hw_dev,
+						lower_32_bits(virt_to_phys(data->src)),
 						num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_cpu(host->mci.hw_dev, (unsigned long)data->dest,
-					 num_bytes, DMA_FROM_DEVICE);
+			dma_sync_single_for_cpu(host->mci.hw_dev,
+						lower_32_bits(virt_to_phys(data->dest)),
+						num_bytes, DMA_FROM_DEVICE);
 
 		ret = dove_sdhci_wait_for_done(host, SDHCI_INT_XFER_COMPLETE);
 		if (ret) {
-- 
2.39.2



