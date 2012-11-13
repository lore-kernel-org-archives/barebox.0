Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYL06-0004qQ-FO
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 18:14:21 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3455710500D9
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 19:09:39 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 19:00:01 +0100
Message-Id: <1352829601-5352-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] phylib: add fixup support
To: barebox@lists.infradead.org

if board need specific phy fixup they can register it and then the code will
executed only if needed

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/mdio_bus.c |   19 +++++----
 drivers/net/phy/phy.c      |   96 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/phy.h        |   18 +++++++++
 3 files changed, 125 insertions(+), 8 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 35319b4..e36641e 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -153,6 +153,7 @@ static int mdio_bus_probe(struct device_d *_dev)
 	struct phy_device *dev = to_phy_device(_dev);
 	struct phy_driver *drv = to_phy_driver(_dev->driver);
 
+	int ret;
 	char str[16];
 
 	dev->attached_dev->phydev = dev;
@@ -160,14 +161,9 @@ static int mdio_bus_probe(struct device_d *_dev)
 	dev_add_child(dev->dev.parent, _dev);
 
 	if (drv->probe) {
-		int ret;
-
 		ret = drv->probe(dev);
-		if (ret) {
-			dev->attached_dev->phydev = NULL;
-			dev->attached_dev = NULL;
-			return ret;
-		}
+		if (ret)
+			goto err;
 	}
 
 	if (dev->dev_flags) {
@@ -184,7 +180,9 @@ static int mdio_bus_probe(struct device_d *_dev)
 	dev->supported = drv->features;
 	dev->advertising = drv->features;
 
-	drv->config_init(dev);
+	ret = phy_init_hw(dev);
+	if (ret)
+		goto err;
 
 	/* Sanitize settings based on PHY capabilities */
 	if ((dev->supported & SUPPORTED_Autoneg) == 0)
@@ -201,6 +199,11 @@ static int mdio_bus_probe(struct device_d *_dev)
 	devfs_create(&dev->cdev);
 
 	return 0;
+
+err:
+	dev->attached_dev->phydev = NULL;
+	dev->attached_dev = NULL;
+	return ret;
 }
 
 static void mdio_bus_remove(struct device_d *_dev)
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 8d36300..7bd4003 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -53,6 +53,87 @@ int phy_update_status(struct phy_device *dev)
 	return 0;
 }
 
+static LIST_HEAD(phy_fixup_list);
+
+/*
+ * Creates a new phy_fixup and adds it to the list
+ * @bus_id: A string which matches phydev->dev.bus_id (or PHY_ANY_ID)
+ * @phy_uid: Used to match against phydev->phy_id (the UID of the PHY)
+ * 	It can also be PHY_ANY_UID
+ * @phy_uid_mask: Applied to phydev->phy_id and fixup->phy_uid before
+ * 	comparison
+ * @run: The actual code to be run when a matching PHY is found
+ */
+int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
+		int (*run)(struct phy_device *))
+{
+	struct phy_fixup *fixup;
+
+	fixup = kzalloc(sizeof(struct phy_fixup), GFP_KERNEL);
+	if (!fixup)
+		return -ENOMEM;
+
+	strlcpy(fixup->bus_id, bus_id, sizeof(fixup->bus_id));
+	fixup->phy_uid = phy_uid;
+	fixup->phy_uid_mask = phy_uid_mask;
+	fixup->run = run;
+
+	list_add_tail(&fixup->list, &phy_fixup_list);
+
+	return 0;
+}
+
+/* Registers a fixup to be run on any PHY with the UID in phy_uid */
+int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
+		int (*run)(struct phy_device *))
+{
+	return phy_register_fixup(PHY_ANY_ID, phy_uid, phy_uid_mask, run);
+}
+
+/* Registers a fixup to be run on the PHY with id string bus_id */
+int phy_register_fixup_for_id(const char *bus_id,
+		int (*run)(struct phy_device *))
+{
+	return phy_register_fixup(bus_id, PHY_ANY_UID, 0xffffffff, run);
+}
+
+/*
+ * Returns 1 if fixup matches phydev in bus_id and phy_uid.
+ * Fixups can be set to match any in one or more fields.
+ */
+static int phy_needs_fixup(struct phy_device *phydev, struct phy_fixup *fixup)
+{
+	if (strcmp(fixup->bus_id, dev_name(&phydev->dev)) != 0)
+		if (strcmp(fixup->bus_id, PHY_ANY_ID) != 0)
+			return 0;
+
+	if ((fixup->phy_uid & fixup->phy_uid_mask) !=
+			(phydev->phy_id & fixup->phy_uid_mask))
+		if (fixup->phy_uid != PHY_ANY_UID)
+			return 0;
+
+	return 1;
+}
+/* Runs any matching fixups for this phydev */
+int phy_scan_fixups(struct phy_device *phydev)
+{
+	struct phy_fixup *fixup;
+
+	list_for_each_entry(fixup, &phy_fixup_list, list) {
+		if (phy_needs_fixup(phydev, fixup)) {
+			int err;
+
+			err = fixup->run(phydev);
+
+			if (err < 0) {
+				return err;
+			}
+		}
+	}
+
+	return 0;
+}
+
 struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
 {
 	struct phy_device *dev;
@@ -581,3 +662,18 @@ int phy_driver_register(struct phy_driver *phydrv)
 
 	return register_driver(&phydrv->drv);
 }
+
+int phy_init_hw(struct phy_device *phydev)
+{
+	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
+	int ret;
+
+	if (!phydrv || !phydrv->config_init)
+		return 0;
+
+	ret = phy_scan_fixups(phydev);
+	if (ret < 0)
+		return ret;
+
+	return phydrv->config_init(phydev);
+}
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 76f9edb..fa21984 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -225,9 +225,19 @@ struct phy_driver {
 #define PHY_ANY_ID "MATCH ANY PHY"
 #define PHY_ANY_UID 0xffffffff
 
+/* A Structure for boards to register fixups with the PHY Lib */
+struct phy_fixup {
+	struct list_head list;
+	char bus_id[20];
+	u32 phy_uid;
+	u32 phy_uid_mask;
+	int (*run)(struct phy_device *phydev);
+};
+
 int phy_driver_register(struct phy_driver *drv);
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
+int phy_init_hw(struct phy_device *phydev);
 
 /**
  * phy_read - Convenience function for reading a given PHY register
@@ -265,5 +275,13 @@ int genphy_config_advert(struct phy_device *phydev);
 int genphy_setup_forced(struct phy_device *phydev);
 int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id);
 
+int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
+		int (*run)(struct phy_device *));
+int phy_register_fixup_for_id(const char *bus_id,
+		int (*run)(struct phy_device *));
+int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
+		int (*run)(struct phy_device *));
+int phy_scan_fixups(struct phy_device *phydev);
+
 extern struct bus_type mdio_bus_type;
 #endif /* __PHYDEV_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
