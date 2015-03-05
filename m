Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgn-0007hh-8h
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:21 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id BF3AA26C2012
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:08 +0100
Message-Id: <1425592221-23774-18-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 14/27] net: cpsw: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/cpsw.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 799fac8..3f8ffa0 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -21,6 +21,7 @@
 #include <init.h>
 
 #include <command.h>
+#include <dma.h>
 #include <net.h>
 #include <malloc.h>
 #include <net.h>
@@ -32,7 +33,6 @@
 #include <of_net.h>
 #include <of_address.h>
 #include <xfuncs.h>
-#include <asm/mmu.h>
 #include <asm/system.h>
 #include <linux/err.h>
 
@@ -871,9 +871,9 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 
 	dev_dbg(&slave->dev, "%s: %i bytes @ 0x%p\n", __func__, length, packet);
 
-	dma_flush_range((ulong) packet, (ulong)packet + length);
-
+	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
 	ret = cpdma_submit(priv, &priv->tx_chan, packet, length);
+	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
 
 	return ret;
 }
@@ -886,8 +886,11 @@ static int cpsw_recv(struct eth_device *edev)
 	int len;
 
 	while (cpdma_process(priv, &priv->rx_chan, &buffer, &len) >= 0) {
-		dma_inv_range((ulong)buffer, (ulong)buffer + len);
+		dma_sync_single_for_cpu((unsigned long)buffer, len,
+					DMA_FROM_DEVICE);
 		net_receive(edev, buffer, len);
+		dma_sync_single_for_device((unsigned long)buffer, len,
+					   DMA_FROM_DEVICE);
 		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE);
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
