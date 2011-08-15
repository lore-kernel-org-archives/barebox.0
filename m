Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069J-Md
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:28 +0200
Message-Id: <1313397992-3065-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] net mii: add a parent pointer to miidevs and set it to
	the hardware device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/altera_tse.c   |    1 +
 drivers/net/dm9000.c       |    1 +
 drivers/net/ep93xx.c       |    1 +
 drivers/net/fec_imx.c      |    1 +
 drivers/net/fec_mpc5200.c  |    1 +
 drivers/net/macb.c         |    1 +
 drivers/net/miidev.c       |    2 ++
 drivers/net/netx_eth.c     |    1 +
 drivers/net/smc91111.c     |    1 +
 drivers/net/smc911x.c      |    1 +
 drivers/net/usb/asix.c     |    1 +
 drivers/net/usb/smsc95xx.c |    1 +
 include/miidev.h           |    1 +
 13 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index ac8dea4..7e456c7 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -549,6 +549,7 @@ static int tse_probe(struct device_d *dev)
 	miidev->write = tse_phy_write;
 	miidev->flags = 0;
 	miidev->edev = edev;
+	miidev->parent = dev;
 
 	if (dev->platform_data != NULL)
 		miidev->address = *((int8_t *)(dev->platform_data));
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index 98134ce..e9ec61b 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -541,6 +541,7 @@ static int dm9000_probe(struct device_d *dev)
 	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
+	priv->miidev.parent = dev;
 
 	mii_register(&priv->miidev);
 	eth_register(edev);
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 55848cf..954ec78 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -503,6 +503,7 @@ static int ep93xx_eth_probe(struct device_d *dev)
 	priv->miidev.write = ep93xx_phy_write;
 	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
+	priv->miidev.parent = dev;
 
 	priv->tx_dq.base = calloc(NUMTXDESC,
 				sizeof(struct tx_descriptor));
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index bbce2b6..3b0f266 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -645,6 +645,7 @@ static int fec_probe(struct device_d *dev)
 		fec->miidev.address = pdata->phy_addr;
 		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
 		fec->miidev.edev = edev;
+		fec->miidev.parent = dev;
 
 		mii_register(&fec->miidev);
 	}
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 84be3c7..403aad5 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -688,6 +688,7 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 		fec->miidev.address = CONFIG_PHY_ADDR;
 		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
 		fec->miidev.edev = edev;
+		fec->miidev.parent = dev;
 
 		mii_register(&fec->miidev);
 	}
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 435fa28..898cf3d 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -441,6 +441,7 @@ static int macb_probe(struct device_d *dev)
 	macb->miidev.flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
 		MIIDEV_FORCE_LINK : 0;
 	macb->miidev.edev = edev;
+	macb->miidev.parent = dev;
 	macb->flags = pdata->flags;
 
 	macb->rx_buffer = xmalloc(CFG_MACB_RX_BUFFER_SIZE); 
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index fa9d79e..501a4f8 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -210,6 +210,8 @@ int mii_register(struct mii_device *mdev)
 	mdev->dev.priv = mdev;
 	mdev->dev.id = -1;
 	strcpy(mdev->dev.name, "miidev");
+	if (mdev->parent)
+		dev_add_child(mdev->parent, &mdev->dev);
 
 	return register_device(&mdev->dev);
 }
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index fd09983..5503bc9 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -264,6 +264,7 @@ static int netx_eth_probe(struct device_d *dev)
 	priv->miidev.write = netx_miidev_write;
 	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
+	priv->miidev.parent = dev;
 
 	netx_eth_init_phy();
 	mii_register(&priv->miidev);
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index edb0f68..2313aae 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1318,6 +1318,7 @@ static int smc91c111_probe(struct device_d *dev)
 	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
+	priv->miidev.parent = dev;
 	priv->base = dev_request_mem_region(dev, 0);
 
 	smc91c111_reset(edev);
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 45d24ad..fba61c4 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -732,6 +732,7 @@ static int smc911x_probe(struct device_d *dev)
 	priv->miidev.address = 1;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
+	priv->miidev.parent = dev;
 	priv->base = base;
 
 	smc911x_reset(edev);
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index d148925..be5a170 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -474,6 +474,7 @@ static int asix_init_mii(struct usbnet *dev)
 	dev->miidev.address = asix_get_phy_addr(dev);
 	dev->miidev.flags = 0;
 	dev->miidev.edev = &dev->edev;
+	dev->miidev.parent = &dev->udev->dev;
 
 	return mii_register(&dev->miidev);
 }
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index ae137fb..b518992 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -444,6 +444,7 @@ static int smsc95xx_phy_initialize(struct usbnet *dev)
 	dev->miidev.address = 1; /* FIXME: asix_get_phy_addr(dev); */
 	dev->miidev.flags = 0;
 	dev->miidev.edev = &dev->edev;
+	dev->miidev.parent = &dev->udev->dev;
 //	dev->miidev.name = dev->edev.name;
 
 	/* reset phy and wait for reset to complete */
diff --git a/include/miidev.h b/include/miidev.h
index 6f653d9..21727ef 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -33,6 +33,7 @@
 
 struct mii_device {
 	struct device_d dev;
+	struct device_d *parent;
 
 	int address;	/* The address the phy has on the bus */
 	int	(*read) (struct mii_device *dev, int addr, int reg);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
