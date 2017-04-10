Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTXE-0006x0-2H
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:15:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:18 +0200
Message-Id: <20170410071420.26884-9-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] param: make parameter functions more consistent
To: Barebox List <barebox@lists.infradead.org>

This patch creates a consitent set of device parameter functions.

With this we have: dev_add_param_<type><access>

"type" is one of: int32, uint32, int64, uint64, string, mac, ipv4, enum, bitmask
The improvement here is that we now can exactly specify the width of the
int type parameters and also correctly distinguish between signed and
unsigned variables which means that a variable no longer ends up with
INT_MAX when it's assigned -1.

"access" can be empty for regular read/write parameter, "_ro" for readonly
parameters which get their value from a variable pointer in the
background or "_fixed" for parameters which are set to a fixed value
(without a pointer in the background).

Some more exotic types are not (yet) implemented, like
dev_add_param_ip_ro.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/hw_version.c |   4 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c   |   4 +-
 arch/arm/boards/sama5d3xek/hw_version.c     |   4 +-
 common/console.c                            |   2 +-
 common/partitions/dos.c                     |   2 +-
 common/state/state_variables.c              |   4 +-
 drivers/amba/bus.c                          |   2 +-
 drivers/efi/efi-device.c                    |  10 +-
 drivers/input/qt1070.c                      |   4 +-
 drivers/mtd/core.c                          |   8 +-
 drivers/mtd/ubi/build.c                     |  22 ++--
 drivers/net/phy/mdio_bus.c                  |   4 +-
 drivers/pwm/core.c                          |   4 +-
 drivers/usb/core/usb.c                      |  16 +--
 drivers/usb/gadget/udc-core.c               |   4 +-
 drivers/video/backlight.c                   |   2 +-
 drivers/video/imx-ipu-fb.c                  |   2 +-
 drivers/video/imx.c                         |   2 +-
 include/param.h                             | 169 +++++++++++++++++++------
 lib/parameter.c                             | 190 ++++++++++++----------------
 20 files changed, 260 insertions(+), 199 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
index 96fb02d801..cab26b0ac4 100644
--- a/arch/arm/boards/at91sam9m10ihd/hw_version.c
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -195,8 +195,8 @@ static void at91sam9m10ihd_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "board", info.board_name);
 	sprintf(str, "%.2s", info.vendor_country);
 	dev_add_param_fixed(dev, "country", str);
-	dev_add_param_int_ro(dev, "year", info.year, "%d");
-	dev_add_param_int_ro(dev, "week", info.week, "%d");
+	dev_add_param_uint32_fixed(dev, "year", info.year, "%u");
+	dev_add_param_uint32_fixed(dev, "week", info.week, "%u");
 	sprintf(str, "%c", info.revision_code);
 	dev_add_param_fixed(dev, "revision_code", str);
 	sprintf(str, "%c", info.revision_id);
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index d1ca036fe9..10563cf98b 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -221,8 +221,8 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "board", info.board_name);
 	sprintf(str, "%.2s", info.vendor_country);
 	dev_add_param_fixed(dev, "country", str);
-	dev_add_param_int_ro(dev, "year", info.year, "%d");
-	dev_add_param_int_ro(dev, "week", info.week, "%d");
+	dev_add_param_uint32_fixed(dev, "year", info.year, "%u");
+	dev_add_param_uint32_fixed(dev, "week", info.week, "%u");
 	sprintf(str, "%c", info.revision_code);
 	dev_add_param_fixed(dev, "revision_code", str);
 	sprintf(str, "%c", info.revision_id);
diff --git a/arch/arm/boards/sama5d3xek/hw_version.c b/arch/arm/boards/sama5d3xek/hw_version.c
index c809c37742..e5077854e3 100644
--- a/arch/arm/boards/sama5d3xek/hw_version.c
+++ b/arch/arm/boards/sama5d3xek/hw_version.c
@@ -227,8 +227,8 @@ static void at91sama5d3xek_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "board", bname);
 	sprintf(str, "%.2s", info.vendor_country);
 	dev_add_param_fixed(dev, "country", str);
