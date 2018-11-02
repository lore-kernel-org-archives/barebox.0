Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gITrA-00051M-TU
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 07:27:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 08:26:29 +0100
Message-Id: <20181102072632.10654-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] net: macb: no need for coherent memory for receive buffer
To: Barebox List <barebox@lists.infradead.org>

The receive buffers are properly synchronized with dma_sync_*, no need
to use coherent memory for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 7721bcb56a..8575c838a8 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -697,8 +697,7 @@ static int macb_probe(struct device_d *dev)
 		edev->recv = macb_recv;
 
 	macb_init_rx_buffer_size(macb, PKTSIZE);
-	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size,
-					     DMA_ADDRESS_BROKEN);
+	macb->rx_buffer = dma_alloc(macb->rx_buffer_size * macb->rx_ring_size);
 	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb), DMA_ADDRESS_BROKEN);
 	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES, DMA_ADDRESS_BROKEN);
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
