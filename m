Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUVsZ-0001gp-SD
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 07:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Sep 2014 09:11:14 +0200
Message-Id: <1411024275-31766-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
References: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] net: phy: don't use 'dev' as name for variables of type
 struct phy_device
To: barebox@lists.infradead.org

Using 'dev' as name for variables which are not of type
struct device(_d) is bad habit and leads to confusions. Use phydev
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 78 +++++++++++++++++++++++++--------------------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 7813c49..f3dffca 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -46,26 +46,26 @@ static int phy_aneg_done(struct phy_device *phydev)
 	return drv->aneg_done(phydev);
 }
 
-int phy_update_status(struct phy_device *dev)
+int phy_update_status(struct phy_device *phydev)
 {
-	struct phy_driver *drv = to_phy_driver(dev->dev.driver);
-	struct eth_device *edev = dev->attached_dev;
+	struct phy_driver *drv = to_phy_driver(phydev->dev.driver);
+	struct eth_device *edev = phydev->attached_dev;
 	int ret;
-	int oldspeed = dev->speed, oldduplex = dev->duplex;
+	int oldspeed = phydev->speed, oldduplex = phydev->duplex;
 
-	ret = drv->read_status(dev);
+	ret = drv->read_status(phydev);
 	if (ret)
 		return ret;
 
-	if (dev->speed == oldspeed && dev->duplex == oldduplex)
+	if (phydev->speed == oldspeed && phydev->duplex == oldduplex)
 		return 0;
 
-	if (dev->adjust_link)
-		dev->adjust_link(edev);
+	if (phydev->adjust_link)
+		phydev->adjust_link(edev);
 
-	if (dev->link)
-		dev_info(&edev->dev, "%dMbps %s duplex link detected\n", dev->speed,
-			dev->duplex ? "full" : "half");
+	if (phydev->link)
+		dev_info(&edev->dev, "%dMbps %s duplex link detected\n",
+				phydev->speed, phydev->duplex ? "full" : "half");
 
 	return 0;
 }
@@ -151,28 +151,28 @@ int phy_scan_fixups(struct phy_device *phydev)
 
 static struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
 {
-	struct phy_device *dev;
+	struct phy_device *phydev;
 
 	/* We allocate the device, and initialize the
 	 * default values */
-	dev = xzalloc(sizeof(*dev));
+	phydev = xzalloc(sizeof(*phydev));
 
-	dev->speed = 0;
-	dev->duplex = -1;
-	dev->pause = dev->asym_pause = 0;
-	dev->link = 1;
-	dev->autoneg = AUTONEG_ENABLE;
+	phydev->speed = 0;
+	phydev->duplex = -1;
+	phydev->pause = phydev->asym_pause = 0;
+	phydev->link = 1;
+	phydev->autoneg = AUTONEG_ENABLE;
 
-	dev->addr = addr;
-	dev->phy_id = phy_id;
+	phydev->addr = addr;
+	phydev->phy_id = phy_id;
 
-	dev->bus = bus;
-	dev->dev.bus = &mdio_bus_type;
+	phydev->bus = bus;
+	phydev->dev.bus = &mdio_bus_type;
 
-	strcpy(dev->dev.name, "phy");
-	dev->dev.id = DEVICE_ID_DYNAMIC;
+	strcpy(phydev->dev.name, "phy");
+	phydev->dev.id = DEVICE_ID_DYNAMIC;
 
-	return dev;
+	return phydev;
 }
 /**
  * get_phy_id - reads the specified addr for its ID.
@@ -217,7 +217,7 @@ int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id)
  */
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
 {
-	struct phy_device *dev = NULL;
+	struct phy_device *phydev = NULL;
 	u32 phy_id = 0;
 	int r;
 
@@ -229,9 +229,9 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
 	if ((phy_id & 0x1fffffff) == 0x1fffffff)
 		return ERR_PTR(-ENODEV);
 
-	dev = phy_device_create(bus, addr, phy_id);
+	phydev = phy_device_create(bus, addr, phy_id);
 
-	return dev;
+	return phydev;
 }
 
 static void phy_config_aneg(struct phy_device *phydev)
@@ -242,31 +242,31 @@ static void phy_config_aneg(struct phy_device *phydev)
 	drv->config_aneg(phydev);
 }
 
-int phy_register_device(struct phy_device* dev)
+int phy_register_device(struct phy_device *phydev)
 {
 	int ret;
 
-	if (dev->registered)
+	if (phydev->registered)
 		return -EBUSY;
 
-	dev->dev.parent = &dev->bus->dev;
+	phydev->dev.parent = &phydev->bus->dev;
 
-	ret = register_device(&dev->dev);
+	ret = register_device(&phydev->dev);
 	if (ret)
 		return ret;
 
-	dev->bus->phy_map[dev->addr] = dev;
+	phydev->bus->phy_map[phydev->addr] = phydev;
 
-	dev->registered = 1;
+	phydev->registered = 1;
 
-	if (dev->dev.driver)
+	if (phydev->dev.driver)
 		return 0;
 
-	dev->dev.driver = &genphy_driver.drv;
-	ret = device_probe(&dev->dev);
+	phydev->dev.driver = &genphy_driver.drv;
+	ret = device_probe(&phydev->dev);
 	if (ret) {
-		unregister_device(&dev->dev);
-		dev->registered = 0;
+		unregister_device(&phydev->dev);
+		phydev->registered = 0;
 	}
 
 	return ret;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
