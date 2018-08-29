Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuu3G-0000Qv-SS
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 06:34:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id j8-v6so1840481pll.12
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2018 23:33:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 Aug 2018 23:33:33 -0700
Message-Id: <20180829063333.31026-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180829063333.31026-1-andrew.smirnov@gmail.com>
References: <20180829063333.31026-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] USB: host: hub: Adjust device speed after every port reset
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

To account for the possibility of a device coming out of second reset
operating at different speed compared to first, move the code that
stores device speed to be a part of hub_port_reset(). This way any
speed change happening as a result of port reset could be accounted
for.

The above behaviour was observed on i.MX51 ZII RDU1, on USBH2 port
connected to SMSC2660 USB Hub/SD card reader. For reasons unclear,
first reset would put it into Full Speed mode whereas second would
result in switch to High Speed. Artifically disabling second reset
would result in the device operating at Full Speed.

Not doing second speed adjustement on that board result would result
in un-processed control transfer and failure to execute
usb_set_address().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/core/hub.c | 54 +++++++++++++++++++++---------------------
 drivers/usb/core/hub.h |  4 ++--
 drivers/usb/core/usb.c |  3 +--
 3 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 70f633ed8..39e5fe67d 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -112,32 +112,31 @@ static inline char *portspeed(int portstatus)
 		return "12 Mb/s";
 }
 
-int hub_port_reset(struct usb_device *dev, int port,
-			unsigned short *portstat)
+int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
 {
 	int tries;
 	struct usb_port_status portsts;
 	unsigned short portstatus, portchange;
 
-	dev_dbg(&dev->dev, "hub_port_reset: resetting port %d...\n", port);
+	dev_dbg(&hub->dev, "hub_port_reset: resetting port %d...\n", port);
 	for (tries = 0; tries < MAX_TRIES; tries++) {
 
-		usb_set_port_feature(dev, port + 1, USB_PORT_FEAT_RESET);
+		usb_set_port_feature(hub, port + 1, USB_PORT_FEAT_RESET);
 		mdelay(200);
 
-		if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
-			dev_dbg(&dev->dev, "get_port_status failed status %lX\n",
-					dev->status);
+		if (usb_get_port_status(hub, port + 1, &portsts) < 0) {
+			dev_dbg(&hub->dev, "get_port_status failed status %lX\n",
+					hub->status);
 			return -1;
 		}
 		portstatus = le16_to_cpu(portsts.wPortStatus);
 		portchange = le16_to_cpu(portsts.wPortChange);
 
-		dev_dbg(&dev->dev, "portstatus %x, change %x, %s\n",
+		dev_dbg(&hub->dev, "portstatus %x, change %x, %s\n",
 				portstatus, portchange,
 				portspeed(portstatus));
 
-		dev_dbg(&dev->dev, "STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
+		dev_dbg(&hub->dev, "STAT_C_CONNECTION = %d STAT_CONNECTION = %d" \
 			       "  USB_PORT_STAT_ENABLE %d\n",
 			(portchange & USB_PORT_STAT_C_CONNECTION) ? 1 : 0,
 			(portstatus & USB_PORT_STAT_CONNECTION) ? 1 : 0,
@@ -154,14 +153,21 @@ int hub_port_reset(struct usb_device *dev, int port,
 	}
 
 	if (tries == MAX_TRIES) {
-		dev_dbg(&dev->dev, "Cannot enable port %i after %i retries, " \
+		dev_dbg(&hub->dev, "Cannot enable port %i after %i retries, " \
 				"disabling port.\n", port + 1, MAX_TRIES);
-		dev_dbg(&dev->dev, "Maybe the USB cable is bad?\n");
+		dev_dbg(&hub->dev, "Maybe the USB cable is bad?\n");
 		return -1;
 	}
 
-	usb_clear_port_feature(dev, port + 1, USB_PORT_FEAT_C_RESET);
-	*portstat = portstatus;
+	usb_clear_port_feature(hub, port + 1, USB_PORT_FEAT_C_RESET);
+
+	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
+		usb->speed = USB_SPEED_HIGH;
+	else if (portstatus & USB_PORT_STAT_LOW_SPEED)
+		usb->speed = USB_SPEED_LOW;
+	else
+		usb->speed = USB_SPEED_FULL;
+
 	return 0;
 }
 
@@ -203,26 +209,20 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 
 	mdelay(200);
 
-	/* Reset the port */
-	if (hub_port_reset(dev, port, &portstatus) < 0) {
+	/* Allocate a new device struct for the port */
+	usb = usb_alloc_new_device();
+	usb->dev.parent = &dev->dev;
+	usb->host = dev->host;
+
+	/* Reset it */
+	if (hub_port_reset(dev, port, usb) < 0) {
 		dev_warn(&dev->dev, "cannot reset port %i!?\n", port + 1);
+		usb_free_device(usb);
 		return;
 	}
 
 	mdelay(200);
 
-	/* Allocate a new device struct for it */
-	usb = usb_alloc_new_device();
-	usb->dev.parent = &dev->dev;
-	usb->host = dev->host;
-
-	if (portstatus & USB_PORT_STAT_HIGH_SPEED)
-		usb->speed = USB_SPEED_HIGH;
-	else if (portstatus & USB_PORT_STAT_LOW_SPEED)
-		usb->speed = USB_SPEED_LOW;
-	else
-		usb->speed = USB_SPEED_FULL;
-
 	dev->children[port] = usb;
 	usb->parent = dev;
 	usb->portnr = port + 1;
diff --git a/drivers/usb/core/hub.h b/drivers/usb/core/hub.h
index fcf1f0c18..74921b66f 100644
--- a/drivers/usb/core/hub.h
+++ b/drivers/usb/core/hub.h
@@ -1,7 +1,7 @@
 #ifndef __CORE_HUB_H
 #define __CORE_HUB_H
 
-int hub_port_reset(struct usb_device *dev, int port,
-			unsigned short *portstat);
+int hub_port_reset(struct usb_device *hub, int port,
+		   struct usb_device *usb);
 
 #endif /* __CORE_HUB_H */
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9170ba4d5..70ded6ded 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -312,7 +312,6 @@ int usb_new_device(struct usb_device *dev)
 	void *buf;
 	struct usb_device_descriptor *desc;
 	struct usb_device *parent = dev->parent;
-	unsigned short portstatus;
 	char str[16];
 
 	buf = dma_alloc(USB_BUFSIZ);
@@ -352,7 +351,7 @@ int usb_new_device(struct usb_device *dev)
 	/* find the port number we're at */
 	if (parent) {
 		/* reset the port for the second time */
-		err = hub_port_reset(dev->parent, dev->portnr - 1, &portstatus);
+		err = hub_port_reset(dev->parent, dev->portnr - 1, dev);
 		if (err < 0) {
 			printf("\n     Couldn't reset port %i\n", dev->portnr);
 			goto err_out;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
