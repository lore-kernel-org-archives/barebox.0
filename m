Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X87X4-0006il-4Y
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 12:45:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Jul 2014 14:44:38 +0200
Message-Id: <1405687479-3507-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
References: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] USB: Use descriptors from ch9.h
To: barebox@lists.infradead.org

Use the descriptors from ch9.h instead of duplicating them
in usb.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c |  5 ----
 include/usb/usb.h        | 63 +-----------------------------------------------
 2 files changed, 1 insertion(+), 67 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index e9edf40..a51cfda 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -6,11 +6,6 @@
 #include <malloc.h>
 #include <linux/phy.h>
 
-static inline int usb_endpoint_dir_in(const struct usb_endpoint_descriptor *epd)
-{
-	return ((epd->bEndpointAddress & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN);
-}
-
 /* handles CDC Ethernet and many other network "bulk data" interfaces */
 int usbnet_get_endpoints(struct usbnet *dev)
 {
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 74b97a9..a0bc1d2 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -23,6 +23,7 @@
 #define _USB_H_
 
 #include <driver.h>
+#include <usb/ch9.h>
 #include <usb/usb_defs.h>
 #include <asm/byteorder.h>
 
@@ -48,68 +49,6 @@ struct devrequest {
 	unsigned short	length;
 } __attribute__ ((packed));
 
-/* All standard descriptors have these 2 fields in common */
-struct usb_descriptor_header {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-} __attribute__ ((packed));
-
-/* Device descriptor */
-struct usb_device_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned short	bcdUSB;
-	unsigned char	bDeviceClass;
-	unsigned char	bDeviceSubClass;
-	unsigned char	bDeviceProtocol;
-	unsigned char	bMaxPacketSize0;
-	unsigned short	idVendor;
-	unsigned short	idProduct;
-	unsigned short	bcdDevice;
-	unsigned char	iManufacturer;
-	unsigned char	iProduct;
-	unsigned char	iSerialNumber;
-	unsigned char	bNumConfigurations;
-} __attribute__ ((packed));
-
-/* Endpoint descriptor */
-struct usb_endpoint_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned char	bEndpointAddress;
-	unsigned char	bmAttributes;
-	unsigned short	wMaxPacketSize;
-	unsigned char	bInterval;
-	unsigned char	bRefresh;
-	unsigned char	bSynchAddress;
-} __attribute__ ((packed)) __attribute__ ((aligned(2)));
-
-/* Interface descriptor */
-struct usb_interface_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned char	bInterfaceNumber;
-	unsigned char	bAlternateSetting;
-	unsigned char	bNumEndpoints;
-	unsigned char	bInterfaceClass;
-	unsigned char	bInterfaceSubClass;
-	unsigned char	bInterfaceProtocol;
-	unsigned char	iInterface;
-} __attribute__ ((packed));
-
-
-/* Configuration descriptor information.. */
-struct usb_config_descriptor {
-	unsigned char	bLength;
-	unsigned char	bDescriptorType;
-	unsigned short	wTotalLength;
-	unsigned char	bNumInterfaces;
-	unsigned char	bConfigurationValue;
-	unsigned char	iConfiguration;
-	unsigned char	bmAttributes;
-	unsigned char	MaxPower;
-} __attribute__ ((packed));
-
 enum {
 	/* Maximum packet size; encoded as 0,1,2,3 = 8,16,32,64 */
 	PACKET_SIZE_8   = 0,
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
