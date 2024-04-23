Delivery-date: Tue, 23 Apr 2024 19:37:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzK4k-00D3me-2g
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 19:37:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzK4k-0004Ej-80
	for lore@pengutronix.de; Tue, 23 Apr 2024 19:37:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Agg1Oy447Vkdn6MFrWO4i9kPYRENv4uJCtyEdaM9G3g=; b=ZuCajjaR1WVW88PDrpL2mfmKSn
	YTXQrL2w/12Uh8s/3UqVOikxgHRJ0zV0BnhXTTnLinugnLTFJaknb830y/NbMYyc7q9zELWXKDtW9
	qTWA2A1a80ntdPbPimcLkvpax+8l4fNe/Kkoi6hLdEkP5Vfxdhj3ADpO4lnY3EBsYStHSlpfZDDwB
	IlV5E/E54WiEUzIXaIpwC5fP30X0qpgqaaELbdsqLTq6U/ccknn7HNYC4IgbAwdXjgZe163j0UU/p
	nwQDDNWDpkFEKr0a32zAZG3U3qHXcSXE9lpxrIHtLqkzr1en7SZygUyV3SwrBaKwPS6zPVuDY5C+L
	q13VS8+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzK4G-00000000zNF-206c;
	Tue, 23 Apr 2024 17:36:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzK4D-00000000zMT-2vOF
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 17:36:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzK4A-0003oM-U1; Tue, 23 Apr 2024 19:36:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzK4A-00Dw45-HX; Tue, 23 Apr 2024 19:36:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzK4A-009eK6-1T;
	Tue, 23 Apr 2024 19:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2024 19:36:25 +0200
Message-Id: <20240423173625.2299942-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_103629_763167_121DC48B 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: fsl-fman: remove superfluous zeroing of new dma_alloc_coherent buf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma_alloc_coherent() already takes care to zero the memory, so there's
no need to zero it explicitly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fsl-fman.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index bdb23598153f..5528ecccc950 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -613,13 +613,10 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 	rx_bd_ring_base = dma_alloc_coherent(sizeof(struct fm_port_bd)
 			* RX_BD_RING_SIZE, DMA_ADDRESS_BROKEN);
 	if (!rx_bd_ring_base)
 		return -ENOMEM;
 
-	memset(rx_bd_ring_base, 0, sizeof(struct fm_port_bd)
-			* RX_BD_RING_SIZE);
-
 	/* alloc Rx buffer from main memory */
 	rx_buf_pool = dma_zalloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
 
 	/* save them to fm_eth */
 	fm_eth->rx_bd_ring = rx_bd_ring_base;
@@ -694,12 +691,10 @@ static int fm_eth_tx_port_parameter_init(struct fm_eth *fm_eth)
 	tx_bd_ring_base = dma_alloc_coherent(sizeof(struct fm_port_bd)
 			* TX_BD_RING_SIZE, DMA_ADDRESS_BROKEN);
 	if (!tx_bd_ring_base)
 		return -ENOMEM;
 
-	memset(tx_bd_ring_base, 0, sizeof(struct fm_port_bd)
-			* TX_BD_RING_SIZE);
 	/* save it to fm_eth */
 	fm_eth->tx_bd_ring = tx_bd_ring_base;
 	fm_eth->cur_txbd_idx = 0;
 
 	/* init Tx BDs ring */
-- 
2.39.2



