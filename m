Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgp-0007iB-MH
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:25 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 4520426C201A
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:33 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:16 +0100
Message-Id: <1425592221-23774-26-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
References: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 22/27] net: xgmac: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/xgmac.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index c597110..3b2273f 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -25,7 +25,6 @@
 #include <errno.h>
 #include <io.h>
 #include <linux/err.h>
-#include <asm/mmu.h>
 
 #define TX_NUM_DESC			1
 #define RX_NUM_DESC			32
@@ -587,7 +586,7 @@ static int xgmac_send(struct eth_device *edev, void *packet, int length)
 	struct xgmac_dma_desc *txdesc = &priv->tx_chain[currdesc];
 	int ret;
 
-	dma_flush_range((ulong) packet, (ulong)packet + length);
+	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
 	desc_set_buf_addr_and_size(txdesc, packet, length);
 	desc_set_tx_owner(txdesc, TXDESC_FIRST_SEG |
 		TXDESC_LAST_SEG | TXDESC_CRC_EN_APPEND);
@@ -596,6 +595,7 @@ static int xgmac_send(struct eth_device *edev, void *packet, int length)
 	writel(1, priv->base + XGMAC_DMA_TX_POLL);
 
 	ret = wait_on_timeout(1 * SECOND, !desc_get_owner(txdesc));
+	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(priv->dev, "TX timeout\n");
 		return ret;
@@ -611,14 +611,19 @@ static int xgmac_recv(struct eth_device *edev)
 	u32 currdesc = priv->rx_currdesc;
 	struct xgmac_dma_desc *rxdesc = &priv->rx_chain[currdesc];
 	int length = 0;
+	void *buf_addr;
 
 	/* check if the host has the desc */
 	if (desc_get_owner(rxdesc))
 		return -1; /* something bad happened */
 
 	length = desc_get_rx_frame_len(rxdesc);
+	buf_addr = desc_get_buf_addr(rxdesc);
 
-	net_receive(edev, desc_get_buf_addr(rxdesc), length);
+	dma_sync_single_for_cpu((unsigned long)buf_addr, length, DMA_FROM_DEVICE);
+	net_receive(edev, buf_addr, length);
+	dma_sync_single_for_device((unsigned long)buf_addr, length,
+				   DMA_FROM_DEVICE);
 
 	/* set descriptor back to owned by XGMAC */
 	desc_set_rx_owner(rxdesc);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
