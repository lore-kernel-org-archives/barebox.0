Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hI-PK
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:09 +0100
Message-Id: <1386762077-23205-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1386762077-23205-1-git-send-email-s.hauer@pengutronix.de>
References: <1386762077-23205-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] net: phy: cleanup attached device handling
To: barebox@lists.infradead.org

phy_register_device() currently requires an attached ethernet device.
This is not needed, a phy device can equally well be registered as
a standalone device without an ethernet device. Remove the need
for an attached ethernet device in phy_register_device. Also, make
the edev <-> phy connection on a registered device which simplifies
the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c |  4 ----
 drivers/net/phy/phy.c      | 14 +++-----------
 2 files changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 87072be..b0fbf2d 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -153,8 +153,6 @@ static int mdio_bus_probe(struct device_d *_dev)
 
 	int ret;
 
-	dev->attached_dev->phydev = dev;
-
 	if (drv->probe) {
 		ret = drv->probe(dev);
 		if (ret)
@@ -204,8 +202,6 @@ static int mdio_bus_probe(struct device_d *_dev)
 	return 0;
 
 err:
-	dev->attached_dev->phydev = NULL;
-	dev->attached_dev = NULL;
 	return ret;
 }
 
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 2a33054..d8966cd 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -228,7 +228,7 @@ static int phy_register_device(struct phy_device* dev)
 {
 	int ret;
 
-	dev->dev.parent = &dev->attached_dev->dev;
+	dev->dev.parent = &dev->bus->dev;
 
 	ret = register_device(&dev->dev);
 	if (ret)
@@ -259,7 +259,6 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				goto fail;
 			}
 
-			dev->attached_dev = edev;
 			dev->interface = interface;
 			dev->dev_flags = flags;
 
@@ -276,7 +275,6 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				if (IS_ERR(dev) || dev->attached_dev)
 					continue;
 
-				dev->attached_dev = edev;
 				dev->interface = interface;
 				dev->dev_flags = flags;
 
@@ -287,14 +285,10 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				break;
 			}
 		}
-
-		if (!edev->phydev) {
-			ret = -EIO;
-			goto fail;
-		}
 	}
 
-	dev = edev->phydev;
+	edev->phydev = dev;
+	dev->attached_dev = edev;
 	drv = to_phy_driver(dev->dev.driver);
 
 	drv->config_aneg(dev);
@@ -304,8 +298,6 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	return 0;
 
 fail:
-	if (!IS_ERR(dev))
-		dev->attached_dev = NULL;
 	puts("Unable to find a PHY (unknown ID?)\n");
 	return ret;
 }
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
