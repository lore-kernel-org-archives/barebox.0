Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSFa-0005gU-Rg
 for barebox@lists.infradead.org; Thu, 09 Jan 2020 07:29:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so6087102ljh.5
 for <barebox@lists.infradead.org>; Wed, 08 Jan 2020 23:29:02 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2020 10:28:54 +0300
Message-Id: <20200109072855.14154-5-antonynpavlov@gmail.com>
In-Reply-To: <20200109072855.14154-1-antonynpavlov@gmail.com>
References: <20200109072855.14154-1-antonynpavlov@gmail.com>
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
Subject: [RFC 4/5] net: rtl8169: make it work on big-endian system
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/rtl8169.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 80997dc89f..3762cb6354 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -230,13 +230,13 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	for (i = 0; i < NUM_RX_DESC; i++) {
 		if (i == (NUM_RX_DESC - 1))
 			priv->rx_desc[i].status =
-				BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE;
+				cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE);
 		else
 			priv->rx_desc[i].status =
-				BD_STAT_OWN | PKT_BUF_SIZE;
+				cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
 
 		priv->rx_desc[i].buf_addr =
-				virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE);
+				cpu_to_le32(virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE));
 	}
 }
 
@@ -358,21 +358,21 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 
 	priv->tx_desc[entry].buf_Haddr = 0;
 	priv->tx_desc[entry].buf_addr =
-		virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE);
+		cpu_to_le32(virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE));
 
 	if (entry != (NUM_TX_DESC - 1)) {
 		priv->tx_desc[entry].status =
-			BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
-			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
+			cpu_to_le32(BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
+			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
 	} else {
 		priv->tx_desc[entry].status =
-			BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
-			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
+			cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
+			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
 	}
 
 	RTL_W8(priv, TxPoll, 0x40);
 
-	while (priv->tx_desc[entry].status & BD_STAT_OWN)
+	while (le32_to_cpu(priv->tx_desc[entry].status) & BD_STAT_OWN)
 		;
 
 	dma_sync_single_for_cpu((unsigned long)priv->tx_buf + entry *
@@ -391,9 +391,9 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 
 	entry = priv->cur_rx % NUM_RX_DESC;
 
-	if ((priv->rx_desc[entry].status & BD_STAT_OWN) == 0) {
-		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
-			pkt_size = (priv->rx_desc[entry].status & 0x1fff) - 4;
+	if ((le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_OWN) == 0) {
+		if (!(le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_RX_RES)) {
+			pkt_size = (le32_to_cpu(priv->rx_desc[entry].status) & 0x1fff) - 4;
 
 			dma_sync_single_for_cpu((unsigned long)priv->rx_buf
 						+ entry * PKT_BUF_SIZE,
@@ -407,14 +407,14 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 						   pkt_size, DMA_FROM_DEVICE);
 
 			if (entry == NUM_RX_DESC - 1)
-				priv->rx_desc[entry].status = BD_STAT_OWN |
-					BD_STAT_EOR | PKT_BUF_SIZE;
+				priv->rx_desc[entry].status = cpu_to_le32(BD_STAT_OWN |
+					BD_STAT_EOR | PKT_BUF_SIZE);
 			else
 				priv->rx_desc[entry].status =
-					BD_STAT_OWN | PKT_BUF_SIZE;
+					cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
 			priv->rx_desc[entry].buf_addr =
-				virt_to_phys(priv->rx_buf +
-				             entry * PKT_BUF_SIZE);
+				cpu_to_le32(virt_to_phys(priv->rx_buf +
+				             entry * PKT_BUF_SIZE));
 		} else {
 			dev_err(&edev->dev, "rx error\n");
 		}
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
