Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFjOm-00049u-AM
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 10:59:09 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 13 Mar 2013 11:58:48 +0100
Message-Id: <1363172328-12904-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] net: macb: initialize is_gem before usage
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The variable macb->is_gem is evaluated before it is initialized.
That leads to a wrong rx_buffer setup in the gem case. Also, the
function gem_recv will never be used.

Set the variable first and then use it.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/macb.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 0cfad05..30e8476 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -619,11 +619,6 @@ static int macb_probe(struct device_d *dev)
 
 	macb->phy_flags = pdata->phy_flags;
 
-	macb_init_rx_buffer_size(macb, PKTSIZE);
-	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
-	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
-	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
-
 	macb->regs = dev_request_mem_region(dev, 0);
 
 	/*
@@ -638,11 +633,17 @@ static int macb_probe(struct device_d *dev)
 
 	clk_enable(macb->pclk);
 
+	macb->is_gem = read_is_gem(macb);
+
+	macb_init_rx_buffer_size(macb, PKTSIZE);
+	macb->rx_buffer = dma_alloc_coherent(macb->rx_buffer_size * macb->rx_ring_size);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES(macb));
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
+
 	if (macb_is_gem(macb))
 		edev->recv = gem_recv;
 	else
 		edev->recv = macb_recv;
-	macb->is_gem = read_is_gem(macb);
 
 	macb_reset_hw(macb);
 	ncfgr = macb_mdc_clk_div(macb);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
