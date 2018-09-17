Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1rkd-0002cE-Oz
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 11:31:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Sep 2018 13:31:23 +0200
Message-Id: <20180917113123.3268-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: mdio: Do not warn about invalid PHY address
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

of_mdiobus_register is now called with nodes from ethernet devices.
Their child nodes are not necessarily phy nodes. For am335x devices
we get several warnings now:

miibus0: /ocp/ethernet@4a100000/mdio@4a101000 PHY address 1242566656 is too large
miibus0: /ocp/ethernet@4a100000/slave@4a100200 has invalid PHY address
miibus0: /ocp/ethernet@4a100000/slave@4a100300 has invalid PHY address
miibus0: /ocp/ethernet@4a100000/cpsw-phy-sel@44e10650 PHY address 1155597904 is too large

None of the nodes is a phy node, so silence the warnings and turn them
into dev_dbg.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 02e47f6a14..7d53bcc3da 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -179,9 +179,12 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 
 	/* Loop over the child nodes and register a phy_device for each one */
 	for_each_available_child_of_node(np, child) {
+		if (!of_mdiobus_child_is_phy(child))
+			continue;
+
 		ret = of_property_read_u32(child, "reg", &addr);
 		if (ret) {
-			dev_err(&mdio->dev, "%s has invalid PHY address\n",
+			dev_dbg(&mdio->dev, "%s has invalid PHY address\n",
 				child->full_name);
 			continue;
 		}
@@ -192,9 +195,6 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 			continue;
 		}
 
-		if (!of_mdiobus_child_is_phy(child))
-			continue;
-
 		of_mdiobus_reset_phy(mdio, child);
 		of_mdiobus_register_phy(mdio, child, addr);
 	}
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
