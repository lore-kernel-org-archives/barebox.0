Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3PMA-00089h-Bw
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 11:09:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Feb 2013 12:09:26 +0100
Message-Id: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net phy: Add support for finding a mdio bus by its name
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c |   19 +++++++++++++++++++
 include/linux/phy.h        |    3 +++
 2 files changed, 22 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d1d802b..3c4be1c 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -25,6 +25,8 @@
 #include <linux/phy.h>
 #include <linux/err.h>
 
+static LIST_HEAD(mii_bus_list);
+
 /**
  * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
  * @bus: target mii_bus
@@ -57,6 +59,8 @@ int mdiobus_register(struct mii_bus *bus)
 	if (bus->reset)
 		bus->reset(bus);
 
+	list_add_tail(&bus->list, &mii_bus_list);
+
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 	return 0;
 }
@@ -71,9 +75,24 @@ void mdiobus_unregister(struct mii_bus *bus)
 			unregister_device(&bus->phy_map[i]->dev);
 		bus->phy_map[i] = NULL;
 	}
+
+	list_del(&bus->list);
 }
 EXPORT_SYMBOL(mdiobus_unregister);
 
+struct mii_bus *mdiobus_find(const char *name)
+{
+	struct mii_bus *bus;
+
+	list_for_each_entry(bus, &mii_bus_list, list) {
+		if (!strcmp(dev_name(&bus->dev), name))
+			return bus;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(mdiobus_find);
+
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 {
 	struct phy_device *phydev;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 6c9cac9..9ab6e06 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -84,11 +84,14 @@ struct mii_bus {
 
 	/* PHY addresses to be ignored when probing */
 	u32 phy_mask;
+
+	struct list_head list;
 };
 #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
 
 int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
+struct mii_bus *mdiobus_find(const char *name);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