-	dev_add_param_int_ro(dev, "year", info.year, "%d");
-	dev_add_param_int_ro(dev, "week", info.week, "%d");
+	dev_add_param_uint32_fixed(dev, "year", info.year, "%u");
+	dev_add_param_uint32_fixed(dev, "week", info.week, "%u");
 	sprintf(str, "%c", info.revision_board);
 	dev_add_param_fixed(dev, "revision_board", str);
 	sprintf(str, "%c", info.revision_schema);
diff --git a/common/console.c b/common/console.c
index 1bcb13fa0b..f4c799fa54 100644
--- a/common/console.c
+++ b/common/console.c
@@ -328,7 +328,7 @@ int console_register(struct console_device *newcdev)
 		if (ret)
 			return ret;
 		newcdev->baudrate_param = newcdev->baudrate = CONFIG_BAUDRATE;
-		dev_add_param_int(dev, "baudrate", console_baudrate_set,
+		dev_add_param_uint32(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate_param, "%u", newcdev);
 	}
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 5f08e253ee..91b5399079 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -251,7 +251,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 	 * signature and pp is a zero-filled hex representation of the 1-based
 	 * partition number.
 	 */
-	dev_add_param_int(blk->dev, "nt_signature",
+	dev_add_param_uint32(blk->dev, "nt_signature",
 			dos_set_disk_signature, dos_get_disk_signature,
 			&dsp->signature, "%08x", dsp);
 }
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 5b8e6284d9..56bcd9590a 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -108,7 +108,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 
 	su32 = xzalloc(sizeof(*su32));
 
