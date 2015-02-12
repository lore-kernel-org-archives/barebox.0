Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1W9-0008Jz-Qg
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:51 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id A6C8626C200D
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:11 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:48 +0100
Message-Id: <1423777200-22965-13-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 12/24] net: at91_ether: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/at91_ether.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 2ef24cc..d596834 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -35,7 +35,6 @@
 #include <linux/clk.h>
 #include <linux/mii.h>
 #include <errno.h>
-#include <asm/mmu.h>
 #include <linux/phy.h>
 
 #include "at91_ether.h"
@@ -200,7 +199,8 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 {
 	while (!(at91_emac_read(AT91_EMAC_TSR) & AT91_EMAC_TSR_BNQ));
 
-	dma_flush_range((ulong) packet, (ulong)packet + length);
+	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+
 	/* Set address of the data in the Transmit Address register */
 	at91_emac_write(AT91_EMAC_TAR, (unsigned long) packet);
 	/* Set length of the packet in the Transmit Control register */
@@ -211,6 +211,8 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 	at91_emac_write(AT91_EMAC_TSR,
 		at91_emac_read(AT91_EMAC_TSR) | AT91_EMAC_TSR_COMP);
 
+	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+
 	return 0;
 }
 
@@ -225,7 +227,11 @@ static int at91_ether_rx(struct eth_device *edev)
 
 	size = rbfp->size & RBF_SIZE;
 
+	dma_sync_single_for_cpu((unsigned long)rbfp->addr, size,
+				DMA_FROM_DEVICE);
 	net_receive(edev, (unsigned char *)(rbfp->addr & RBF_ADDR), size);
+	dma_sync_single_for_device((unsigned long)rbfp->addr, size,
+				   DMA_FROM_DEVICE);
 
 	rbfp->addr &= ~RBF_OWNER;
 	if (rbfp->addr & RBF_WRAP)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
