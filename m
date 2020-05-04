Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVrx-0003rf-Sw
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:50:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0005gB-W1
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0007dB-JL
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 May 2020 09:50:20 +0200
Message-Id: <20200504075022.28234-4-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 3/5] net: cpsw: cpsw_process should only handle rx channels
 for its own port
To: barebox@lists.infradead.org

The driver is currently processing the whole channel list, so it is
possible that it handles a channel of the wrong interface. We limit the
rx_chan handling for its desired port.

The cpsw_send is removing finished tx_chan transfers on each send, so this
has no directional limitation.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/cpsw.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 55d7ad5f5b..aabfc76ad6 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -52,6 +52,9 @@
 #define CPDMA_DESC_EOP		BIT(30)
 #define CPDMA_DESC_OWNER	BIT(29)
 #define CPDMA_DESC_EOQ		BIT(28)
+#define CPDMA_FROM_TO_PORT_SHIFT	16
+#define CPDMA_RX_SOURCE_PORT(__status__)	\
+	(((__status__) >> CPDMA_FROM_TO_PORT_SHIFT) & 0x7)
 
 #define SLIVER_SIZE		0x40
 
@@ -758,10 +761,11 @@ done:
 	return 0;
 }
 
-static int cpdma_process(struct cpsw_priv *priv, struct cpdma_chan *chan,
+static int cpdma_process(struct cpsw_slave *slave, struct cpdma_chan *chan,
 			 void **buffer, int *len)
 {
 	struct cpdma_desc *desc = chan->head;
+	struct cpsw_priv *priv = slave->cpsw;
 	u32 status;
 
 	if (!desc)
@@ -783,6 +787,14 @@ static int cpdma_process(struct cpsw_priv *priv, struct cpdma_chan *chan,
 		return -EBUSY;
 	}
 
+	/* cpsw_send is cleaning finished descriptors on next send
+	 * so we only have to check for rx channel here
+	 */
+	if (CPDMA_RX_SOURCE_PORT(status) != BIT(slave->slave_num) &&
+	    chan == &priv->rx_chan) {
+		return -ENOMSG;
+	}
+
 	chan->head = (void *)readl(&desc->hw_next);
 
 	writel((u32)desc, chan->cp);
@@ -917,7 +929,7 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 	dev_dbg(&slave->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	/* first reap completed packets */
-	while (cpdma_process(priv, &priv->tx_chan, &buffer, &len) >= 0);
+	while (cpdma_process(slave, &priv->tx_chan, &buffer, &len) >= 0);
 
 	dev_dbg(&slave->dev, "%s: %i bytes @ 0x%p\n", __func__, length, packet);
 
@@ -935,7 +947,7 @@ static int cpsw_recv(struct eth_device *edev)
 	void *buffer;
 	int len;
 
-	while (cpdma_process(priv, &priv->rx_chan, &buffer, &len) >= 0) {
+	while (cpdma_process(slave, &priv->rx_chan, &buffer, &len) >= 0) {
 		dma_sync_single_for_cpu((unsigned long)buffer, len,
 				DMA_FROM_DEVICE);
 		net_receive(edev, buffer, len);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
