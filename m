Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MH-0v
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:43 +0200
Message-Id: <1365343255-26497-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/21] treewide: Use dev_add_param_int_ro where possible
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/hw_version.c |  6 ++----
 arch/arm/boards/at91sam9x5ek/hw_version.c   |  6 ++----
 arch/arm/boards/sama5d3xek/hw_version.c     |  6 ++----
 drivers/amba/bus.c                          |  9 ++-------
 drivers/input/qt1070.c                      |  6 ++----
 drivers/mtd/core.c                          | 13 ++++---------
 drivers/net/phy/mdio_bus.c                  |  8 ++------
 drivers/usb/core/usb.c                      | 19 ++++++++++---------
 8 files changed, 26 insertions(+), 47 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
index be910df..8e72901 100644
--- a/arch/arm/boards/at91sam9m10ihd/hw_version.c
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -194,10 +194,8 @@ static void at91sam9m10ihd_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "board", info.board_name);
 	sprintf(str, "%.2s", info.vendor_country);
 	dev_add_param_fixed(dev, "country", str);
-	sprintf(str, "%d", info.year);
-	dev_add_param_fixed(dev, "year", str);
-	sprintf(str, "%d", info.week);
-	dev_add_param_fixed(dev, "week", str);
+	dev_add_param_int_ro(dev, "year", info.year, "%d");
+	dev_add_param_int_ro(dev, "week", info.week, "%d");
 	sprintf(str, "%c", info.revision_code);
 	dev_add_param_fixed(dev, "revision_code", str);
 	sprintf(str, "%c", info.revision_id);
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 76d4e1b..91af331 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -219,10 +219,8 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "board", info.board_name);
 	sprintf(str, "%.2s", info.vendor_country);
 	dev_add_param_fixed(dev, "country", str);
-	sprintf(str, "%d", info.year);
-	dev_add_param_fixed(dev, "year", str);
-	sprintf(str, "%d", info.week);
-	dev_add_param_fixed(dev, "week", str);
+	dev_add_param_int_ro(dev, "year", info.year, "%d");
+	dev_add_param_int_ro(dev, "week", info.week, "%d");
 	sprintf(str, "%c", info.revision_code);
 	dev_add_param_fixed(dev, "revision_code", str);
 	sprintf(str, "%c", info.revision_id);
diff --git a/arch/arm/boards/sama5d3xek/hw_version.c b/arch/arm/boards/sama5d3xek/hw_version.c
index 79fd63a..450eb9f 100644
--- a/arch/arm/boards/sama5d3xek/hw_version.c
+++ b/arch/arm/boards/sama5d3xek/hw_version.c
@@ -226,10 +226,8 @@ static void at91sama5d3xek_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "board", bname);
 	sprintf(str, "%.2s", info.vendor_country);
 	dev_add_param_fixed(dev, "country", str);
-	sprintf(str, "%d", info.year);
-	dev_add_param_fixed(dev, "year", str);
-	sprintf(str, "%d", info.week);
-	dev_add_param_fixed(dev, "week", str);
+	dev_add_param_int_ro(dev, "year", info.year, "%d");
+	dev_add_param_int_ro(dev, "week", info.week, "%d");
 	sprintf(str, "%c", info.revision_board);
 	dev_add_param_fixed(dev, "revision_board", str);
 	sprintf(str, "%c", info.revision_schema);
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 7d7a654..6106252 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -153,14 +153,9 @@ int amba_device_add(struct amba_device *dev)
 	if (ret)
 		goto err_release;
 
-	if (IS_ENABLED(CONFIG_PARAMETER)) {
-		char str[16];
+	dev_add_param_int_ro(&dev->dev, "periphid", dev->periphid, "0x%08x");
 
-		sprintf(str, "0x%08x", dev->periphid);
-		dev_add_param_fixed(&dev->dev, "periphid", str);
-	}
-
-		return ret;
+	return ret;
  err_release:
 	release_region(res);
 	return ret;
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 43ea882..7f51da0 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -239,10 +239,8 @@ static int qt1070_probe(struct device_d *dev)
 		goto err;
 	}
 
