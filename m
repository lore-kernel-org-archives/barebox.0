Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7A0-0007E4-Tn
 for barebox@lists.infradead.org; Tue, 16 Jun 2020 08:41:38 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Jun 2020 10:41:32 +0200
Message-Id: <20200616084134.22869-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/2] net: phy: port phy_interface_is_rgmii() from kernel
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

and remove duplicates from other drivers

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/dp83867.c |  6 ------
 drivers/net/phy/marvell.c |  6 ------
 include/linux/phy.h       | 21 +++++++++++++++++++++
 3 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index b3328b7e44..8e6f198ca2 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -177,12 +177,6 @@ static int dp83867_of_init(struct phy_device *phydev)
 			&dp83867->fifo_depth);
 }
 
-static inline bool phy_interface_is_rgmii(struct phy_device *phydev)
-{
-	return phydev->interface >= PHY_INTERFACE_MODE_RGMII &&
-			phydev->interface <= PHY_INTERFACE_MODE_RGMII_TXID;
-}
-
 static inline bool phy_interface_is_sgmii(struct phy_device *phydev)
 {
 	return phydev->interface == PHY_INTERFACE_MODE_SGMII ||
diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 73d6453b36..af39ed68fd 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -168,12 +168,6 @@ static int marvell_read_status(struct phy_device *phydev)
 
 #define MII_88E1510_GEN_CTRL_REG_1              0x14
 
-static inline bool phy_interface_is_rgmii(struct phy_device *phydev)
-{
-	return phydev->interface >= PHY_INTERFACE_MODE_RGMII &&
-		phydev->interface <= PHY_INTERFACE_MODE_RGMII_TXID;
-};
-
 /*
  * Set and/or override some configuration registers based on the
  * marvell,reg-init property stored in the of_node for the phydev.
diff --git a/include/linux/phy.h b/include/linux/phy.h
index a9fdf44f1a..eec1332c9d 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -353,6 +353,27 @@ static inline int phy_clear_bits(struct phy_device *phydev, u32 regnum, u16 val)
 	return phy_modify(phydev, regnum, val, 0);
 }
 
+/**
+ * phy_interface_mode_is_rgmii - Convenience function for testing if a
+ * PHY interface mode is RGMII (all variants)
+ * @mode: the phy_interface_t enum
+ */
+static inline bool phy_interface_mode_is_rgmii(phy_interface_t mode)
+{
+	return mode >= PHY_INTERFACE_MODE_RGMII &&
+		mode <= PHY_INTERFACE_MODE_RGMII_TXID;
+};
+
+/**
+ * phy_interface_is_rgmii - Convenience function for testing if a PHY interface
+ * is RGMII (all variants)
+ * @phydev: the phy_device struct
+ */
+static inline bool phy_interface_is_rgmii(struct phy_device *phydev)
+{
+	return phy_interface_mode_is_rgmii(phydev->interface);
+};
+
 int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
