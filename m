Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAk-0000hS-Ck
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:15 +0100
Message-Id: <1386762077-23205-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] net: phy: Track mii buses on a list
To: barebox@lists.infradead.org

To be able to iterate over registered mii buses

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 6 ++++++
 include/linux/phy.h        | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 84c05ad..56cb9b2 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -25,6 +25,8 @@
 #include <linux/phy.h>
 #include <linux/err.h>
 
+LIST_HEAD(mii_bus_list);
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
@@ -71,6 +75,8 @@ void mdiobus_unregister(struct mii_bus *bus)
 			unregister_device(&bus->phy_map[i]->dev);
 		bus->phy_map[i] = NULL;
 	}
+
+	list_del(&bus->list);
 }
 EXPORT_SYMBOL(mdiobus_unregister);
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 19e4d20..5f3b33f 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -85,6 +85,8 @@ struct mii_bus {
 
 	/* PHY addresses to be ignored when probing */
 	u32 phy_mask;
+
+	struct list_head list;
 };
 #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
 
@@ -92,6 +94,11 @@ int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
 
+extern struct list_head mii_bus_list;
+
+#define for_each_mii_bus(mii) \
+	list_for_each_entry(mii, &mii_bus_list, list)
+
 /**
  * mdiobus_read - Convenience function for reading a given MII mgmt register
  * @bus: the mii_bus struct
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
