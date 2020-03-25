Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00053D-Fk
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:48 +0100
Message-Id: <20200325123111.9612-2-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/24] usb: hub: Make debugging output more consistent
To: Barebox List <barebox@lists.infradead.org>

Some of the messages print the port they belong to, others don't. Print
the port consistently in all debugging messages. Also remove some stray
'\' in the messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 59 ++++++++++++++++++++++--------------------
 1 file changed, 31 insertions(+), 28 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 466bbe527b..4c9bcc4e5d 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -95,7 +95,8 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 	 */
 	for (i = 0; i < dev->maxchild; i++) {
 		usb_clear_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
-		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
+		dev_dbg(&dev->dev, "port%d: usb_clear_port_feature returns 0x%08lx\n",
+			i + 1, dev->status);
 	}
 
 	/* Enable power to the ports */
@@ -103,7 +104,8 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 
 	for (i = 0; i < dev->maxchild; i++) {
 		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
-		dev_dbg(&dev->dev, "port %d returns %lX\n", i + 1, dev->status);
+		dev_dbg(&dev->dev, "port%d: usb_set_port_feature returns 0x%08lx\n",
+			i + 1, dev->status);
 	}
 
 	/*
@@ -120,8 +122,7 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 	 */
 	hub->connect_timeout = hub->query_delay + 1000 * MSECOND;
 
-	dev_dbg(&dev->dev, "devnum=%d poweron: query_delay=%d \
-			connect_timeout=%d\n",
+	dev_dbg(&dev->dev, "devnum=%d poweron: query_delay=%d connect_timeout=%d\n",
 			dev->devnum, max(100, (int) pgood_delay),
 			max(100, (int) pgood_delay) + 1000);
 }
@@ -145,26 +146,28 @@ int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
 	unsigned short portstatus, portchange;
 	int delay = HUB_SHORT_RESET_TIME; /* start with short reset delay */
 