-	param = dev_add_param_int(&state->dev, name, state_uint8_set,
+	param = dev_add_param_uint32(&state->dev, name, state_uint8_set,
 				  NULL, &su32->value, "%u", &su32->var);
 	if (IS_ERR(param)) {
 		free(su32);
@@ -136,7 +136,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 
 	su32 = xzalloc(sizeof(*su32));
 
-	param = dev_add_param_int(&state->dev, name, state_set_dirty,
+	param = dev_add_param_uint32(&state->dev, name, state_set_dirty,
 				  NULL, &su32->value, "%u", &su32->var);
 	if (IS_ERR(param)) {
 		free(su32);
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index ddd9661806..ae5df13c96 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -155,7 +155,7 @@ int amba_device_add(struct amba_device *dev)
 	if (ret)
 		goto err_release;
 
-	dev_add_param_int_ro(&dev->dev, "periphid", dev->periphid, "0x%08x");
+	dev_add_param_uint32_fixed(&dev->dev, "periphid", dev->periphid, "0x%08x");
 
 	return ret;
  err_release:
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index e9b03cb02a..77802fcb95 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -404,11 +404,11 @@ static int efi_init_devices(void)
 	dev_add_param_fixed(efi_bus.dev, "fw_vendor", fw_vendor);
 	free(fw_vendor);
 
-	dev_add_param_int_ro(efi_bus.dev, "major", sys_major, "%u");
-	dev_add_param_int_ro(efi_bus.dev, "minor", sys_minor, "%u");
-	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
-	dev_add_param_int_ro(efi_bus.dev, "secure_boot", secure_boot, "%d");
-	dev_add_param_int_ro(efi_bus.dev, "secure_mode",
+	dev_add_param_uint32_fixed(efi_bus.dev, "major", sys_major, "%u");
+	dev_add_param_uint32_fixed(efi_bus.dev, "minor", sys_minor, "%u");
+	dev_add_param_uint32_fixed(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
+	dev_add_param_bool_fixed(efi_bus.dev, "secure_boot", secure_boot, "%u");
+	dev_add_param_bool_fixed(efi_bus.dev, "secure_mode",
 			     secure_boot & setup_mode, "%u");
 
 	efi_bus.dev->info = efi_businfo;
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 1ee868dfdd..d81a8fa401 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -238,8 +238,8 @@ static int qt1070_probe(struct device_d *dev)
 		goto err;
 	}
 
-	dev_add_param_int_ro(dev, "fw_version", fw_version, "0x%x");
-	dev_add_param_int_ro(dev, "chip_ip", chip_id, "0x%x");
+	dev_add_param_uint32_fixed(dev, "fw_version", fw_version, "0x%x");
+	dev_add_param_uint32_fixed(dev, "chip_ip", chip_id, "0x%x");
 
 	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f071373501..1950ee87ee 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -637,10 +637,10 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 	mtd->cdev.mtd = mtd;
 
 	if (IS_ENABLED(CONFIG_PARAMETER)) {
-		dev_add_param_llint_ro(&mtd->class_dev, "size", mtd->size, "%llu");
-		dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u");
-		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->writesize, "%u");
-		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
+		dev_add_param_uint64_ro(&mtd->class_dev, "size", &mtd->size, "%llu");
+		dev_add_param_uint32_ro(&mtd->class_dev, "erasesize", &mtd->erasesize, "%u");
+		dev_add_param_uint32_ro(&mtd->class_dev, "writesize", &mtd->writesize, "%u");
+		dev_add_param_uint32_ro(&mtd->class_dev, "oobsize", &mtd->oobsize, "%u");
 	}
 
 	ret = devfs_create(&mtd->cdev);
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 2ea66ed067..40fa890c9e 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -656,17 +656,17 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	ubi_msg(ubi, "available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d",
 		ubi->avail_pebs, ubi->rsvd_pebs, ubi->beb_rsvd_pebs);
 
-	dev_add_param_int_ro(&ubi->dev, "peb_size", ubi->peb_size, "%d");
-	dev_add_param_int_ro(&ubi->dev, "leb_size", ubi->leb_size, "%d");
-	dev_add_param_int_ro(&ubi->dev, "vid_header_offset", ubi->vid_hdr_offset, "%d");
-	dev_add_param_int_ro(&ubi->dev, "min_io_size", ubi->min_io_size, "%d");
-	dev_add_param_int_ro(&ubi->dev, "sub_page_size", ubi->hdrs_min_io_size, "%d");
-	dev_add_param_int_ro(&ubi->dev, "good_peb_count", ubi->good_peb_count, "%d");
-	dev_add_param_int_ro(&ubi->dev, "bad_peb_count", ubi->bad_peb_count, "%d");
-	dev_add_param_int_ro(&ubi->dev, "max_erase_counter", ubi->max_ec, "%d");
-	dev_add_param_int_ro(&ubi->dev, "mean_erase_counter", ubi->mean_ec, "%d");
-	dev_add_param_int_ro(&ubi->dev, "available_pebs", ubi->avail_pebs, "%d");
-	dev_add_param_int_ro(&ubi->dev, "reserved_pebs", ubi->rsvd_pebs, "%d");
+	dev_add_param_uint32_ro(&ubi->dev, "peb_size", &ubi->peb_size, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "leb_size", &ubi->leb_size, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "vid_header_offset", &ubi->vid_hdr_offset, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "min_io_size", &ubi->min_io_size, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "sub_page_size", &ubi->hdrs_min_io_size, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "good_peb_count", &ubi->good_peb_count, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "bad_peb_count", &ubi->bad_peb_count, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "max_erase_counter", &ubi->max_ec, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "mean_erase_counter", &ubi->mean_ec, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "available_pebs", &ubi->avail_pebs, "%u");
+	dev_add_param_uint32_ro(&ubi->dev, "reserved_pebs", &ubi->rsvd_pebs, "%u");
 
 	ubi_devices[ubi_num] = ubi;
 
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 41bf018141..012b90e834 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -330,8 +330,8 @@ static int mdio_bus_probe(struct device_d *_dev)
 	of_set_phy_supported(dev);
 	dev->advertising = dev->supported;
 
-	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
-	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
+	dev_add_param_uint32_ro(&dev->dev, "phy_addr", &dev->addr, "%u");
+	dev_add_param_uint32_ro(&dev->dev, "phy_id", &dev->phy_id, "0x%08x");
 
 	dev->cdev.name = xasprintf("mdio%d-phy%02x",
 				   dev->bus->dev.id,
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index ee65619c4e..80fade0611 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -99,12 +99,12 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 
 	list_add_tail(&pwm->node, &pwm_list);
 
-	p = dev_add_param_int(&pwm->dev, "duty_ns", set_duty_period_ns,
+	p = dev_add_param_uint32(&pwm->dev, "duty_ns", set_duty_period_ns,
 			NULL, &pwm->chip->duty_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	p = dev_add_param_int(&pwm->dev, "period_ns", set_duty_period_ns,
+	p = dev_add_param_uint32(&pwm->dev, "period_ns", set_duty_period_ns,
 			NULL, &pwm->chip->period_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index aba2da0ad3..9170ba4d53 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -447,19 +447,19 @@ int usb_new_device(struct usb_device *dev)
 		goto err_out;
 	}
 
-	dev_add_param_int_ro(&dev->dev, "iManufacturer",
-			dev->descriptor->iManufacturer, "%d");
-	dev_add_param_int_ro(&dev->dev, "iProduct",
-			dev->descriptor->iProduct, "%d");
-	dev_add_param_int_ro(&dev->dev, "iSerialNumber",
-			dev->descriptor->iSerialNumber, "%d");
+	dev_add_param_uint32_fixed(&dev->dev, "iManufacturer",
+			dev->descriptor->iManufacturer, "%u");
+	dev_add_param_uint32_fixed(&dev->dev, "iProduct",
+			dev->descriptor->iProduct, "%u");
+	dev_add_param_uint32_fixed(&dev->dev, "iSerialNumber",
+			dev->descriptor->iSerialNumber, "%u");
 	dev_add_param_fixed(&dev->dev, "iSerialNumber", str);
 	dev_add_param_fixed(&dev->dev, "Manufacturer", dev->mf);
 	dev_add_param_fixed(&dev->dev, "Product", dev->prod);
 	dev_add_param_fixed(&dev->dev, "SerialNumber", dev->serial);
-	dev_add_param_int_ro(&dev->dev, "idVendor",
+	dev_add_param_uint32_fixed(&dev->dev, "idVendor",
 			dev->descriptor->idVendor, "%04x");
-	dev_add_param_int_ro(&dev->dev, "idProduct",
+	dev_add_param_uint32_fixed(&dev->dev, "idProduct",
 			dev->descriptor->idProduct, "%04x");
 	list_add_tail(&dev->list, &usb_device_list);
 	dev_count++;
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index 4f001e102f..ed99b53df7 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -187,9 +187,9 @@ int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadge
 	if (ret)
 		goto err2;
 
-	dev_add_param_int(&gadget->dev, "product", NULL, NULL,
+	dev_add_param_uint32(&gadget->dev, "product", NULL, NULL,
 			&gadget->product_id, "0x%04x", NULL);
-	dev_add_param_int(&gadget->dev, "vendor", NULL, NULL,
+	dev_add_param_uint32(&gadget->dev, "vendor", NULL, NULL,
 			&gadget->vendor_id, "0x%04x", NULL);
 	gadget->manufacturer = xstrdup("barebox");
 	dev_add_param_string(&gadget->dev, "manufacturer", NULL, NULL,
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index ddde6f8523..09c0e47af6 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -70,7 +70,7 @@ int backlight_register(struct backlight_device *bl)
 	if (ret)
 		return ret;
 
-	dev_add_param_int(&bl->dev, "brightness", backlight_brightness_set,
+	dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
 			NULL, &bl->brightness, "%d", bl);
 
 	list_add_tail(&bl->list, &backlights);
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 7c3a800149..9cc7a911ea 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -978,7 +978,7 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
 		return ret;
 	}
 
-	dev_add_param_int(&overlay->dev, "alpha", sdc_alpha_set,
+	dev_add_param_uint32(&overlay->dev, "alpha", sdc_alpha_set,
 			NULL, &fbi->alpha, "%u", overlay);
 
 	return 0;
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 78cb5c0ca2..947f8d5349 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -530,7 +530,7 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
 		return ret;
 	}
 
-	dev_add_param_int(&overlay->dev, "alpha", imxfb_alpha_set,
+	dev_add_param_uint32(&overlay->dev, "alpha", imxfb_alpha_set,
 			NULL, &fbi->alpha, "%u", overlay);
 
 	return 0;
diff --git a/include/param.h b/include/param.h
index 2eb040fea4..be4cca7b68 100644
--- a/include/param.h
+++ b/include/param.h
@@ -52,15 +52,10 @@ struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		char **value, void *priv);
 
-struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
+struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, const char *format, void *priv);
-
-struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv);
+		void *value, enum param_type type, const char *format, void *priv);
 
 struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
@@ -72,12 +67,6 @@ struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		unsigned long *value, const char * const *names, int max, void *priv);
 
-struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
-		int value, const char *format);
-
-struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
-		long long value, const char *format);
-
 struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
@@ -88,7 +77,7 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		u8 *mac, void *priv);
 
-int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
+struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
 
 void dev_remove_param(struct param_d *p);
 
@@ -129,10 +118,10 @@ static inline struct param_d *dev_add_param_string(struct device_d *dev, const c
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
+static inline struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, const char *format, void *priv)
+		void *value, enum param_type type, const char *format, void *priv)
 {
 	return ERR_PTR(-ENOSYS);
 }
@@ -154,56 +143,162 @@ static inline struct param_d *dev_add_param_bitmask(struct device_d *dev, const
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
+static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv)
+		IPaddr_t *ip, void *priv)
 {
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
-		int value, const char *format)
+static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		u8 *mac, void *priv)
 {
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
-		long long value, const char *format)
+static inline struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name,
+						  const char *value)
 {
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
+static inline void dev_remove_param(struct param_d *p) {}
+
+static inline void dev_remove_parameters(struct device_d *dev) {}
+
+static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
+		const char *val)
+{
+	return 0;
+}
+#endif
+
+int param_set_readonly(struct param_d *p, void *priv);
+
+/*
+ * dev_add_param_int
+ * dev_add_param_int32
+ * dev_add_param_uint32
+ * dev_add_param_int64
+ * dev_add_param_uint64
+ */
+#define DECLARE_PARAM_INT(intname, inttype, paramtype) \
+	static inline struct param_d *dev_add_param_##intname(struct device_d *dev, const char *name,	\
+			int (*set)(struct param_d *p, void *priv),					\
+			int (*get)(struct param_d *p, void *priv),					\
+			inttype *value, const char *format, void *priv)					\
+	{												\
+		return __dev_add_param_int(dev, name, set, get, value, paramtype, format, priv);	\
+	}
+
+DECLARE_PARAM_INT(int, int, PARAM_TYPE_INT32)
+DECLARE_PARAM_INT(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_PARAM_INT(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_PARAM_INT(int64, int64_t, PARAM_TYPE_INT64)
+DECLARE_PARAM_INT(uint64, uint64_t, PARAM_TYPE_UINT64)
+
+/*
+ * dev_add_param_int_fixed
+ * dev_add_param_int32_fixed
+ * dev_add_param_uint32_fixed
+ * dev_add_param_int64_fixed
+ * dev_add_param_uint64_fixed
+ */
+#define DECLARE_PARAM_INT_FIXED(intname, inttype, paramtype) \
+	static inline struct param_d *dev_add_param_##intname##_fixed(struct device_d *dev, const char *name,	\
+			inttype value, const char *format)							\
+	{													\
+		return __dev_add_param_int(dev, name, ERR_PTR(-EROFS), NULL, &value, paramtype, format, NULL);	\
+	}
+
+DECLARE_PARAM_INT_FIXED(int, int, PARAM_TYPE_INT32)
+DECLARE_PARAM_INT_FIXED(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_PARAM_INT_FIXED(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_PARAM_INT_FIXED(int64, int64_t, PARAM_TYPE_INT64)
+DECLARE_PARAM_INT_FIXED(uint64, uint64_t, PARAM_TYPE_UINT64)
+
+/*
+ * dev_add_param_int_ro
+ * dev_add_param_int32_ro
+ * dev_add_param_uint32_ro
+ * dev_add_param_int64_ro
+ * dev_add_param_uint64_ro
+ */
+#define DECLARE_PARAM_INT_RO(intname, inttype, paramtype) \
+	static inline struct param_d *dev_add_param_##intname##_ro(struct device_d *dev, const char *name,		\
+			inttype *value, const char *format)								\
+	{														\
+		return __dev_add_param_int(dev, name, param_set_readonly, NULL, value, paramtype, format, NULL);	\
+	}
+
+DECLARE_PARAM_INT_RO(int, int, PARAM_TYPE_INT32)
+DECLARE_PARAM_INT_RO(int32, int32_t, PARAM_TYPE_INT32)
+DECLARE_PARAM_INT_RO(uint32, uint32_t, PARAM_TYPE_UINT32)
+DECLARE_PARAM_INT_RO(int64, int64_t, PARAM_TYPE_INT64)
+DECLARE_PARAM_INT_RO(uint64, uint64_t, PARAM_TYPE_UINT64)
+
+static inline struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		IPaddr_t *ip, void *priv)
+		uint32_t *value, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return __dev_add_param_int(dev, name, set, get, value, PARAM_TYPE_BOOL, "%u", priv);
 }
 
