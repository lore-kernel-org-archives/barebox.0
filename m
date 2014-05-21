Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xY-1x
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:52 +0200
Message-Id: <1400674740-6467-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] net: phy: move setting of phy_map to phy_register_device
To: barebox@lists.infradead.org

The phy_map should be valid once a phy_device is registered. This
allows registering phys outside of mdiobus_scan.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 2 --
 drivers/net/phy/phy.c      | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 895ead0..5c4dea4 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -114,8 +114,6 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 	if (IS_ERR(phydev))
 		return phydev;
 
-	bus->phy_map[addr] = phydev;
-
 	return phydev;
 }
 EXPORT_SYMBOL(mdiobus_scan);
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index a8a8a2c..1e26e45 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -245,6 +245,8 @@ int phy_register_device(struct phy_device* dev)
 	if (ret)
 		return ret;
 
+	dev->bus->phy_map[dev->addr] = dev;
+
 	dev->registered = 1;
 
 	if (dev->dev.driver)
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
