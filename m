Delivery-date: Thu, 05 Jun 2025 23:14:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHvA-0049SV-28
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv5-0006Bb-HK
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=swPb6kXP0iu3oeFxKLfYw+h69JrML2talViXZ/qdWuk=; b=e6oE/t14DNVeIdZ6ouTXMiQz/x
	j06p84ZWF3KJVikknD9t65iwIUkI+XPwSpaXfN2hiFqo55IQvPZxM2+VXzd4kFuCFsadN+Y6/br7U
	mAmdQ0i7Q1CRfIusqMVB8bXTwdIuBS+N3rnhcwfX+INNbTK151T7VZ8ePbrqfS5rnwD6leoQUqEXI
	0DWNPJTCmfKdESC52yvKZkJMJx23zwDFr8QSdoguKBt/isrpjTXr2n2BSVTDXErSzVhOWkCll6Glu
	T6r6baENkeVViIe5u0A3jLKwvxacQySsJZCQncgtYqjF226Mei8knDR1a5rJ4fOYFXA1v0AnefWyw
	xi6b0KlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuH-0000000Gevh-0n7A;
	Thu, 05 Jun 2025 21:13:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHo9-0000000GeDj-0trM
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo7-00079B-Vh; Thu, 05 Jun 2025 23:07:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:12 +0200
Message-Id: <20250605210726.1916656-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140729_557664_2BA9602F 
X-CRM114-Status: GOOD (  17.58  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/16] driver: switch busses to device class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of ad-hoc bus/adapter lists. Let's replace them with
device classes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/bus.c            |  5 ++---
 drivers/i2c/i2c.c             |  6 +++---
 drivers/mci/mci-core.c        | 14 +++++++++-----
 drivers/net/phy/mdio_bus.c    |  6 +++---
 drivers/tee/tee_core.c        |  7 +++----
 drivers/tee/tee_private.h     |  2 --
 drivers/usb/gadget/udc/core.c |  3 +++
 drivers/video/backlight.c     |  7 +++----
 drivers/w1/w1.c               |  4 ++--
 include/driver.h              |  5 ++---
 include/i2c/i2c.h             |  5 ++---
 include/linux/phy.h           |  6 ++----
 include/video/backlight.h     |  1 -
 13 files changed, 34 insertions(+), 37 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 6a4e654b3cea..fde27dd008e8 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -8,8 +8,7 @@
 #include <errno.h>
 #include <of.h>
 
-LIST_HEAD(bus_list);
-EXPORT_SYMBOL(bus_list);
+DEFINE_DEV_CLASS(bus_class, "bus");
 
 static struct bus_type *get_bus_by_name(const char *name)
 {
@@ -41,7 +40,7 @@ int bus_register(struct bus_type *bus)
 	INIT_LIST_HEAD(&bus->device_list);
 	INIT_LIST_HEAD(&bus->driver_list);
 
-	list_add_tail(&bus->list, &bus_list);
+	class_add_device(&bus_class, &bus->dev);
 
 	return 0;
 }
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 49b87bb47c00..7ebd9c11e600 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -42,7 +42,7 @@ struct boardinfo {
 };
 
 static LIST_HEAD(board_list);
-LIST_HEAD(i2c_adapter_list);
+DEFINE_DEV_CLASS(i2c_adapter_class, "i2c_adapter");
 
 /**
  * i2c_transfer - execute a single or combined I2C message
@@ -483,7 +483,7 @@ static void i2c_hw_rescan(struct device *dev)
 {
 	struct i2c_adapter *adap;
 
-	list_for_each_entry(adap, &i2c_adapter_list, list) {
+	for_each_i2c_adapter(adap) {
 		if (dev != adap->dev.parent)
 			continue;
 		of_i2c_register_devices(adap);
@@ -742,7 +742,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	if (ret)
 		return ret;
 
-	list_add_tail(&adapter->list, &i2c_adapter_list);
+	class_add_device(&i2c_adapter_class, &adapter->dev);
 
 	slice_init(&adapter->slice, dev_name(&adapter->dev));
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 23cde58c0c5b..4ce5327a7047 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -40,7 +40,11 @@ static inline u32 unstuff_bits(const u32 *resp, int start, int size)
 	return __res & __mask;
 }
 
-LIST_HEAD(mci_list);
+static DEFINE_DEV_CLASS(mmc_class, "mmc");
+
+#define for_each_mci(mci) \
+	class_for_each_container_of_device(&mmc_class, mci, dev)
+
 
 /**
  * @file
@@ -3033,7 +3037,7 @@ static int mci_hw_detect(struct device *dev)
 {
 	struct mci *mci;
 
-	list_for_each_entry(mci, &mci_list, list) {
+	for_each_mci(mci) {
 		if (dev == mci->host->hw_dev)
 			return mci_detect_card(mci->host);
 	}
@@ -3111,7 +3115,7 @@ int mci_register(struct mci_host *host)
 		of_register_fixup(of_broken_cd_fixup, host);
 	}
 
-	list_add_tail(&mci->list, &mci_list);
+	class_add_device(&mmc_class, &mci->dev);
 
 	return 0;
 
@@ -3245,7 +3249,7 @@ struct mci *mci_get_device_by_name(const char *name)
 {
 	struct mci *mci;
 
-	list_for_each_entry(mci, &mci_list, list) {
+	for_each_mci(mci) {
 		if (!mci->cdevname)
 			continue;
 		if (!strcmp(mci->cdevname, name))
@@ -3259,7 +3263,7 @@ struct mci *mci_get_rpmb_dev(unsigned int id)
 {
 	struct mci *mci;
 
-	list_for_each_entry(mci, &mci_list, list) {
+	for_each_mci(mci) {
 		if (mci->host->of_id != id)
 			continue;
 
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index a6671a2680ad..a7eda3f84a11 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -28,7 +28,7 @@
 #define DEFAULT_GPIO_RESET_ASSERT       1000      /* us */
 #define DEFAULT_GPIO_RESET_DEASSERT     1000      /* us */
 
