Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEkC-0008VG-RC
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:32:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 17:32:37 +0100
Message-Id: <1351614757-20520-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351614757-20520-1-git-send-email-s.hauer@pengutronix.de>
References: <1351614757-20520-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mdiobus: do not scan the bus at registration time
To: barebox@lists.infradead.org

Scanning the bus can take some time. If we do not need the ethernet
device, this is unnecessary, so delay the scan until the phy device
iactually is needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c |   23 +----------------------
 drivers/net/phy/phy.c      |    4 ++--
 2 files changed, 3 insertions(+), 24 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 5025e3f..35319b4 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -36,7 +36,7 @@
  */
 int mdiobus_register(struct mii_bus *bus)
 {
-	int i, err;
+	int err;
 
 	if (NULL == bus ||
 			NULL == bus->read ||
@@ -59,29 +59,8 @@ int mdiobus_register(struct mii_bus *bus)
 	if (bus->reset)
 		bus->reset(bus);
 
-	for (i = 0; i < PHY_MAX_ADDR; i++) {
-		if ((bus->phy_mask & (1 << i)) == 0) {
-			struct phy_device *phydev;
-
-			phydev = mdiobus_scan(bus, i);
-			if (IS_ERR(phydev)) {
-				err = PTR_ERR(phydev);
-				goto error;
-			}
-		}
-	}
-
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 	return 0;
-
-error:
-	while (--i >= 0) {
-		if (bus->phy_map[i]) {
-			kfree(bus->phy_map[i]);
-			bus->phy_map[i] = NULL;
-		}
-	}
-	return err;
 }
 EXPORT_SYMBOL(mdiobus_register);
 
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 88c3ff7..8d36300 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -154,7 +154,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 
 	if (!edev->phydev) {
 		if (addr >= 0) {
-			dev = bus->phy_map[addr];
+			dev = mdiobus_scan(bus, addr);
 			if (!dev) {
 				ret = -EIO;
 				goto fail;
@@ -169,7 +169,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				goto fail;
 		} else {
 			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
-				dev = bus->phy_map[i];
+				dev = mdiobus_scan(bus, addr);
 				if (!dev || dev->attached_dev)
 					continue;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
