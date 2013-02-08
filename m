Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3k7o-0005Rf-7s
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:20:08 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CDC64102020A
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:30:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Feb 2013 10:18:46 +0100
Message-Id: <1360315130-23872-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130208090739.GP19322@game.jcrosoft.org>
 <1360315130-23872-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] macb: use the macro as in linux for tx/rx buffer ring size
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 4dc873d..962a889 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -51,10 +51,12 @@
 
 #include "macb.h"
 
-#define CFG_MACB_RX_BUFFER_SIZE		4096
-#define CFG_MACB_RX_RING_SIZE		(CFG_MACB_RX_BUFFER_SIZE / 128)
-#define CFG_MACB_TX_TIMEOUT		1000
-#define CFG_MACB_AUTONEG_TIMEOUT	5000000
+#define MACB_RX_BUFFER_SIZE	128
+#define RX_BUFFER_MULTIPLE	64  /* bytes */
+#define RX_RING_SIZE		32 /* must be power of 2 */
+#define RX_RING_BYTES		(sizeof(struct macb_dma_desc) * RX_RING_SIZE)
+
+#define TX_RING_BYTES		(sizeof(struct macb_dma_desc))
 
 struct macb_device {
 	void			__iomem *regs;
@@ -123,7 +125,7 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 	while (i > new_tail) {
 		macb->rx_ring[i].addr &= ~MACB_BIT(RX_USED);
 		i++;
-		if (i > CFG_MACB_RX_RING_SIZE)
+		if (i > RX_RING_SIZE)
 			i = 0;
 	}
 
@@ -159,12 +161,12 @@ static int macb_recv(struct eth_device *edev)
 		}
 
 		if (status & MACB_BIT(RX_EOF)) {
-			buffer = macb->rx_buffer + 128 * macb->rx_tail;
+			buffer = macb->rx_buffer + MACB_RX_BUFFER_SIZE * macb->rx_tail;
 			length = MACB_BFEXT(RX_FRMLEN, status);
 			if (wrapped) {
 				unsigned int headlen, taillen;
 
-				headlen = 128 * (CFG_MACB_RX_RING_SIZE
+				headlen = MACB_RX_BUFFER_SIZE * (RX_RING_SIZE
 						 - macb->rx_tail);
 				taillen = length - headlen;
 				memcpy((void *)NetRxPackets[0],
@@ -175,11 +177,11 @@ static int macb_recv(struct eth_device *edev)
 			}
 
 			net_receive(buffer, length);
-			if (++rx_tail >= CFG_MACB_RX_RING_SIZE)
+			if (++rx_tail >= RX_RING_SIZE)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
 		} else {
-			if (++rx_tail >= CFG_MACB_RX_RING_SIZE) {
+			if (++rx_tail >= RX_RING_SIZE) {
 				wrapped = 1;
 				rx_tail = 0;
 			}
@@ -232,13 +234,12 @@ static void macb_init(struct macb_device *macb)
 
 	/* initialize DMA descriptors */
 	paddr = (ulong)macb->rx_buffer;
-	for (i = 0; i < CFG_MACB_RX_RING_SIZE; i++) {
-		if (i == (CFG_MACB_RX_RING_SIZE - 1))
-			paddr |= MACB_BIT(RX_WRAP);
+	for (i = 0; i < RX_RING_SIZE; i++) {
 		macb->rx_ring[i].addr = paddr;
 		macb->rx_ring[i].ctrl = 0;
-		paddr += 128;
+		paddr += MACB_RX_BUFFER_SIZE;
 	}
+	macb->rx_ring[RX_RING_SIZE - 1].addr |= MACB_BIT(RX_WRAP);
 
 	macb->tx_ring[0].addr = 0;
 	macb->tx_ring[0].ctrl = MACB_BIT(TX_USED) | MACB_BIT(TX_WRAP);
@@ -414,9 +415,9 @@ static int macb_probe(struct device_d *dev)
 
 	macb->phy_flags = pdata->phy_flags;
 
-	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
-	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
-	macb->tx_ring = dma_alloc_coherent(sizeof(struct macb_dma_desc));
+	macb->rx_buffer = dma_alloc_coherent(MACB_RX_BUFFER_SIZE * RX_RING_SIZE);
+	macb->rx_ring = dma_alloc_coherent(RX_RING_BYTES);
+	macb->tx_ring = dma_alloc_coherent(TX_RING_BYTES);
 
 	macb->regs = dev_request_mem_region(dev, 0);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
