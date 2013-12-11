Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hJ-PL
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:10 +0100
Message-Id: <1386762077-23205-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] net: phy: bail out early in phy_device_connect
To: barebox@lists.infradead.org

If an ethernet device already has a phy in phy_device_connect all we
have to do is to start autonegotiation. Do this early and bail out
so that for the rest of the code it's clear that we have to search for
a phy device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 66 +++++++++++++++++++++++++++++----------------------
 include/linux/phy.h   |  1 -
 2 files changed, 37 insertions(+), 30 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index d8966cd..a83b35c 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -224,6 +224,14 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
 	return dev;
 }
 
+static void phy_config_aneg(struct phy_device *phydev)
+{
+	struct phy_driver *drv;
+
+	drv = to_phy_driver(phydev->dev.driver);
+	drv->config_aneg(phydev);
+}
+
 static int phy_register_device(struct phy_device* dev)
 {
 	int ret;
@@ -246,18 +254,37 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface)
 {
-	struct phy_driver* drv;
 	struct phy_device* dev = NULL;
 	unsigned int i;
 	int ret = -EINVAL;
 
-	if (!edev->phydev) {
-		if (addr >= 0) {
-			dev = mdiobus_scan(bus, addr);
-			if (IS_ERR(dev)) {
-				ret = -EIO;
-				goto fail;
-			}
+	if (edev->phydev) {
+		phy_config_aneg(edev->phydev);
+		return 0;
+	}
+
+	if (addr >= 0) {
+		dev = mdiobus_scan(bus, addr);
+		if (IS_ERR(dev)) {
+			ret = -EIO;
+			goto fail;
+		}
+
+		dev->interface = interface;
+		dev->dev_flags = flags;
+
+		ret = phy_register_device(dev);
+		if (ret)
+			goto fail;
+	} else {
+		for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
+			/* skip masked out PHY addresses */
+			if (bus->phy_mask & (1 << i))
+				continue;
+
+			dev = mdiobus_scan(bus, i);
+			if (IS_ERR(dev) || dev->attached_dev)
+				continue;
 
 			dev->interface = interface;
 			dev->dev_flags = flags;
@@ -265,33 +292,14 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 			ret = phy_register_device(dev);
 			if (ret)
 				goto fail;
-		} else {
-			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
-				/* skip masked out PHY addresses */
-				if (bus->phy_mask & (1 << i))
-					continue;
 
-				dev = mdiobus_scan(bus, i);
-				if (IS_ERR(dev) || dev->attached_dev)
-					continue;
-
-				dev->interface = interface;
-				dev->dev_flags = flags;
-
-				ret = phy_register_device(dev);
-				if (ret)
-					goto fail;
-
-				break;
-			}
+			break;
 		}
 	}
 
 	edev->phydev = dev;
 	dev->attached_dev = edev;
-	drv = to_phy_driver(dev->dev.driver);
-
-	drv->config_aneg(dev);
+	phy_config_aneg(edev->phydev);
 
 	dev->adjust_link = adjust_link;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 94f631b..a1c629e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -161,7 +161,6 @@ struct phy_device {
 	int autoneg;
 	int force;
 
-
 	/* private data pointer */
 	/* For use by PHYs to maintain extra state */
 	void *priv;
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
