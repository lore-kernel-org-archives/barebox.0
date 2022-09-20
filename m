Delivery-date: Tue, 20 Sep 2022 14:59:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oacqS-00ATGk-DU
	for lore@lore.pengutronix.de; Tue, 20 Sep 2022 14:59:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oacqQ-0005I7-Pw
	for lore@pengutronix.de; Tue, 20 Sep 2022 14:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lxLf5MoBoGiVmzuswN/8SLOjLoep7Ce2956HqwlWT4s=; b=zJSGnrG4vHgOyPqk0kPNBg/y80
	nfnRPDlSU0bQEBIwwt+f3dBObxG9UyqGGiRAUfcSU3tti8jDEkr6EjpW05OHYgoUhC8QF76F//WmS
	Y6OHKLAysNcQl2lXMLQue/rp/qV8O3bbJIaN+umFQrj6WT3ILJdDfJmpwB9qyfpquI0da3xmUKVMg
	KSGHCvvTngQ46nFJmeBb+LOk3Rbz8jGA44/w8GbVWf68wBYKRDTArsvL8/tQ8ApS+9YHhLrDpdlWr
	1V4BSaOpZzdgVNqnPXXBA3jyqwlxyb0Th73TJ/hTebIcIQxm3mM14WHLXPB7xD0pPRCMB0upY+v2l
	MW3P60og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacod-003sHq-Mo; Tue, 20 Sep 2022 12:57:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacms-003rL6-MK
	for barebox@lists.infradead.org; Tue, 20 Sep 2022 12:55:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oacmm-0002zg-Ug; Tue, 20 Sep 2022 14:55:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oacmn-001rYq-LN; Tue, 20 Sep 2022 14:55:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oacml-00ATcp-8b; Tue, 20 Sep 2022 14:55:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Sep 2022 14:55:32 +0200
Message-Id: <20220920125533.2497108-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220920125533.2497108-1-o.rempel@pengutronix.de>
References: <20220920125533.2497108-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_055542_852292_6639C9F1 
X-CRM114-Status: GOOD (  19.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/3] net: add support for MDIO devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On the MDIO bus we can have PHYs and some other type of devices.
Typical not_PHY MDIO devices do not have easy detectable ID and can't be
used as-is by the PHY framework. So, add additional handler to register
MDIO devices and drivers alongside with the PHY devices/drivers.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 101 ++++++++++++++++++++++++++++++-------
 drivers/net/phy/phy.c      |   2 +
 include/linux/mdio.h       |  14 +++++
 include/linux/phy.h        |   1 +
 4 files changed, 101 insertions(+), 17 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index e37ab79f3e..f06ab68f50 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -19,6 +19,7 @@
 #include <clock.h>
 #include <net.h>
 #include <errno.h>
+#include <linux/mdio.h>
 #include <linux/phy.h>
 #include <linux/err.h>
 #include <of_device.h>
@@ -29,6 +30,56 @@
 
 LIST_HEAD(mii_bus_list);
 
+static struct phy_device *mdio_device_create(struct mii_bus *bus, int addr)
+{
+	struct phy_device *phydev;
+
+	phydev = xzalloc(sizeof(*phydev));
+
+	phydev->addr = addr;
+	phydev->bus = bus;
+	phydev->dev.bus = &mdio_bus_type;
+
+	dev_set_name(&phydev->dev, "mdio%d-dev%02x", phydev->bus->dev.id,
+		     phydev->addr);
+	phydev->dev.id = DEVICE_ID_SINGLE;
+
+	return phydev;
+}
+
+static int mdio_register_device(struct phy_device *phydev)
+{
+	int ret;
+
+	if (phydev->registered)
+		return -EBUSY;
+
+	if (!phydev->dev.parent)
+		phydev->dev.parent = &phydev->bus->dev;
+
+	ret = register_device(&phydev->dev);
+	if (ret)
+		return ret;
+
+	if (phydev->bus)
+		phydev->bus->phy_map[phydev->addr] = phydev;
+
+	phydev->registered = 1;
+
+	if (phydev->dev.driver)
+		return 0;
+
+	return ret;
+}
+
+int mdio_driver_register(struct phy_driver *phydrv)
+{
+	phydrv->drv.bus = &mdio_bus_type;
+	phydrv->is_phy = false;
+
+	return register_driver(&phydrv->drv);
+}
+
 int mdiobus_detect(struct device_d *dev)
 {
 	struct mii_bus *mii = to_mii_bus(dev);
@@ -84,6 +135,28 @@ static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *chi
 	return 0;
 }
 
