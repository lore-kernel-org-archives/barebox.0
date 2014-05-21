Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xb-1w
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:55 +0200
Message-Id: <1400674740-6467-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] net: phy: Support limiting phy speed in the devicetree
To: barebox@lists.infradead.org

Even when both the ethernet controller and the phy support certain
features a board may have additional limitations. Allow specifying
it in the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 36 +++++++++++++++++++++++++++++++++++-
 include/linux/phy.h        | 22 +++++++++++++++-------
 2 files changed, 50 insertions(+), 8 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index ca01673..3adc944 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -242,6 +242,39 @@ static struct file_operations phydev_ops = {
 	.lseek = dev_lseek_default,
 };
 
+static void of_set_phy_supported(struct phy_device *phydev)
+{
+	struct device_node *node = phydev->dev.device_node;
+	u32 max_speed;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return;
+
+	if (!node)
+		return;
+
+	if (!of_property_read_u32(node, "max-speed", &max_speed)) {
+		/*
+		 * The default values for phydev->supported are provided by the PHY
+		 * driver "features" member, we want to reset to sane defaults fist
+		 * before supporting higher speeds.
+		 */
+		phydev->supported &= PHY_DEFAULT_FEATURES;
+
+		switch (max_speed) {
+		default:
+			return;
+
+		case SPEED_1000:
+			phydev->supported |= PHY_1000BT_FEATURES;
+		case SPEED_100:
+			phydev->supported |= PHY_100BT_FEATURES;
+		case SPEED_10:
+			phydev->supported |= PHY_10BT_FEATURES;
+		}
+	}
+}
+
 static int mdio_bus_probe(struct device_d *_dev)
 {
 	struct phy_device *dev = to_phy_device(_dev);
@@ -275,7 +308,8 @@ static int mdio_bus_probe(struct device_d *_dev)
 	 * a controller will attach, and may modify one
 	 * or both of these values */
 	dev->supported = drv->features;
-	dev->advertising = drv->features;
+	of_set_phy_supported(dev);
+	dev->advertising = dev->supported;
 
 	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
 	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 9567c43..3cdbc6e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -20,18 +20,26 @@
 #include <linux/ethtool.h>
 #include <linux/mii.h>
 
-#define PHY_BASIC_FEATURES	(SUPPORTED_10baseT_Half | \
-				 SUPPORTED_10baseT_Full | \
-				 SUPPORTED_100baseT_Half | \
-				 SUPPORTED_100baseT_Full | \
-				 SUPPORTED_Autoneg | \
+#define PHY_DEFAULT_FEATURES    (SUPPORTED_Autoneg | \
 				 SUPPORTED_TP | \
 				 SUPPORTED_MII)
 
-#define PHY_GBIT_FEATURES	(PHY_BASIC_FEATURES | \
-				 SUPPORTED_1000baseT_Half | \
+#define PHY_10BT_FEATURES       (SUPPORTED_10baseT_Half | \
+				 SUPPORTED_10baseT_Full)
+
+#define PHY_100BT_FEATURES      (SUPPORTED_100baseT_Half | \
+				 SUPPORTED_100baseT_Full)
+
+#define PHY_1000BT_FEATURES     (SUPPORTED_1000baseT_Half | \
 				 SUPPORTED_1000baseT_Full)
 
+#define PHY_BASIC_FEATURES      (PHY_10BT_FEATURES | \
+				 PHY_100BT_FEATURES | \
+				 PHY_DEFAULT_FEATURES)
+
+#define PHY_GBIT_FEATURES       (PHY_BASIC_FEATURES | \
+				 PHY_1000BT_FEATURES)
+
 /* Interface Mode definitions */
 typedef enum {
 	PHY_INTERFACE_MODE_NA,
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