-LIST_HEAD(mii_bus_list);
+DEFINE_DEV_CLASS(mii_class, "mii");
 
 static struct phy_device *mdio_device_create(struct mii_bus *bus, int addr)
 {
@@ -312,7 +312,7 @@ int mdiobus_register(struct mii_bus *bus)
 	if (bus->reset)
 		bus->reset(bus);
 
-	list_add_tail(&bus->list, &mii_bus_list);
+	class_add_device(&mii_class, &bus->dev);
 
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 
@@ -342,7 +342,7 @@ void mdiobus_unregister(struct mii_bus *bus)
 
 	slice_exit(&bus->slice);
 
-	list_del(&bus->list);
+	list_del_init(&bus->dev.class_list);
 }
 EXPORT_SYMBOL(mdiobus_unregister);
 
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 593e85313b0a..653b04ff06af 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -16,7 +16,7 @@
 
 #define TEE_IOCTL_PARAM_SIZE(x) (sizeof(struct tee_param) * (x))
 
-static LIST_HEAD(tee_clients);
+static DEFINE_DEV_CLASS(tee_client_class, "tee_client");
 
 struct tee_context *teedev_open(struct tee_device *teedev)
 {
@@ -591,7 +591,7 @@ int tee_device_register(struct tee_device *teedev)
 			goto out;
 	}
 
-	list_add_tail(&teedev->list, &tee_clients);
+	class_add_device(&tee_client_class, &teedev->dev);
 
 	teedev->flags |= TEE_DEVICE_FLAG_REGISTERED;
 	return 0;
@@ -640,7 +640,6 @@ void tee_device_unregister(struct tee_device *teedev)
 	if (!teedev)
 		return;
 
-	list_del(&teedev->list);
 	if (IS_ENABLED(CONFIG_OPTEE_DEVFS))
 		devfs_remove(&teedev->cdev);
 	unregister_device(&teedev->dev);
