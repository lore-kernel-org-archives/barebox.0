Delivery-date: Mon, 11 Sep 2023 14:13:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffn4-00BSuE-6e
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:13:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffn2-0001VP-4c
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:13:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wl4x2vY5OKxFbJq0HqlvJM3qePv/GxY75OUedD3OT4Q=; b=DKHyeW2C2Q44w8KcU/A3QRTmR3
	SzmTGCEmkb1hNe6hax77NYnejJ7WC2SRsJiIKwUfxvrfxp7ZU/4B/LqspHAtdTWCBkEzePNtDSFoi
	KxeYupqr6OAawCITBT+qEU6epuyw8nbhJPSUu2yBMbt6yhKUae4GsXhtYTA08USR/DZeepCwf/cE0
	ySK3RIjf7asyfqeA7VcLGPCUK79mq1sXkhsHg6PLDCvNu4EnyI5excbU3wqNFHO6KN2HuSREnL9nx
	EeXhig8pdAYgEcp0A1nTBr1CRYEody9eUshaKuCFtOzbe+p+d/8fgl+gm25oTD2mqRKxpST0jqpVb
	QLUVV55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffly-000SNa-2M;
	Mon, 11 Sep 2023 12:12:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfflv-000SMI-1b
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:12:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfflm-0001Gt-CI; Mon, 11 Sep 2023 14:11:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffll-005Xrf-Pp; Mon, 11 Sep 2023 14:11:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffll-00B5gO-0z;
	Mon, 11 Sep 2023 14:11:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jmaselbas@zdiv.net,
	ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:11:56 +0200
Message-Id: <20230911121156.2632668-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
References: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_051207_533517_9867C9CB 
X-CRM114-Status: GOOD (  13.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] mci: sdhci: hardcode SDMA boundary for DMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Given that we are not using the feature, there's no reason to compute
the boundary when polling for DMA completion. Therefore let's assume
the initial default of 512K remains unchanged. The sdhci::sdma_boundary
member is still left in place as the i.MX eSDHC driver sets it to zero
to affect what sdhci_setup_data_pio() writes into SDHCI_BLOCK_SIZE as
the i.MX repurposes doesn't implement the boundary feature and reserves
the bits in the SDHCI_BLOCK_SIZE register.

Fixes: 88f101358167 ("mci: sdhci: Force DMA update to the next block boundary")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 9 ++-------
 drivers/mci/sdhci.h | 3 +++
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index ef36a9c1b38a..6ad11b8099fa 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -292,17 +292,12 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 		 * some controllers are faulty, don't trust them.
 		 */
 		if (irqstat & SDHCI_INT_DMA) {
-			int boundary_cfg = (sdhci->sdma_boundary >> 12) & 0x7;
-			dma_addr_t boundary_size = 4096 << boundary_cfg;
-			/* Force update to the next DMA block boundary. */
-			dma_addr_t next = (dma & ~(boundary_size - 1)) + boundary_size;
-
 			/*
 			 * DMA engine has stopped on buffer boundary. Acknowledge
 			 * the interrupt and kick the DMA engine again.
 			 */
 			sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);
-			sdhci_set_sdma_addr(sdhci, next);
+			sdhci_set_sdma_addr(sdhci, ALIGN(dma, SDHCI_DEFAULT_BOUNDARY_SIZE));
 		}
 
 		if (irqstat & SDHCI_INT_XFER_COMPLETE)
@@ -671,7 +666,7 @@ int sdhci_setup_host(struct sdhci *host)
 	if (host->caps & SDHCI_CAN_DO_8BIT)
 		mci->host_caps |= MMC_CAP_8_BIT_DATA;
 
-	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
+	host->sdma_boundary = SDHCI_DEFAULT_BOUNDARY_ARG;
 
 	if (sdhci_can_64bit_dma(host))
 		host->flags |= SDHCI_USE_64_BIT_DMA;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index f3ffd62dff18..b5e6a7619d75 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -5,6 +5,7 @@
 #include <pbl.h>
 #include <dma.h>
 #include <linux/iopoll.h>
+#include <linux/sizes.h>
 
 #define SDHCI_DMA_ADDRESS					0x00
 #define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
@@ -18,6 +19,8 @@
 #define  SDHCI_DMA_BOUNDARY_8K			SDHCI_DMA_BOUNDARY(1)
 #define  SDHCI_DMA_BOUNDARY_4K			SDHCI_DMA_BOUNDARY(0)
 #define  SDHCI_DMA_BOUNDARY(x)			(((x) & 0x7) << 12)
+#define  SDHCI_DEFAULT_BOUNDARY_SIZE		SZ_512K
+#define  SDHCI_DEFAULT_BOUNDARY_ARG		SDHCI_DMA_BOUNDARY_512K
 #define  SDHCI_TRANSFER_BLOCK_SIZE(x)		((x) & 0xfff)
 #define SDHCI_BLOCK_COUNT					0x06
 #define SDHCI_ARGUMENT						0x08
-- 
2.39.2



