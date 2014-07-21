Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003Y9-BG
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:25 +0200
Message-Id: <1405955687-27433-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/23] USB: gadget: Update to 3.15
To: barebox@lists.infradead.org

This updates the USB Gadget stack to Linux-3.15.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usbserial.c              |   22 +-
 drivers/usb/core/Makefile         |    1 +
 drivers/usb/core/common.c         |   19 +
 drivers/usb/core/usb.c            |    1 +
 drivers/usb/gadget/Kconfig        |    2 +-
 drivers/usb/gadget/Makefile       |    2 +-
 drivers/usb/gadget/at91_udc.c     |  121 ++--
 drivers/usb/gadget/composite.c    | 1182 ++++++++++++++++++++++++++++++-------
 drivers/usb/gadget/config.c       |  128 +++-
 drivers/usb/gadget/dfu.c          |   12 +-
 drivers/usb/gadget/epautoconf.c   |  233 +++++---
 drivers/usb/gadget/f_acm.c        |  300 ++++++----
 drivers/usb/gadget/f_serial.c     |  197 ++++---
 drivers/usb/gadget/fsl_udc.c      |   70 +--
 drivers/usb/gadget/functions.c    |   99 ++++
 drivers/usb/gadget/gadget_chips.h |   60 +-
 drivers/usb/gadget/pxa27x_udc.c   |   37 +-
 drivers/usb/gadget/serial.c       |  263 +++++----
 drivers/usb/gadget/u_serial.c     |  254 ++++----
 drivers/usb/gadget/u_serial.h     |   16 +-
 drivers/usb/gadget/udc-core.c     |  357 +++++++++++
 include/usb/ch9.h                 |  241 +++++++-
 include/usb/composite.h           |  232 ++++++--
 include/usb/gadget.h              |  234 ++++++--
 include/usb/usbserial.h           |    6 +-
 25 files changed, 3054 insertions(+), 1035 deletions(-)
 create mode 100644 drivers/usb/core/common.c
 create mode 100644 drivers/usb/gadget/functions.c
 create mode 100644 drivers/usb/gadget/udc-core.c

diff --git a/commands/usbserial.c b/commands/usbserial.c
index e4c2f18..7e82112 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -34,7 +34,7 @@ static int do_usbserial(int argc, char *argv[])
 	char *manufacturer = "barebox";
 	const char *productname = barebox_get_model();
 	u16 idVendor = 0, idProduct = 0;
-	int mode = 0;
+	int acm = 1;
 
 	while ((opt = getopt(argc, argv, "m:p:V:P:asd")) > 0) {
 		switch (opt) {
@@ -51,15 +51,10 @@ static int do_usbserial(int argc, char *argv[])
 			idProduct = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'a':
-			mode = 0;
+			acm = 1;
 			break;
-#ifdef HAVE_OBEX
-		case 'o':
-			mode = 1;
-			break;
-#endif
 		case 's':
-			mode = 2;
+			acm = 0;
 			break;
 		case 'd':
 			usb_serial_unregister();
@@ -71,7 +66,7 @@ static int do_usbserial(int argc, char *argv[])
 	pdata.productname = productname;
 	pdata.idVendor = idVendor;
 	pdata.idProduct = idProduct;
-	pdata.mode = mode;
+	pdata.acm = acm;
 
 	return usb_serial_register(&pdata);
 }
@@ -85,9 +80,6 @@ BAREBOX_CMD_HELP_OPT ("-p STR",  "product string")
 BAREBOX_CMD_HELP_OPT ("-V ID",   "vendor id")
 BAREBOX_CMD_HELP_OPT ("-P ID",   "product id")
 BAREBOX_CMD_HELP_OPT ("-a",   "CDC ACM (default)")
-#ifdef HAVE_OBEX
-BAREBOX_CMD_HELP_OPT ("-o",   "CDC OBEX")
-#endif
 BAREBOX_CMD_HELP_OPT ("-s",   "Generic Serial")
 BAREBOX_CMD_HELP_OPT ("-d",   "Disable the serial gadget")
 BAREBOX_CMD_HELP_END
@@ -95,11 +87,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usbserial)
 	.cmd		= do_usbserial,
 	BAREBOX_CMD_DESC("serial gadget enable/disable")
-	BAREBOX_CMD_OPTS("[-mpVPa"
-#ifdef HAVE_OBEX
-					  "o"
-#endif
-					  "sd] <description>")
+	BAREBOX_CMD_OPTS("[-mpVPasd] <description>")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbserial_help)
 BAREBOX_CMD_END
diff --git a/drivers/usb/core/Makefile b/drivers/usb/core/Makefile
index dc7e635..58f6c5e 100644
--- a/drivers/usb/core/Makefile
+++ b/drivers/usb/core/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_USB_HOST) += usb.o hub.o
+obj-$(CONFIG_USB) += common.o
 obj-$(CONFIG_OFDEVICE) += of.o
diff --git a/drivers/usb/core/common.c b/drivers/usb/core/common.c
new file mode 100644
index 0000000..690d5a3
--- /dev/null
+++ b/drivers/usb/core/common.c
@@ -0,0 +1,19 @@
+#include <common.h>
+#include <usb/ch9.h>
+
+static const char *const speed_names[] = {
+	[USB_SPEED_UNKNOWN] = "UNKNOWN",
+	[USB_SPEED_LOW] = "low-speed",
+	[USB_SPEED_FULL] = "full-speed",
+	[USB_SPEED_HIGH] = "high-speed",
+	[USB_SPEED_WIRELESS] = "wireless",
+	[USB_SPEED_SUPER] = "super-speed",
+};
+
+const char *usb_speed_string(enum usb_device_speed speed)
+{
+	if (speed < 0 || speed >= ARRAY_SIZE(speed_names))
+		speed = USB_SPEED_UNKNOWN;
+	return speed_names[speed];
+}
+EXPORT_SYMBOL_GPL(usb_speed_string);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index fdf9d94..351e783 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -51,6 +51,7 @@
 #include <dma.h>
 
 #include <usb/usb.h>
+#include <usb/ch9.h>
 
 #include "usb.h"
 #include "hub.h"
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 7d5a346..806bb16 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -45,7 +45,7 @@ config USB_GADGET_DFU
 
 config USB_GADGET_SERIAL
 	bool
-	depends on EXPERIMENTAL && !CONSOLE_NONE
+	depends on !CONSOLE_NONE
 	prompt "Serial Gadget"
 
 endif
diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index 367d7ce..9bd28ec 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -1,5 +1,5 @@
 
-obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o
+obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o udc-core.o functions.o config.o
 obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
 obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
 obj-$(CONFIG_USB_GADGET_DRIVER_ARC) += fsl_udc.o
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 2768ddd..2b19be9 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -749,20 +749,6 @@ static int at91_set_selfpowered(struct usb_gadget *gadget, int is_on)
 	return 0;
 }
 
-static const struct usb_gadget_ops at91_udc_ops = {
-	.get_frame		= at91_get_frame,
-	.wakeup			= at91_wakeup,
-	.set_selfpowered	= at91_set_selfpowered,
-	.vbus_session		= at91_vbus_session,
-	.pullup			= at91_pullup,
-
-	/*
-	 * VBUS-powered devices may also also want to support bigger
-	 * power budgets after an appropriate SET_CONFIGURATION.
-	 */
-	/* .vbus_power		= at91_vbus_power, */
-};
-
 /*-------------------------------------------------------------------------*/
 
 static int handle_ep(struct at91_ep *ep)
@@ -1244,6 +1230,49 @@ static void at91_udc_irq (void *_udc)
 	}
 }
 
+static int at91_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
+{
+	struct at91_udc	*udc = container_of(gadget, struct at91_udc, gadget);
+
+	if (!udc->iclk)
+		return -ENODEV;
+
+	udc->driver = driver;
+	udc->enabled = 1;
+	udc->selfpowered = 1;
+
+	DBG(udc, "bound to %s\n", driver->function);
+	return 0;
+}
+
+static int at91_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
+{
+	struct at91_udc	*udc = container_of(gadget, struct at91_udc, gadget);
+
+	udc->enabled = 0;
+	at91_udp_write(udc, AT91_UDP_IDR, ~0);
+	udc->driver = NULL;
+
+	DBG(udc, "unbound from %s\n", driver->function);
+	return 0;
+}
+
+static const struct usb_gadget_ops at91_udc_ops = {
+	.get_frame		= at91_get_frame,
+	.wakeup			= at91_wakeup,
+	.set_selfpowered	= at91_set_selfpowered,
+	.vbus_session		= at91_vbus_session,
+	.pullup			= at91_pullup,
+
+	/*
+	 * VBUS-powered devices may also also want to support bigger
+	 * power budgets after an appropriate SET_CONFIGURATION.
+	 */
+	/* .vbus_power		= at91_vbus_power, */
+	.udc_start		= at91_udc_start,
+	.udc_stop		= at91_udc_stop,
+};
+
 /*-------------------------------------------------------------------------*/
 
 static struct at91_udc controller = {
@@ -1346,66 +1375,6 @@ int usb_gadget_poll(void)
 	return value;
 }
 
-int usb_gadget_register_driver(struct usb_gadget_driver *driver)
-{
-	struct at91_udc	*udc = &controller;
-	int		retval;
-
-	if (!udc->iclk)
-		return -ENODEV;
-
-	if (!driver
-			|| driver->speed < USB_SPEED_FULL
-			|| !driver->bind
-			|| !driver->setup) {
-		DBG(udc, "bad parameter.\n");
-		return -EINVAL;
-	}
-
-	if (udc->driver) {
-		DBG(udc, "UDC already has a gadget driver\n");
-		return -EBUSY;
-	}
-
-	udc->driver = driver;
-	udc->enabled = 1;
-	udc->selfpowered = 1;
-
-	retval = driver->bind(&udc->gadget);
-	if (retval) {
-		DBG(udc, "bind() returned %d\n", retval);
-		udc->driver = NULL;
-		udc->enabled = 0;
-		udc->selfpowered = 0;
-		return retval;
-	}
-
-	pullup(udc, 1);
-
-	DBG(udc, "bound to %s\n", driver->function);
-	return 0;
-}
-EXPORT_SYMBOL (usb_gadget_register_driver);
-
-int usb_gadget_unregister_driver (struct usb_gadget_driver *driver)
-{
-	struct at91_udc *udc = &controller;
-
-	if (!driver || driver != udc->driver || !driver->unbind)
-		return -EINVAL;
-
-	udc->enabled = 0;
-	at91_udp_write(udc, AT91_UDP_IDR, ~0);
-	pullup(udc, 0);
-
-	driver->unbind(&udc->gadget);
-	udc->driver = NULL;
-
-	DBG(udc, "unbound from %s\n", driver->function);
-	return 0;
-}
-EXPORT_SYMBOL (usb_gadget_unregister_driver);
-
 /*-------------------------------------------------------------------------*/
 
 static void at91_udc_poller(struct poller_struct *poller)
@@ -1513,6 +1482,10 @@ static int __init at91udc_probe(struct device_d *dev)
 
 	poller_register(&poller);
 
+	retval = usb_add_gadget_udc_release(dev, &udc->gadget, NULL);
+	if (retval)
+		goto fail0a;
+
 	INFO(udc, "%s version %s\n", driver_name, DRIVER_VERSION);
 	return 0;
 
diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 71d0ecf..d6638fe 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -7,12 +7,6 @@
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 /* #define VERBOSE_DEBUG */
@@ -20,10 +14,13 @@
 #include <common.h>
 #include <errno.h>
 #include <dma.h>
+#include <linux/err.h>
+#include <linux/bitmap.h>
 #include <usb/composite.h>
+#include <asm/unaligned.h>
 #include <asm/byteorder.h>
 
-#define CONFIG_USB_GADGET_VBUS_DRAW 2
+static unsigned int usb_gadget_vbus_draw_ma = 2;
 
 /*
  * The code in this file is utility code, used to build a gadget driver
@@ -32,24 +29,139 @@
  * with the relevant device-wide data.
  */
 
-/* big enough to hold our biggest descriptor */
-#define USB_BUFSIZ	512
+static struct usb_gadget_strings **get_containers_gs(
+		struct usb_gadget_string_container *uc)
+{
+	return (struct usb_gadget_strings **)uc->stash;
+}
 
-static struct usb_composite_driver *composite;
+/**
+ * next_ep_desc() - advance to the next EP descriptor
+ * @t: currect pointer within descriptor array
+ *
+ * Return: next EP descriptor or NULL
+ *
+ * Iterate over @t until either EP descriptor found or
+ * NULL (that indicates end of list) encountered
+ */
+static struct usb_descriptor_header**
+next_ep_desc(struct usb_descriptor_header **t)
+{
+	for (; *t; t++) {
+		if ((*t)->bDescriptorType == USB_DT_ENDPOINT)
+			return t;
+	}
+	return NULL;
+}
 
-/* Some systems will need runtime overrides for the  product identifers
- * published in the device descriptor, either numbers or strings or both.
- * String parameters are in UTF-8 (superset of ASCII's 7 bit characters).
+/*
+ * for_each_ep_desc()- iterate over endpoint descriptors in the
+ *		descriptors list
+ * @start:	pointer within descriptor array.
+ * @ep_desc:	endpoint descriptor to use as the loop cursor
  */
+#define for_each_ep_desc(start, ep_desc) \
+	for (ep_desc = next_ep_desc(start); \
+	      ep_desc; ep_desc = next_ep_desc(ep_desc+1))
 
