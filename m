Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nc1QL-0000Xg-NT
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 18:55:10 +0000
Received: from d4rwin.no-ip.org (196.Red-88-25-57.staticIP.rima-tde.net
	[88.25.57.196])
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 22575225196
	for <barebox@lists.infradead.org>; Mon,  1 Feb 2010 19:54:53 +0100 (CET)
Date: Mon, 1 Feb 2010 19:49:57 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100201184957.GI8053@darwin>
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
Subject: [PATCH] ep93xx eth driver: Fix dump_xxx_queue() parameter list
To: barebox@lists.infradead.org

ep93xx eth driver: Add missing parameter to dump_rx_status_queue(),
dump_tx_descriptor_queue() and dump_tx_status_queue()

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 drivers/net/ep93xx.c |   32 ++++++++++++++++----------------
 1 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index aa1a005..392e5af 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -110,7 +110,7 @@ inline void dump_rx_descriptor_queue(struct eth_device *edev)
 /**
  * Dump all RX status queue entries to the terminal.
  */
-inline void dump_rx_status_queue(void)
+inline void dump_rx_status_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -128,7 +128,7 @@ inline void dump_rx_status_queue(void)
 /**
  * Dump all TX descriptor queue entries to the terminal.
  */
-inline void dump_tx_descriptor_queue(void)
+inline void dump_tx_descriptor_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -146,7 +146,7 @@ inline void dump_tx_descriptor_queue(void)
 /**
  * Dump all TX status queue entries to the terminal.
  */
-inline void dump_tx_status_queue(void)
+inline void dump_tx_status_queue(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	int i;
@@ -161,10 +161,10 @@ inline void dump_tx_status_queue(void)
 }
 #else
 #define dump_dev(x)
-#define dump_rx_descriptor_queue()
-#define dump_rx_status_queue()
-#define dump_tx_descriptor_queue()
-#define dump_tx_status_queue()
+#define dump_rx_descriptor_queue(x)
+#define dump_rx_status_queue(x)
+#define dump_tx_descriptor_queue(x)
+#define dump_tx_status_queue(x)
 #endif	/* defined(EP93XX_MAC_DEBUG) */
 
 /**
@@ -291,11 +291,11 @@ static int ep93xx_eth_open(struct eth_device *edev)
 	writel(TXCTL_STXON, &regs->txctl);
 
 	/* Dump data structures if we're debugging */
-	dump_dev();
-	dump_rx_descriptor_queue();
-	dump_rx_status_queue();
-	dump_tx_descriptor_queue();
-	dump_tx_status_queue();
+	dump_dev(edev);
+	dump_rx_descriptor_queue(edev);
+	dump_rx_status_queue(edev);
+	dump_tx_descriptor_queue(edev);
+	dump_tx_status_queue(edev);
 
 	pr_debug("-ep93xx_eth_open\n");
 
@@ -470,8 +470,8 @@ static int ep93xx_eth_rcv_packet(struct eth_device *edev)
 			pr_err("packet rx error, status %08X %08X\n",
 				priv->rx_sq.current->word1,
 				priv->rx_sq.current->word2);
-			dump_rx_descriptor_queue();
-			dump_rx_status_queue();
+			dump_rx_descriptor_queue(edev);
+			dump_rx_status_queue(edev);
 		}
 
 		/*
@@ -544,8 +544,8 @@ static int ep93xx_eth_send_packet(struct eth_device *edev,
 	if (!TX_STATUS_TXWE(priv->tx_sq.current)) {
 		pr_err("packet tx error, status %08X\n",
 			priv->tx_sq.current->word1);
-		dump_tx_descriptor_queue();
-		dump_tx_status_queue();
+		dump_tx_descriptor_queue(edev);
+		dump_tx_status_queue(edev);
 
 		/* TODO: Add better error handling? */
 		goto eth_send_failed_0;
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
