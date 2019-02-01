Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.iad3a.emailsrvr.com ([173.203.187.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpYQO-0006eX-7w
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 13:00:45 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Fri,  1 Feb 2019 12:59:48 +0000
Message-Id: <20190201125948.15480-1-abbotti@mev.co.uk>
MIME-Version: 1.0
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
Subject: [PATCH] net: designware: drop bad RX frames
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

In dwc_ether_rx(), check the RX descriptor status for various error
conditions.  On error, issue a warning with the error status bits and
drop the received frame.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/net/designware.c | 42 +++++++++++++++++++++++++++++++---------
 1 file changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index ad70967e8..21134cd5a 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -326,24 +326,48 @@ static int dwc_ether_rx(struct eth_device *dev)
 
 	u32 status = desc_p->txrx_status;
 	int length = 0;
+	int ret = 0;
 
 	/* Check  if the owner is the CPU */
 	if (status & DESC_RXSTS_OWNBYDMA)
 		return 0;
 
-	length = (status & DESC_RXSTS_FRMLENMSK) >>
-		 DESC_RXSTS_FRMLENSHFT;
+	if ((status & (DESC_RXSTS_ERROR | DESC_RXSTS_DAFILTERFAIL |
+		       DESC_RXSTS_SAFILTERFAIL)) ||
+	    (status & (DESC_RXSTS_RXIPC_GIANTFRAME |
+		       DESC_RXSTS_RXFRAMEETHER)) ==
+	    DESC_RXSTS_RXIPC_GIANTFRAME) {
+		/* Error in packet - discard it */
+		dev_warn(&dev->dev, "Rx error status (%x)\n",
+			 status & (DESC_RXSTS_DAFILTERFAIL |
+				   DESC_RXSTS_ERROR |
+				   DESC_RXSTS_RXTRUNCATED |
+				   DESC_RXSTS_SAFILTERFAIL |
+				   DESC_RXSTS_RXIPC_GIANTFRAME |
+				   DESC_RXSTS_RXDAMAGED |
+				   DESC_RXSTS_RXIPC_GIANT |
+				   DESC_RXSTS_RXCOLLISION |
+				   DESC_RXSTS_RXFRAMEETHER |
+				   DESC_RXSTS_RXWATCHDOG |
+				   DESC_RXSTS_RXMIIERROR |
+				   DESC_RXSTS_RXCRC));
+		ret = -EIO;
+	} else {
+		length = (status & DESC_RXSTS_FRMLENMSK) >>
+			 DESC_RXSTS_FRMLENSHFT;
+
+		dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr,
+					length, DMA_FROM_DEVICE);
+		net_receive(dev, desc_p->dmamac_addr, length);
+		dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr,
+					   length, DMA_FROM_DEVICE);
+		ret = length;
+	}
 
 	/*
 	 * Make the current descriptor valid again and go to
 	 * the next one
 	 */
-	dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr, length,
-				DMA_FROM_DEVICE);
-	net_receive(dev, desc_p->dmamac_addr, length);
-	dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr, length,
-				   DMA_FROM_DEVICE);
-
 	desc_p->txrx_status |= DESC_RXSTS_OWNBYDMA;
 
 	/* Test the wrap-around condition. */
@@ -352,7 +376,7 @@ static int dwc_ether_rx(struct eth_device *dev)
 
 	priv->rx_currdescnum = desc_num;
 
-	return length;
+	return ret;
 }
 
 static void dwc_ether_halt (struct eth_device *dev)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
