Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUVsZ-0001gq-SE
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 07:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Sep 2014 09:11:15 +0200
Message-Id: <1411024275-31766-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
References: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] net: phy: Use poller for periodic link check
To: barebox@lists.infradead.org

This continuously updates the link status in the background. The networking
code no longer has to periodically update the link status itself but instead
can only check for phydev->link.
With this we also always have link status changes printed to the console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig   |  1 +
 drivers/net/phy/phy.c | 57 +++++++++++++++++++++++++++++++++++++++++----------
 net/eth.c             | 23 +++++++--------------
 3 files changed, 54 insertions(+), 27 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index c99fcc8..b4dda53 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -20,6 +20,7 @@ config HAS_NETX_ETHER
 	bool
 
 config PHYLIB
+	select POLLER
 	bool
 
 menu "Network drivers"
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index f3dffca..980d81d 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -22,6 +22,7 @@
 #include <init.h>
 #include <net.h>
 #include <malloc.h>
+#include <poller.h>
 #include <linux/phy.h>
 #include <linux/phy.h>
 #include <linux/err.h>
@@ -50,22 +51,29 @@ int phy_update_status(struct phy_device *phydev)
 {
 	struct phy_driver *drv = to_phy_driver(phydev->dev.driver);
 	struct eth_device *edev = phydev->attached_dev;
+	struct device_d *dev;
 	int ret;
 	int oldspeed = phydev->speed, oldduplex = phydev->duplex;
+	int oldlink = phydev->link;
 
 	ret = drv->read_status(phydev);
 	if (ret)
 		return ret;
 
-	if (phydev->speed == oldspeed && phydev->duplex == oldduplex)
+	if (phydev->speed == oldspeed && phydev->duplex == oldduplex &&
+			phydev->link == oldlink)
 		return 0;
 
-	if (phydev->adjust_link)
+	if (phydev->adjust_link && edev)
 		phydev->adjust_link(edev);
 
+	dev = edev ? &edev->dev : &phydev->dev;
+
 	if (phydev->link)
-		dev_info(&edev->dev, "%dMbps %s duplex link detected\n",
-				phydev->speed, phydev->duplex ? "full" : "half");
+		dev_info(dev, "%dMbps %s duplex link detected\n", phydev->speed,
+			phydev->duplex ? "full" : "half");
+	else
+		dev_info(dev, "link down\n");
 
 	return 0;
 }
@@ -492,14 +500,13 @@ int phy_wait_aneg_done(struct phy_device *phydev)
 		return 0;
 
 	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
-		if (phy_aneg_done(phydev) > 0) {
-			phydev->link = 1;
-			return 0;
-		}
+		if (phy_aneg_done(phydev) > 0)
+			break;
 	}
 
-	phydev->link = 0;
-	return -ETIMEDOUT;
+	phy_update_status(phydev);
+
+	return phydev->link ? 0 : -ETIMEDOUT;
 }
 
 /**
@@ -650,8 +657,10 @@ int genphy_read_status(struct phy_device *phydev)
 	int lpagb = 0;
 
 	/* if force the status and link are set */
-	if (phydev->force)
+	if (phydev->force) {
+		phydev->link = 1;
 		return 0;
+	}
 
 	/* Update the link, but return if there
 	 * was an error */
@@ -897,6 +906,32 @@ static struct phy_driver genphy_driver = {
 		SUPPORTED_BNC,
 };
 
+static void phy_poll(struct poller_struct *poller)
+{
+	static uint64_t to;
+	struct device_d *dev;
+	struct phy_device *phy;
+
+	if (!to || is_timeout(to, 2 * SECOND)) {
+		bus_for_each_device(&mdio_bus_type, dev) {
+			phy = container_of(dev, struct phy_device, dev);
+			phy_update_status(phy);
+		}
+
+		to = get_time_ns();
+	}
+}
+
+static struct poller_struct phy_poller = {
+	.func = phy_poll,
+};
+
+static int phy_poller_register(void)
+{
+	return poller_register(&phy_poller);
+}
+late_initcall(phy_poller_register);
+
 static int generic_phy_register(void)
 {
 	return phy_driver_register(&genphy_driver);
diff --git a/net/eth.c b/net/eth.c
index 89bddba..79a0c92 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -29,7 +29,6 @@
 #include <malloc.h>
 
 static struct eth_device *eth_current;
-static uint64_t last_link_check;
 
 static LIST_HEAD(netdev_list);
 
@@ -173,26 +172,18 @@ int eth_complete(struct string_list *sl, char *instr)
 /*
  * Check for link if we haven't done so for longer.
  */
-static int eth_carrier_check(struct eth_device *edev, int force)
+static int eth_carrier_check(struct eth_device *edev)
 {
-	int ret;
-
 	if (!IS_ENABLED(CONFIG_PHYLIB))
 		return 0;
 
 	if (!edev->phydev)
 		return 0;
 
-	if (force)
-		phy_wait_aneg_done(edev->phydev);
+	if (edev->phydev->link)
+		return 0;
 
-	if (force || is_timeout(last_link_check, 5 * SECOND) ||
-			!edev->phydev->link) {
-		ret = phy_update_status(edev->phydev);
-		if (ret)
-			return ret;
-		last_link_check = get_time_ns();
-	}
+	phy_wait_aneg_done(edev->phydev);
 
 	return edev->phydev->link ? 0 : -ENETDOWN;
 }
@@ -214,7 +205,7 @@ static int eth_check_open(struct eth_device *edev)
 
 	edev->active = 1;
 
-	return eth_carrier_check(edev, 1);
+	return eth_carrier_check(edev);
 }
 
 int eth_send(struct eth_device *edev, void *packet, int length)
@@ -225,7 +216,7 @@ int eth_send(struct eth_device *edev, void *packet, int length)
 	if (ret)
 		return ret;
 
-	ret = eth_carrier_check(edev, 0);
+	ret = eth_carrier_check(edev);
 	if (ret)
 		return ret;
 
@@ -242,7 +233,7 @@ static int __eth_rx(struct eth_device *edev)
 	if (ret)
 		return ret;
 
-	ret = eth_carrier_check(edev, 0);
+	ret = eth_carrier_check(edev);
 	if (ret)
 		return ret;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
