Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y7sQz-0002TN-DH
 for barebox@lists.infradead.org; Sun, 04 Jan 2015 21:10:02 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 3F96926C2001
 for <barebox@lists.infradead.org>; Sun,  4 Jan 2015 22:09:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  4 Jan 2015 22:09:05 +0100
Message-Id: <1420405745-4408-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] net: rtl8169: remove unnecessary cache maintenance
To: barebox@lists.infradead.org

The buffer descriptors are allocated from coherent memory, so there
is no cache maintenance needed. Only tell the compiler that the descriptors
can be modified by the hardware.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/rtl8169.c | 24 +++++-------------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 5702900..19f5763 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -50,11 +50,11 @@ struct rtl8169_priv {
 	struct pci_dev		*pci_dev;
 	int			chipset;
 
-	struct bufdesc		*tx_desc;
+	volatile struct bufdesc	*tx_desc;
 	void			*tx_buf;
 	unsigned int		cur_tx;
 
-	struct bufdesc		*rx_desc;
+	volatile struct bufdesc	*rx_desc;
 	void			*rx_buf;
 	unsigned int		cur_rx;
 
@@ -250,10 +250,6 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 		priv->rx_desc[i].buf_addr =
 				virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE);
 	}
-
-	dma_flush_range((unsigned long)priv->rx_desc,
-			(unsigned long)priv->rx_desc +
-			NUM_RX_DESC * sizeof(struct bufdesc));
 }
 
 static void rtl8169_hw_start(struct rtl8169_priv *priv)
@@ -386,14 +382,10 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
 	}
 
-	dma_flush_range((unsigned long)&priv->tx_desc[entry],
-			(unsigned long)&priv->tx_desc[entry + 1]);
-
 	RTL_W8(priv, TxPoll, 0x40);
-	do {
-		dma_inv_range((unsigned long)&priv->tx_desc[entry],
-		              (unsigned long)&priv->tx_desc[entry + 1]);
-	} while (priv->tx_desc[entry].status & BD_STAT_OWN);
+
+	while (priv->tx_desc[entry].status & BD_STAT_OWN)
+		;
 
 	priv->cur_tx++;
 
@@ -408,9 +400,6 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 
 	entry = priv->cur_rx % NUM_RX_DESC;
 
-	dma_inv_range((unsigned long)&priv->rx_desc[entry],
-	              (unsigned long)&priv->rx_desc[entry + 1]);
-
 	if ((priv->rx_desc[entry].status & BD_STAT_OWN) == 0) {
 		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
 			pkt_size = (priv->rx_desc[entry].status & 0x1fff) - 4;
@@ -441,9 +430,6 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 			priv->rx_desc[entry].buf_addr =
 				virt_to_phys(priv->rx_buf +
 				             entry * PKT_BUF_SIZE);
-
-			dma_flush_range((unsigned long)&priv->rx_desc[entry],
-			                (unsigned long)&priv->rx_desc[entry + 1]);
 		} else {
 			dev_err(&edev->dev, "rx error\n");
 		}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
