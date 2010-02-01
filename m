Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nc3in-0007mj-DM
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 21:22:18 +0000
Received: from d4rwin.no-ip.org (196.Red-88-25-57.staticIP.rima-tde.net
	[88.25.57.196])
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 02E782552F7
	for <barebox@lists.infradead.org>; Mon,  1 Feb 2010 22:22:05 +0100 (CET)
Date: Mon, 1 Feb 2010 22:17:09 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100201211709.GO8053@darwin>
References: <339372749e251d51e46eedacfabaf293b59ca9f7.1265058811.git.matthias@kaehlcke.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <339372749e251d51e46eedacfabaf293b59ca9f7.1265058811.git.matthias@kaehlcke.net>
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
Subject: [PATCH] ep93xx eth driver: Reorder functions to eliminate need for
	prototypes
To: barebox@lists.infradead.org

ep93xx eth driver: Define ep93xx_eth_send_packet() and ep93xx_eth_rcv_packet()
before ep93xx_eth_probe(), and eliminate their prototype declarations

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 drivers/net/ep93xx.c |  238 ++++++++++++++++++++++++-------------------------
 1 files changed, 117 insertions(+), 121 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index ac5d6fd..a63eac1 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -40,10 +40,6 @@
 #include <mach/ep93xx-regs.h>
 #include "ep93xx.h"
 
-static int ep93xx_eth_send_packet(struct eth_device *edev,
-				void *packet, int length);
-static int ep93xx_eth_rcv_packet(struct eth_device *edev);
-
 static int ep93xx_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
 			uint8_t phy_reg, uint16_t *value);
 static int ep93xx_phy_write(struct miiphy_device *mdev, uint8_t phy_addr,
@@ -318,123 +314,6 @@ static void ep93xx_eth_halt(struct eth_device *edev)
 	pr_debug("-ep93xx_eth_halt\n");
 }
 
