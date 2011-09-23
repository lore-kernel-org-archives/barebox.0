Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R6zhr-0003DW-Nj
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 06:57:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 08:57:45 +0200
Message-Id: <1316761066-29811-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
References: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] Extended USB device matching.
To: barebox@lists.infradead.org

From: Rosen Kolev <rosen.kolev@amk-drives.bg>

Extended the USB device matching, adding checks for interface class,
interface subclass, and interface protocol.
---
 drivers/usb/core/usb.c |   34 ++++++++++++++++++++++++++++++++++
 include/usb/usb.h      |   22 ++++++++++++++++++++++
 2 files changed, 56 insertions(+), 0 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index b01a797..b538cc6 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1290,10 +1290,13 @@ static int usb_match_device(struct usb_device *dev, const struct usb_device_id *
 	return 1;
 }
 
+
 /* returns 0 if no match, 1 if match */
 static int usb_match_one_id(struct usb_device *usbdev,
 		     const struct usb_device_id *id)
 {
+	int ifno;
+
 	/* proc_connectinfo in devio.c may call us with id == NULL. */
 	if (id == NULL)
 		return 0;
@@ -1301,6 +1304,37 @@ static int usb_match_one_id(struct usb_device *usbdev,
 	if (!usb_match_device(usbdev, id))
 		return 0;
 
+	/* The interface class, subclass, and protocol should never be
+	 * checked for a match if the device class is Vendor Specific,
+	 * unless the match record specifies the Vendor ID. */
+	if (usbdev->descriptor.bDeviceClass == USB_CLASS_VENDOR_SPEC &&
+			!(id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
+			(id->match_flags & USB_DEVICE_ID_MATCH_INT_INFO))
+		return 0;
+
+	if ( (id->match_flags & USB_DEVICE_ID_MATCH_INT_INFO) ) {
+		/* match any interface */
+		for (ifno=0; ifno<usbdev->config.no_of_if; ifno++) {
+			struct usb_interface_descriptor *intf;
+			intf = &usbdev->config.if_desc[ifno];
+
+			if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_CLASS) &&
+			    (id->bInterfaceClass != intf->bInterfaceClass))
+				continue;
+
+			if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_SUBCLASS) &&
+			    (id->bInterfaceSubClass != intf->bInterfaceSubClass))
+				continue;
+
+			if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_PROTOCOL) &&
+			    (id->bInterfaceProtocol != intf->bInterfaceProtocol))
+				continue;
+			break;
+		}
+		if (ifno >= usbdev->config.no_of_if)
+			return 0;
+	}
+
 	return 1;
 }
 EXPORT_SYMBOL(usb_match_one_id);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 6ef9977..3961f29 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -480,6 +480,13 @@ struct usb_device_id {
 #define USB_DEVICE_ID_MATCH_VENDOR          0x0001
 #define USB_DEVICE_ID_MATCH_DEVICE \
 		(USB_DEVICE_ID_MATCH_VENDOR | USB_DEVICE_ID_MATCH_PRODUCT)
+#define USB_DEVICE_ID_MATCH_INT_CLASS       0x0080
+#define USB_DEVICE_ID_MATCH_INT_SUBCLASS    0x0100
+#define USB_DEVICE_ID_MATCH_INT_PROTOCOL    0x0200
+#define USB_DEVICE_ID_MATCH_INT_INFO \
+		(USB_DEVICE_ID_MATCH_INT_CLASS | \
+		USB_DEVICE_ID_MATCH_INT_SUBCLASS | \
+		USB_DEVICE_ID_MATCH_INT_PROTOCOL)
 
 /**
  * USB_DEVICE - macro used to describe a specific usb device
@@ -494,6 +501,21 @@ struct usb_device_id {
 	.idVendor = (vend), \
 	.idProduct = (prod)
 
+/**
+ * USB_INTERFACE_INFO - macro used to describe a class of usb interfaces
+ * @cl: bInterfaceClass value
+ * @sc: bInterfaceSubClass value
+ * @pr: bInterfaceProtocol value
+ *
+ * This macro is used to create a struct usb_device_id that matches a
+ * specific class of interfaces.
+ */
+#define USB_INTERFACE_INFO(cl, sc, pr) \
+	.match_flags = USB_DEVICE_ID_MATCH_INT_INFO, \
+	.bInterfaceClass = (cl), \
+	.bInterfaceSubClass = (sc), \
+	.bInterfaceProtocol = (pr)
+
 #define USB_CTRL_SET_TIMEOUT   5000
 #define USB_CTRL_GET_TIMEOUT   5000
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
