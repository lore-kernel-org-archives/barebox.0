Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1Wz-0000Lg-VN
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:42:43 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 2CC2726C2012
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:14 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:53 +0100
Message-Id: <1423777200-22965-18-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 17/24] net: orion-gbe: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/orion-gbe.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index ad1fc66..4235122 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -33,7 +33,6 @@
 #include <net.h>
 #include <of_net.h>
 #include <linux/sizes.h>
-#include <asm/mmu.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/mbus.h>
@@ -243,7 +242,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
 	int ret;
 
 	/* flush transmit data */
-	dma_flush_range((unsigned long)data, (unsigned long)data+len);
+	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
 
 	txdesc->cmd_sts = TXDESC_OWNED_BY_DMA;
 	txdesc->cmd_sts |= TXDESC_FIRST | TXDESC_LAST;
@@ -258,6 +257,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
 	/* wait for packet transmit completion */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT,
 		      (readl(&txdesc->cmd_sts) & TXDESC_OWNED_BY_DMA) == 0);
+	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -301,12 +301,15 @@ static int port_recv(struct eth_device *edev)
 	}
 
 	/* invalidate current receive buffer */
-	dma_inv_range((unsigned long)rxdesc->buf_ptr,
-		      (unsigned long)rxdesc->buf_ptr +
-		      ALIGN(PKTSIZE, 8));
+	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_ptr,
+				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	/* received packet is padded with two null bytes */
 	net_receive(edev, rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
+
+	dma_sync_single_for_device((unsigned long)rxdesc->buf_ptr,
+				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
+
 	ret = 0;
 
 recv_err:
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