-static int ep93xx_eth_get_ethaddr(struct eth_device *edev,
-				unsigned char *mac_addr)
-{
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-	uint32_t value;
-
-	value = readl(&regs->indad);
-	mac_addr[0] = value & 0xFF;
-	mac_addr[1] = (value >> 8) & 0xFF;
-	mac_addr[2] = (value >> 16) & 0xFF;
-	mac_addr[3] = (value >> 24) & 0xFF;
-
-	value = readl(&regs->indad_upper);
-	mac_addr[4] = value & 0xFF;
-	mac_addr[5] = (value >> 8) & 0xFF;
-
-	return 0;
-}
-
-static int ep93xx_eth_set_ethaddr(struct eth_device *edev,
-				unsigned char *mac_addr)
-{
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-
-	writel(AFP_IAPRIMARY, &regs->afp);
-
-	writel(mac_addr[0] | (mac_addr[1] << 8) |
-		(mac_addr[2] << 16) | (mac_addr[3] << 24),
-		&regs->indad);
-	writel(mac_addr[4] | (mac_addr[5] << 8), &regs->indad_upper);
-
-	return 0;
-}
-
-static int ep93xx_eth_probe(struct device_d *dev)
-{
-	struct eth_device *edev;
-	struct ep93xx_eth_priv *priv;
-	int ret = -1;
-
-	pr_debug("ep93xx_eth_probe()\n");
-
-	edev = xzalloc(sizeof(struct eth_device) +
-		sizeof(struct ep93xx_eth_priv));
-	dev->type_data = edev;
-	edev->priv = (struct ep93xx_eth_priv *)(edev + 1);
-
-	priv = edev->priv;
-	priv->regs = (struct mac_regs *)MAC_BASE;
-
-	edev->init = ep93xx_eth_init_dev;
-	edev->open = ep93xx_eth_open;
-	edev->send = ep93xx_eth_send_packet;
-	edev->recv = ep93xx_eth_rcv_packet;
-	edev->halt = ep93xx_eth_halt;
-	edev->get_ethaddr = ep93xx_eth_get_ethaddr;
-	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
-
-	priv->miiphy.read = ep93xx_phy_read;
-	priv->miiphy.write = ep93xx_phy_write;
-	priv->miiphy.address = 0;
-	priv->miiphy.flags = 0;
-
-	priv->tx_dq.base = calloc(NUMTXDESC,
-				sizeof(struct tx_descriptor));
-	if (priv->tx_dq.base == NULL) {
-		pr_err("calloc() failed: tx_dq.base");
-		goto eth_probe_failed_0;
-	}
-
-	priv->tx_sq.base = calloc(NUMTXDESC,
-				sizeof(struct tx_status));
-	if (priv->tx_sq.base == NULL) {
-		pr_err("calloc() failed: tx_sq.base");
-		goto eth_probe_failed_1;
-	}
-
-	priv->rx_dq.base = calloc(NUMRXDESC,
-				sizeof(struct rx_descriptor));
-	if (priv->rx_dq.base == NULL) {
-		pr_err("calloc() failed: rx_dq.base");
-		goto eth_probe_failed_2;
-	}
-
-	priv->rx_sq.base = calloc(NUMRXDESC,
-				sizeof(struct rx_status));
-	if (priv->rx_sq.base == NULL) {
-		pr_err("calloc() failed: rx_sq.base");
-		goto eth_probe_failed_3;
-	}
-
-	miiphy_register(&priv->miiphy);
-	eth_register(edev);
-
-	ret = 0;
-
-	goto eth_probe_done;
-
-eth_probe_failed_3:
-	free(priv->rx_dq.base);
-	/* Fall through */
-
-eth_probe_failed_2:
-	free(priv->tx_sq.base);
-	/* Fall through */
-
-eth_probe_failed_1:
-	free(priv->tx_dq.base);
-	/* Fall through */
-
-eth_probe_failed_0:
-	/* Fall through */
-
-eth_probe_done:
-	return ret;
-}
-
 /**
  * Copy a frame of data from the MAC into the protocol layer for further
  * processing.
@@ -560,6 +439,123 @@ eth_send_failed_0:
 	return ret;
 }
 
+static int ep93xx_eth_get_ethaddr(struct eth_device *edev,
+				unsigned char *mac_addr)
+{
+	struct mac_regs *regs = ep93xx_get_regs(edev);
+	uint32_t value;
+
+	value = readl(&regs->indad);
+	mac_addr[0] = value & 0xFF;
+	mac_addr[1] = (value >> 8) & 0xFF;
+	mac_addr[2] = (value >> 16) & 0xFF;
+	mac_addr[3] = (value >> 24) & 0xFF;
+
+	value = readl(&regs->indad_upper);
+	mac_addr[4] = value & 0xFF;
+	mac_addr[5] = (value >> 8) & 0xFF;
+
+	return 0;
+}
+
+static int ep93xx_eth_set_ethaddr(struct eth_device *edev,
+				unsigned char *mac_addr)
+{
+	struct mac_regs *regs = ep93xx_get_regs(edev);
+
+	writel(AFP_IAPRIMARY, &regs->afp);
+
+	writel(mac_addr[0] | (mac_addr[1] << 8) |
+		(mac_addr[2] << 16) | (mac_addr[3] << 24),
+		&regs->indad);
+	writel(mac_addr[4] | (mac_addr[5] << 8), &regs->indad_upper);
+
+	return 0;
+}
+
+static int ep93xx_eth_probe(struct device_d *dev)
+{
+	struct eth_device *edev;
+	struct ep93xx_eth_priv *priv;
+	int ret = -1;
+
+	pr_debug("ep93xx_eth_probe()\n");
+
+	edev = xzalloc(sizeof(struct eth_device) +
+		sizeof(struct ep93xx_eth_priv));
+	dev->type_data = edev;
+	edev->priv = (struct ep93xx_eth_priv *)(edev + 1);
+
+	priv = edev->priv;
+	priv->regs = (struct mac_regs *)MAC_BASE;
+
+	edev->init = ep93xx_eth_init_dev;
+	edev->open = ep93xx_eth_open;
+	edev->send = ep93xx_eth_send_packet;
+	edev->recv = ep93xx_eth_rcv_packet;
+	edev->halt = ep93xx_eth_halt;
+	edev->get_ethaddr = ep93xx_eth_get_ethaddr;
+	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
+
+	priv->miiphy.read = ep93xx_phy_read;
+	priv->miiphy.write = ep93xx_phy_write;
+	priv->miiphy.address = 0;
+	priv->miiphy.flags = 0;
+
+	priv->tx_dq.base = calloc(NUMTXDESC,
+				sizeof(struct tx_descriptor));
+	if (priv->tx_dq.base == NULL) {
+		pr_err("calloc() failed: tx_dq.base");
+		goto eth_probe_failed_0;
+	}
+
+	priv->tx_sq.base = calloc(NUMTXDESC,
+				sizeof(struct tx_status));
+	if (priv->tx_sq.base == NULL) {
+		pr_err("calloc() failed: tx_sq.base");
+		goto eth_probe_failed_1;
+	}
+
+	priv->rx_dq.base = calloc(NUMRXDESC,
+				sizeof(struct rx_descriptor));
+	if (priv->rx_dq.base == NULL) {
+		pr_err("calloc() failed: rx_dq.base");
+		goto eth_probe_failed_2;
+	}
+
+	priv->rx_sq.base = calloc(NUMRXDESC,
+				sizeof(struct rx_status));
+	if (priv->rx_sq.base == NULL) {
+		pr_err("calloc() failed: rx_sq.base");
+		goto eth_probe_failed_3;
+	}
+
+	miiphy_register(&priv->miiphy);
+	eth_register(edev);
+
+	ret = 0;
+
+	goto eth_probe_done;
+
+eth_probe_failed_3:
+	free(priv->rx_dq.base);
+	/* Fall through */
+
+eth_probe_failed_2:
+	free(priv->tx_sq.base);
+	/* Fall through */
+
+eth_probe_failed_1:
+	free(priv->tx_dq.base);
+	/* Fall through */
+
+eth_probe_failed_0:
+	/* Fall through */
+
+eth_probe_done:
+	return ret;
+}
+
 /* -----------------------------------------------------------------------------
  * EP93xx ethernet MII functionality.
  */
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
