Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjZ-0006jM-4g
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:21 +0100
Message-Id: <20191114130021.1029-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] net: fsl-fman: do not leave not transmitted DMA buffers
 mapped
To: Barebox List <barebox@lists.infradead.org>

When a packet can't be transmitted we should unmap it. This probably
won't change much since when we can't transmit a packet the fman
probably can't recover from it anyway, but still it is cleaner to not
leave the buffers mapped.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 01f7064fd2..467f7840bf 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -835,7 +835,7 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 	struct fm_eth *fm_eth = to_fm_eth(edev);
 	struct fm_port_global_pram *pram;
 	struct fm_port_bd *txbd;
-	int i;
+	int i, ret;
 	dma_addr_t dma;
 
 	pram = fm_eth->tx_pram;
@@ -869,18 +869,20 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 		     fm_eth->cur_txbd_idx * sizeof(struct fm_port_bd));
 
 	/* wait for buffer to be transmitted */
+	ret = 0;
 	for (i = 0; muram_readw(&txbd->status) & TxBD_READY; i++) {
 		udelay(10);
 		if (i > 0x10000) {
 			dev_err(&edev->dev, "Tx error, txbd->status = 0x%x\n",
 			       muram_readw(&txbd->status));
-			return -EIO;
+			ret = -EIO;
+			break;
 		}
 	}
 
 	dma_unmap_single(fm_eth->dev, dma, len, DMA_TO_DEVICE);
 
-	return 0;
+	return ret;
 }
 
 static int fm_eth_recv(struct eth_device *edev)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
