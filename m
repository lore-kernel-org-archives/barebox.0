Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hN-PS
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:14 +0100
Message-Id: <1386762077-23205-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] net: phy: move phy_init_hw to phy_device_connect
To: barebox@lists.infradead.org

This is needed when a phy gets registered outsize of phy_device_connect
but has to be attached to an ethernet device later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 8 --------
 drivers/net/phy/phy.c      | 9 +++++++++
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index b0fbf2d..84c05ad 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -181,14 +181,6 @@ static int mdio_bus_probe(struct device_d *_dev)
 	dev->supported = drv->features;
 	dev->advertising = drv->features;
 
-	ret = phy_init_hw(dev);
-	if (ret)
-		goto err;
-
-	/* Sanitize settings based on PHY capabilities */
-	if ((dev->supported & SUPPORTED_Autoneg) == 0)
-		dev->autoneg = AUTONEG_DISABLE;
-
 	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
 	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
 
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 74ef3d9..b05a313 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -306,6 +306,15 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 
 	edev->phydev = dev;
 	dev->attached_dev = edev;
+
+	ret = phy_init_hw(dev);
+	if (ret)
+		goto fail;
+
+	/* Sanitize settings based on PHY capabilities */
+	if ((dev->supported & SUPPORTED_Autoneg) == 0)
+		dev->autoneg = AUTONEG_DISABLE;
+
 	phy_config_aneg(edev->phydev);
 
 	dev->adjust_link = adjust_link;
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
