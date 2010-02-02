Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-v.mail.gandi.net ([217.70.178.75])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NcNrL-0000qq-Lg
	for barebox@lists.infradead.org; Tue, 02 Feb 2010 18:52:28 +0000
Received: from d4rwin.no-ip.org (156.Red-88-18-58.staticIP.rima-tde.net
	[88.18.58.156])
	by relay1-v.mail.gandi.net (Postfix) with ESMTP id 91B57362B8
	for <barebox@lists.infradead.org>; Tue,  2 Feb 2010 19:52:16 +0100 (CET)
Date: Tue, 2 Feb 2010 19:47:19 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100202184719.GS8053@darwin>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ep93xx eth driver: dump_xxx() cleanup
To: barebox@lists.infradead.org

ep93xx eth driver dump_xxx() functions: Use %p to print pointer values,
remove unnecessary parentheses and declare as static

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 drivers/net/ep93xx.c |   54 +++++++++++++++++++++++++-------------------------
 1 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 7f909b2..a63eac1 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -61,34 +61,34 @@ static inline struct mac_regs *ep93xx_get_regs(struct eth_device *edev)
 /**
  * Dump ep93xx_mac values to the terminal.
  */
-inline void dump_dev(struct eth_device *edev)
+static void dump_dev(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
 
 	printf("\ndump_dev()\n");
-	printf("  rx_dq.base	     %08X\n", priv->rx_dq.base);
-	printf("  rx_dq.current	     %08X\n", priv->rx_dq.current);
-	printf("  rx_dq.end	     %08X\n", priv->rx_dq.end);
-	printf("  rx_sq.base	     %08X\n", priv->rx_sq.base);
-	printf("  rx_sq.current	     %08X\n", priv->rx_sq.current);
-	printf("  rx_sq.end	     %08X\n", priv->rx_sq.end);
+	printf("  rx_dq.base	     %p\n", priv->rx_dq.base);
+	printf("  rx_dq.current	     %p\n", priv->rx_dq.current);
+	printf("  rx_dq.end	     %p\n", priv->rx_dq.end);
+	printf("  rx_sq.base	     %p\n", priv->rx_sq.base);
+	printf("  rx_sq.current	     %p\n", priv->rx_sq.current);
+	printf("  rx_sq.end	     %p\n", priv->rx_sq.end);
 
 	for (i = 0; i < NUMRXDESC; i++)
-		printf("  rx_buffer[%2.d]      %08X\n", i, NetRxPackets[i]);
-
-	printf("  tx_dq.base	     %08X\n", priv->tx_dq.base);
-	printf("  tx_dq.current	     %08X\n", priv->tx_dq.current);
-	printf("  tx_dq.end	     %08X\n", priv->tx_dq.end);
-	printf("  tx_sq.base	     %08X\n", priv->tx_sq.base);
-	printf("  tx_sq.current	     %08X\n", priv->tx_sq.current);
-	printf("  tx_sq.end	     %08X\n", priv->tx_sq.end);
+		printf("  rx_buffer[%2.d]      %p\n", i, NetRxPackets[i]);
+
+	printf("  tx_dq.base	     %p\n", priv->tx_dq.base);
+	printf("  tx_dq.current	     %p\n", priv->tx_dq.current);
+	printf("  tx_dq.end	     %p\n", priv->tx_dq.end);
+	printf("  tx_sq.base	     %p\n", priv->tx_sq.base);
+	printf("  tx_sq.current	     %p\n", priv->tx_sq.current);
+	printf("  tx_sq.end	     %p\n", priv->tx_sq.end);
 }
 
 /**
  * Dump all RX descriptor queue entries to the terminal.
  */
-inline void dump_rx_descriptor_queue(struct eth_device *edev)
+static void dump_rx_descriptor_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -96,8 +96,8 @@ inline void dump_rx_descriptor_queue(struct eth_device *edev)
 	printf("\ndump_rx_descriptor_queue()\n");
 	printf("  descriptor address	 word1		 word2\n");
 	for (i = 0; i < NUMRXDESC; i++) {
-		printf("  [ %08X ]	     %08X	 %08X\n",
-			(priv->rx_dq.base + i),
+		printf("  [ %p ]	     %08X	 %08X\n",
+			priv->rx_dq.base + i,
 			(priv->rx_dq.base + i)->word1,
 			(priv->rx_dq.base + i)->word2);
 	}
@@ -106,7 +106,7 @@ inline void dump_rx_descriptor_queue(struct eth_device *edev)
 /**
  * Dump all RX status queue entries to the terminal.
  */
-inline void dump_rx_status_queue(struct eth_device *edev)
+static void dump_rx_status_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -114,8 +114,8 @@ inline void dump_rx_status_queue(struct eth_device *edev)
 	printf("\ndump_rx_status_queue()\n");
 	printf("  descriptor address	 word1		 word2\n");
 	for (i = 0; i < NUMRXDESC; i++) {
-		printf("  [ %08X ]	     %08X	 %08X\n",
-			(priv->rx_sq.base + i),
+		printf("  [ %p ]	     %08X	 %08X\n",
+			priv->rx_sq.base + i,
 			(priv->rx_sq.base + i)->word1,
 			(priv->rx_sq.base + i)->word2);
 	}
@@ -124,7 +124,7 @@ inline void dump_rx_status_queue(struct eth_device *edev)
 /**
  * Dump all TX descriptor queue entries to the terminal.
  */
-inline void dump_tx_descriptor_queue(struct eth_device *edev)
+static void dump_tx_descriptor_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -132,8 +132,8 @@ inline void dump_tx_descriptor_queue(struct eth_device *edev)
 	printf("\ndump_tx_descriptor_queue()\n");
 	printf("  descriptor address	 word1		 word2\n");
 	for (i = 0; i < NUMTXDESC; i++) {
-		printf("  [ %08X ]	     %08X	 %08X\n",
-			(priv->tx_dq.base + i),
+		printf("  [ %p ]	     %08X	 %08X\n",
+			priv->tx_dq.base + i,
 			(priv->tx_dq.base + i)->word1,
 			(priv->tx_dq.base + i)->word2);
 	}
@@ -142,7 +142,7 @@ inline void dump_tx_descriptor_queue(struct eth_device *edev)
 /**
  * Dump all TX status queue entries to the terminal.
  */
-inline void dump_tx_status_queue(struct eth_device *edev)
+static void dump_tx_status_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -150,8 +150,8 @@ inline void dump_tx_status_queue(struct eth_device *edev)
 	printf("\ndump_tx_status_queue()\n");
 	printf("  descriptor address	 word1\n");
 	for (i = 0; i < NUMTXDESC; i++) {
-		printf("  [ %08X ]	     %08X\n",
-			(priv->rx_sq.base + i),
+		printf("  [ %p ]	     %08X\n",
+			priv->rx_sq.base + i,
 			(priv->rx_sq.base + i)->word1);
 	}
 }
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
