Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003iz-Ap
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:03 +0200
Message-Id: <1405761367-23724-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] USB: host: factor out port configuration to separate
 function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 125 +++++++++++++++++++++++++++++--------------------
 1 file changed, 74 insertions(+), 51 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 9c87037..689a79c 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -227,6 +227,65 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 	}
 }
 
+static int usb_hub_configure_port(struct usb_device *dev, int port)
+{
+	struct usb_port_status portsts;
+	unsigned short portstatus, portchange;
+
+	if (usb_get_port_status(dev, port + 1, &portsts) < 0) {
+		dev_dbg(&dev->dev, "get_port_status failed\n");
+		return -EIO;
+	}
+
+	portstatus = le16_to_cpu(portsts.wPortStatus);
+	portchange = le16_to_cpu(portsts.wPortChange);
+	dev_dbg(&dev->dev, "Port %d Status %X Change %X\n",
+			port + 1, portstatus, portchange);
+
+	if (portchange & USB_PORT_STAT_C_CONNECTION) {
+		dev_dbg(&dev->dev, "port %d connection change\n", port + 1);
+		usb_hub_port_connect_change(dev, port);
+	}
+	if (portchange & USB_PORT_STAT_C_ENABLE) {
+		dev_dbg(&dev->dev, "port %d enable change, status %x\n",
+				port + 1, portstatus);
+		usb_clear_port_feature(dev, port + 1,
+					USB_PORT_FEAT_C_ENABLE);
+
+		/* EM interference sometimes causes bad shielded USB
+		 * devices to be shutdown by the hub, this hack enables
+		 * them again. Works at least with mouse driver */
+		if (!(portstatus & USB_PORT_STAT_ENABLE) &&
+		     (portstatus & USB_PORT_STAT_CONNECTION) &&
+		     ((dev->children[port]))) {
+			dev_dbg(&dev->dev, "already running port %i "  \
+					"disabled by hub (EMI?), " \
+					"re-enabling...\n", port + 1);
+				usb_hub_port_connect_change(dev, port);
+		}
+	}
+	if (portstatus & USB_PORT_STAT_SUSPEND) {
+		dev_dbg(&dev->dev, "port %d suspend change\n", port + 1);
+		usb_clear_port_feature(dev, port + 1,
+					USB_PORT_FEAT_SUSPEND);
+	}
+
+	if (portchange & USB_PORT_STAT_C_OVERCURRENT) {
+		dev_dbg(&dev->dev, "port %d over-current change\n", port + 1);
+		usb_clear_port_feature(dev, port + 1,
+					USB_PORT_FEAT_C_OVER_CURRENT);
+		usb_hub_power_on(dev->hub);
+	}
+
+	if (portchange & USB_PORT_STAT_C_RESET) {
+		dev_dbg(&dev->dev, "port %d reset change\n", port + 1);
+		usb_clear_port_feature(dev, port + 1,
+					USB_PORT_FEAT_C_RESET);
+	}
+
+	return 0;
+}
+
 static int usb_hub_configure(struct usb_device *dev)
 {
 	unsigned char buffer[USB_BUFSIZ], *bitmap;
@@ -346,61 +405,23 @@ static int usb_hub_configure(struct usb_device *dev)
 		"" : "no ");
 	usb_hub_power_on(hub);
 
-	for (i = 0; i < dev->maxchild; i++) {
-		struct usb_port_status portsts;
-		unsigned short portstatus, portchange;
-
-		if (usb_get_port_status(dev, i + 1, &portsts) < 0) {
-			dev_dbg(&dev->dev, "get_port_status failed\n");
-			continue;
-		}
+	for (i = 0; i < dev->maxchild; i++)
+		usb_hub_configure_port(dev, i);
 
-		portstatus = le16_to_cpu(portsts.wPortStatus);
-		portchange = le16_to_cpu(portsts.wPortChange);
-		dev_dbg(&dev->dev, "Port %d Status %X Change %X\n",
-				i + 1, portstatus, portchange);
+	return 0;
+}
 
-		if (portchange & USB_PORT_STAT_C_CONNECTION) {
-			dev_dbg(&dev->dev, "port %d connection change\n", i + 1);
-			usb_hub_port_connect_change(dev, i);
-		}
-		if (portchange & USB_PORT_STAT_C_ENABLE) {
-			dev_dbg(&dev->dev, "port %d enable change, status %x\n",
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
-				dev_dbg(&dev->dev, "already running port %i "  \
-						"disabled by hub (EMI?), " \
-						"re-enabling...\n", i + 1);
-					usb_hub_port_connect_change(dev, i);
-			}
-		}
-		if (portstatus & USB_PORT_STAT_SUSPEND) {
-			dev_dbg(&dev->dev, "port %d suspend change\n", i + 1);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_SUSPEND);
-		}
+static int usb_hub_detect(struct device_d *dev)
+{
+	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
+	int i;
 
-		if (portchange & USB_PORT_STAT_C_OVERCURRENT) {
-			dev_dbg(&dev->dev, "port %d over-current change\n", i + 1);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_C_OVER_CURRENT);
-			usb_hub_power_on(hub);
-		}
+	usb_hub_configure(usbdev);
 
-		if (portchange & USB_PORT_STAT_C_RESET) {
-			dev_dbg(&dev->dev, "port %d reset change\n", i + 1);
-			usb_clear_port_feature(dev, i + 1,
-						USB_PORT_FEAT_C_RESET);
-		}
-	} /* end for i all ports */
+	for (i = 0; i < usbdev->maxchild; i++) {
+		if (usbdev->children[i])
+			device_detect(&usbdev->children[i]->dev);
+	}
 
 	return 0;
 }
@@ -408,6 +429,8 @@ static int usb_hub_configure(struct usb_device *dev)
 static int usb_hub_probe(struct usb_device *usbdev,
 			 const struct usb_device_id *id)
 {
+	usbdev->dev.detect = usb_hub_detect;
+
 	return usb_hub_configure(usbdev);
 }
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
