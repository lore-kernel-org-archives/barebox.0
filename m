Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePVE3-0001kS-ON
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 15:15:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1ePVDK-0007u4-V6
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 16:14:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 14 Dec 2017 16:14:22 +0100
Message-Id: <20171214151422.11233-1-l.stach@pengutronix.de>
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
Subject: [PATCH] net: phy: scan PHYs referenced by phandle
To: barebox@lists.infradead.org

If we point to a PHY node by phandle, that PHY might well be on a MDIO
bus that hasn't been scanned when we look for the PHY. Fortunately we
know exactly where to look for the PHY, so make sure to scan the bus
at the right address.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/phy/phy.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 35a9ce7ea823..9993fe5c30fd 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -319,6 +319,8 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 {
 	struct device_d *dev;
 	struct device_node *phy_node;
+	struct mii_bus *bus;
+	int addr = -1;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return NULL;
@@ -340,6 +342,18 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 	if (!phy_node)
 		return NULL;
 
+	of_property_read_u32(phy_node, "reg", &addr);
+	for_each_mii_bus(bus) {
+		if (addr < 0)
+			break;
+
+		if (bus->parent->device_node == phy_node->parent) {
+			struct phy_device *phy = mdiobus_scan(bus, addr);
+			if (!IS_ERR(phy))
+				return phy;
+		}
+	}
+
 	bus_for_each_device(&mdio_bus_type, dev) {
 		if (dev->device_node == phy_node)
 			return container_of(dev, struct phy_device, dev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
