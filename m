Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFnqS-0005XS-LF
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 15:44:01 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9050FDC1113
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 16:55:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Mar 2013 16:39:40 +0100
Message-Id: <1363189180-6650-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] macb: fix gem_recv circular buffer handling
To: barebox@lists.infradead.org

as we use a full buffer no need to check the SOF
and reset the rx_tail

fix at the same time the gem detection so we can have the rx_buffer
allocated correctly according to the IP

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 0cfad05..2d4e373 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -172,7 +172,6 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 static int gem_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
-	unsigned int rx_tail = macb->rx_tail;
 	void *buffer;
 	int length;
 	u32 status;
@@ -181,20 +180,20 @@ static int gem_recv(struct eth_device *edev)
 
 	for (;;) {
 		barrier();
-		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
+		if (!(macb->rx_ring[macb->rx_tail].addr & MACB_BIT(RX_USED)))
 			return -1;
 
 		barrier();
-		status = macb->rx_ring[rx_tail].ctrl;
+		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
-		if (status & MACB_BIT(RX_SOF)) {
-			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
-			net_receive(buffer, length);
-			macb->rx_ring[rx_tail].ctrl &= ~MACB_BIT(RX_USED);
-			barrier();
-		}
-		rx_tail++;
+		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
+		net_receive(buffer, length);
+		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
+		barrier();
+
 		macb->rx_tail++;
+		if (macb->rx_tail >= macb->rx_ring_size)
+			macb->rx_tail = 0;
 	}
 
 	return 0;
@@ -619,11 +618,6 @@ static int macb_probe(struct device_d *dev)
 
 	macb->phy_flags = pdata->phy_flags;
 
-	macb_init_rx_buffer_size(macb, PKTSIZE);
-	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
-
 	macb->regs = dev_request_mem_region(dev, 0);
 
 	/*
@@ -638,11 +632,17 @@ static int macb_probe(struct device_d *dev)
 
 	clk_enable(macb->pclk);
 
+	macb->is_gem = read_is_gem(macb);
+
 	if (macb_is_gem(macb))
 		edev->recv = gem_recv;
 	else
 		edev->recv = macb_recv;
-	macb->is_gem = read_is_gem(macb);
+
+	macb_init_rx_buffer_size(macb, PKTSIZE);
+	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
 
 	macb_reset_hw(macb);
 	ncfgr = macb_mdc_clk_div(macb);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
