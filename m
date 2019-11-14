Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjo-0006wL-OU
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:17 +0100
Message-Id: <20191114130021.1029-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] net: fsl-fman: Store index for txbd
To: Barebox List <barebox@lists.infradead.org>

Instead of storing a pointer to the current txbd store the index of the
current buffer. This makes the code more straight forward.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 287a891a63..b5d617212e 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -107,8 +107,8 @@ struct fm_eth {
 	void *rx_bd_ring;		/* Rx BD ring base */
 	void *cur_rxbd;			/* current Rx BD */
 	void *rx_buf;			/* Rx buffer base */
-	void *tx_bd_ring;		/* Tx BD ring base */
-	void *cur_txbd;			/* current Tx BD */
+	struct fm_port_bd *tx_bd_ring;	/* Tx BD ring base */
+	int cur_txbd_idx;		/* current Tx BD index */
 	struct memac *regs;
 };
 
@@ -702,16 +702,16 @@ static int fm_eth_tx_port_parameter_init(struct fm_eth *fm_eth)
 			* TX_BD_RING_SIZE);
 	/* save it to fm_eth */
 	fm_eth->tx_bd_ring = tx_bd_ring_base;
-	fm_eth->cur_txbd = tx_bd_ring_base;
+	fm_eth->cur_txbd_idx = 0;
 
 	/* init Tx BDs ring */
-	txbd = tx_bd_ring_base;
 	for (i = 0; i < TX_BD_RING_SIZE; i++) {
+		txbd = &fm_eth->tx_bd_ring[i];
+
 		muram_writew(&txbd->status, TxBD_LAST);
 		muram_writew(&txbd->len, 0);
 		muram_writew(&txbd->buf_ptr_hi, 0);
 		out_be32(&txbd->buf_ptr_lo, 0);
-		txbd++;
 	}
 
 	/* set the Tx queue decriptor */
@@ -834,13 +834,13 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 {
 	struct fm_eth *fm_eth = to_fm_eth(edev);
 	struct fm_port_global_pram *pram;
-	struct fm_port_bd *txbd, *txbd_base;
+	struct fm_port_bd *txbd;
 	u16 offset_in;
 	int i;
 	dma_addr_t dma;
 
 	pram = fm_eth->tx_pram;
-	txbd = fm_eth->cur_txbd;
+	txbd = &fm_eth->tx_bd_ring[fm_eth->cur_txbd_idx];
 
 	/* find one empty TxBD */
 	for (i = 0; muram_readw(&txbd->status) & TxBD_READY; i++) {
@@ -882,12 +882,7 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 	dma_unmap_single(fm_eth->dev, dma, len, DMA_TO_DEVICE);
 
 	/* advance the TxBD */
-	txbd++;
-	txbd_base = fm_eth->tx_bd_ring;
-	if (txbd >= (txbd_base + TX_BD_RING_SIZE))
-		txbd = txbd_base;
-	/* update current txbd */
-	fm_eth->cur_txbd = (void *)txbd;
+	fm_eth->cur_txbd_idx = (fm_eth->cur_txbd_idx + 1) % TX_BD_RING_SIZE;
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
