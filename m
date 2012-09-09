Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAjif-0005i7-D3
 for barebox@lists.infradead.org; Sun, 09 Sep 2012 15:46:47 +0000
Received: from mail636.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 99AC1DC442F
 for <barebox@lists.infradead.org>; Sun,  9 Sep 2012 17:52:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  9 Sep 2012 17:44:02 +0200
Message-Id: <1347205442-14299-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347205442-14299-1-git-send-email-plagnioj@jcrosoft.com>
References: <1347205442-14299-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] net: move the eth_dev status detection at driver level
To: barebox@lists.infradead.org

as this is depend on the phy link status

If not phylib used force active

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/altera_tse.c  |    3 ++-
 drivers/net/at91_ether.c  |    2 ++
 drivers/net/cs8900.c      |    1 +
 drivers/net/designware.c  |    2 ++
 drivers/net/dm9k.c        |    2 +-
 drivers/net/ep93xx.c      |    2 +-
 drivers/net/fec_imx.c     |    2 ++
 drivers/net/fec_mpc5200.c |    2 +-
 drivers/net/gianfar.c     |    2 ++
 drivers/net/ks8851_mll.c  |    2 +-
 drivers/net/macb.c        |    2 ++
 drivers/net/miidev.c      |   10 ++++++++++
 drivers/net/netx_eth.c    |    2 +-
 drivers/net/smc91111.c    |    2 +-
 drivers/net/smc911x.c     |    2 +-
 drivers/net/tap.c         |    1 +
 drivers/net/usb/usbnet.c  |    3 ++-
 include/miidev.h          |    1 +
 net/eth.c                 |    4 +++-
 19 files changed, 37 insertions(+), 10 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index dd96b3c..5009ab6 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -350,7 +350,8 @@ static int tse_eth_open(struct eth_device *edev)
 	struct altera_tse_priv *priv = edev->priv;
 	int ret;
 
-	ret = phy_device_connect(priv->miidev, priv->phy_addr, NULL);
+	ret = phy_device_connect(priv->miidev, priv->phy_addr,
+				 mii_generic_update_link);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 45fa4c5..7a90682 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -152,6 +152,8 @@ static void update_linkspeed(struct mii_device *mdev)
 		else {}					/* 10 Half Duplex */
 	}
 	at91_emac_write(AT91_EMAC_CFG, mac_cfg);
+
+	edev->active = mdev->phydev->link;
 }
 
 static int at91_ether_open(struct eth_device *edev)
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index ef00ea6..3f7fa05 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -255,6 +255,7 @@ static int cs8900_open(struct eth_device *dev)
 	struct cs8900_priv *priv = (struct cs8900_priv *)dev->priv;
 	cs8900_reset(priv);
 	cs8900_reginit(priv);
+	edev->active = 1;
 	return 0;
 }
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index a883301..8cb2334 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -243,6 +243,8 @@ static void dwc_update_linkspeed(struct mii_device *mdev)
 	else
 		conf |= MII_PORTSELECT;
 	writel(conf, &mac_p->conf);
+
+	edev->active = mdev->phydev->link;
 }
 
 static int dwc_ether_open(struct eth_device *dev)
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index f140891..5b89632 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -473,7 +473,7 @@ static int dm9k_eth_open(struct eth_device *edev)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
 
-	return phy_device_connect(&priv->miidev, 0, NULL);
+	return phy_device_connect(&priv->miidev, 0, mii_generic_update_link);
 }
 
 static void dm9k_write_length(struct dm9k *priv, unsigned length)
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index e19d38e..d979328 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -204,7 +204,7 @@ static int ep93xx_eth_open(struct eth_device *edev)
 
 	pr_debug("+ep93xx_eth_open\n");
 
-	ret = phy_device_connect(&priv->miidev, 0, NULL);
+	ret = phy_device_connect(&priv->miidev, 0, mii_generic_update_link);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0aa56b0..e46c5e3 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -361,6 +361,8 @@ static void fec_update_linkspeed(struct mii_device *mdev)
 		rcntl |= FEC_R_CNTRL_RMII_10T;
 		writel(rcntl, fec->regs + FEC_R_CNTRL);
 	}
