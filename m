Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ0CY-0008HK-Pf
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 14:13:57 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B4598FFB92C
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 15:21:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Nov 2012 15:11:47 +0100
Message-Id: <1352988707-4745-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] phylib: split config start to connect
To: barebox@lists.infradead.org

so we can detect and attached the phy without waiting for the link
and wait for the link only at open

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/altera_tse.c   |    2 +-
 drivers/net/at91_ether.c   |    4 ++++
 drivers/net/davinci_emac.c |    4 ++++
 drivers/net/designware.c   |    4 ++++
 drivers/net/dm9k.c         |    8 +++++++-
 drivers/net/ep93xx.c       |    4 ++++
 drivers/net/fec_imx.c      |    5 +++++
 drivers/net/fec_mpc5200.c  |    8 +++++++-
 drivers/net/gianfar.c      |    4 ++++
 drivers/net/ks8851_mll.c   |    4 ++++
 drivers/net/macb.c         |    7 ++++++-
 drivers/net/netx_eth.c     |    7 ++++++-
 drivers/net/phy/phy.c      |   13 +++++++++++--
 drivers/net/smc91111.c     |    7 ++++++-
 drivers/net/smc911x.c      |    4 ++++
 drivers/net/usb/usbnet.c   |    7 ++++++-
 include/linux/phy.h        |    1 +
 17 files changed, 84 insertions(+), 9 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index f0e907e..c69e461 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -348,7 +348,7 @@ static int tse_eth_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
-	return 0;
+	return phy_start(edev->phydev);
 }
 
 static int tse_eth_send(struct eth_device *edev, void *packet, int length)
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index a6d6183..90fabab 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -163,6 +163,10 @@ static int at91_ether_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	ret = phy_start(edev->phydev);
+	if (ret)
+		return ret;
+
 	/* Clear internal statistics */
 	ctl = at91_emac_read(AT91_EMAC_CTL);
 	at91_emac_write(AT91_EMAC_CTL, ctl | AT91_EMAC_CSR);
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 989e119..8421c4f 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -312,6 +312,10 @@ static int davinci_emac_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	ret = phy_start(edev->phydev);
+	if (ret)
+		return ret;
+
 	dev_dbg(priv->dev, "- emac_open\n");
 
 	return 0;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index f803e66..4d63188 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -267,6 +267,10 @@ static int dwc_ether_open(struct eth_device *dev)
 	if (ret)
 		return ret;
 
