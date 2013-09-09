Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2qd-0008Ks-SX
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:53:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:53:19 +0200
Message-Id: <1378738401-723-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
References: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] net: designware: make alt/enhanced descriptor runtime
 configurable
To: barebox@lists.infradead.org

Instead of hardcoding the alternate/enhanced descriptor layout make
it configurable during runtime. This is based on the value of the
enh_desc variable which is currently hardcoded to zero. This should
be configurable via device_id in the future. Since currently we have
no in tree user of this driver this currently doesn't hurt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig      |  5 ----
 drivers/net/designware.c | 64 +++++++++++++++++++++++++-----------------------
 drivers/net/designware.h | 62 +++++++++++++++++-----------------------------
 3 files changed, 56 insertions(+), 75 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index bd04531..5d7d20f 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -134,11 +134,6 @@ config DRIVER_NET_DESIGNWARE
 	  This option enables support for the Synopsys
 	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
 
-config DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR
-	bool
-	depends on DRIVER_NET_DESIGNWARE
-	default n
-
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
 	depends on ARCH_MPC85XX
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 33d7345..0b5390d 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -54,6 +54,7 @@ struct dw_eth_dev {
 	struct eth_dma_regs *dma_regs_p;
 	int phy_addr;
 	phy_interface_t interface;
+	int enh_desc;
 };
 
 /* Speed specific definitions */
@@ -149,19 +150,19 @@ static void tx_descs_init(struct eth_device *dev)
 		desc_p->dmamac_addr = &txbuffs[idx * CONFIG_ETH_BUFSIZE];
 		desc_p->dmamac_next = &desc_table_p[idx + 1];
 
-#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
-		desc_p->txrx_status &= ~(DESC_TXSTS_TXINT | DESC_TXSTS_TXLAST |
-				DESC_TXSTS_TXFIRST | DESC_TXSTS_TXCRCDIS | \
-				DESC_TXSTS_TXCHECKINSCTRL | \
-				DESC_TXSTS_TXRINGEND | DESC_TXSTS_TXPADDIS);
-
-		desc_p->txrx_status |= DESC_TXSTS_TXCHAIN;
-		desc_p->dmamac_cntl = 0;
-		desc_p->txrx_status &= ~(DESC_TXSTS_MSK | DESC_TXSTS_OWNBYDMA);
-#else
-		desc_p->dmamac_cntl = DESC_TXCTRL_TXCHAIN;
-		desc_p->txrx_status = 0;
-#endif
+		if (priv->enh_desc) {
+			desc_p->txrx_status &= ~(DESC_ENH_TXSTS_TXINT | DESC_ENH_TXSTS_TXLAST |
+					DESC_ENH_TXSTS_TXFIRST | DESC_ENH_TXSTS_TXCRCDIS |
+					DESC_ENH_TXSTS_TXCHECKINSCTRL |
+					DESC_ENH_TXSTS_TXRINGEND | DESC_ENH_TXSTS_TXPADDIS);
+
+			desc_p->txrx_status |= DESC_ENH_TXSTS_TXCHAIN;
+			desc_p->dmamac_cntl = 0;
+			desc_p->txrx_status &= ~(DESC_ENH_TXSTS_MSK | DESC_ENH_TXSTS_OWNBYDMA);
+		} else {
+			desc_p->dmamac_cntl = DESC_TXCTRL_TXCHAIN;
+			desc_p->txrx_status = 0;
+		}
 	}
 
 	/* Correcting the last pointer of the chain */
@@ -184,9 +185,11 @@ static void rx_descs_init(struct eth_device *dev)
 		desc_p->dmamac_addr = &rxbuffs[idx * CONFIG_ETH_BUFSIZE];
 		desc_p->dmamac_next = &desc_table_p[idx + 1];
 
