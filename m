Delivery-date: Tue, 06 May 2025 08:38:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwm-002i5e-26
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwl-00023R-5X
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=teO7yZ+El07U3RQMwQiSIeuFiuvljUoYhMbc4lnn5iI=; b=Ymuo6H91WAMi8FoY/3+KrCos9r
	KTkkEDfNd2+GJz8f1cqEBtUz38tj6ZJS3bii31ErsqoqibUk718qfzZhxT4KFUxflIh2bjBtu/fHS
	PeUTFqqcpiT5KkZAtN2h+cNihGCklM+Qwj0ZHt4FB8yDuGQm5ZEYs2tGq8AZJmcDytDMWqiH7uF54
	iluKizE6FQR3AzDmbos/mi/JAbKY0kN8f76lYRrZBSK3mc4+VEgJ1+B78F9eZyWrI+GPt/FeTPhrh
	mZ5JIH4PB9TaVTJiuU2bOhYKsMcLQ1C4Xg3kZNLAM/RpainLOZCkk8oTXOheJnqysMgRVaFWBDBeb
	IVXkzVnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBwD-0000000AjVU-2WcD;
	Tue, 06 May 2025 06:37:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtI-0000000AiOg-3chu
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000Tr-LC; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpY-1J;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-2W;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:46 +0200
Message-Id: <20250506063446.3133582-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233457_208273_1BF93106 
X-CRM114-Status: GOOD (  25.44  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] driver: base: invert driver match callback for Linux compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both Linux and barebox have a struct bus_type::match callback that
checks whether a driver matches a device.

In Linux, a match is indicated by a non-zero return code, but in barebox
zero is used for that purpose.

To avoid this annoying pitfall, let's switch over barebox to the Linux
scheme. While at it, we also adapt the prototype to make the driver
const as is the case with Linux. This gives us some extra certainty that
all bus types have indeed been adapted.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/amba/bus.c              |  7 +++----
 drivers/base/bus.c              | 20 ++++++++++----------
 drivers/base/driver.c           |  2 +-
 drivers/bus/acpi.c              |  6 +++---
 drivers/efi/efi-device.c        |  8 ++++----
 drivers/firmware/arm_scmi/bus.c | 10 +++++-----
 drivers/net/phy/mdio_bus.c      | 10 +++++-----
 drivers/of/base.c               |  6 +++---
 drivers/pci/bus.c               |  8 ++++----
 drivers/tee/tee_core.c          |  6 +++---
 drivers/usb/core/usb.c          |  8 ++++----
 drivers/usb/gadget/udc/core.c   | 10 +++++-----
 drivers/virtio/virtio.c         |  8 ++++----
 drivers/w1/w1.c                 |  8 ++++----
 fs/fs.c                         |  4 ++--
 include/driver.h                | 12 +++++++++---
 include/of.h                    |  2 +-
 17 files changed, 70 insertions(+), 65 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 5ed8336e6124..8d6525cca967 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -29,13 +29,12 @@ amba_lookup(const struct amba_id *table, struct amba_device *dev)
 	return ret ? table : NULL;
 }
 
-static int amba_match(struct device *dev, struct driver *drv)
+static int amba_match(struct device *dev, const struct driver *drv)
 {
 	struct amba_device *pcdev = to_amba_device(dev);
+	const struct amba_driver *pcdrv = to_amba_driver(drv);
 
-	struct amba_driver *pcdrv = to_amba_driver(drv);
-
-	return amba_lookup(pcdrv->id_table, pcdev) == NULL;
+	return amba_lookup(pcdrv->id_table, pcdev) != NULL;
 }
 
 static int amba_get_enable_pclk(struct amba_device *pcdev)
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index a5c9c930da83..58fcd2e032da 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -47,7 +47,7 @@ int bus_register(struct bus_type *bus)
 	return 0;
 }
 
-int device_match(struct device *dev, struct driver *drv)
+int device_match(struct device *dev, const struct driver *drv)
 {
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node &&
 	    drv->of_compatible)
@@ -59,29 +59,29 @@ int device_match(struct device *dev, struct driver *drv)
 		while (id->name) {
 			if (!strcmp(id->name, dev->name)) {
 				dev->id_entry = id;
-				return 0;
+				return true;
 			}
 			id++;
 		}
 	} else if (!strcmp(dev->name, drv->name)) {
-		return 0;
+		return true;
 	}
 
-	return -1;
+	return false;
 }
 
