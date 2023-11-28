Delivery-date: Tue, 28 Nov 2023 17:31:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r80zb-00CFob-2M
	for lore@lore.pengutronix.de;
	Tue, 28 Nov 2023 17:31:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r80zb-00011W-KO
	for lore@pengutronix.de; Tue, 28 Nov 2023 17:31:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0os5KhnfABa15n/YonQusnrq2meAlLRPGlTrxTkGiW8=; b=LjWbgQYPtxowupNh51wCBjTD2I
	AO3fLXJlQOfcXqC7TehBndo65vPzZ2mgY90qd7wSBv76fCx7q4KvD8Mqq9ACfrDD4W+BNga9rK7U2
	VjWxWz+XjOc5vd9UvhKpTtNqiIbdf+Hb74edxfAWq1gu+r/bAy0yPAaHK6vh8iu+x13a+sYHcnDo2
	1TY4SPGip7QRwPu+IppYZKtQUkIfE6t/TR8oWv9CMT1RCsTTwiEhpg81zOzSrtf5gITFf8FZubcPM
	jCrw34pVCcbkMb4Vyp8aJx1WKOCxh5D3RDHW9Uf7UOqPR05Wg700aKjkxe7P0opvzkrzBUTHw9SHs
	BFR9og8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r80y3-005od2-0E;
	Tue, 28 Nov 2023 16:29:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r80xy-005ob2-1a
	for barebox@lists.infradead.org;
	Tue, 28 Nov 2023 16:29:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r80xw-0000W2-0d
	for barebox@lists.infradead.org; Tue, 28 Nov 2023 17:29:40 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 28 Nov 2023 17:29:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231128-v2023-08-0-topic-macb-v1-2-9faff73bc990@pengutronix.de>
References: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
In-Reply-To: <20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5470;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=qNQ7X1RHtCO/ayoF0in1A3KHry5fmseD9ibbhEcqB4w=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTRPMPWLlOZt5VOLFVP94hMcU/4kj/6Yt/f8dm8rw+Mcf2
 sml6RykLgxgXg6yYIkvk2kMam4U/63w5fp4BZg4rE8gQBi5OAZhIoBvDP92XD9c27I+6OEXxR+AH43
 9V1Re/uL//ynrJUf7SO8Nn29wZ/rtXbH5wortb7GOHte6+vFPZBw95xQtN4LukLPZ6pZZyHQMA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_082942_529737_2E55CEEA 
X-CRM114-Status: GOOD (  12.61  )
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
Subject: [PATCH 2/2] net: macb: convert to volatile accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of directly reading from memory addresses and inserting
sw barriers to be sure that the compiler will not move loads/stores
behind this point, just use proper volatile writel/readl accesses.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/macb.c | 53 ++++++++++++++++++++++-------------------------------
 1 file changed, 22 insertions(+), 31 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 92f78f7253..c9a7e395d6 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -119,17 +119,15 @@ static int macb_send(struct eth_device *edev, void *packet,
 		macb->tx_head++;
 	}
 