-	dev_dbg(&hub->dev, "hub_port_reset: resetting port %d...\n", port);
+	dev_dbg(&hub->dev, "port%d: resetting...\n", port + 1);
 	for (tries = 0; tries < MAX_TRIES; tries++) {
 
 		usb_set_port_feature(hub, port + 1, USB_PORT_FEAT_RESET);
 		mdelay(delay);
 
 		if (usb_get_port_status(hub, port + 1, &portsts) < 0) {
-			dev_dbg(&hub->dev, "get_port_status failed status %lX\n",
-					hub->status);
+			dev_dbg(&hub->dev, "port%d: get_port_status failed status 0x%lX\n",
+					port + 1, hub->status);
 			return -1;
 		}
 		portstatus = le16_to_cpu(portsts.wPortStatus);
 		portchange = le16_to_cpu(portsts.wPortChange);
 
-		dev_dbg(&hub->dev, "portstatus %x, change %x, %s\n",
+		dev_dbg(&hub->dev, "port%d: status 0x%04x, change 0x%04x, %s\n",
+				port + 1,
 				portstatus, portchange,
 				portspeed(portstatus));
 
-		dev_dbg(&hub->dev, "STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
+		dev_dbg(&hub->dev, "port%d: STAT_C_CONNECTION = %d STAT_CONNECTION = %d"
 			       "  USB_PORT_STAT_ENABLE %d\n",
+			port + 1,
 			(portchange & USB_PORT_STAT_C_CONNECTION) ? 1 : 0,
 			(portstatus & USB_PORT_STAT_CONNECTION) ? 1 : 0,
 			(portstatus & USB_PORT_STAT_ENABLE) ? 1 : 0);
@@ -181,8 +184,8 @@ int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
 	}
 
 	if (tries == MAX_TRIES) {
-		dev_dbg(&hub->dev, "Cannot enable port %i after %i retries, " \
-				"disabling port.\n", port + 1, MAX_TRIES);
+		dev_dbg(&hub->dev, "port%d: Cannot enable after %i retries, disabling port.\n",
+			port + 1, MAX_TRIES);
 		dev_dbg(&hub->dev, "Maybe the USB cable is bad?\n");
 		return -1;
 	}
@@ -208,21 +211,21 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 
 	/* Check status */
 	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-		dev_dbg(&dev->dev, "get_port_status failed\n");
+		dev_dbg(&dev->dev, "port%d: get_port_status failed\n", port + 1);
 		return;
 	}
 
 	portstatus = le16_to_cpu(portsts.wPortStatus);
 	portchange = le16_to_cpu(portsts.wPortChange);
-	dev_dbg(&dev->dev, "portstatus %x, change %x, %s\n",
-			portstatus, portchange, portspeed(portstatus));
+	dev_dbg(&dev->dev, "port%d: status 0x%04x, change 0x%04x, %s\n",
+			port + 1, portstatus, portchange, portspeed(portstatus));
 
 	/* Clear the connection change status */
 	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_CONNECTION);
 
 	/* Disconnect any existing devices under this port */
 	if (dev->children[port] && !(portstatus & USB_PORT_STAT_CONNECTION)) {
-		dev_dbg(&dev->dev, "disconnect detected on port %d\n", port + 1);
+		dev_dbg(&dev->dev, "port%d: disconnect detected\n", port + 1);
 		usb_remove_device(dev->children[port]);
 
 		if (!dev->parent && dev->host->usbphy)
@@ -242,7 +245,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 
 	/* Reset it */
 	if (hub_port_reset(dev, port, usb) < 0) {
-		dev_warn(&dev->dev, "cannot reset port %i!?\n", port + 1);
+		dev_warn(&dev->dev, "port%d: cannot reset\n", port + 1);
 		usb_free_device(usb);
 		return;
 	}
@@ -287,9 +290,9 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 		return 0;
 
 	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-		dev_dbg(&dev->dev, "get_port_status failed\n");
+		dev_dbg(&dev->dev, "port%d: get_port_status failed\n", port + 1);
 		if(get_time_ns() >= hub->connect_timeout) {
-			dev_dbg(&dev->dev, "port=%d: timeout\n", port + 1);
+			dev_dbg(&dev->dev, "port%d: timeout\n", port + 1);
 			/* Remove this device from scanning list */
 			goto remove;
 		}
@@ -298,12 +301,12 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 
 	portstatus = le16_to_cpu(portsts.wPortStatus);
 	portchange = le16_to_cpu(portsts.wPortChange);
-	dev_dbg(&dev->dev, "Port %d Status %X Change %X\n",
+	dev_dbg(&dev->dev, "port%d: Status 0x%04x Change 0x%04x\n",
 			port + 1, portstatus, portchange);
 
 	if (!(portchange & USB_PORT_STAT_C_CONNECTION)) {
 		if(get_time_ns() >= hub->connect_timeout) {
-			dev_dbg(&dev->dev, "port=%d: timeout\n", port + 1);
+			dev_dbg(&dev->dev, "port%d: timeout\n", port + 1);
 			/* Remove this device from scanning list */
 			goto remove;
 		}
@@ -315,12 +318,12 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 		return 0;
 
 	/* A new USB device is ready at this point */
-	dev_dbg(&dev->dev, "port=%d: USB dev found\n", port + 1);
+	dev_dbg(&dev->dev, "port%d: USB dev found\n", port + 1);
 
 	usb_hub_port_connect_change(dev, port);
 
 	if (portchange & USB_PORT_STAT_C_ENABLE) {
-		dev_dbg(&dev->dev, "port %d enable change, status %x\n",
+		dev_dbg(&dev->dev, "port%d: enable change, status 0x%04x\n",
 				port + 1, portstatus);
 		usb_clear_port_feature(dev, port + 1,
 					USB_PORT_FEAT_C_ENABLE);
@@ -331,21 +334,21 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 		if (!(portstatus & USB_PORT_STAT_ENABLE) &&
 		     (portstatus & USB_PORT_STAT_CONNECTION) &&
 		     ((dev->children[port]))) {
-			dev_dbg(&dev->dev, "already running port %i "  \
-					"disabled by hub (EMI?), " \
+			dev_dbg(&dev->dev, "port%d: already running, "
+					"disabled by hub (EMI?), "
 					"re-enabling...\n", port + 1);
 				usb_hub_port_connect_change(dev, port);
 		}
 	}
 
 	if (portstatus & USB_PORT_STAT_SUSPEND) {
-		dev_dbg(&dev->dev, "port %d suspend change\n", port + 1);
+		dev_dbg(&dev->dev, "port%d: suspend change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
 					USB_PORT_FEAT_SUSPEND);
 	}
 
 	if (portchange & USB_PORT_STAT_C_OVERCURRENT) {
-		dev_dbg(&dev->dev, "port %d over-current change\n", port + 1);
+		dev_dbg(&dev->dev, "port%d: over-current change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
 					USB_PORT_FEAT_C_OVER_CURRENT);
 		/* Only power-on this one port */
@@ -361,12 +364,12 @@ static int usb_scan_port(struct usb_device_scan *usb_scan)
 			return 0;
 
 		/* Otherwise the device will get removed */
-		dev_dbg(&dev->dev,"Port %d over-current occurred %d times\n",
+		dev_dbg(&dev->dev,"port%d: over-current occurred %d times\n",
 				port + 1, hub->overcurrent_count[port]);
 	}
 
 	if (portchange & USB_PORT_STAT_C_RESET) {
-		dev_dbg(&dev->dev, "port %d reset change\n", port + 1);
+		dev_dbg(&dev->dev, "port%d: reset change\n", port + 1);
 		usb_clear_port_feature(dev, port + 1,
 					USB_PORT_FEAT_C_RESET);
 	}
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