-int device_match_of_modalias(struct device *dev, struct driver *drv)
+int device_match_of_modalias(struct device *dev, const struct driver *drv)
 {
 	const struct platform_device_id *id = drv->id_table;
 	const char *of_modalias = NULL, *p;
 	const struct property *prop;
 	const char *compat;
 
-	if (!device_match(dev, drv))
-		return 0;
+	if (device_match(dev, drv))
+		return true;
 
 	if (!id || !IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
-		return -1;
+		return false;
 
 	of_property_for_each_string(dev->of_node, "compatible", prop, compat) {
 		p = strchr(compat, ',');
@@ -90,10 +90,10 @@ int device_match_of_modalias(struct device *dev, struct driver *drv)
 		for (id = drv->id_table; id->name; id++) {
 			if (!strcmp(id->name, dev->name) || !strcmp(id->name, of_modalias)) {
 				dev->id_entry = id;
-				return 0;
+				return true;
 			}
 		}
 	}
 
-	return -1;
+	return false;
 }
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2160d2fd060b..2192ba9812cb 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -226,7 +226,7 @@ static int match(struct driver *drv, struct device *dev)
 
 	dev->driver = drv;
 
-	if (dev->bus->match && dev->bus->match(dev, drv))
+	if (!driver_match_device(drv, dev))
 		goto err_out;
 	ret = device_probe(dev);
 	if (ret)
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 81e37cace710..92325c16e234 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -199,12 +199,12 @@ static int acpi_register_devices(struct bus_type *bus)
 	return 0;
 }
 
-static int acpi_bus_match(struct device *dev, struct driver *drv)
+static int acpi_bus_match(struct device *dev, const struct driver *drv)
 {
-	struct acpi_driver *acpidrv = to_acpi_driver(drv);
+	const struct acpi_driver *acpidrv = to_acpi_driver(drv);
 	struct acpi_sdt *sdt = acpi_get_dev_sdt(dev);
 
-	return acpi_sigcmp(acpidrv->signature, sdt->signature);
+	return !acpi_sigcmp(acpidrv->signature, sdt->signature);
 }
 
 struct bus_type acpi_bus = {
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index a113dfb45f3b..6dfcf22d3baf 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -282,9 +282,9 @@ int efi_connect_all(void)
 	return 0;
 }
 
-static int efi_bus_match(struct device *dev, struct driver *drv)
+static int efi_bus_match(struct device *dev, const struct driver *drv)
 {
-	struct efi_driver *efidrv = to_efi_driver(drv);
+	const struct efi_driver *efidrv = to_efi_driver(drv);
 	struct efi_device *efidev = to_efi_device(dev);
 	int i;
 
@@ -292,11 +292,11 @@ static int efi_bus_match(struct device *dev, struct driver *drv)
 		if (!efi_guidcmp(efidrv->guid, efidev->guids[i])) {
 			BS->handle_protocol(efidev->handle, &efidev->guids[i],
 					&efidev->protocol);
-			return 0;
+			return true;
 		}
 	}
 
-	return 1;
+	return false;
 }
 
 static int efi_bus_probe(struct device *dev)
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 1d9a0f089b44..0d7c404ae5ed 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -139,7 +139,7 @@ static int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 }
 
 static const struct scmi_device_id *
-scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
+scmi_dev_match_id(struct scmi_device *scmi_dev, const struct scmi_driver *scmi_drv)
 {
 	const struct scmi_device_id *id = scmi_drv->id_table;
 
@@ -157,17 +157,17 @@ scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
 	return NULL;
 }
 
-static int scmi_dev_match(struct device *dev, struct driver *drv)
+static int scmi_dev_match(struct device *dev, const struct driver *drv)
 {
-	struct scmi_driver *scmi_drv = to_scmi_driver(drv);
+	const struct scmi_driver *scmi_drv = to_scmi_driver(drv);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
 	const struct scmi_device_id *id;
 
 	id = scmi_dev_match_id(scmi_dev, scmi_drv);
 	if (id)
-		return 0;
+		return true;
 
-	return -1;
+	return false;
 }
 
 static int scmi_match_by_id_table(struct device *dev, void *data)
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 7974ca773899..a6671a2680ad 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -415,20 +415,20 @@ EXPORT_SYMBOL(of_mdio_find_bus);
  * Description: Given a PHY device, and a PHY driver, return 0 if
  *   the driver supports the device.  Otherwise, return 1.
  */
