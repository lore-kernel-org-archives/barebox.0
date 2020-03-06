Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIja-0001Lr-Vu
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 19:34:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Mar 2020 20:34:01 +0100
Message-Id: <20200306193406.20531-4-s.hauer@pengutronix.de>
In-Reply-To: <20200306193406.20531-1-s.hauer@pengutronix.de>
References: <20200306193406.20531-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] net: mdiobus: Add slice
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

By adding a slice to the mdio bus we make the mdio code safe for being
called in a poller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 40 ++++++++++++++++++++++++++++++++++++++
 drivers/net/phy/phy.c      |  2 ++
 include/linux/phy.h        | 32 ++++++++++--------------------
 3 files changed, 52 insertions(+), 22 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 3480e2ffb4..30c2e1f409 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -232,6 +232,7 @@ int mdiobus_register(struct mii_bus *bus)
 	dev_set_name(&bus->dev, "miibus");
 	bus->dev.parent = bus->parent;
 	bus->dev.detect = mdiobus_detect;
+	slice_init(&bus->slice, &bus->dev);
 
 	err = register_device(&bus->dev);
 	if (err) {
@@ -357,6 +358,45 @@ static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
 	return 1;
 }
 
+/**
+ * mdiobus_read - Convenience function for reading a given MII mgmt register
+ * @bus: the mii_bus struct
+ * @addr: the phy address
+ * @regnum: register number to read
+ */
+int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum)
+{
+	int ret;
+
+	slice_acquire(&bus->slice);
+
+	ret = bus->read(bus, addr, regnum);
+
+	slice_release(&bus->slice);
+
+	return ret;
+}
+
+/**
+ * mdiobus_write - Convenience function for writing a given MII mgmt register
+ * @bus: the mii_bus struct
+ * @addr: the phy address
+ * @regnum: register number to write
+ * @val: value to write to @regnum
+ */
+int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
+{
+	int ret;
+
+	slice_acquire(&bus->slice);
+
+	ret = bus->write(bus, addr, regnum, val);
+
+	slice_release(&bus->slice);
+
+	return ret;
+}
+
 static ssize_t phydev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
 	int i = count;
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index ccdc9f3716..3425f02721 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -389,6 +389,8 @@ static int phy_device_attach(struct phy_device *phy, struct eth_device *edev,
 	if (ret)
 		return ret;
 
+	slice_add(eth_device_slice(edev), &phy->bus->slice);
+
 	/* Sanitize settings based on PHY capabilities */
 	if ((phy->supported & SUPPORTED_Autoneg) == 0)
 		phy->autoneg = AUTONEG_DISABLE;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index a9fdf44f1a..48502caffa 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -16,6 +16,7 @@
 #define __PHY_H
 
 #include <driver.h>
+#include <slice.h>
 #include <linux/list.h>
 #include <linux/ethtool.h>
 #include <linux/mii.h>
@@ -116,9 +117,16 @@ struct mii_bus {
 	struct list_head list;
 
 	bool is_multiplexed;
+
+	struct slice slice;
 };
 #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
 
+static inline struct slice *mdiobus_slice(struct mii_bus *bus)
+{
+	return &bus->slice;
+}
+
 int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
@@ -134,28 +142,8 @@ struct mii_bus *mdiobus_get_bus(int busnum);
 
 struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np);
 
-/**
- * mdiobus_read - Convenience function for reading a given MII mgmt register
- * @bus: the mii_bus struct
- * @addr: the phy address
- * @regnum: register number to read
- */
-static inline int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum)
-{
-	return bus->read(bus, addr, regnum);
-}
-
-/**
- * mdiobus_write - Convenience function for writing a given MII mgmt register
- * @bus: the mii_bus struct
- * @addr: the phy address
- * @regnum: register number to write
- * @val: value to write to @regnum
- */
-static inline int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
-{
-	return bus->write(bus, addr, regnum, val);
-}
+int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum);
+int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
 
 /* phy_device: An instance of a PHY
  *
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