-static ushort idVendor;
-static ushort idProduct;
-static ushort bcdDevice;
-static char *iManufacturer;
-static char *iProduct;
-static char *iSerialNumber;
+/**
+ * config_ep_by_speed() - configures the given endpoint
+ * according to gadget speed.
+ * @g: pointer to the gadget
+ * @f: usb function
+ * @_ep: the endpoint to configure
+ *
+ * Return: error code, 0 on success
+ *
+ * This function chooses the right descriptors for a given
+ * endpoint according to gadget speed and saves it in the
+ * endpoint desc field. If the endpoint already has a descriptor
+ * assigned to it - overwrites it with currently corresponding
+ * descriptor. The endpoint maxpacket field is updated according
+ * to the chosen descriptor.
+ * Note: the supplied function should hold all the descriptors
+ * for supported speeds
+ */
+int config_ep_by_speed(struct usb_gadget *g,
+			struct usb_function *f,
+			struct usb_ep *_ep)
+{
+	struct usb_composite_dev	*cdev = get_gadget_data(g);
+	struct usb_endpoint_descriptor *chosen_desc = NULL;
+	struct usb_descriptor_header **speed_desc = NULL;
 
-/*-------------------------------------------------------------------------*/
+	struct usb_ss_ep_comp_descriptor *comp_desc = NULL;
+	int want_comp_desc = 0;
+
+	struct usb_descriptor_header **d_spd; /* cursor for speed desc */
+
+	if (!g || !f || !_ep)
+		return -EIO;
+
+	/* select desired speed */
+	switch (g->speed) {
+	case USB_SPEED_SUPER:
+		if (gadget_is_superspeed(g)) {
+			speed_desc = f->ss_descriptors;
+			want_comp_desc = 1;
+			break;
+		}
+		/* else: Fall trough */
+	case USB_SPEED_HIGH:
+		if (gadget_is_dualspeed(g)) {
+			speed_desc = f->hs_descriptors;
+			break;
+		}
+		/* else: fall through */
+	default:
+		speed_desc = f->fs_descriptors;
+	}
+	/* find descriptors */
+	for_each_ep_desc(speed_desc, d_spd) {
+		chosen_desc = (struct usb_endpoint_descriptor *)*d_spd;
+		if (chosen_desc->bEndpointAddress == _ep->address)
+			goto ep_found;
+	}
+	return -EIO;
+
+ep_found:
+	/* commit results */
+	_ep->maxpacket = usb_endpoint_maxp(chosen_desc);
+	_ep->desc = chosen_desc;
+	_ep->comp_desc = NULL;
+	_ep->maxburst = 0;
+	_ep->mult = 0;
+	if (!want_comp_desc)
+		return 0;
+
+	/*
+	 * Companion descriptor should follow EP descriptor
+	 * USB 3.0 spec, #9.6.7
+	 */
+	comp_desc = (struct usb_ss_ep_comp_descriptor *)*(++d_spd);
+	if (!comp_desc ||
+	    (comp_desc->bDescriptorType != USB_DT_SS_ENDPOINT_COMP))
+		return -EIO;
+	_ep->comp_desc = comp_desc;
+	if (g->speed == USB_SPEED_SUPER) {
+		switch (usb_endpoint_type(_ep->desc)) {
+		case USB_ENDPOINT_XFER_ISOC:
+			/* mult: bits 1:0 of bmAttributes */
+			_ep->mult = comp_desc->bmAttributes & 0x3;
+		case USB_ENDPOINT_XFER_BULK:
+		case USB_ENDPOINT_XFER_INT:
+			_ep->maxburst = comp_desc->bMaxBurst + 1;
+			break;
+		default:
+			if (comp_desc->bMaxBurst != 0)
+				ERROR(cdev, "ep0 bMaxBurst must be 0\n");
+			_ep->maxburst = 1;
+			break;
+		}
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(config_ep_by_speed);
 
 /**
  * usb_add_function() - add a function to a configuration
@@ -65,7 +177,7 @@ static char *iSerialNumber;
  * This function returns the value of the function's bind(), which is
  * zero for success else a negative errno value.
  */
-int __init usb_add_function(struct usb_configuration *config,
+int usb_add_function(struct usb_configuration *config,
 		struct usb_function *function)
 {
 	int	value = -EINVAL;
@@ -95,10 +207,12 @@ int __init usb_add_function(struct usb_configuration *config,
 	 * as full speed ... it's the function drivers that will need
 	 * to avoid bulk and ISO transfers.
 	 */
-	if (!config->fullspeed && function->descriptors)
-		config->fullspeed = 1;
+	if (!config->fullspeed && function->fs_descriptors)
+		config->fullspeed = true;
 	if (!config->highspeed && function->hs_descriptors)
-		config->highspeed = 1;
+		config->highspeed = true;
+	if (!config->superspeed && function->ss_descriptors)
+		config->superspeed = true;
 
 done:
 	if (value)
@@ -106,6 +220,19 @@ done:
 				function->name, function, value);
 	return value;
 }
+EXPORT_SYMBOL_GPL(usb_add_function);
+
+void usb_remove_function(struct usb_configuration *c, struct usb_function *f)
+{
+	if (f->disable)
+		f->disable(f);
+
+	bitmap_zero(f->endpoints, 32);
+	list_del(&f->list);
+	if (f->unbind)
+		f->unbind(c, f);
+}
+EXPORT_SYMBOL_GPL(usb_remove_function);
 
 /**
  * usb_function_deactivate - prevent function and gadget enumeration
@@ -138,6 +265,7 @@ int usb_function_deactivate(struct usb_function *function)
 
 	return status;
 }
+EXPORT_SYMBOL_GPL(usb_function_deactivate);
 
 /**
  * usb_function_activate - allow function and gadget enumeration
@@ -154,7 +282,7 @@ int usb_function_activate(struct usb_function *function)
 	struct usb_composite_dev	*cdev = function->config->cdev;
 	int				status = 0;
 
-	if (cdev->deactivations == 0)
+	if (WARN_ON(cdev->deactivations == 0))
 		status = -EINVAL;
 	else {
 		cdev->deactivations--;
@@ -164,6 +292,7 @@ int usb_function_activate(struct usb_function *function)
 
 	return status;
 }
+EXPORT_SYMBOL_GPL(usb_function_activate);
 
 /**
  * usb_interface_id() - allocate an unused interface ID
@@ -174,21 +303,21 @@ int usb_function_activate(struct usb_function *function)
  * usb_interface_id() is called from usb_function.bind() callbacks to
  * allocate new interface IDs.  The function driver will then store that
  * ID in interface, association, CDC union, and other descriptors.  It
- * will also handle any control requests targetted at that interface,
+ * will also handle any control requests targeted at that interface,
  * particularly changing its altsetting via set_alt().  There may
  * also be class-specific or vendor-specific requests to handle.
  *
  * All interface identifier should be allocated using this routine, to
  * ensure that for example different functions don't wrongly assign
  * different meanings to the same identifier.  Note that since interface
- * identifers are configuration-specific, functions used in more than
+ * identifiers are configuration-specific, functions used in more than
  * one configuration (or more than once in a given configuration) need
  * multiple versions of the relevant descriptors.
  *
  * Returns the interface ID which was allocated; or -ENODEV if no
  * more interface IDs can be allocated.
  */
-int __init usb_interface_id(struct usb_configuration *config,
+int usb_interface_id(struct usb_configuration *config,
 		struct usb_function *function)
 {
 	unsigned id = config->next_interface_id;
@@ -200,16 +329,37 @@ int __init usb_interface_id(struct usb_configuration *config,
 	}
 	return -ENODEV;
 }
+EXPORT_SYMBOL_GPL(usb_interface_id);
+
+static u8 encode_bMaxPower(enum usb_device_speed speed,
+		struct usb_configuration *c)
+{
+	unsigned val;
+
+	if (c->MaxPower)
+		val = c->MaxPower;
+	else
+		val = usb_gadget_vbus_draw_ma;
+	if (!val)
+		return 0;
+	switch (speed) {
+	case USB_SPEED_SUPER:
+		return DIV_ROUND_UP(val, 8);
+	default:
+		return DIV_ROUND_UP(val, 2);
+	}
+}
 
 static int config_buf(struct usb_configuration *config,
 		enum usb_device_speed speed, void *buf, u8 type)
 {
-	struct usb_config_descriptor	*c;
+	struct usb_config_descriptor	*c = buf;
 	void				*next = buf + USB_DT_CONFIG_SIZE;
-	int				len = USB_BUFSIZ - USB_DT_CONFIG_SIZE;
+	int				len;
 	struct usb_function		*f;
 	int				status;
 
+	len = USB_COMP_EP0_BUFSIZ - USB_DT_CONFIG_SIZE;
 	/* write the config descriptor */
 	c = buf;
 	c->bLength = USB_DT_CONFIG_SIZE;
@@ -219,7 +369,7 @@ static int config_buf(struct usb_configuration *config,
 	c->bConfigurationValue = config->bConfigurationValue;
 	c->iConfiguration = config->iConfiguration;
 	c->bmAttributes = USB_CONFIG_ATT_ONE | config->bmAttributes;
-	c->bMaxPower = config->bMaxPower ? : (CONFIG_USB_GADGET_VBUS_DRAW / 2);
+	c->bMaxPower = encode_bMaxPower(speed, config);
 
 	/* There may be e.g. OTG descriptors */
 	if (config->descriptors) {
@@ -235,10 +385,17 @@ static int config_buf(struct usb_configuration *config,
 	list_for_each_entry(f, &config->functions, list) {
 		struct usb_descriptor_header **descriptors;
 
-		if (speed == USB_SPEED_HIGH)
+		switch (speed) {
+		case USB_SPEED_SUPER:
+			descriptors = f->ss_descriptors;
+			break;
+		case USB_SPEED_HIGH:
 			descriptors = f->hs_descriptors;
-		else
-			descriptors = f->descriptors;
+			break;
+		default:
+			descriptors = f->fs_descriptors;
+		}
+
 		if (!descriptors)
 			continue;
 		status = usb_descriptor_fillbuf(next, len,
@@ -261,9 +418,10 @@ static int config_desc(struct usb_composite_dev *cdev, unsigned w_value)
 	u8				type = w_value >> 8;
 	enum usb_device_speed		speed = USB_SPEED_UNKNOWN;
 
-	if (gadget_is_dualspeed(gadget)) {
-		int			hs = 0;
-
+	if (gadget->speed == USB_SPEED_SUPER)
+		speed = gadget->speed;
+	else if (gadget_is_dualspeed(gadget)) {
+		int	hs = 0;
 		if (gadget->speed == USB_SPEED_HIGH)
 			hs = 1;
 		if (type == USB_DT_OTHER_SPEED_CONFIG)
@@ -277,13 +435,20 @@ static int config_desc(struct usb_composite_dev *cdev, unsigned w_value)
 	w_value &= 0xff;
 	list_for_each_entry(c, &cdev->configs, list) {
 		/* ignore configs that won't work at this speed */
-		if (speed == USB_SPEED_HIGH) {
+		switch (speed) {
+		case USB_SPEED_SUPER:
+			if (!c->superspeed)
+				continue;
+			break;
+		case USB_SPEED_HIGH:
 			if (!c->highspeed)
 				continue;
-		} else {
+			break;
+		default:
 			if (!c->fullspeed)
 				continue;
 		}
+
 		if (w_value == 0)
 			return config_buf(c, speed, cdev->req->buf, type);
 		w_value--;
@@ -297,16 +462,22 @@ static int count_configs(struct usb_composite_dev *cdev, unsigned type)
 	struct usb_configuration	*c;
 	unsigned			count = 0;
 	int				hs = 0;
+	int				ss = 0;
 
 	if (gadget_is_dualspeed(gadget)) {
 		if (gadget->speed == USB_SPEED_HIGH)
 			hs = 1;
+		if (gadget->speed == USB_SPEED_SUPER)
+			ss = 1;
 		if (type == USB_DT_DEVICE_QUALIFIER)
 			hs = !hs;
 	}
 	list_for_each_entry(c, &cdev->configs, list) {
 		/* ignore configs that won't work at this speed */
-		if (hs) {
+		if (ss) {
+			if (!c->superspeed)
+				continue;
+		} else if (hs) {
 			if (!c->highspeed)
 				continue;
 		} else {
@@ -318,6 +489,71 @@ static int count_configs(struct usb_composite_dev *cdev, unsigned type)
 	return count;
 }
 
+/**
+ * bos_desc() - prepares the BOS descriptor.
+ * @cdev: pointer to usb_composite device to generate the bos
+ *	descriptor for
+ *
+ * This function generates the BOS (Binary Device Object)
+ * descriptor and its device capabilities descriptors. The BOS
+ * descriptor should be supported by a SuperSpeed device.
+ */
+static int bos_desc(struct usb_composite_dev *cdev)
+{
+	struct usb_ext_cap_descriptor	*usb_ext;
+	struct usb_ss_cap_descriptor	*ss_cap;
+	struct usb_dcd_config_params	dcd_config_params;
+	struct usb_bos_descriptor	*bos = cdev->req->buf;
+
+	bos->bLength = USB_DT_BOS_SIZE;
+	bos->bDescriptorType = USB_DT_BOS;
+
+	bos->wTotalLength = cpu_to_le16(USB_DT_BOS_SIZE);
+	bos->bNumDeviceCaps = 0;
+
+	/*
+	 * A SuperSpeed device shall include the USB2.0 extension descriptor
+	 * and shall support LPM when operating in USB2.0 HS mode.
+	 */
+	usb_ext = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
+	bos->bNumDeviceCaps++;
+	le16_add_cpu(&bos->wTotalLength, USB_DT_USB_EXT_CAP_SIZE);
+	usb_ext->bLength = USB_DT_USB_EXT_CAP_SIZE;
+	usb_ext->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
+	usb_ext->bDevCapabilityType = USB_CAP_TYPE_EXT;
+	usb_ext->bmAttributes = cpu_to_le32(USB_LPM_SUPPORT);
+
+	/*
+	 * The Superspeed USB Capability descriptor shall be implemented by all
+	 * SuperSpeed devices.
+	 */
+	ss_cap = cdev->req->buf + le16_to_cpu(bos->wTotalLength);
+	bos->bNumDeviceCaps++;
+	le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SS_CAP_SIZE);
+	ss_cap->bLength = USB_DT_USB_SS_CAP_SIZE;
+	ss_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
+	ss_cap->bDevCapabilityType = USB_SS_CAP_TYPE;
+	ss_cap->bmAttributes = 0; /* LTM is not supported yet */
+	ss_cap->wSpeedSupported = cpu_to_le16(USB_LOW_SPEED_OPERATION |
+				USB_FULL_SPEED_OPERATION |
+				USB_HIGH_SPEED_OPERATION |
+				USB_5GBPS_OPERATION);
+	ss_cap->bFunctionalitySupport = USB_LOW_SPEED_OPERATION;
+
+	/* Get Controller configuration */
+	if (cdev->gadget->ops->get_config_params)
+		cdev->gadget->ops->get_config_params(&dcd_config_params);
+	else {
+		dcd_config_params.bU1devExitLat = USB_DEFAULT_U1_DEV_EXIT_LAT;
+		dcd_config_params.bU2DevExitLat =
+			cpu_to_le16(USB_DEFAULT_U2_DEV_EXIT_LAT);
+	}
+	ss_cap->bU1devExitLat = dcd_config_params.bU1devExitLat;
+	ss_cap->bU2DevExitLat = dcd_config_params.bU2DevExitLat;
+
+	return le16_to_cpu(bos->wTotalLength);
+}
+
 static void device_qual(struct usb_composite_dev *cdev)
 {
 	struct usb_qualifier_descriptor	*qual = cdev->req->buf;
@@ -330,7 +566,7 @@ static void device_qual(struct usb_composite_dev *cdev)
 	qual->bDeviceSubClass = cdev->desc.bDeviceSubClass;
 	qual->bDeviceProtocol = cdev->desc.bDeviceProtocol;
 	/* ASSUME same EP0 fifo size at both speeds */
-	qual->bMaxPacketSize0 = cdev->desc.bMaxPacketSize0;
+	qual->bMaxPacketSize0 = cdev->gadget->ep0->maxpacket;
 	qual->bNumConfigurations = count_configs(cdev, USB_DT_DEVICE_QUALIFIER);
 	qual->bRESERVED = 0;
 }
@@ -346,8 +582,11 @@ static void reset_config(struct usb_composite_dev *cdev)
 	list_for_each_entry(f, &cdev->config->functions, list) {
 		if (f->disable)
 			f->disable(f);
+
+		bitmap_zero(f->endpoints, 32);
 	}
 	cdev->config = NULL;
+	cdev->delayed_status = 0;
 }
 
 static int set_config(struct usb_composite_dev *cdev,
@@ -359,29 +598,31 @@ static int set_config(struct usb_composite_dev *cdev,
 	unsigned		power = gadget_is_otg(gadget) ? 8 : 100;
 	int			tmp;
 
-	if (cdev->config)
-		reset_config(cdev);
-
 	if (number) {
 		list_for_each_entry(c, &cdev->configs, list) {
 			if (c->bConfigurationValue == number) {
+				/*
+				 * We disable the FDs of the previous
+				 * configuration only if the new configuration
+				 * is a valid one
+				 */
+				if (cdev->config)
+					reset_config(cdev);
 				result = 0;
 				break;
 			}
 		}
 		if (result < 0)
 			goto done;
-	} else
+	} else { /* Zero configuration value - need to reset the config */
+		if (cdev->config)
+			reset_config(cdev);
 		result = 0;
+	}
 
-	INFO(cdev, "%s speed config #%d: %s\n",
-		({ char *speed;
-		switch (gadget->speed) {
-		case USB_SPEED_LOW:	speed = "low"; break;
-		case USB_SPEED_FULL:	speed = "full"; break;
-		case USB_SPEED_HIGH:	speed = "high"; break;
-		default:		speed = "?"; break;
-		} ; speed; }), number, c ? c->label : "unconfigured");
+	INFO(cdev, "%s config #%d: %s\n",
+	     usb_speed_string(gadget->speed),
+	     number, c ? c->label : "unconfigured");
 
 	if (!c)
 		goto done;
@@ -391,10 +632,41 @@ static int set_config(struct usb_composite_dev *cdev,
 	/* Initialize all interfaces by setting them to altsetting zero. */
 	for (tmp = 0; tmp < MAX_CONFIG_INTERFACES; tmp++) {
 		struct usb_function	*f = c->interface[tmp];
+		struct usb_descriptor_header **descriptors;
 
 		if (!f)
 			break;
 
+		/*
+		 * Record which endpoints are used by the function. This is used
+		 * to dispatch control requests targeted at that endpoint to the
+		 * function's setup callback instead of the current
+		 * configuration's setup callback.
+		 */
+		switch (gadget->speed) {
+		case USB_SPEED_SUPER:
+			descriptors = f->ss_descriptors;
+			break;
+		case USB_SPEED_HIGH:
+			descriptors = f->hs_descriptors;
+			break;
+		default:
+			descriptors = f->fs_descriptors;
+		}
+
+		for (; *descriptors; ++descriptors) {
+			struct usb_endpoint_descriptor *ep;
+			int addr;
+
+			if ((*descriptors)->bDescriptorType != USB_DT_ENDPOINT)
+				continue;
+
+			ep = (struct usb_endpoint_descriptor *)*descriptors;
+			addr = ((ep->bEndpointAddress & 0x80) >> 3)
+			     |  (ep->bEndpointAddress & 0x0f);
+			set_bit(addr, f->endpoints);
+		}
+
 		result = f->set_alt(f, tmp, 0);
 		if (result < 0) {
 			DBG(cdev, "interface %d (%s/%p) alt 0 --> %d\n",
@@ -403,65 +675,106 @@ static int set_config(struct usb_composite_dev *cdev,
 			reset_config(cdev);
 			goto done;
 		}
+
+		if (result == USB_GADGET_DELAYED_STATUS) {
+			DBG(cdev,
+			 "%s: interface %d (%s) requested delayed status\n",
+					__func__, tmp, f->name);
+			cdev->delayed_status++;
+			DBG(cdev, "delayed_status count %d\n",
+					cdev->delayed_status);
+		}
 	}
 
 	/* when we return, be sure our power usage is valid */
-	power = c->bMaxPower ? (2 * c->bMaxPower) : CONFIG_USB_GADGET_VBUS_DRAW;
+	power = c->MaxPower ? c->MaxPower : usb_gadget_vbus_draw_ma;
 done:
 	usb_gadget_vbus_draw(gadget, power);
+	if (result >= 0 && cdev->delayed_status)
+		result = USB_GADGET_DELAYED_STATUS;
 	return result;
 }
 
+int usb_add_config_only(struct usb_composite_dev *cdev,
+		struct usb_configuration *config)
+{
+	struct usb_configuration *c;
+
+	if (!config->bConfigurationValue)
+		return -EINVAL;
+
+	/* Prevent duplicate configuration identifiers */
+	list_for_each_entry(c, &cdev->configs, list) {
+		if (c->bConfigurationValue == config->bConfigurationValue)
+			return -EBUSY;
+	}
+
+	config->cdev = cdev;
+	list_add_tail(&config->list, &cdev->configs);
+
+	INIT_LIST_HEAD(&config->functions);
+	config->next_interface_id = 0;
+	memset(config->interface, 0, sizeof(config->interface));
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(usb_add_config_only);
+
 /**
  * usb_add_config() - add a configuration to a device.
  * @cdev: wraps the USB gadget
  * @config: the configuration, with bConfigurationValue assigned
+ * @bind: the configuration's bind function
  * Context: single threaded during gadget setup
  *
- * One of the main tasks of a composite driver's bind() routine is to
+ * One of the main tasks of a composite @bind() routine is to
  * add each of the configurations it supports, using this routine.
  *
- * This function returns the value of the configuration's bind(), which
+ * This function returns the value of the configuration's @bind(), which
  * is zero for success else a negative errno value.  Binding configurations
  * assigns global resources including string IDs, and per-configuration
  * resources such as interface IDs and endpoints.
  */
-int __init usb_add_config(struct usb_composite_dev *cdev,
-		struct usb_configuration *config)
+int usb_add_config(struct usb_composite_dev *cdev,
+		struct usb_configuration *config,
+		int (*bind)(struct usb_configuration *))
 {
 	int				status = -EINVAL;
-	struct usb_configuration	*c;
+
+	if (!bind)
+		goto done;
 
 	DBG(cdev, "adding config #%u '%s'/%p\n",
 			config->bConfigurationValue,
 			config->label, config);
 
-	if (!config->bConfigurationValue || !config->bind)
+	status = usb_add_config_only(cdev, config);
+	if (status)
 		goto done;
 
-	/* Prevent duplicate configuration identifiers */
-	list_for_each_entry(c, &cdev->configs, list) {
-		if (c->bConfigurationValue == config->bConfigurationValue) {
-			status = -EBUSY;
-			goto done;
-		}
-	}
-
-	config->cdev = cdev;
-	list_add_tail(&config->list, &cdev->configs);
-
-	INIT_LIST_HEAD(&config->functions);
-	config->next_interface_id = 0;
-
-	status = config->bind(config);
+	status = bind(config);
 	if (status < 0) {
+		while (!list_empty(&config->functions)) {
+			struct usb_function		*f;
+
+			f = list_first_entry(&config->functions,
+					struct usb_function, list);
+			list_del(&f->list);
+			if (f->unbind) {
+				DBG(cdev, "unbind function '%s'/%p\n",
+					f->name, f);
+				f->unbind(config, f);
+				/* may free memory for "f" */
+			}
+		}
 		list_del(&config->list);
 		config->cdev = NULL;
 	} else {
 		unsigned	i;
 
-		DBG(cdev, "cfg %d/%p speeds:%s%s\n",
+		DBG(cdev, "cfg %d/%p speeds:%s%s%s\n",
 			config->bConfigurationValue, config,
+			config->superspeed ? " super" : "",
 			config->highspeed ? " high" : "",
 			config->fullspeed
 				? (gadget_is_dualspeed(cdev->gadget)
@@ -479,7 +792,7 @@ int __init usb_add_config(struct usb_composite_dev *cdev,
 		}
 	}
 
-	/* set_alt(), or next config->bind(), sets up
+	/* set_alt(), or next bind(), sets up
 	 * ep->driver_data as needed.
 	 */
 	usb_ep_autoconfig_reset(cdev->gadget);
@@ -490,6 +803,48 @@ done:
 				config->bConfigurationValue, status);
 	return status;
 }
+EXPORT_SYMBOL_GPL(usb_add_config);
+
+static void remove_config(struct usb_composite_dev *cdev,
+			      struct usb_configuration *config)
+{
+	while (!list_empty(&config->functions)) {
+		struct usb_function		*f;
+
+		f = list_first_entry(&config->functions,
+				struct usb_function, list);
+		list_del(&f->list);
+		if (f->unbind) {
+			DBG(cdev, "unbind function '%s'/%p\n", f->name, f);
+			f->unbind(config, f);
+			/* may free memory for "f" */
+		}
+	}
+	list_del(&config->list);
+	if (config->unbind) {
+		DBG(cdev, "unbind config '%s'/%p\n", config->label, config);
+		config->unbind(config);
+			/* may free memory for "c" */
+	}
+}
+
+/**
+ * usb_remove_config() - remove a configuration from a device.
+ * @cdev: wraps the USB gadget
+ * @config: the configuration
+ *
+ * Drivers must call usb_gadget_disconnect before calling this function
+ * to disconnect the device from the host and make sure the host will not
+ * try to enumerate the device while we are changing the config list.
+ */
+void usb_remove_config(struct usb_composite_dev *cdev,
+		      struct usb_configuration *config)
+{
+	if (cdev->config == config)
+		reset_config(cdev);
+
+	remove_config(cdev, config);
+}
 
 /*-------------------------------------------------------------------------*/
 
@@ -502,7 +857,7 @@ done:
 static void collect_langs(struct usb_gadget_strings **sp, __le16 *buf)
 {
 	const struct usb_gadget_strings	*s;
-	u16				language;
+	__le16				language;
 	__le16				*tmp;
 
 	while (*sp) {
@@ -542,6 +897,8 @@ static int lookup_string(
 static int get_string(struct usb_composite_dev *cdev,
 		void *buf, u16 language, int id)
 {
+	struct usb_composite_driver	*composite = cdev->driver;
+	struct usb_gadget_string_container *uc;
 	struct usb_configuration	*c;
 	struct usb_function		*f;
 	int				len;
@@ -574,8 +931,14 @@ static int get_string(struct usb_composite_dev *cdev,
 					collect_langs(sp, s->wData);
 			}
 		}
+		list_for_each_entry(uc, &cdev->gstrings, list) {
+			struct usb_gadget_strings **sp;
 
-		for (len = 0; s->wData[len] && len <= 126; len++)
+			sp = get_containers_gs(uc);
+			collect_langs(sp, s->wData);
+		}
+
+		for (len = 0; len <= 126 && s->wData[len]; len++)
 			continue;
 		if (!len)
 			return -EINVAL;
@@ -584,9 +947,18 @@ static int get_string(struct usb_composite_dev *cdev,
 		return s->bLength;
 	}
 
-	/* Otherwise, look up and return a specified string.  String IDs
-	 * are device-scoped, so we look up each string table we're told
-	 * about.  These lookups are infrequent; simpler-is-better here.
+	list_for_each_entry(uc, &cdev->gstrings, list) {
+		struct usb_gadget_strings **sp;
+
+		sp = get_containers_gs(uc);
+		len = lookup_string(sp, buf, language, id);
+		if (len > 0)
+			return len;
+	}
+
+	/* String IDs are device-scoped, so we look up each string
+	 * table we're told about.  These lookups are infrequent;
+	 * simpler-is-better here.
 	 */
 	if (composite->strings) {
 		len = lookup_string(composite->strings, buf, language, id);
@@ -619,19 +991,197 @@ static int get_string(struct usb_composite_dev *cdev,
  * string IDs.  Drivers for functions, configurations, or gadgets will
  * then store that ID in the appropriate descriptors and string table.
  *
- * All string identifier should be allocated using this routine, to
- * ensure that for example different functions don't wrongly assign
- * different meanings to the same identifier.
+ * All string identifier should be allocated using this,
+ * @usb_string_ids_tab() or @usb_string_ids_n() routine, to ensure
+ * that for example different functions don't wrongly assign different
+ * meanings to the same identifier.
  */
-int __init usb_string_id(struct usb_composite_dev *cdev)
+int usb_string_id(struct usb_composite_dev *cdev)
 {
 	if (cdev->next_string_id < 254) {
-		/* string id 0 is reserved */
+		/* string id 0 is reserved by USB spec for list of
+		 * supported languages */
+		/* 255 reserved as well? -- mina86 */
 		cdev->next_string_id++;
 		return cdev->next_string_id;
 	}
 	return -ENODEV;
 }
+EXPORT_SYMBOL_GPL(usb_string_id);
+
+/**
+ * usb_string_ids() - allocate unused string IDs in batch
+ * @cdev: the device whose string descriptor IDs are being allocated
+ * @str: an array of usb_string objects to assign numbers to
+ * Context: single threaded during gadget setup
+ *
+ * @usb_string_ids() is called from bind() callbacks to allocate
+ * string IDs.  Drivers for functions, configurations, or gadgets will
+ * then copy IDs from the string table to the appropriate descriptors
+ * and string table for other languages.
+ *
+ * All string identifier should be allocated using this,
+ * @usb_string_id() or @usb_string_ids_n() routine, to ensure that for
+ * example different functions don't wrongly assign different meanings
+ * to the same identifier.
+ */
+int usb_string_ids_tab(struct usb_composite_dev *cdev, struct usb_string *str)
+{
+	int next = cdev->next_string_id;
+
+	for (; str->s; ++str) {
+		if (unlikely(next >= 254))
+			return -ENODEV;
+		str->id = ++next;
+	}
+
+	cdev->next_string_id = next;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(usb_string_ids_tab);
+
+static struct usb_gadget_string_container *copy_gadget_strings(
+		struct usb_gadget_strings **sp, unsigned n_gstrings,
+		unsigned n_strings)
+{
+	struct usb_gadget_string_container *uc;
+	struct usb_gadget_strings **gs_array;
+	struct usb_gadget_strings *gs;
+	struct usb_string *s;
+	unsigned mem;
+	unsigned n_gs;
+	unsigned n_s;
+	void *stash;
+
+	mem = sizeof(*uc);
+	mem += sizeof(void *) * (n_gstrings + 1);
+	mem += sizeof(struct usb_gadget_strings) * n_gstrings;
+	mem += sizeof(struct usb_string) * (n_strings + 1) * (n_gstrings);
+	uc = kmalloc(mem, GFP_KERNEL);
+	if (!uc)
+		return ERR_PTR(-ENOMEM);
+	gs_array = get_containers_gs(uc);
+	stash = uc->stash;
+	stash += sizeof(void *) * (n_gstrings + 1);
+	for (n_gs = 0; n_gs < n_gstrings; n_gs++) {
+		struct usb_string *org_s;
+
+		gs_array[n_gs] = stash;
+		gs = gs_array[n_gs];
+		stash += sizeof(struct usb_gadget_strings);
+		gs->language = sp[n_gs]->language;
+		gs->strings = stash;
+		org_s = sp[n_gs]->strings;
+
+		for (n_s = 0; n_s < n_strings; n_s++) {
+			s = stash;
+			stash += sizeof(struct usb_string);
+			if (org_s->s)
+				s->s = org_s->s;
+			else
+				s->s = "";
+			org_s++;
+		}
+		s = stash;
+		s->s = NULL;
+		stash += sizeof(struct usb_string);
+
+	}
+	gs_array[n_gs] = NULL;
+	return uc;
+}
+
+/**
+ * usb_gstrings_attach() - attach gadget strings to a cdev and assign ids
+ * @cdev: the device whose string descriptor IDs are being allocated
+ * and attached.
+ * @sp: an array of usb_gadget_strings to attach.
+ * @n_strings: number of entries in each usb_strings array (sp[]->strings)
+ *
+ * This function will create a deep copy of usb_gadget_strings and usb_string
+ * and attach it to the cdev. The actual string (usb_string.s) will not be
+ * copied but only a referenced will be made. The struct usb_gadget_strings
+ * array may contain multiple languges and should be NULL terminated.
+ * The ->language pointer of each struct usb_gadget_strings has to contain the
+ * same amount of entries.
+ * For instance: sp[0] is en-US, sp[1] is es-ES. It is expected that the first
+ * usb_string entry of es-ES containts the translation of the first usb_string
+ * entry of en-US. Therefore both entries become the same id assign.
+ */
+struct usb_string *usb_gstrings_attach(struct usb_composite_dev *cdev,
+		struct usb_gadget_strings **sp, unsigned n_strings)
+{
+	struct usb_gadget_string_container *uc;
+	struct usb_gadget_strings **n_gs;
+	unsigned n_gstrings = 0;
+	unsigned i;
+	int ret;
+
+	for (i = 0; sp[i]; i++)
+		n_gstrings++;
+
+	if (!n_gstrings)
+		return ERR_PTR(-EINVAL);
+
+	uc = copy_gadget_strings(sp, n_gstrings, n_strings);
+	if (IS_ERR(uc))
+		return ERR_CAST(uc);
+
+	n_gs = get_containers_gs(uc);
+	ret = usb_string_ids_tab(cdev, n_gs[0]->strings);
+	if (ret)
+		goto err;
+
+	for (i = 1; i < n_gstrings; i++) {
+		struct usb_string *m_s;
+		struct usb_string *s;
+		unsigned n;
+
+		m_s = n_gs[0]->strings;
+		s = n_gs[i]->strings;
+		for (n = 0; n < n_strings; n++) {
+			s->id = m_s->id;
+			s++;
+			m_s++;
+		}
+	}
+	list_add_tail(&uc->list, &cdev->gstrings);
+	return n_gs[0]->strings;
+err:
+	kfree(uc);
+	return ERR_PTR(ret);
+}
+EXPORT_SYMBOL_GPL(usb_gstrings_attach);
+
+/**
+ * usb_string_ids_n() - allocate unused string IDs in batch
+ * @c: the device whose string descriptor IDs are being allocated
+ * @n: number of string IDs to allocate
+ * Context: single threaded during gadget setup
+ *
+ * Returns the first requested ID.  This ID and next @n-1 IDs are now
+ * valid IDs.  At least provided that @n is non-zero because if it
+ * is, returns last requested ID which is now very useful information.
+ *
+ * @usb_string_ids_n() is called from bind() callbacks to allocate
+ * string IDs.  Drivers for functions, configurations, or gadgets will
+ * then store that ID in the appropriate descriptors and string table.
+ *
+ * All string identifier should be allocated using this,
+ * @usb_string_id() or @usb_string_ids_n() routine, to ensure that for
+ * example different functions don't wrongly assign different meanings
+ * to the same identifier.
+ */
+int usb_string_ids_n(struct usb_composite_dev *c, unsigned n)
+{
+	unsigned next = c->next_string_id;
+	if (unlikely(n > 254 || (unsigned)next + n > 254))
+		return -ENODEV;
+	c->next_string_id += n;
+	return next + 1;
+}
+EXPORT_SYMBOL_GPL(usb_string_ids_n);
 
 /*-------------------------------------------------------------------------*/
 
@@ -650,17 +1200,19 @@ static void composite_setup_complete(struct usb_ep *ep, struct usb_request *req)
  * housekeeping for the gadget function we're implementing.  Most of
  * the work is in config and function specific setup.
  */
-static int
+int
 composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 {
 	struct usb_composite_dev	*cdev = get_gadget_data(gadget);
 	struct usb_request		*req = cdev->req;
 	int				value = -EOPNOTSUPP;
+	int				status = 0;
 	u16				w_index = le16_to_cpu(ctrl->wIndex);
 	u8				intf = w_index & 0xFF;
 	u16				w_value = le16_to_cpu(ctrl->wValue);
 	u16				w_length = le16_to_cpu(ctrl->wLength);
 	struct usb_function		*f = NULL;
+	u8				endp;
 
 	/* partial re-init of the response message; the function or the
 	 * gadget might need to intercept e.g. a control-OUT completion
@@ -668,7 +1220,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 	 */
 	req->zero = 0;
 	req->complete = composite_setup_complete;
-	req->length = USB_BUFSIZ;
+	req->length = 0;
 	gadget->ep0->driver_data = cdev;
 
 	switch (ctrl->bRequest) {
@@ -682,18 +1234,31 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		case USB_DT_DEVICE:
 			cdev->desc.bNumConfigurations =
 				count_configs(cdev, USB_DT_DEVICE);
+			cdev->desc.bMaxPacketSize0 =
+				cdev->gadget->ep0->maxpacket;
+			if (gadget_is_superspeed(gadget)) {
+				if (gadget->speed >= USB_SPEED_SUPER) {
+					cdev->desc.bcdUSB = cpu_to_le16(0x0300);
+					cdev->desc.bMaxPacketSize0 = 9;
+				} else {
+					cdev->desc.bcdUSB = cpu_to_le16(0x0210);
+				}
+			}
+
 			value = min(w_length, (u16) sizeof cdev->desc);
 			memcpy(req->buf, &cdev->desc, value);
 			break;
 		case USB_DT_DEVICE_QUALIFIER:
-			if (!gadget_is_dualspeed(gadget))
+			if (!gadget_is_dualspeed(gadget) ||
+			    gadget->speed >= USB_SPEED_SUPER)
 				break;
 			device_qual(cdev);
 			value = min_t(int, w_length,
 				sizeof(struct usb_qualifier_descriptor));
 			break;
 		case USB_DT_OTHER_SPEED_CONFIG:
-			if (!gadget_is_dualspeed(gadget))
+			if (!gadget_is_dualspeed(gadget) ||
+			    gadget->speed >= USB_SPEED_SUPER)
 				break;
 			/* FALLTHROUGH */
 		case USB_DT_CONFIG:
@@ -707,8 +1272,11 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 			if (value >= 0)
 				value = min(w_length, (u16) value);
 			break;
-		default:
-			goto unknown;
+		case USB_DT_BOS:
+			if (gadget_is_superspeed(gadget)) {
+				value = bos_desc(cdev);
+				value = min(w_length, (u16) value);
+			}
 			break;
 		}
 		break;
@@ -743,7 +1311,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 	case USB_REQ_SET_INTERFACE:
 		if (ctrl->bRequestType != USB_RECIP_INTERFACE)
 			goto unknown;
-		if (!cdev->config || w_index >= MAX_CONFIG_INTERFACES)
+		if (!cdev->config || intf >= MAX_CONFIG_INTERFACES)
 			break;
 		f = cdev->config->interface[intf];
 		if (!f)
@@ -751,11 +1319,19 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		if (w_value && !f->set_alt)
 			break;
 		value = f->set_alt(f, w_index, w_value);
+		if (value == USB_GADGET_DELAYED_STATUS) {
+			DBG(cdev,
+			 "%s: interface %d (%s) requested delayed status\n",
+					__func__, intf, f->name);
+			cdev->delayed_status++;
+			DBG(cdev, "delayed_status count %d\n",
+					cdev->delayed_status);
+		}
 		break;
 	case USB_REQ_GET_INTERFACE:
 		if (ctrl->bRequestType != (USB_DIR_IN|USB_RECIP_INTERFACE))
 			goto unknown;
-		if (!cdev->config || w_index >= MAX_CONFIG_INTERFACES)
+		if (!cdev->config || intf >= MAX_CONFIG_INTERFACES)
 			break;
 		f = cdev->config->interface[intf];
 		if (!f)
@@ -767,35 +1343,123 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		*((u8 *)req->buf) = value;
 		value = min(w_length, (u16) 1);
 		break;
+
+	/*
+	 * USB 3.0 additions:
+	 * Function driver should handle get_status request. If such cb
+	 * wasn't supplied we respond with default value = 0
+	 * Note: function driver should supply such cb only for the first
+	 * interface of the function
+	 */
+	case USB_REQ_GET_STATUS:
+		if (!gadget_is_superspeed(gadget))
+			goto unknown;
+		if (ctrl->bRequestType != (USB_DIR_IN | USB_RECIP_INTERFACE))
+			goto unknown;
+		value = 2;	/* This is the length of the get_status reply */
+		put_unaligned_le16(0, req->buf);
+		if (!cdev->config || intf >= MAX_CONFIG_INTERFACES)
+			break;
+		f = cdev->config->interface[intf];
+		if (!f)
+			break;
+		status = f->get_status ? f->get_status(f) : 0;
+		if (status < 0)
+			break;
+		put_unaligned_le16(status & 0x0000ffff, req->buf);
+		break;
+	/*
+	 * Function drivers should handle SetFeature/ClearFeature
+	 * (FUNCTION_SUSPEND) request. function_suspend cb should be supplied
+	 * only for the first interface of the function
+	 */
+	case USB_REQ_CLEAR_FEATURE:
+	case USB_REQ_SET_FEATURE:
+		if (!gadget_is_superspeed(gadget))
+			goto unknown;
+		if (ctrl->bRequestType != (USB_DIR_OUT | USB_RECIP_INTERFACE))
+			goto unknown;
+		switch (w_value) {
+		case USB_INTRF_FUNC_SUSPEND:
+			if (!cdev->config || intf >= MAX_CONFIG_INTERFACES)
+				break;
+			f = cdev->config->interface[intf];
+			if (!f)
+				break;
+			value = 0;
+			if (f->func_suspend)
+				value = f->func_suspend(f, w_index >> 8);
+			if (value < 0) {
+				ERROR(cdev,
+				      "func_suspend() returned error %d\n",
+				      value);
+				value = 0;
+			}
+			break;
+		}
+		break;
 	default:
 unknown:
-		debug("non-core control req%02x.%02x v%04x i%04x l%d\n",
+		VDBG(cdev,
+			"non-core control req%02x.%02x v%04x i%04x l%d\n",
 			ctrl->bRequestType, ctrl->bRequest,
 			w_value, w_index, w_length);
 
-		/* functions always handle their interfaces ... punt other
-		 * recipients (endpoint, other, WUSB, ...) to the current
+		/* functions always handle their interfaces and endpoints...
+		 * punt other recipients (other, WUSB, ...) to the current
 		 * configuration code.
+		 *
+		 * REVISIT it could make sense to let the composite device
+		 * take such requests too, if that's ever needed:  to work
+		 * in config 0, etc.
 		 */
-		f = cdev->config->interface[intf];
+		switch (ctrl->bRequestType & USB_RECIP_MASK) {
+		case USB_RECIP_INTERFACE:
+			if (!cdev->config || intf >= MAX_CONFIG_INTERFACES)
+				break;
+			f = cdev->config->interface[intf];
+			break;
+
+		case USB_RECIP_ENDPOINT:
+			endp = ((w_index & 0x80) >> 3) | (w_index & 0x0f);
+			list_for_each_entry(f, &cdev->config->functions, list) {
+				if (test_bit(endp, f->endpoints))
+					break;
+			}
+			if (&f->list == &cdev->config->functions)
+				f = NULL;
+			break;
+		}
+
 		if (f && f->setup)
 			value = f->setup(f, ctrl);
-		else
-			f = NULL;
-
-		if (value < 0 && !f) {
+		else {
 			struct usb_configuration	*c;
 
 			c = cdev->config;
-			if (c && c->setup)
+			if (!c)
+				goto done;
+
+			/* try current config's setup */
+			if (c->setup) {
 				value = c->setup(c, ctrl);
+				goto done;
+			}
+
+			/* try the only function in the current config */
+			if (!list_is_singular(&c->functions))
+				goto done;
+			f = list_first_entry(&c->functions, struct usb_function,
+					     list);
+			if (f->setup)
+				value = f->setup(f, ctrl);
 		}
 
 		goto done;
 	}
 
 	/* respond with data transfer before status phase? */
-	if (value >= 0) {
+	if (value >= 0 && value != USB_GADGET_DELAYED_STATUS) {
 		req->length = value;
 		req->zero = value < w_length;
 		value = usb_ep_queue(gadget->ep0, req);
@@ -804,6 +1468,10 @@ unknown:
 			req->status = 0;
 			composite_setup_complete(gadget->ep0, req);
 		}
+	} else if (value == USB_GADGET_DELAYED_STATUS && w_length != 0) {
+		WARN(cdev,
+			"%s: Delayed status not supported for w_length != 0",
+			__func__);
 	}
 
 done:
@@ -811,7 +1479,7 @@ done:
 	return value;
 }
 
-static void composite_disconnect(struct usb_gadget *gadget)
+void composite_disconnect(struct usb_gadget *gadget)
 {
 	struct usb_composite_dev	*cdev = get_gadget_data(gadget);
 
@@ -820,12 +1488,13 @@ static void composite_disconnect(struct usb_gadget *gadget)
 	 */
 	if (cdev->config)
 		reset_config(cdev);
+	if (cdev->driver->disconnect)
+		cdev->driver->disconnect(cdev);
 }
 
 /*-------------------------------------------------------------------------*/
 
-static void /* __init_or_exit */
-composite_unbind(struct usb_gadget *gadget)
+static void __composite_unbind(struct usb_gadget *gadget, bool unbind_driver)
 {
 	struct usb_composite_dev	*cdev = get_gadget_data(gadget);
 
@@ -834,97 +1503,142 @@ composite_unbind(struct usb_gadget *gadget)
 	 * so there's no i/o concurrency that could affect the
 	 * state protected by cdev->lock.
 	 */
-//	WARN_ON(cdev->config);
+	WARN_ON(cdev->config);
 
 	while (!list_empty(&cdev->configs)) {
 		struct usb_configuration	*c;
-
 		c = list_first_entry(&cdev->configs,
 				struct usb_configuration, list);
-		while (!list_empty(&c->functions)) {
-			struct usb_function		*f;
-
-			f = list_first_entry(&c->functions,
-					struct usb_function, list);
-			list_del(&f->list);
-			if (f->unbind) {
-				DBG(cdev, "unbind function '%s'/%p\n",
-						f->name, f);
-				f->unbind(c, f);
-				/* may free memory for "f" */
-			}
-		}
-		list_del(&c->list);
-		if (c->unbind) {
-			DBG(cdev, "unbind config '%s'/%p\n", c->label, c);
-			c->unbind(c);
-			/* may free memory for "c" */
-		}
+		remove_config(cdev, c);
 	}
-	if (composite->unbind)
-		composite->unbind(cdev);
+	if (cdev->driver->unbind && unbind_driver)
+		cdev->driver->unbind(cdev);
 
-	if (cdev->req) {
-		dma_free(cdev->req->buf);
-		usb_ep_free_request(gadget->ep0, cdev->req);
-	}
+	composite_dev_cleanup(cdev);
+
+	kfree(cdev->def_manufacturer);
 	kfree(cdev);
 	set_gadget_data(gadget, NULL);
-	composite = NULL;
 }
 
-static void __init
-string_override_one(struct usb_gadget_strings *tab, u8 id, const char *s)
+static void composite_unbind(struct usb_gadget *gadget)
 {
-	struct usb_string		*str = tab->strings;
-
-	for (str = tab->strings; str->s; str++) {
-		if (str->id == id) {
-			str->s = s;
-			return;
-		}
-	}
+	__composite_unbind(gadget, true);
 }
 
-static void __init
-string_override(struct usb_gadget_strings **tab, u8 id, const char *s)
+static void update_unchanged_dev_desc(struct usb_device_descriptor *new,
+		const struct usb_device_descriptor *old)
 {
-	while (*tab) {
-		string_override_one(*tab, id, s);
-		tab++;
-	}
+	__le16 idVendor;
+	__le16 idProduct;
+	__le16 bcdDevice;
+	u8 iSerialNumber;
+	u8 iManufacturer;
+	u8 iProduct;
+
+	/*
+	 * these variables may have been set in
+	 * usb_composite_overwrite_options()
+	 */
+	idVendor = new->idVendor;
+	idProduct = new->idProduct;
+	bcdDevice = new->bcdDevice;
+	iSerialNumber = new->iSerialNumber;
+	iManufacturer = new->iManufacturer;
+	iProduct = new->iProduct;
+
+	*new = *old;
+	if (idVendor)
+		new->idVendor = idVendor;
+	if (idProduct)
+		new->idProduct = idProduct;
+	if (bcdDevice)
+		new->bcdDevice = bcdDevice;
+	else
+		new->bcdDevice = cpu_to_le16(get_default_bcdDevice());
+	if (iSerialNumber)
+		new->iSerialNumber = iSerialNumber;
+	if (iManufacturer)
+		new->iManufacturer = iManufacturer;
+	if (iProduct)
+		new->iProduct = iProduct;
 }
 
-static int __init composite_bind(struct usb_gadget *gadget)
+int composite_dev_prepare(struct usb_composite_driver *composite,
+		struct usb_composite_dev *cdev)
 {
-	struct usb_composite_dev	*cdev;
-	int				status = -ENOMEM;
-
-	cdev = xzalloc(sizeof *cdev);
-	cdev->gadget = gadget;
-	set_gadget_data(gadget, cdev);
-	INIT_LIST_HEAD(&cdev->configs);
+	struct usb_gadget *gadget = cdev->gadget;
+	int ret = -ENOMEM;
 
 	/* preallocate control response and buffer */
 	cdev->req = usb_ep_alloc_request(gadget->ep0);
 	if (!cdev->req)
-		goto fail;
-	cdev->req->buf = dma_alloc(USB_BUFSIZ);
+		return -ENOMEM;
+
+	cdev->req->buf = dma_alloc(USB_COMP_EP0_BUFSIZ);
 	if (!cdev->req->buf)
 		goto fail;
+
 	cdev->req->complete = composite_setup_complete;
 	gadget->ep0->driver_data = cdev;
 
-	cdev->bufsiz = USB_BUFSIZ;
 	cdev->driver = composite;
 
-	usb_gadget_set_selfpowered(gadget);
+	/*
+	 * As per USB compliance update, a device that is actively drawing
+	 * more than 100mA from USB must report itself as bus-powered in
+	 * the GetStatus(DEVICE) call.
+	 */
+	if (usb_gadget_vbus_draw_ma <= USB_SELF_POWER_VBUS_MAX_DRAW)
+		usb_gadget_set_selfpowered(gadget);
 
 	/* interface and string IDs start at zero via kzalloc.
 	 * we force endpoints to start unassigned; few controller
 	 * drivers will zero ep->driver_data.
 	 */
-	usb_ep_autoconfig_reset(cdev->gadget);
+	usb_ep_autoconfig_reset(gadget);
+	return 0;
+
+fail:
+	usb_ep_free_request(gadget->ep0, cdev->req);
+	cdev->req = NULL;
+	return ret;
+}
+
+void composite_dev_cleanup(struct usb_composite_dev *cdev)
+{
+	struct usb_gadget_string_container *uc, *tmp;
+
+	list_for_each_entry_safe(uc, tmp, &cdev->gstrings, list) {
+		list_del(&uc->list);
+		kfree(uc);
+	}
+	if (cdev->req) {
+		kfree(cdev->req->buf);
+		usb_ep_free_request(cdev->gadget->ep0, cdev->req);
+	}
+	cdev->next_string_id = 0;
+}
+
+static int composite_bind(struct usb_gadget *gadget,
+		struct usb_gadget_driver *gdriver)
+{
+	struct usb_composite_dev	*cdev;
+	struct usb_composite_driver	*composite = to_cdriver(gdriver);
+	int				status = -ENOMEM;
+
+	cdev = kzalloc(sizeof *cdev, GFP_KERNEL);
+	if (!cdev)
+		return status;
+
+	cdev->gadget = gadget;
+	set_gadget_data(gadget, cdev);
+	INIT_LIST_HEAD(&cdev->configs);
+	INIT_LIST_HEAD(&cdev->gstrings);
+
+	status = composite_dev_prepare(composite, cdev);
+	if (status)
+		goto fail;
 
 	/* composite gadget needs to assign strings for whole device (like
 	 * serial number), register function drivers, potentially update
@@ -934,42 +1648,23 @@ static int __init composite_bind(struct usb_gadget *gadget)
 	if (status < 0)
 		goto fail;
 
-	cdev->desc = *composite->dev;
-	cdev->desc.bMaxPacketSize0 = gadget->ep0->maxpacket;
+	update_unchanged_dev_desc(&cdev->desc, composite->dev);
 
-	/* standardized runtime overrides for device ID data */
-	if (idVendor)
-		cdev->desc.idVendor = cpu_to_le16(idVendor);
-	if (idProduct)
-		cdev->desc.idProduct = cpu_to_le16(idProduct);
-	if (bcdDevice)
-		cdev->desc.bcdDevice = cpu_to_le16(bcdDevice);
-
-	/* strings can't be assigned before bind() allocates the
-	 * releavnt identifiers
-	 */
-	if (cdev->desc.iManufacturer && iManufacturer)
-		string_override(composite->strings,
-			cdev->desc.iManufacturer, iManufacturer);
-	if (cdev->desc.iProduct && iProduct)
-		string_override(composite->strings,
-			cdev->desc.iProduct, iProduct);
-	if (cdev->desc.iSerialNumber && iSerialNumber)
-		string_override(composite->strings,
-			cdev->desc.iSerialNumber, iSerialNumber);
+	/* has userspace failed to provide a serial number? */
+	if (composite->needs_serial && !cdev->desc.iSerialNumber)
+		WARNING(cdev, "userspace failed to provide iSerialNumber\n");
 
+	INFO(cdev, "%s ready\n", composite->name);
 	return 0;
 
 fail:
-	composite_unbind(gadget);
+	__composite_unbind(gadget, false);
 	return status;
 }
 
 /*-------------------------------------------------------------------------*/
 
-static struct usb_gadget_driver composite_driver = {
-	.speed		= USB_SPEED_HIGH,
-
+static const struct usb_gadget_driver composite_driver_template = {
 	.bind		= composite_bind,
 	.unbind		= composite_unbind,
 
@@ -978,8 +1673,9 @@ static struct usb_gadget_driver composite_driver = {
 };
 
 /**
- * usb_composite_register() - register a composite driver
+ * usb_composite_probe() - register a composite driver
  * @driver: the driver to register
+ *
  * Context: single threaded during gadget setup
  *
  * This function is used to register drivers using the composite driver
@@ -992,25 +1688,26 @@ static struct usb_gadget_driver composite_driver = {
  * while it was binding.  That would usually be done in order to wait for
  * some userspace participation.
  */
-int usb_composite_register(struct usb_composite_driver *driver)
+int usb_composite_probe(struct usb_composite_driver *driver)
 {
-	int ret;
+	struct usb_gadget_driver *gadget_driver;
 
-	if (!driver || !driver->dev || !driver->bind || composite)
+	if (!driver || !driver->dev || !driver->bind)
 		return -EINVAL;
 
 	if (!driver->name)
 		driver->name = "composite";
-	composite_driver.function =  (char *) driver->name;
-	composite = driver;
 
-	ret = usb_gadget_register_driver(&composite_driver);
+	driver->gadget_driver = composite_driver_template;
+	gadget_driver = &driver->gadget_driver;
 
-	if (ret)
-		composite = NULL;
+	gadget_driver->function =  (char *) driver->name;
+	gadget_driver->driver.name = driver->name;
+	gadget_driver->max_speed = driver->max_speed;
 
-	return ret;
+	return usb_gadget_probe_driver(gadget_driver);
 }
+EXPORT_SYMBOL_GPL(usb_composite_probe);
 
 /**
  * usb_composite_unregister() - unregister a composite driver
@@ -1021,7 +1718,84 @@ int usb_composite_register(struct usb_composite_driver *driver)
  */
 void usb_composite_unregister(struct usb_composite_driver *driver)
 {
-	if (composite != driver)
-		return;
-	usb_gadget_unregister_driver(&composite_driver);
+	usb_gadget_unregister_driver(&driver->gadget_driver);
+}
+EXPORT_SYMBOL_GPL(usb_composite_unregister);
+
+/**
+ * usb_composite_setup_continue() - Continue with the control transfer
+ * @cdev: the composite device who's control transfer was kept waiting
+ *
+ * This function must be called by the USB function driver to continue
+ * with the control transfer's data/status stage in case it had requested to
+ * delay the data/status stages. A USB function's setup handler (e.g. set_alt())
+ * can request the composite framework to delay the setup request's data/status
+ * stages by returning USB_GADGET_DELAYED_STATUS.
+ */
+void usb_composite_setup_continue(struct usb_composite_dev *cdev)
+{
+	int			value;
+	struct usb_request	*req = cdev->req;
+
+	DBG(cdev, "%s\n", __func__);
+
+	if (cdev->delayed_status == 0) {
+		WARN(cdev, "%s: Unexpected call\n", __func__);
+
+	} else if (--cdev->delayed_status == 0) {
+		DBG(cdev, "%s: Completing delayed status\n", __func__);
+		req->length = 0;
+		value = usb_ep_queue(cdev->gadget->ep0, req);
+		if (value < 0) {
+			DBG(cdev, "ep_queue --> %d\n", value);
+			req->status = 0;
+			composite_setup_complete(cdev->gadget->ep0, req);
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(usb_composite_setup_continue);
+
+static char *composite_default_mfr(struct usb_gadget *gadget)
+{
+	return asprintf("barebox %s", gadget->name);
+}
+
+void usb_composite_overwrite_options(struct usb_composite_dev *cdev,
+		struct usb_composite_overwrite *covr)
+{
+	struct usb_device_descriptor	*desc = &cdev->desc;
+	struct usb_gadget_strings	*gstr = cdev->driver->strings[0];
+	struct usb_string		*dev_str = gstr->strings;
+
+	if (covr->idVendor)
+		desc->idVendor = cpu_to_le16(covr->idVendor);
+
+	if (covr->idProduct)
+		desc->idProduct = cpu_to_le16(covr->idProduct);
+
+	if (covr->bcdDevice)
+		desc->bcdDevice = cpu_to_le16(covr->bcdDevice);
+
+	if (covr->serial_number) {
+		desc->iSerialNumber = dev_str[USB_GADGET_SERIAL_IDX].id;
+		dev_str[USB_GADGET_SERIAL_IDX].s = covr->serial_number;
+	}
+	if (covr->manufacturer) {
+		desc->iManufacturer = dev_str[USB_GADGET_MANUFACTURER_IDX].id;
+		dev_str[USB_GADGET_MANUFACTURER_IDX].s = covr->manufacturer;
+
+	} else if (!strlen(dev_str[USB_GADGET_MANUFACTURER_IDX].s)) {
+		desc->iManufacturer = dev_str[USB_GADGET_MANUFACTURER_IDX].id;
+		cdev->def_manufacturer = composite_default_mfr(cdev->gadget);
+		dev_str[USB_GADGET_MANUFACTURER_IDX].s = cdev->def_manufacturer;
+	}
+
+	if (covr->product) {
+		desc->iProduct = dev_str[USB_GADGET_PRODUCT_IDX].id;
+		dev_str[USB_GADGET_PRODUCT_IDX].s = covr->product;
+	}
 }
+EXPORT_SYMBOL_GPL(usb_composite_overwrite_options);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("David Brownell");
diff --git a/drivers/usb/gadget/config.c b/drivers/usb/gadget/config.c
index 5b338c5..b463f79 100644
--- a/drivers/usb/gadget/config.c
+++ b/drivers/usb/gadget/config.c
@@ -1,7 +1,19 @@
+/*
+ * usb/gadget/config.c -- simplify building config descriptors
+ *
+ * Copyright (C) 2003 David Brownell
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
 #include <common.h>
-#include <malloc.h>
-#include <errno.h>
+
 #include <usb/ch9.h>
+#include <usb/gadget.h>
+#include <usb/composite.h>
 
 /**
  * usb_descriptor_fillbuf - fill buffer with descriptors
@@ -36,6 +48,60 @@ usb_descriptor_fillbuf(void *buf, unsigned buflen,
 	}
 	return dest - (u8 *)buf;
 }
+EXPORT_SYMBOL_GPL(usb_descriptor_fillbuf);
+
+/**
+ * usb_gadget_config_buf - builts a complete configuration descriptor
+ * @config: Header for the descriptor, including characteristics such
+ *	as power requirements and number of interfaces.
+ * @desc: Null-terminated vector of pointers to the descriptors (interface,
+ *	endpoint, etc) defining all functions in this device configuration.
+ * @buf: Buffer for the resulting configuration descriptor.
+ * @length: Length of buffer.  If this is not big enough to hold the
+ *	entire configuration descriptor, an error code will be returned.
+ *
+ * This copies descriptors into the response buffer, building a descriptor
+ * for that configuration.  It returns the buffer length or a negative
+ * status code.  The config.wTotalLength field is set to match the length
+ * of the result, but other descriptor fields (including power usage and
+ * interface count) must be set by the caller.
+ *
+ * Gadget drivers could use this when constructing a config descriptor
+ * in response to USB_REQ_GET_DESCRIPTOR.  They will need to patch the
+ * resulting bDescriptorType value if USB_DT_OTHER_SPEED_CONFIG is needed.
+ */
+int usb_gadget_config_buf(
+	const struct usb_config_descriptor	*config,
+	void					*buf,
+	unsigned				length,
+	const struct usb_descriptor_header	**desc
+)
+{
+	struct usb_config_descriptor		*cp = buf;
+	int					len;
+
+	/* config descriptor first */
+	if (length < USB_DT_CONFIG_SIZE || !desc)
+		return -EINVAL;
+	*cp = *config;
+
+	/* then interface/endpoint/class/vendor/... */
+	len = usb_descriptor_fillbuf(USB_DT_CONFIG_SIZE + (u8*)buf,
+			length - USB_DT_CONFIG_SIZE, desc);
+	if (len < 0)
+		return len;
+	len += USB_DT_CONFIG_SIZE;
+	if (len > 0xffff)
+		return -EINVAL;
+
+	/* patch up the config descriptor */
+	cp->bLength = USB_DT_CONFIG_SIZE;
+	cp->bDescriptorType = USB_DT_CONFIG;
+	cp->wTotalLength = cpu_to_le16(len);
+	cp->bmAttributes |= USB_CONFIG_ATT_ONE;
+	return len;
+}
+EXPORT_SYMBOL_GPL(usb_gadget_config_buf);
 
 /**
  * usb_copy_descriptors - copy a vector of USB descriptors
@@ -49,7 +115,7 @@ usb_descriptor_fillbuf(void *buf, unsigned buflen,
  * with identifiers (for interfaces, strings, endpoints, and more)
  * as needed by a given function instance.
  */
-struct usb_descriptor_header **__init
+struct usb_descriptor_header **
 usb_copy_descriptors(struct usb_descriptor_header **src)
 {
 	struct usb_descriptor_header **tmp;
@@ -85,29 +151,41 @@ usb_copy_descriptors(struct usb_descriptor_header **src)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(usb_copy_descriptors);
 
-/**
- * usb_find_endpoint - find a copy of an endpoint descriptor
- * @src: original vector of descriptors
- * @copy: copy of @src
- * @match: endpoint descriptor found in @src
- *
- * This returns the copy of the @match descriptor made for @copy.  Its
- * intended use is to help remembering the endpoint descriptor to use
- * when enabling a given endpoint.
- */
-struct usb_endpoint_descriptor *__init
-usb_find_endpoint(
-	struct usb_descriptor_header **src,
-	struct usb_descriptor_header **copy,
-	struct usb_endpoint_descriptor *match
-)
+int usb_assign_descriptors(struct usb_function *f,
+		struct usb_descriptor_header **fs,
+		struct usb_descriptor_header **hs,
+		struct usb_descriptor_header **ss)
 {
-	while (*src) {
-		if (*src == (void *) match)
-			return (void *)*copy;
-		src++;
-		copy++;
+	struct usb_gadget *g = f->config->cdev->gadget;
+
+	if (fs) {
+		f->fs_descriptors = usb_copy_descriptors(fs);
+		if (!f->fs_descriptors)
+			goto err;
+	}
+	if (hs && gadget_is_dualspeed(g)) {
+		f->hs_descriptors = usb_copy_descriptors(hs);
+		if (!f->hs_descriptors)
+			goto err;
+	}
+	if (ss && gadget_is_superspeed(g)) {
+		f->ss_descriptors = usb_copy_descriptors(ss);
+		if (!f->ss_descriptors)
+			goto err;
 	}
-	return NULL;
+	return 0;
+err:
+	usb_free_all_descriptors(f);
+	return -ENOMEM;
+}
+EXPORT_SYMBOL_GPL(usb_assign_descriptors);
+
+void usb_free_all_descriptors(struct usb_function *f)
+{
+	usb_free_descriptors(f->fs_descriptors);
+	usb_free_descriptors(f->hs_descriptors);
+	usb_free_descriptors(f->ss_descriptors);
 }
+EXPORT_SYMBOL_GPL(usb_free_all_descriptors);
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index d0f2155..a2b4c0d 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -116,6 +116,7 @@ static struct usb_interface_descriptor dfu_control_interface_desc = {
 static int
 dfu_bind(struct usb_configuration *c, struct usb_function *f)
 {
+	struct usb_composite_dev *cdev = c->cdev;
 	struct usb_descriptor_header **header;
 	struct usb_interface_descriptor *desc;
 	int i;
@@ -145,8 +146,8 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	header[i + 1] = NULL;
 
 	/* copy descriptors, and track endpoint copies */
-	f->descriptors = usb_copy_descriptors(header);
-	if (!f->descriptors)
+	f->fs_descriptors = usb_copy_descriptors(header);
+	if (!f->fs_descriptors)
 		goto out;
 
 	/* support all relevant hardware speeds... we expect that when
@@ -176,7 +177,7 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
 
-	free(f->descriptors);
+	free(f->fs_descriptors);
 	if (gadget_is_dualspeed(c->cdev->gadget))
 		free(f->hs_descriptors);
 
@@ -634,7 +635,6 @@ static void dfu_unbind_config(struct usb_configuration *c)
 
 static struct usb_configuration dfu_config_driver = {
 	.label			= "USB DFU",
-	.bind			= dfu_bind_config,
 	.unbind			= dfu_unbind_config,
 	.bConfigurationValue	= 1,
 	.bmAttributes		= USB_CONFIG_ATT_SELFPOWER,
@@ -676,7 +676,7 @@ static int dfu_driver_bind(struct usb_composite_dev *cdev)
 	strings_dev[STRING_DESCRIPTION_IDX].id = status;
 	dfu_config_driver.iConfiguration = status;
 
-	status = usb_add_config(cdev, &dfu_config_driver);
+	status = usb_add_config(cdev, &dfu_config_driver, dfu_bind_config);
 	if (status < 0)
 		goto fail;
 
@@ -703,7 +703,7 @@ int usb_dfu_register(struct usb_dfu_pdata *pdata)
 	strings_dev[STRING_MANUFACTURER_IDX].s = pdata->manufacturer;
 	strings_dev[STRING_PRODUCT_IDX].s = pdata->productname;
 
-	ret = usb_composite_register(&dfu_driver);
+	ret = usb_composite_probe(&dfu_driver);
 	if (ret)
 		return ret;
 
diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index 13ad479..f0f576d 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -7,17 +7,11 @@
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
  */
 
 #include <init.h>
 #include <common.h>
+
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 
@@ -26,15 +20,6 @@
 
 #include "gadget_chips.h"
 
-/* we must assign addresses for configurable endpoints (like net2280) */
-static __initdata unsigned epnum;
-
-// #define MANY_ENDPOINTS
-#ifdef MANY_ENDPOINTS
-/* more than 15 configurable endpoints */
-static __initdata unsigned in_epnum;
-#endif
-
 /*
  * This should work with endpoints from controller drivers sharing the
  * same endpoint naming convention.  By example:
@@ -51,23 +36,26 @@ static __initdata unsigned in_epnum;
  * NOTE:  each endpoint is unidirectional, as specified by its USB
  * descriptor; and isn't specific to a configuration or altsetting.
  */
-static int __init
+static int
 ep_matches (
 	struct usb_gadget		*gadget,
 	struct usb_ep			*ep,
-	struct usb_endpoint_descriptor	*desc
+	struct usb_endpoint_descriptor	*desc,
+	struct usb_ss_ep_comp_descriptor *ep_comp
 )
 {
 	u8		type;
 	const char	*tmp;
 	u16		max;
 
+	int		num_req_streams = 0;
+
 	/* endpoint already claimed? */
 	if (NULL != ep->driver_data)
 		return 0;
 
 	/* only support ep0 for portable CONTROL traffic */
-	type = desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
+	type = usb_endpoint_type(desc);
 	if (USB_ENDPOINT_XFER_CONTROL == type)
 		return 0;
 
@@ -120,28 +108,48 @@ ep_matches (
 		}
 	}
 
+	/*
+	 * Get the number of required streams from the EP companion
+	 * descriptor and see if the EP matches it
+	 */
+	if (usb_endpoint_xfer_bulk(desc)) {
+		if (ep_comp && gadget->max_speed >= USB_SPEED_SUPER) {
+			num_req_streams = ep_comp->bmAttributes & 0x1f;
+			if (num_req_streams > ep->max_streams)
+				return 0;
+		}
+
+	}
+
+	/*
+	 * If the protocol driver hasn't yet decided on wMaxPacketSize
+	 * and wants to know the maximum possible, provide the info.
+	 */
+	if (desc->wMaxPacketSize == 0)
+		desc->wMaxPacketSize = cpu_to_le16(ep->maxpacket_limit);
+
 	/* endpoint maxpacket size is an input parameter, except for bulk
 	 * where it's an output parameter representing the full speed limit.
 	 * the usb spec fixes high speed bulk maxpacket at 512 bytes.
 	 */
-	max = 0x7ff & le16_to_cpu(desc->wMaxPacketSize);
+	max = 0x7ff & usb_endpoint_maxp(desc);
 	switch (type) {
 	case USB_ENDPOINT_XFER_INT:
-		/* INT:  limit 64 bytes full speed, 1024 high speed */
-		if (!gadget->is_dualspeed && max > 64)
+		/* INT:  limit 64 bytes full speed, 1024 high/super speed */
+		if (!gadget_is_dualspeed(gadget) && max > 64)
 			return 0;
 		/* FALLTHROUGH */
 
 	case USB_ENDPOINT_XFER_ISOC:
-		/* ISO:  limit 1023 bytes full speed, 1024 high speed */
-		if (ep->maxpacket < max)
+		/* ISO:  limit 1023 bytes full speed, 1024 high/super speed */
+		if (ep->maxpacket_limit < max)
 			return 0;
-		if (!gadget->is_dualspeed && max > 1023)
+		if (!gadget_is_dualspeed(gadget) && max > 1023)
 			return 0;
 
 		/* BOTH:  "high bandwidth" works only at high speed */
 		if ((desc->wMaxPacketSize & cpu_to_le16(3<<11))) {
-			if (!gadget->is_dualspeed)
+			if (!gadget_is_dualspeed(gadget))
 				return 0;
 			/* configure your hardware with enough buffering!! */
 		}
@@ -155,31 +163,30 @@ ep_matches (
 	if (isdigit (ep->name [2])) {
 		u8	num = simple_strtoul (&ep->name [2], NULL, 10);
 		desc->bEndpointAddress |= num;
-#ifdef	MANY_ENDPOINTS
 	} else if (desc->bEndpointAddress & USB_DIR_IN) {
-		if (++in_epnum > 15)
+		if (++gadget->in_epnum > 15)
 			return 0;
-		desc->bEndpointAddress = USB_DIR_IN | in_epnum;
-#endif
+		desc->bEndpointAddress = USB_DIR_IN | gadget->in_epnum;
 	} else {
-		if (++epnum > 15)
+		if (++gadget->out_epnum > 15)
 			return 0;
-		desc->bEndpointAddress |= epnum;
+		desc->bEndpointAddress |= gadget->out_epnum;
 	}
 
 	/* report (variable) full speed bulk maxpacket */
-	if (USB_ENDPOINT_XFER_BULK == type) {
-		int size = ep->maxpacket;
+	if ((USB_ENDPOINT_XFER_BULK == type) && !ep_comp) {
+		int size = ep->maxpacket_limit;
 
 		/* min() doesn't work on bitfields with gcc-3.5 */
 		if (size > 64)
 			size = 64;
 		desc->wMaxPacketSize = cpu_to_le16(size);
 	}
+	ep->address = desc->bEndpointAddress;
 	return 1;
 }
 
-static struct usb_ep * __init
+static struct usb_ep *
 find_ep (struct usb_gadget *gadget, const char *name)
 {
 	struct usb_ep	*ep;
@@ -192,38 +199,53 @@ find_ep (struct usb_gadget *gadget, const char *name)
 }
 
 /**
- * usb_ep_autoconfig - choose an endpoint matching the descriptor
+ * usb_ep_autoconfig_ss() - choose an endpoint matching the ep
+ * descriptor and ep companion descriptor
  * @gadget: The device to which the endpoint must belong.
  * @desc: Endpoint descriptor, with endpoint direction and transfer mode
- *	initialized.  For periodic transfers, the maximum packet
- *	size must also be initialized.  This is modified on success.
+ *    initialized.  For periodic transfers, the maximum packet
+ *    size must also be initialized.  This is modified on
+ *    success.
+ * @ep_comp: Endpoint companion descriptor, with the required
+ *    number of streams. Will be modified when the chosen EP
+ *    supports a different number of streams.
  *
- * By choosing an endpoint to use with the specified descriptor, this
- * routine simplifies writing gadget drivers that work with multiple
- * USB device controllers.  The endpoint would be passed later to
- * usb_ep_enable(), along with some descriptor.
+ * This routine replaces the usb_ep_autoconfig when needed
+ * superspeed enhancments. If such enhancemnets are required,
+ * the FD should call usb_ep_autoconfig_ss directly and provide
+ * the additional ep_comp parameter.
+ *
+ * By choosing an endpoint to use with the specified descriptor,
+ * this routine simplifies writing gadget drivers that work with
+ * multiple USB device controllers.  The endpoint would be
+ * passed later to usb_ep_enable(), along with some descriptor.
  *
  * That second descriptor won't always be the same as the first one.
  * For example, isochronous endpoints can be autoconfigured for high
  * bandwidth, and then used in several lower bandwidth altsettings.
  * Also, high and full speed descriptors will be different.
  *
- * Be sure to examine and test the results of autoconfiguration on your
- * hardware.  This code may not make the best choices about how to use the
- * USB controller, and it can't know all the restrictions that may apply.
- * Some combinations of driver and hardware won't be able to autoconfigure.
+ * Be sure to examine and test the results of autoconfiguration
+ * on your hardware.  This code may not make the best choices
+ * about how to use the USB controller, and it can't know all
+ * the restrictions that may apply. Some combinations of driver
+ * and hardware won't be able to autoconfigure.
  *
  * On success, this returns an un-claimed usb_ep, and modifies the endpoint
  * descriptor bEndpointAddress.  For bulk endpoints, the wMaxPacket value
- * is initialized as if the endpoint were used at full speed.  To prevent
- * the endpoint from being returned by a later autoconfig call, claim it
- * by assigning ep->driver_data to some non-null value.
+ * is initialized as if the endpoint were used at full speed and
+ * the bmAttribute field in the ep companion descriptor is
+ * updated with the assigned number of streams if it is
+ * different from the original value. To prevent the endpoint
+ * from being returned by a later autoconfig call, claim it by
+ * assigning ep->driver_data to some non-null value.
  *
  * On failure, this returns a null endpoint descriptor.
  */
-struct usb_ep * __init usb_ep_autoconfig (
+struct usb_ep *usb_ep_autoconfig_ss(
 	struct usb_gadget		*gadget,
-	struct usb_endpoint_descriptor	*desc
+	struct usb_endpoint_descriptor	*desc,
+	struct usb_ss_ep_comp_descriptor *ep_comp
 )
 {
 	struct usb_ep	*ep;
@@ -237,47 +259,101 @@ struct usb_ep * __init usb_ep_autoconfig (
 	if (gadget_is_net2280 (gadget) && type == USB_ENDPOINT_XFER_INT) {
 		/* ep-e, ep-f are PIO with only 64 byte fifos */
 		ep = find_ep (gadget, "ep-e");
-		if (ep && ep_matches (gadget, ep, desc))
-			return ep;
+		if (ep && ep_matches(gadget, ep, desc, ep_comp))
+			goto found_ep;
 		ep = find_ep (gadget, "ep-f");
-		if (ep && ep_matches (gadget, ep, desc))
-			return ep;
+		if (ep && ep_matches(gadget, ep, desc, ep_comp))
+			goto found_ep;
 
 	} else if (gadget_is_goku (gadget)) {
 		if (USB_ENDPOINT_XFER_INT == type) {
 			/* single buffering is enough */
-			ep = find_ep (gadget, "ep3-bulk");
-			if (ep && ep_matches (gadget, ep, desc))
-				return ep;
+			ep = find_ep(gadget, "ep3-bulk");
+			if (ep && ep_matches(gadget, ep, desc, ep_comp))
+				goto found_ep;
 		} else if (USB_ENDPOINT_XFER_BULK == type
 				&& (USB_DIR_IN & desc->bEndpointAddress)) {
 			/* DMA may be available */
-			ep = find_ep (gadget, "ep2-bulk");
-			if (ep && ep_matches (gadget, ep, desc))
-				return ep;
+			ep = find_ep(gadget, "ep2-bulk");
+			if (ep && ep_matches(gadget, ep, desc,
+					      ep_comp))
+				goto found_ep;
 		}
 
-	} else if (gadget_is_sh (gadget) && USB_ENDPOINT_XFER_INT == type) {
-		/* single buffering is enough; maybe 8 byte fifo is too */
-		ep = find_ep (gadget, "ep3in-bulk");
-		if (ep && ep_matches (gadget, ep, desc))
-			return ep;
-
-	} else if (gadget_is_mq11xx (gadget) && USB_ENDPOINT_XFER_INT == type) {
-		ep = find_ep (gadget, "ep1-bulk");
-		if (ep && ep_matches (gadget, ep, desc))
-			return ep;
+#ifdef CONFIG_BLACKFIN
+	} else if (gadget_is_musbhdrc(gadget)) {
+		if ((USB_ENDPOINT_XFER_BULK == type) ||
+		    (USB_ENDPOINT_XFER_ISOC == type)) {
+			if (USB_DIR_IN & desc->bEndpointAddress)
+				ep = find_ep (gadget, "ep5in");
+			else
+				ep = find_ep (gadget, "ep6out");
+		} else if (USB_ENDPOINT_XFER_INT == type) {
+			if (USB_DIR_IN & desc->bEndpointAddress)
+				ep = find_ep(gadget, "ep1in");
+			else
+				ep = find_ep(gadget, "ep2out");
+		} else
+			ep = NULL;
+		if (ep && ep_matches(gadget, ep, desc, ep_comp))
+			goto found_ep;
+#endif
 	}
 
 	/* Second, look at endpoints until an unclaimed one looks usable */
 	list_for_each_entry (ep, &gadget->ep_list, ep_list) {
-		if (ep_matches (gadget, ep, desc))
-			return ep;
+		if (ep_matches(gadget, ep, desc, ep_comp))
+			goto found_ep;
 	}
 
 	/* Fail */
 	return NULL;
+found_ep:
+	ep->desc = NULL;
+	ep->comp_desc = NULL;
+	return ep;
 }
+EXPORT_SYMBOL_GPL(usb_ep_autoconfig_ss);
+
+/**
+ * usb_ep_autoconfig() - choose an endpoint matching the
+ * descriptor
+ * @gadget: The device to which the endpoint must belong.
+ * @desc: Endpoint descriptor, with endpoint direction and transfer mode
+ *	initialized.  For periodic transfers, the maximum packet
+ *	size must also be initialized.  This is modified on success.
+ *
+ * By choosing an endpoint to use with the specified descriptor, this
+ * routine simplifies writing gadget drivers that work with multiple
+ * USB device controllers.  The endpoint would be passed later to
+ * usb_ep_enable(), along with some descriptor.
+ *
+ * That second descriptor won't always be the same as the first one.
+ * For example, isochronous endpoints can be autoconfigured for high
+ * bandwidth, and then used in several lower bandwidth altsettings.
+ * Also, high and full speed descriptors will be different.
+ *
+ * Be sure to examine and test the results of autoconfiguration on your
+ * hardware.  This code may not make the best choices about how to use the
+ * USB controller, and it can't know all the restrictions that may apply.
+ * Some combinations of driver and hardware won't be able to autoconfigure.
+ *
+ * On success, this returns an un-claimed usb_ep, and modifies the endpoint
+ * descriptor bEndpointAddress.  For bulk endpoints, the wMaxPacket value
+ * is initialized as if the endpoint were used at full speed.  To prevent
+ * the endpoint from being returned by a later autoconfig call, claim it
+ * by assigning ep->driver_data to some non-null value.
+ *
+ * On failure, this returns a null endpoint descriptor.
+ */
+struct usb_ep *usb_ep_autoconfig(
+	struct usb_gadget		*gadget,
+	struct usb_endpoint_descriptor	*desc
+)
+{
+	return usb_ep_autoconfig_ss(gadget, desc, NULL);
+}
+EXPORT_SYMBOL_GPL(usb_ep_autoconfig);
 
 /**
  * usb_ep_autoconfig_reset - reset endpoint autoconfig state
@@ -288,17 +364,14 @@ struct usb_ep * __init usb_ep_autoconfig (
  * state such as ep->driver_data and the record of assigned endpoints
  * used by usb_ep_autoconfig().
  */
-void __init usb_ep_autoconfig_reset (struct usb_gadget *gadget)
+void usb_ep_autoconfig_reset (struct usb_gadget *gadget)
 {
 	struct usb_ep	*ep;
 
 	list_for_each_entry (ep, &gadget->ep_list, ep_list) {
 		ep->driver_data = NULL;
 	}
-#ifdef	MANY_ENDPOINTS
-	in_epnum = 0;
-#endif
-	epnum = 0;
+	gadget->in_epnum = 0;
+	gadget->out_epnum = 0;
 }
-
-
+EXPORT_SYMBOL_GPL(usb_ep_autoconfig_reset);
diff --git a/drivers/usb/gadget/f_acm.c b/drivers/usb/gadget/f_acm.c
index 218aed2..f582fcd 100644
--- a/drivers/usb/gadget/f_acm.c
+++ b/drivers/usb/gadget/f_acm.c
@@ -4,6 +4,8 @@
  * Copyright (C) 2003 Al Borchers (alborchers@steinerpoint.com)
  * Copyright (C) 2008 by David Brownell
  * Copyright (C) 2008 by Nokia Corporation
+ * Copyright (C) 2009 by Samsung Electronics
+ * Author: Michal Nazarewicz (mina86@mina86.com)
  *
  * This software is distributed under the terms of the GNU General
  * Public License ("GPL") as published by the Free Software Foundation,
@@ -14,10 +16,12 @@
 
 #include <common.h>
 #include <usb/cdc.h>
+#include <linux/err.h>
 #include <asm/byteorder.h>
+#include <usb/composite.h>
 
-#include "gadget_chips.h"
 #include "u_serial.h"
+#include "gadget_chips.h"
 
 
 /*
@@ -37,12 +41,6 @@
  * descriptors (roughly equivalent to CDC Unions) may sometimes help.
  */
 
-struct acm_ep_descs {
-	struct usb_endpoint_descriptor	*in;
-	struct usb_endpoint_descriptor	*out;
-	struct usb_endpoint_descriptor	*notify;
-};
-
 struct f_acm {
 	struct gserial			port;
 	u8				ctrl_id, data_id;
@@ -50,11 +48,13 @@ struct f_acm {
 
 	u8				pending;
 
-	struct acm_ep_descs		fs;
-	struct acm_ep_descs		hs;
+	/* lock is mostly for pending and notify_req ... they get accessed
+	 * by callbacks both from tty (open/close/break) under its spinlock,
+	 * and notify_req.complete() which can't use that lock.
+	 */
+	spinlock_t			lock;
 
 	struct usb_ep			*notify;
-	struct usb_endpoint_descriptor	*notify_desc;
 	struct usb_request		*notify_req;
 
 	struct usb_cdc_line_coding	port_line_coding;	/* 8-N-1 etc */
@@ -89,11 +89,25 @@ static inline struct f_acm *port_to_acm(struct gserial *p)
 
 /* notification endpoint uses smallish and infrequent fixed-size messages */
 
-#define GS_LOG2_NOTIFY_INTERVAL		5	/* 1 << 5 == 32 msec */
+#define GS_NOTIFY_INTERVAL_MS		32
 #define GS_NOTIFY_MAXPACKET		10	/* notification + 2 bytes */
 
 /* interface and class descriptors: */
 
+static struct usb_interface_assoc_descriptor
+acm_iad_descriptor = {
+	.bLength =		sizeof acm_iad_descriptor,
+	.bDescriptorType =	USB_DT_INTERFACE_ASSOCIATION,
+
+	/* .bFirstInterface =	DYNAMIC, */
+	.bInterfaceCount = 	2,	// control + data
+	.bFunctionClass =	USB_CLASS_COMM,
+	.bFunctionSubClass =	USB_CDC_SUBCLASS_ACM,
+	.bFunctionProtocol =	USB_CDC_ACM_PROTO_AT_V25TER,
+	/* .iFunction =		DYNAMIC */
+};
+
+
 static struct usb_interface_descriptor acm_control_interface_desc = {
 	.bLength =		USB_DT_INTERFACE_SIZE,
 	.bDescriptorType =	USB_DT_INTERFACE,
@@ -155,7 +169,7 @@ static struct usb_endpoint_descriptor acm_fs_notify_desc = {
 	.bEndpointAddress =	USB_DIR_IN,
 	.bmAttributes =		USB_ENDPOINT_XFER_INT,
 	.wMaxPacketSize =	cpu_to_le16(GS_NOTIFY_MAXPACKET),
-	.bInterval =		1 << GS_LOG2_NOTIFY_INTERVAL,
+	.bInterval =		GS_NOTIFY_INTERVAL_MS,
 };
 
 static struct usb_endpoint_descriptor acm_fs_in_desc = {
@@ -173,6 +187,7 @@ static struct usb_endpoint_descriptor acm_fs_out_desc = {
 };
 
 static struct usb_descriptor_header *acm_fs_function[] = {
+	(struct usb_descriptor_header *) &acm_iad_descriptor,
 	(struct usb_descriptor_header *) &acm_control_interface_desc,
 	(struct usb_descriptor_header *) &acm_header_desc,
 	(struct usb_descriptor_header *) &acm_call_mgmt_descriptor,
@@ -186,14 +201,13 @@ static struct usb_descriptor_header *acm_fs_function[] = {
 };
 
 /* high speed support: */
-
 static struct usb_endpoint_descriptor acm_hs_notify_desc = {
 	.bLength =		USB_DT_ENDPOINT_SIZE,
 	.bDescriptorType =	USB_DT_ENDPOINT,
 	.bEndpointAddress =	USB_DIR_IN,
 	.bmAttributes =		USB_ENDPOINT_XFER_INT,
 	.wMaxPacketSize =	cpu_to_le16(GS_NOTIFY_MAXPACKET),
-	.bInterval =		GS_LOG2_NOTIFY_INTERVAL+4,
+	.bInterval =		USB_MS_TO_HS_INTERVAL(GS_NOTIFY_INTERVAL_MS),
 };
 
 static struct usb_endpoint_descriptor acm_hs_in_desc = {
@@ -211,6 +225,7 @@ static struct usb_endpoint_descriptor acm_hs_out_desc = {
 };
 
 static struct usb_descriptor_header *acm_hs_function[] = {
+	(struct usb_descriptor_header *) &acm_iad_descriptor,
 	(struct usb_descriptor_header *) &acm_control_interface_desc,
 	(struct usb_descriptor_header *) &acm_header_desc,
 	(struct usb_descriptor_header *) &acm_call_mgmt_descriptor,
@@ -223,16 +238,54 @@ static struct usb_descriptor_header *acm_hs_function[] = {
 	NULL,
 };
 
+static struct usb_endpoint_descriptor acm_ss_in_desc = {
+	.bLength =		USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType =	USB_DT_ENDPOINT,
+	.bmAttributes =		USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize =	cpu_to_le16(1024),
+};
+
+static struct usb_endpoint_descriptor acm_ss_out_desc = {
+	.bLength =		USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType =	USB_DT_ENDPOINT,
+	.bmAttributes =		USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize =	cpu_to_le16(1024),
+};
+
+static struct usb_ss_ep_comp_descriptor acm_ss_bulk_comp_desc = {
+	.bLength =              sizeof acm_ss_bulk_comp_desc,
+	.bDescriptorType =      USB_DT_SS_ENDPOINT_COMP,
+};
+
+static struct usb_descriptor_header *acm_ss_function[] = {
+	(struct usb_descriptor_header *) &acm_iad_descriptor,
+	(struct usb_descriptor_header *) &acm_control_interface_desc,
+	(struct usb_descriptor_header *) &acm_header_desc,
+	(struct usb_descriptor_header *) &acm_call_mgmt_descriptor,
+	(struct usb_descriptor_header *) &acm_descriptor,
+	(struct usb_descriptor_header *) &acm_union_desc,
+	(struct usb_descriptor_header *) &acm_hs_notify_desc,
+	(struct usb_descriptor_header *) &acm_ss_bulk_comp_desc,
+	(struct usb_descriptor_header *) &acm_data_interface_desc,
+	(struct usb_descriptor_header *) &acm_ss_in_desc,
+	(struct usb_descriptor_header *) &acm_ss_bulk_comp_desc,
+	(struct usb_descriptor_header *) &acm_ss_out_desc,
+	(struct usb_descriptor_header *) &acm_ss_bulk_comp_desc,
+	NULL,
+};
+
 /* string descriptors: */
 
 #define ACM_CTRL_IDX	0
 #define ACM_DATA_IDX	1
+#define ACM_IAD_IDX	2
 
 /* static strings, in UTF-8 */
 static struct usb_string acm_string_defs[] = {
 	[ACM_CTRL_IDX].s = "CDC Abstract Control Model (ACM)",
 	[ACM_DATA_IDX].s = "CDC ACM Data",
-	{  /* ZEROES END LIST */ },
+	[ACM_IAD_IDX ].s = "CDC Serial",
+	{  } /* end of list */
 };
 
 static struct usb_gadget_strings acm_string_table = {
@@ -257,6 +310,7 @@ static void acm_complete_set_line_coding(struct usb_ep *ep,
 		struct usb_request *req)
 {
 	struct f_acm	*acm = ep->driver_data;
+	struct usb_composite_dev *cdev = acm->port.func.config->cdev;
 
 	if (req->status != 0) {
 		DBG(cdev, "acm ttyGS%d completion, err %d\n",
@@ -309,6 +363,7 @@ static int acm_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		if (w_length != sizeof(struct usb_cdc_line_coding)
 				|| w_index != acm->ctrl_id)
 			goto invalid;
+
 		value = w_length;
 		cdev->gadget->ep0->driver_data = acm;
 		req->complete = acm_complete_set_line_coding;
@@ -319,6 +374,7 @@ static int acm_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			| USB_CDC_REQ_GET_LINE_CODING:
 		if (w_index != acm->ctrl_id)
 			goto invalid;
+
 		value = min_t(unsigned, w_length,
 				sizeof(struct usb_cdc_line_coding));
 		memcpy(req->buf, &acm->port_line_coding, value);
@@ -376,25 +432,28 @@ static int acm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 			usb_ep_disable(acm->notify);
 		} else {
 			VDBG(cdev, "init acm ctrl interface %d\n", intf);
-			acm->notify_desc = ep_choose(cdev->gadget,
-					acm->hs.notify,
-					acm->fs.notify);
+			if (config_ep_by_speed(cdev->gadget, f, acm->notify))
+				return -EINVAL;
 		}
-		usb_ep_enable(acm->notify, acm->notify_desc);
+		usb_ep_enable(acm->notify);
 		acm->notify->driver_data = acm;
 
 	} else if (intf == acm->data_id) {
 		if (acm->port.in->driver_data) {
 			DBG(cdev, "reset acm ttyGS%d\n", acm->port_num);
 			gserial_disconnect(&acm->port);
-		} else {
+		}
+		if (!acm->port.in->desc || !acm->port.out->desc) {
 			DBG(cdev, "activate acm ttyGS%d\n", acm->port_num);
-			acm->port.in_desc = ep_choose(cdev->gadget,
-					acm->hs.in, acm->fs.in);
-			acm->port.out_desc = ep_choose(cdev->gadget,
-					acm->hs.out, acm->fs.out);
+			if (config_ep_by_speed(cdev->gadget, f,
+					       acm->port.in) ||
+			    config_ep_by_speed(cdev->gadget, f,
+					       acm->port.out)) {
+				acm->port.in->desc = NULL;
+				acm->port.out->desc = NULL;
+				return -EINVAL;
+			}
 		}
-
 		gserial_connect(&acm->port, acm->port_num);
 
 	} else
@@ -406,8 +465,9 @@ static int acm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 static void acm_disable(struct usb_function *f)
 {
 	struct f_acm	*acm = func_to_acm(f);
+	struct usb_composite_dev *cdev = f->config->cdev;
 
-	VDBG(cdev, "acm ttyGS%d deactivated\n", acm->port_num);
+	DBG(cdev, "acm ttyGS%d deactivated\n", acm->port_num);
 	gserial_disconnect(&acm->port);
 	usb_ep_disable(acm->notify);
 	acm->notify->driver_data = NULL;
@@ -424,7 +484,7 @@ static void acm_disable(struct usb_function *f)
  * @length: size of data
  * Context: irqs blocked, acm->lock held, acm_notify_req non-null
  *
- * Returns zero on sucess or a negative errno.
+ * Returns zero on success or a negative errno.
  *
  * See section 6.3.5 of the CDC 1.1 specification for information
  * about the only notification we issue:  SerialState change.
@@ -441,7 +501,7 @@ static int acm_cdc_notify(struct f_acm *acm, u8 type, u16 value,
 
 	req = acm->notify_req;
 	acm->notify_req = NULL;
-	acm->pending = 0;
+	acm->pending = false;
 
 	req->length = len;
 	notify = req->buf;
@@ -470,15 +530,16 @@ static int acm_cdc_notify(struct f_acm *acm, u8 type, u16 value,
 
 static int acm_notify_serial_state(struct f_acm *acm)
 {
+	struct usb_composite_dev *cdev = acm->port.func.config->cdev;
 	int			status;
 
 	if (acm->notify_req) {
-		VDBG(cdev, "acm ttyGS%d serial state %04x\n",
+		DBG(cdev, "acm ttyGS%d serial state %04x\n",
 				acm->port_num, acm->serial_state);
 		status = acm_cdc_notify(acm, USB_CDC_NOTIFY_SERIAL_STATE,
 				0, &acm->serial_state, sizeof(acm->serial_state));
 	} else {
-		acm->pending = 1;
+		acm->pending = true;
 		status = 0;
 	}
 
@@ -488,8 +549,11 @@ static int acm_notify_serial_state(struct f_acm *acm)
 static void acm_cdc_notify_complete(struct usb_ep *ep, struct usb_request *req)
 {
 	struct f_acm		*acm = req->context;
-	u8			doit = 0;
+	u8			doit = false;
 
+	/* on this call path we do NOT hold the port spinlock,
+	 * which is why ACM needs its own spinlock
+	 */
 	if (req->status != -ESHUTDOWN)
 		doit = acm->pending;
 	acm->notify_req = req;
@@ -533,19 +597,34 @@ static int acm_send_break(struct gserial *port, int duration)
 /*-------------------------------------------------------------------------*/
 
 /* ACM function driver setup/binding */
-static int __init
+static int
 acm_bind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct usb_composite_dev *cdev = c->cdev;
 	struct f_acm		*acm = func_to_acm(f);
+	struct usb_string	*us;
 	int			status;
 	struct usb_ep		*ep;
 
+	/* REVISIT might want instance-specific strings to help
+	 * distinguish instances ...
+	 */
+
+	/* maybe allocate device-global string IDs, and patch descriptors */
+	us = usb_gstrings_attach(cdev, acm_strings,
+			ARRAY_SIZE(acm_string_defs));
+	if (IS_ERR(us))
+		return PTR_ERR(us);
+	acm_control_interface_desc.iInterface = us[ACM_CTRL_IDX].id;
+	acm_data_interface_desc.iInterface = us[ACM_DATA_IDX].id;
+	acm_iad_descriptor.iFunction = us[ACM_IAD_IDX].id;
+
 	/* allocate instance-specific interface IDs, and patch descriptors */
 	status = usb_interface_id(c, f);
 	if (status < 0)
 		goto fail;
 	acm->ctrl_id = status;
+	acm_iad_descriptor.bFirstInterface = status;
 
 	acm_control_interface_desc.bInterfaceNumber = status;
 	acm_union_desc .bMasterInterface0 = status;
@@ -589,43 +668,26 @@ acm_bind(struct usb_configuration *c, struct usb_function *f)
 	acm->notify_req->complete = acm_cdc_notify_complete;
 	acm->notify_req->context = acm;
 
-	/* copy descriptors, and track endpoint copies */
-	f->descriptors = usb_copy_descriptors(acm_fs_function);
-	if (!f->descriptors)
-		goto fail;
-
-	acm->fs.in = usb_find_endpoint(acm_fs_function,
-			f->descriptors, &acm_fs_in_desc);
-	acm->fs.out = usb_find_endpoint(acm_fs_function,
-			f->descriptors, &acm_fs_out_desc);
-	acm->fs.notify = usb_find_endpoint(acm_fs_function,
-			f->descriptors, &acm_fs_notify_desc);
-
 	/* support all relevant hardware speeds... we expect that when
 	 * hardware is dual speed, all bulk-capable endpoints work at
 	 * both speeds
 	 */
-	if (gadget_is_dualspeed(c->cdev->gadget)) {
-		acm_hs_in_desc.bEndpointAddress =
-				acm_fs_in_desc.bEndpointAddress;
-		acm_hs_out_desc.bEndpointAddress =
-				acm_fs_out_desc.bEndpointAddress;
-		acm_hs_notify_desc.bEndpointAddress =
-				acm_fs_notify_desc.bEndpointAddress;
-
-		/* copy descriptors, and track endpoint copies */
-		f->hs_descriptors = usb_copy_descriptors(acm_hs_function);
-
-		acm->hs.in = usb_find_endpoint(acm_hs_function,
-				f->hs_descriptors, &acm_hs_in_desc);
-		acm->hs.out = usb_find_endpoint(acm_hs_function,
-				f->hs_descriptors, &acm_hs_out_desc);
-		acm->hs.notify = usb_find_endpoint(acm_hs_function,
-				f->hs_descriptors, &acm_hs_notify_desc);
-	}
+	acm_hs_in_desc.bEndpointAddress = acm_fs_in_desc.bEndpointAddress;
+	acm_hs_out_desc.bEndpointAddress = acm_fs_out_desc.bEndpointAddress;
+	acm_hs_notify_desc.bEndpointAddress =
+		acm_fs_notify_desc.bEndpointAddress;
+
+	acm_ss_in_desc.bEndpointAddress = acm_fs_in_desc.bEndpointAddress;
+	acm_ss_out_desc.bEndpointAddress = acm_fs_out_desc.bEndpointAddress;
+
+	status = usb_assign_descriptors(f, acm_fs_function, acm_hs_function,
+			acm_ss_function);
+	if (status)
+		goto fail;
 
 	DBG(cdev, "acm ttyGS%d: %s speed IN/%s OUT/%s NOTIFY/%s\n",
 			acm->port_num,
+			gadget_is_superspeed(c->cdev->gadget) ? "super" :
 			gadget_is_dualspeed(c->cdev->gadget) ? "dual" : "full",
 			acm->port.in->name, acm->port.out->name,
 			acm->notify->name);
@@ -648,80 +710,31 @@ fail:
 	return status;
 }
 
-static void
-acm_unbind(struct usb_configuration *c, struct usb_function *f)
+static void acm_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_acm		*acm = func_to_acm(f);
 
-	if (gadget_is_dualspeed(c->cdev->gadget))
-		usb_free_descriptors(f->hs_descriptors);
-	usb_free_descriptors(f->descriptors);
-	gs_free_req(acm->notify, acm->notify_req);
-	kfree(acm);
+	acm_string_defs[0].id = 0;
+	usb_free_all_descriptors(f);
+	if (acm->notify_req)
+		gs_free_req(acm->notify, acm->notify_req);
 }
 
-/* Some controllers can't support CDC ACM ... */
-static inline int can_support_cdc(struct usb_configuration *c)
+static void acm_free_func(struct usb_function *f)
 {
-	/* SH3 doesn't support multiple interfaces */
-	if (gadget_is_sh(c->cdev->gadget))
-		return 0;
-
-	/* sa1100 doesn't have a third interrupt endpoint */
-	if (gadget_is_sa1100(c->cdev->gadget))
-		return 0;
+	struct f_acm		*acm = func_to_acm(f);
 
-	/* everything else is *probably* fine ... */
-	return 1;
+	kfree(acm);
 }
 
-/**
- * acm_bind_config - add a CDC ACM function to a configuration
- * @c: the configuration to support the CDC ACM instance
- * @port_num: /dev/ttyGS* port this interface will use
- * Context: single threaded during gadget setup
- *
- * Returns zero on success, else negative errno.
- *
- * Caller must have called @gserial_setup() with enough ports to
- * handle all the ones it binds.  Caller is also responsible
- * for calling @gserial_cleanup() before module unload.
- */
-int __init acm_bind_config(struct usb_configuration *c, u8 port_num)
+static struct usb_function *acm_alloc_func(struct usb_function_instance *fi)
 {
-	struct f_acm	*acm;
-	int		status;
-
-	if (!can_support_cdc(c))
-		return -EINVAL;
-
-	/* REVISIT might want instance-specific strings to help
-	 * distinguish instances ...
-	 */
-
-	/* maybe allocate device-global string IDs, and patch descriptors */
-	if (acm_string_defs[ACM_CTRL_IDX].id == 0) {
-		status = usb_string_id(c->cdev);
-		if (status < 0)
-			return status;
-		acm_string_defs[ACM_CTRL_IDX].id = status;
-
-		acm_control_interface_desc.iInterface = status;
-
-		status = usb_string_id(c->cdev);
-		if (status < 0)
-			return status;
-		acm_string_defs[ACM_DATA_IDX].id = status;
+	struct f_serial_opts *opts;
+	struct f_acm *acm;
 
-		acm_data_interface_desc.iInterface = status;
-	}
-
-	/* allocate and initialize one new instance */
-	acm = kzalloc(sizeof *acm, GFP_KERNEL);
+	acm = kzalloc(sizeof(*acm), GFP_KERNEL);
 	if (!acm)
-		return -ENOMEM;
-
-	acm->port_num = port_num;
+		return ERR_PTR(-ENOMEM);
 
 	acm->port.connect = acm_connect;
 	acm->port.disconnect = acm_disconnect;
@@ -731,13 +744,42 @@ int __init acm_bind_config(struct usb_configuration *c, u8 port_num)
 	acm->port.func.strings = acm_strings;
 	/* descriptors are per-instance copies */
 	acm->port.func.bind = acm_bind;
-	acm->port.func.unbind = acm_unbind;
 	acm->port.func.set_alt = acm_set_alt;
 	acm->port.func.setup = acm_setup;
 	acm->port.func.disable = acm_disable;
 
-	status = usb_add_function(c, &acm->port.func);
-	if (status)
-		kfree(acm);
-	return status;
+	opts = container_of(fi, struct f_serial_opts, func_inst);
+	acm->port_num = opts->port_num;
+	acm->port.func.unbind = acm_unbind;
+	acm->port.func.free_func = acm_free_func;
+
+	return &acm->port.func;
+}
+
+static void acm_free_instance(struct usb_function_instance *fi)
+{
+	struct f_serial_opts *opts;
+
+	opts = container_of(fi, struct f_serial_opts, func_inst);
+	gserial_free_line(opts->port_num);
+	kfree(opts);
+}
+
+static struct usb_function_instance *acm_alloc_instance(void)
+{
+	struct f_serial_opts *opts;
+	int ret;
+
+	opts = kzalloc(sizeof(*opts), GFP_KERNEL);
+	if (!opts)
+		return ERR_PTR(-ENOMEM);
+	opts->func_inst.free_func_inst = acm_free_instance;
+	ret = gserial_alloc_line(&opts->port_num);
+	if (ret) {
+		kfree(opts);
+		return ERR_PTR(ret);
+	}
+	return &opts->func_inst;
 }
+DECLARE_USB_FUNCTION_INIT(acm, acm_alloc_instance, acm_alloc_func);
+MODULE_LICENSE("GPL");
diff --git a/drivers/usb/gadget/f_serial.c b/drivers/usb/gadget/f_serial.c
index b933105..39c4444 100644
--- a/drivers/usb/gadget/f_serial.c
+++ b/drivers/usb/gadget/f_serial.c
@@ -12,9 +12,11 @@
 
 #include <common.h>
 #include <asm/byteorder.h>
+#include <linux/err.h>
 
-#include "gadget_chips.h"
 #include "u_serial.h"
+#include "gadget_chips.h"
+
 
 /*
  * This function packages a simple "generic serial" port with no real
@@ -25,18 +27,10 @@
  * if you can arrange appropriate host side drivers.
  */
 
-struct gser_descs {
-	struct usb_endpoint_descriptor	*in;
-	struct usb_endpoint_descriptor	*out;
-};
-
 struct f_gser {
 	struct gserial			port;
 	u8				data_id;
 	u8				port_num;
-
-	struct gser_descs		fs;
-	struct gser_descs		hs;
 };
 
 static inline struct f_gser *func_to_gser(struct usb_function *f)
@@ -105,6 +99,34 @@ static struct usb_descriptor_header *gser_hs_function[] = {
 	NULL,
 };
 
+static struct usb_endpoint_descriptor gser_ss_in_desc = {
+	.bLength =		USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType =	USB_DT_ENDPOINT,
+	.bmAttributes =		USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize =	cpu_to_le16(1024),
+};
+
+static struct usb_endpoint_descriptor gser_ss_out_desc = {
+	.bLength =		USB_DT_ENDPOINT_SIZE,
+	.bDescriptorType =	USB_DT_ENDPOINT,
+	.bmAttributes =		USB_ENDPOINT_XFER_BULK,
+	.wMaxPacketSize =	cpu_to_le16(1024),
+};
+
+static struct usb_ss_ep_comp_descriptor gser_ss_bulk_comp_desc = {
+	.bLength =              sizeof gser_ss_bulk_comp_desc,
+	.bDescriptorType =      USB_DT_SS_ENDPOINT_COMP,
+};
+
+static struct usb_descriptor_header *gser_ss_function[] = {
+	(struct usb_descriptor_header *) &gser_interface_desc,
+	(struct usb_descriptor_header *) &gser_ss_in_desc,
+	(struct usb_descriptor_header *) &gser_ss_bulk_comp_desc,
+	(struct usb_descriptor_header *) &gser_ss_out_desc,
+	(struct usb_descriptor_header *) &gser_ss_bulk_comp_desc,
+	NULL,
+};
+
 /* string descriptors: */
 
 static struct usb_string gser_string_defs[] = {
@@ -133,21 +155,25 @@ static int gser_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 
 	if (gser->port.in->driver_data) {
 		DBG(cdev, "reset generic ttyGS%d\n", gser->port_num);
-	} else {
+		gserial_disconnect(&gser->port);
+	}
+	if (!gser->port.in->desc || !gser->port.out->desc) {
 		DBG(cdev, "activate generic ttyGS%d\n", gser->port_num);
-		gser->port.in_desc = ep_choose(cdev->gadget,
-				gser->hs.in, gser->fs.in);
-		gser->port.out_desc = ep_choose(cdev->gadget,
-				gser->hs.out, gser->fs.out);
-		gserial_connect(&gser->port, gser->port_num);
+		if (config_ep_by_speed(cdev->gadget, f, gser->port.in) ||
+		    config_ep_by_speed(cdev->gadget, f, gser->port.out)) {
+			gser->port.in->desc = NULL;
+			gser->port.out->desc = NULL;
+			return -EINVAL;
+		}
 	}
-
+	gserial_connect(&gser->port, gser->port_num);
 	return 0;
 }
 
 static void gser_disable(struct usb_function *f)
 {
-	struct f_gser		*gser = func_to_gser(f);
+	struct f_gser	*gser = func_to_gser(f);
+	struct usb_composite_dev *cdev = f->config->cdev;
 
 	DBG(cdev, "generic ttyGS%d deactivated\n", gser->port_num);
 	gserial_disconnect(&gser->port);
@@ -157,14 +183,25 @@ static void gser_disable(struct usb_function *f)
 
 /* serial function driver setup/binding */
 
-static int
-gser_bind(struct usb_configuration *c, struct usb_function *f)
+static int gser_bind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct usb_composite_dev *cdev = c->cdev;
 	struct f_gser		*gser = func_to_gser(f);
 	int			status;
 	struct usb_ep		*ep;
 
+	/* REVISIT might want instance-specific strings to help
+	 * distinguish instances ...
+	 */
+
+	/* maybe allocate device-global string ID */
+	if (gser_string_defs[0].id == 0) {
+		status = usb_string_id(c->cdev);
+		if (status < 0)
+			return status;
+		gser_string_defs[0].id = status;
+	}
+
 	/* allocate instance-specific interface IDs */
 	status = usb_interface_id(c, f);
 	if (status < 0)
@@ -187,36 +224,23 @@ gser_bind(struct usb_configuration *c, struct usb_function *f)
 	gser->port.out = ep;
 	ep->driver_data = cdev;	/* claim */
 
-	/* copy descriptors, and track endpoint copies */
-	f->descriptors = usb_copy_descriptors(gser_fs_function);
-
-	gser->fs.in = usb_find_endpoint(gser_fs_function,
-			f->descriptors, &gser_fs_in_desc);
-	gser->fs.out = usb_find_endpoint(gser_fs_function,
-			f->descriptors, &gser_fs_out_desc);
-
-
 	/* support all relevant hardware speeds... we expect that when
 	 * hardware is dual speed, all bulk-capable endpoints work at
 	 * both speeds
 	 */
-	if (gadget_is_dualspeed(c->cdev->gadget)) {
-		gser_hs_in_desc.bEndpointAddress =
-				gser_fs_in_desc.bEndpointAddress;
-		gser_hs_out_desc.bEndpointAddress =
-				gser_fs_out_desc.bEndpointAddress;
-
-		/* copy descriptors, and track endpoint copies */
-		f->hs_descriptors = usb_copy_descriptors(gser_hs_function);
-
-		gser->hs.in = usb_find_endpoint(gser_hs_function,
-				f->hs_descriptors, &gser_hs_in_desc);
-		gser->hs.out = usb_find_endpoint(gser_hs_function,
-				f->hs_descriptors, &gser_hs_out_desc);
-	}
+	gser_hs_in_desc.bEndpointAddress = gser_fs_in_desc.bEndpointAddress;
+	gser_hs_out_desc.bEndpointAddress = gser_fs_out_desc.bEndpointAddress;
+
+	gser_ss_in_desc.bEndpointAddress = gser_fs_in_desc.bEndpointAddress;
+	gser_ss_out_desc.bEndpointAddress = gser_fs_out_desc.bEndpointAddress;
 
+	status = usb_assign_descriptors(f, gser_fs_function, gser_hs_function,
+			gser_ss_function);
+	if (status)
+		goto fail;
 	DBG(cdev, "generic ttyGS%d: %s speed IN/%s OUT/%s\n",
 			gser->port_num,
+			gadget_is_superspeed(c->cdev->gadget) ? "super" :
 			gadget_is_dualspeed(c->cdev->gadget) ? "dual" : "full",
 			gser->port.in->name, gser->port.out->name);
 	return 0;
@@ -233,50 +257,60 @@ fail:
 	return status;
 }
 
-static void
-gser_unbind(struct usb_configuration *c, struct usb_function *f)
+static void gser_free_inst(struct usb_function_instance *f)
 {
-	if (gadget_is_dualspeed(c->cdev->gadget))
-		usb_free_descriptors(f->hs_descriptors);
-	usb_free_descriptors(f->descriptors);
-	kfree(func_to_gser(f));
+	struct f_serial_opts *opts;
+
+	opts = container_of(f, struct f_serial_opts, func_inst);
+	gserial_free_line(opts->port_num);
+	kfree(opts);
 }
 
-/**
- * gser_bind_config - add a generic serial function to a configuration
- * @c: the configuration to support the serial instance
- * @port_num: /dev/ttyGS* port this interface will use
- * Context: single threaded during gadget setup
- *
- * Returns zero on success, else negative errno.
- *
- * Caller must have called @gserial_setup() with enough ports to
- * handle all the ones it binds.  Caller is also responsible
- * for calling @gserial_cleanup() before module unload.
- */
-int gser_bind_config(struct usb_configuration *c, u8 port_num)
+static struct usb_function_instance *gser_alloc_inst(void)
 {
-	struct f_gser	*gser;
-	int		status;
+	struct f_serial_opts *opts;
+	int ret;
+
+	opts = kzalloc(sizeof(*opts), GFP_KERNEL);
+	if (!opts)
+		return ERR_PTR(-ENOMEM);
+
+	opts->func_inst.free_func_inst = gser_free_inst;
+	ret = gserial_alloc_line(&opts->port_num);
+	if (ret) {
+		kfree(opts);
+		return ERR_PTR(ret);
+	}
 
-	/* REVISIT might want instance-specific strings to help
-	 * distinguish instances ...
-	 */
+	return &opts->func_inst;
+}
 
-	/* maybe allocate device-global string ID */
-	if (gser_string_defs[0].id == 0) {
-		status = usb_string_id(c->cdev);
-		if (status < 0)
-			return status;
-		gser_string_defs[0].id = status;
-	}
+static void gser_free(struct usb_function *f)
+{
+	struct f_gser *serial;
+
+	serial = func_to_gser(f);
+	kfree(serial);
+}
+
+static void gser_unbind(struct usb_configuration *c, struct usb_function *f)
+{
+	usb_free_all_descriptors(f);
+}
+
+static struct usb_function *gser_alloc(struct usb_function_instance *fi)
+{
+	struct f_gser	*gser;
+	struct f_serial_opts *opts;
 
 	/* allocate and initialize one new instance */
-	gser = kzalloc(sizeof *gser, GFP_KERNEL);
+	gser = kzalloc(sizeof(*gser), GFP_KERNEL);
 	if (!gser)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
-	gser->port_num = port_num;
+	opts = container_of(fi, struct f_serial_opts, func_inst);
+
+	gser->port_num = opts->port_num;
 
 	gser->port.func.name = "gser";
 	gser->port.func.strings = gser_strings;
@@ -284,9 +318,12 @@ int gser_bind_config(struct usb_configuration *c, u8 port_num)
 	gser->port.func.unbind = gser_unbind;
 	gser->port.func.set_alt = gser_set_alt;
 	gser->port.func.disable = gser_disable;
+	gser->port.func.free_func = gser_free;
 
-	status = usb_add_function(c, &gser->port.func);
-	if (status)
-		kfree(gser);
-	return status;
+	return &gser->port.func;
 }
+
+DECLARE_USB_FUNCTION_INIT(gser, gser_alloc_inst, gser_alloc);
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Al Borchers");
+MODULE_AUTHOR("David Brownell");
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 50bae78..3cfeb8a 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1999,58 +1999,33 @@ int usb_gadget_poll(void)
  * Hook to gadget drivers
  * Called by initialization code of gadget drivers
 *----------------------------------------------------------------*/
-int usb_gadget_register_driver(struct usb_gadget_driver *driver)
+static int fsl_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
 {
-	int retval = -ENODEV;
-
-	if (!udc_controller)
-		return -ENODEV;
-
-	if (!driver || (driver->speed != USB_SPEED_FULL
-				&& driver->speed != USB_SPEED_HIGH)
-			|| !driver->bind || !driver->disconnect
-			|| !driver->setup)
-		return -EINVAL;
-
-	if (udc_controller->driver)
-		return -EBUSY;
+	/*
+	 * We currently have PHY no driver which could call vbus_connect,
+	 * so when the USB gadget core calls usb_gadget_connect() the
+	 * driver decides to disable the device because it has no vbus.
+	 * Work around this by enabling vbus here.
+	 */
+	usb_gadget_vbus_connect(gadget);
 
 	/* hook up the driver */
 	udc_controller->driver = driver;
 
-	/* bind udc driver to gadget driver */
-	retval = driver->bind(&udc_controller->gadget);
-	if (retval) {
-		VDBG("bind to gadget --> %d", retval);
-		udc_controller->driver = NULL;
-		goto out;
-	}
-
 	/* Enable DR IRQ reg and Set usbcmd reg  Run bit */
 	dr_controller_run(udc_controller);
 	udc_controller->usb_state = USB_STATE_ATTACHED;
 	udc_controller->ep0_state = WAIT_FOR_SETUP;
 	udc_controller->ep0_dir = 0;
 
-out:
-	if (retval)
-		printk(KERN_WARNING "gadget driver register failed %d\n",
-		       retval);
-	return retval;
+	return 0;
 }
-EXPORT_SYMBOL(usb_gadget_register_driver);
 
 /* Disconnect from gadget driver */
-int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
+static int fsl_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
 {
 	struct fsl_ep *loop_ep;
 
-	if (!udc_controller)
-		return -ENODEV;
-
-	if (!driver || driver != udc_controller->driver || !driver->unbind)
-		return -EINVAL;
-
 	/* stop DR, disable intr */
 	dr_controller_stop(udc_controller);
 
@@ -2066,16 +2041,8 @@ int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
 			ep.ep_list)
 		nuke(loop_ep, -ESHUTDOWN);
 
-	/* report disconnect; the controller is already quiesced */
-	driver->disconnect(&udc_controller->gadget);
-
-	/* unbind gadget and unhook driver. */
-	driver->unbind(&udc_controller->gadget);
-	udc_controller->driver = NULL;
-
 	return 0;
 }
-EXPORT_SYMBOL(usb_gadget_unregister_driver);
 
 static int struct_udc_setup(struct fsl_udc *udc,
 		struct device_d *dev)
@@ -2202,12 +2169,14 @@ static int fsl_pullup(struct usb_gadget *gadget, int is_on)
 
 	udc = container_of(gadget, struct fsl_udc, gadget);
 	udc->softconnect = (is_on != 0);
-	if (can_pullup(udc))
+
+	if (can_pullup(udc)) {
 		writel((readl(&dr_regs->usbcmd) | USB_CMD_RUN_STOP),
 				&dr_regs->usbcmd);
-	else
+	} else {
 		writel((readl(&dr_regs->usbcmd) & ~USB_CMD_RUN_STOP),
 				&dr_regs->usbcmd);
+	}
 
 	return 0;
 }
@@ -2220,6 +2189,8 @@ static struct usb_gadget_ops fsl_gadget_ops = {
 	.vbus_session = fsl_vbus_session,
 	.vbus_draw = fsl_vbus_draw,
 	.pullup = fsl_pullup,
+	.udc_start = fsl_udc_start,
+	.udc_stop = fsl_udc_stop,
 };
 
 /*----------------------------------------------------------------
@@ -2243,7 +2214,7 @@ static int __init struct_ep_setup(struct fsl_udc *udc, unsigned char index,
 	/* for ep0: maxP defined in desc
 	 * for other eps, maxP is set by epautoconfig() called by gadget layer
 	 */
-	ep->ep.maxpacket = (unsigned short) ~0;
+	usb_ep_set_maxpacket_limit(&ep->ep, (unsigned short) ~0);
 
 	/* the queue lists any req for this ep */
 	INIT_LIST_HEAD(&ep->queue);
@@ -2300,10 +2271,10 @@ int ci_udc_register(struct device_d *dev, void __iomem *regs)
 
 	/* Setup gadget structure */
 	udc_controller->gadget.ops = &fsl_gadget_ops;
-	udc_controller->gadget.is_dualspeed = 1;
 	udc_controller->gadget.ep0 = &udc_controller->eps[0].ep;
 	INIT_LIST_HEAD(&udc_controller->gadget.ep_list);
 	udc_controller->gadget.speed = USB_SPEED_UNKNOWN;
+	udc_controller->gadget.max_speed = USB_SPEED_HIGH;
 	udc_controller->gadget.name = "fsl-usb2-udc";
 
 	/* setup QH and epctrl for ep0 */
@@ -2330,6 +2301,11 @@ int ci_udc_register(struct device_d *dev, void __iomem *regs)
 
 	poller_register(&poller);
 
+	ret = usb_add_gadget_udc_release(dev, &udc_controller->gadget,
+			NULL);
+	if (ret)
+		goto err_out;
+
 	return 0;
 err_out:
 	return ret;
diff --git a/drivers/usb/gadget/functions.c b/drivers/usb/gadget/functions.c
new file mode 100644
index 0000000..3b5d4df
--- /dev/null
+++ b/drivers/usb/gadget/functions.c
@@ -0,0 +1,99 @@
+#include <common.h>
+#include <linux/err.h>
+
+#include <usb/composite.h>
+
+static LIST_HEAD(func_list);
+
+static struct usb_function_instance *try_get_usb_function_instance(const char *name)
+{
+	struct usb_function_driver *fd;
+	struct usb_function_instance *fi;
+
+	fi = ERR_PTR(-ENOENT);
+
+	list_for_each_entry(fd, &func_list, list) {
+
+		if (strcmp(name, fd->name))
+			continue;
+
+		fi = fd->alloc_inst();
+		if (!IS_ERR(fi))
+			fi->fd = fd;
+		break;
+	}
+
+	return fi;
+}
+
+struct usb_function_instance *usb_get_function_instance(const char *name)
+{
+	struct usb_function_instance *fi;
+	int ret;
+
+	fi = try_get_usb_function_instance(name);
+	if (!IS_ERR(fi))
+		return fi;
+	ret = PTR_ERR(fi);
+	if (ret != -ENOENT)
+		return fi;
+	return try_get_usb_function_instance(name);
+}
+EXPORT_SYMBOL_GPL(usb_get_function_instance);
+
+struct usb_function *usb_get_function(struct usb_function_instance *fi)
+{
+	struct usb_function *f;
+
+	f = fi->fd->alloc_func(fi);
+	if (IS_ERR(f))
+		return f;
+	f->fi = fi;
+	return f;
+}
+EXPORT_SYMBOL_GPL(usb_get_function);
+
+void usb_put_function_instance(struct usb_function_instance *fi)
+{
+	struct module *mod;
+
+	if (!fi)
+		return;
+
+	mod = fi->fd->mod;
+	fi->free_func_inst(fi);
+}
+EXPORT_SYMBOL_GPL(usb_put_function_instance);
+
+void usb_put_function(struct usb_function *f)
+{
+	if (!f)
+		return;
+
+	f->free_func(f);
+}
+EXPORT_SYMBOL_GPL(usb_put_function);
+
+int usb_function_register(struct usb_function_driver *newf)
+{
+	struct usb_function_driver *fd;
+	int ret;
+
+	ret = -EEXIST;
+
+	list_for_each_entry(fd, &func_list, list) {
+		if (!strcmp(fd->name, newf->name))
+			goto out;
+	}
+	ret = 0;
+	list_add_tail(&newf->list, &func_list);
+out:
+	return ret;
+}
+EXPORT_SYMBOL_GPL(usb_function_register);
+
+void usb_function_unregister(struct usb_function_driver *fd)
+{
+	list_del(&fd->list);
+}
+EXPORT_SYMBOL_GPL(usb_function_unregister);
diff --git a/drivers/usb/gadget/gadget_chips.h b/drivers/usb/gadget/gadget_chips.h
index 8e8190b..c41336f 100644
--- a/drivers/usb/gadget/gadget_chips.h
+++ b/drivers/usb/gadget/gadget_chips.h
@@ -1,7 +1,55 @@
-#define gadget_is_pxa(x) 0
-#define gadget_is_goku(x) 0
-#define gadget_is_sh(x) 0
-#define gadget_is_mq11xx(x) 0
-#define gadget_is_net2280(x) 0
-#define gadget_is_sa1100(x) 0
+/*
+ * USB device controllers have lots of quirks.  Use these macros in
+ * gadget drivers or other code that needs to deal with them, and which
+ * autoconfigures instead of using early binding to the hardware.
+ *
+ * This SHOULD eventually work like the ARM mach_is_*() stuff, driven by
+ * some config file that gets updated as new hardware is supported.
+ * (And avoiding all runtime comparisons in typical one-choice configs!)
+ *
+ * NOTE:  some of these controller drivers may not be available yet.
+ * Some are available on 2.4 kernels; several are available, but not
+ * yet pushed in the 2.6 mainline tree.
+ */
 
+#ifndef __GADGET_CHIPS_H
+#define __GADGET_CHIPS_H
+
+#include <usb/gadget.h>
+
+/*
+ * NOTICE: the entries below are alphabetical and should be kept
+ * that way.
+ *
+ * Always be sure to add new entries to the correct position or
+ * accept the bashing later.
+ *
+ * If you have forgotten the alphabetical order let VIM/EMACS
+ * do that for you.
+ */
+#define gadget_is_at91(g)		(!strcmp("at91_udc", (g)->name))
+#define gadget_is_goku(g)		(!strcmp("goku_udc", (g)->name))
+#define gadget_is_musbhdrc(g)		(!strcmp("musb-hdrc", (g)->name))
+#define gadget_is_net2280(g)		(!strcmp("net2280", (g)->name))
+#define gadget_is_pxa(g)		(!strcmp("pxa25x_udc", (g)->name))
+#define gadget_is_pxa27x(g)		(!strcmp("pxa27x_udc", (g)->name))
+
+/**
+ * gadget_supports_altsettings - return true if altsettings work
+ * @gadget: the gadget in question
+ */
+static inline bool gadget_supports_altsettings(struct usb_gadget *gadget)
+{
+	/* PXA 21x/25x/26x has no altsettings at all */
+	if (gadget_is_pxa(gadget))
+		return false;
+
+	/* PXA 27x and 3xx have *broken* altsetting support */
+	if (gadget_is_pxa27x(gadget))
+		return false;
+
+	/* Everything else is *presumably* fine ... */
+	return true;
+}
+
+#endif /* __GADGET_CHIPS_H */
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index b18d7c5..6cc4dd7 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -882,11 +882,16 @@ static int pxa_udc_vbus_session(struct usb_gadget *_gadget, int is_active)
 	return 0;
 }
 
+static int pxa_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *driver);
+static int pxa_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *driver);
+
 static const struct usb_gadget_ops pxa_udc_ops = {
 	.get_frame	= pxa_udc_get_frame,
 	.wakeup		= pxa_udc_wakeup,
 	.pullup		= pxa_udc_pullup,
 	.vbus_session	= pxa_udc_vbus_session,
+	.udc_start	= pxa_udc_start,
+	.udc_stop	= pxa_udc_stop,
 };
 
 static void clk_enable(void)
@@ -976,40 +981,20 @@ static void udc_enable(struct pxa_udc *udc)
 	udc->enabled = 1;
 }
 
-int usb_gadget_register_driver(struct usb_gadget_driver *driver)
+static int pxa_udc_start(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
 {
 	struct pxa_udc *udc = the_controller;
-	int retval;
-
-	if (!driver || driver->speed < USB_SPEED_FULL || !driver->bind
-			|| !driver->disconnect || !driver->setup)
-		return -EINVAL;
-	if (!udc)
-		return -ENODEV;
-	if (udc->driver)
-		return -EBUSY;
 
 	/* first hook up the driver ... */
 	udc->driver = driver;
-	dplus_pullup(udc, 1);
 
-	retval = driver->bind(&udc->gadget);
-	if (retval) {
-		dev_err(udc->dev, "bind to function %s --> error %d\n",
-			driver->function, retval);
-		goto bind_fail;
-	}
 	dev_dbg(udc->dev, "registered gadget function '%s'\n",
 		driver->function);
 
 	if (should_enable_udc(udc))
 		udc_enable(udc);
 	return 0;
-
-bind_fail:
-	return retval;
 }
-EXPORT_SYMBOL(usb_gadget_register_driver);
 
 static void stop_activity(struct pxa_udc *udc, struct usb_gadget_driver *driver)
 {
@@ -1027,7 +1012,7 @@ static void stop_activity(struct pxa_udc *udc, struct usb_gadget_driver *driver)
 		driver->disconnect(&udc->gadget);
 }
 
-int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
+static int pxa_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *driver)
 {
 	struct pxa_udc *udc = the_controller;
 
@@ -1038,7 +1023,6 @@ int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
 
 	stop_activity(udc, driver);
 	udc_disable(udc);
-	dplus_pullup(udc, 0);
 
 	driver->disconnect(&udc->gadget);
 	driver->unbind(&udc->gadget);
@@ -1050,7 +1034,6 @@ int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
 	*/
 	return 0;
 }
-EXPORT_SYMBOL(usb_gadget_unregister_driver);
 
 static void handle_ep0_ctrl_req(struct pxa_udc *udc,
 				struct pxa27x_request *req)
@@ -1481,7 +1464,7 @@ static struct poller_struct poller = {
 static int __init pxa_udc_probe(struct device_d *dev)
 {
 	struct pxa_udc *udc = &memory;
-	int gpio;
+	int gpio, ret;
 
 	udc->regs = dev_request_mem_region(dev, 0);
 	if (!udc->regs)
@@ -1503,6 +1486,10 @@ static int __init pxa_udc_probe(struct device_d *dev)
 	pxa_eps_setup(udc);
 	poller_register(&poller);
 
+	ret = usb_add_gadget_udc_release(dev, &udc->gadget, NULL);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
diff --git a/drivers/usb/gadget/serial.c b/drivers/usb/gadget/serial.c
index 98a501b..b3314a3 100644
--- a/drivers/usb/gadget/serial.c
+++ b/drivers/usb/gadget/serial.c
@@ -1,6 +1,19 @@
+/*
+ * serial.c -- USB gadget serial driver
+ *
+ * Copyright (C) 2003 Al Borchers (alborchers@steinerpoint.com)
+ * Copyright (C) 2008 by David Brownell
+ * Copyright (C) 2008 by Nokia Corporation
+ *
+ * This software is distributed under the terms of the GNU General
+ * Public License ("GPL") as published by the Free Software Foundation,
+ * either version 2 of that License or (at your option) any later version.
+ */
+
 #include <common.h>
 #include <errno.h>
 #include <init.h>
+#include <linux/err.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 #include <usb/composite.h>
@@ -8,6 +21,8 @@
 #include <asm/byteorder.h>
 
 #include "u_serial.h"
+#include "gadget_chips.h"
+
 
 /* Defines */
 
@@ -17,6 +32,9 @@
 #define GS_LONG_NAME			"Gadget Serial"
 #define GS_VERSION_NAME			GS_LONG_NAME " " GS_VERSION_STR
 
+/*-------------------------------------------------------------------------*/
+static struct usb_composite_overwrite coverwrite;
+
 /* Thanks to NetChip Technologies for donating this product ID.
 *
 * DO NOT REUSE THESE IDs with a protocol-incompatible driver!!  Ever!!
@@ -29,15 +47,12 @@
 
 /* string IDs are assigned dynamically */
 
-#define STRING_MANUFACTURER_IDX		0
-#define STRING_PRODUCT_IDX		1
-#define STRING_DESCRIPTION_IDX		2
-
-static char manufacturer[50];
+#define STRING_DESCRIPTION_IDX		USB_GADGET_FIRST_AVAIL_IDX
 
 static struct usb_string strings_dev[] = {
-	[STRING_MANUFACTURER_IDX].s = manufacturer,
-	[STRING_PRODUCT_IDX].s = GS_VERSION_NAME,
+	[USB_GADGET_MANUFACTURER_IDX].s = "",
+	[USB_GADGET_PRODUCT_IDX].s = GS_VERSION_NAME,
+	[USB_GADGET_SERIAL_IDX].s = "",
 	[STRING_DESCRIPTION_IDX].s = NULL /* updated; f(use_acm) */,
 	{  } /* end of list */
 };
@@ -52,30 +67,6 @@ static struct usb_gadget_strings *dev_strings[] = {
 	NULL,
 };
 
-static int use_acm = 1;
-#ifdef HAVE_OBEX
-static int use_obex = 0;
-#endif
-static unsigned n_ports = 1;
-
-static int serial_bind_config(struct usb_configuration *c)
-{
-	unsigned i;
-	int status = 0;
-
-	for (i = 0; i < n_ports && status == 0; i++) {
-		if (use_acm)
-			status = acm_bind_config(c, i);
-#ifdef HAVE_OBEX
-		else if (use_obex)
-			status = obex_bind_config(c, i);
-#endif
-		else
-			status = gser_bind_config(c, i);
-	}
-	return status;
-}
-
 static struct usb_device_descriptor device_desc = {
 	.bLength =		USB_DT_DEVICE_SIZE,
 	.bDescriptorType =	USB_DT_DEVICE,
@@ -86,97 +77,164 @@ static struct usb_device_descriptor device_desc = {
 	/* .bMaxPacketSize0 = f(hardware) */
 	.idVendor =		cpu_to_le16(GS_VENDOR_ID),
 	/* .idProduct =	f(use_acm) */
-	/* .bcdDevice = f(hardware) */
+	.bcdDevice = cpu_to_le16(GS_VERSION_NUM),
 	/* .iManufacturer = DYNAMIC */
 	/* .iProduct = DYNAMIC */
 	.bNumConfigurations =	1,
 };
 
+static struct usb_otg_descriptor otg_descriptor = {
+	.bLength =		sizeof otg_descriptor,
+	.bDescriptorType =	USB_DT_OTG,
+
+	/* REVISIT SRP-only hardware is possible, although
+	 * it would not be called "OTG" ...
+	 */
+	.bmAttributes =		USB_OTG_SRP | USB_OTG_HNP,
+};
+
+static const struct usb_descriptor_header *otg_desc[] = {
+	(struct usb_descriptor_header *) &otg_descriptor,
+	NULL,
+};
+
+/*-------------------------------------------------------------------------*/
+
+/* Module */
+MODULE_DESCRIPTION(GS_VERSION_NAME);
+MODULE_AUTHOR("Al Borchers");
+MODULE_AUTHOR("David Brownell");
+MODULE_LICENSE("GPL");
+
+static bool use_acm = true;
+
+static bool use_obex = false;
+
+static unsigned n_ports = 1;
+
+/*-------------------------------------------------------------------------*/
+
 static struct usb_configuration serial_config_driver = {
 	/* .label = f(use_acm) */
-	.bind		= serial_bind_config,
 	/* .bConfigurationValue = f(use_acm) */
 	/* .iConfiguration = DYNAMIC */
 	.bmAttributes	= USB_CONFIG_ATT_SELFPOWER,
 };
 
-static int gs_bind(struct usb_composite_dev *cdev)
+static struct usb_function_instance *fi_serial[MAX_U_SERIAL_PORTS];
+static struct usb_function *f_serial[MAX_U_SERIAL_PORTS];
+
+static int serial_register_ports(struct usb_composite_dev *cdev,
+		struct usb_configuration *c, const char *f_name)
 {
-	int			gcnum;
-	struct usb_gadget	*gadget = cdev->gadget;
-	int			status;
+	int i;
+	int ret;
+
+	ret = usb_add_config_only(cdev, c);
+	if (ret)
+		goto out;
+
+	for (i = 0; i < n_ports; i++) {
+
+		fi_serial[i] = usb_get_function_instance(f_name);
+		if (IS_ERR(fi_serial[i])) {
+			ret = PTR_ERR(fi_serial[i]);
+			goto fail;
+		}
+
+		f_serial[i] = usb_get_function(fi_serial[i]);
+		if (IS_ERR(f_serial[i])) {
+			ret = PTR_ERR(f_serial[i]);
+			goto err_get_func;
+		}
+
+		ret = usb_add_function(c, f_serial[i]);
+		if (ret)
+			goto err_add_func;
+	}
 
-	status = gserial_setup(cdev->gadget, n_ports);
-	if (status < 0)
-		return status;
+	return 0;
 
-	/* Allocate string descriptor numbers ... note that string
-	 * contents can be overridden by the composite_dev glue.
-	 */
+err_add_func:
+	usb_put_function(f_serial[i]);
+err_get_func:
+	usb_put_function_instance(fi_serial[i]);
 
-	/* device description: manufacturer, product */
-	sprintf(manufacturer, "barebox with %s",
-		gadget->name);
-	status = usb_string_id(cdev);
-	if (status < 0)
-		goto fail;
-	strings_dev[STRING_MANUFACTURER_IDX].id = status;
-
-	device_desc.iManufacturer = status;
+fail:
+	i--;
+	while (i >= 0) {
+		usb_remove_function(c, f_serial[i]);
+		usb_put_function(f_serial[i]);
+		usb_put_function_instance(fi_serial[i]);
+		i--;
+	}
+out:
+	return ret;
+}
 
-	status = usb_string_id(cdev);
-	if (status < 0)
-		goto fail;
-	strings_dev[STRING_PRODUCT_IDX].id = status;
+static int __init gs_bind(struct usb_composite_dev *cdev)
+{
+	int			status;
 
-	device_desc.iProduct = status;
+	/* Allocate string descriptor numbers ... note that string
+	 * contents can be overridden by the composite_dev glue.
+	 */
 
-	/* config description */
-	status = usb_string_id(cdev);
+	status = usb_string_ids_tab(cdev, strings_dev);
 	if (status < 0)
 		goto fail;
-	strings_dev[STRING_DESCRIPTION_IDX].id = status;
-
+	device_desc.iManufacturer = strings_dev[USB_GADGET_MANUFACTURER_IDX].id;
+	device_desc.iProduct = strings_dev[USB_GADGET_PRODUCT_IDX].id;
+	status = strings_dev[STRING_DESCRIPTION_IDX].id;
 	serial_config_driver.iConfiguration = status;
 
-	/* set up other descriptors */
-//	gcnum = usb_gadget_controller_number(gadget);
-	gcnum = 0x19;
-	if (gcnum >= 0)
-		device_desc.bcdDevice = cpu_to_le16(GS_VERSION_NUM | gcnum);
-	else {
-		/* this is so simple (for now, no altsettings) that it
-		 * SHOULD NOT have problems with bulk-capable hardware.
-		 * so warn about unrcognized controllers -- don't panic.
-		 *
-		 * things like configuration and altsetting numbering
-		 * can need hardware-specific attention though.
-		 */
-		pr_warning("gs_bind: controller '%s' not recognized\n",
-			gadget->name);
-		device_desc.bcdDevice =
-			cpu_to_le16(GS_VERSION_NUM | 0x0099);
+	if (gadget_is_otg(cdev->gadget)) {
+		serial_config_driver.descriptors = otg_desc;
+		serial_config_driver.bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 	}
 
 	/* register our configuration */
-	status = usb_add_config(cdev, &serial_config_driver);
+	if (use_acm) {
+		status  = serial_register_ports(cdev, &serial_config_driver,
+				"acm");
+		usb_ep_autoconfig_reset(cdev->gadget);
+	} else if (use_obex)
+		status = serial_register_ports(cdev, &serial_config_driver,
+				"obex");
+	else {
+		status = serial_register_ports(cdev, &serial_config_driver,
+				"gser");
+	}
 	if (status < 0)
 		goto fail;
 
+	usb_composite_overwrite_options(cdev, &coverwrite);
 	INFO(cdev, "%s\n", GS_VERSION_NAME);
 
 	return 0;
 
 fail:
-//	gserial_cleanup();
 	return status;
 }
 
+static int gs_unbind(struct usb_composite_dev *cdev)
+{
+	int i;
+
+	for (i = 0; i < n_ports; i++) {
+		usb_put_function(f_serial[i]);
+		usb_put_function_instance(fi_serial[i]);
+	}
+	return 0;
+}
+
 static struct usb_composite_driver gserial_driver = {
 	.name		= "g_serial",
 	.dev		= &device_desc,
 	.strings	= dev_strings,
+	.max_speed	= USB_SPEED_SUPER,
 	.bind		= gs_bind,
+	.unbind		= gs_unbind,
 };
 
 int usb_serial_register(struct usb_serial_pdata *pdata)
@@ -185,32 +243,15 @@ int usb_serial_register(struct usb_serial_pdata *pdata)
 	 * but neither of these product IDs was defined that way.
 	 */
 
+	use_acm = pdata->acm;
+
 	/*
 	 * PXA CPU suffer a silicon bug which prevents them from being a
 	 * compound device, forbiding the ACM configurations.
 	 */
-#ifdef CONFIG_ARCH_PXA2XX
-	use_acm = 0;
-#endif
-	switch (pdata->mode) {
-	case 1:
-#ifdef HAVE_OBEX
-		use_obex = 1;
-#endif
-		use_acm = 0;
-		break;
-	case 2:
-#ifdef HAVE_OBEX
-		use_obex = 1;
-#endif
+
+	if (IS_ENABLED(CONFIG_ARCH_PXA2XX))
 		use_acm = 0;
-		break;
-	default:
-#ifdef HAVE_OBEX
-		use_obex = 0;
-#endif
-		use_acm = 1;
-	}
 
 	if (use_acm) {
 		serial_config_driver.label = "CDC ACM config";
@@ -218,32 +259,22 @@ int usb_serial_register(struct usb_serial_pdata *pdata)
 		device_desc.bDeviceClass = USB_CLASS_COMM;
 		device_desc.idProduct =
 				cpu_to_le16(GS_CDC_PRODUCT_ID);
-	}
-#ifdef HAVE_OBEX
-	else if (use_obex) {
-		serial_config_driver.label = "CDC OBEX config";
-		serial_config_driver.bConfigurationValue = 3;
-		device_desc.bDeviceClass = USB_CLASS_COMM;
-		device_desc.idProduct =
-			cpu_to_le16(GS_CDC_OBEX_PRODUCT_ID);
-	}
-#endif
-	else {
+	} else {
 		serial_config_driver.label = "Generic Serial config";
 		serial_config_driver.bConfigurationValue = 1;
 		device_desc.bDeviceClass = USB_CLASS_VENDOR_SPEC;
 		device_desc.idProduct =
 				cpu_to_le16(GS_PRODUCT_ID);
 	}
-	strings_dev[STRING_DESCRIPTION_IDX].s = serial_config_driver.label;
+
 	if (pdata->idVendor)
 		device_desc.idVendor = pdata->idVendor;
 	if (pdata->idProduct)
 		device_desc.idProduct = pdata->idProduct;
-	strings_dev[STRING_MANUFACTURER_IDX].s = pdata->manufacturer;
-	strings_dev[STRING_PRODUCT_IDX].s = pdata->productname;
+	strings_dev[USB_GADGET_MANUFACTURER_IDX].s = pdata->manufacturer;
+	strings_dev[USB_GADGET_PRODUCT_IDX].s = pdata->productname;
 
-	return usb_composite_register(&gserial_driver);
+	return usb_composite_probe(&gserial_driver);
 }
 
 void usb_serial_unregister(void)
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 2f9353e..b6a4afd 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -22,6 +22,8 @@
 #include <usb/cdc.h>
 #include <kfifo.h>
 #include <clock.h>
+#include <linux/err.h>
+#include <dma.h>
 
 #include "u_serial.h"
 
@@ -31,11 +33,12 @@
  * "serial port" functionality through the USB gadget stack.  Each such
  * port is exposed through a /dev/ttyGS* node.
  *
- * After initialization (gserial_setup), these TTY port devices stay
- * available until they are removed (gserial_cleanup).  Each one may be
- * connected to a USB function (gserial_connect), or disconnected (with
- * gserial_disconnect) when the USB host issues a config change event.
- * Data can only flow when the port is connected to the host.
+ * After this module has been loaded, the individual TTY port can be requested
+ * (gserial_alloc_line()) and it will stay available until they are removed
+ * (gserial_free_line()). Each one may be connected to a USB function
+ * (gserial_connect), or disconnected (with gserial_disconnect) when the USB
+ * host issues a config change event. Data can only flow when the port is
+ * connected to the host.
  *
  * A given TTY port can be made available in multiple configurations.
  * For example, each one might expose a ttyGS0 node which provides a
@@ -74,21 +77,27 @@
  * next layer of buffering.  For TX that's a circular buffer; for RX
  * consider it a NOP.  A third layer is provided by the TTY code.
  */
-#define QUEUE_SIZE		128
+#define QUEUE_SIZE		16
 #define WRITE_BUF_SIZE		8192		/* TX only */
 #define RECV_FIFO_SIZE		(1024 * 8)
+
+/* circular buffer */
+struct gs_buf {
+	unsigned		buf_size;
+	char			*buf_buf;
+	char			*buf_get;
+	char			*buf_put;
+};
+
 /*
  * The port structure holds info for each port, one for each minor number
  * (and thus for each /dev/ node).
  */
 struct gs_port {
-
 	struct gserial		*port_usb;
 	struct console_device	cdev;
 	struct kfifo		*recv_fifo;
 
-	unsigned		open_count;
-	int			openclose;	/* open/close in progress */
 	u8			port_num;
 
 	struct list_head	read_pool;
@@ -100,12 +109,9 @@ struct gs_port {
 	struct usb_cdc_line_coding port_line_coding;	/* 8-N-1 etc */
 };
 
-/* increase N_PORTS if you need more */
-#define N_PORTS		4
 static struct portmaster {
 	struct gs_port	*port;
-} ports[N_PORTS];
-static unsigned	n_ports;
+} ports[MAX_U_SERIAL_PORTS];
 
 #define GS_CLOSE_TIMEOUT		15		/* seconds */
 
@@ -162,6 +168,10 @@ static void gs_read_complete(struct usb_ep *ep, struct usb_request *req)
 	gs_start_rx(port);
 }
 
+/*-------------------------------------------------------------------------*/
+
+/* I/O glue between TTY (upper) and USB function (lower) driver layers */
+
 static void gs_write_complete(struct usb_ep *ep, struct usb_request *req)
 {
 	struct gs_port	*port = ep->driver_data;
@@ -176,7 +186,6 @@ static void gs_write_complete(struct usb_ep *ep, struct usb_request *req)
 		/* FALL THROUGH */
 	case 0:
 		/* normal completion */
-//		gs_start_tx(port);
 		break;
 
 	case -ESHUTDOWN:
@@ -201,11 +210,24 @@ gs_alloc_req(struct usb_ep *ep, unsigned len)
 
 	if (req != NULL) {
 		req->length = len;
-		req->buf = xmemalign(32, len);
+		req->buf = dma_alloc(len);
 	}
 
 	return req;
 }
+EXPORT_SYMBOL_GPL(gs_alloc_req);
+
+/*
+ * gs_free_req
+ *
+ * Free a usb_request and its buffer.
+ */
+void gs_free_req(struct usb_ep *ep, struct usb_request *req)
+{
+	kfree(req->buf);
+	usb_ep_free_request(ep, req);
+}
+EXPORT_SYMBOL_GPL(gs_free_req);
 
 static void gs_free_requests(struct usb_ep *ep, struct list_head *head)
 {
@@ -276,9 +298,7 @@ static int gs_start_io(struct gs_port *port)
 	started = gs_start_rx(port);
 
 	/* unblock any pending writes into our circular buffer */
-	if (started) {
-//		tty_wakeup(port->port_tty);
-	} else {
+	if (!started) {
 		gs_free_requests(ep, head);
 		gs_free_requests(port->port_usb->in, &port->write_pool);
 		status = -EIO;
@@ -287,76 +307,84 @@ static int gs_start_io(struct gs_port *port)
 	return status;
 }
 
-/*
- * gs_free_req
- *
- * Free a usb_request and its buffer.
- */
-void gs_free_req(struct usb_ep *ep, struct usb_request *req)
-{
-	kfree(req->buf);
-	usb_ep_free_request(ep, req);
-}
+/*-------------------------------------------------------------------------*/
 
-static int __init
+static int
 gs_port_alloc(unsigned port_num, struct usb_cdc_line_coding *coding)
 {
 	struct gs_port	*port;
+	int		ret = 0;
 
-	port = kzalloc(sizeof(struct gs_port), GFP_KERNEL);
-	if (port == NULL)
-		return -ENOMEM;
+	if (ports[port_num].port) {
+		ret = -EBUSY;
+		goto out;
+	}
 
-	port->port_num = port_num;
-	port->port_line_coding = *coding;
+	port = kzalloc(sizeof(struct gs_port), GFP_KERNEL);
+	if (port == NULL) {
+		ret = -ENOMEM;
+		goto out;
+	}
 
 	INIT_LIST_HEAD(&port->read_pool);
 	INIT_LIST_HEAD(&port->write_pool);
 
+	port->port_num = port_num;
+	port->port_line_coding = *coding;
+
 	ports[port_num].port = port;
+out:
+	return ret;
+}
 
-	return 0;
+static void gserial_free_port(struct gs_port *port)
+{
+	kfree(port);
 }
 
-/**
- * gserial_setup - initialize TTY driver for one or more ports
- * @g: gadget to associate with these ports
- * @count: how many ports to support
- * Context: may sleep
- *
- * The TTY stack needs to know in advance how many devices it should
- * plan to manage.  Use this call to set up the ports you will be
- * exporting through USB.  Later, connect them to functions based
- * on what configuration is activated by the USB host; and disconnect
- * them as appropriate.
- *
- * An example would be a two-configuration device in which both
- * configurations expose port 0, but through different functions.
- * One configuration could even expose port 1 while the other
- * one doesn't.
- *
- * Returns negative errno or zero.
- */
-int __init gserial_setup(struct usb_gadget *g, unsigned count)
+void gserial_free_line(unsigned char port_num)
 {
-	struct usb_cdc_line_coding	coding;
-	int i, status;
+	struct gs_port	*port;
 
-	/* make devices be openable */
-	for (i = 0; i < count; i++) {
-		status = gs_port_alloc(i, &coding);
-		if (status) {
-			count = i;
-			goto fail;
-		}
+	if (WARN_ON(!ports[port_num].port))
+		return;
+
+	port = ports[port_num].port;
+	ports[port_num].port = NULL;
+
+	gserial_free_port(port);
+}
+EXPORT_SYMBOL_GPL(gserial_free_line);
+
+int gserial_alloc_line(unsigned char *line_num)
+{
+	struct usb_cdc_line_coding	coding;
+	int				ret;
+	int				port_num;
+
+	coding.dwDTERate = cpu_to_le32(9600);
+	coding.bCharFormat = 8;
+	coding.bParityType = USB_CDC_NO_PARITY;
+	coding.bDataBits = USB_CDC_1_STOP_BITS;
+
+	for (port_num = 0; port_num < MAX_U_SERIAL_PORTS; port_num++) {
+		ret = gs_port_alloc(port_num, &coding);
+		if (ret == -EBUSY)
+			continue;
+		if (ret)
+			return ret;
+		break;
 	}
-	n_ports = count;
-	return 0;
-fail:
-	while (count--)
-		kfree(ports[count].port);
-	return status;
+	if (ret)
+		return ret;
+
+	/* ... and sysfs class devices, so mdev/udev make /dev/ttyGS* */
+
+	*line_num = port_num;
+
+	return ret;
 }
+EXPORT_SYMBOL_GPL(gserial_alloc_line);
 
 static void serial_putc(struct console_device *cdev, char c)
 {
@@ -422,33 +450,59 @@ timeout:
 static void serial_flush(struct console_device *cdev)
 {
 }
+
 static int serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	return 0;
 }
 
-static struct console_device *mycdev;
-
+/**
+ * gserial_connect - notify TTY I/O glue that USB link is active
+ * @gser: the function, set up with endpoints and descriptors
+ * @port_num: which port is active
+ * Context: any (usually from irq)
+ *
+ * This is called activate endpoints and let the TTY layer know that
+ * the connection is active ... not unlike "carrier detect".  It won't
+ * necessarily start I/O queues; unless the TTY is held open by any
+ * task, there would be no point.  However, the endpoints will be
+ * activated so the USB host can perform I/O, subject to basic USB
+ * hardware flow control.
+ *
+ * Caller needs to have set up the endpoints and USB function in @dev
+ * before calling this, as well as the appropriate (speed-specific)
+ * endpoint descriptors, and also have allocate @port_num by calling
+ * @gserial_alloc_line().
+ *
+ * Returns negative errno or zero.
+ * On success, ep->driver_data will be overwritten.
+ */
 int gserial_connect(struct gserial *gser, u8 port_num)
 {
 	struct gs_port	*port;
 	int		status;
 	struct console_device *cdev;
 
-	/* we "know" gserial_cleanup() hasn't been called */
-	port = ports[port_num].port;
+	if (port_num >= MAX_U_SERIAL_PORTS)
+		return -ENXIO;
 
-	/* In case of multiple activation (ie. multiple SET_INTERFACE) */
-	if (port->port_usb)
-		return 0;
+	port = ports[port_num].port;
+	if (!port) {
+		pr_err("serial line %d not allocated.\n", port_num);
+		return -EINVAL;
+	}
+	if (port->port_usb) {
+		pr_err("serial line %d is in use.\n", port_num);
+		return -EBUSY;
+	}
 
 	/* activate the endpoints */
-	status = usb_ep_enable(gser->in, gser->in_desc);
+	status = usb_ep_enable(gser->in);
 	if (status < 0)
 		return status;
 	gser->in->driver_data = port;
 
-	status = usb_ep_enable(gser->out, gser->out_desc);
+	status = usb_ep_enable(gser->out);
 	if (status < 0)
 		goto fail_out;
 	gser->out->driver_data = port;
@@ -481,7 +535,19 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 	if (status)
 		goto fail_out;
 
-	mycdev = cdev;
+	/* REVISIT if waiting on "carrier detect", signal. */
+
+	/* if it's already open, start I/O ... and notify the serial
+	 * protocol about open/close status (connect/disconnect).
+	 */
+	if (1) {
+		pr_debug("gserial_connect: start ttyGS%d\n", port->port_num);
+		if (gser->connect)
+			gser->connect(gser);
+	} else {
+		if (gser->disconnect)
+			gser->disconnect(gser);
+	}
 
 	return status;
 
@@ -490,27 +556,7 @@ fail_out:
 	gser->in->driver_data = NULL;
 	return status;
 }
-#include <command.h>
-
-static int do_mycdev(int argc, char *argv[])
-{
-
-	int i,j;
-	for (i = 'a'; i < 'z'; i++) {
-		mycdev->putc(mycdev, i);
-		printf("%c", i);
-		mdelay(500);
-		for (j = 0; j < 100; j++)
-			usb_gadget_poll();
-	}
-	return 0;
-}
-
-BAREBOX_CMD_START(mycdev)
-	.cmd		= do_mycdev,
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_COMPLETE(empty_complete)
-BAREBOX_CMD_END
+EXPORT_SYMBOL_GPL(gserial_connect);
 
 /**
  * gserial_disconnect - notify TTY I/O glue that USB link is inactive
@@ -531,7 +577,10 @@ void gserial_disconnect(struct gserial *gser)
 	if (!port)
 		return;
 
+	cdev = &port->cdev;
+
 	/* tell the TTY glue not to do I/O here any more */
+	console_unregister(cdev);
 
 	/* REVISIT as above: how best to track this? */
 	port->port_line_coding = gser->port_line_coding;
@@ -550,6 +599,5 @@ void gserial_disconnect(struct gserial *gser)
 	gs_free_requests(gser->out, &port->read_pool);
 	gs_free_requests(gser->in, &port->write_pool);
 
-	cdev = &port->cdev;
-	console_unregister(cdev);
+	kfifo_free(port->recv_fifo);
 }
diff --git a/drivers/usb/gadget/u_serial.h b/drivers/usb/gadget/u_serial.h
index 353ca10..72772da 100644
--- a/drivers/usb/gadget/u_serial.h
+++ b/drivers/usb/gadget/u_serial.h
@@ -15,6 +15,13 @@
 #include <usb/composite.h>
 #include <usb/cdc.h>
 
+#define MAX_U_SERIAL_PORTS	4
+
+struct f_serial_opts {
+	struct usb_function_instance func_inst;
+	u8 port_num;
+};
+
 /*
  * One non-multiplexed "serial" I/O port ... there can be several of these
  * on any given USB peripheral device, if it provides enough endpoints.
@@ -35,8 +42,6 @@ struct gserial {
 
 	struct usb_ep			*in;
 	struct usb_ep			*out;
-	struct usb_endpoint_descriptor	*in_desc;
-	struct usb_endpoint_descriptor	*out_desc;
 
 	/* REVISIT avoid this CDC-ACM support harder ... */
 	struct usb_cdc_line_coding port_line_coding;	/* 9600-8-N-1 etc */
@@ -51,16 +56,15 @@ struct gserial {
 struct usb_request *gs_alloc_req(struct usb_ep *ep, unsigned len);
 void gs_free_req(struct usb_ep *, struct usb_request *req);
 
-/* port setup/teardown is handled by gadget driver */
-int gserial_setup(struct usb_gadget *g, unsigned n_ports);
-void gserial_cleanup(void);
+/* management of individual TTY ports */
+int gserial_alloc_line(unsigned char *port_line);
+void gserial_free_line(unsigned char port_line);
 
 /* connect/disconnect is handled by individual functions */
 int gserial_connect(struct gserial *, u8 port_num);
 void gserial_disconnect(struct gserial *);
 
 /* functions are bound to configurations by a config or gadget driver */
-int acm_bind_config(struct usb_configuration *c, u8 port_num);
 int gser_bind_config(struct usb_configuration *c, u8 port_num);
 int obex_bind_config(struct usb_configuration *c, u8 port_num);
 
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
new file mode 100644
index 0000000..fc931aa
--- /dev/null
+++ b/drivers/usb/gadget/udc-core.c
@@ -0,0 +1,357 @@
+/**
+ * udc.c - Core UDC Framework
+ *
+ * Copyright (C) 2010 Texas Instruments
+ * Author: Felipe Balbi <balbi@ti.com>
+ *
+ * This program is free software: you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2  of
+ * the License as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#define VERBOSE_DEBUG
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <usb/ch9.h>
+#include <usb/gadget.h>
+
+/**
+ * struct usb_udc - describes one usb device controller
+ * @driver - the gadget driver pointer. For use by the class code
+ * @dev - the child device to the actual controller
+ * @gadget - the gadget. For use by the class code
+ * @list - for use by the udc class driver
+ *
+ * This represents the internal data structure which is used by the UDC-class
+ * to hold information about udc driver and gadget together.
+ */
+struct usb_udc {
+	struct usb_gadget_driver	*driver;
+	struct usb_gadget		*gadget;
+	struct device_d			dev;
+	struct list_head		list;
+};
+
+static LIST_HEAD(udc_list);
+
+/* ------------------------------------------------------------------------- */
+
+#ifdef	CONFIG_HAS_DMA
+
+int usb_gadget_map_request(struct usb_gadget *gadget,
+		struct usb_request *req, int is_in)
+{
+	if (req->length == 0)
+		return 0;
+
+	if (req->num_sgs) {
+		int     mapped;
+
+		mapped = dma_map_sg(&gadget->dev, req->sg, req->num_sgs,
+				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+		if (mapped == 0) {
+			dev_err(&gadget->dev, "failed to map SGs\n");
+			return -EFAULT;
+		}
+
+		req->num_mapped_sgs = mapped;
+	} else {
+		req->dma = dma_map_single(&gadget->dev, req->buf, req->length,
+				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+
+		if (dma_mapping_error(&gadget->dev, req->dma)) {
+			dev_err(&gadget->dev, "failed to map buffer\n");
+			return -EFAULT;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(usb_gadget_map_request);
+
+void usb_gadget_unmap_request(struct usb_gadget *gadget,
+		struct usb_request *req, int is_in)
+{
+	if (req->length == 0)
+		return;
+
+	if (req->num_mapped_sgs) {
+		dma_unmap_sg(&gadget->dev, req->sg, req->num_mapped_sgs,
+				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+
+		req->num_mapped_sgs = 0;
+	} else {
+		dma_unmap_single(&gadget->dev, req->dma, req->length,
+				is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+	}
+}
+EXPORT_SYMBOL_GPL(usb_gadget_unmap_request);
+
+#endif	/* CONFIG_HAS_DMA */
+
+/* ------------------------------------------------------------------------- */
+
+void usb_gadget_set_state(struct usb_gadget *gadget,
+		enum usb_device_state state)
+{
+	gadget->state = state;
+}
+EXPORT_SYMBOL_GPL(usb_gadget_set_state);
+
+/* ------------------------------------------------------------------------- */
+
+/**
+ * usb_gadget_udc_start - tells usb device controller to start up
+ * @gadget: The gadget we want to get started
+ * @driver: The driver we want to bind to @gadget
+ *
+ * This call is issued by the UDC Class driver when it's about
+ * to register a gadget driver to the device controller, before
+ * calling gadget driver's bind() method.
+ *
+ * It allows the controller to be powered off until strictly
+ * necessary to have it powered on.
+ *
+ * Returns zero on success, else negative errno.
+ */
+static inline int usb_gadget_udc_start(struct usb_gadget *gadget,
+		struct usb_gadget_driver *driver)
+{
+	return gadget->ops->udc_start(gadget, driver);
+}
+
+/**
+ * usb_gadget_udc_stop - tells usb device controller we don't need it anymore
+ * @gadget: The device we want to stop activity
+ * @driver: The driver to unbind from @gadget
+ *
+ * This call is issued by the UDC Class driver after calling
+ * gadget driver's unbind() method.
+ *
+ * The details are implementation specific, but it can go as
+ * far as powering off UDC completely and disable its data
+ * line pullups.
+ */
+static inline void usb_gadget_udc_stop(struct usb_gadget *gadget,
+		struct usb_gadget_driver *driver)
+{
+	gadget->ops->udc_stop(gadget, driver);
+}
+
+/**
+ * usb_add_gadget_udc_release - adds a new gadget to the udc class driver list
+ * @parent: the parent device to this udc. Usually the controller driver's
+ * device.
+ * @gadget: the gadget to be added to the list.
+ * @release: a gadget release function.
+ *
+ * Returns zero on success, negative errno otherwise.
+ */
+int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadget,
+		void (*release)(struct device_d *dev))
+{
+	struct usb_udc		*udc;
+	int			ret = -ENOMEM;
+
+	udc = kzalloc(sizeof(*udc), GFP_KERNEL);
+	if (!udc)
+		goto err1;
+
+	strcpy(gadget->dev.name, "gadget");
+	gadget->dev.id = DEVICE_ID_DYNAMIC;
+	gadget->dev.parent = parent;
+
+	ret = register_device(&gadget->dev);
+	if (ret)
+		goto err2;
+
+	strcpy(udc->dev.name, "udc");
+	udc->dev.id = DEVICE_ID_DYNAMIC;
+
+	udc->gadget = gadget;
+
+	list_add_tail(&udc->list, &udc_list);
+
+	register_device(&udc->dev);
+
+	usb_gadget_set_state(gadget, USB_STATE_NOTATTACHED);
+
+	return 0;
+err2:
+	kfree(udc);
+
+err1:
+	return ret;
+}
+EXPORT_SYMBOL_GPL(usb_add_gadget_udc_release);
+
+/**
+ * usb_add_gadget_udc - adds a new gadget to the udc class driver list
+ * @parent: the parent device to this udc. Usually the controller
+ * driver's device.
+ * @gadget: the gadget to be added to the list
+ *
+ * Returns zero on success, negative errno otherwise.
+ */
+int usb_add_gadget_udc(struct device_d *parent, struct usb_gadget *gadget)
+{
+	return usb_add_gadget_udc_release(parent, gadget, NULL);
+}
+EXPORT_SYMBOL_GPL(usb_add_gadget_udc);
+
+static void usb_gadget_remove_driver(struct usb_udc *udc)
+{
+	dev_dbg(&udc->dev, "unregistering UDC driver [%s]\n",
+			udc->gadget->name);
+
+	usb_gadget_disconnect(udc->gadget);
+	udc->driver->disconnect(udc->gadget);
+	udc->driver->unbind(udc->gadget);
+	usb_gadget_udc_stop(udc->gadget, NULL);
+
+	udc->driver = NULL;
+	udc->dev.driver = NULL;
+	udc->gadget->dev.driver = NULL;
+}
+
+/**
+ * usb_del_gadget_udc - deletes @udc from udc_list
+ * @gadget: the gadget to be removed.
+ *
+ * This, will call usb_gadget_unregister_driver() if
+ * the @udc is still busy.
+ */
+void usb_del_gadget_udc(struct usb_gadget *gadget)
+{
+	struct usb_udc		*udc = NULL;
+
+	list_for_each_entry(udc, &udc_list, list)
+		if (udc->gadget == gadget)
+			goto found;
+
+	dev_err(gadget->dev.parent, "gadget not registered.\n");
+
+	return;
+
+found:
+	dev_vdbg(gadget->dev.parent, "unregistering gadget\n");
+
+	list_del(&udc->list);
+
+	if (udc->driver)
+		usb_gadget_remove_driver(udc);
+
+	unregister_device(&udc->dev);
+	unregister_device(&gadget->dev);
+}
+EXPORT_SYMBOL_GPL(usb_del_gadget_udc);
+
+/* ------------------------------------------------------------------------- */
+
+static int udc_bind_to_driver(struct usb_udc *udc, struct usb_gadget_driver *driver)
+{
+	int ret;
+
+	dev_dbg(&udc->dev, "registering UDC driver [%s]\n",
+			driver->function);
+
+	udc->driver = driver;
+	udc->dev.driver = &driver->driver;
+	udc->gadget->dev.driver = &driver->driver;
+
+	ret = driver->bind(udc->gadget, driver);
+	if (ret)
+		goto err1;
+
+	ret = usb_gadget_udc_start(udc->gadget, driver);
+	if (ret) {
+		driver->unbind(udc->gadget);
+		goto err1;
+	}
+	usb_gadget_connect(udc->gadget);
+
+	return 0;
+err1:
+	if (ret != -EISNAM)
+		dev_err(&udc->dev, "failed to start %s: %d\n",
+			udc->driver->function, ret);
+	udc->driver = NULL;
+	udc->dev.driver = NULL;
+	udc->gadget->dev.driver = NULL;
+	return ret;
+}
+
+int udc_attach_driver(const char *name, struct usb_gadget_driver *driver)
+{
+	struct usb_udc *udc = NULL;
+	int ret = -ENODEV;
+
+	list_for_each_entry(udc, &udc_list, list) {
+		ret = strcmp(name, dev_name(&udc->dev));
+		if (!ret)
+			break;
+	}
+	if (ret) {
+		ret = -ENODEV;
+		goto out;
+	}
+	if (udc->driver) {
+		ret = -EBUSY;
+		goto out;
+	}
+	ret = udc_bind_to_driver(udc, driver);
+out:
+	return ret;
+}
+EXPORT_SYMBOL_GPL(udc_attach_driver);
+
+int usb_gadget_probe_driver(struct usb_gadget_driver *driver)
+{
+	struct usb_udc		*udc = NULL;
+	int			ret;
+
+	if (!driver || !driver->bind || !driver->setup)
+		return -EINVAL;
+
+	list_for_each_entry(udc, &udc_list, list) {
+		/* For now we take the first one */
+		if (!udc->driver)
+			goto found;
+	}
+
+	pr_debug("couldn't find an available UDC\n");
+
+	return -ENODEV;
+found:
+	ret = udc_bind_to_driver(udc, driver);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(usb_gadget_probe_driver);
+
+int usb_gadget_unregister_driver(struct usb_gadget_driver *driver)
+{
+	struct usb_udc		*udc = NULL;
+	int			ret = -ENODEV;
+
+	if (!driver || !driver->unbind)
+		return -EINVAL;
+
+	list_for_each_entry(udc, &udc_list, list)
+		if (udc->driver == driver) {
+			usb_gadget_remove_driver(udc);
+			ret = 0;
+			break;
+		}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(usb_gadget_unregister_driver);
diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index 9322363..ab5d531 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -30,10 +30,11 @@
  *     particular descriptor type.
  */
 
-#ifndef __LINUX_USB_CH9_H
-#define __LINUX_USB_CH9_H
+#ifndef _UAPI__LINUX_USB_CH9_H
+#define _UAPI__LINUX_USB_CH9_H
 
 #include <linux/types.h>	/* __u8 etc */
+#include <asm/byteorder.h>	/* le16_to_cpu */
 
 /*-------------------------------------------------------------------------*/
 
@@ -87,6 +88,8 @@
 #define USB_REQ_GET_INTERFACE		0x0A
 #define USB_REQ_SET_INTERFACE		0x0B
 #define USB_REQ_SYNCH_FRAME		0x0C
+#define USB_REQ_SET_SEL			0x30
+#define USB_REQ_SET_ISOCH_DELAY		0x31
 
 #define USB_REQ_SET_ENCRYPTION		0x0D	/* Wireless USB */
 #define USB_REQ_GET_ENCRYPTION		0x0E
@@ -123,8 +126,44 @@
 #define USB_DEVICE_A_ALT_HNP_SUPPORT	5	/* (otg) other RH port does */
 #define USB_DEVICE_DEBUG_MODE		6	/* (special devices only) */
 
+/*
+ * Test Mode Selectors
+ * See USB 2.0 spec Table 9-7
+ */
+#define	TEST_J		1
+#define	TEST_K		2
+#define	TEST_SE0_NAK	3
+#define	TEST_PACKET	4
+#define	TEST_FORCE_EN	5
+
+/*
+ * New Feature Selectors as added by USB 3.0
+ * See USB 3.0 spec Table 9-7
+ */
+#define USB_DEVICE_U1_ENABLE	48	/* dev may initiate U1 transition */
+#define USB_DEVICE_U2_ENABLE	49	/* dev may initiate U2 transition */
+#define USB_DEVICE_LTM_ENABLE	50	/* dev may send LTM */
+#define USB_INTRF_FUNC_SUSPEND	0	/* function suspend */
+
+#define USB_INTR_FUNC_SUSPEND_OPT_MASK	0xFF00
+/*
+ * Suspend Options, Table 9-8 USB 3.0 spec
+ */
+#define USB_INTRF_FUNC_SUSPEND_LP	(1 << (8 + 0))
+#define USB_INTRF_FUNC_SUSPEND_RW	(1 << (8 + 1))
+
+/*
+ * Interface status, Figure 9-5 USB 3.0 spec
+ */
+#define USB_INTRF_STAT_FUNC_RW_CAP     1
+#define USB_INTRF_STAT_FUNC_RW         2
+
 #define USB_ENDPOINT_HALT		0	/* IN/OUT will STALL */
 
+/* Bit array elements as returned by the USB_REQ_GET_STATUS request. */
+#define USB_DEV_STAT_U1_ENABLED		2	/* transition into U1 state */
+#define USB_DEV_STAT_U2_ENABLED		3	/* transition into U2 state */
+#define USB_DEV_STAT_LTM_ENABLED	4	/* Latency tolerance messages */
 
 /**
  * struct usb_ctrlrequest - SETUP data for a USB device control request
@@ -191,6 +230,8 @@ struct usb_ctrlrequest {
 #define USB_DT_WIRE_ADAPTER		0x21
 #define USB_DT_RPIPE			0x22
 #define USB_DT_CS_RADIO_CONTROL		0x23
+/* From the T10 UAS specification */
+#define USB_DT_PIPE_USAGE		0x24
 /* From the USB 3.0 spec */
 #define	USB_DT_SS_ENDPOINT_COMP		0x30
 
@@ -258,6 +299,8 @@ struct usb_device_descriptor {
 #define USB_CLASS_APP_SPEC		0xfe
 #define USB_CLASS_VENDOR_SPEC		0xff
 
+#define USB_SUBCLASS_VENDOR_SPEC	0xff
+
 /*-------------------------------------------------------------------------*/
 
 /* USB_DT_CONFIG: Configuration descriptor information.
@@ -355,6 +398,22 @@ struct usb_endpoint_descriptor {
 #define USB_ENDPOINT_XFER_INT		3
 #define USB_ENDPOINT_MAX_ADJUSTABLE	0x80
 
+/* The USB 3.0 spec redefines bits 5:4 of bmAttributes as interrupt ep type. */
+#define USB_ENDPOINT_INTRTYPE		0x30
+#define USB_ENDPOINT_INTR_PERIODIC	(0 << 4)
+#define USB_ENDPOINT_INTR_NOTIFICATION	(1 << 4)
+
+#define USB_ENDPOINT_SYNCTYPE		0x0c
+#define USB_ENDPOINT_SYNC_NONE		(0 << 2)
+#define USB_ENDPOINT_SYNC_ASYNC		(1 << 2)
+#define USB_ENDPOINT_SYNC_ADAPTIVE	(2 << 2)
+#define USB_ENDPOINT_SYNC_SYNC		(3 << 2)
+
+#define USB_ENDPOINT_USAGE_MASK		0x30
+#define USB_ENDPOINT_USAGE_DATA		0x00
+#define USB_ENDPOINT_USAGE_FEEDBACK	0x10
+#define USB_ENDPOINT_USAGE_IMPLICIT_FB	0x20	/* Implicit feedback Data endpoint */
+
 /*-------------------------------------------------------------------------*/
 
 /**
@@ -467,7 +526,7 @@ static inline int usb_endpoint_xfer_isoc(
 static inline int usb_endpoint_is_bulk_in(
 				const struct usb_endpoint_descriptor *epd)
 {
-	return (usb_endpoint_xfer_bulk(epd) && usb_endpoint_dir_in(epd));
+	return usb_endpoint_xfer_bulk(epd) && usb_endpoint_dir_in(epd);
 }
 
 /**
@@ -480,7 +539,7 @@ static inline int usb_endpoint_is_bulk_in(
 static inline int usb_endpoint_is_bulk_out(
 				const struct usb_endpoint_descriptor *epd)
 {
-	return (usb_endpoint_xfer_bulk(epd) && usb_endpoint_dir_out(epd));
+	return usb_endpoint_xfer_bulk(epd) && usb_endpoint_dir_out(epd);
 }
 
 /**
@@ -493,7 +552,7 @@ static inline int usb_endpoint_is_bulk_out(
 static inline int usb_endpoint_is_int_in(
 				const struct usb_endpoint_descriptor *epd)
 {
-	return (usb_endpoint_xfer_int(epd) && usb_endpoint_dir_in(epd));
+	return usb_endpoint_xfer_int(epd) && usb_endpoint_dir_in(epd);
 }
 
 /**
@@ -506,7 +565,7 @@ static inline int usb_endpoint_is_int_in(
 static inline int usb_endpoint_is_int_out(
 				const struct usb_endpoint_descriptor *epd)
 {
-	return (usb_endpoint_xfer_int(epd) && usb_endpoint_dir_out(epd));
+	return usb_endpoint_xfer_int(epd) && usb_endpoint_dir_out(epd);
 }
 
 /**
@@ -519,7 +578,7 @@ static inline int usb_endpoint_is_int_out(
 static inline int usb_endpoint_is_isoc_in(
 				const struct usb_endpoint_descriptor *epd)
 {
-	return (usb_endpoint_xfer_isoc(epd) && usb_endpoint_dir_in(epd));
+	return usb_endpoint_xfer_isoc(epd) && usb_endpoint_dir_in(epd);
 }
 
 /**
@@ -532,7 +591,24 @@ static inline int usb_endpoint_is_isoc_in(
 static inline int usb_endpoint_is_isoc_out(
 				const struct usb_endpoint_descriptor *epd)
 {
-	return (usb_endpoint_xfer_isoc(epd) && usb_endpoint_dir_out(epd));
+	return usb_endpoint_xfer_isoc(epd) && usb_endpoint_dir_out(epd);
+}
+
+/**
+ * usb_endpoint_maxp - get endpoint's max packet size
+ * @epd: endpoint to be checked
+ *
+ * Returns @epd's max packet
+ */
+static inline int usb_endpoint_maxp(const struct usb_endpoint_descriptor *epd)
+{
+	return __le16_to_cpu(epd->wMaxPacketSize);
+}
+
+static inline int usb_endpoint_interrupt_type(
+		const struct usb_endpoint_descriptor *epd)
+{
+	return epd->bmAttributes & USB_ENDPOINT_INTRTYPE;
 }
 
 /*-------------------------------------------------------------------------*/
@@ -544,11 +620,33 @@ struct usb_ss_ep_comp_descriptor {
 
 	__u8  bMaxBurst;
 	__u8  bmAttributes;
-	__u16 wBytesPerInterval;
+	__le16 wBytesPerInterval;
 } __attribute__ ((packed));
 
 #define USB_DT_SS_EP_COMP_SIZE		6
 
+/* Bits 4:0 of bmAttributes if this is a bulk endpoint */
+static inline int
+usb_ss_max_streams(const struct usb_ss_ep_comp_descriptor *comp)
+{
+	int		max_streams;
+
+	if (!comp)
+		return 0;
+
+	max_streams = comp->bmAttributes & 0x1f;
+
+	if (!max_streams)
+		return 0;
+
+	max_streams = 1 << max_streams;
+
+	return max_streams;
+}
+
+/* Bits 1:0 of bmAttributes if this is an isoc endpoint */
+#define USB_SS_MULT(p)			(1 + ((p) & 0x3))
+
 /*-------------------------------------------------------------------------*/
 
 /* USB_DT_DEVICE_QUALIFIER: Device Qualifier descriptor */
@@ -663,6 +761,7 @@ struct usb_bos_descriptor {
 	__u8  bNumDeviceCaps;
 } __attribute__((packed));
 
+#define USB_DT_BOS_SIZE		5
 /*-------------------------------------------------------------------------*/
 
 /* USB_DT_DEVICE_CAPABILITY:  grouped with BOS */
@@ -700,16 +799,61 @@ struct usb_wireless_cap_descriptor {	/* Ultra Wide Band */
 	__u8  bReserved;
 } __attribute__((packed));
 
+/* USB 2.0 Extension descriptor */
 #define	USB_CAP_TYPE_EXT		2
 
 struct usb_ext_cap_descriptor {		/* Link Power Management */
 	__u8  bLength;
 	__u8  bDescriptorType;
 	__u8  bDevCapabilityType;
-	__u8  bmAttributes;
+	__le32 bmAttributes;
 #define USB_LPM_SUPPORT			(1 << 1)	/* supports LPM */
+#define USB_BESL_SUPPORT		(1 << 2)	/* supports BESL */
+#define USB_BESL_BASELINE_VALID		(1 << 3)	/* Baseline BESL valid*/
+#define USB_BESL_DEEP_VALID		(1 << 4)	/* Deep BESL valid */
+#define USB_GET_BESL_BASELINE(p)	(((p) & (0xf << 8)) >> 8)
+#define USB_GET_BESL_DEEP(p)		(((p) & (0xf << 12)) >> 12)
+} __attribute__((packed));
+
+#define USB_DT_USB_EXT_CAP_SIZE	7
+
+/*
+ * SuperSpeed USB Capability descriptor: Defines the set of SuperSpeed USB
+ * specific device level capabilities
+ */
+#define		USB_SS_CAP_TYPE		3
+struct usb_ss_cap_descriptor {		/* Link Power Management */
+	__u8  bLength;
+	__u8  bDescriptorType;
+	__u8  bDevCapabilityType;
+	__u8  bmAttributes;
+#define USB_LTM_SUPPORT			(1 << 1) /* supports LTM */
+	__le16 wSpeedSupported;
+#define USB_LOW_SPEED_OPERATION		(1)	 /* Low speed operation */
+#define USB_FULL_SPEED_OPERATION	(1 << 1) /* Full speed operation */
+#define USB_HIGH_SPEED_OPERATION	(1 << 2) /* High speed operation */
+#define USB_5GBPS_OPERATION		(1 << 3) /* Operation at 5Gbps */
+	__u8  bFunctionalitySupport;
+	__u8  bU1devExitLat;
+	__le16 bU2DevExitLat;
+} __attribute__((packed));
+
+#define USB_DT_USB_SS_CAP_SIZE	10
+
+/*
+ * Container ID Capability descriptor: Defines the instance unique ID used to
+ * identify the instance across all operating modes
+ */
+#define	CONTAINER_ID_TYPE	4
+struct usb_ss_container_id_descriptor {
+	__u8  bLength;
+	__u8  bDescriptorType;
+	__u8  bDevCapabilityType;
+	__u8  bReserved;
+	__u8  ContainerID[16]; /* 128-bit number */
 } __attribute__((packed));
 
+#define USB_DT_USB_SS_CONTN_ID_SIZE	20
 /*-------------------------------------------------------------------------*/
 
 /* USB_DT_WIRELESS_ENDPOINT_COMP:  companion descriptor associated with
@@ -767,10 +911,11 @@ enum usb_device_speed {
 	USB_SPEED_UNKNOWN = 0,			/* enumerating */
 	USB_SPEED_LOW, USB_SPEED_FULL,		/* usb 1.1 */
 	USB_SPEED_HIGH,				/* usb 2.0 */
-	USB_SPEED_VARIABLE,			/* wireless (usb 2.5) */
+	USB_SPEED_WIRELESS,			/* wireless (usb 2.5) */
 	USB_SPEED_SUPER,			/* usb 3.0 */
 };
 
+
 enum usb_device_state {
 	/* NOTATTACHED isn't in the USB spec, and this state acts
 	 * the same as ATTACHED ... but it's clearer this way.
@@ -796,4 +941,76 @@ enum usb_device_state {
 	 */
 };
 
-#endif /* __LINUX_USB_CH9_H */
+enum usb3_link_state {
+	USB3_LPM_U0 = 0,
+	USB3_LPM_U1,
+	USB3_LPM_U2,
+	USB3_LPM_U3
+};
+
+/*
+ * A U1 timeout of 0x0 means the parent hub will reject any transitions to U1.
+ * 0xff means the parent hub will accept transitions to U1, but will not
+ * initiate a transition.
+ *
+ * A U1 timeout of 0x1 to 0x7F also causes the hub to initiate a transition to
+ * U1 after that many microseconds.  Timeouts of 0x80 to 0xFE are reserved
+ * values.
+ *
+ * A U2 timeout of 0x0 means the parent hub will reject any transitions to U2.
+ * 0xff means the parent hub will accept transitions to U2, but will not
+ * initiate a transition.
+ *
+ * A U2 timeout of 0x1 to 0xFE also causes the hub to initiate a transition to
+ * U2 after N*256 microseconds.  Therefore a U2 timeout value of 0x1 means a U2
+ * idle timer of 256 microseconds, 0x2 means 512 microseconds, 0xFE means
+ * 65.024ms.
+ */
+#define USB3_LPM_DISABLED		0x0
+#define USB3_LPM_U1_MAX_TIMEOUT		0x7F
+#define USB3_LPM_U2_MAX_TIMEOUT		0xFE
+#define USB3_LPM_DEVICE_INITIATED	0xFF
+
+struct usb_set_sel_req {
+	__u8	u1_sel;
+	__u8	u1_pel;
+	__le16	u2_sel;
+	__le16	u2_pel;
+} __attribute__ ((packed));
+
+/*
+ * The Set System Exit Latency control transfer provides one byte each for
+ * U1 SEL and U1 PEL, so the max exit latency is 0xFF.  U2 SEL and U2 PEL each
+ * are two bytes long.
+ */
+#define USB3_LPM_MAX_U1_SEL_PEL		0xFF
+#define USB3_LPM_MAX_U2_SEL_PEL		0xFFFF
+
+/*-------------------------------------------------------------------------*/
+
+/*
+ * As per USB compliance update, a device that is actively drawing
+ * more than 100mA from USB must report itself as bus-powered in
+ * the GetStatus(DEVICE) call.
+ * http://compliance.usb.org/index.asp?UpdateFile=Electrical&Format=Standard#34
+ */
+#define USB_SELF_POWER_VBUS_MAX_DRAW		100
+
+/**
+ * usb_speed_string() - Returns human readable-name of the speed.
+ * @speed: The speed to return human-readable name for.  If it's not
+ *   any of the speeds defined in usb_device_speed enum, string for
+ *   USB_SPEED_UNKNOWN will be returned.
+ */
+const char *usb_speed_string(enum usb_device_speed speed);
+
+
+/**
+ * usb_state_string - Returns human readable name for the state.
+ * @state: The state to return a human-readable name for. If it's not
+ *      any of the states devices in usb_device_state_string enum,
+ *      the string UNKNOWN will be returned.
+ */
+const char *usb_state_string(enum usb_device_state state);
+
+#endif /* _UAPI__LINUX_USB_CH9_H */
diff --git a/include/usb/composite.h b/include/usb/composite.h
index 379927a..5b92c92 100644
--- a/include/usb/composite.h
+++ b/include/usb/composite.h
@@ -12,6 +12,10 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  */
 
 #ifndef	__LINUX_USB_COMPOSITE_H
@@ -29,11 +33,25 @@
  * might alternatively be packaged in individual configurations, but in
  * the composite model the host can use both functions at the same time.
  */
-
+#include <init.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
+#include <linux/log2.h>
+#include <linux/stringify.h>
+
+/*
+ * USB function drivers should return USB_GADGET_DELAYED_STATUS if they
+ * wish to delay the data/status stages of the control transfer till they
+ * are ready. The control transfer will then be kept from completing till
+ * all the function drivers that requested for USB_GADGET_DELAYED_STAUS
+ * invoke usb_composite_setup_continue().
+ */
+#define USB_GADGET_DELAYED_STATUS       0x7fff	/* Impossibly large value */
 
+/* big enough to hold our biggest descriptor */
+#define USB_COMP_EP0_BUFSIZ	1024
 
+#define USB_MS_TO_HS_INTERVAL(x)	(ilog2((x * 1000 / 125)) + 1)
 struct usb_configuration;
 
 /**
@@ -41,12 +59,16 @@ struct usb_configuration;
  * @name: For diagnostics, identifies the function.
  * @strings: tables of strings, keyed by identifiers assigned during bind()
  *	and by language IDs provided in control requests
- * @descriptors: Table of full (or low) speed descriptors, using interface and
+ * @fs_descriptors: Table of full (or low) speed descriptors, using interface and
  *	string identifiers assigned during @bind().  If this pointer is null,
  *	the function will not be available at full speed (or at low speed).
  * @hs_descriptors: Table of high speed descriptors, using interface and
  *	string identifiers assigned during @bind().  If this pointer is null,
  *	the function will not be available at high speed.
+ * @ss_descriptors: Table of super speed descriptors, using interface and
+ *	string identifiers assigned during @bind(). If this
+ *	pointer is null after initiation, the function will not
+ *	be available at super speed.
  * @config: assigned when @usb_add_function() is called; this is the
  *	configuration with which this function is associated.
  * @bind: Before the gadget can register, all of its functions bind() to the
@@ -54,6 +76,8 @@ struct usb_configuration;
  *	in interface or class descriptors; endpoints; I/O buffers; and so on.
  * @unbind: Reverses @bind; called as a side effect of unregistering the
  *	driver which added this function.
+ * @free_func: free the struct usb_function.
+ * @mod: (internal) points to the module that created this structure.
  * @set_alt: (REQUIRED) Reconfigures altsettings; function drivers may
  *	initialize usb_ep.driver data at this time (when it is used).
  *	Note that setting an interface to its current altsetting resets
@@ -65,6 +89,10 @@ struct usb_configuration;
  * @setup: Used for interface-specific control requests.
  * @suspend: Notifies functions when the host stops sending USB traffic.
  * @resume: Notifies functions when the host restarts USB traffic.
+ * @get_status: Returns function status as a reply to
+ *	GetStatus() request when the recipient is Interface.
+ * @func_suspend: callback to be called when
+ *	SetFeature(FUNCTION_SUSPEND) is reseived
  *
  * A single USB function uses one or more interfaces, and should in most
  * cases support operation at both full and high speeds.  Each function is
@@ -89,11 +117,13 @@ struct usb_configuration;
  * two or more distinct instances within the same configuration, providing
  * several independent logical data links to a USB host.
  */
+
 struct usb_function {
 	const char			*name;
 	struct usb_gadget_strings	**strings;
-	struct usb_descriptor_header	**descriptors;
+	struct usb_descriptor_header	**fs_descriptors;
 	struct usb_descriptor_header	**hs_descriptors;
+	struct usb_descriptor_header	**ss_descriptors;
 
 	struct usb_configuration	*config;
 
@@ -108,6 +138,8 @@ struct usb_function {
 					struct usb_function *);
 	void			(*unbind)(struct usb_configuration *,
 					struct usb_function *);
+	void			(*free_func)(struct usb_function *f);
+	struct module		*mod;
 
 	/* runtime state management */
 	int			(*set_alt)(struct usb_function *,
@@ -120,9 +152,15 @@ struct usb_function {
 	void			(*suspend)(struct usb_function *);
 	void			(*resume)(struct usb_function *);
 
+	/* USB 3.0 additions */
+	int			(*get_status)(struct usb_function *);
+	int			(*func_suspend)(struct usb_function *,
+						u8 suspend_opt);
 	/* private: */
 	/* internals */
 	struct list_head		list;
+	DECLARE_BITMAP(endpoints, 32);
+	const struct usb_function_instance *fi;
 };
 
 int usb_add_function(struct usb_configuration *, struct usb_function *);
@@ -132,20 +170,8 @@ int usb_function_activate(struct usb_function *);
 
 int usb_interface_id(struct usb_configuration *, struct usb_function *);
 
-/**
- * ep_choose - select descriptor endpoint at current device speed
- * @g: gadget, connected and running at some speed
- * @hs: descriptor to use for high speed operation
- * @fs: descriptor to use for full or low speed operation
- */
-static inline struct usb_endpoint_descriptor *
-ep_choose(struct usb_gadget *g, struct usb_endpoint_descriptor *hs,
-		struct usb_endpoint_descriptor *fs)
-{
-	if (gadget_is_dualspeed(g) && g->speed == USB_SPEED_HIGH)
-		return hs;
-	return fs;
-}
+int config_ep_by_speed(struct usb_gadget *g, struct usb_function *f,
+			struct usb_ep *_ep);
 
 #define	MAX_CONFIG_INTERFACES		16	/* arbitrary; max 255 */
 
@@ -156,8 +182,6 @@ ep_choose(struct usb_gadget *g, struct usb_endpoint_descriptor *hs,
  *	and by language IDs provided in control requests.
  * @descriptors: Table of descriptors preceding all function descriptors.
  *	Examples include OTG and vendor-specific descriptors.
- * @bind: Called from @usb_add_config() to allocate resources unique to this
- *	configuration and to call @usb_add_function() for each function used.
  * @unbind: Reverses @bind; called as a side effect of unregistering the
  *	driver which added this configuration.
  * @setup: Used to delegate control requests that aren't handled by standard
@@ -165,7 +189,8 @@ ep_choose(struct usb_gadget *g, struct usb_endpoint_descriptor *hs,
  * @bConfigurationValue: Copied into configuration descriptor.
  * @iConfiguration: Copied into configuration descriptor.
  * @bmAttributes: Copied into configuration descriptor.
- * @bMaxPower: Copied into configuration descriptor.
+ * @MaxPower: Power consumtion in mA. Used to compute bMaxPower in the
+ *	configuration descriptor after considering the bus speed.
  * @cdev: assigned by @usb_add_config() before calling @bind(); this is
  *	the device associated with this configuration.
  *
@@ -185,7 +210,7 @@ ep_choose(struct usb_gadget *g, struct usb_endpoint_descriptor *hs,
  * @bind() method is then used to initialize all the functions and then
  * call @usb_add_function() for them.
  *
- * Those functions would normally be independant of each other, but that's
+ * Those functions would normally be independent of each other, but that's
  * not mandatory.  CDC WMC devices are an example where functions often
  * depend on other functions, with some functions subsidiary to others.
  * Such interdependency may be managed in any way, so long as all of the
@@ -202,8 +227,7 @@ struct usb_configuration {
 	 * we can't restructure things to avoid mismatching...
 	 */
 
-	/* configuration management:  bind/unbind */
-	int			(*bind)(struct usb_configuration *);
+	/* configuration management: unbind/setup */
 	void			(*unbind)(struct usb_configuration *);
 	int			(*setup)(struct usb_configuration *,
 					const struct usb_ctrlrequest *);
@@ -212,7 +236,7 @@ struct usb_configuration {
 	u8			bConfigurationValue;
 	u8			iConfiguration;
 	u8			bmAttributes;
-	u8			bMaxPower;
+	u16			MaxPower;
 
 	struct usb_composite_dev	*cdev;
 
@@ -221,34 +245,54 @@ struct usb_configuration {
 	struct list_head	list;
 	struct list_head	functions;
 	u8			next_interface_id;
+	unsigned		superspeed:1;
 	unsigned		highspeed:1;
 	unsigned		fullspeed:1;
 	struct usb_function	*interface[MAX_CONFIG_INTERFACES];
 };
 
 int usb_add_config(struct usb_composite_dev *,
+		struct usb_configuration *,
+		int (*)(struct usb_configuration *));
+
+void usb_remove_config(struct usb_composite_dev *,
 		struct usb_configuration *);
 
+/* predefined index for usb_composite_driver */
+enum {
+	USB_GADGET_MANUFACTURER_IDX	= 0,
+	USB_GADGET_PRODUCT_IDX,
+	USB_GADGET_SERIAL_IDX,
+	USB_GADGET_FIRST_AVAIL_IDX,
+};
+
 /**
  * struct usb_composite_driver - groups configurations into a gadget
  * @name: For diagnostics, identifies the driver.
  * @dev: Template descriptor for the device, including default device
  *	identifiers.
- * @strings: tables of strings, keyed by identifiers assigned during bind()
- *	and language IDs provided in control requests
+ * @strings: tables of strings, keyed by identifiers assigned during @bind
+ *	and language IDs provided in control requests. Note: The first entries
+ *	are predefined. The first entry that may be used is
+ *	USB_GADGET_FIRST_AVAIL_IDX
+ * @max_speed: Highest speed the driver supports.
+ * @needs_serial: set to 1 if the gadget needs userspace to provide
+ * 	a serial number.  If one is not provided, warning will be printed.
  * @bind: (REQUIRED) Used to allocate resources that are shared across the
  *	whole device, such as string IDs, and add its configurations using
- *	@usb_add_config().  This may fail by returning a negative errno
+ *	@usb_add_config(). This may fail by returning a negative errno
  *	value; it should return zero on successful initialization.
- * @unbind: Reverses @bind(); called as a side effect of unregistering
+ * @unbind: Reverses @bind; called as a side effect of unregistering
  *	this driver.
+ * @disconnect: optional driver disconnect method
  * @suspend: Notifies when the host stops sending USB traffic,
  *	after function notifications
  * @resume: Notifies configuration when the host restarts USB traffic,
  *	before function notifications
+ * @gadget_driver: Gadget driver controlling this driver
  *
  * Devices default to reporting self powered operation.  Devices which rely
- * on bus powered operation should report this in their @bind() method.
+ * on bus powered operation should report this in their @bind method.
  *
  * Before returning from @bind, various fields in the template descriptor
  * may be overridden.  These include the idVendor/idProduct/bcdDevice values
@@ -262,29 +306,37 @@ struct usb_composite_driver {
 	const char				*name;
 	const struct usb_device_descriptor	*dev;
 	struct usb_gadget_strings		**strings;
+	enum usb_device_speed			max_speed;
+	unsigned		needs_serial:1;
 
-	/* REVISIT:  bind() functions can be marked __init, which
-	 * makes trouble for section mismatch analysis.  See if
-	 * we can't restructure things to avoid mismatching...
-	 */
-
-	int			(*bind)(struct usb_composite_dev *);
+	int			(*bind)(struct usb_composite_dev *cdev);
 	int			(*unbind)(struct usb_composite_dev *);
 
+	void			(*disconnect)(struct usb_composite_dev *);
+
 	/* global suspend hooks */
 	void			(*suspend)(struct usb_composite_dev *);
 	void			(*resume)(struct usb_composite_dev *);
+	struct usb_gadget_driver		gadget_driver;
 };
 
-extern int usb_composite_register(struct usb_composite_driver *);
-extern void usb_composite_unregister(struct usb_composite_driver *);
+extern int usb_composite_probe(struct usb_composite_driver *driver);
+extern void usb_composite_unregister(struct usb_composite_driver *driver);
+extern void usb_composite_setup_continue(struct usb_composite_dev *cdev);
+extern int composite_dev_prepare(struct usb_composite_driver *composite,
+		struct usb_composite_dev *cdev);
+void composite_dev_cleanup(struct usb_composite_dev *cdev);
 
+static inline struct usb_composite_driver *to_cdriver(
+		struct usb_gadget_driver *gdrv)
+{
+	return container_of(gdrv, struct usb_composite_driver, gadget_driver);
+}
 
 /**
  * struct usb_composite_device - represents one composite usb gadget
  * @gadget: read-only, abstracts the gadget's usb peripheral controller
  * @req: used for control responses; buffer is pre-allocated
- * @bufsiz: size of buffer pre-allocated in @req
  * @config: the currently active configuration
  *
  * One of these devices is allocated and initialized before the
@@ -315,30 +367,122 @@ extern void usb_composite_unregister(struct usb_composite_driver *);
 struct usb_composite_dev {
 	struct usb_gadget		*gadget;
 	struct usb_request		*req;
-	unsigned			bufsiz;
 
 	struct usb_configuration	*config;
 
 	/* private: */
 	/* internals */
+	unsigned int			suspended:1;
 	struct usb_device_descriptor	desc;
 	struct list_head		configs;
+	struct list_head		gstrings;
 	struct usb_composite_driver	*driver;
 	u8				next_string_id;
+	char				*def_manufacturer;
 
 	/* the gadget driver won't enable the data pullup
 	 * while the deactivation count is nonzero.
 	 */
 	unsigned			deactivations;
+
+	/* the composite driver won't complete the control transfer's
+	 * data/status stages till delayed_status is zero.
+	 */
+	int				delayed_status;
+
+	/* protects deactivations and delayed_status counts*/
+	spinlock_t			lock;
 };
 
 extern int usb_string_id(struct usb_composite_dev *c);
+extern int usb_string_ids_tab(struct usb_composite_dev *c,
+			      struct usb_string *str);
+extern struct usb_string *usb_gstrings_attach(struct usb_composite_dev *cdev,
+		struct usb_gadget_strings **sp, unsigned n_strings);
+
+extern int usb_string_ids_n(struct usb_composite_dev *c, unsigned n);
+
+extern void composite_disconnect(struct usb_gadget *gadget);
+extern int composite_setup(struct usb_gadget *gadget,
+		const struct usb_ctrlrequest *ctrl);
+
+/*
+ * Some systems will need runtime overrides for the  product identifiers
+ * published in the device descriptor, either numbers or strings or both.
+ * String parameters are in UTF-8 (superset of ASCII's 7 bit characters).
+ */
+struct usb_composite_overwrite {
+	u16	idVendor;
+	u16	idProduct;
+	u16	bcdDevice;
+	char	*serial_number;
+	char	*manufacturer;
+	char	*product;
+};
+
+void usb_composite_overwrite_options(struct usb_composite_dev *cdev,
+		struct usb_composite_overwrite *covr);
+
+static inline u16 get_default_bcdDevice(void)
+{
+	/* The Kernel version the current USB code is based on */
+	return 0x0316;
+}
+
+struct usb_function_driver {
+	const char *name;
+	struct module *mod;
+	struct list_head list;
+	struct usb_function_instance *(*alloc_inst)(void);
+	struct usb_function *(*alloc_func)(struct usb_function_instance *inst);
+};
+
+struct usb_function_instance {
+	struct list_head cfs_list;
+	struct usb_function_driver *fd;
+	int (*set_inst_name)(struct usb_function_instance *inst,
+			      const char *name);
+	void (*free_func_inst)(struct usb_function_instance *inst);
+};
+
+void usb_function_unregister(struct usb_function_driver *f);
+int usb_function_register(struct usb_function_driver *newf);
+void usb_put_function_instance(struct usb_function_instance *fi);
+void usb_put_function(struct usb_function *f);
+struct usb_function_instance *usb_get_function_instance(const char *name);
+struct usb_function *usb_get_function(struct usb_function_instance *fi);
+
+struct usb_configuration *usb_get_config(struct usb_composite_dev *cdev,
+		int val);
+int usb_add_config_only(struct usb_composite_dev *cdev,
+		struct usb_configuration *config);
+void usb_remove_function(struct usb_configuration *c, struct usb_function *f);
+
+#define DECLARE_USB_FUNCTION(_name, _inst_alloc, _func_alloc)		\
+	static struct usb_function_driver _name ## usb_func = {		\
+		.name = __stringify(_name),				\
+		.alloc_inst = _inst_alloc,				\
+		.alloc_func = _func_alloc,				\
+	};
+
+#define DECLARE_USB_FUNCTION_INIT(_name, _inst_alloc, _func_alloc)	\
+	DECLARE_USB_FUNCTION(_name, _inst_alloc, _func_alloc)		\
+	static int _name ## mod_init(void)				\
+	{								\
+		return usb_function_register(&_name ## usb_func);	\
+	}								\
+	device_initcall(_name ## mod_init)
 
 /* messaging utils */
-#define DBG(d, fmt, args...)
-#define VDBG(d, fmt, args...)
-#define ERROR(d, fmt, args...)
-#define WARNING(d, fmt, args...)
-#define INFO(d, fmt, args...)
+#define DBG(d, fmt, args...) \
+	dev_dbg(&(d)->gadget->dev , fmt , ## args)
+#define VDBG(d, fmt, args...) \
+	dev_vdbg(&(d)->gadget->dev , fmt , ## args)
+#define ERROR(d, fmt, args...) \
+	dev_err(&(d)->gadget->dev , fmt , ## args)
+#define WARNING(d, fmt, args...) \
+	dev_warn(&(d)->gadget->dev , fmt , ## args)
+#define INFO(d, fmt, args...) \
+	dev_info(&(d)->gadget->dev , fmt , ## args)
 
 #endif	/* __LINUX_USB_COMPOSITE_H */
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 798b51b..8fd8b01 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -15,10 +15,10 @@
 #ifndef __LINUX_USB_GADGET_H
 #define __LINUX_USB_GADGET_H
 
-#include <usb/ch9.h>
 #include <malloc.h>
-#include <errno.h>
+#include <driver.h>
 #include <linux/list.h>
+#include <usb/ch9.h>
 
 struct usb_ep;
 
@@ -29,7 +29,11 @@ struct usb_ep;
  * @dma: DMA address corresponding to 'buf'.  If you don't set this
  *	field, and the usb controller needs one, it is responsible
  *	for mapping and unmapping the buffer.
+ * @sg: a scatterlist for SG-capable controllers.
+ * @num_sgs: number of SG entries
+ * @num_mapped_sgs: number of SG entries mapped to DMA (internal)
  * @length: Length of that data
+ * @stream_id: The stream id, when USB3.0 bulk streams are being used
  * @no_interrupt: If true, hints that no completion irq is needed.
  *	Helpful sometimes with deep request queues that are handled
  *	directly by DMA controllers.
@@ -75,7 +79,7 @@ struct usb_ep;
  * Bulk endpoints can use any size buffers, and can also be used for interrupt
  * transfers. interrupt-only endpoints can be much less functional.
  *
- * NOTE:  this is analagous to 'struct urb' on the host side, except that
+ * NOTE:  this is analogous to 'struct urb' on the host side, except that
  * it's thinner and promotes more pre-allocation.
  */
 
@@ -84,6 +88,11 @@ struct usb_request {
 	unsigned		length;
 	dma_addr_t		dma;
 
+	struct scatterlist	*sg;
+	unsigned		num_sgs;
+	unsigned		num_mapped_sgs;
+
+	unsigned		stream_id:16;
 	unsigned		no_interrupt:1;
 	unsigned		zero:1;
 	unsigned		short_not_ok:1;
@@ -132,8 +141,20 @@ struct usb_ep_ops {
  * @maxpacket:The maximum packet size used on this endpoint.  The initial
  *	value can sometimes be reduced (hardware allowing), according to
  *      the endpoint descriptor used to configure the endpoint.
- * @driver_data:for use by the gadget driver.  all other fields are
- *	read-only to gadget drivers.
+ * @maxpacket_limit:The maximum packet size value which can be handled by this
+ *	endpoint. It's set once by UDC driver when endpoint is initialized, and
+ *	should not be changed. Should not be confused with maxpacket.
+ * @max_streams: The maximum number of streams supported
+ *	by this EP (0 - 16, actual number is 2^n)
+ * @mult: multiplier, 'mult' value for SS Isoc EPs
+ * @maxburst: the maximum number of bursts supported by this EP (for usb3)
+ * @driver_data:for use by the gadget driver.
+ * @address: used to identify the endpoint when finding descriptor that
+ *	matches connection speed
+ * @desc: endpoint descriptor.  This pointer is set before the endpoint is
+ *	enabled and remains valid until the endpoint is disabled.
+ * @comp_desc: In case of SuperSpeed support, this is the endpoint companion
+ *	descriptor that is used to configure the endpoint
  *
  * the bus controller driver lists all the general purpose endpoints in
  * gadget->ep_list.  the control endpoint (gadget->ep0) is not in that list,
@@ -146,19 +167,38 @@ struct usb_ep {
 	const struct usb_ep_ops	*ops;
 	struct list_head	ep_list;
 	unsigned		maxpacket:16;
+	unsigned		maxpacket_limit:16;
+	unsigned		max_streams:16;
+	unsigned		mult:2;
+	unsigned		maxburst:5;
+	u8			address;
+	const struct usb_endpoint_descriptor	*desc;
+	const struct usb_ss_ep_comp_descriptor	*comp_desc;
 };
 
 /*-------------------------------------------------------------------------*/
 
 /**
+ * usb_ep_set_maxpacket_limit - set maximum packet size limit for endpoint
+ * @ep:the endpoint being configured
+ * @maxpacket_limit:value of maximum packet size limit
+ *
+ * This function shoud be used only in UDC drivers to initialize endpoint
+ * (usually in probe function).
+ */
+static inline void usb_ep_set_maxpacket_limit(struct usb_ep *ep,
+					      unsigned maxpacket_limit)
+{
+	ep->maxpacket_limit = maxpacket_limit;
+	ep->maxpacket = maxpacket_limit;
+}
+
+/**
  * usb_ep_enable - configure endpoint, making it usable
  * @ep:the endpoint being configured.  may not be the endpoint named "ep0".
  *	drivers discover endpoints through the ep_list of a usb_gadget.
- * @desc:descriptor for desired behavior.  caller guarantees this pointer
- *	remains valid until the endpoint is disabled; the data byte order
- *	is little-endian (usb-standard).
  *
- * when configurations are set, or when interface settings change, the driver
+ * When configurations are set, or when interface settings change, the driver
  * will enable or disable the relevant endpoints.  while it is enabled, an
  * endpoint may be used for i/o until the driver receives a disconnect() from
  * the host or until the endpoint is disabled.
@@ -173,10 +213,9 @@ struct usb_ep {
  *
  * returns zero, or a negative error code.
  */
-static inline int usb_ep_enable(struct usb_ep *ep,
-				const struct usb_endpoint_descriptor *desc)
+static inline int usb_ep_enable(struct usb_ep *ep)
 {
-	return ep->ops->enable(ep, desc);
+	return ep->ops->enable(ep, ep->desc);
 }
 
 /**
@@ -199,6 +238,7 @@ static inline int usb_ep_disable(struct usb_ep *ep)
 /**
  * usb_ep_alloc_request - allocate a request object to use with this endpoint
  * @ep:the endpoint to be used with with the request
+ * @gfp_flags:GFP_* flags to use
  *
  * Request objects must be allocated with this call, since they normally
  * need controller-specific setup and may even need endpoint-specific
@@ -233,6 +273,8 @@ static inline void usb_ep_free_request(struct usb_ep *ep,
  * usb_ep_queue - queues (submits) an I/O request to an endpoint.
  * @ep:the endpoint associated with the request
  * @req:the request being submitted
+ * @gfp_flags: GFP_* flags to use in case the lower level driver couldn't
+ *	pre-allocate all necessary memory with the request.
  *
  * This tells the device controller to perform the specified request through
  * that endpoint (reading or writing a buffer).  When the request completes,
@@ -266,7 +308,7 @@ static inline void usb_ep_free_request(struct usb_ep *ep,
  *
  * Control endpoints ... after getting a setup() callback, the driver queues
  * one response (even if it would be zero length).  That enables the
- * status ack, after transfering data as specified in the response.  Setup
+ * status ack, after transferring data as specified in the response.  Setup
  * functions may return negative error codes to generate protocol stalls.
  * (Note that some USB device controllers disallow protocol stall responses
  * in some cases.)  When control responses are deferred (the response is
@@ -413,7 +455,16 @@ static inline void usb_ep_fifo_flush(struct usb_ep *ep)
 
 /*-------------------------------------------------------------------------*/
 
+struct usb_dcd_config_params {
+	__u8  bU1devExitLat;	/* U1 Device exit Latency */
+#define USB_DEFAULT_U1_DEV_EXIT_LAT	0x01	/* Less then 1 microsec */
+	__le16 bU2DevExitLat;	/* U2 Device exit Latency */
+#define USB_DEFAULT_U2_DEV_EXIT_LAT	0x1F4	/* Less then 500 microsec */
+};
+
+
 struct usb_gadget;
+struct usb_gadget_driver;
 
 /* the rest of the api to the controller hardware: device operations,
  * which don't involve endpoints (or i/o).
@@ -427,17 +478,30 @@ struct usb_gadget_ops {
 	int	(*pullup) (struct usb_gadget *, int is_on);
 	int	(*ioctl)(struct usb_gadget *,
 				unsigned code, unsigned long param);
+	void	(*get_config_params)(struct usb_dcd_config_params *);
+	int	(*udc_start)(struct usb_gadget *,
+			struct usb_gadget_driver *);
+	int	(*udc_stop)(struct usb_gadget *,
+			struct usb_gadget_driver *);
 };
 
 /**
  * struct usb_gadget - represents a usb slave device
+ * @work: (internal use) Workqueue to be used for sysfs_notify()
  * @ops: Function pointers used to access hardware-specific operations.
  * @ep0: Endpoint zero, used when reading or writing responses to
  *	driver setup() requests
  * @ep_list: List of other endpoints supported by the device.
  * @speed: Speed of current connection to USB host.
- * @is_dualspeed: True if the controller supports both high and full speed
- *	operation.  If it does, the gadget driver must also support both.
+ * @max_speed: Maximal speed the UDC can handle.  UDC must support this
+ *      and all slower speeds.
+ * @state: the state we are now (attached, suspended, configured, etc)
+ * @name: Identifies the controller hardware type.  Used in diagnostics
+ *	and sometimes configuration.
+ * @dev: Driver model state for this abstract device.
+ * @out_epnum: last used out ep number
+ * @in_epnum: last used in ep number
+ * @sg_supported: true if we can handle scatter-gather
  * @is_otg: True if the USB device port uses a Mini-AB jack, so that the
  *	gadget driver must provide a USB OTG descriptor.
  * @is_a_peripheral: False unless is_otg, the "A" end of a USB cable
@@ -449,9 +513,8 @@ struct usb_gadget_ops {
  *	only supports HNP on a different root port.
  * @b_hnp_enable: OTG device feature flag, indicating that the A-Host
  *	enabled HNP support.
- * @name: Identifies the controller hardware type.  Used in diagnostics
- *	and sometimes configuration.
- * @dev: Driver model state for this abstract device.
+ * @quirk_ep_out_aligned_size: epout requires buffer size to be aligned to
+ *	MaxPacketSize.
  *
  * Gadgets have a mostly-portable "gadget driver" implementing device
  * functions, handling all usb configurations and interfaces.  Gadget
@@ -477,45 +540,76 @@ struct usb_gadget {
 	struct usb_ep			*ep0;
 	struct list_head		ep_list;	/* of usb_ep */
 	enum usb_device_speed		speed;
-	unsigned			is_dualspeed:1;
+	enum usb_device_speed		max_speed;
+	enum usb_device_state		state;
+	const char			*name;
+	struct device_d			dev;
+	unsigned			out_epnum;
+	unsigned			in_epnum;
+
+	unsigned			sg_supported:1;
 	unsigned			is_otg:1;
 	unsigned			is_a_peripheral:1;
 	unsigned			b_hnp_enable:1;
 	unsigned			a_hnp_support:1;
 	unsigned			a_alt_hnp_support:1;
-	const char			*name;
-	void				*priv;
+	unsigned			quirk_ep_out_aligned_size:1;
 };
+#define work_to_gadget(w)	(container_of((w), struct usb_gadget, work))
 
 static inline void set_gadget_data(struct usb_gadget *gadget, void *data)
 {
-	gadget->priv = data;
+	gadget->dev.priv = data;
 }
 
 static inline void *get_gadget_data(struct usb_gadget *gadget)
 {
-	return gadget->priv;
+	return gadget->dev.priv;
+}
+
+static inline struct usb_gadget *dev_to_usb_gadget(struct device_d *dev)
+{
+	return container_of(dev, struct usb_gadget, dev);
 }
 
 /* iterates the non-control endpoints; 'tmp' is a struct usb_ep pointer */
-#define gadget_for_each_ep(tmp,gadget) \
+#define gadget_for_each_ep(tmp, gadget) \
 	list_for_each_entry(tmp, &(gadget)->ep_list, ep_list)
 
 
 /**
+ * usb_ep_align_maybe - returns @len aligned to ep's maxpacketsize if gadget
+ *	requires quirk_ep_out_aligned_size, otherwise reguens len.
+ * @g: controller to check for quirk
+ * @ep: the endpoint whose maxpacketsize is used to align @len
+ * @len: buffer size's length to align to @ep's maxpacketsize
+ *
+ * This helper is used in case it's required for any reason to check and maybe
+ * align buffer's size to an ep's maxpacketsize.
+ */
+static inline size_t
+usb_ep_align_maybe(struct usb_gadget *g, struct usb_ep *ep, size_t len)
+{
+	return !g->quirk_ep_out_aligned_size ? len :
+			round_up(len, (size_t)ep->desc->wMaxPacketSize);
+}
+
+/**
  * gadget_is_dualspeed - return true iff the hardware handles high speed
  * @g: controller that might support both high and full speeds
  */
 static inline int gadget_is_dualspeed(struct usb_gadget *g)
 {
-#ifdef CONFIG_USB_GADGET_DUALSPEED
-	/* runtime test would check "g->is_dualspeed" ... that might be
-	 * useful to work around hardware bugs, but is mostly pointless
-	 */
-	return 1;
-#else
-	return 0;
-#endif
+	return g->max_speed >= USB_SPEED_HIGH;
+}
+
+/**
+ * gadget_is_superspeed() - return true if the hardware handles superspeed
+ * @g: controller that might support superspeed
+ */
+static inline int gadget_is_superspeed(struct usb_gadget *g)
+{
+	return g->max_speed >= USB_SPEED_SUPER;
 }
 
 /**
@@ -703,12 +797,7 @@ int usb_gadget_poll(void);
 /**
  * struct usb_gadget_driver - driver for usb 'slave' devices
  * @function: String describing the gadget's function
- * @speed: Highest speed the driver handles.
- * @bind: Invoked when the driver is bound to a gadget, usually
- *	after registering the driver.
- *	At that point, ep0 is fully initialized, and ep_list holds
- *	the currently-available endpoints.
- *	Called in a context that permits sleeping.
+ * @max_speed: Highest speed the driver handles.
  * @setup: Invoked for ep0 control requests that aren't handled by
  *	the hardware level driver. Most calls must be handled by
  *	the gadget driver, including descriptor and configuration
@@ -719,6 +808,7 @@ int usb_gadget_poll(void);
  *	when the host is disconnected.  May be called in_interrupt; this
  *	may not sleep.  Some devices can't detect disconnect, so this might
  *	not be called except as part of controller shutdown.
+ * @bind: the driver's bind callback
  * @unbind: Invoked when the driver is unbound from a gadget,
  *	usually from rmmod (after a disconnect is reported).
  *	Called in a context that permits sleeping.
@@ -772,8 +862,9 @@ int usb_gadget_poll(void);
  */
 struct usb_gadget_driver {
 	char			*function;
-	enum usb_device_speed	speed;
-	int			(*bind)(struct usb_gadget *);
+	enum usb_device_speed	max_speed;
+	int			(*bind)(struct usb_gadget *gadget,
+					struct usb_gadget_driver *driver);
 	void			(*unbind)(struct usb_gadget *);
 	int			(*setup)(struct usb_gadget *,
 					const struct usb_ctrlrequest *);
@@ -782,7 +873,7 @@ struct usb_gadget_driver {
 	void			(*resume)(struct usb_gadget *);
 
 	/* FIXME support safe rmmod */
-//	struct device_driver	driver;
+	struct driver_d		driver;
 };
 
 
@@ -797,17 +888,17 @@ struct usb_gadget_driver {
  */
 
 /**
- * usb_gadget_register_driver - register a gadget driver
- * @driver:the driver being registered
+ * usb_gadget_probe_driver - probe a gadget driver
+ * @driver: the driver being registered
  * Context: can sleep
  *
  * Call this in your gadget driver's module initialization function,
  * to tell the underlying usb controller driver about your driver.
- * The driver's bind() function will be called to bind it to a
- * gadget before this registration call returns.  It's expected that
- * the bind() functions will be in init sections.
+ * The @bind() function will be called to bind it to a gadget before this
+ * registration call returns.  It's expected that the @bind() function will
+ * be in init sections.
  */
-int usb_gadget_register_driver(struct usb_gadget_driver *driver);
+int usb_gadget_probe_driver(struct usb_gadget_driver *driver);
 
 /**
  * usb_gadget_unregister_driver - unregister a gadget driver
@@ -824,6 +915,13 @@ int usb_gadget_register_driver(struct usb_gadget_driver *driver);
  */
 int usb_gadget_unregister_driver(struct usb_gadget_driver *driver);
 
+extern int usb_add_gadget_udc_release(struct device_d *parent,
+		struct usb_gadget *gadget, void (*release)(struct device_d *dev));
+extern int usb_add_gadget_udc(struct device_d *parent, struct usb_gadget *gadget);
+extern void usb_del_gadget_udc(struct usb_gadget *gadget);
+extern int udc_attach_driver(const char *name,
+		struct usb_gadget_driver *driver);
+
 /*-------------------------------------------------------------------------*/
 
 /* utility to simplify dealing with string descriptors */
@@ -854,6 +952,11 @@ struct usb_gadget_strings {
 	struct usb_string	*strings;
 };
 
+struct usb_gadget_string_container {
+	struct list_head        list;
+	u8                      *stash[0];
+};
+
 /* put descriptor for string with that id into buf (buflen >= 256) */
 int usb_gadget_get_string(struct usb_gadget_strings *table, int id, u8 *buf);
 
@@ -873,21 +976,39 @@ int usb_gadget_config_buf(const struct usb_config_descriptor *config,
 struct usb_descriptor_header **usb_copy_descriptors(
 		struct usb_descriptor_header **);
 
-/* return copy of endpoint descriptor given original descriptor set */
-struct usb_endpoint_descriptor *usb_find_endpoint(
-	struct usb_descriptor_header **src,
-	struct usb_descriptor_header **copy,
-	struct usb_endpoint_descriptor *match);
-
 /**
  * usb_free_descriptors - free descriptors returned by usb_copy_descriptors()
  * @v: vector of descriptors
  */
 static inline void usb_free_descriptors(struct usb_descriptor_header **v)
 {
-	free(v);
+	kfree(v);
 }
 
+struct usb_function;
+int usb_assign_descriptors(struct usb_function *f,
+		struct usb_descriptor_header **fs,
+		struct usb_descriptor_header **hs,
+		struct usb_descriptor_header **ss);
+void usb_free_all_descriptors(struct usb_function *f);
+
+/*-------------------------------------------------------------------------*/
+
+/* utility to simplify map/unmap of usb_requests to/from DMA */
+
+extern int usb_gadget_map_request(struct usb_gadget *gadget,
+		struct usb_request *req, int is_in);
+
+extern void usb_gadget_unmap_request(struct usb_gadget *gadget,
+		struct usb_request *req, int is_in);
+
+/*-------------------------------------------------------------------------*/
+
+/* utility to set gadget state properly */
+
+extern void usb_gadget_set_state(struct usb_gadget *gadget,
+		enum usb_device_state state);
+
 /*-------------------------------------------------------------------------*/
 
 /* utility wrapping a simple endpoint selection policy */
@@ -895,6 +1016,11 @@ static inline void usb_free_descriptors(struct usb_descriptor_header **v)
 extern struct usb_ep *usb_ep_autoconfig(struct usb_gadget *,
 			struct usb_endpoint_descriptor *);
 
+
+extern struct usb_ep *usb_ep_autoconfig_ss(struct usb_gadget *,
+			struct usb_endpoint_descriptor *,
+			struct usb_ss_ep_comp_descriptor *);
+
 extern void usb_ep_autoconfig_reset(struct usb_gadget *);
 
 #endif /* __LINUX_USB_GADGET_H */
diff --git a/include/usb/usbserial.h b/include/usb/usbserial.h
index 7c416aa..e047ca7 100644
--- a/include/usb/usbserial.h
+++ b/include/usb/usbserial.h
@@ -6,14 +6,10 @@ struct usb_serial_pdata {
 	const char		*productname;
 	u16			idVendor;
 	u16			idProduct;
-	int			mode;
+	bool			acm;
 };
 
 int usb_serial_register(struct usb_serial_pdata *pdata);
 void usb_serial_unregister(void);
 
-/* OBEX support is missing in barebox */
-/* #define HAVE_OBEX */
-
 #endif /* _USB_SERIAL_H */
-
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