+
+	edev->active = mdev->phydev->link;
 }
 
 /**
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 05db70d..d0c29c6 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -412,7 +412,7 @@ static int mpc5xxx_fec_open(struct eth_device *edev)
 
 	if (fec->xcv_type != SEVENWIRE) {
 		return phy_device_connect(&fec->miidev, CONFIG_PHY_ADDR,
-				 NULL);
+				 mii_generic_update_link);
 	}
 
 	return 0;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index c71a3b6..2738010 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -97,6 +97,8 @@ static void gfar_adjust_link(struct mii_device *mdev)
 	else
 		priv->speed = 10;
 
+	edev->active = mdev->phydev->link;
+
 	if (priv->link) {
 		/* clear all bits relative with interface mode */
 		ecntrl = in_be32(regs + GFAR_ECNTRL_OFFSET);
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index c5e4a56..c2dee38 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -788,7 +788,7 @@ static int ks8851_eth_open(struct eth_device *edev)
 
 	ks_enable_qmu(priv);
 
-	ret = phy_device_connect(&priv->miidev, 1, NULL);
+	ret = phy_device_connect(&priv->miidev, 1, mii_generic_update_link);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 8b14ce5..c8519d7 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -232,6 +232,8 @@ static void macb_adjust_link(struct mii_device *mdev)
 		reg |= MACB_BIT(SPD);
 
 	writel(reg, macb->regs + MACB_NCFGR);
+
+	edev->active = mdev->phydev->link;
 }
 
 static int macb_open(struct eth_device *edev)
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 4e0ee13..37bc53e 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -31,6 +31,16 @@
 
 static LIST_HEAD(miidev_list);
 
+void mii_generic_update_link(struct mii_device *bus)
+{
+	struct eth_device *edev = bus->edev;
+
+	if (!bus->phydev)
+		edev->active = 1;
+	else
+		edev->active = bus->phydev->link;
+}
+
 static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	int i = count;
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 9af7346..87775c7 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -197,7 +197,7 @@ static int netx_eth_open(struct eth_device *edev)
 {
 	struct netx_eth_priv *priv = (struct netx_eth_priv *)edev->priv;
 
-	return phy_device_connect(&priv->miidev, 0, NULL);
+	return phy_device_connect(&priv->miidev, 0, mii_generic_update_link);
 }
 
 static void netx_eth_halt (struct eth_device *edev)
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 658b0f2..38a7f0a 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -900,7 +900,7 @@ static int smc91c111_eth_open(struct eth_device *edev)
 
 	smc91c111_enable(edev);
 
-	return phy_device_connect(&priv->miidev, 0, NULL);
+	return phy_device_connect(&priv->miidev, 0, mii_generic_update_link);
 }
 
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 5d3e330..cfa1715 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -311,7 +311,7 @@ static int smc911x_eth_open(struct eth_device *edev)
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
 	int ret;
 
-	ret = phy_device_connect(&priv->miidev, 1, NULL);
+	ret = phy_device_connect(&priv->miidev, 1, mii_generic_update_link);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 32496a8..6d76d6a 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -55,6 +55,7 @@ int tap_eth_rx (struct eth_device *edev)
 
 int tap_eth_open(struct eth_device *edev)
 {
+	edev->active = 1;
 	return 0;
 }
 
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 0b11e1b..d650f2d 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -170,7 +170,8 @@ static int usbnet_open(struct eth_device *edev)
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
-	return phy_device_connect(&dev->miidev, dev->phy_addr, NULL);
+	return phy_device_connect(&dev->miidev, dev->phy_addr,
+				  mii_generic_update_link);
 }
 
 static void usbnet_halt(struct eth_device *edev)
diff --git a/include/miidev.h b/include/miidev.h
index 9bea683..6ac742e 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -50,6 +50,7 @@ struct mii_device {
 
 int mii_register(struct mii_device *dev);
 void mii_unregister(struct mii_device *mdev);
+void mii_generic_update_link(struct mii_device *bus);
 
 static int inline mii_write(struct mii_device *dev, int addr, int reg, int value)
 {
diff --git a/net/eth.c b/net/eth.c
index c034eaa..0e3db01 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -139,9 +139,11 @@ int eth_send(void *packet, int length)
 		ret = eth_current->open(eth_current);
 		if (ret)
 			return ret;
-		eth_current->active = 1;
 	}
 
+	if (!eth_current->active)
+		return -ENETDOWN;
+
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
 	return eth_current->send(eth_current, packet, length);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
