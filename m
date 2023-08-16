Delivery-date: Wed, 16 Aug 2023 11:41:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD24-0066d1-28
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:41:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD22-0001RL-As
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:41:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBp0AEky5i/gYoJ7lxHAKx7nyccmGTWDXt04v+QXG64=; b=iqViqWrifdQ4CQI5LiQGPnX9OH
	NXmQMm/baWlya/ASJvqlr0irYGUbuJad4P/Tgowqif/OhA1e6WUq0SmUTvcJ6fpG+k7aLg6O1wIHo
	CPbU65CgqieHceGCw0jusQ1IfTiEpD61YNPSArGet7/788tciI7pQYhoPuh9F1eNE2M0fzLnMduQH
	A7XPJ4klFcupGnAH7VA2EzyqWoDRUPcmX+bV9eZj9rUDTYs0sP1mgLhn50aEEDI96+1wr07mgYPoe
	oZP5xXp7PIj5towT41pKTObScFzKNx2MrdHXZjtEXY5WUVBT051HqVntQPX+3MdEK5LoSNN2asI2v
	Ju2YkMTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD12-003cty-2Q;
	Wed, 16 Aug 2023 09:40:36 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD0x-003cq0-0Y
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:40:33 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 479024000D;
	Wed, 16 Aug 2023 09:40:28 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 16 Aug 2023 11:39:41 +0200
Message-ID: <20230816093945.19974-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816093945.19974-1-jmaselbas@kalray.eu>
References: <20230816093945.19974-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_024031_357036_D15911D6 
X-CRM114-Status: UNSURE (   8.81  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] mci: sdhci: Actually return the error code instead of 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sdhci_transfer_data_dma function always returned 0 even in case of
an error, fix this.

Fixes: 60b608b271 ("mci: sdhci: Add DMA transfer helpers")
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f6deea4020..a980e34314 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -244,7 +244,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	else
 		dma_unmap_single(dev, dma, nbytes, DMA_TO_DEVICE);
 
-	return 0;
+	return ret;
 }
 
 int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
-- 
2.41.0