-static int mdio_bus_match(struct device *dev, struct driver *drv)
+static int mdio_bus_match(struct device *dev, const struct driver *drv)
 {
-	struct phy_device *phydev = to_phy_device(dev);
-	struct phy_driver *phydrv = to_phy_driver(drv);
+	const struct phy_device *phydev = to_phy_device(dev);
+	const struct phy_driver *phydrv = to_phy_driver(drv);
 
 	if (phydrv->is_phy) {
 		if ((phydrv->phy_id & phydrv->phy_id_mask) ==
 		    (phydev->phy_id & phydrv->phy_id_mask))
-		return 0;
+		return true;
 	} else {
 		return device_match(dev, drv);
 	}
 
-	return 1;
+	return false;
 }
 
 /**
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8184b284099e..1439e55a0aac 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -842,17 +842,17 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 }
 EXPORT_SYMBOL(of_find_matching_node_and_match);
 
-int of_match(struct device *dev, struct driver *drv)
+bool of_match(struct device *dev, const struct driver *drv)
 {
 	const struct of_device_id *id;
 
 	id = of_match_node(drv->of_compatible, dev->of_node);
 	if (!id)
-		return 1;
+		return false;
 
 	dev->of_id_entry = id;
 
-	return 0;
+	return true;
 }
 EXPORT_SYMBOL(of_match);
 /**
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index 37bdc9a22f43..c8f5b592428d 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -73,19 +73,19 @@ const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
 }
 EXPORT_SYMBOL(pci_match_id);
 
-static int pci_match(struct device *dev, struct driver *drv)
+static int pci_match(struct device *dev, const struct driver *drv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
-	struct pci_driver *pdrv = to_pci_driver(drv);
+	const struct pci_driver *pdrv = to_pci_driver(drv);
 	const struct pci_device_id *id;
 
 	for (id = pdrv->id_table; id->vendor; id++)
 		if (pci_match_one_device(id, pdev)) {
 			pdev->id = id;
-			return 0;
+			return true;
 		}
 
-	return -1;
+	return false;
 }
 
 static int pci_probe(struct device *dev)
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 57a1d95d90d0..593e85313b0a 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -754,7 +754,7 @@ int tee_client_invoke_func(struct tee_context *ctx,
 EXPORT_SYMBOL_GPL(tee_client_invoke_func);
 
 static int tee_client_device_match(struct device *dev,
-				   struct device_driver *drv)
+				   const struct device_driver *drv)
 {
 	const struct tee_client_device_id *id_table;
 	struct tee_client_device *tee_device;
@@ -764,11 +764,11 @@ static int tee_client_device_match(struct device *dev,
 
 	while (!uuid_is_null(&id_table->uuid)) {
 		if (uuid_equal(&tee_device->id.uuid, &id_table->uuid))
-			return 0;
+			return true;
 		id_table++;
 	}
 
-	return -1;
+	return false;
 }
 
 struct bus_type tee_bus_type = {
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 6940476bb8b6..01d193d072fe 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1178,10 +1178,10 @@ static const struct usb_device_id *usb_match_id(struct usb_device *usbdev,
 }
 EXPORT_SYMBOL(usb_match_id);
 
-static int usb_match(struct device *dev, struct driver *drv)
+static int usb_match(struct device *dev, const struct driver *drv)
 {
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
-	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
+	const struct usb_driver *usbdrv = container_of_const(drv, struct usb_driver, driver);
 	const struct usb_device_id *id;
 
 	pr_debug("matching: 0x%04x 0x%04x\n", usbdev->descriptor->idVendor,
@@ -1190,9 +1190,9 @@ static int usb_match(struct device *dev, struct driver *drv)
 	id = usb_match_id(usbdev, usbdrv->id_table);
 	if (id) {
 		pr_debug("match: 0x%04x 0x%04x\n", id->idVendor, id->idProduct);
-		return 0;
+		return true;
 	}
-	return 1;
+	return false;
 }
 
 static int usb_probe(struct device *dev)
diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
index e7cfa0d5d836..4416902bc143 100644
--- a/drivers/usb/gadget/udc/core.c
+++ b/drivers/usb/gadget/udc/core.c
@@ -1344,24 +1344,24 @@ EXPORT_SYMBOL_GPL(usb_del_gadget_udc);
 
 /* ------------------------------------------------------------------------- */
 