-static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
+static inline struct param_d *dev_add_param_bool_fixed(struct device_d *dev, const char *name,
+		uint32_t value)
+{
+	return __dev_add_param_int(dev, name, ERR_PTR(-EROFS), NULL, &value, PARAM_TYPE_BOOL,
+				   "%u", NULL);
+}
+
+static inline struct param_d *dev_add_param_bool_ro(struct device_d *dev, const char *name,
+		uint32_t *value)
+{
+	return __dev_add_param_int(dev, name, param_set_readonly, NULL, value, PARAM_TYPE_BOOL,
+				   "%u", NULL);
+}
+
+static inline struct param_d *dev_add_param_string_ro(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		u8 *mac, void *priv)
+		char **value, void *priv)
 {
-	return ERR_PTR(-ENOSYS);
+	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
 }
 
-static inline int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
+static inline struct param_d *dev_add_param_string_fixed(struct device_d *dev, const char *name,
+		char *value)
 {
-	return 0;
+	return dev_add_param_fixed(dev, name, value);
 }
 
-static inline void dev_remove_param(struct param_d *p) {}
-
-static inline void dev_remove_parameters(struct device_d *dev) {}
+static inline struct param_d *dev_add_param_enum_ro(struct device_d *dev, const char *name,
+		int *value, const char * const *names, int max)
+{
+	return dev_add_param_enum(dev, name, param_set_readonly, NULL,
+				  value, names, max, NULL);
+}
 
