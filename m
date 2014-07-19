Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003ix-A7
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:01 +0200
Message-Id: <1405761367-23724-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] USB: host: hub: Use dev_dbg
To: barebox@lists.infradead.org

Now that a hub is a driver use dev_dbg rather than plain
printf.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 88 +++++++++++++++++++++++---------------------------
 1 file changed, 40 insertions(+), 48 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 26c2ca0..6d5e3b9 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -28,14 +28,6 @@
 #include "usb.h"
 #include "hub.h"
 
-#undef	USB_HUB_DEBUG
-
-#ifdef	USB_HUB_DEBUG
-#define	USB_HUB_PRINTF(fmt, args...)	printf(fmt , ##args)
-#else
-#define USB_HUB_PRINTF(fmt, args...)
-#endif
-
 #define USB_BUFSIZ  512
 
 static int usb_get_hub_descriptor(struct usb_device *dev, void *data, int size)
@@ -81,10 +73,10 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 
 	dev = hub->pusb_dev;
 	/* Enable power to the ports */
-	USB_HUB_PRINTF("enabling power on all ports\n");
+	dev_dbg(&dev->dev, "enabling power on all ports\n");
 	for (i = 0; i < dev->maxchild; i++) {
 		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
-		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
+		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
 	}
 	/* power on is encoded in 2ms increments -> times 2 for the actual delay */
 	mdelay(hub->desc.bPwrOn2PwrGood*2);
