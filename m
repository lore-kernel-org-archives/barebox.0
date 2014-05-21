Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UV-0006zS-Sd
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:18:57 +0200
Message-Id: <1400674740-6467-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] net: phy: remove now unused of_phy_device_connect
To: barebox@lists.infradead.org

Since barebox handles phys from devicetree transparently we no longer
need of_phy_device_connect.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 31 -------------------------------
 include/linux/phy.h   | 14 --------------
 2 files changed, 45 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 257df74..b0e0c1e 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -376,37 +376,6 @@ out:
 	return ret;
 }
 
-#if defined(CONFIG_OFTREE)
-int of_phy_device_connect(struct eth_device *edev, struct device_node *phy_np,
-			  void (*adjust_link) (struct eth_device *edev),
-			  u32 flags, phy_interface_t interface)
-{
-	struct device_node *bus_np;
-	struct mii_bus *miibus;
-	int phy_addr = -ENODEV;
-
-	if (!phy_np)
-		return -EINVAL;
-
-	of_property_read_u32(phy_np, "reg", &phy_addr);
-
-	bus_np = of_get_parent(phy_np);
-	if (!bus_np)
-		return -ENODEV;
-
-	for_each_mii_bus(miibus) {
-		if (miibus->parent && miibus->parent->device_node == bus_np)
-			return phy_device_connect(edev, miibus, phy_addr,
-					  adjust_link, flags, interface);
-	}
-
-	dev_err(&edev->dev, "unable to mdio bus for phy %s\n",
-		phy_np->full_name);
-
-	return -ENODEV;
-}
-#endif
-
 /* Generic PHY support and helper functions */
 
 /**
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 3cdbc6e..3229aa6 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -288,20 +288,6 @@ int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface);
 
-#if defined(CONFIG_OFTREE)
-int of_phy_device_connect(struct eth_device *edev, struct device_node *phy_np,
-			  void (*adjust_link) (struct eth_device *edev),
-			  u32 flags, phy_interface_t interface);
-#else
-static inline int of_phy_device_connect(struct eth_device *edev,
-				struct device_node *phy_np,
-				void (*adjust_link) (struct eth_device *edev),
-				u32 flags, phy_interface_t interface)
-{
-	return -ENOSYS;
-}
-#endif
-
 int phy_update_status(struct phy_device *phydev);
 int phy_wait_aneg_done(struct phy_device *phydev);
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
