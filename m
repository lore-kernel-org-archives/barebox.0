Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjw-00073m-SO
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:20 +0100
Message-Id: <20191114130021.1029-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] net: fsl-fman: simplify setting next offset
To: Barebox List <barebox@lists.infradead.org>

The offset of the current packet can be retrieved from the current txbd
index, so do this instead of increasing the offset with each new packet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 196be3f6bd..01f7064fd2 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -835,7 +835,6 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 	struct fm_eth *fm_eth = to_fm_eth(edev);
 	struct fm_port_global_pram *pram;
 	struct fm_port_bd *txbd;
-	u16 offset_in;
 	int i;
 	dma_addr_t dma;
 
@@ -862,12 +861,12 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 	muram_writew(&txbd->len, len);
 	muram_writew(&txbd->status, TxBD_READY | TxBD_LAST);
 
+	/* advance the TxBD */
+	fm_eth->cur_txbd_idx = (fm_eth->cur_txbd_idx + 1) % TX_BD_RING_SIZE;
+
 	/* update TxQD, let RISC to send the packet */
-	offset_in = muram_readw(&pram->txqd.offset_in);
-	offset_in += sizeof(struct fm_port_bd);
-	if (offset_in >= muram_readw(&pram->txqd.bd_ring_size))
-		offset_in = 0;
-	muram_writew(&pram->txqd.offset_in, offset_in);
+	muram_writew(&pram->txqd.offset_in,
+		     fm_eth->cur_txbd_idx * sizeof(struct fm_port_bd));
 
 	/* wait for buffer to be transmitted */
 	for (i = 0; muram_readw(&txbd->status) & TxBD_READY; i++) {
@@ -881,9 +880,6 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 
 	dma_unmap_single(fm_eth->dev, dma, len, DMA_TO_DEVICE);
 
-	/* advance the TxBD */
-	fm_eth->cur_txbd_idx = (fm_eth->cur_txbd_idx + 1) % TX_BD_RING_SIZE;
-
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
