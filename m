Delivery-date: Wed, 29 Nov 2023 10:56:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8HIh-00D5o4-0y
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 10:56:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8HIh-0006Pp-7N
	for lore@pengutronix.de; Wed, 29 Nov 2023 10:56:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qcu55w2+YFM/X/dDnDdV+39PL4NMYjN1nH2fRM1iSr8=; b=EJnBqFMgnLZCg5xcc0h+lq1H5W
	pahviEcZqaPEslNTfJ4oKyF+l8gYKio+6mYZQmcWQnlCCF4iTfH45YIw8coRXCy+OYm/aV38XXEl3
	a499jxVF6xQs2aehzPtFyK93+5NwewNKQbnMnyxaSfaPmrI1gpbaHzr6c3Q6lk0/uwvZJ6CVXcVZD
	Wdb4Gbejj/uQGd1S7zXEJLgBaseyi66o4izdC2LN3rqs9l3kGo8N3rwk4vQl8mR/1Cb3pTNzlK+da
	i4YsCimXVHCi8FyBaho3Y5Kku2WdXhS/rdN76HBYxznPQmClRK3Tr5EkOcUM/y+2DtgQEOVAyqpZj
	P3Hk1ZyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HHP-007jhq-0Z;
	Wed, 29 Nov 2023 09:54:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HHL-007jgC-2M
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 09:54:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r8HHI-00066s-Dl
	for barebox@lists.infradead.org; Wed, 29 Nov 2023 10:54:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 29 Nov 2023 10:54:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-v2023-08-0-topic-macb-v2-2-4dc2cb4d5d25@pengutronix.de>
References: <20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de>
In-Reply-To: <20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5399;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=yHgYljTmY2kkj8/NDCrsuYdTRySmg5XPOHCaFHHws5I=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFLTueJ3nWDqPL+skO/N2e+fvzBHzP9asfqCoU9bzOv30nGu
 K03edZSyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICJvK1mZDjmW7GRLZP/ecTOZTlZ3z
 N7v/4rl5tmXpqeZ/zt228r3zkM/6P7NgrF72064d13rjhJYkZV0sKIKwYO+v3tog98ug5tYQcA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_015447_777829_3F9FE600 
X-CRM114-Status: GOOD (  12.90  )
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
Subject: [PATCH v2 2/2] net: macb: convert to volatile accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of directly reading from memory addresses and inserting
sw barriers to be sure that the compiler will not move loads/stores
behind this point, just use proper volatile writel/readl accesses.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/macb.c | 52 +++++++++++++++++++++-------------------------------
 1 file changed, 21 insertions(+), 31 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 55498c9e84..8a2d898d10 100644
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
 
@@ -176,15 +173,11 @@ static int gem_recv(struct eth_device *edev)
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
-		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
-		barrier();
 		dma_sync_single_for_cpu(macb->dev,
 					macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
 					length,	DMA_FROM_DEVICE);
@@ -192,6 +185,7 @@ static int gem_recv(struct eth_device *edev)
 		dma_sync_single_for_device(macb->dev,
 					   macb->rx_buffer_phys + macb->rx_buffer_size * macb->rx_tail,
 					   length, DMA_FROM_DEVICE);
+		clrbits_le32(&macb->rx_ring[macb->rx_tail].addr, MACB_BIT(RX_USED));
 
 		macb->rx_tail++;
 		if (macb->rx_tail >= macb->rx_ring_size)
@@ -210,12 +204,10 @@ static int macb_recv(struct eth_device *edev)
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
@@ -256,7 +248,6 @@ static int macb_recv(struct eth_device *edev)
 							   length,
 							   DMA_FROM_DEVICE);
 			}
-			barrier();
 			if (++rx_tail >= macb->rx_ring_size)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
@@ -376,9 +367,9 @@ static int gmac_init_dummy_tx_queues(struct macb_device *macb)
 		if (queue_mask & (1 << i))
 			num_queues++;
 
-	macb->gem_q1_descs[0].addr = 0;
-	macb->gem_q1_descs[0].ctrl = MACB_BIT(TX_WRAP) |
-		MACB_BIT(TX_LAST) | MACB_BIT(TX_USED);
+	writel(0, &macb->gem_q1_descs[0].addr);
+	writel(MACB_BIT(TX_WRAP) | MACB_BIT(TX_LAST) | MACB_BIT(TX_USED),
+	       &macb->gem_q1_descs[0].ctrl);
 
 	for (i = 1; i < num_queues; i++)
 		gem_writel_queue_TBQP(macb, (ulong)macb->gem_q1_descs, i - 1);
@@ -404,17 +395,17 @@ static int macb_init(struct macb_device *macb)
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
+	setbits_le32(&macb->tx_ring[TX_RING_SIZE - 1].addr, MACB_BIT(TX_WRAP));
 
 	macb->rx_tail = macb->tx_head = 0;
 
@@ -427,9 +418,8 @@ static int macb_init(struct macb_device *macb)
 		gmac_init_dummy_tx_queues(macb);
 
 		/* Disable the second priority rx queue */
-		macb->gem_q1_descs[1].addr = MACB_BIT(RX_USED) |
-				MACB_BIT(RX_WRAP);
-		macb->gem_q1_descs[1].ctrl = 0;
+		writel(MACB_BIT(RX_USED) | MACB_BIT(RX_WRAP), &macb->gem_q1_descs[1].addr);
+		writel(0, &macb->gem_q1_descs[1].ctrl);
 
 		gem_writel(macb, RQ1, (ulong)&macb->gem_q1_descs[1]);
 	}

-- 
2.40.1



