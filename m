Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YE-BH
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:31 +0200
Message-Id: <1405955687-27433-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/23] USB: gadget: specify vendor/product id with device
 parameters
To: barebox@lists.infradead.org

This introduces the device parameters:

usbgadget.product
usbgadget.vendor
usbgadget.manufacturer
usbgadget.productname

These variables are used to configure the USB vendor id, product id,
manufacturer name and product name.

Previously these were configured with arguments to the usbserial
and dfu command. The parameters are device static, so it's nice to
configure it somewhere in the environment instead of when calling
dfu/usbserial. Also when other gadget drivers are added we do not
have to duplicate the option parsing further.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c                | 44 ++-----------------------------------------
 commands/usbserial.c          | 27 ++------------------------
 drivers/usb/gadget/dfu.c      | 16 ++++++++++++----
 drivers/usb/gadget/serial.c   | 27 ++++++++++++++------------
 drivers/usb/gadget/udc-core.c | 15 +++++++++++++--
 include/usb/dfu.h             |  5 -----
 include/usb/gadget.h          |  5 +++++
 include/usb/usbserial.h       |  4 ----
 8 files changed, 49 insertions(+), 94 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index 3546252..a8948f1 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -97,47 +97,17 @@ static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *df
  */
 static int do_dfu(int argc, char *argv[])
 {
-	int opt, n = 0;
+	int n = 0;
 	struct usb_dfu_pdata pdata;
 	char *endptr, *argstr;
 	struct usb_dfu_dev *dfu_alts = NULL;
-	char *manufacturer = "barebox";
-	const char *productname = barebox_get_model();
-	u16 idVendor = 0, idProduct = 0;
 	int ret;
 
-	while((opt = getopt(argc, argv, "m:p:V:P:")) > 0) {
-		switch(opt) {
-		case 'm':
-			manufacturer = optarg;
-			break;
-		case 'p':
-			productname = optarg;
-			break;
-		case 'V':
-			idVendor = simple_strtoul(optarg, NULL, 0);
-			break;
-		case 'P':
-			idProduct = simple_strtoul(optarg, NULL, 0);
-			break;
-		}
-	}
-
 	if (argc != optind + 1)
 		return COMMAND_ERROR_USAGE;
 
 	argstr = argv[optind];
 
-	if (!idProduct && !idVendor) {
-		idVendor = 0x1d50; /* Openmoko, Inc */
-		idProduct = 0x60a2; /* barebox bootloader USB DFU Mode */
-	}
-
-	if ((idProduct && !idVendor) || (!idProduct && idVendor)) {
-		printf("Only one of vendor id or product id given\n");
-		return -EINVAL;
-	}
-
 	for (n = 0; *argstr; n++) {
 		dfu_alts = xrealloc(dfu_alts, sizeof(*dfu_alts) * (n + 1));
 		if (dfu_do_parse_one(argstr, &endptr, &dfu_alts[n])) {
@@ -151,11 +121,6 @@ static int do_dfu(int argc, char *argv[])
 	pdata.alts = dfu_alts;
 	pdata.num_alts = n;
 
-	pdata.manufacturer = manufacturer;
-	pdata.productname = productname;
-	pdata.idVendor = idVendor;
-	pdata.idProduct = idProduct;
-
 	ret = usb_dfu_register(&pdata);
 
 out:
@@ -179,17 +144,12 @@ BAREBOX_CMD_HELP_TEXT("- 's' safe mode (download the complete image before flash
 BAREBOX_CMD_HELP_TEXT("- 'r' readback of the firmware is allowed")
 BAREBOX_CMD_HELP_TEXT("- 'c' the file will be created (for use with regular files)")
 BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-m STR", "Manufacturer string (barebox)")
-BAREBOX_CMD_HELP_OPT ("-p STR", "product string")
-BAREBOX_CMD_HELP_OPT ("-V ID",  "vendor id")
-BAREBOX_CMD_HELP_OPT ("-P ID",  "product id")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dfu)
 	.cmd		= do_dfu,
 	BAREBOX_CMD_DESC("device firmware update")
-	BAREBOX_CMD_OPTS("[-mpVP] DESC")
+	BAREBOX_CMD_OPTS("DESC")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_dfu_help)
 BAREBOX_CMD_END
diff --git a/commands/usbserial.c b/commands/usbserial.c
index 7e82112..e80b315 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -31,25 +31,10 @@ static int do_usbserial(int argc, char *argv[])
 {
 	int opt;
 	struct usb_serial_pdata pdata;
-	char *manufacturer = "barebox";
-	const char *productname = barebox_get_model();
-	u16 idVendor = 0, idProduct = 0;
 	int acm = 1;
 
-	while ((opt = getopt(argc, argv, "m:p:V:P:asd")) > 0) {
+	while ((opt = getopt(argc, argv, "asd")) > 0) {
 		switch (opt) {
-		case 'm':
-			manufacturer = optarg;
-			break;
-		case 'p':
-			productname = optarg;
-			break;
-		case 'V':
-			idVendor = simple_strtoul(optarg, NULL, 0);
-			break;
-		case 'P':
-			idProduct = simple_strtoul(optarg, NULL, 0);
-			break;
 		case 'a':
 			acm = 1;
 			break;
@@ -62,10 +47,6 @@ static int do_usbserial(int argc, char *argv[])
 		}
 	}
 
-	pdata.manufacturer = manufacturer;
-	pdata.productname = productname;
-	pdata.idVendor = idVendor;
-	pdata.idProduct = idProduct;
 	pdata.acm = acm;
 
 	return usb_serial_register(&pdata);
@@ -75,10 +56,6 @@ BAREBOX_CMD_HELP_START(usbserial)
 BAREBOX_CMD_HELP_TEXT("Enable / disable a serial gadget on the USB device interface.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-m STR",  "Manufacturer string (barebox)")
-BAREBOX_CMD_HELP_OPT ("-p STR",  "product string")
-BAREBOX_CMD_HELP_OPT ("-V ID",   "vendor id")
-BAREBOX_CMD_HELP_OPT ("-P ID",   "product id")
 BAREBOX_CMD_HELP_OPT ("-a",   "CDC ACM (default)")
 BAREBOX_CMD_HELP_OPT ("-s",   "Generic Serial")
 BAREBOX_CMD_HELP_OPT ("-d",   "Disable the serial gadget")
@@ -87,7 +64,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usbserial)
 	.cmd		= do_usbserial,
 	BAREBOX_CMD_DESC("serial gadget enable/disable")
-	BAREBOX_CMD_OPTS("[-mpVPasd] <description>")
+	BAREBOX_CMD_OPTS("[-asd] <description>")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbserial_help)
 BAREBOX_CMD_END
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index a2b4c0d..85d99e9 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -655,8 +655,20 @@ static struct usb_device_descriptor dfu_dev_descriptor = {
 
 static int dfu_driver_bind(struct usb_composite_dev *cdev)
 {
+	struct usb_gadget *gadget = cdev->gadget;
 	int status;
 
+	if (gadget->vendor_id && gadget->product_id) {
+		dfu_dev_descriptor.idVendor = cpu_to_le16(gadget->vendor_id);
+		dfu_dev_descriptor.idProduct = cpu_to_le16(gadget->product_id);
+	} else {
+		dfu_dev_descriptor.idVendor = cpu_to_le16(0x1d50); /* Openmoko, Inc */
+		dfu_dev_descriptor.idProduct = cpu_to_le16(0x60a2); /* barebox bootloader USB DFU Mode */
+	}
+
+	strings_dev[STRING_MANUFACTURER_IDX].s = gadget->manufacturer;
+	strings_dev[STRING_PRODUCT_IDX].s = gadget->productname;
+
 	status = usb_string_id(cdev);
 	if (status < 0)
 		goto fail;
@@ -698,10 +710,6 @@ int usb_dfu_register(struct usb_dfu_pdata *pdata)
 
 	dfu_devs = pdata->alts;
 	dfu_num_alt = pdata->num_alts;
-	dfu_dev_descriptor.idVendor = pdata->idVendor;
-	dfu_dev_descriptor.idProduct = pdata->idProduct;
-	strings_dev[STRING_MANUFACTURER_IDX].s = pdata->manufacturer;
-	strings_dev[STRING_PRODUCT_IDX].s = pdata->productname;
 
 	ret = usb_composite_probe(&dfu_driver);
 	if (ret)
diff --git a/drivers/usb/gadget/serial.c b/drivers/usb/gadget/serial.c
index b3314a3..f1d98b7 100644
--- a/drivers/usb/gadget/serial.c
+++ b/drivers/usb/gadget/serial.c
@@ -75,7 +75,6 @@ static struct usb_device_descriptor device_desc = {
 	.bDeviceSubClass =	0,
 	.bDeviceProtocol =	0,
 	/* .bMaxPacketSize0 = f(hardware) */
-	.idVendor =		cpu_to_le16(GS_VENDOR_ID),
 	/* .idProduct =	f(use_acm) */
 	.bcdDevice = cpu_to_le16(GS_VERSION_NUM),
 	/* .iManufacturer = DYNAMIC */
@@ -175,11 +174,26 @@ out:
 static int __init gs_bind(struct usb_composite_dev *cdev)
 {
 	int			status;
+	struct usb_gadget	*gadget = cdev->gadget;
 
 	/* Allocate string descriptor numbers ... note that string
 	 * contents can be overridden by the composite_dev glue.
 	 */
 
+	if (gadget->vendor_id && gadget->product_id) {
+		device_desc.idVendor = cpu_to_le16(gadget->vendor_id);
+		device_desc.idProduct = cpu_to_le16(gadget->product_id);
+	} else {
+		device_desc.idVendor = cpu_to_le16(GS_VENDOR_ID);
+		if (use_acm)
+			device_desc.idProduct = cpu_to_le16(GS_CDC_PRODUCT_ID);
+		else
+			device_desc.idProduct = cpu_to_le16(GS_PRODUCT_ID);
+	}
+
+	strings_dev[USB_GADGET_MANUFACTURER_IDX].s = gadget->manufacturer;
+	strings_dev[USB_GADGET_PRODUCT_IDX].s = gadget->productname;
+
 	status = usb_string_ids_tab(cdev, strings_dev);
 	if (status < 0)
 		goto fail;
@@ -257,23 +271,12 @@ int usb_serial_register(struct usb_serial_pdata *pdata)
 		serial_config_driver.label = "CDC ACM config";
 		serial_config_driver.bConfigurationValue = 2;
 		device_desc.bDeviceClass = USB_CLASS_COMM;
-		device_desc.idProduct =
-				cpu_to_le16(GS_CDC_PRODUCT_ID);
 	} else {
 		serial_config_driver.label = "Generic Serial config";
 		serial_config_driver.bConfigurationValue = 1;
 		device_desc.bDeviceClass = USB_CLASS_VENDOR_SPEC;
-		device_desc.idProduct =
-				cpu_to_le16(GS_PRODUCT_ID);
 	}
 
-	if (pdata->idVendor)
-		device_desc.idVendor = pdata->idVendor;
-	if (pdata->idProduct)
-		device_desc.idProduct = pdata->idProduct;
-	strings_dev[USB_GADGET_MANUFACTURER_IDX].s = pdata->manufacturer;
-	strings_dev[USB_GADGET_PRODUCT_IDX].s = pdata->productname;
-
 	return usb_composite_probe(&gserial_driver);
 }
 
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index fc931aa..95efd50 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -165,14 +165,25 @@ int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadge
 	if (!udc)
 		goto err1;
 
-	strcpy(gadget->dev.name, "gadget");
-	gadget->dev.id = DEVICE_ID_DYNAMIC;
+	strcpy(gadget->dev.name, "usbgadget");
+	gadget->dev.id = DEVICE_ID_SINGLE;
 	gadget->dev.parent = parent;
 
 	ret = register_device(&gadget->dev);
 	if (ret)
 		goto err2;
 
+	dev_add_param_int(&gadget->dev, "product", NULL, NULL,
+			&gadget->product_id, "0x%04x", NULL);
+	dev_add_param_int(&gadget->dev, "vendor", NULL, NULL,
+			&gadget->vendor_id, "0x%04x", NULL);
+	gadget->manufacturer = xstrdup("barebox");
+	dev_add_param_string(&gadget->dev, "manufacturer", NULL, NULL,
+			&gadget->manufacturer, NULL);
+	gadget->productname = xstrdup(barebox_get_model());
+	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
+			&gadget->productname, NULL);
+
 	strcpy(udc->dev.name, "udc");
 	udc->dev.id = DEVICE_ID_DYNAMIC;
 
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index df4f2fd..4617534 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -33,11 +33,6 @@ struct usb_dfu_dev {
 };
 
 struct usb_dfu_pdata {
-	char			*manufacturer;
-	const char		*productname;
-	u16			idVendor;
-	u16			idProduct;
-
 	struct usb_dfu_dev	*alts;
 	int			num_alts;
 };
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 8fd8b01..7106f9d 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -554,6 +554,11 @@ struct usb_gadget {
 	unsigned			a_hnp_support:1;
 	unsigned			a_alt_hnp_support:1;
 	unsigned			quirk_ep_out_aligned_size:1;
+
+	uint32_t			vendor_id;
+	uint32_t			product_id;
+	char				*manufacturer;
+	char				*productname;
 };
 #define work_to_gadget(w)	(container_of((w), struct usb_gadget, work))
 
diff --git a/include/usb/usbserial.h b/include/usb/usbserial.h
index e047ca7..c537eba 100644
--- a/include/usb/usbserial.h
+++ b/include/usb/usbserial.h
@@ -2,10 +2,6 @@
 #define _USB_SERIAL_H
 
 struct usb_serial_pdata {
-	char		*manufacturer;
-	const char		*productname;
-	u16			idVendor;
-	u16			idProduct;
 	bool			acm;
 };
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
