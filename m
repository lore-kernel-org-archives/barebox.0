Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgp-0007i8-Ot
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:25 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 5DB9026C2018
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:32 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:13 +0100
Message-Id: <1425592221-23774-23-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 19/27] net: macb: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/macb.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 1ed5c0e..2ac00f3 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -47,7 +47,6 @@
 #include <platform_data/macb.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <asm/mmu.h>
 #include <linux/phy.h>
 
 #include "macb.h"
@@ -122,7 +121,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	macb->tx_ring[tx_head].ctrl = ctrl;
 	macb->tx_ring[tx_head].addr = (ulong)packet;
 	barrier();
-	dma_flush_range((ulong) packet, (ulong)packet + length);
+	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	start = get_time_ns();
@@ -135,6 +134,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 			break;
 		}
 	} while (!is_timeout(start, 100 * MSECOND));
+	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
 
 	if (ctrl & MACB_BIT(TX_UNDERRUN))
 		dev_err(macb->dev, "TX underrun\n");
@@ -188,7 +188,11 @@ static int gem_recv(struct eth_device *edev)
 		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
 		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
+		dma_sync_single_for_cpu((unsigned long)buffer, length,
+					DMA_FROM_DEVICE);
 		net_receive(edev, buffer, length);
+		dma_sync_single_for_device((unsigned long)buffer, length,
+					   DMA_FROM_DEVICE);
 		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
 		barrier();
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
