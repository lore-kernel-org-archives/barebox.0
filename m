Delivery-date: Mon, 08 Apr 2024 18:31:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtruQ-002vYj-2A
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 18:31:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtruQ-0003L6-4k
	for lore@pengutronix.de; Mon, 08 Apr 2024 18:31:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5RgSJA9SY+jp57dYbs2YeYT8/EihcQURjNfJ6s7T0Sw=; b=NuCfw6D1iNofcW0xb4f/d4pq/l
	bxaytA3615T4ZyCB/SZS01RSkmkmWp7riZ2rpPMhf/xYmKqevn9UGt2iFUE9LFfcziyZogo6wW3Am
	vi7Vvi0CjcacW6Xq5WGtQ7sK4uczuaXory0WmUnMXbdvSzoVCbf+3MqucdVpXflaNv0N+Rd92YyqO
	0mzPK6o8AqqBAbjJ+ry0y+XebrKOITPgvoSRpq003JSkvUrKL1y+9xznGmSBsnHC/MH5P/VHFVjIq
	wbOdLC5U/aHUMZheVy+NhjuZVO5Xaz78m9GkQQB0KgDxpWVCmKzygrLHcCx1SgUV8w9rQeIT519Xm
	M8ic0eLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtrtn-0000000GBnR-33ND;
	Mon, 08 Apr 2024 16:31:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtrtk-0000000GBmu-36Pq
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 16:31:10 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rtrti-00037m-8A
	for barebox@lists.infradead.org; Mon, 08 Apr 2024 18:31:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  8 Apr 2024 18:31:01 +0200
Message-Id: <20240408163101.3730045-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_093108_800912_F39B741A 
X-CRM114-Status: UNSURE (   8.98  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: sdhci: fix dma mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case of MMC_DATA_READ the dest address should be used and in case of
MMC_DATA_WRITE the src address should be used. We had no issues for now
since both dest and src point to same address due to the union.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/sdhci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index edb819d66d42..a141e504971b 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -233,10 +233,10 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	nbytes = data->blocks * data->blocksize;
 
 	if (data->flags & MMC_DATA_READ)
-		*dma = dma_map_single(dev, (void *)data->src, nbytes,
+		*dma = dma_map_single(dev, data->dest, nbytes,
 				      DMA_FROM_DEVICE);
 	else
-		*dma = dma_map_single(dev, data->dest, nbytes,
+		*dma = dma_map_single(dev, (void *)data->src, nbytes,
 				      DMA_TO_DEVICE);
 
 	if (dma_mapping_error(dev, *dma)) {
-- 
2.39.2



