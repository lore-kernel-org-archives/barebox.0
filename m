Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdhb-00088b-O8
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:53:11 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id F005626C2019
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:32 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:15 +0100
Message-Id: <1425592221-23774-25-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
References: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 21/27] net: rtl8169: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/Kconfig   |  1 +
 drivers/net/rtl8169.c | 30 +++++++++++++-----------------
 2 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index adb7008..42ffa65 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -167,6 +167,7 @@ config DRIVER_NET_RTL8139
 config DRIVER_NET_RTL8169
 	bool "RealTek RTL-8169 PCI Ethernet driver"
 	depends on PCI
+	depends on HAS_DMA
 	select PHYLIB
 	help
 	  This is a driver for the Fast Ethernet PCI network cards based on
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index e465e23..d6a7610 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -14,7 +14,6 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#include <asm/mmu.h>
 #include <common.h>
 #include <dma.h>
 #include <init.h>
@@ -234,8 +233,8 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC *
 				sizeof(struct bufdesc), DMA_ADDRESS_BROKEN);
 	priv->rx_buf = malloc(NUM_RX_DESC * PKT_BUF_SIZE);
-	dma_clean_range((unsigned long)priv->rx_buf,
-			(unsigned long)priv->rx_buf + NUM_RX_DESC * PKT_BUF_SIZE);
+	dma_sync_single_for_device((unsigned long)priv->rx_buf,
+				   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
 
 	memset((void *)priv->tx_desc, 0, NUM_TX_DESC * sizeof(struct bufdesc));
 	memset((void *)priv->rx_desc, 0, NUM_RX_DESC * sizeof(struct bufdesc));
@@ -366,8 +365,8 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	if (packet_length < ETH_ZLEN)
 		memset(priv->tx_buf + entry * PKT_BUF_SIZE, 0, ETH_ZLEN);
 	memcpy(priv->tx_buf + entry * PKT_BUF_SIZE, packet, packet_length);
-	dma_flush_range((unsigned long)priv->tx_buf + entry * PKT_BUF_SIZE,
-			(unsigned long)priv->tx_buf + (entry + 1) * PKT_BUF_SIZE);
+	dma_sync_single_for_device((unsigned long)priv->tx_buf + entry *
+				   PKT_BUF_SIZE, PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	priv->tx_desc[entry].buf_Haddr = 0;
 	priv->tx_desc[entry].buf_addr =
@@ -388,6 +387,9 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	while (priv->tx_desc[entry].status & BD_STAT_OWN)
 		;
 
+	dma_sync_single_for_cpu((unsigned long)priv->tx_buf + entry *
+				PKT_BUF_SIZE, PKT_BUF_SIZE, DMA_TO_DEVICE);
+
 	priv->cur_tx++;
 
 	return 0;
@@ -405,22 +407,16 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
 			pkt_size = (priv->rx_desc[entry].status & 0x1fff) - 4;
 
-			dma_inv_range((unsigned long)priv->rx_buf
-			               + entry * PKT_BUF_SIZE,
-			              (unsigned long)priv->rx_buf
-			               + entry * PKT_BUF_SIZE + pkt_size);
+			dma_sync_single_for_cpu((unsigned long)priv->rx_buf
+						+ entry * PKT_BUF_SIZE,
+						pkt_size, DMA_FROM_DEVICE);
 
 			net_receive(edev, priv->rx_buf + entry * PKT_BUF_SIZE,
 			            pkt_size);
 
-			/*
-			 * the buffer is going to be reused by HW, make sure to
-			 * clean out any potentially modified data
-			 */
-			dma_clean_range((unsigned long)priv->rx_buf
-			               + entry * PKT_BUF_SIZE,
-			              (unsigned long)priv->rx_buf
-			               + entry * PKT_BUF_SIZE + pkt_size);
+			dma_sync_single_for_device((unsigned long)priv->rx_buf
+						   + entry * PKT_BUF_SIZE,
+						   pkt_size, DMA_FROM_DEVICE);
 
 			if (entry == NUM_RX_DESC - 1)
 				priv->rx_desc[entry].status = BD_STAT_OWN |
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