@@ -687,7 +686,7 @@ tee_client_open_context(struct tee_context *start,
 	if (start)
 		startdev = &start->teedev->dev;
 
-	list_for_each_entry(teedev, &tee_clients, list) {
+	class_for_each_container_of_device(&tee_client_class, teedev, dev) {
 		struct device *dev = &teedev->dev;
 		struct tee_context *ctx ;
 
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
index 045f2df9f3b4..e349613d7868 100644
--- a/drivers/tee/tee_private.h
+++ b/drivers/tee/tee_private.h
@@ -19,7 +19,6 @@ struct tee_context;
  * struct tee_device - TEE Device representation
  * @name:	name of device
  * @desc:	description of device
- * @id:		unique id of device
  * @flags:	represented by TEE_DEVICE_FLAG_REGISTERED above
  * @dev:	embedded basic device structure
  * @cdev:	embedded cdev
@@ -29,7 +28,6 @@ struct tee_context;
 struct tee_device {
 	char name[TEE_MAX_DEV_NAME_LEN];
 	const struct tee_desc *desc;
-	struct list_head list;
 	unsigned int flags;
 
 	struct device dev;
diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
index 4416902bc143..14bd5f493350 100644
--- a/drivers/usb/gadget/udc/core.c
+++ b/drivers/usb/gadget/udc/core.c
@@ -46,6 +46,7 @@ struct usb_udc {
 };
 
 static LIST_HEAD(udc_list);
+static DEFINE_DEV_CLASS(udc_class, "udc");
 
 /* Protects udc_list, udc->driver, driver->is_bound, and related calls */
 static DEFINE_MUTEX(udc_lock);
@@ -1194,6 +1195,8 @@ int usb_add_gadget(struct usb_gadget *gadget)
 	if (ret)
 		goto err_free_id;
 
+	class_add_device(&udc_class, &udc->dev);
+
 	dev_add_param_uint32(&gadget->dev, "product", NULL, NULL,
 			     &gadget->product_id, "0x%04x", NULL);
 	dev_add_param_uint32(&gadget->dev, "vendor", NULL, NULL,
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 523dd7e9f324..51d245a80fdb 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <driver.h>
-#include <linux/list.h>
 #include <video/backlight.h>
 
-static LIST_HEAD(backlights);
+static DEFINE_DEV_CLASS(backlight_class, "backlight");
 
 int backlight_set_brightness(struct backlight_device *bl, unsigned brightness)
 {
@@ -84,7 +83,7 @@ int backlight_register(struct backlight_device *bl)
 	dev_add_param_uint32(&bl->dev, "slew_time_ms", NULL, NULL,
 			     &bl->slew_time_ms, "%u", NULL);
 
-	list_add_tail(&bl->list, &backlights);
+	class_add_device(&backlight_class, &bl->dev);
 
 	return ret;
 }
@@ -95,7 +94,7 @@ struct backlight_device *of_backlight_find(struct device_node *node)
 
 	of_device_ensure_probed(node);
 
-	list_for_each_entry(bl, &backlights, list)
+	class_for_each_container_of_device(&backlight_class, bl, dev)
 		if (bl->node == node)
 			return bl;
 
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index 15ada42ef0ba..61f21ff446b8 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -10,7 +10,7 @@
 
 #include "w1.h"
 
-static LIST_HEAD(w1_buses);
+static DEFINE_DEV_CLASS(w1_bus_class, "w1_bus");
 
 static void w1_pre_write(struct w1_bus *bus);
 static void w1_post_write(struct w1_bus *bus);
@@ -608,7 +608,7 @@ int w1_bus_register(struct w1_bus *bus)
 	if (!bus->max_slave_count)
 		bus->max_slave_count = 10;
 
-	list_add_tail(&bus->list, &w1_buses);
+	class_add_device(&w1_bus_class, &bus->dev);
 
 	dev_set_name(&bus->dev, "w1_bus");
 	bus->dev.id = DEVICE_ID_DYNAMIC;
diff --git a/include/driver.h b/include/driver.h
index c6b7b37aa00f..581f59754bab 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -360,7 +360,6 @@ struct bus_type {
 
 	struct device dev;
 
-	struct list_head list;
 	struct list_head device_list;
 	struct list_head driver_list;
 };
@@ -374,11 +373,11 @@ static inline int driver_match_device(const struct driver *drv,
 	return drv->bus->match ? drv->bus->match(dev, drv) : true;
 }
 
-extern struct list_head bus_list;
+extern struct class bus_class;
 
 /* Iterate over all buses
  */
-#define for_each_bus(bus) list_for_each_entry(bus, &bus_list, list)
+#define for_each_bus(bus) class_for_each_container_of_device(&bus_class, bus, dev)
 
 /* Iterate over all devices of a bus
  */
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 9094003b686a..5c0174b0ddc7 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -125,7 +125,6 @@ struct i2c_adapter {
 	struct slice		slice;
 	int			nr;	/* bus number */
 	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
-	struct list_head	list;
 	int			retries;
 	void 			*algo_data;
 
@@ -304,9 +303,9 @@ int of_i2c_device_enable_and_register_by_alias(const char *alias);
 void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t,
 			  bool use_defaults);
 
-extern struct list_head i2c_adapter_list;
+extern struct class i2c_adapter_class;
 #define for_each_i2c_adapter(adap) \
-	list_for_each_entry(adap, &i2c_adapter_list, list)
+	class_for_each_container_of_device(&i2c_adapter_class, adap, dev)
 
 /* For devices that use several addresses, use i2c_new_dummy() to make
  * client handles for the extra addresses.
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 5cbd21f91a50..04b82d63a51e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -240,8 +240,6 @@ struct mii_bus {
 	/* PHY addresses to be ignored when probing */
 	u32 phy_mask;
 
-	struct list_head list;
-
 	bool is_multiplexed;
 
 	struct slice slice;
@@ -257,12 +255,12 @@ int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
 
-extern struct list_head mii_bus_list;
+extern struct class mii_class;
 
 int mdiobus_detect(struct device *dev);
 
 #define for_each_mii_bus(mii) \
-	list_for_each_entry(mii, &mii_bus_list, list)
+	class_for_each_container_of_device(&mii_class, mii, dev)
 
 struct mii_bus *mdiobus_get_bus(int busnum);
 
diff --git a/include/video/backlight.h b/include/video/backlight.h
index 2dd63202cd6e..dcb8e8c5e10e 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -11,7 +11,6 @@ struct backlight_device {
 	int brightness_default;
 	int slew_time_ms; /* time to stretch brightness changes */
 	int (*brightness_set)(struct backlight_device *, int brightness);
-	struct list_head list;
 	struct device dev;
 	struct device_node *node;
 };
-- 
2.39.5



