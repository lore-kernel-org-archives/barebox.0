Delivery-date: Wed, 20 Jul 2022 15:33:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p5-00FdfV-Rm
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p2-0004XT-GA
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:33:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmANPHohVz+4uwI3h35Yy0X23/E2rJCsYaNXJrtnwCA=; b=0fXnamf3xEP5ed
	Vw8UXW3c0GaSkb4ixRZbkSNZyU6ce8Mrjze+MHYEbWu84j1YQsy6YmfCJzwqRzo3wpyoBFKyzjPtI
	OUffGUY4nxGBEaRW7ZLGRKHDRKSjOBSSZYquxr0563848Fzm0w4O/kMR013sMZBrMBX0s3MFRGJ1E
	hbE2WMqCpsDGqMpphF1CljSKFrES+8D+VsEfxw97C/XcroFVQmTa5f+PVxSv6TryURB49P1EyTY0B
	ZP13HCmqmQbataquUN/5ItcFKBLJlT8a7CiQQO/OR7A6+wXMcLX2h+e7YrNgXksHDmwUzL7cFK8kQ
	AWYTSmijadZx446Wuj0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nZ-0064H4-HO; Wed, 20 Jul 2022 13:31:33 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nH-00648D-3r
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:16 +0000
Received: by mail-lf1-x135.google.com with SMTP id bf9so30198358lfb.13
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RmANPHohVz+4uwI3h35Yy0X23/E2rJCsYaNXJrtnwCA=;
        b=ovAtHNm0vHnWjpcDPFKDbf8GXv1niKjWGJuKLRnfWdGyEgY6SVdwVHwjafYllvmLnj
         P7hN4BxR9eTe5Jc5QkFG/G3Rt7g4XFSrNk3ijl6MhI53CRmiUL8KpbsHp2MdjJm7SPpQ
         28aK50OOXEdAS0q8lIJHoDgOpFaWJ6hcXTXqP9arRrnpQLDanT6+KJppV0Ztv3g4vxmy
         nizKZvecmAY/p3Q7ypsm7y2xMrH2GulcNi5ED3f5CUsbjEZAJYZuuRlP9L7yiX03AtV6
         GnHNrXXswM4GeTBliWYdJewloVXETlJ/ZqHav3atx7iSxUGSo20V3quiZssKTKtYOgLX
         PTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RmANPHohVz+4uwI3h35Yy0X23/E2rJCsYaNXJrtnwCA=;
        b=vHqJ9Z9Xdbulrgt0sIavM7IyRTOB33ijwjVjS3LVqUeTAKmGMCRn6RsSfHJHyZCa7l
         sWDhQesbwWB7APJGGv6GfP8DaEvkrUzf0lpkRG7fIW2dO/dUCkpOCuQc/30R4NEgpdLl
         kXiUkY8wGBdngGOimC58FBm0aVthtqecS5BNRHBD0DRdCuhpMRBoqj7kNjPJV8YHvqWK
         pcA5K1cvPGoP5x+ICjUW/XHtgyRy+Bj2yq5I8Etdzbb8S9/Bja9NdNpVfGSj9NW0o1d0
         pnu7WtwifZxhuosJFRVhusYJ7BGw87ofaAgNy/CmWwNKFXyU6PNCLWoJEMV2wxT16z2b
         oUeQ==
X-Gm-Message-State: AJIora/oty8vLPT43MuWRa/aW8ZUm5ubhBAaf5tNBmb7+NUM9MFQzZ3v
	Uazf8hyGhcmt7i00BFYN6j0ipv4KJ1V7na++
X-Google-Smtp-Source: AGRyM1sJYD9Fe8cb+Eiyilj8uAKj25ns7zrF9x1m/foOrIJdpqk+aekbRGZSVxU/Gvk3nCITjoq9og==
X-Received: by 2002:a05:6512:3d1d:b0:489:e0d9:c13c with SMTP id d29-20020a0565123d1d00b00489e0d9c13cmr19731946lfv.497.1658323872825;
        Wed, 20 Jul 2022 06:31:12 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:12 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:58 +0300
