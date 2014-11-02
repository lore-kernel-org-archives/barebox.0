Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1RB-0006hX-53
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:07:46 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id D79B526C2003
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:44 +0100
Message-Id: <1414959235-18095-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/13] net: rtl8169: clean receive buffer after net handler
To: barebox@lists.infradead.org

The processing of the buffer might change some data, which
will eventually trigger a cache writeback later on, corrupting
data written by the network chip. Clean the cache range
to make sure there is no writeback pending.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/rtl8169.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 0cd5763..5702900 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -233,6 +233,8 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC *
 				sizeof(struct bufdesc));
 	priv->rx_buf = malloc(NUM_RX_DESC * PKT_BUF_SIZE);
+	dma_clean_range((unsigned long)priv->rx_buf,
+			(unsigned long)priv->rx_buf + NUM_RX_DESC * PKT_BUF_SIZE);
 
 	memset(priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
 	memset(priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
@@ -421,6 +423,15 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 			net_receive(edev, priv->rx_buf + entry * PKT_BUF_SIZE,
 			            pkt_size);
 
+			/*
+			 * the buffer is going to be reused by HW, make sure to
+			 * clean out any potentially modified data
+			 */
+			dma_clean_range((unsigned long)priv->rx_buf
+			               + entry * PKT_BUF_SIZE,
+			              (unsigned long)priv->rx_buf
+			               + entry * PKT_BUF_SIZE + pkt_size);
+
 			if (entry == NUM_RX_DESC - 1)
 				priv->rx_desc[entry].status = BD_STAT_OWN |
 					BD_STAT_EOR | PKT_BUF_SIZE;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