-static int gadget_match_driver(struct device *dev, struct driver *drv)
+static int gadget_match_driver(struct device *dev, const struct driver *drv)
 {
 	struct usb_gadget *gadget = dev_to_usb_gadget(dev);
 	struct usb_udc *udc = gadget->udc;
-	struct usb_gadget_driver *driver = container_of(drv,
+	const struct usb_gadget_driver *driver = container_of_const(drv,
 			struct usb_gadget_driver, driver);
 
 	/* If the driver specifies a udc_name, it must match the UDC's name */
 	if (driver->udc_name &&
 			strcmp(driver->udc_name, dev_name(&udc->dev)) != 0)
-		return -1;
+		return false;
 
 	/* If the driver is already bound to a gadget, it doesn't match */
 	if (driver->is_bound)
-		return -1;
+		return false;
 
 	/* Otherwise any gadget driver matches any UDC */
-	return 0;
+	return true;
 }
 
 static void udc_poll_driver(struct poller_struct *poller)
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index a0bd147c36c4..4abf551a2834 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -47,18 +47,18 @@ static inline int virtio_id_match(const struct virtio_device *dev,
 
 /* This looks through all the IDs a driver claims to support.  If any of them
  * match, we return 1 and the kernel will call virtio_dev_probe(). */
-static int virtio_dev_match(struct device *_dv, struct driver *_dr)
+static int virtio_dev_match(struct device *_dv, const struct driver *_dr)
 {
 	unsigned int i;
-	struct virtio_device *dev = dev_to_virtio(_dv);
+	const struct virtio_device *dev = dev_to_virtio(_dv);
 	const struct virtio_device_id *ids;
 
 	ids = drv_to_virtio(_dr)->id_table;
 	for (i = 0; ids[i].device; i++)
 		if (virtio_id_match(dev, &ids[i]))
-			return 0;
+			return true;
 
-	return -1;
+	return false;
 }
 
 void virtio_check_driver_offered_feature(const struct virtio_device *vdev,
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index ac5fd3898276..15ada42ef0ba 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -362,12 +362,12 @@ int w1_reset_select_slave(struct w1_device *dev)
 #define to_w1_device(d)	container_of(d, struct w1_device, dev)
 #define to_w1_driver(d) container_of(d, struct w1_driver, drv)
 
-static int w1_bus_match(struct device *_dev, struct driver *_drv)
+static int w1_bus_match(struct device *_dev, const struct driver *_drv)
 {
-	struct w1_device *dev = to_w1_device(_dev);
-	struct w1_driver *drv = to_w1_driver(_drv);
+	const struct w1_device *dev = to_w1_device(_dev);
+	const struct w1_driver *drv = to_w1_driver(_drv);
 
-	return !(drv->fid == dev->fid);
+	return drv->fid == dev->fid;
 }
 
 static int w1_bus_probe(struct device *_dev)
diff --git a/fs/fs.c b/fs/fs.c
index 400e85de102b..465fd617c2ba 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -762,9 +762,9 @@ int close(int fd)
 }
 EXPORT_SYMBOL(close);
 
-static int fs_match(struct device *dev, struct driver *drv)
+static int fs_match(struct device *dev, const struct driver *drv)
 {
-	return strcmp(dev->name, drv->name) ? -1 : 0;
+	return strcmp(dev->name, drv->name) == 0;
 }
 
 static int fs_probe(struct device *dev)
diff --git a/include/driver.h b/include/driver.h
index b63dce84c80e..b5f4de01e424 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -354,7 +354,7 @@ int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
 struct bus_type {
 	char *name;
-	int (*match)(struct device *dev, struct driver *drv);
+	int (*match)(struct device *dev, const struct driver *drv);
 	int (*probe)(struct device *dev);
 	void (*remove)(struct device *dev);
 
@@ -366,7 +366,13 @@ struct bus_type {
 };
 
 int bus_register(struct bus_type *bus);
-int device_match(struct device *dev, struct driver *drv);
+int device_match(struct device *dev, const struct driver *drv);
+
+static inline int driver_match_device(const struct driver *drv,
+				      struct device *dev)
+{
+	return drv->bus->match ? drv->bus->match(dev, drv) : true;
+}
 
 extern struct list_head bus_list;
 
@@ -674,7 +680,7 @@ int cdevfs_del_partition(struct cdev *cdev);
  */
 const void *device_get_match_data(struct device *dev);
 
-int device_match_of_modalias(struct device *dev, struct driver *drv);
+int device_match_of_modalias(struct device *dev, const struct driver *drv);
 
 struct device *device_find_child(struct device *parent, void *data,
 				 int (*match)(struct device *dev, void *data));
diff --git a/include/of.h b/include/of.h
index 5829d9d1ace0..fccb8ba7e9e1 100644
--- a/include/of.h
+++ b/include/of.h
@@ -73,7 +73,7 @@ struct resource;
 
 void of_fix_tree(struct device_node *);
 
-int of_match(struct device *dev, struct driver *drv);
+bool of_match(struct device *dev, const struct driver *drv);
 
 int of_add_initrd(struct device_node *root, resource_size_t start,
 		resource_size_t end);
-- 
2.39.5



