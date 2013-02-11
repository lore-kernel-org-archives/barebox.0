Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wie-0000ff-QG
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 16:59:05 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id AB38BDC1861
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:09:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 17:57:52 +0100
Message-Id: <1360601873-10678-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130208090739.GP19322@game.jcrosoft.org>
References: <20130208090739.GP19322@game.jcrosoft.org>
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
Subject: [PATCH 6/7 v2] macb: fix tx ring size
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

the mininal tx ring size is 2 as if one we wrap on the same descriptor
and can cause IP lock on GEM (gigabit version) this is always the case

Signed-off-by: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |   48 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index d6b60aa..9040e4e 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -54,14 +54,16 @@
 #define MACB_RX_BUFFER_SIZE	128
 #define RX_BUFFER_MULTIPLE	64  /* bytes */
 #define RX_RING_SIZE		32 /* must be power of 2 */
-#define RX_RING_BYTES		(sizeof(struct macb_dma_desc) * RX_RING_SIZE)
+#define TX_RING_SIZE		2 /* must be power of 2 */
 
-#define TX_RING_BYTES		(sizeof(struct macb_dma_desc))
+#define RX_RING_BYTES		(sizeof(struct macb_dma_desc) * RX_RING_SIZE)
+#define TX_RING_BYTES		(sizeof(struct macb_dma_desc) * TX_RING_SIZE)
 
 struct macb_device {
 	void			__iomem *regs;
 
 	unsigned int		rx_tail;
+	unsigned int		tx_head;
 	unsigned int		tx_tail;
 
 	void			*rx_buffer;
@@ -86,23 +88,36 @@ static int macb_send(struct eth_device *edev, void *packet,
 {
 	struct macb_device *macb = edev->priv;
 	unsigned long ctrl;
-	int ret;
-
-	dev_dbg(macb->dev, "%s\n", __func__);
+	int ret = 0;
+	uint64_t start;
+	unsigned int tx_head = macb->tx_head;
 
 	ctrl = MACB_BF(TX_FRMLEN, length);
-	ctrl |= MACB_BIT(TX_LAST) | MACB_BIT(TX_WRAP);
+	ctrl |= MACB_BIT(TX_LAST);
+
+	if (tx_head == (TX_RING_SIZE - 1)) {
+		ctrl |= MACB_BIT(TX_WRAP);
+		macb->tx_head = 0;
+	} else {
+		macb->tx_head++;
+	}
 
-	macb->tx_ring[0].ctrl = ctrl;
-	macb->tx_ring[0].addr = (ulong)packet;
+	macb->tx_ring[tx_head].ctrl = ctrl;
+	macb->tx_ring[tx_head].addr = (ulong)packet;
 	barrier();
 	dma_flush_range((ulong) packet, (ulong)packet + length);
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
-	ret = wait_on_timeout(100 * MSECOND,
-		!(macb->tx_ring[0].ctrl & MACB_BIT(TX_USED)));
-
-	ctrl = macb->tx_ring[0].ctrl;
+	start = get_time_ns();
+	ret = -ETIMEDOUT;
+	do {
+		barrier();
+		ctrl = macb->tx_ring[0].ctrl;
+		if (ctrl & MACB_BIT(TX_USED)) {
+			ret = 0;
+			break;
+		}
+	} while (!is_timeout(start, 100 * MSECOND));
 
 	if (ctrl & MACB_BIT(TX_UNDERRUN))
 		dev_err(macb->dev, "TX underrun\n");
@@ -244,10 +259,13 @@ static void macb_init(struct macb_device *macb)
 	}
 	macb->rx_ring[RX_RING_SIZE - 1].addr |= MACB_BIT(RX_WRAP);
 
-	macb->tx_ring[0].addr = 0;
-	macb->tx_ring[0].ctrl = MACB_BIT(TX_USED) | MACB_BIT(TX_WRAP);
+	for (i = 0; i < TX_RING_SIZE; i++) {
+		macb->tx_ring[i].addr = 0;
+		macb->tx_ring[i].ctrl = MACB_BIT(TX_USED);
+	}
+	macb->tx_ring[TX_RING_SIZE - 1].addr |= MACB_BIT(TX_WRAP);
 
-	macb->rx_tail = macb->tx_tail = 0;
+	macb->rx_tail = macb->tx_head = macb->tx_tail = 0;
 
 	macb_writel(macb, RBQP, (ulong)macb->rx_ring);
 	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
