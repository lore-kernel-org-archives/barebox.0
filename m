Delivery-date: Wed, 29 Nov 2023 12:35:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Iqs-00DCOL-1n
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 12:35:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Iqs-0004U9-5o
	for lore@pengutronix.de; Wed, 29 Nov 2023 12:35:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zXE+el6rjT47BgrohEbL73Hx0awm17BpIYDQC2rvD1A=; b=mVF1iIBffbcTBpA5mKSQd/rTVs
	Hd97CEBpzmTs3CXeyy9Uvsh3/o1TQFM47yDAilDsASBePr4ZLfHCw0XsPc3QJmUMEX2n4wKp+fvvI
	OGMiXu1gzc59SEjdxYEwiI+S3679GgLITgr7xjVe74oXRXut28MrTK+aPb7vi55zPYL51+4lIsH2b
	Tk3aaCEoGv497T0n8OYQ1II9j7xpwMmPAwtrbB9DkaWZPMhOJS1WiJzRRN2Z/7vm8ujNsUDsHdB2d
	GbZv8YI836s62TpiwMilQOpWeIuGiZ0E0KJHoqdsfyKC4Jj8o9fmrtY8Liw1Spdsly04pmUOEL/Lg
	7Z7FOW2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Ipa-0088Uy-2t;
	Wed, 29 Nov 2023 11:34:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8IpV-0088TU-1V
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 11:34:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r8IpQ-00049f-Gj
	for barebox@lists.infradead.org; Wed, 29 Nov 2023 12:34:04 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 29 Nov 2023 12:33:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-v2023-08-0-topic-macb-v3-1-65ad6db834dc@pengutronix.de>
References: <20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de>
In-Reply-To: <20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=8786;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=5z5gezgHDFAOCkfqVz3PF6zS4EQoAThKskuveXyxXSQ=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTFZfa568LfvP10Aw2zukzjPvES/bFOZ2tVA2KVV7H8dBr
 cUFtRykLgxgXg6yYIkvk2kMam4U/63w5fp4BZg4rE8gQBi5OAZiI1n5GhlVNtZJhAbwbXl9cVXXrKR
 ML3/VlHkuP7Tl2qP7a4vX3VNgZ/unsrQmcHb9gmVLHvjvbPnuV+U78w2n1kf/mQSPrD/ltv9gB
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_033409_654262_9FBA442B 
X-CRM114-Status: GOOD (  15.54  )
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
Subject: [PATCH v3 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rx_buffer gets dma_alloc'ed but is never dma_map'ed and therefor not
flushed before it is initially used.

Map the rx_buffer when the macb is initialized and unmap it on ether_halt.

While at it, cleanup the dma_alloc_coherent rx_ring/tx_ring, too.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/macb.c | 85 +++++++++++++++++++++++++++++++++++++-----------------
 1 file changed, 58 insertions(+), 27 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 260c1e806a..d6708b190c 100644
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
@@ -105,6 +108,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	int ret = 0;
 	uint64_t start;
 	unsigned int tx_head = macb->tx_head;
+	dma_addr_t packet_dma;
 
 	ctrl = MACB_BF(TX_FRMLEN, length);
 	ctrl |= MACB_BIT(TX_LAST);
@@ -116,10 +120,14 @@ static int macb_send(struct eth_device *edev, void *packet,
 		macb->tx_head++;
 	}
 
+	packet_dma = dma_map_single(macb->dev, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(macb->dev, packet_dma))
+		return -EFAULT;
+
 	macb->tx_ring[tx_head].ctrl = ctrl;
-	macb->tx_ring[tx_head].addr = (ulong)packet;
+	macb->tx_ring[tx_head].addr = packet_dma;
 	barrier();
-	dma_sync_single_for_device(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
+
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	start = get_time_ns();
@@ -132,7 +140,8 @@ static int macb_send(struct eth_device *edev, void *packet,
 			break;
 		}
 	} while (!is_timeout(start, 100 * MSECOND));
-	dma_sync_single_for_cpu(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
+
+	dma_unmap_single(macb->dev, packet_dma, length, DMA_TO_DEVICE);
 
 	if (ctrl & MACB_BIT(TX_UNDERRUN))
 		dev_err(macb->dev, "TX underrun\n");
@@ -169,7 +178,6 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 static int gem_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
-	void *buffer;
 	int length;
 	u32 status;
 
@@ -181,14 +189,15 @@ static int gem_recv(struct eth_device *edev)
 		barrier();
 		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
-		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
-		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
-					DMA_FROM_DEVICE);
-		net_receive(edev, buffer, length);
-		dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
-					   DMA_FROM_DEVICE);
 		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
 		barrier();
+		dma_sync_single_for_cpu(macb->dev,
+					macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
+					length,	DMA_FROM_DEVICE);
+		net_receive(edev, macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail, length);
+		dma_sync_single_for_device(macb->dev,
+					   macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
+					   length, DMA_FROM_DEVICE);
 
 		macb->rx_tail++;
 		if (macb->rx_tail >= macb->rx_ring_size)
