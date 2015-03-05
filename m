Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgp-0007hg-Ez
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:23 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id A6C7526C2015
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:31 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:11 +0100
Message-Id: <1425592221-23774-21-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 17/27] net: designware: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/designware.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 0428a8c..985bb5f 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -27,7 +27,6 @@
 #include <io.h>
 #include <net.h>
 #include <of_net.h>
-#include <asm/mmu.h>
 #include <net/designware.h>
 #include <linux/phy.h>
 #include <linux/err.h>
@@ -197,8 +196,8 @@ static void rx_descs_init(struct eth_device *dev)
 		else
 			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
-		dma_inv_range((unsigned long)desc_p->dmamac_addr,
-			      (unsigned long)desc_p->dmamac_addr + CONFIG_ETH_BUFSIZE);
+		dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr,
+					CONFIG_ETH_BUFSIZE, DMA_FROM_DEVICE);
 		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
 	}
 
@@ -302,8 +301,8 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 	}
 
 	memcpy((void *)desc_p->dmamac_addr, packet, length);
-	dma_flush_range((unsigned long)desc_p->dmamac_addr,
-			(unsigned long)desc_p->dmamac_addr + length);
+	dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr, length,
+				   DMA_TO_DEVICE);
 
 	if (priv->enh_desc) {
 		desc_p->txrx_status |= DESC_ENH_TXSTS_TXFIRST | DESC_ENH_TXSTS_TXLAST;
@@ -328,6 +327,9 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 
 	/* Start the transmission */
 	writel(POLL_DATA, &dma_p->txpolldemand);
+	dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr, length,
+				DMA_TO_DEVICE);
+
 	return 0;
 }
 
@@ -351,10 +353,11 @@ static int dwc_ether_rx(struct eth_device *dev)
 	 * Make the current descriptor valid again and go to
 	 * the next one
 	 */
-	dma_inv_range((unsigned long)desc_p->dmamac_addr,
-		      (unsigned long)desc_p->dmamac_addr + length);
-
+	dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr, length,
+				DMA_FROM_DEVICE);
 	net_receive(dev, desc_p->dmamac_addr, length);
+	dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr, length,
+				   DMA_FROM_DEVICE);
 
 	desc_p->txrx_status |= DESC_RXSTS_OWNBYDMA;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
