Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWW8W-0002nr-VT
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 20:24:50 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p4FD7CC94.dip0.t-ipconnect.de [79.215.204.148])
 by lynxeye.de (Postfix) with ESMTPA id 91D9A26C2001
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 21:23:51 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 13 Mar 2015 21:23:44 +0100
Message-Id: <1426278224-9538-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] net: mvneta: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
I don't know why I missed this one driver in the big conversion
series, but the randconfig builder just came around and reminded
to get my act together.

Please apply to master.
---
 drivers/net/mvneta.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index f2948e4ed7f1..d4c8a2c68dd2 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -393,7 +393,7 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	int ret, error, last_desc;
 
 	/* Flush transmit data */
-	dma_flush_range((unsigned long)data, (unsigned long)data+len);
+	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
 
 	/* Fill the Tx descriptor */
 	txdesc->cmd_sts |= MVNETA_TX_L4_CSUM_NOT | MVNETA_TXD_FLZ_DESC;
@@ -409,6 +409,7 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	 * the Tx port status register (PTXS).
 	 */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT, !mvneta_pending_tx(priv));
+	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -459,15 +460,17 @@ static int mvneta_recv(struct eth_device *edev)
 	}
 
 	/* invalidate current receive buffer */
-	dma_inv_range((unsigned long)rxdesc->buf_phys_addr,
-		      (unsigned long)rxdesc->buf_phys_addr +
-		      ALIGN(PKTSIZE, 8));
+	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_phys_addr,
+				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	/* received packet is padded with two null bytes (Marvell header) */
 	net_receive(edev, (void *)(rxdesc->buf_phys_addr + MVNETA_MH_SIZE),
 			  rxdesc->data_size - MVNETA_MH_SIZE);
 	ret = 0;
 
+	dma_sync_single_for_device((unsigned long)rxdesc->buf_phys_addr,
+				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
+
 recv_err:
 	/* reset this and get next rx descriptor*/
 	rxdesc->data_size = 0;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
