Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kBw-0005wc-GY
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:24:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Feb 2013 10:24:16 +0100
Message-Id: <1360315457-30382-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360315457-30382-1-git-send-email-s.hauer@pengutronix.de>
References: <1360315457-30382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net phy: Add mdio buses to mdio_bus_type
To: barebox@lists.infradead.org

Following the Linux example this adds both the mdio buses and the
phy devices found on the bus to the mdio_bus_type. This patch
uses the type_data field in struct device_d to distinguish between
both types.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c |   18 ++++++++++++++++++
 drivers/net/phy/phy.c      |    1 +
 include/linux/phy.h        |    7 +++++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d1d802b..173a3b2 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -47,6 +47,8 @@ int mdiobus_register(struct mii_bus *bus)
 	bus->dev.id = DEVICE_ID_DYNAMIC;
 	strcpy(bus->dev.name, "miibus");
 	bus->dev.parent = bus->parent;
+	bus->dev.bus = &mdio_bus_type;
+	bus->dev.type_data = (void *)MDIO_BUS_TYPE;
 
 	err = register_device(&bus->dev);
 	if (err) {
@@ -74,6 +76,22 @@ void mdiobus_unregister(struct mii_bus *bus)
 }
 EXPORT_SYMBOL(mdiobus_unregister);
 
+struct mii_bus *mdiobus_find(const char *name)
+{
+	struct device_d *dev;
+
+	for_each_mdiobus(dev) {
+		if (dev->type_data != (void *)MDIO_BUS_TYPE)
+			continue;
+
+		if (!strcmp(dev_name(dev), name))
+			return to_mii_bus(dev);
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(mdiobus_find);
+
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 {
 	struct phy_device *phydev;
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 1cf2cb9..33ce622 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -229,6 +229,7 @@ static int phy_register_device(struct phy_device* dev)
 	int ret;
 
 	dev->dev.parent = &dev->attached_dev->dev;
+	dev->dev.type_data = (void *)MDIO_PHY_DEVICE_TYPE;
 
 	ret = register_device(&dev->dev);
 	if (ret)
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 6c9cac9..00820e8 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -87,9 +87,13 @@ struct mii_bus {
 };
 #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
 
+#define for_each_mdiobus(dev) \
+	bus_for_each_device(&mdio_bus_type, dev)
+
 int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
+struct mii_bus *mdiobus_find(const char *name);
 
 /**
  * mdiobus_read - Convenience function for reading a given MII mgmt register
@@ -286,5 +290,8 @@ int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
 		int (*run)(struct phy_device *));
 int phy_scan_fixups(struct phy_device *phydev);
 
+#define MDIO_PHY_DEVICE_TYPE	1
+#define MDIO_BUS_TYPE		2
+
 extern struct bus_type mdio_bus_type;
 #endif /* __PHYDEV_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