-		desc_p->dmamac_cntl =
-			(MAC_MAX_FRAME_SZ & DESC_RXCTRL_SIZE1MASK) | \
-				      DESC_RXCTRL_RXCHAIN;
+		desc_p->dmamac_cntl = MAC_MAX_FRAME_SZ;
+		if (priv->enh_desc)
+			desc_p->dmamac_cntl |= DESC_ENH_RXCTRL_RXCHAIN;
+		else
+			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
 		dma_inv_range((unsigned long)desc_p->dmamac_addr,
 			      (unsigned long)desc_p->dmamac_addr + CONFIG_ETH_BUFSIZE);
@@ -282,11 +285,12 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_dma_regs *dma_p = priv->dma_regs_p;
-	u32 desc_num = priv->tx_currdescnum;
+	u32 owndma, desc_num = priv->tx_currdescnum;
 	struct dmamacdescr *desc_p = &priv->tx_mac_descrtable[desc_num];
 
+	owndma = priv->enh_desc ? DESC_ENH_TXSTS_OWNBYDMA : DESC_TXSTS_OWNBYDMA;
 	/* Check if the descriptor is owned by CPU */
-	if (desc_p->txrx_status & DESC_TXSTS_OWNBYDMA) {
+	if (desc_p->txrx_status & owndma) {
 		dev_err(&dev->dev, "CPU not owner of tx frame\n");
 		return -1;
 	}
@@ -295,20 +299,20 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 	dma_flush_range((unsigned long)desc_p->dmamac_addr,
 			(unsigned long)desc_p->dmamac_addr + length);
 
-#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
-	desc_p->txrx_status |= DESC_TXSTS_TXFIRST | DESC_TXSTS_TXLAST;
-	desc_p->dmamac_cntl |= (length << DESC_TXCTRL_SIZE1SHFT) & \
-			       DESC_TXCTRL_SIZE1MASK;
+	if (priv->enh_desc) {
+		desc_p->txrx_status |= DESC_ENH_TXSTS_TXFIRST | DESC_ENH_TXSTS_TXLAST;
+		desc_p->dmamac_cntl |= (length << DESC_ENH_TXCTRL_SIZE1SHFT) &
+				       DESC_ENH_TXCTRL_SIZE1MASK;
 
-	desc_p->txrx_status &= ~(DESC_TXSTS_MSK);
-	desc_p->txrx_status |= DESC_TXSTS_OWNBYDMA;
-#else
-	desc_p->dmamac_cntl |= ((length << DESC_TXCTRL_SIZE1SHFT) & \
-			       DESC_TXCTRL_SIZE1MASK) | DESC_TXCTRL_TXLAST | \
-			       DESC_TXCTRL_TXFIRST;
+		desc_p->txrx_status &= ~(DESC_ENH_TXSTS_MSK);
+		desc_p->txrx_status |= DESC_ENH_TXSTS_OWNBYDMA;
+	} else {
+		desc_p->dmamac_cntl |= ((length << DESC_TXCTRL_SIZE1SHFT) &
+				       DESC_TXCTRL_SIZE1MASK) | DESC_TXCTRL_TXLAST |
+				       DESC_TXCTRL_TXFIRST;
 
-	desc_p->txrx_status = DESC_TXSTS_OWNBYDMA;
-#endif
+		desc_p->txrx_status = DESC_TXSTS_OWNBYDMA;
+	}
 
 	/* Test the wrap-around condition. */
 	if (++desc_num >= CONFIG_TX_DESCR_NUM)
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index db2ead4..f7b14be 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -130,27 +130,21 @@ struct dmamacdescr {
  */
 
 /* tx status bits definitions */
-#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
+#define DESC_ENH_TXSTS_OWNBYDMA		(1 << 31)
+#define DESC_ENH_TXSTS_TXINT		(1 << 30)
+#define DESC_ENH_TXSTS_TXLAST		(1 << 29)
+#define DESC_ENH_TXSTS_TXFIRST		(1 << 28)
+#define DESC_ENH_TXSTS_TXCRCDIS		(1 << 27)
+
+#define DESC_ENH_TXSTS_TXPADDIS		(1 << 26)
+#define DESC_ENH_TXSTS_TXCHECKINSCTRL	(3 << 22)
+#define DESC_ENH_TXSTS_TXRINGEND		(1 << 21)
+#define DESC_ENH_TXSTS_TXCHAIN		(1 << 20)
+#define DESC_ENH_TXSTS_MSK			(0x1FFFF << 0)
 
 #define DESC_TXSTS_OWNBYDMA		(1 << 31)
-#define DESC_TXSTS_TXINT		(1 << 30)
-#define DESC_TXSTS_TXLAST		(1 << 29)
-#define DESC_TXSTS_TXFIRST		(1 << 28)
-#define DESC_TXSTS_TXCRCDIS		(1 << 27)
-
-#define DESC_TXSTS_TXPADDIS		(1 << 26)
-#define DESC_TXSTS_TXCHECKINSCTRL	(3 << 22)
-#define DESC_TXSTS_TXRINGEND		(1 << 21)
-#define DESC_TXSTS_TXCHAIN		(1 << 20)
 #define DESC_TXSTS_MSK			(0x1FFFF << 0)
 
-#else
-
-#define DESC_TXSTS_OWNBYDMA		(1 << 31)
-#define DESC_TXSTS_MSK			(0x1FFFF << 0)
-
-#endif
-
 /* rx status bits definitions */
 #define DESC_RXSTS_OWNBYDMA		(1 << 31)
 #define DESC_RXSTS_DAFILTERFAIL		(1 << 30)
@@ -178,14 +172,10 @@ struct dmamacdescr {
  */
 
 /* tx control bits definitions */
-#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
-
-#define DESC_TXCTRL_SIZE1MASK		(0x1FFF << 0)
-#define DESC_TXCTRL_SIZE1SHFT		(0)
-#define DESC_TXCTRL_SIZE2MASK		(0x1FFF << 16)
-#define DESC_TXCTRL_SIZE2SHFT		(16)
-
-#else
+#define DESC_ENH_TXCTRL_SIZE1MASK		(0x1FFF << 0)
+#define DESC_ENH_TXCTRL_SIZE1SHFT		(0)
+#define DESC_ENH_TXCTRL_SIZE2MASK		(0x1FFF << 16)
+#define DESC_ENH_TXCTRL_SIZE2SHFT		(16)
 
 #define DESC_TXCTRL_TXINT		(1 << 31)
 #define DESC_TXCTRL_TXLAST		(1 << 30)
@@ -200,21 +190,15 @@ struct dmamacdescr {
 #define DESC_TXCTRL_SIZE2MASK		(0x7FF << 11)
 #define DESC_TXCTRL_SIZE2SHFT		(11)
 
-#endif
-
 /* rx control bits definitions */
-#if defined(CONFIG_DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR)
-
-#define DESC_RXCTRL_RXINTDIS		(1 << 31)
-#define DESC_RXCTRL_RXRINGEND		(1 << 15)
-#define DESC_RXCTRL_RXCHAIN		(1 << 14)
+#define DESC_ENH_RXCTRL_RXINTDIS		(1 << 31)
+#define DESC_ENH_RXCTRL_RXRINGEND		(1 << 15)
+#define DESC_ENH_RXCTRL_RXCHAIN		(1 << 14)
 
-#define DESC_RXCTRL_SIZE1MASK		(0x1FFF << 0)
-#define DESC_RXCTRL_SIZE1SHFT		(0)
-#define DESC_RXCTRL_SIZE2MASK		(0x1FFF << 16)
-#define DESC_RXCTRL_SIZE2SHFT		(16)
-
-#else
+#define DESC_ENH_RXCTRL_SIZE1MASK		(0x1FFF << 0)
+#define DESC_ENH_RXCTRL_SIZE1SHFT		(0)
+#define DESC_ENH_RXCTRL_SIZE2MASK		(0x1FFF << 16)
+#define DESC_ENH_RXCTRL_SIZE2SHFT		(16)
 
 #define DESC_RXCTRL_RXINTDIS		(1 << 31)
 #define DESC_RXCTRL_RXRINGEND		(1 << 25)
@@ -226,5 +210,3 @@ struct dmamacdescr {
 #define DESC_RXCTRL_SIZE2SHFT		(11)
 
 #endif
-
-#endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
