Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069I-MG
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:27 +0200
Message-Id: <1313397992-3065-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] net: make the ethernet device a child of the hardware
	device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/altera_tse.c  |    1 +
 drivers/net/at91_ether.c  |    1 +
 drivers/net/cs8900.c      |    1 +
 drivers/net/dm9000.c      |    1 +
 drivers/net/ep93xx.c      |    1 +
 drivers/net/fec_imx.c     |    1 +
 drivers/net/fec_mpc5200.c |    1 +
 drivers/net/macb.c        |    1 +
 drivers/net/netx_eth.c    |    1 +
 drivers/net/smc91111.c    |    1 +
 drivers/net/smc911x.c     |    1 +
 drivers/net/usb/usbnet.c  |    1 +
 include/net.h             |    1 +
 net/eth.c                 |    4 ++++
 14 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index e7dabda..ac8dea4 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -518,6 +518,7 @@ static int tse_probe(struct device_d *dev)
 	edev->halt = tse_eth_halt;
 	edev->get_ethaddr = tse_get_ethaddr;
 	edev->set_ethaddr = tse_set_ethaddr;
+	edev->parent = dev;
 
 #ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
 	tx_desc = dev_request_mem_region(dev, 3);
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index d5e26a1..8d0b43b 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -272,6 +272,7 @@ static int at91rm9200_eth_init (struct device_d *dev)
 	edev->halt = at91rm9200_eth_halt;
 	edev->get_ethaddr = at91rm9200_get_ethaddr;
 	edev->set_ethaddr = at91rm9200_set_ethaddr;
+	edev->parent = dev;
 
 	p_mac = AT91C_BASE_EMAC;
 
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index d954e39..33afc5e 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -458,6 +458,7 @@ static int cs8900_probe(struct device_d *dev)
 	edev->halt = cs8900_halt;
 	edev->get_ethaddr = cs8900_get_ethaddr;
 	edev->set_ethaddr = cs8900_set_ethaddr;
+	edev->parent = dev;
 
 	eth_register(edev);
 	return 0;
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index be14317..98134ce 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -513,6 +513,7 @@ static int dm9000_probe(struct device_d *dev)
 	edev->halt = dm9000_eth_halt;
 	edev->set_ethaddr = dm9000_set_ethaddr;
 	edev->get_ethaddr = dm9000_get_ethaddr;
+	edev->parent = dev;
 
 	/* RESET device */
 	dm9000_reset(priv);
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 7821cd2..55848cf 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -497,6 +497,7 @@ static int ep93xx_eth_probe(struct device_d *dev)
 	edev->halt = ep93xx_eth_halt;
 	edev->get_ethaddr = ep93xx_eth_get_ethaddr;
 	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
+	edev->parent = dev;
 
 	priv->miidev.read = ep93xx_phy_read;
 	priv->miidev.write = ep93xx_phy_write;
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 8b4f439..bbce2b6 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -612,6 +612,7 @@ static int fec_probe(struct device_d *dev)
 	edev->halt = fec_halt;
 	edev->get_ethaddr = fec_get_hwaddr;
 	edev->set_ethaddr = fec_set_hwaddr;
+	edev->parent = dev;
 
 	fec->regs = dev_request_mem_region(dev, 0);
 
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 310d70d..84be3c7 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -672,6 +672,7 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	edev->halt = mpc5xxx_fec_halt;
 	edev->get_ethaddr = mpc5xxx_fec_get_ethaddr;
 	edev->set_ethaddr = mpc5xxx_fec_set_ethaddr;
+	edev->parent = dev;
 
 	fec->eth = dev_request_mem_region(dev, 0);
 	fec->tbdBase = (FEC_TBD *)FEC_BD_BASE;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 95ad3d7..435fa28 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -433,6 +433,7 @@ static int macb_probe(struct device_d *dev)
 	edev->halt = macb_halt;
 	edev->get_ethaddr = pdata->get_ethaddr ? pdata->get_ethaddr : macb_get_ethaddr;
 	edev->set_ethaddr = macb_set_ethaddr;
+	edev->parent = dev;
 
 	macb->miidev.read = macb_phy_read;
 	macb->miidev.write = macb_phy_write;
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index fd40f62..fd09983 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -258,6 +258,7 @@ static int netx_eth_probe(struct device_d *dev)
 	edev->halt = netx_eth_halt;
 	edev->get_ethaddr = netx_eth_get_ethaddr;
 	edev->set_ethaddr = netx_eth_set_ethaddr;
+	edev->parent = dev;
 
 	priv->miidev.read = netx_miidev_read;
 	priv->miidev.write = netx_miidev_write;
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 1c1ffea..edb0f68 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1311,6 +1311,7 @@ static int smc91c111_probe(struct device_d *dev)
 	edev->halt = smc91c111_eth_halt;
 	edev->get_ethaddr = smc91c111_get_ethaddr;
 	edev->set_ethaddr = smc91c111_set_ethaddr;
+	edev->parent = dev;
 
 	priv->miidev.read = smc91c111_phy_read;
 	priv->miidev.write = smc91c111_phy_write;
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 8c6f9fc..45d24ad 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -725,6 +725,7 @@ static int smc911x_probe(struct device_d *dev)
 	edev->halt = smc911x_eth_halt;
 	edev->get_ethaddr = smc911x_get_ethaddr;
 	edev->set_ethaddr = smc911x_set_ethaddr;
+	edev->parent = dev;
 
 	priv->miidev.read = smc911x_phy_read;
 	priv->miidev.write = smc911x_phy_write;
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index cd658ed..5ffd7a6 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -206,6 +206,7 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 	edev->recv = usbnet_recv,
 	edev->halt = usbnet_halt,
 	edev->priv = undev;
+	edev->parent = &usbdev->dev;
 
 	info = (struct driver_info *)prod->driver_info;
 	undev->driver_info = info;
diff --git a/include/net.h b/include/net.h
index 1272f23..d0f8341 100644
--- a/include/net.h
+++ b/include/net.h
@@ -43,6 +43,7 @@ struct eth_device {
 	void *priv;
 
 	struct device_d dev;
+	struct device_d *parent;
 
 	struct list_head list;
 };
diff --git a/net/eth.c b/net/eth.c
index 2a801f5..621cb59 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -199,6 +199,10 @@ int eth_register(struct eth_device *edev)
 
 	strcpy(edev->dev.name, "eth");
 	edev->dev.id = -1;
+
+	if (edev->parent)
+		dev_add_child(edev->parent, &edev->dev);
+
 	register_device(&edev->dev);
 
 	dev->type_data = edev;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
