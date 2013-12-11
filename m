Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hK-PQ
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:11 +0100
Message-Id: <1386762077-23205-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] net: phy: move duplicated code out of if/else
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 27 +++++++++------------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index a83b35c..fb4cb11 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -269,13 +269,6 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 			ret = -EIO;
 			goto fail;
 		}
-
-		dev->interface = interface;
-		dev->dev_flags = flags;
-
-		ret = phy_register_device(dev);
-		if (ret)
-			goto fail;
 	} else {
 		for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
 			/* skip masked out PHY addresses */
@@ -283,20 +276,18 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				continue;
 
 			dev = mdiobus_scan(bus, i);
-			if (IS_ERR(dev) || dev->attached_dev)
-				continue;
-
-			dev->interface = interface;
-			dev->dev_flags = flags;
-
-			ret = phy_register_device(dev);
-			if (ret)
-				goto fail;
-
-			break;
+			if (!IS_ERR(dev) && !dev->attached_dev)
+                                break;
 		}
 	}
 
+	dev->interface = interface;
+	dev->dev_flags = flags;
+
+	ret = phy_register_device(dev);
+	if (ret)
+		goto fail;
+
 	edev->phydev = dev;
 	dev->attached_dev = edev;
 	phy_config_aneg(edev->phydev);
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
