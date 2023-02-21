Delivery-date: Tue, 21 Feb 2023 09:07:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgX-00Defr-6q
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgV-0007B4-Vi
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lIjmLQpalg+HEWCs8rrtmiJFEpRaajBgPiDxFQ8AKNo=; b=V6fNQdWteAjikzgTZNb/PGVR8i
	IuXamve/n0qjdDKXHmZZDdVr8SLVWQv0NKi9+R9khRicpDgTh69JOLB35BHNvwJ/a2L/08QlM0e18
	U+8njqy6etgB9RVVKMgxLkRmUDV8XOA0Bb6Y7u7nEvA0k+jdOoE1KuFGRdfvgtTyWcQDCREdD9pkh
	VnNzuFnn90j6+blggm9zvZ4iJWWlhafBA8uqzIQPVsuP0XwvwEiG6dB5+N/1BQvX+NmkCOMSI21uF
	QkuS5327dfFtSQalIm+egVvPtCoh8IJrKzkhEWZ7x11nv0lWunka2HRcWXv5jcWdYTfkYeOmG+nAE
	RHiS/t/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNfJ-006yoQ-SQ; Tue, 21 Feb 2023 08:06:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeW-006yJE-FJ
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeT-00063q-Hh; Tue, 21 Feb 2023 09:05:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeR-006Rjl-ES; Tue, 21 Feb 2023 09:05:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YH9-PL; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:15 +0100
Message-Id: <20230221080524.607241-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000532_526414_E3D66B15 
X-CRM114-Status: GOOD (  11.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 03/12] net: rtl8169: pass physical device for DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It shouldn't matter for now, but DMA API should always be called for the
physical device, i.e. the struct device underlying the struct pci_device.
This the Ethernet device interface parent, so use that instead.

Cc: Denis Orlov <denorl2009@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/rtl8169.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index ffc4ef238b0b..cbcd065980e5 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -216,6 +216,7 @@ static void __set_rx_mode(struct rtl8169_priv *priv)
 
 static void rtl8169_init_ring(struct rtl8169_priv *priv)
 {
+	struct eth_device *edev = &priv->edev;
 	int i;
 
 	priv->cur_rx = priv->cur_tx = 0;
@@ -223,13 +224,13 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	priv->tx_desc = dma_alloc_coherent(NUM_TX_DESC * sizeof(struct bufdesc),
 					   &priv->tx_desc_phys);
 	priv->tx_buf = malloc(NUM_TX_DESC * PKT_BUF_SIZE);
-	priv->tx_buf_phys = dma_map_single(&priv->edev.dev, priv->tx_buf,
+	priv->tx_buf_phys = dma_map_single(edev->parent, priv->tx_buf,
 					   NUM_TX_DESC * PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC * sizeof(struct bufdesc),
 					   &priv->rx_desc_phys);
 	priv->rx_buf = malloc(NUM_RX_DESC * PKT_BUF_SIZE);
-	priv->rx_buf_phys = dma_map_single(&priv->edev.dev, priv->rx_buf,
+	priv->rx_buf_phys = dma_map_single(edev->parent, priv->rx_buf,
 					   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
 
 	for (i = 0; i < NUM_RX_DESC; i++) {
@@ -479,13 +480,13 @@ static void rtl8169_eth_halt(struct eth_device *edev)
 
 	pci_clear_master(priv->pci_dev);
 
-	dma_unmap_single(&edev->dev, priv->tx_buf_phys, NUM_TX_DESC * PKT_BUF_SIZE,
+	dma_unmap_single(edev->parent, priv->tx_buf_phys, NUM_TX_DESC * PKT_BUF_SIZE,
 			 DMA_TO_DEVICE);
 	free(priv->tx_buf);
 	dma_free_coherent((void *)priv->tx_desc, priv->tx_desc_phys,
 			  NUM_TX_DESC * sizeof(struct bufdesc));
 
-	dma_unmap_single(&edev->dev, priv->rx_buf_phys, NUM_RX_DESC * PKT_BUF_SIZE,
+	dma_unmap_single(edev->parent, priv->rx_buf_phys, NUM_RX_DESC * PKT_BUF_SIZE,
 			 DMA_FROM_DEVICE);
 	free(priv->rx_buf);
 	dma_free_coherent((void *)priv->rx_desc, priv->rx_desc_phys,
-- 
2.30.2



