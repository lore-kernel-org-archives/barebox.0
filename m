Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xX-1u
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:53 +0200
Message-Id: <1400674740-6467-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] net: phy: register phys specified in devicetree
To: barebox@lists.infradead.org

When a mdio bus has a device node attached then register the phys
specified there. This makes it possible to lookup the phys using
phandles later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 69 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 5c4dea4..ca01673 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -49,6 +49,71 @@ int mdiobus_detect(struct device_d *dev)
 	return 0;
 }
 
+static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *child,
+				   u32 addr)
+{
+	struct phy_device *phy;
+	int ret;
+
+	phy = get_phy_device(mdio, addr);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	/*
+	 * Associate the OF node with the device structure so it
+	 * can be looked up later
+	 */
+	phy->dev.device_node = child;
+
+	/*
+	 * All data is now stored in the phy struct;
+	 * register it
+	 */
+	ret = phy_register_device(phy);
+	if (ret)
+		return ret;
+
+	dev_dbg(&mdio->dev, "registered phy %s at address %i\n",
+		child->name, addr);
+
+	return 0;
+}
+
+/**
+ * of_mdiobus_register - Register mii_bus and create PHYs from the device tree
+ * @mdio: pointer to mii_bus structure
+ * @np: pointer to device_node of MDIO bus.
+ *
+ * This function registers the mii_bus structure and registers a phy_device
+ * for each child node of @np.
+ */
+static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
+{
+	struct device_node *child;
+	u32 addr;
+	int ret;
+
+	/* Loop over the child nodes and register a phy_device for each one */
+	for_each_available_child_of_node(np, child) {
+		ret = of_property_read_u32(child, "reg", &addr);
+		if (ret) {
+			dev_err(&mdio->dev, "%s has invalid PHY address\n",
+				child->full_name);
+			continue;
+		}
+
+		if (addr >= PHY_MAX_ADDR) {
+			dev_err(&mdio->dev, "%s PHY address %i is too large\n",
+				child->full_name, addr);
+			continue;
+		}
+
+		of_mdiobus_register_phy(mdio, child, addr);
+	}
+
+	return 0;
+}
+
 /**
  * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
  * @bus: target mii_bus
@@ -85,6 +150,10 @@ int mdiobus_register(struct mii_bus *bus)
 	list_add_tail(&bus->list, &mii_bus_list);
 
 	pr_info("%s: probed\n", dev_name(&bus->dev));
+
+	if (bus->dev.device_node)
+		of_mdiobus_register(bus, bus->dev.device_node);
+
 	return 0;
 }
 EXPORT_SYMBOL(mdiobus_register);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
