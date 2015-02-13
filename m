Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YMM5L-0006Qp-7Z
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 19:39:32 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id A508826C2001
 for <barebox@lists.infradead.org>; Fri, 13 Feb 2015 20:38:37 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 13 Feb 2015 20:38:34 +0100
Message-Id: <1423856314-7963-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] net: rtl8169: add missing casts
To: barebox@lists.infradead.org

Those explicit casts are needed to shut up some compiler
warnings.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Sascha, please apply this to master.
The warnings fixed were introduced with
36138c6e1b (net: rtl8169: remove unnecessary cache maintenance)
---
 drivers/net/rtl8169.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 19f5763..bd3e5c0 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -236,8 +236,8 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	dma_clean_range((unsigned long)priv->rx_buf,
 			(unsigned long)priv->rx_buf + NUM_RX_DESC * PKT_BUF_SIZE);
 
-	memset(priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
-	memset(priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
+	memset((void *)priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
+	memset((void *)priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
 
 	for (i = 0; i < NUM_RX_DESC; i++) {
 		if (i == (NUM_RX_DESC - 1))
@@ -275,9 +275,9 @@ static void rtl8169_hw_start(struct rtl8169_priv *priv)
 	/* Set DMA burst size and Interframe Gap Time */
 	RTL_W32(priv, TxConfig, (6 << TxDMAShift) | (3 << TxInterFrameGapShift));
 
-	RTL_W32(priv, TxDescStartAddrLow, virt_to_phys(priv->tx_desc));
+	RTL_W32(priv, TxDescStartAddrLow, virt_to_phys((void *)priv->tx_desc));
 	RTL_W32(priv, TxDescStartAddrHigh, 0);
-	RTL_W32(priv, RxDescStartAddrLow, virt_to_phys(priv->rx_desc));
+	RTL_W32(priv, RxDescStartAddrLow, virt_to_phys((void *)priv->rx_desc));
 	RTL_W32(priv, RxDescStartAddrHigh, 0);
 
 	/* RTL-8169sc/8110sc or later version */
@@ -363,8 +363,8 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	entry = priv->cur_tx % NUM_TX_DESC;
 
 	if (packet_length < ETH_ZLEN)
-		memset(priv->tx_buf + entry * PKT_BUF_SIZE, 0, ETH_ZLEN);
-	memcpy(priv->tx_buf + entry * PKT_BUF_SIZE, packet, packet_length);
+		memset((void *)priv->tx_buf + entry * PKT_BUF_SIZE, 0, ETH_ZLEN);
+	memcpy((void *)priv->tx_buf + entry * PKT_BUF_SIZE, packet, packet_length);
 	dma_flush_range((unsigned long)priv->tx_buf + entry * PKT_BUF_SIZE,
 			(unsigned long)priv->tx_buf + (entry + 1) * PKT_BUF_SIZE);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
