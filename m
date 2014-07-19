Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003iv-Ad
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:15:59 +0200
Message-Id: <1405761367-23724-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
References: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] USB: host: hub: Turn into a driver
To: barebox@lists.infradead.org

Since we have a driver model we can make the hub driver a
real driver model driver. Put it into a new file to separate
the hub from the USB core stuff.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/Makefile |   3 +-
 drivers/usb/core/hub.c    | 434 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/usb/core/hub.h    |   7 +
 drivers/usb/core/usb.c    | 424 ++------------------------------------------
 drivers/usb/core/usb.h    |   7 +
 5 files changed, 460 insertions(+), 415 deletions(-)
 create mode 100644 drivers/usb/core/hub.c
 create mode 100644 drivers/usb/core/hub.h
 create mode 100644 drivers/usb/core/usb.h

diff --git a/drivers/usb/core/Makefile b/drivers/usb/core/Makefile
index a74f141..dc7e635 100644
--- a/drivers/usb/core/Makefile
+++ b/drivers/usb/core/Makefile
@@ -1,3 +1,2 @@
-
-obj-$(CONFIG_USB_HOST) += usb.o
+obj-$(CONFIG_USB_HOST) += usb.o hub.o
 obj-$(CONFIG_OFDEVICE) += of.o
diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
new file mode 100644
index 0000000..0f43955
--- /dev/null
+++ b/drivers/usb/core/hub.c
@@ -0,0 +1,434 @@
+/*
+ * hub.c - USB hub support
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <errno.h>
+#include <scsi.h>
+#include <usb/usb.h>
+#include <usb/usb_defs.h>
+
+#include "usb.h"
+#include "hub.h"
+
+#undef	USB_HUB_DEBUG
+
+#ifdef	USB_HUB_DEBUG
+#define	USB_HUB_PRINTF(fmt, args...)	printf(fmt , ##args)
+#else
+#define USB_HUB_PRINTF(fmt, args...)
+#endif
+
+#define USB_BUFSIZ  512
+
+static int usb_get_hub_descriptor(struct usb_device *dev, void *data, int size)
+{
+	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
+		USB_REQ_GET_DESCRIPTOR, USB_DIR_IN | USB_RT_HUB,
+		USB_DT_HUB << 8, 0, data, size, USB_CNTL_TIMEOUT);
+}
+
+static int usb_clear_port_feature(struct usb_device *dev, int port, int feature)
+{
+	return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
+				USB_REQ_CLEAR_FEATURE, USB_RT_PORT, feature,
+				port, NULL, 0, USB_CNTL_TIMEOUT);
+}
+
+static int usb_set_port_feature(struct usb_device *dev, int port, int feature)
+{
+	return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
+				USB_REQ_SET_FEATURE, USB_RT_PORT, feature,
+				port, NULL, 0, USB_CNTL_TIMEOUT);
+}
+
+static int usb_get_hub_status(struct usb_device *dev, void *data)
+{
+	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
+			USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_HUB, 0, 0,
+			data, sizeof(struct usb_hub_status), USB_CNTL_TIMEOUT);
+}
+
+static int usb_get_port_status(struct usb_device *dev, int port, void *data)
+{
+	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
+			USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_PORT, 0, port,
+			data, sizeof(struct usb_hub_status), USB_CNTL_TIMEOUT);
+}
+
+
+static void usb_hub_power_on(struct usb_hub_device *hub)
+{
+	int i;
+	struct usb_device *dev;
+
+	dev = hub->pusb_dev;
+	/* Enable power to the ports */
+	USB_HUB_PRINTF("enabling power on all ports\n");
+	for (i = 0; i < dev->maxchild; i++) {
+		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
+		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
+	}
+	/* power on is encoded in 2ms increments -> times 2 for the actual delay */
+	mdelay(hub->desc.bPwrOn2PwrGood*2);
+}
+
+#define MAX_TRIES 5
+
+static inline char *portspeed(int portstatus)
+{
+	if (portstatus & (1 << USB_PORT_FEAT_HIGHSPEED))
+		return "480 Mb/s";
+	else if (portstatus & (1 << USB_PORT_FEAT_LOWSPEED))
+		return "1.5 Mb/s";
+	else
+		return "12 Mb/s";
+}
+
+int hub_port_reset(struct usb_device *dev, int port,
+			unsigned short *portstat)
+{
+	int tries;
+	struct usb_port_status portsts;
+	unsigned short portstatus, portchange;
+
+	USB_HUB_PRINTF("hub_port_reset: resetting port %d...\n", port);
+	for (tries = 0; tries < MAX_TRIES; tries++) {
+
+		usb_set_port_feature(dev, port + 1, USB_PORT_FEAT_RESET);
+		wait_ms(200);
+
+		if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
+			USB_HUB_PRINTF("get_port_status failed status %lX\n",
+					dev->status);
+			return -1;
+		}
+		portstatus = le16_to_cpu(portsts.wPortStatus);
+		portchange = le16_to_cpu(portsts.wPortChange);
+
+		USB_HUB_PRINTF("portstatus %x, change %x, %s\n",
+				portstatus, portchange,
+				portspeed(portstatus));
+
+		USB_HUB_PRINTF("STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
+			       "  USB_PORT_STAT_ENABLE %d\n",
+			(portchange & USB_PORT_STAT_C_CONNECTION) ? 1 : 0,
+			(portstatus & USB_PORT_STAT_CONNECTION) ? 1 : 0,
+			(portstatus & USB_PORT_STAT_ENABLE) ? 1 : 0);
+
+		if ((portchange & USB_PORT_STAT_C_CONNECTION) ||
+		    !(portstatus & USB_PORT_STAT_CONNECTION))
+			return -1;
+
+		if (portstatus & USB_PORT_STAT_ENABLE)
+			break;
+
+		wait_ms(200);
+	}
+
+	if (tries == MAX_TRIES) {
+		USB_HUB_PRINTF("Cannot enable port %i after %i retries, " \
+				"disabling port.\n", port + 1, MAX_TRIES);
+		USB_HUB_PRINTF("Maybe the USB cable is bad?\n");
+		return -1;
+	}
+
+	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_RESET);
+	*portstat = portstatus;
+	return 0;
+}
+
+
+static void usb_hub_port_connect_change(struct usb_device *dev, int port)
+{
+	struct usb_device *usb;
+	struct usb_port_status portsts;
+	unsigned short portstatus, portchange;
+
+	/* Check status */
+	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
+		USB_HUB_PRINTF("get_port_status failed\n");
+		return;
+	}
+
+	portstatus = le16_to_cpu(portsts.wPortStatus);
+	portchange = le16_to_cpu(portsts.wPortChange);
+	USB_HUB_PRINTF("portstatus %x, change %x, %s\n",
+			portstatus, portchange, portspeed(portstatus));
+
+	/* Clear the connection change status */
+	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_CONNECTION);
+
+	/* Disconnect any existing devices under this port */
+	if (((!(portstatus & USB_PORT_STAT_CONNECTION)) &&
+	     (!(portstatus & USB_PORT_STAT_ENABLE))) || (dev->children[port])) {
+		USB_HUB_PRINTF("usb_disconnect(&hub->children[port]);\n");
+		/* Return now if nothing is connected */
+		if (!(portstatus & USB_PORT_STAT_CONNECTION))
+			return;
+	}
+	wait_ms(200);
+
+	/* Reset the port */
+	if (hub_port_reset(dev, port, &portstatus) < 0) {
+		printf("cannot reset port %i!?\n", port + 1);
+		return;
+	}
+
+	wait_ms(200);
+
+	/* Allocate a new device struct for it */
+	usb = usb_alloc_new_device();
+	usb->host = dev->host;
+
+	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
+		usb->speed = USB_SPEED_HIGH;
+	else if (portstatus & USB_PORT_STAT_LOW_SPEED)
+		usb->speed = USB_SPEED_LOW;
+	else
+		usb->speed = USB_SPEED_FULL;
+
+	dev->children[port] = usb;
+	usb->parent = dev;
+	usb->portnr = port + 1;
+
+	/* Run it through the hoops (find a driver, etc) */
+	if (usb_new_device(usb)) {
+		/* Woops, disable the port */
+		USB_HUB_PRINTF("hub: disabling port %d\n", port + 1);
+		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_ENABLE);
+	}
+}
+
+static int usb_hub_configure(struct usb_device *dev)
+{
+	unsigned char buffer[USB_BUFSIZ], *bitmap;
+	struct usb_hub_descriptor *descriptor;
+	struct usb_hub_status *hubsts;
+	int i;
+	struct usb_hub_device *hub;
+
+	hub = xzalloc(sizeof (*hub));
+	dev->hub = hub;
+
+	hub->pusb_dev = dev;
+	/* Get the the hub descriptor */
+	if (usb_get_hub_descriptor(dev, buffer, 4) < 0) {
+		USB_HUB_PRINTF("%s: failed to get hub " \
+				   "descriptor, giving up %lX\n", __func__, dev->status);
+		return -1;
+	}
+	descriptor = (struct usb_hub_descriptor *)buffer;
+
+	/* silence compiler warning if USB_BUFSIZ is > 256 [= sizeof(char)] */
+	i = descriptor->bLength;
+	if (i > USB_BUFSIZ) {
+		USB_HUB_PRINTF("%s: failed to get hub " \
+				"descriptor - too long: %d\n", __func__,
+				descriptor->bLength);
+		return -1;
+	}
+
+	if (usb_get_hub_descriptor(dev, buffer, descriptor->bLength) < 0) {
+		USB_HUB_PRINTF("%s: failed to get hub " \
+				"descriptor 2nd giving up %lX\n", __func__, dev->status);
+		return -1;
+	}
+	memcpy((unsigned char *)&hub->desc, buffer, descriptor->bLength);
+	/* adjust 16bit values */
+	hub->desc.wHubCharacteristics =
+				le16_to_cpu(descriptor->wHubCharacteristics);
+	/* set the bitmap */
+	bitmap = (unsigned char *)&hub->desc.DeviceRemovable[0];
+	/* devices not removable by default */
+	memset(bitmap, 0xff, (USB_MAXCHILDREN+1+7)/8);
+	bitmap = (unsigned char *)&hub->desc.PortPowerCtrlMask[0];
+	memset(bitmap, 0xff, (USB_MAXCHILDREN+1+7)/8); /* PowerMask = 1B */
+
+	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
+		hub->desc.DeviceRemovable[i] = descriptor->DeviceRemovable[i];
+
+	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
+		hub->desc.DeviceRemovable[i] = descriptor->PortPowerCtrlMask[i];
+
+	dev->maxchild = descriptor->bNbrPorts;
+	USB_HUB_PRINTF("%d ports detected\n", dev->maxchild);
+
+	switch (hub->desc.wHubCharacteristics & HUB_CHAR_LPSM) {
+	case 0x00:
+		USB_HUB_PRINTF("ganged power switching\n");
+		break;
+	case 0x01:
+		USB_HUB_PRINTF("individual port power switching\n");
+		break;
+	case 0x02:
+	case 0x03:
+		USB_HUB_PRINTF("unknown reserved power switching mode\n");
+		break;
+	}
+
+	if (hub->desc.wHubCharacteristics & HUB_CHAR_COMPOUND)
+		USB_HUB_PRINTF("part of a compound device\n");
+	else
+		USB_HUB_PRINTF("standalone hub\n");
+
+	switch (hub->desc.wHubCharacteristics & HUB_CHAR_OCPM) {
+	case 0x00:
+		USB_HUB_PRINTF("global over-current protection\n");
+		break;
+	case 0x08:
+		USB_HUB_PRINTF("individual port over-current protection\n");
+		break;
+	case 0x10:
+	case 0x18:
+		USB_HUB_PRINTF("no over-current protection\n");
+		break;
+	}
+
+	USB_HUB_PRINTF("power on to power good time: %dms\n",
+			descriptor->bPwrOn2PwrGood * 2);
+	USB_HUB_PRINTF("hub controller current requirement: %dmA\n",
+			descriptor->bHubContrCurrent);
+
+	for (i = 0; i < dev->maxchild; i++)
+		USB_HUB_PRINTF("port %d is%s removable\n", i + 1,
+			hub->desc.DeviceRemovable[(i + 1) / 8] & \
+					   (1 << ((i + 1) % 8)) ? " not" : "");
+
+	if (sizeof(struct usb_hub_status) > USB_BUFSIZ) {
+		USB_HUB_PRINTF("%s: failed to get Status - " \
+				"too long: %d\n", __func__, descriptor->bLength);
+		return -1;
+	}
+
+	if (usb_get_hub_status(dev, buffer) < 0) {
+		USB_HUB_PRINTF("%s: failed to get Status %lX\n", __func__,
+				dev->status);
+		return -1;
+	}
+
+	hubsts = (struct usb_hub_status *)buffer;
+	USB_HUB_PRINTF("get_hub_status returned status %X, change %X\n",
+			le16_to_cpu(hubsts->wHubStatus),
+			le16_to_cpu(hubsts->wHubChange));
+	USB_HUB_PRINTF("local power source is %s\n",
+		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_LOCAL_POWER) ? \
+		"lost (inactive)" : "good");
+	USB_HUB_PRINTF("%sover-current condition exists\n",
+		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_OVERCURRENT) ? \
+		"" : "no ");
+	usb_hub_power_on(hub);
+
+	for (i = 0; i < dev->maxchild; i++) {
+		struct usb_port_status portsts;
+		unsigned short portstatus, portchange;
+
+		if (usb_get_port_status(dev, i + 1, &portsts) < 0) {
+			USB_HUB_PRINTF("get_port_status failed\n");
+			continue;
+		}
+
+		portstatus = le16_to_cpu(portsts.wPortStatus);
+		portchange = le16_to_cpu(portsts.wPortChange);
+		USB_HUB_PRINTF("Port %d Status %X Change %X\n",
+				i + 1, portstatus, portchange);
+
+		if (portchange & USB_PORT_STAT_C_CONNECTION) {
+			USB_HUB_PRINTF("port %d connection change\n", i + 1);
+			usb_hub_port_connect_change(dev, i);
+		}
+		if (portchange & USB_PORT_STAT_C_ENABLE) {
+			USB_HUB_PRINTF("port %d enable change, status %x\n",
+					i + 1, portstatus);
+			usb_clear_port_feature(dev, i + 1,
+						USB_PORT_FEAT_C_ENABLE);
+
+			/* EM interference sometimes causes bad shielded USB
+			 * devices to be shutdown by the hub, this hack enables
+			 * them again. Works at least with mouse driver */
+			if (!(portstatus & USB_PORT_STAT_ENABLE) &&
+			     (portstatus & USB_PORT_STAT_CONNECTION) &&
+			     ((dev->children[i]))) {
+				USB_HUB_PRINTF("already running port %i "  \
+						"disabled by hub (EMI?), " \
+						"re-enabling...\n", i + 1);
+					usb_hub_port_connect_change(dev, i);
+			}
+		}
+		if (portstatus & USB_PORT_STAT_SUSPEND) {
+			USB_HUB_PRINTF("port %d suspend change\n", i + 1);
+			usb_clear_port_feature(dev, i + 1,
+						USB_PORT_FEAT_SUSPEND);
+		}
+
+		if (portchange & USB_PORT_STAT_C_OVERCURRENT) {
+			USB_HUB_PRINTF("port %d over-current change\n", i + 1);
+			usb_clear_port_feature(dev, i + 1,
+						USB_PORT_FEAT_C_OVER_CURRENT);
+			usb_hub_power_on(hub);
+		}
+
+		if (portchange & USB_PORT_STAT_C_RESET) {
+			USB_HUB_PRINTF("port %d reset change\n", i + 1);
+			usb_clear_port_feature(dev, i + 1,
+						USB_PORT_FEAT_C_RESET);
+		}
+	} /* end for i all ports */
+
+	return 0;
+}
+
+static int usb_hub_probe(struct usb_device *usbdev,
+			 const struct usb_device_id *id)
+{
+	return usb_hub_configure(usbdev);
+}
+
+static void usb_hub_disconnect(struct usb_device *usbdev)
+{
+	free(usbdev->hub);
+}
+
+/* Table with supported devices, most specific first. */
+static struct usb_device_id usb_hubage_usb_ids[] = {
+	{
+		.match_flags = USB_DEVICE_ID_MATCH_INT_CLASS,
+		.bInterfaceClass = USB_CLASS_HUB,
+	},
+	{ }
+};
+
+
+/***********************************************************************
+ * USB Storage driver initialization and registration
+ ***********************************************************************/
+
+static struct usb_driver usb_hubage_driver = {
+	.name =		"usb-hub",
+	.id_table =	usb_hubage_usb_ids,
+	.probe =	usb_hub_probe,
+	.disconnect =	usb_hub_disconnect,
+};
+
+static int __init usb_hub_init(void)
+{
+	return usb_driver_register(&usb_hubage_driver);
+}
+device_initcall(usb_hub_init);
diff --git a/drivers/usb/core/hub.h b/drivers/usb/core/hub.h
new file mode 100644
index 0000000..fcf1f0c
--- /dev/null
+++ b/drivers/usb/core/hub.h
@@ -0,0 +1,7 @@
+#ifndef __CORE_HUB_H
+#define __CORE_HUB_H
+
+int hub_port_reset(struct usb_device *dev, int port,
+			unsigned short *portstat);
+
+#endif /* __CORE_HUB_H */
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 4f5c0ed..c289bbb 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -52,6 +52,9 @@
 
 #include <usb/usb.h>
 
