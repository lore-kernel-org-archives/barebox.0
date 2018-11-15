Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gN5fp-0003vb-IV
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 00:38:22 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992408AbeKOAgixn61U (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 15 Nov 2018 01:36:38 +0100
Date: Thu, 15 Nov 2018 01:36:37 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181115003637.GA16443@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] net: macb: dma_sync_* receive buffers
To: barebox@lists.infradead.org

Receive buffers are properly synchronized only if Cadence is
GEM. Fix it for MACB as well.

Fixes: 86dc5259e25d (net: macb: no need for coherent memory for receive buffer)
Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 Hi Sascha,

 I'm unsure this is proper fix, but works for me (as well as
 reverting 86dc5259e25d)

 drivers/net/macb.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 1c5752d10..2bd5b62a4 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -216,9 +216,11 @@ static int macb_recv(struct eth_device *edev)
 	dev_dbg(macb->dev, "%s\n", __func__);
 
 	for (;;) {
+		barrier();
 		if (!(macb->rx_ring[rx_tail].addr & MACB_BIT(RX_USED)))
 			return -1;
 
+		barrier();
 		status = macb->rx_ring[rx_tail].ctrl;
 		if (status & MACB_BIT(RX_SOF)) {
 			if (rx_tail != macb->rx_tail)
@@ -229,6 +231,8 @@ static int macb_recv(struct eth_device *edev)
 		if (status & MACB_BIT(RX_EOF)) {
 			buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
 			length = MACB_BFEXT(RX_FRMLEN, status);
+			dma_sync_single_for_cpu((unsigned long)buffer, length,
+						DMA_FROM_DEVICE);
 			if (wrapped) {
 				unsigned int headlen, taillen;
 
@@ -237,12 +241,17 @@ static int macb_recv(struct eth_device *edev)
 				taillen = length - headlen;
 				memcpy((void *)NetRxPackets[0],
 				       buffer, headlen);
+				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
+							taillen, DMA_FROM_DEVICE);
 				memcpy((void *)NetRxPackets[0] + headlen,
 				       macb->rx_buffer, taillen);
 				buffer = (void *)NetRxPackets[0];
 			}
 
 			net_receive(edev, buffer, length);
+			dma_sync_single_for_device((unsigned long)buffer, length,
+						   DMA_FROM_DEVICE);
+			barrier();
 			if (++rx_tail >= macb->rx_ring_size)
 				rx_tail = 0;
 			reclaim_rx_buffers(macb, rx_tail);
@@ -252,7 +261,6 @@ static int macb_recv(struct eth_device *edev)
 				rx_tail = 0;
 			}
 		}
-		barrier();
 	}
 
 	return 0;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