-static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
-		const char *val)
+static inline struct param_d *dev_add_param_bitmask_ro(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		unsigned long *value, const char * const *names, int max, void *priv)
 {
-	return 0;
+	return dev_add_param_bitmask(dev, name, param_set_readonly, NULL,
+				     value, names, max, NULL);
 }
-#endif
 
+/*
+ * unimplemented:
+ * dev_add_param_enum_fixed
+ * dev_add_param_bitmask_fixed
+ * dev_add_param_ip_ro
+ * dev_add_param_ip_fixed
+ * dev_add_param_mac_ro
+ * dev_add_param_mac_fixed
+ */
 #endif /* PARAM_H */
diff --git a/lib/parameter.c b/lib/parameter.c
index 6456779e71..a21b8fa4a4 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -218,7 +218,7 @@ struct param_d *dev_add_param(struct device_d *dev, const char *name,
  * @param name	The name of the parameter
  * @param value	The value of the parameter
  */
-int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
+struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
 {
 	struct param_d *param;
 	int ret;
@@ -228,12 +228,12 @@ int dev_add_param_fixed(struct device_d *dev, const char *name, const char *valu
 	ret = __dev_add_param(param, dev, name, NULL, NULL, PARAM_FLAG_RO);
 	if (ret) {
 		free(param);
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	param->value = strdup(value);
 
-	return 0;
+	return param;
 }
 
 struct param_string {
@@ -315,10 +315,9 @@ struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
 
 struct param_int {
 	struct param_d param;
-	int *value;
+	void *value;
+	int dsize;
 	const char *format;
-#define PARAM_INT_FLAG_BOOL (1 << 0)
-	unsigned flags;
 	int (*set)(struct param_d *p, void *priv);
 	int (*get)(struct param_d *p, void *priv);
 };
@@ -331,18 +330,32 @@ static inline struct param_int *to_param_int(struct param_d *p)
 static int param_int_set(struct device_d *dev, struct param_d *p, const char *val)
 {
 	struct param_int *pi = to_param_int(p);
-	int value_save = *pi->value;
+	u8 value_save[pi->dsize];
 	int ret;
 
 	if (!val)
 		return -EINVAL;
 
-	if (pi->flags & PARAM_INT_FLAG_BOOL) {
+	memcpy(value_save, pi->value, pi->dsize);
+
+	switch (p->type) {
+	case PARAM_TYPE_BOOL:
 		ret = strtobool(val, pi->value);
-		if (ret)
-			return ret;
-	} else {
-		*pi->value = simple_strtol(val, NULL, 0);
+		break;
+	case PARAM_TYPE_INT32:
+		*(uint32_t *)pi->value = simple_strtol(val, NULL, 0);
+		break;
+	case PARAM_TYPE_UINT32:
+		*(int32_t *)pi->value = simple_strtoul(val, NULL, 0);
+		break;
+	case PARAM_TYPE_INT64:
+		*(int64_t *)pi->value = simple_strtoll(val, NULL, 0);
+		break;
+	case PARAM_TYPE_UINT64:
+		*(uint64_t *)pi->value = simple_strtoull(val, NULL, 0);
+		break;
+	default:
+		return -EINVAL;
 	}
 
 	if (!pi->set)
@@ -350,7 +363,7 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
 
 	ret = pi->set(p, p->driver_priv);
 	if (ret)
-		*pi->value = value_save;
+		memcpy(pi->value, value_save, pi->dsize);
 
 	return ret;
 }
@@ -367,11 +380,28 @@ static const char *param_int_get(struct device_d *dev, struct param_d *p)
 	}
 
 	free(p->value);
-	p->value = basprintf(pi->format, *pi->value);
+	switch (p->type) {
+	case PARAM_TYPE_BOOL:
+	case PARAM_TYPE_INT32:
+	case PARAM_TYPE_UINT32:
+		p->value = basprintf(pi->format, *(int32_t *)pi->value);
+		break;
+	case PARAM_TYPE_INT64:
+	case PARAM_TYPE_UINT64:
+		p->value = basprintf(pi->format, *(int64_t *)pi->value);
+		break;
+	default:
+		return NULL;
+	}
 
 	return p->value;
 }
 
+int param_set_readonly(struct param_d *p, void *priv)
+{
+	return -EROFS;
+}
+
 /**
  * dev_add_param_int - add an integer parameter to a device
  * @param dev	The device
@@ -379,6 +409,7 @@ static const char *param_int_get(struct device_d *dev, struct param_d *p)
  * @param set	set function
  * @param get	get function
  * @param value	pointer to the integer containing the value of the parameter
+ * @param type  The variable type
  * @param format the printf format used to print the value
  * @param priv	user private data, will be passed to get/set
  *
@@ -387,23 +418,51 @@ static const char *param_int_get(struct device_d *dev, struct param_d *p)
  * The set function can be used as a notifer when the variable is about
  * to be written. Can also be used to limit the value.
  */
-struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
+struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, const char *format, void *priv)
+		void *value, enum param_type type, const char *format, void *priv)
 {
 	struct param_int *pi;
 	struct param_d *p;
-	int ret;
+	int ret, dsize;
+
+	switch (type) {
+	case PARAM_TYPE_BOOL:
+		dsize = sizeof(uint32_t);
+		break;
+	case PARAM_TYPE_INT32:
+		dsize = sizeof(int32_t);
+		break;
+	case PARAM_TYPE_UINT32:
+		dsize = sizeof(uint32_t);
+		break;
+	case PARAM_TYPE_INT64:
+		dsize = sizeof(int64_t);
+		break;
+	case PARAM_TYPE_UINT64:
+		dsize = sizeof(uint64_t);
+		break;
+	default:
+		return ERR_PTR(-EINVAL);
+	}
 
 	pi = xzalloc(sizeof(*pi));
-	pi->value = value;
+
+	if (IS_ERR(set)) {
+		pi->value = xmemdup(value, dsize);
+		set = param_set_readonly;
+	} else {
+		pi->value = value;
+	}
+
+	pi->dsize = dsize;
 	pi->format = format;
 	pi->set = set;
 	pi->get = get;
 	p = &pi->param;
 	p->driver_priv = priv;
-	p->type = PARAM_TYPE_INT32;
+	p->type = type;
 
 	ret = __dev_add_param(p, dev, name, param_int_set, param_int_get, 0);
 	if (ret) {
@@ -662,99 +721,6 @@ struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
 	return &pb->param;
 }
 
-/**
- * dev_add_param_bool - add an boolean parameter to a device
- * @param dev	The device
- * @param name	The name of the parameter
- * @param set	set function
- * @param get	get function
- * @param value	pointer to the integer containing the value of the parameter
- * @param priv	user private data, will be passed to get/set
- *
- * The get function can be used as a notifier when the variable is about
- * to be read.
- * The set function can be used as a notifer when the variable is about
- * to be written. Can also be used to limit the value.
- */
-struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv)
-{
-	struct param_int *pi;
-	struct param_d *p;
-
-	p = dev_add_param_int(dev, name, set, get, value, "%d", priv);
-	if (IS_ERR(p))
-		return p;
-
-	p->type = PARAM_TYPE_BOOL;
-
-	pi = to_param_int(p);
-	pi->flags |= PARAM_INT_FLAG_BOOL;
-
-	return p;
-}
-
-struct param_int_ro {
-	struct param_d param;
-	char *value;
-};
-
-/**
- * dev_add_param_int_ro - add a read only integer parameter to a device
- * @param dev	The device
- * @param name	The name of the parameter
- * @param value	The value of the parameter
- * @param format the printf format used to print the value
- */
-struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
-		int value, const char *format)
-{
-	struct param_int *piro;
-	int ret;
-
-	piro = xzalloc(sizeof(*piro));
-
-	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, PARAM_FLAG_RO);
-	if (ret) {
-		free(piro);
-		return ERR_PTR(ret);
-	}
-
-	piro->param.type = PARAM_TYPE_INT32;
-	piro->param.value = basprintf(format, value);
-
-	return &piro->param;
-}
-
-/**
- * dev_add_param_llint_ro - add a read only long long parameter to a device
- * @param dev	The device
- * @param name	The name of the parameter
- * @param value	The value of the parameter
- * @param format the printf format used to print the value
- */
-struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
-		long long value, const char *format)
-{
-	struct param_int *piro;
-	int ret;
-
-	piro = xzalloc(sizeof(*piro));
-
-	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, PARAM_FLAG_RO);
-	if (ret) {
-		free(piro);
-		return ERR_PTR(ret);
-	}
-
-	piro->param.type = PARAM_TYPE_INT64;
-	piro->param.value = basprintf(format, value);
-
-	return &piro->param;
-}
-
 struct param_ip {
 	struct param_d param;
 	IPaddr_t *ip;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