+static int of_mdiobus_register_device(struct mii_bus *mdio,
+				      struct device_node *child, u32 addr)
+{
+	struct phy_device *mdiodev;
+	int ret;
+
+	mdiodev = mdio_device_create(mdio, addr);
+	if (IS_ERR(mdiodev))
+		return PTR_ERR(mdiodev);
+
+	mdiodev->dev.device_node = child;
+
+	ret = mdio_register_device(mdiodev);
+	if (ret)
+		return ret;
+
+	dev_dbg(&mdio->dev, "registered mdio device %s at address %i\n",
+		child->name, addr);
+
+	return 0;
+}
+
 /*
  * Node is considered a PHY node if:
  * o Compatible string of "ethernet-phy-idX.X"
@@ -176,20 +249,6 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 
 	/* Loop over the child nodes and register a phy_device for each one */
 	for_each_available_child_of_node(np, child) {
-		if (!of_mdiobus_child_is_phy(child)) {
-			if (of_get_property(child, "compatible", NULL)) {
-				if (!of_platform_device_create(child,
-							       &mdio->dev)) {
-					dev_err(&mdio->dev,
-						"Failed to create device "
-						"for %s\n",
-						child->full_name);
-				}
-			}
-
-			continue;
-		}
-
 		ret = of_property_read_u32(child, "reg", &addr);
 		if (ret) {
 			dev_dbg(&mdio->dev, "%s has invalid PHY address\n",
@@ -205,7 +264,11 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 
 		of_pinctrl_select_state_default(child);
 		of_mdiobus_reset_phy(mdio, child);
-		of_mdiobus_register_phy(mdio, child, addr);
+
+		if (of_mdiobus_child_is_phy(child))
+			of_mdiobus_register_phy(mdio, child, addr);
+		else
+			of_mdiobus_register_device(mdio, child, addr);
 	}
 
 	return 0;
@@ -356,9 +419,13 @@ static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
 	struct phy_device *phydev = to_phy_device(dev);
 	struct phy_driver *phydrv = to_phy_driver(drv);
 
-	if ((phydrv->phy_id & phydrv->phy_id_mask) ==
-	    (phydev->phy_id & phydrv->phy_id_mask))
+	if (phydrv->is_phy) {
+		if ((phydrv->phy_id & phydrv->phy_id_mask) ==
+		    (phydev->phy_id & phydrv->phy_id_mask))
 		return 0;
+	} else {
+		return device_match(dev, drv);
+	}
 
 	return 1;
 }
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 60b5839b40..56ec8a28df 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -933,6 +933,8 @@ int phy_driver_register(struct phy_driver *phydrv)
 {
 	phydrv->drv.bus = &mdio_bus_type;
 
+	phydrv->is_phy = true;
+
 	if (!phydrv->config_init)
 		phydrv->config_init = genphy_config_init;
 
diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index b910b05cec..a4aee49d8d 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -326,4 +326,18 @@ static inline __u16 mdio_phy_id_c45(int prtad, int devad)
 
 #define MDIO_DEVAD_NONE			(-1)
 
+struct phy_driver;
+
+int mdio_driver_register(struct phy_driver *drv);
+
+#define mdio_register_driver_macro(level, drv)		\
+        static int __init drv##_register(void)		\
+        {						\
+                return mdio_driver_register(&drv);	\
+        }						\
+        level##_initcall(drv##_register)
+
+#define device_mdio_driver(drv)	\
+        mdio_register_driver_macro(device, drv)
+
 #endif /* _UAPI__LINUX_MDIO_H__ */
diff --git a/include/linux/phy.h b/include/linux/phy.h
index a4c3f43c06..ba1740ff55 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -223,6 +223,7 @@ struct phy_driver {
 	unsigned int phy_id_mask;
 	u32 features;
 	const void *driver_data;
+	bool is_phy;
 
 	/*
 	 * Called to initialize the PHY,
-- 
2.30.2