-	sprintf(buf, "0x%x", fw_version);
-	dev_add_param_fixed(dev, "fw_version", buf);
-	sprintf(buf, "0x%x", chip_id);
-	dev_add_param_fixed(dev, "chip_ip", buf);
+	dev_add_param_int_ro(dev, "fw_version", fw_version, "0x%x");
+	dev_add_param_int_ro(dev, "chip_ip", chip_id, "0x%x");
 
 	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index e28d925..61744b6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -286,7 +286,6 @@ static struct file_operations mtd_ops = {
 
 int add_mtd_device(struct mtd_info *mtd, char *devname)
 {
-	char str[16];
 	struct mtddev_hook *hook;
 
 	if (!devname)
@@ -305,14 +304,10 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 	mtd->cdev.mtd = mtd;
 
 	if (IS_ENABLED(CONFIG_PARAMETER)) {
-		sprintf(str, "%u", mtd->size);
-		dev_add_param_fixed(&mtd->class_dev, "size", str);
-		sprintf(str, "%u", mtd->erasesize);
-		dev_add_param_fixed(&mtd->class_dev, "erasesize", str);
-		sprintf(str, "%u", mtd->writesize);
-		dev_add_param_fixed(&mtd->class_dev, "writesize", str);
-		sprintf(str, "%u", mtd->oobsize);
-		dev_add_param_fixed(&mtd->class_dev, "oobsize", str);
+		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%u");
+		dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u");
+		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->oobsize, "%u");
+		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
 	}
 
 	devfs_create(&mtd->cdev);
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index e1bb7b1..6163a50 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -152,7 +152,6 @@ static int mdio_bus_probe(struct device_d *_dev)
 	struct phy_driver *drv = to_phy_driver(_dev->driver);
 
 	int ret;
-	char str[16];
 
 	dev->attached_dev->phydev = dev;
 
@@ -192,11 +191,8 @@ static int mdio_bus_probe(struct device_d *_dev)
 	if ((dev->supported & SUPPORTED_Autoneg) == 0)
 		dev->autoneg = AUTONEG_DISABLE;
 
-	sprintf(str, "%d", dev->addr);
-	dev_add_param_fixed(&dev->dev, "phy_addr", str);
-
-	sprintf(str, "0x%08x", dev->phy_id);
-	dev_add_param_fixed(&dev->dev, "phy_id", str);
+	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
+	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
 
 	dev->cdev.name = asprintf("phy%d", _dev->id);
 	dev->cdev.size = 64;
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index a813be5..9a0723a 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -439,19 +439,20 @@ static int usb_new_device(struct usb_device *dev)
 	print_usb_device(dev);
 
 	register_device(&dev->dev);
-	sprintf(str, "%d", dev->descriptor->iManufacturer);
-	dev_add_param_fixed(&dev->dev, "iManufacturer", str);
-	sprintf(str, "%d", dev->descriptor->iProduct);
-	dev_add_param_fixed(&dev->dev, "iProduct", str);
-	sprintf(str, "%d", dev->descriptor->iSerialNumber);
+	dev_add_param_int_ro(&dev->dev, "iManufacturer",
+			dev->descriptor->iManufacturer, "%d");
+	dev_add_param_int_ro(&dev->dev, "iProduct",
+			dev->descriptor->iProduct, "%d");
+	dev_add_param_int_ro(&dev->dev, "iSerialNumber",
+			dev->descriptor->iSerialNumber, "%d");
 	dev_add_param_fixed(&dev->dev, "iSerialNumber", str);
 	dev_add_param_fixed(&dev->dev, "Manufacturer", dev->mf);
 	dev_add_param_fixed(&dev->dev, "Product", dev->prod);
 	dev_add_param_fixed(&dev->dev, "SerialNumber", dev->serial);
-	sprintf(str, "%04x", le16_to_cpu(dev->descriptor->idVendor));
-	dev_add_param_fixed(&dev->dev, "idVendor", str);
-	sprintf(str, "%04x", le16_to_cpu(dev->descriptor->idProduct));
-	dev_add_param_fixed(&dev->dev, "idProduct", str);
+	dev_add_param_int_ro(&dev->dev, "idVendor",
+			le16_to_cpu(dev->descriptor->idVendor), "%04x");
+	dev_add_param_int_ro(&dev->dev, "idProduct",
+			le16_to_cpu(dev->descriptor->idProduct), "%04x");
 	list_add_tail(&dev->list, &usb_device_list);
 
 	err = 0;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
