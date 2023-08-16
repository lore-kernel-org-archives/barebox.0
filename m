Delivery-date: Wed, 16 Aug 2023 11:41:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD1z-0066c4-7l
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:41:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD1x-0001PJ-AN
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:41:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AWnaxHZaqW1vJQTRxPjMixl3wNfmNmRDYD7QekKMOL0=; b=uV/kFa1WBWd5nh2AM9h88wg2Re
	cycc1u1mkgLNJhoV1t5h1VH4sO9I0onO77IxthNGLgBh4BPFiGDTrED8uW9ummijWDMbIFnfA226H
	PPXRXbZMjC4esrWlAXSq1rLDLvTNXtyf9DMbe4d2i6ajrSc3/ZYIhirrS0cfIdDghCjY4JO13PLSa
	1esmzKsvIHk95swMf4ALBd6MrLu6JLZt1o7mkZatGB49fzDtXgXlgAJ/Sw9SmyYQ9brtjhBjGX3QO
	/AQadq9QkKzH/6fpKGayrOk5GV/gDJo6Yzcc3bTwMAHkMmR4JuJrTVJ7j2cg5vybwXD1Gnx+jXR2q
	ejGpk/Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD10-003csX-29;
	Wed, 16 Aug 2023 09:40:34 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD0w-003cq9-3C
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:40:32 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6FC4B40014;
	Wed, 16 Aug 2023 09:40:29 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 16 Aug 2023 11:39:44 +0200
Message-ID: <20230816093945.19974-6-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816093945.19974-1-jmaselbas@kalray.eu>
References: <20230816093945.19974-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_024031_158459_D317A01E 
X-CRM114-Status: GOOD (  13.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/7] mci: sdhci: Force DMA update to the next block boundary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
change in v2:
 - applied the fixup:
   straight copy from Linux didn't worked because the macro SDHCI_DMA_BOUNDARY_512K
   (default value of sdhci::sdma_boundary) is not a size but the enum value to be
   written in the transfer control register.

 drivers/mci/sdhci.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 4aca3af5aa..b0b83bfaa9 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -279,8 +279,20 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			goto out;
 		}
 
+		/*
+		 * We currently don't do anything fancy with DMA
+		 * boundaries, but as we can't disable the feature
+		 * we need to at least restart the transfer.
+		 *
+		 * According to the spec sdhci_readl(host, SDHCI_DMA_ADDRESS)
+		 * should return a valid address to continue from, but as
+		 * some controllers are faulty, don't trust them.
+		 */
 		if (irqstat & SDHCI_INT_DMA) {
-			u32 addr = sdhci_read32(sdhci, SDHCI_DMA_ADDRESS);
+			int boundary_cfg = (sdhci->sdma_boundary >> 12) & 0x7;
+			dma_addr_t boundary_size = 4096 << boundary_cfg;
+			/* Force update to the next DMA block boundary. */
+			dma = (dma & ~(boundary_size - 1)) + boundary_size;
 
 			/*
 			 * DMA engine has stopped on buffer boundary. Acknowledge
-- 
2.41.0