@@ -109,25 +101,25 @@ int hub_port_reset(struct usb_device *dev, int port,
 	struct usb_port_status portsts;
 	unsigned short portstatus, portchange;
 
-	USB_HUB_PRINTF("hub_port_reset: resetting port %d...\n", port);
+	dev_dbg(&dev->dev, "hub_port_reset: resetting port %d...\n", port);
 	for (tries = 0; tries < MAX_TRIES; tries++) {
 
 		usb_set_port_feature(dev, port + 1, USB_PORT_FEAT_RESET);
 		wait_ms(200);
 
 		if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-			USB_HUB_PRINTF("get_port_status failed status %lX\n",
+			dev_dbg(&dev->dev, "get_port_status failed status %lX\n",
 					dev->status);
 			return -1;
 		}
 		portstatus = le16_to_cpu(portsts.wPortStatus);
 		portchange = le16_to_cpu(portsts.wPortChange);
 
-		USB_HUB_PRINTF("portstatus %x, change %x, %s\n",
+		dev_dbg(&dev->dev, "portstatus %x, change %x, %s\n",
 				portstatus, portchange,
 				portspeed(portstatus));
 
-		USB_HUB_PRINTF("STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
+		dev_dbg(&dev->dev, "STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
 			       "  USB_PORT_STAT_ENABLE %d\n",
 			(portchange & USB_PORT_STAT_C_CONNECTION) ? 1 : 0,
 			(portstatus & USB_PORT_STAT_CONNECTION) ? 1 : 0,
@@ -144,9 +136,9 @@ int hub_port_reset(struct usb_device *dev, int port,
 	}
 
 	if (tries == MAX_TRIES) {
-		USB_HUB_PRINTF("Cannot enable port %i after %i retries, " \
+		dev_dbg(&dev->dev, "Cannot enable port %i after %i retries, " \
 				"disabling port.\n", port + 1, MAX_TRIES);
-		USB_HUB_PRINTF("Maybe the USB cable is bad?\n");
+		dev_dbg(&dev->dev, "Maybe the USB cable is bad?\n");
 		return -1;
 	}
 
@@ -164,13 +156,13 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 
 	/* Check status */
 	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-		USB_HUB_PRINTF("get_port_status failed\n");
+		dev_dbg(&dev->dev, "get_port_status failed\n");
 		return;
 	}
 
 	portstatus = le16_to_cpu(portsts.wPortStatus);
 	portchange = le16_to_cpu(portsts.wPortChange);
-	USB_HUB_PRINTF("portstatus %x, change %x, %s\n",
+	dev_dbg(&dev->dev, "portstatus %x, change %x, %s\n",
 			portstatus, portchange, portspeed(portstatus));
 
 	/* Clear the connection change status */
@@ -179,7 +171,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	/* Disconnect any existing devices under this port */
 	if (((!(portstatus & USB_PORT_STAT_CONNECTION)) &&
 	     (!(portstatus & USB_PORT_STAT_ENABLE))) || (dev->children[port])) {
-		USB_HUB_PRINTF("usb_disconnect(&hub->children[port]);\n");
+		dev_dbg(&dev->dev, "usb_disconnect(&hub->children[port]);\n");
 		/* Return now if nothing is connected */
 		if (!(portstatus & USB_PORT_STAT_CONNECTION))
 			return;
@@ -213,7 +205,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	/* Run it through the hoops (find a driver, etc) */
 	if (usb_new_device(usb)) {
 		/* Woops, disable the port */
-		USB_HUB_PRINTF("hub: disabling port %d\n", port + 1);
+		dev_dbg(&dev->dev, "hub: disabling port %d\n", port + 1);
 		usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_ENABLE);
 	}
 }
@@ -232,7 +224,7 @@ static int usb_hub_configure(struct usb_device *dev)
 	hub->pusb_dev = dev;
 	/* Get the the hub descriptor */
 	if (usb_get_hub_descriptor(dev, buffer, 4) < 0) {
-		USB_HUB_PRINTF("%s: failed to get hub " \
+		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				   "descriptor, giving up %lX\n", __func__, dev->status);
 		return -1;
 	}
@@ -241,14 +233,14 @@ static int usb_hub_configure(struct usb_device *dev)
 	/* silence compiler warning if USB_BUFSIZ is > 256 [= sizeof(char)] */
 	i = descriptor->bLength;
 	if (i > USB_BUFSIZ) {
-		USB_HUB_PRINTF("%s: failed to get hub " \
+		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				"descriptor - too long: %d\n", __func__,
 				descriptor->bLength);
 		return -1;
 	}
 
 	if (usb_get_hub_descriptor(dev, buffer, descriptor->bLength) < 0) {
-		USB_HUB_PRINTF("%s: failed to get hub " \
+		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				"descriptor 2nd giving up %lX\n", __func__, dev->status);
 		return -1;
 	}
@@ -270,69 +262,69 @@ static int usb_hub_configure(struct usb_device *dev)
 		hub->desc.DeviceRemovable[i] = descriptor->PortPowerCtrlMask[i];
 
 	dev->maxchild = descriptor->bNbrPorts;
-	USB_HUB_PRINTF("%d ports detected\n", dev->maxchild);
+	dev_dbg(&dev->dev, "%d ports detected\n", dev->maxchild);
 
 	switch (hub->desc.wHubCharacteristics & HUB_CHAR_LPSM) {
 	case 0x00:
-		USB_HUB_PRINTF("ganged power switching\n");
+		dev_dbg(&dev->dev, "ganged power switching\n");
 		break;
 	case 0x01:
-		USB_HUB_PRINTF("individual port power switching\n");
+		dev_dbg(&dev->dev, "individual port power switching\n");
 		break;
 	case 0x02:
 	case 0x03:
-		USB_HUB_PRINTF("unknown reserved power switching mode\n");
+		dev_dbg(&dev->dev, "unknown reserved power switching mode\n");
 		break;
 	}
 
 	if (hub->desc.wHubCharacteristics & HUB_CHAR_COMPOUND)
-		USB_HUB_PRINTF("part of a compound device\n");
+		dev_dbg(&dev->dev, "part of a compound device\n");
 	else
-		USB_HUB_PRINTF("standalone hub\n");
+		dev_dbg(&dev->dev, "standalone hub\n");
 
 	switch (hub->desc.wHubCharacteristics & HUB_CHAR_OCPM) {
 	case 0x00:
-		USB_HUB_PRINTF("global over-current protection\n");
+		dev_dbg(&dev->dev, "global over-current protection\n");
 		break;
 	case 0x08:
-		USB_HUB_PRINTF("individual port over-current protection\n");
+		dev_dbg(&dev->dev, "individual port over-current protection\n");
 		break;
 	case 0x10:
 	case 0x18:
-		USB_HUB_PRINTF("no over-current protection\n");
+		dev_dbg(&dev->dev, "no over-current protection\n");
 		break;
 	}
 
-	USB_HUB_PRINTF("power on to power good time: %dms\n",
+	dev_dbg(&dev->dev, "power on to power good time: %dms\n",
 			descriptor->bPwrOn2PwrGood * 2);
-	USB_HUB_PRINTF("hub controller current requirement: %dmA\n",
+	dev_dbg(&dev->dev, "hub controller current requirement: %dmA\n",
 			descriptor->bHubContrCurrent);
 
 	for (i = 0; i < dev->maxchild; i++)
-		USB_HUB_PRINTF("port %d is%s removable\n", i + 1,
+		dev_dbg(&dev->dev, "port %d is%s removable\n", i + 1,
 			hub->desc.DeviceRemovable[(i + 1) / 8] & \
 					   (1 << ((i + 1) % 8)) ? " not" : "");
 
 	if (sizeof(struct usb_hub_status) > USB_BUFSIZ) {
-		USB_HUB_PRINTF("%s: failed to get Status - " \
+		dev_dbg(&dev->dev, "%s: failed to get Status - " \
 				"too long: %d\n", __func__, descriptor->bLength);
 		return -1;
 	}
 
 	if (usb_get_hub_status(dev, buffer) < 0) {
-		USB_HUB_PRINTF("%s: failed to get Status %lX\n", __func__,
+		dev_dbg(&dev->dev, "%s: failed to get Status %lX\n", __func__,
 				dev->status);
 		return -1;
 	}
 
 	hubsts = (struct usb_hub_status *)buffer;
-	USB_HUB_PRINTF("get_hub_status returned status %X, change %X\n",
+	dev_dbg(&dev->dev, "get_hub_status returned status %X, change %X\n",
 			le16_to_cpu(hubsts->wHubStatus),
 			le16_to_cpu(hubsts->wHubChange));
-	USB_HUB_PRINTF("local power source is %s\n",
+	dev_dbg(&dev->dev, "local power source is %s\n",
 		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_LOCAL_POWER) ? \
 		"lost (inactive)" : "good");
-	USB_HUB_PRINTF("%sover-current condition exists\n",
+	dev_dbg(&dev->dev, "%sover-current condition exists\n",
 		(le16_to_cpu(hubsts->wHubStatus) & HUB_STATUS_OVERCURRENT) ? \
 		"" : "no ");
 	usb_hub_power_on(hub);
@@ -342,21 +334,21 @@ static int usb_hub_configure(struct usb_device *dev)
 		unsigned short portstatus, portchange;
 
 		if (usb_get_port_status(dev, i + 1, &portsts) < 0) {
-			USB_HUB_PRINTF("get_port_status failed\n");
+			dev_dbg(&dev->dev, "get_port_status failed\n");
 			continue;
 		}
 
 		portstatus = le16_to_cpu(portsts.wPortStatus);
 		portchange = le16_to_cpu(portsts.wPortChange);
-		USB_HUB_PRINTF("Port %d Status %X Change %X\n",
+		dev_dbg(&dev->dev, "Port %d Status %X Change %X\n",
 				i + 1, portstatus, portchange);
 
 		if (portchange & USB_PORT_STAT_C_CONNECTION) {
-			USB_HUB_PRINTF("port %d connection change\n", i + 1);
+			dev_dbg(&dev->dev, "port %d connection change\n", i + 1);
 			usb_hub_port_connect_change(dev, i);
 		}
 		if (portchange & USB_PORT_STAT_C_ENABLE) {
-			USB_HUB_PRINTF("port %d enable change, status %x\n",
+			dev_dbg(&dev->dev, "port %d enable change, status %x\n",
 					i + 1, portstatus);
 			usb_clear_port_feature(dev, i + 1,
 						USB_PORT_FEAT_C_ENABLE);
@@ -367,27 +359,27 @@ static int usb_hub_configure(struct usb_device *dev)
 			if (!(portstatus & USB_PORT_STAT_ENABLE) &&
 			     (portstatus & USB_PORT_STAT_CONNECTION) &&
 			     ((dev->children[i]))) {
-				USB_HUB_PRINTF("already running port %i "  \
+				dev_dbg(&dev->dev, "already running port %i "  \
 						"disabled by hub (EMI?), " \
 						"re-enabling...\n", i + 1);
 					usb_hub_port_connect_change(dev, i);
 			}
 		}
 		if (portstatus & USB_PORT_STAT_SUSPEND) {
-			USB_HUB_PRINTF("port %d suspend change\n", i + 1);
+			dev_dbg(&dev->dev, "port %d suspend change\n", i + 1);
 			usb_clear_port_feature(dev, i + 1,
 						USB_PORT_FEAT_SUSPEND);
 		}
 
 		if (portchange & USB_PORT_STAT_C_OVERCURRENT) {
-			USB_HUB_PRINTF("port %d over-current change\n", i + 1);
+			dev_dbg(&dev->dev, "port %d over-current change\n", i + 1);
 			usb_clear_port_feature(dev, i + 1,
 						USB_PORT_FEAT_C_OVER_CURRENT);
 			usb_hub_power_on(hub);
 		}
 
 		if (portchange & USB_PORT_STAT_C_RESET) {
-			USB_HUB_PRINTF("port %d reset change\n", i + 1);
+			dev_dbg(&dev->dev, "port %d reset change\n", i + 1);
 			usb_clear_port_feature(dev, i + 1,
 						USB_PORT_FEAT_C_RESET);
 		}
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
