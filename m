Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdhb-00086v-OC
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:53:11 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 75F4B26C2001
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:07 +0100
Message-Id: <1425592221-23774-17-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 13/27] net: arc-emac: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/arc_emac.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 40516a5..2d6215e 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -16,7 +16,6 @@
  * GNU General Public License for more details.
  */
 
-#include <asm/mmu.h>
 #include <clock.h>
 #include <common.h>
 #include <dma.h>
@@ -195,6 +194,8 @@ static int arc_emac_open(struct eth_device *edev)
 		rxbd->data = cpu_to_le32(rxbuf);
 
 		/* Return ownership to EMAC */
+		dma_sync_single_for_device((unsigned long)rxbuf, PKTSIZE,
+					   DMA_FROM_DEVICE);
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 
 		*last_rx_bd = (*last_rx_bd + 1) % RX_BD_NUM;
@@ -244,7 +245,7 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 		length = EMAC_ZLEN;
 	}
 
-	dma_flush_range((unsigned long)data, (unsigned long)data + length);
+	dma_sync_single_for_device((unsigned long)data, length, DMA_TO_DEVICE);
 
 	bd->data = cpu_to_le32(data);
 	bd->info = cpu_to_le32(FOR_EMAC | FIRST_OR_LAST_MASK | length);
@@ -253,6 +254,8 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 	ret = wait_on_timeout(20 * MSECOND,
 			      (arc_reg_get(priv, R_STATUS) & TXINT_MASK) != 0);
 
+	dma_sync_single_for_cpu((unsigned long)data, length, DMA_TO_DEVICE);
+
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -294,18 +297,19 @@ static int arc_emac_recv(struct eth_device *edev)
 			printk(KERN_DEBUG "incomplete packet received\n");
 
 			/* Return ownership to EMAC */
-			rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 			continue;
 		}
 
 		pktlen = info & LEN_MASK;
 
-		/* invalidate current receive buffer */
-		dma_inv_range((unsigned long)rxbd->data,
-			      (unsigned long)rxbd->data + pktlen);
+		dma_sync_single_for_cpu((unsigned long)rxbd->data, pktlen,
+					DMA_FROM_DEVICE);
 
 		net_receive(edev, (unsigned char *)rxbd->data, pktlen);
 
+		dma_sync_single_for_device((unsigned long)rxbd->data, pktlen,
+					   DMA_FROM_DEVICE);
+
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
