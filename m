Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xZ-21
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:54 +0200
Message-Id: <1400674740-6467-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] net: phy: Support finding a phy in the devicetree
To: barebox@lists.infradead.org

When the ethernet device has a device_node then try finding
the associated phy via the phy-handle property.

This makes the phy handling via devicetree transparent to the
ethernet drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 1e26e45..257df74 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -262,6 +262,29 @@ int phy_register_device(struct phy_device* dev)
 	return ret;
 }
 
+static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
+{
+	struct device_d *dev;
+	struct device_node *phy_node;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return NULL;
+
+	if (!edev->parent->device_node)
+		return NULL;
+
+	phy_node = of_parse_phandle(edev->parent->device_node, "phy-handle", 0);
+	if (!phy_node)
+		return NULL;
+
+	bus_for_each_device(&mdio_bus_type, dev) {
+		if (dev->device_node == phy_node)
+			return container_of(dev, struct phy_device, dev);
+	}
+
+	return NULL;
+}
+
 static int phy_device_attach(struct phy_device *phy, struct eth_device *edev,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface)
@@ -312,6 +335,13 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 		return 0;
 	}
 
+	phy = of_mdio_find_phy(edev);
+	if (phy) {
+		ret = phy_device_attach(phy, edev, adjust_link, flags, interface);
+
+		goto out;
+	}
+
 	if (addr >= 0) {
 		phy = mdiobus_scan(bus, addr);
 		if (IS_ERR(phy)) {
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
