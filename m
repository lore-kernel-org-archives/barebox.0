Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xU-1y
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:51 +0200
Message-Id: <1400674740-6467-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] net: phy: factor out phy_device_attach function
To: barebox@lists.infradead.org

phy_device_connect combines searching for a phy with actually attaching
it to the ethernet device. Factor out a phy_device_attach function to
have a function for each purpose. This makes the logic of phy_device_connect
simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 99 +++++++++++++++++++++++++++++----------------------
 1 file changed, 56 insertions(+), 43 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 879939d..a8a8a2c 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -260,12 +260,48 @@ int phy_register_device(struct phy_device* dev)
 	return ret;
 }
 
+static int phy_device_attach(struct phy_device *phy, struct eth_device *edev,
+		       void (*adjust_link) (struct eth_device *edev),
+		       u32 flags, phy_interface_t interface)
+{
+	int ret;
+
+	if (phy->attached_dev)
+		return -EBUSY;
+
+	phy->interface = interface;
+	phy->dev_flags = flags;
+
+	if (!phy->registered) {
+		ret = phy_register_device(phy);
+		if (ret)
+			return ret;
+	}
+
+	edev->phydev = phy;
+	phy->attached_dev = edev;
+
+	ret = phy_init_hw(phy);
+	if (ret)
+		return ret;
+
+	/* Sanitize settings based on PHY capabilities */
+	if ((phy->supported & SUPPORTED_Autoneg) == 0)
+		phy->autoneg = AUTONEG_DISABLE;
+
+	phy_config_aneg(edev->phydev);
+
+	phy->adjust_link = adjust_link;
+
+	return 0;
+}
+
 /* Automatically gets and returns the PHY device */
 int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface)
 {
-	struct phy_device* dev = NULL;
+	struct phy_device *phy;
 	unsigned int i;
 	int ret = -EINVAL;
 
@@ -275,59 +311,36 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	}
 
 	if (addr >= 0) {
-		dev = mdiobus_scan(bus, addr);
-		if (IS_ERR(dev)) {
+		phy = mdiobus_scan(bus, addr);
+		if (IS_ERR(phy)) {
 			ret = -EIO;
-			goto fail;
-		}
-	} else {
-		for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
-			/* skip masked out PHY addresses */
-			if (bus->phy_mask & (1 << i))
-				continue;
-
-			dev = mdiobus_scan(bus, i);
-			if (!IS_ERR(dev) && !dev->attached_dev)
-                                break;
+			goto out;
 		}
 
-		if (IS_ERR(dev)) {
-			ret = PTR_ERR(dev);
-			goto fail;
-		}
-	}
-
-	if (dev->attached_dev)
-		return -EBUSY;
+		ret = phy_device_attach(phy, edev, adjust_link, flags, interface);
 
-	dev->interface = interface;
-	dev->dev_flags = flags;
-
-	if (!dev->registered) {
-		ret = phy_register_device(dev);
-		if (ret)
-			goto fail;
+		goto out;
 	}
 
-	edev->phydev = dev;
-	dev->attached_dev = edev;
+	for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
+		/* skip masked out PHY addresses */
+		if (bus->phy_mask & (1 << i))
+			continue;
 
-	ret = phy_init_hw(dev);
-	if (ret)
-		goto fail;
+		phy = mdiobus_scan(bus, i);
+		if (IS_ERR(phy))
+			continue;
 
-	/* Sanitize settings based on PHY capabilities */
-	if ((dev->supported & SUPPORTED_Autoneg) == 0)
-		dev->autoneg = AUTONEG_DISABLE;
+		ret = phy_device_attach(phy, edev, adjust_link, flags, interface);
 
-	phy_config_aneg(edev->phydev);
-
-	dev->adjust_link = adjust_link;
+		goto out;
+	}
 
-	return 0;
+	ret = -ENODEV;
+out:
+	if (ret)
+		puts("Unable to find a PHY (unknown ID?)\n");
 
-fail:
-	puts("Unable to find a PHY (unknown ID?)\n");
 	return ret;
 }
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
