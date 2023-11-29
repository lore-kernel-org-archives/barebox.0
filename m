Delivery-date: Wed, 29 Nov 2023 10:56:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8HIi-00D5oB-0O
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 10:56:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8HIh-0006Q8-QS
	for lore@pengutronix.de; Wed, 29 Nov 2023 10:56:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rpbIVVK0qQDZcwjKuYIxjTsD/42HxedRaeq2VJFHk5g=; b=3vPDPQxlk/vfOMG/RJgCHw11a2
	PnwNreddkxRQaj+SembmfVHcJs5HUnGdwRFDTdeZzVtFtO7DGHFZsdfug/fxeEFHrHGyuKsJHCJuL
	ubuOx+ujSIi6QwJiDzyzpa1IDjrDMEMy6p+qnUzneA9fxLc9GquEODTdgX1b5BPgZYQt+2DScjNjI
	H+vlZ9v8GR3hFcb85JntUBCY5aZ4lJTWr7ahSlJZzwSFtU49u21uhPoiNRbGzoFrd20v2Qxjxvpyu
	gI+mJ5yshAmsB2n/kgEwfmQiUUWv2Waa6++JiIUSO+aqjKIAAwkNUHYvMamF2CfXMt2zQqvDJ8lHh
	TA8AyLCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HHR-007jiR-2u;
	Wed, 29 Nov 2023 09:54:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HHL-007jgA-2N
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 09:54:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r8HHI-00066s-8r
	for barebox@lists.infradead.org; Wed, 29 Nov 2023 10:54:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 29 Nov 2023 10:54:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-v2023-08-0-topic-macb-v2-1-4dc2cb4d5d25@pengutronix.de>
References: <20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de>
In-Reply-To: <20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7548;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=V7pktyZZJ5138nZwMXrEO+oVyZ9CT9deeXeHPgthz/U=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTuWK8tO58f8fx902+YEzM+rU3lKKP8JpY1Bg/OLp1dseq
 zCkrOkpZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBESrgYGbZyvencrO586fWUFnmLp1
 3W/f0nHzV7r6lX1J+6/mRc2UuG/26PQtJPTt7Rk6FyNV7+o8rPqpU6u02nnL4pmLjlkaWVOi8A
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_015447_928397_6F696F90 
X-CRM114-Status: GOOD (  15.06  )
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
Subject: [PATCH v2 1/2] net: macb: fix dma_alloc for rx_buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rx_buffer gets dma_alloc'ed but is never dma_map'ed and therefor not
flushed before it is initially used.

Map the rx_buffer when the macb is initialized and unmap it on ether_halt.

While at it, cleanup the dma_alloc_coherent rx_ring/tx_ring, too.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/macb.c | 73 ++++++++++++++++++++++++++++++++++++------------------
 1 file changed, 49 insertions(+), 24 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 260c1e806a..55498c9e84 100644
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
@@ -169,7 +172,6 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 static int gem_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
-	void *buffer;
 	int length;
 	u32 status;
 
@@ -181,14 +183,15 @@ static int gem_recv(struct eth_device *edev)
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
@@ -202,7 +205,6 @@ static int macb_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
 	unsigned int rx_tail = macb->rx_tail;
-	void *buffer;
 	int length;
 	int wrapped = 0;
 	u32 status;
@@ -221,7 +223,6 @@ static int macb_recv(struct eth_device *edev)
 		}
 
 		if (status & MACB_BIT(RX_EOF)) {
-			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
 			length = MACB_BFEXT(RX_FRMLEN, status);
 			if (wrapped) {
 				unsigned int headlen, taillen;
@@ -229,23 +230,31 @@ static int macb_recv(struct eth_device *edev)
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
@@ -377,7 +386,7 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 	return 0;
 }
 
-static void macb_init(struct macb_device *macb)
+static int macb_init(struct macb_device *macb)
 {
 	unsigned long paddr, val = 0;
 	int i;
@@ -386,6 +395,11 @@ static void macb_init(struct macb_device *macb)
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
@@ -442,6 +456,7 @@ static void macb_init(struct macb_device *macb)
 
 	macb_or_gem_writel(macb, USRIO, val);
 
+	return 0;
 }
 
 static void macb_halt(struct eth_device *edev)
@@ -460,6 +475,13 @@ static void macb_halt(struct eth_device *edev)
 
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
@@ -780,6 +802,7 @@ static int macb_probe(struct device *dev)
 	const char *pclk_name, *hclk_name;
 	const struct macb_config *config = NULL;
 	u32 ncfgr;
+	int ret;
 
 	macb = xzalloc(sizeof(*macb));
 	edev = &macb->netdev;
@@ -877,7 +900,7 @@ static int macb_probe(struct device *dev)
 		clk_enable(macb->rxclk);
 
 	if (config) {
-		int ret = config->txclk_init(dev, &macb->txclk);
+		ret = config->txclk_init(dev, &macb->txclk);
 		if (ret)
 			return ret;
 	}
@@ -891,8 +914,8 @@ static int macb_probe(struct device *dev)
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
 	macb->rx_buffer = dma_alloc(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_BROKEN);
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), &macb->rx_ring_phys);
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, &macb->tx_ring_phys);
 
 	if (macb->is_gem)
 		macb->gem_q1_descs = dma_alloc_coherent(GEM_Q1_DESC_BYTES,
@@ -907,7 +930,9 @@ static int macb_probe(struct device *dev)
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