+	ret = phy_start(dev->phydev);
+	if (ret)
+		return ret;
+
 	descs_init(dev);
 
 	/*
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 8be0f16..db619da 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -468,10 +468,16 @@ static void dm9k_reset(struct dm9k *priv)
 
 static int dm9k_eth_open(struct eth_device *edev)
 {
+	int ret;
+
 	struct dm9k *priv = (struct dm9k *)edev->priv;
 
-	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
 				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
+
+	return phy_start(edev->phydev);
 }
 
 static void dm9k_write_length(struct dm9k *priv, unsigned length)
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 37c9f0a..2ae45d9 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -208,6 +208,10 @@ static int ep93xx_eth_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	ret =  phy_start(edev->phydev);
+	if (ret)
+		return ret;
+
 	ep93xx_eth_reset(edev);
 
 	/* Reset the descriptor queues' current and end address values */
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 9a17e6d..f709c1f 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -397,6 +397,11 @@ static int fec_open(struct eth_device *edev)
 {
 	struct fec_priv *fec = (struct fec_priv *)edev->priv;
 	u32 ecr;
+	int ret;
+
+	ret = phy_start(edev->phydev);
+	if (ret)
+		return ret;
 
 	/*
 	 * Initialize RxBD/TxBD rings
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index a14c8d1..7716978 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -407,8 +407,14 @@ static int mpc5xxx_fec_open(struct eth_device *edev)
 	SDMA_TASK_ENABLE(FEC_RECV_TASK_NO);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		return phy_device_connect(edev, &fec->miibus, CONFIG_PHY_ADDR,
+		int ret;
+
+		ret = phy_device_connect(edev, &fec->miibus, CONFIG_PHY_ADDR,
 				 NULL, fec->phy_flags, fec->interface);
+		if (ret)
+			return ret;
+
+		return phy_start(edev->phydev);
 	}
 
 	return 0;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 55675ba..eed8569 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -192,6 +192,10 @@ static int gfar_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	ret = phy_start(edev->phydev);
+	if (ret)
+		return ret;
+
 	/* Point to the buffer descriptors */
 	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
 	out_be32(regs + GFAR_RBASE0_OFFSET, (unsigned int)priv->rxbd);
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 79b88f2..52f6a6c 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -786,6 +786,10 @@ static int ks8851_eth_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	ret = phy_start(edev->phydev);
+	if (ret)
+		return ret;
+
 	dev_dbg(dev, "eth_open\n");
 
 	return 0;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index ce3ef66..d25fb79 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -233,14 +233,19 @@ static void macb_adjust_link(struct eth_device *edev)
 
 static int macb_open(struct eth_device *edev)
 {
+	int ret;
 	struct macb_device *macb = edev->priv;
 
 	debug("%s\n", __func__);
 
 	/* Obtain the PHY's address/id */
-	return phy_device_connect(edev, &macb->miibus, macb->phy_addr,
+	ret = phy_device_connect(edev, &macb->miibus, macb->phy_addr,
 			       macb_adjust_link, macb->phy_flags,
 			       macb->interface);
+	if (ret)
+		return ret;
+
+	return phy_start(edev->phydev);
 }
 
 static int macb_init(struct eth_device *edev)
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index e2b5591..d4deede 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -194,10 +194,15 @@ static int netx_eth_init_dev(struct eth_device *edev)
 
 static int netx_eth_open(struct eth_device *edev)
 {
+	int ret;
 	struct netx_eth_priv *priv = (struct netx_eth_priv *)edev->priv;
 
-	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
 				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
+
+	return phy_start(edev->phydev);
 }
 
 static void netx_eth_halt (struct eth_device *edev)
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 5a4be54..adcbf6c 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -305,8 +305,6 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	dev = edev->phydev;
 	drv = to_phy_driver(dev->dev.driver);
 
-	drv->config_aneg(dev);
-
 	dev->adjust_link = adjust_link;
 
 	return 0;
@@ -318,6 +316,17 @@ fail:
 	return ret;
 }
 
+int phy_start(struct phy_device* dev)
+{
+	struct phy_driver *drv;
+	if (!dev)
+		return -ENODEV;
+
+	drv = to_phy_driver(dev->dev.driver);
+
+	return drv->config_aneg(dev);
+}
+
 /* Generic PHY support and helper functions */
 
 /**
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index ac978d9..2c87364 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -886,6 +886,7 @@ static void smc91c111_enable(struct eth_device *edev)
 static int smc91c111_eth_open(struct eth_device *edev)
 {
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
+	int ret;
 
 	/* Configure the Receive/Phy Control register */
 	SMC_SELECT_BANK(priv, 0);
@@ -893,8 +894,12 @@ static int smc91c111_eth_open(struct eth_device *edev)
 
 	smc91c111_enable(edev);
 
-	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
 				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
+
+	return phy_start(edev->phydev);
 }
 
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 28c69ba..ea4a2dc 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -397,6 +397,10 @@ static int smc911x_eth_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	ret = phy_start(edev->phydev);
+	if (ret)
+		return ret;
+
 	/* Turn on Tx + Rx */
 	smc911x_enable(edev);
 	return 0;
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 80b4ae7..7c916dc 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -167,11 +167,16 @@ static int usbnet_init(struct eth_device *edev)
 static int usbnet_open(struct eth_device *edev)
 {
 	struct usbnet		*dev = (struct usbnet*)edev->priv;
+	int ret;
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
-	return phy_device_connect(edev, &dev->miibus, dev->phy_addr, NULL,
+	ret = phy_device_connect(edev, &dev->miibus, dev->phy_addr, NULL,
 				0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
+
+	return phy_start(edev->phydev);
 }
 
 static void usbnet_halt(struct eth_device *edev)
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ce6f22c..3892bb3 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -238,6 +238,7 @@ int phy_driver_register(struct phy_driver *drv);
 int phy_drivers_register(struct phy_driver *new_driver, int n);
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
+int phy_start(struct phy_device* dev);
 int phy_init_hw(struct phy_device *phydev);
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