@@ -202,7 +211,6 @@ static int macb_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
 	unsigned int rx_tail = macb->rx_tail;
-	void *buffer;
 	int length;
 	int wrapped = 0;
 	u32 status;
@@ -221,7 +229,6 @@ static int macb_recv(struct eth_device *edev)
 		}
 
 		if (status & MACB_BIT(RX_EOF)) {
-			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
 			length = MACB_BFEXT(RX_FRMLEN, status);
 			if (wrapped) {
 				unsigned int headlen, taillen;
@@ -229,23 +236,31 @@ static int macb_recv(struct eth_device *edev)
 				headlen = macb->rx_buffer_size * (macb->rx_ring_size
 						 - macb->rx_tail);
 				taillen = length - headlen;
-				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer,
+				dma_sync_single_for_cpu(macb->dev,
+							macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
 							headlen, DMA_FROM_DEVICE);
-				memcpy(macb->rx_packet_buf, buffer, headlen);
-				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer,
+				memcpy(macb->rx_packet_buf,
+				       macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail,
+				       headlen);
+				dma_sync_single_for_cpu(macb->dev, macb->rx_buffer_phys,
 							taillen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
-				dma_sync_single_for_device(macb->dev, (unsigned long)buffer,
-							headlen, DMA_FROM_DEVICE);
-				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer,
+				dma_sync_single_for_device(macb->dev,
+							   macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
+							   headlen, DMA_FROM_DEVICE);
+				dma_sync_single_for_device(macb->dev, macb->rx_buffer_phys,
 							taillen, DMA_FROM_DEVICE);
 				net_receive(edev, macb->rx_packet_buf, length);
 			} else {
-				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
-							DMA_FROM_DEVICE);
-				net_receive(edev, buffer, length);
-				dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
+				dma_sync_single_for_cpu(macb->dev,
+							macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
+							length,
 							DMA_FROM_DEVICE);
+				net_receive(edev, macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail, length);
+				dma_sync_single_for_device(macb->dev,
+							   macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
+							   length,
+							   DMA_FROM_DEVICE);
 			}
 			barrier();
 			if (++rx_tail >= macb->rx_ring_size)
@@ -377,7 +392,7 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 	return 0;
 }
 
-static void macb_init(struct macb_device *macb)
+static int macb_init(struct macb_device *macb)
 {
 	unsigned long paddr, val = 0;
 	int i;
@@ -386,6 +401,11 @@ static void macb_init(struct macb_device *macb)
 	 * macb_halt should have been called at some point before now,
 	 * so we'll assume the controller is idle.
 	 */
+	macb->rx_buffer_phys = dma_map_single(macb->dev, macb->rx_buffer,
+					      macb->rx_buffer_size * macb->rx_ring_size,
+					      DMA_FROM_DEVICE);
+	if (dma_mapping_error(macb->dev, macb->rx_buffer_phys))
+		return -EFAULT;
 
 	/* initialize DMA descriptors */
 	paddr = (ulong)macb->rx_buffer;
@@ -442,6 +462,7 @@ static void macb_init(struct macb_device *macb)
 
 	macb_or_gem_writel(macb, USRIO, val);
 
+	return 0;
 }
 
 static void macb_halt(struct eth_device *edev)
@@ -460,6 +481,13 @@ static void macb_halt(struct eth_device *edev)
 
 	/* Disable TX and RX, and clear statistics */
 	macb_writel(macb, NCR, MACB_BIT(CLRSTAT));
+
+	dma_unmap_single(macb->dev, macb->rx_buffer_phys,
+			 macb->rx_buffer_size * macb->rx_ring_size,
+			 DMA_FROM_DEVICE);
+	free(macb->rx_buffer);
+	dma_free_coherent((void *)macb->rx_ring, macb->rx_ring_phys, RX_RING_BYTES(macb));
+	dma_free_coherent((void *)macb->tx_ring, macb->tx_ring_phys, TX_RING_BYTES);
 }
 
 static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
@@ -780,6 +808,7 @@ static int macb_probe(struct device *dev)
 	const char *pclk_name, *hclk_name;
 	const struct macb_config *config = NULL;
 	u32 ncfgr;
+	int ret;
 
 	macb = xzalloc(sizeof(*macb));
 	edev = &macb->netdev;
@@ -877,7 +906,7 @@ static int macb_probe(struct device *dev)
 		clk_enable(macb->rxclk);
 
 	if (config) {
-		int ret = config->txclk_init(dev, &macb->txclk);
+		ret = config->txclk_init(dev, &macb->txclk);
 		if (ret)
 			return ret;
 	}
@@ -891,8 +920,8 @@ static int macb_probe(struct device *dev)
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
 	macb->rx_buffer = dma_alloc(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_BROKEN);
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), &macb->rx_ring_phys);
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, &macb->tx_ring_phys);
 
 	if (macb->is_gem)
 		macb->gem_q1_descs = dma_alloc_coherent(GEM_Q1_DESC_BYTES,
@@ -907,7 +936,9 @@ static int macb_probe(struct device *dev)
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