-	macb->tx_ring[tx_head].ctrl = ctrl;
-	macb->tx_ring[tx_head].addr = (ulong)packet;
-	barrier();
+	writel(ctrl, &macb->tx_ring[tx_head].ctrl);
+	writel((ulong)packet, &macb->tx_ring[tx_head].addr);
 	dma_sync_single_for_device(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	start = get_time_ns();
 	ret = -ETIMEDOUT;
 	do {
-		barrier();
-		ctrl = macb->tx_ring[0].ctrl;
+		ctrl = readl(&macb->tx_ring[0].ctrl);
 		if (ctrl & MACB_BIT(TX_USED)) {
 			ret = 0;
 			break;
@@ -154,18 +152,17 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 
 	i = macb->rx_tail;
 	while (i > new_tail) {
-		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
+		clrbits_le32(&macb->rx_ring[i].addr, MACB_BIT(RX_USED));
 		i++;
 		if (i > macb->rx_ring_size)
 			i = 0;
 	}
 
 	while (i < new_tail) {
-		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
+		clrbits_le32(&macb->rx_ring[i].addr, MACB_BIT(RX_USED));
 		i++;
 	}
 
-	barrier();
 	macb->rx_tail = new_tail;
 }
 
@@ -177,12 +174,10 @@ static int gem_recv(struct eth_device *edev)
 	u32 status;
 
 	for (;;) {
-		barrier();
-		if (!(macb->rx_ring[macb->rx_tail].addr & MACB_BIT(RX_USED)))
+		if (!(readl(&macb->rx_ring[macb->rx_tail].addr) & MACB_BIT(RX_USED)))
 			return -1;
 
-		barrier();
-		status = macb->rx_ring[macb->rx_tail].ctrl;
+		status = readl(&macb->rx_ring[macb->rx_tail].ctrl);
 		length = MACB_BFEXT(RX_FRMLEN, status);
 		buffer = (void *)macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail;
 		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
@@ -190,8 +185,7 @@ static int gem_recv(struct eth_device *edev)
 		net_receive(edev, buffer, length);
 		dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
 					   DMA_FROM_DEVICE);
-		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
-		barrier();
+		clrbits_le32(&macb->rx_ring[macb->rx_tail].addr, MACB_BIT(RX_USED));
 
 		macb->rx_tail++;
 		if (macb->rx_tail >= macb->rx_ring_size)
@@ -211,12 +205,10 @@ static int macb_recv(struct eth_device *edev)
 	u32 status;
 
 	for (;;) {
-		barrier();
-		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
+		if (!(readl(&macb->rx_ring[rx_tail].addr) & MACB_BIT(RX_USED)))
 			return -1;
 
-		barrier();
-		status = macb->rx_ring[rx_tail].ctrl;
+		status = readl(&macb->rx_ring[rx_tail].ctrl);
 		if (status & MACB_BIT(RX_SOF)) {
 			if (rx_tail != macb->rx_tail)
 				reclaim_rx_buffers(macb, rx_tail);
@@ -250,7 +242,6 @@ static int macb_recv(struct eth_device *edev)
 				dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
 							DMA_FROM_DEVICE);
 			}
-			barrier();
 			if (++rx_tail >= macb->rx_ring_size)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
@@ -370,9 +361,9 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 		if (queue_mask & (1 << i))
 			num_queues++;
 
-	macb->gem_q1_descs[0].addr = 0;
-	macb->gem_q1_descs[0].ctrl = MACB_BIT(TX_WRAP) |
-		MACB_BIT(TX_LAST) | MACB_BIT(TX_USED);
+	writel(0, &macb->gem_q1_descs[0].addr);
+	setbits_le32(&macb->gem_q1_descs[0].ctrl,
+		     MACB_BIT(TX_WRAP) | MACB_BIT(TX_LAST) | MACB_BIT(TX_USED));
 
 	for (i = 1; i < num_queues; i++)
 		gem_writel_queue_TBQP(macb, (ulong)macb->gem_q1_descs, i - 1);
@@ -398,17 +389,17 @@ static int macb_init(struct macb_device *macb)
 	/* initialize DMA descriptors */
 	paddr = (ulong)macb->rx_buffer;
 	for (i = 0; i < macb->rx_ring_size; i++) {
-		macb->rx_ring[i].addr = paddr;
-		macb->rx_ring[i].ctrl = 0;
+		writel(paddr, &macb->rx_ring[i].addr);
+		writel(0, &macb->rx_ring[i].ctrl);
 		paddr += macb->rx_buffer_size;
 	}
-	macb->rx_ring[macb->rx_ring_size - 1].addr |= MACB_BIT(RX_WRAP);
+	setbits_le32(&macb->rx_ring[macb->rx_ring_size - 1].addr, MACB_BIT(RX_WRAP));
 
 	for (i = 0; i < TX_RING_SIZE; i++) {
-		macb->tx_ring[i].addr = 0;
-		macb->tx_ring[i].ctrl = MACB_BIT(TX_USED);
+		writel(0, &macb->tx_ring[i].addr);
+		writel(MACB_BIT(TX_USED), &macb->tx_ring[i].ctrl);
 	}
-	macb->tx_ring[TX_RING_SIZE - 1].addr |= MACB_BIT(TX_WRAP);
+	writel(MACB_BIT(TX_WRAP), &macb->tx_ring[TX_RING_SIZE - 1].addr);
 
 	macb->rx_tail = macb->tx_head = 0;
 
@@ -421,9 +412,9 @@ static int macb_init(struct macb_device *macb)
 		gmac_init_dummy_tx_queues(macb);
 
 		/* Disable the second priority rx queue */
-		macb->gem_q1_descs[1].addr = MACB_BIT(RX_USED) |
-				MACB_BIT(RX_WRAP);
-		macb->gem_q1_descs[1].ctrl = 0;
+		setbits_le32(&macb->gem_q1_descs[1].addr,
+			     MACB_BIT(RX_USED) | MACB_BIT(RX_WRAP));
+		writel(0, &macb->gem_q1_descs[1].ctrl);
 
 		gem_writel(macb, RQ1, (ulong)&macb->gem_q1_descs[1]);
 	}

-- 
2.40.1



