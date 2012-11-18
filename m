Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4Lj-0001AV-GQ
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 12:51:51 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1215EDC398A
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 13:59:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 18 Nov 2012 13:49:40 +0100
Message-Id: <1353242985-7539-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121118124627.GE8327@game.jcrosoft.org>
 <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] phylib: fix generic phy driver probe
To: barebox@lists.infradead.org

the generic phy driver is used if no driver are found

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/Kconfig   |    8 ++------
 drivers/net/phy/Makefile  |    1 -
 drivers/net/phy/generic.c |   36 ------------------------------------
 drivers/net/phy/phy.c     |   34 ++++++++++++++++++++++++++++++++--
 4 files changed, 34 insertions(+), 45 deletions(-)
 delete mode 100644 drivers/net/phy/generic.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 616b539..3f7c150 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -8,15 +8,11 @@ if PHYLIB
 
 comment "MII PHY device drivers"
 
-config GENERIC_PHY
-	bool "Drivers for the Generic PHYs"
-	default y
-
-endif
-
 config SMSC_PHY
 	bool "Drivers for SMSC PHYs"
 	---help---
 	  Currently supports the LAN83C185, LAN8187 and LAN8700 PHYs
 
+endif
+
 endmenu
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 0caeb70..dfc709a 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,3 +1,2 @@
 obj-y += phy.o mdio_bus.o
-obj-$(CONFIG_GENERIC_PHY) += generic.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/generic.c b/drivers/net/phy/generic.c
deleted file mode 100644
index 3f5f127..0000000
--- a/drivers/net/phy/generic.c
+++ /dev/null
@@ -1,36 +0,0 @@
-/*
- * Copyright (c) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-#include <common.h>
-#include <linux/phy.h>
-#include <init.h>
-
-static struct phy_driver generic_phy = {
-	.drv.name = "Generic PHY",
-	.phy_id = PHY_ANY_UID,
-	.phy_id_mask = PHY_ANY_UID,
-	.features = 0,
-};
-
-static int generic_phy_register(void)
-{
-	return phy_driver_register(&generic_phy);
-}
-device_initcall(generic_phy_register);
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 4478d9f..2fd0440 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -19,6 +19,7 @@
 
 #include <common.h>
 #include <driver.h>
+#include <init.h>
 #include <net.h>
 #include <malloc.h>
 #include <linux/phy.h>
@@ -27,6 +28,7 @@
 
 #define PHY_AN_TIMEOUT	10
 
+static struct phy_driver genphy_driver;
 static int genphy_config_init(struct phy_device *phydev);
 
 int phy_update_status(struct phy_device *dev)
@@ -142,6 +144,21 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
 	return dev;
 }
 
+static int phy_register_device(struct phy_device* dev)
+{
+	int ret;
+
+	ret = register_device(&dev->dev);
+	if (ret)
+		return ret;
+
+	if (dev->dev.driver)
+		return 0;
+
+	dev->dev.driver = &genphy_driver.drv;
+	return device_probe(&dev->dev);
+}
+
 /* Automatically gets and returns the PHY device */
 int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
@@ -164,7 +181,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 			dev->interface = interface;
 			dev->dev_flags = flags;
 
-			ret = register_device(&dev->dev);
+			ret = phy_register_device(dev);
 			if (ret)
 				goto fail;
 		} else {
@@ -181,7 +198,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 				dev->interface = interface;
 				dev->dev_flags = flags;
 
-				ret = register_device(&dev->dev);
+				ret = phy_register_device(dev);
 				if (ret)
 					goto fail;
 
@@ -597,3 +614,16 @@ int phy_drivers_register(struct phy_driver *new_driver, int n)
 	}
 	return ret;
 }
+
+static struct phy_driver genphy_driver = {
+	.drv.name = "Generic PHY",
+	.phy_id = PHY_ANY_UID,
+	.phy_id_mask = PHY_ANY_UID,
+	.features = 0,
+};
+
+static int generic_phy_register(void)
+{
+	return phy_driver_register(&genphy_driver);
+}
+device_initcall(generic_phy_register);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