Message-Id: <20220720133100.13580-6-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063115_193555_AD79D007 
X-CRM114-Status: GOOD (  11.87  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] net: rtl8169: properly map rx/tx buffers for dma
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/rtl8169.c | 37 ++++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 341f5f240e..e78cc40ffe 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -42,11 +42,13 @@ struct rtl8169_priv {
 	volatile struct bufdesc	*tx_desc;
 	dma_addr_t		tx_desc_phys;
 	void			*tx_buf;
+	dma_addr_t		tx_buf_phys;
 	unsigned int		cur_tx;
 
 	volatile struct bufdesc	*rx_desc;
 	dma_addr_t		rx_desc_phys;
 	void			*rx_buf;
+	dma_addr_t		rx_buf_phys;
 	unsigned int		cur_rx;
 
 	struct mii_bus miibus;
@@ -218,14 +220,17 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 
 	priv->cur_rx = priv->cur_tx = 0;
 
-	priv->tx_desc = dma_alloc_coherent(NUM_TX_DESC *
-				sizeof(struct bufdesc), &priv->tx_desc_phys);
+	priv->tx_desc = dma_alloc_coherent(NUM_TX_DESC * sizeof(struct bufdesc),
+					   &priv->tx_desc_phys);
 	priv->tx_buf = malloc(NUM_TX_DESC * PKT_BUF_SIZE);
-	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC *
-				sizeof(struct bufdesc), &priv->rx_desc_phys);
+	priv->tx_buf_phys = dma_map_single(&priv->edev.dev, priv->tx_buf,
+					   NUM_TX_DESC * PKT_BUF_SIZE, DMA_TO_DEVICE);
+
+	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC * sizeof(struct bufdesc),
+					   &priv->rx_desc_phys);
 	priv->rx_buf = malloc(NUM_RX_DESC * PKT_BUF_SIZE);
-	dma_sync_single_for_device((unsigned long)priv->rx_buf,
-				   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
+	priv->rx_buf_phys = dma_map_single(&priv->edev.dev, priv->rx_buf,
+					   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
 
 	for (i = 0; i < NUM_RX_DESC; i++) {
 		if (i == (NUM_RX_DESC - 1))
@@ -236,7 +241,7 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 				cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
 
 		priv->rx_desc[i].buf_addr =
-				cpu_to_le32(virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE));
+				cpu_to_le32(priv->rx_buf_phys + i * PKT_BUF_SIZE);
 	}
 }
 
@@ -353,12 +358,12 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	if (packet_length < ETH_ZLEN)
 		memset(priv->tx_buf + entry * PKT_BUF_SIZE, 0, ETH_ZLEN);
 	memcpy(priv->tx_buf + entry * PKT_BUF_SIZE, packet, packet_length);
-	dma_sync_single_for_device((unsigned long)priv->tx_buf + entry *
+	dma_sync_single_for_device(priv->tx_buf_phys + entry *
 				   PKT_BUF_SIZE, PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	priv->tx_desc[entry].buf_Haddr = 0;
 	priv->tx_desc[entry].buf_addr =
-		cpu_to_le32(virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE));
+		cpu_to_le32(priv->tx_buf_phys + entry * PKT_BUF_SIZE);
 
 	if (entry != (NUM_TX_DESC - 1)) {
 		priv->tx_desc[entry].status =
@@ -375,8 +380,8 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	while (le32_to_cpu(priv->tx_desc[entry].status) & BD_STAT_OWN)
 		;
 
-	dma_sync_single_for_cpu((unsigned long)priv->tx_buf + entry *
-				PKT_BUF_SIZE, PKT_BUF_SIZE, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(priv->tx_buf_phys + entry * PKT_BUF_SIZE,
+				PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	priv->cur_tx++;
 
@@ -395,15 +400,13 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 		if (!(le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_RX_RES)) {
 			pkt_size = (le32_to_cpu(priv->rx_desc[entry].status) & 0x1fff) - 4;
 
-			dma_sync_single_for_cpu((unsigned long)priv->rx_buf
-						+ entry * PKT_BUF_SIZE,
+			dma_sync_single_for_cpu(priv->rx_buf_phys + entry * PKT_BUF_SIZE,
 						pkt_size, DMA_FROM_DEVICE);
 
 			net_receive(edev, priv->rx_buf + entry * PKT_BUF_SIZE,
 			            pkt_size);
 
-			dma_sync_single_for_device((unsigned long)priv->rx_buf
-						   + entry * PKT_BUF_SIZE,
+			dma_sync_single_for_device(priv->rx_buf_phys + entry * PKT_BUF_SIZE,
 						   pkt_size, DMA_FROM_DEVICE);
 
 			if (entry == NUM_RX_DESC - 1)
@@ -413,8 +416,8 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 				priv->rx_desc[entry].status =
 					cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
 			priv->rx_desc[entry].buf_addr =
-				cpu_to_le32(virt_to_phys(priv->rx_buf +
-							 entry * PKT_BUF_SIZE));
+				cpu_to_le32(priv->rx_buf_phys +
+					    entry * PKT_BUF_SIZE);
 		} else {
 			dev_err(&edev->dev, "rx error\n");
 		}
-- 
2.20.1



