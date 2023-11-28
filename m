Delivery-date: Tue, 28 Nov 2023 17:31:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r80zM-00CFmo-0A
	for lore@lore.pengutronix.de;
	Tue, 28 Nov 2023 17:31:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r80zL-0000ui-V5
	for lore@pengutronix.de; Tue, 28 Nov 2023 17:31:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UuaeSLUrVcHgOkhAI57WzlT4TyROGoBwjk2/lQvof3U=; b=cPBvb7VBGxZ/du0ZCGOeDhaRUa
	nzK9y52p1iejG46l0F/QmHHFOyxj88EDwg5knlzh6CbFeOQd3DBkO+R19V44ff5wD5cfi+78F3sMQ
	DRwMiy32gVfqURwWSAjArUzO65Hsd2yO4VCECGt51l+bYvJPEA+cWeW/7bYSMsMl/YjgBbQgq64S0
	ipYxG8kroNJMFck/TQ1QP6ljD6xws9kM2vK6FDaVPtGjK5nKRH+qvv5zp/ZD1f/tsq43vLvoYziGF
	sVRmXtq6fCtCN8m3tpoGOfMrrW8jgtK9S2LTp2jFW/KbhtbN7PnB4C+h5GE+mFxVEC80SKZLDZ2BT
	nFKoN5/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r80y2-005ocs-1N;
	Tue, 28 Nov 2023 16:29:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r80xy-005oaz-1D
	for barebox@lists.infradead.org;
	Tue, 28 Nov 2023 16:29:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r80xv-0000W2-RC
	for barebox@lists.infradead.org; Tue, 28 Nov 2023 17:29:39 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 28 Nov 2023 17:29:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231128-v2023-08-0-topic-macb-v1-1-9faff73bc990@pengutronix.de>
References: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
In-Reply-To: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5453;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=x4XiDXWGZZffgBxxopbASr/xYp5DYE3qU1f5C5IF5XI=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTRLOP3ru1a9LzovI/OxqFzZjtN851dittyTBiCL1htm+3
 /DytjlIWBjEuBlkxRZbItYc0Ngt/1vly/DwDzBxWJpAhDFycAjARFndGhmtN4lHGJjf88tffa/2dLG
 lptohBu0LTe/usAJdLGX5b5jIy3Kpq1+pcMfPISrGlW73c7hyY/WnSs+2zriew/zq9ZdlOTXYA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_082942_413703_0CAED6AA 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rx_buffer gets dma_alloc'ed but is never dma_map'ed and therefor not
flushed before it is initially used.

Map the rx_buffer when the macb is initialized and unmap it on ether_halt.

While at it, cleanup the dma_alloc_coherent rx_ring/tx_ring, too.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/macb.c | 37 ++++++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 260c1e806a..92f78f7253 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -63,10 +63,13 @@ struct macb_device {
 	unsigned int		tx_head;
 
 	void			*rx_buffer;
+	dma_addr_t		rx_buffer_phys;
 	void			*tx_buffer;
 	void			*rx_packet_buf;
 	struct macb_dma_desc	*rx_ring;
+	dma_addr_t		rx_ring_phys;
 	struct macb_dma_desc	*tx_ring;
+	dma_addr_t		tx_ring_phys;
 	struct macb_dma_desc	*gem_q1_descs;
 
 	int			rx_buffer_size;
@@ -181,7 +184,7 @@ static int gem_recv(struct eth_device *edev)
 		barrier();
 		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
-		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
+		buffer = (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail;
 		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
 					DMA_FROM_DEVICE);
 		net_receive(edev, buffer, length);
@@ -221,7 +224,7 @@ static int macb_recv(struct eth_device *edev)
 		}
 
 		if (status & MACB_BIT(RX_EOF)) {
-			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
+			buffer = (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail;
 			length = MACB_BFEXT(RX_FRMLEN, status);
 			if (wrapped) {
 				unsigned int headlen, taillen;
@@ -232,12 +235,12 @@ static int macb_recv(struct eth_device *edev)
 				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf, buffer, headlen);
-				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer_phys,
 							taillen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
 				dma_sync_single_for_device(macb->dev, (unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
-				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer,
+				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer_phys,
 							taillen, DMA_FROM_DEVICE);
 				net_receive(edev, macb->rx_packet_buf, length);
 			} else {
@@ -377,7 +380,7 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 	return 0;
 }
 
-static void macb_init(struct macb_device *macb)
+static int macb_init(struct macb_device *macb)
 {
 	unsigned long paddr, val = 0;
 	int i;
@@ -386,6 +389,11 @@ static void macb_init(struct macb_device *macb)
 	 * macb_halt should have been called at some point before now,
 	 * so we'll assume the controller is idle.
 	 */
+	macb->rx_buffer_phys = dma_map_single(macb->dev, macb->rx_buffer,
+					      macb->rx_buffer_size * macb->rx_ring_size,
+					      DMA_TO_DEVICE);
+	if (dma_mapping_error(macb->dev, macb->rx_buffer_phys))
+		return -EFAULT;
 
 	/* initialize DMA descriptors */
 	paddr = (ulong)macb->rx_buffer;
@@ -442,6 +450,7 @@ static void macb_init(struct macb_device *macb)
 
 	macb_or_gem_writel(macb, USRIO, val);
 
+	return 0;
 }
 
 static void macb_halt(struct eth_device *edev)
@@ -460,6 +469,13 @@ static void macb_halt(struct eth_device *edev)
 
 	/* Disable TX and RX, and clear statistics */
 	macb_writel(macb, NCR, MACB_BIT(CLRSTAT));
+
+	dma_unmap_single(macb->dev, macb->rx_buffer_phys,
+			 macb->rx_buffer_size * macb->rx_ring_size,
+			 DMA_TO_DEVICE);
+	free(macb->rx_buffer);
+	dma_free_coherent((void *)macb->rx_ring, macb->rx_ring_phys, RX_RING_BYTES(macb));
+	dma_free_coherent((void *)macb->tx_ring, macb->tx_ring_phys, TX_RING_BYTES);
 }
 
 static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
@@ -780,6 +796,7 @@ static int macb_probe(struct device *dev)
 	const char *pclk_name, *hclk_name;
 	const struct macb_config *config = NULL;
 	u32 ncfgr;
+	int ret;
 
 	macb = xzalloc(sizeof(*macb));
 	edev = &macb->netdev;
@@ -877,7 +894,7 @@ static int macb_probe(struct device *dev)
 		clk_enable(macb->rxclk);
 
 	if (config) {
-		int ret = config->txclk_init(dev, &macb->txclk);
+		ret = config->txclk_init(dev, &macb->txclk);
 		if (ret)
 			return ret;
 	}
@@ -891,8 +908,8 @@ static int macb_probe(struct device *dev)
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
 	macb->rx_buffer = dma_alloc(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_BROKEN);
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), &macb->rx_ring_phys);
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, &macb->tx_ring_phys);
 
 	if (macb->is_gem)
 		macb->gem_q1_descs = dma_alloc_coherent(GEM_Q1_DESC_BYTES,
@@ -907,7 +924,9 @@ static int macb_probe(struct device *dev)
 	ncfgr |= macb_dbw(macb);
 	macb_writel(macb, NCFGR, ncfgr);
 
-	macb_init(macb);
+	ret = macb_init(macb);
+	if (ret)
+		return ret;
 
 	mdiobus_register(&macb->miibus);
 	eth_register(edev);

-- 
2.40.1



