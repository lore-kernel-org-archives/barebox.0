Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hM-PT
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:13 +0100
Message-Id: <1386762077-23205-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] net: phy: track registered state of a phy device
To: barebox@lists.infradead.org

With this phy_device_connect only registers a phy device if it wasn't
registered already. This allows us to register phy devices outside
of ethernet drivers. phy_device_connect will now pick up an already
registered phy given that it's not attached to another ethernet device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 21 +++++++++++++++++----
 include/linux/phy.h   |  2 ++
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 37f6647..74ef3d9 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -236,17 +236,28 @@ static int phy_register_device(struct phy_device* dev)
 {
 	int ret;
 
+	if (dev->registered)
+		return -EBUSY;
+
 	dev->dev.parent = &dev->bus->dev;
 
 	ret = register_device(&dev->dev);
 	if (ret)
 		return ret;
 
+	dev->registered = 1;
+
 	if (dev->dev.driver)
 		return 0;
 
 	dev->dev.driver = &genphy_driver.drv;
-	return device_probe(&dev->dev);
+	ret = device_probe(&dev->dev);
+	if (ret) {
+		unregister_device(&dev->dev);
+		dev->registered = 0;
+	}
+
+	return ret;
 }
 
 /* Automatically gets and returns the PHY device */
@@ -287,9 +298,11 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	dev->interface = interface;
 	dev->dev_flags = flags;
 
-	ret = phy_register_device(dev);
-	if (ret)
-		goto fail;
+	if (!dev->registered) {
+		ret = phy_register_device(dev);
+		if (ret)
+			goto fail;
+	}
 
 	edev->phydev = dev;
 	dev->attached_dev = edev;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index a1c629e..19e4d20 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -161,6 +161,8 @@ struct phy_device {
 	int autoneg;
 	int force;
 
+	int registered;
+
 	/* private data pointer */
 	/* For use by PHYs to maintain extra state */
 	void *priv;
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
