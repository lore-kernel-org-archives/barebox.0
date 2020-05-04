Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVry-0003rg-15
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:50:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVru-0005gF-1O
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:26 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0007dK-MV
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 May 2020 09:50:22 +0200
Message-Id: <20200504075022.28234-6-m.grzeschik@pengutronix.de>
In-Reply-To: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
References: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 5/5] net: cpsw: make cpsw_send directional
To: barebox@lists.infradead.org

For dual_emac mode, the driver needs to send on the individual
ports. We set the directional bits on each packet so the controller
knows where to send its.

From TI am335x Reference Manual:

14.3.2.10.2 Dual Mac Mode

- Packets from the host (port 0) to ports 1 and 2 should be directed.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/cpsw.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 7cb530570f..6e6e651768 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -52,6 +52,7 @@
 #define CPDMA_DESC_EOP		BIT(30)
 #define CPDMA_DESC_OWNER	BIT(29)
 #define CPDMA_DESC_EOQ		BIT(28)
+#define CPDMA_DESC_TO_PORT_EN	BIT(20)
 #define CPDMA_FROM_TO_PORT_SHIFT	16
 #define CPDMA_RX_SOURCE_PORT(__status__)	\
 	(((__status__) >> CPDMA_FROM_TO_PORT_SHIFT) & 0x7)
@@ -796,7 +797,7 @@ static void cpdma_desc_free(struct cpsw_priv *priv, struct cpdma_desc *desc)
 }
 
 static int cpdma_submit(struct cpsw_priv *priv, struct cpdma_chan *chan,
-			void *buffer, int len)
+			void *buffer, int len, int port)
 {
 	struct cpdma_desc *desc, *prev;
 	u32 mode;
@@ -810,6 +811,10 @@ static int cpdma_submit(struct cpsw_priv *priv, struct cpdma_chan *chan,
 
 	mode = CPDMA_DESC_OWNER | CPDMA_DESC_SOP | CPDMA_DESC_EOP;
 
+	if (port)
+		mode |= CPDMA_DESC_TO_PORT_EN |
+			(port << CPDMA_FROM_TO_PORT_SHIFT);
+
 	writel(0, &desc->hw_next);
 	writel((u32)buffer, &desc->hw_buffer);
 	writel(len, &desc->hw_len);
@@ -971,7 +976,7 @@ static int cpsw_setup(struct device_d *dev)
 	/* submit rx descs */
 	for (i = 0; i < PKTBUFSRX - 2; i++) {
 		ret = cpdma_submit(priv, &priv->rx_chan, NetRxPackets[i],
-				   PKTSIZE);
+				   PKTSIZE, 0);
 		if (ret < 0) {
 			dev_err(dev, "error %d submitting rx desc\n", ret);
 			break;
@@ -1013,7 +1018,8 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 	dev_dbg(&slave->dev, "%s: %i bytes @ 0x%p\n", __func__, length, packet);
 
 	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
-	ret = cpdma_submit(priv, &priv->tx_chan, packet, length);
+	ret = cpdma_submit(priv, &priv->tx_chan, packet,
+			   length, BIT(slave->slave_num));
 	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
 
 	return ret;
@@ -1032,7 +1038,7 @@ static int cpsw_recv(struct eth_device *edev)
 		net_receive(edev, buffer, len);
 		dma_sync_single_for_device((unsigned long)buffer, len,
 				DMA_FROM_DEVICE);
-		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE);
+		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE, 0);
 	}
 
 	return 0;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
