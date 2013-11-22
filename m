Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8s-0008Jv-Bf
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:55:15 +0100
Message-Id: <1385132115-24179-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: phy: Fix get_phy_device return value
To: barebox@lists.infradead.org

A function should either return an ERR_PTR or NULL on failure, but not both.
Let get_phy_device() return an ERR_PTR and fix the return checks in mdiobus_scan
and phy_device_connect.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 2 +-
 drivers/net/phy/phy.c      | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 6163a50..87072be 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -82,7 +82,7 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 		return bus->phy_map[addr];
 
 	phydev = get_phy_device(bus, addr);
-	if (IS_ERR(phydev) || phydev == NULL)
+	if (IS_ERR(phydev))
 		return phydev;
 
 	bus->phy_map[addr] = phydev;
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index db00e38..2a33054 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -217,7 +217,7 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
 
 	/* If the phy_id is mostly Fs, there is no device there */
 	if ((phy_id & 0x1fffffff) == 0x1fffffff)
-		return NULL;
+		return ERR_PTR(-ENODEV);
 
 	dev = phy_device_create(bus, addr, phy_id);
 
@@ -254,7 +254,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	if (!edev->phydev) {
 		if (addr >= 0) {
 			dev = mdiobus_scan(bus, addr);
-			if (!dev) {
+			if (IS_ERR(dev)) {
 				ret = -EIO;
 				goto fail;
 			}
@@ -273,7 +273,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 					continue;
 
 				dev = mdiobus_scan(bus, i);
-				if (!dev || dev->attached_dev)
+				if (IS_ERR(dev) || dev->attached_dev)
 					continue;
 
 				dev->attached_dev = edev;
@@ -304,7 +304,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	return 0;
 
 fail:
-	if (dev)
+	if (!IS_ERR(dev))
 		dev->attached_dev = NULL;
 	puts("Unable to find a PHY (unknown ID?)\n");
 	return ret;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