+#include "usb.h"
+#include "hub.h"
+
 /* #define USB_DEBUG */
 
 #ifdef	USB_DEBUG
@@ -65,10 +68,6 @@
 static int dev_index;
 static int asynch_allowed;
 
-static int usb_hub_probe(struct usb_device *dev, int ifnum);
-static int hub_port_reset(struct usb_device *dev, int port,
-			  unsigned short *portstat);
-
 static LIST_HEAD(host_list);
 LIST_HEAD(usb_device_list);
 
@@ -291,7 +290,7 @@ static int usb_get_descriptor(struct usb_device *dev, unsigned char type,
  *
  * Returns 0 for success, != 0 for error.
  */
-static int usb_new_device(struct usb_device *dev)
+int usb_new_device(struct usb_device *dev)
 {
 	int addr, err;
 	int tmp;
@@ -427,13 +426,14 @@ static int usb_new_device(struct usb_device *dev)
 
 	if (dev->host->hw_dev)
 		dev->dev.parent = dev->host->hw_dev;
-	register_device(&dev->dev);
-
-	/* now prode if the device is a hub */
-	usb_hub_probe(dev, 0);
-
 	print_usb_device(dev);
 
+	err = register_device(&dev->dev);
+	if (err) {
+		printf("Failed to register device: %s\n", strerror(-err));
+		return err;
+	}
+
 	dev_add_param_int_ro(&dev->dev, "iManufacturer",
 			dev->descriptor->iManufacturer, "%d");
 	dev_add_param_int_ro(&dev->dev, "iProduct",
@@ -457,7 +457,7 @@ err_out:
 	return err;
 }
 
-static struct usb_device *usb_alloc_new_device(void)
+struct usb_device *usb_alloc_new_device(void)
 {
 	struct usb_device *usbdev = xzalloc(sizeof (*usbdev));
 
@@ -911,408 +911,6 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	return err;
 }
 
-/****************************************************************************
- * HUB "Driver"
- * Probes device for being a hub and configurate it
- */
-
-#undef	USB_HUB_DEBUG
-
-#ifdef	USB_HUB_DEBUG
-#define	USB_HUB_PRINTF(fmt, args...)	printf(fmt , ##args)
-#else
-#define USB_HUB_PRINTF(fmt, args...)
-#endif
-
-static int usb_get_hub_descriptor(struct usb_device *dev, void *data, int size)
-{
-	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
-		USB_REQ_GET_DESCRIPTOR, USB_DIR_IN | USB_RT_HUB,
-		USB_DT_HUB << 8, 0, data, size, USB_CNTL_TIMEOUT);
-}
-
-static int usb_clear_port_feature(struct usb_device *dev, int port, int feature)
-{
-	return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
-				USB_REQ_CLEAR_FEATURE, USB_RT_PORT, feature,
-				port, NULL, 0, USB_CNTL_TIMEOUT);
-}
-
-static int usb_set_port_feature(struct usb_device *dev, int port, int feature)
-{
-	return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
-				USB_REQ_SET_FEATURE, USB_RT_PORT, feature,
-				port, NULL, 0, USB_CNTL_TIMEOUT);
-}
-
-static int usb_get_hub_status(struct usb_device *dev, void *data)
-{
-	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
-			USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_HUB, 0, 0,
-			data, sizeof(struct usb_hub_status), USB_CNTL_TIMEOUT);
-}
-
-static int usb_get_port_status(struct usb_device *dev, int port, void *data)
-{
-	return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
-			USB_REQ_GET_STATUS, USB_DIR_IN | USB_RT_PORT, 0, port,
-			data, sizeof(struct usb_hub_status), USB_CNTL_TIMEOUT);
-}
-
-
-static void usb_hub_power_on(struct usb_hub_device *hub)
-{
-	int i;
-	struct usb_device *dev;
-
-	dev = hub->pusb_dev;
-	/* Enable power to the ports */
-	USB_HUB_PRINTF("enabling power on all ports\n");
-	for (i = 0; i < dev->maxchild; i++) {
-		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
-		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
-	}
-	/* power on is encoded in 2ms increments -> times 2 for the actual delay */
-	mdelay(hub->desc.bPwrOn2PwrGood*2);
-}
-
-#define MAX_TRIES 5
-
-static inline char *portspeed(int portstatus)
-{
-	if (portstatus & (1 << USB_PORT_FEAT_HIGHSPEED))
-		return "480 Mb/s";
-	else if (portstatus & (1 << USB_PORT_FEAT_LOWSPEED))
-		return "1.5 Mb/s";
-	else
-		return "12 Mb/s";
-}
-
-static int hub_port_reset(struct usb_device *dev, int port,
-			unsigned short *portstat)
-{
-	int tries;
-	struct usb_port_status portsts;
-	unsigned short portstatus, portchange;
-
-	USB_HUB_PRINTF("hub_port_reset: resetting port %d...\n", port);
-	for (tries = 0; tries < MAX_TRIES; tries++) {
-
-		usb_set_port_feature(dev, port + 1, USB_PORT_FEAT_RESET);
-		wait_ms(200);
-
-		if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-			USB_HUB_PRINTF("get_port_status failed status %lX\n",
-					dev->status);
-			return -1;
-		}
-		portstatus = le16_to_cpu(portsts.wPortStatus);
-		portchange = le16_to_cpu(portsts.wPortChange);
-
-		USB_HUB_PRINTF("portstatus %x, change %x, %s\n",
-				portstatus, portchange,
-				portspeed(portstatus));
-
-		USB_HUB_PRINTF("STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
-			       "  USB_PORT_STAT_ENABLE %d\n",
-			(portchange & USB_PORT_STAT_C_CONNECTION) ? 1 : 0,
-			(portstatus & USB_PORT_STAT_CONNECTION) ? 1 : 0,
-			(portstatus & USB_PORT_STAT_ENABLE) ? 1 : 0);
-
-		if ((portchange & USB_PORT_STAT_C_CONNECTION) ||
-		    !(portstatus & USB_PORT_STAT_CONNECTION))
-			return -1;
-
-		if (portstatus & USB_PORT_STAT_ENABLE)
-			break;
-
-		wait_ms(200);
-	}
-
-	if (tries == MAX_TRIES) {
-		USB_HUB_PRINTF("Cannot enable port %i after %i retries, " \
-				"disabling port.\n", port + 1, MAX_TRIES);
-		USB_HUB_PRINTF("Maybe the USB cable is bad?\n");
-		return -1;
-	}
-
-	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_RESET);
-	*portstat = portstatus;
-	return 0;
-}
-
-
-static void usb_hub_port_connect_change(struct usb_device *dev, int port)
-{
-	struct usb_device *usb;
-	struct usb_port_status portsts;
-	unsigned short portstatus, portchange;
-
-	/* Check status */
-	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-		USB_HUB_PRINTF("get_port_status failed\n");
-		return;
-	}
-
-	portstatus = le16_to_cpu(portsts.wPortStatus);
-	portchange = le16_to_cpu(portsts.wPortChange);
-	USB_HUB_PRINTF("portstatus %x, change %x, %s\n",
-			portstatus, portchange, portspeed(portstatus));
-
-	/* Clear the connection change status */
-	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_CONNECTION);
-
-	/* Disconnect any existing devices under this port */
-	if (((!(portstatus & USB_PORT_STAT_CONNECTION)) &&
-	     (!(portstatus & USB_PORT_STAT_ENABLE))) || (dev->children[port])) {
-		USB_HUB_PRINTF("usb_disconnect(&hub->children[port]);\n");
-		/* Return now if nothing is connected */
-		if (!(portstatus & USB_PORT_STAT_CONNECTION))
-			return;
-	}
-	wait_ms(200);
-
-	/* Reset the port */
-	if (hub_port_reset(dev, port, &portstatus) < 0) {
-		printf("cannot reset port %i!?\n", port + 1);
-		return;
-	}
-
-	wait_ms(200);
-
-	/* Allocate a new device struct for it */
-	usb = usb_alloc_new_device();
-	usb->host = dev->host;
-
-	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
-		usb->speed = USB_SPEED_HIGH;
-	else if (portstatus & USB_PORT_STAT_LOW_SPEED)
-		usb->speed = USB_SPEED_LOW;
-	else
-		usb->speed = USB_SPEED_FULL;
-
-	dev->children[port] = usb;
-	usb->parent = dev;
-	usb->portnr = port + 1;
-
-	/* Run it through the hoops (find a driver, etc) */
-	if (usb_new_device(usb)) {
-		/* Woops, disable the port */
-		USB_HUB_PRINTF("hub: disabling port %d\n", port + 1);
-		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_ENABLE);
-	}
-}
-
-
-static int usb_hub_configure(struct usb_device *dev)
-{
-	unsigned char buffer[USB_BUFSIZ], *bitmap;
-	struct usb_hub_descriptor *descriptor;
-	struct usb_hub_status *hubsts;
-	int i;
-	struct usb_hub_device *hub;
-
-	hub = xzalloc(sizeof (*hub));
-	dev->hub = hub;
-
-	hub->pusb_dev = dev;
-	/* Get the the hub descriptor */
-	if (usb_get_hub_descriptor(dev, buffer, 4) < 0) {
-		USB_HUB_PRINTF("%s: failed to get hub " \
-				   "descriptor, giving up %lX\n", __func__, dev->status);
-		return -1;
-	}
-	descriptor = (struct usb_hub_descriptor *)buffer;
-
-	/* silence compiler warning if USB_BUFSIZ is > 256 [= sizeof(char)] */
-	i = descriptor->bLength;
-	if (i > USB_BUFSIZ) {
-		USB_HUB_PRINTF("%s: failed to get hub " \
-				"descriptor - too long: %d\n", __func__,
-				descriptor->bLength);
-		return -1;
-	}
-
-	if (usb_get_hub_descriptor(dev, buffer, descriptor->bLength) < 0) {
-		USB_HUB_PRINTF("%s: failed to get hub " \
-				"descriptor 2nd giving up %lX\n", __func__, dev->status);
-		return -1;
-	}
-	memcpy((unsigned char *)&hub->desc, buffer, descriptor->bLength);
-	/* adjust 16bit values */
-	hub->desc.wHubCharacteristics =
-				le16_to_cpu(descriptor->wHubCharacteristics);
-	/* set the bitmap */
-	bitmap = (unsigned char *)&hub->desc.DeviceRemovable[0];
-	/* devices not removable by default */
-	memset(bitmap, 0xff, (USB_MAXCHILDREN+1+7)/8);
-	bitmap = (unsigned char *)&hub->desc.PortPowerCtrlMask[0];
-	memset(bitmap, 0xff, (USB_MAXCHILDREN+1+7)/8); /* PowerMask = 1B */
-
-	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
-		hub->desc.DeviceRemovable[i] = descriptor->DeviceRemovable[i];
-
-	for (i = 0; i < ((hub->desc.bNbrPorts + 1 + 7)/8); i++)
-		hub->desc.DeviceRemovable[i] = descriptor->PortPowerCtrlMask[i];
-
-	dev->maxchild = descriptor->bNbrPorts;
-	USB_HUB_PRINTF("%d ports detected\n", dev->maxchild);
-
-	switch (hub->desc.wHubCharacteristics & HUB_CHAR_LPSM) {
-	case 0x00:
-		USB_HUB_PRINTF("ganged power switching\n");
-		break;
-	case 0x01:
-		USB_HUB_PRINTF("individual port power switching\n");
-		break;
-	case 0x02:
-	case 0x03:
-		USB_HUB_PRINTF("unknown reserved power switching mode\n");
-		break;
-	}
-
-	if (hub->desc.wHubCharacteristics & HUB_CHAR_COMPOUND)
-		USB_HUB_PRINTF("part of a compound device\n");
-	else
-		USB_HUB_PRINTF("standalone hub\n");
-
-	switch (hub->desc.wHubCharacteristics & HUB_CHAR_OCPM) {
-	case 0x00:
-		USB_HUB_PRINTF("global over-current protection\n");
-		break;
-	case 0x08:
-		USB_HUB_PRINTF("individual port over-current protection\n");
-		break;
-	case 0x10:
-	case 0x18:
-		USB_HUB_PRINTF("no over-current protection\n");
-		break;
-	}
-
-	USB_HUB_PRINTF("power on to power good time: %dms\n",
-			descriptor->bPwrOn2PwrGood * 2);
-	USB_HUB_PRINTF("hub controller current requirement: %dmA\n",
-			descriptor->bHubContrCurrent);
-
-	for (i = 0; i < dev->maxchild; i++)
-		USB_HUB_PRINTF("port %d is%s removable\n", i + 1,
-			hub->desc.DeviceRemovable[(i + 1) / 8] & \
-					   (1 << ((i + 1) % 8)) ? " not" : "");
-
-	if (sizeof(struct usb_hub_status) > USB_BUFSIZ) {
-		USB_HUB_PRINTF("%s: failed to get Status - " \
-				"too long: %d\n", __func__, descriptor->bLength);
-		return -1;
-	}
-
-	if (usb_get_hub_status(dev, buffer) < 0) {
-		USB_HUB_PRINTF("%s: failed to get Status %lX\n", __func__,
-				dev->status);
-		return -1;
-	}
-
-	hubsts = (struct usb_hub_status *)buffer;
-	USB_HUB_PRINTF("get_hub_status returned status %X, change %X\n",
-			le16_to_cpu(hubsts->wHubStatus),
-			le16_to_cpu(hubsts->wHubChange));
-	USB_HUB_PRINTF("local power source is %s\n",
-		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_LOCAL_POWER) ? \
-		"lost (inactive)" : "good");
-	USB_HUB_PRINTF("%sover-current condition exists\n",
-		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_OVERCURRENT) ? \
-		"" : "no ");
-	usb_hub_power_on(hub);
-
-	for (i = 0; i < dev->maxchild; i++) {
-		struct usb_port_status portsts;
-		unsigned short portstatus, portchange;
-
-		if (usb_get_port_status(dev, i + 1, &portsts) < 0) {
-			USB_HUB_PRINTF("get_port_status failed\n");
-			continue;
-		}
-
-		portstatus = le16_to_cpu(portsts.wPortStatus);
-		portchange = le16_to_cpu(portsts.wPortChange);
-		USB_HUB_PRINTF("Port %d Status %X Change %X\n",
-				i + 1, portstatus, portchange);
-
-		if (portchange & USB_PORT_STAT_C_CONNECTION) {
-			USB_HUB_PRINTF("port %d connection change\n", i + 1);
-			usb_hub_port_connect_change(dev, i);
-		}
-		if (portchange & USB_PORT_STAT_C_ENABLE) {
-			USB_HUB_PRINTF("port %d enable change, status %x\n",
-					i + 1, portstatus);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_C_ENABLE);
-
-			/* EM interference sometimes causes bad shielded USB
-			 * devices to be shutdown by the hub, this hack enables
-			 * them again. Works at least with mouse driver */
-			if (!(portstatus & USB_PORT_STAT_ENABLE) &&
-			     (portstatus & USB_PORT_STAT_CONNECTION) &&
-			     ((dev->children[i]))) {
-				USB_HUB_PRINTF("already running port %i "  \
-						"disabled by hub (EMI?), " \
-						"re-enabling...\n", i + 1);
-					usb_hub_port_connect_change(dev, i);
-			}
-		}
-		if (portstatus & USB_PORT_STAT_SUSPEND) {
-			USB_HUB_PRINTF("port %d suspend change\n", i + 1);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_SUSPEND);
-		}
-
-		if (portchange & USB_PORT_STAT_C_OVERCURRENT) {
-			USB_HUB_PRINTF("port %d over-current change\n", i + 1);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_C_OVER_CURRENT);
-			usb_hub_power_on(hub);
-		}
-
-		if (portchange & USB_PORT_STAT_C_RESET) {
-			USB_HUB_PRINTF("port %d reset change\n", i + 1);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_C_RESET);
-		}
-	} /* end for i all ports */
-
-	return 0;
-}
-
-static int usb_hub_probe(struct usb_device *dev, int ifnum)
-{
-	struct usb_interface *iface;
-	struct usb_endpoint_descriptor *ep;
-	int ret;
-
-	iface = &dev->config.interface[ifnum];
-	/* Is it a hub? */
-	if (iface->desc.bInterfaceClass != USB_CLASS_HUB)
-		return 0;
-	/* Some hubs have a subclass of 1, which AFAICT according to the */
-	/*  specs is not defined, but it works */
-	if ((iface->desc.bInterfaceSubClass != 0) &&
-	    (iface->desc.bInterfaceSubClass != 1))
-		return 0;
-	/* Multiple endpoints? What kind of mutant ninja-hub is this? */
-	if (iface->desc.bNumEndpoints != 1)
-		return 0;
-	ep = &iface->ep_desc[0];
-	/* Output endpoint? Curiousier and curiousier.. */
-	if (!(ep->bEndpointAddress & USB_DIR_IN))
-		return 0;
-	/* If it's not an interrupt endpoint, we'd better punt! */
-	if ((ep->bmAttributes & 3) != 3)
-		return 0;
-	/* We found a hub */
-	USB_HUB_PRINTF("USB hub found\n");
-	ret = usb_hub_configure(dev);
-	return ret;
-}
-
 int usb_driver_register(struct usb_driver *drv)
 {
 	drv->driver.name = drv->name;
diff --git a/drivers/usb/core/usb.h b/drivers/usb/core/usb.h
new file mode 100644
index 0000000..3e79407
--- /dev/null
+++ b/drivers/usb/core/usb.h
@@ -0,0 +1,7 @@
+#ifndef __CORE_USB_H
+#define __CORE_USB_H
+
+struct usb_device *usb_alloc_new_device(void);
+int usb_new_device(struct usb_device *dev);
+
+#endif /* __CORE_USB_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
