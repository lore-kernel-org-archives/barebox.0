Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfwAn-0005gU-0m
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 17:20:45 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue,  4 Dec 2012 18:20:36 +0100
Message-Id: <1354641636-23483-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] net: phy: mdio_bus: fix inverted logic in mdio_bus_match
To: barebox@lists.infradead.org

The bus match functions return 0 on success.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 9424179..aaac559 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -126,7 +126,11 @@ static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
 	struct phy_device *phydev = to_phy_device(dev);
 	struct phy_driver *phydrv = to_phy_driver(drv);
 
-	return ((phydrv->phy_id & phydrv->phy_id_mask) ==
+	pr_debug("%s: trying to match driver %s: (0x%08x & 0x%08x) ~ 0x%08x\n",
+		dev->name, drv->name,
+		phydev->phy_id, phydrv->phy_id_mask, phydrv->phy_id);
+
+	return ((phydrv->phy_id & phydrv->phy_id_mask) !=
 		(phydev->phy_id & phydrv->phy_id_mask));
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
