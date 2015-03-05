Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgp-0007hf-8q
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:22 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 5D8AF26C2006
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:31 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:10 +0100
Message-Id: <1425592221-23774-20-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 16/27] net: davinci_emac: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/davinci_emac.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index ce367a3..056ffe2 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -40,12 +40,12 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <io.h>
 #include <clock.h>
 #include <net.h>
 #include <malloc.h>
 #include <init.h>
-#include <asm/mmu.h>
 #include <asm/system.h>
 #include <linux/phy.h>
 #include <mach/emac_defs.h>
@@ -411,7 +411,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 				    EMAC_CPPI_OWNERSHIP_BIT |
 				    EMAC_CPPI_EOP_BIT),
 		priv->emac_tx_desc + EMAC_DESC_PKT_FLAG_LEN);
-	dma_flush_range((ulong) packet, (ulong)packet + length);
+	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
 	/* Send the packet */
 	writel(BD_TO_HW(priv->emac_tx_desc), priv->adap_emac + EMAC_TX0HDP);
 
@@ -429,6 +429,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 			break;
 		}
 	}
+	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
 
 	dev_dbg(priv->dev, "- emac_send (ret_status %i)\n", ret_status);
 	return ret_status;
@@ -460,9 +461,9 @@ static int davinci_emac_recv(struct eth_device *edev)
 		pkt = (unsigned char *)readl(rx_curr_desc + EMAC_DESC_BUFFER);
 		len = readl(rx_curr_desc + EMAC_DESC_BUFF_OFF_LEN) & 0xffff;
 		dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
-		dma_inv_range((ulong)pkt,
-				(ulong)readl(rx_curr_desc + EMAC_DESC_BUFFER) + len);
+		dma_sync_single_for_cpu((unsigned long)pkt, len, DMA_FROM_DEVICE);
 		net_receive(edev, pkt, len);
+		dma_sync_single_for_device((unsigned long)pkt, len, DMA_FROM_DEVICE);
 		ret = len;
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
