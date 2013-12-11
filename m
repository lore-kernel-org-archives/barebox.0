Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hO-PR
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:16 +0100
Message-Id: <1386762077-23205-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] net: phy: implement detect callback for miibus devices
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 31 +++++++++++++++++++++++++++++++
 drivers/net/phy/phy.c      |  2 +-
 include/linux/phy.h        |  4 ++++
 3 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 56cb9b2..b29a980 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -27,6 +27,36 @@
 
 LIST_HEAD(mii_bus_list);
 
+static int mdiobus_detect(struct device_d *dev)
+{
+	struct mii_bus *mii = to_mii_bus(dev);
+	int i, ret;
+
+	for (i = 0; i < PHY_MAX_ADDR; i++) {
+		struct phy_device *phydev;
+
+		phydev = mdiobus_scan(mii, i);
+		if (IS_ERR(phydev))
+			continue;
+		if (phydev->registered)
+			continue;
+		ret = phy_register_device(phydev);
+		if (ret)
+			dev_err(dev, "failed to register phy: %s\n", strerror(-ret));
+		dev_info(dev, "registered phy as /dev/%s\n", phydev->cdev.name);
+	}
+
+	return 0;
+}
+
+void mdiobus_detect_all(void)
+{
+	struct mii_bus *mii;
+
+	for_each_mii_bus(mii)
+		mdiobus_detect(&mii->dev);
+}
+
 /**
  * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
  * @bus: target mii_bus
@@ -49,6 +79,7 @@ int mdiobus_register(struct mii_bus *bus)
 	bus->dev.id = DEVICE_ID_DYNAMIC;
 	strcpy(bus->dev.name, "miibus");
 	bus->dev.parent = bus->parent;
+	bus->dev.detect = mdiobus_detect;
 
 	err = register_device(&bus->dev);
 	if (err) {
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index b05a313..681fb51 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -232,7 +232,7 @@ static void phy_config_aneg(struct phy_device *phydev)
 	drv->config_aneg(phydev);
 }
 
-static int phy_register_device(struct phy_device* dev)
+int phy_register_device(struct phy_device* dev)
 {
 	int ret;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 5f3b33f..6c9d090 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -94,6 +94,8 @@ int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
 
+void mdiobus_detect_all(void);
+
 extern struct list_head mii_bus_list;
 
 #define for_each_mii_bus(mii) \
@@ -251,6 +253,8 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
 int phy_init_hw(struct phy_device *phydev);
 
+int phy_register_device(struct phy_device* dev);
+
 /**
  * phy_read - Convenience function for reading a given PHY register
  * @phydev: the phy_device struct
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
