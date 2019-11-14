Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjZ-0006jL-4j
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:19 +0100
Message-Id: <20191114130021.1029-5-s.hauer@pengutronix.de>
In-Reply-To: <20191114130021.1029-1-s.hauer@pengutronix.de>
References: <20191114130021.1029-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] net: fsl-fman: Store index for rxbd
To: Barebox List <barebox@lists.infradead.org>

Like done for the txbd, also store the index of the current rxbd in the
driver private data. This makes the code easier to follow.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 5dc7ed5090..196be3f6bd 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -104,8 +104,8 @@ struct fm_eth {
 	struct device_d *dev;
 	struct fm_port_global_pram *rx_pram; /* Rx parameter table */
 	struct fm_port_global_pram *tx_pram; /* Tx parameter table */
-	void *rx_bd_ring;		/* Rx BD ring base */
-	void *cur_rxbd;			/* current Rx BD */
+	struct fm_port_bd *rx_bd_ring;	/* Rx BD ring base */
+	int cur_rxbd_idx;		/* current Rx BD index */
 	void *rx_buf;			/* Rx buffer base */
 	struct fm_port_bd *tx_bd_ring;	/* Tx BD ring base */
 	int cur_txbd_idx;		/* current Tx BD index */
@@ -628,12 +628,13 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 
 	/* save them to fm_eth */
 	fm_eth->rx_bd_ring = rx_bd_ring_base;
-	fm_eth->cur_rxbd = rx_bd_ring_base;
+	fm_eth->cur_rxbd_idx = 0;
 	fm_eth->rx_buf = rx_buf_pool;
 
 	/* init Rx BDs ring */
-	rxbd = rx_bd_ring_base;
 	for (i = 0; i < RX_BD_RING_SIZE; i++) {
+		rxbd = &fm_eth->rx_bd_ring[i];
+
 		muram_writew(&rxbd->status, RxBD_EMPTY);
 		muram_writew(&rxbd->len, 0);
 		buf_hi = upper_32_bits(virt_to_phys(rx_buf_pool +
@@ -644,7 +645,6 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 					   MAX_RXBUF_LEN, DMA_FROM_DEVICE);
 		muram_writew(&rxbd->buf_ptr_hi, (u16)buf_hi);
 		out_be32(&rxbd->buf_ptr_lo, buf_lo);
-		rxbd++;
 	}
 
 	/* set the Rx queue descriptor */
@@ -891,7 +891,7 @@ static int fm_eth_recv(struct eth_device *edev)
 {
 	struct fm_eth *fm_eth = to_fm_eth(edev);
 	struct fm_port_global_pram *pram;
-	struct fm_port_bd *rxbd, *rxbd_base;
+	struct fm_port_bd *rxbd;
 	u16 status, len;
 	u32 buf_lo, buf_hi;
 	u8 *data;
@@ -899,9 +899,10 @@ static int fm_eth_recv(struct eth_device *edev)
 	int ret = 1;
 
 	pram = fm_eth->rx_pram;
-	rxbd = fm_eth->cur_rxbd;
 
 	while (1) {
+		rxbd = &fm_eth->rx_bd_ring[fm_eth->cur_rxbd_idx];
+
 		status = muram_readw(&rxbd->status);
 		if (status & RxBD_EMPTY)
 			break;
@@ -931,10 +932,7 @@ static int fm_eth_recv(struct eth_device *edev)
 		muram_writew(&rxbd->len, 0);
 
 		/* advance RxBD */
-		rxbd++;
-		rxbd_base = fm_eth->rx_bd_ring;
-		if (rxbd >= (rxbd_base + RX_BD_RING_SIZE))
-			rxbd = rxbd_base;
+		fm_eth->cur_rxbd_idx = (fm_eth->cur_rxbd_idx + 1) % RX_BD_RING_SIZE;
 
 		/* update RxQD */
 		offset_out = muram_readw(&pram->rxqd.offset_out);
@@ -943,7 +941,6 @@ static int fm_eth_recv(struct eth_device *edev)
 			offset_out = 0;
 		muram_writew(&pram->rxqd.offset_out, offset_out);
 	}
-	fm_eth->cur_rxbd = rxbd;
 
 	return ret;
 }
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
