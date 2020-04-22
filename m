Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRADf-0003F5-Ov
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 09:54:46 +0200
Message-Id: <20200422075452.25226-6-s.hauer@pengutronix.de>
In-Reply-To: <20200422075452.25226-1-s.hauer@pengutronix.de>
References: <20200422075452.25226-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] net: mdiobus: Add slice
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

By adding a slice to the mdio bus we make the mdio code safe for being
called in a poller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 41 ++++++++++++++++++++++++++++++++++++++
 include/linux/phy.h        | 38 ++++++++++++++---------------------
 2 files changed, 56 insertions(+), 23 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 3480e2ffb4..9a76db6ad4 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -239,6 +239,8 @@ int mdiobus_register(struct mii_bus *bus)
 		return -EINVAL;
 	}
 
+	slice_init(&bus->slice, dev_name(&bus->dev));
+
 	if (bus->reset)
 		bus->reset(bus);
 
@@ -357,6 +359,45 @@ static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
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
diff --git a/include/linux/phy.h b/include/linux/phy.h
index a9fdf44f1a..e93f6a01ff 100644
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
@@ -376,11 +364,15 @@ int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
 int phy_register_fixup_for_id(const char *bus_id,
 		int (*run)(struct phy_device *));
 int phy_scan_fixups(struct phy_device *phydev);
-
 int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad);
 void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 				   u16 data);
 
+static inline bool phy_acquired(struct phy_device *phydev)
+{
+	return phydev && slice_acquired(&phydev->bus->slice);
+}
+
 #ifdef CONFIG_PHYLIB
 int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
 		int (*run)(struct phy_device *));
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
