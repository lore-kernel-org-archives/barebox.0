Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvML9-0000A7-Tb
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:56:01 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so1348300lbi.13
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:37 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.35
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:36 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:30 +0200
Message-Id: <1402646075-22747-14-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 13/18] usb: add musb support
To: barebox@lists.infradead.org

---
 include/usb/usb.h |   62 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index 1a369d2..6e204b4 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -27,6 +27,7 @@
 #include <driver.h>
 #include <usb/usb_defs.h>
 #include <asm/byteorder.h>
+#include <asm/unaligned.h>
 
 /* Everything is aribtrary */
 #define USB_ALTSETTINGALLOC		4
@@ -41,6 +42,31 @@
 
 #define USB_CNTL_TIMEOUT 100 /* 100ms timeout */
 
+/**
+ * struct usb_ctrlrequest - SETUP data for a USB device control request
+ * @bRequestType: matches the USB bmRequestType field
+ * @bRequest: matches the USB bRequest field
+ * @wValue: matches the USB wValue field (le16 byte order)
+ * @wIndex: matches the USB wIndex field (le16 byte order)
+ * @wLength: matches the USB wLength field (le16 byte order)
+ *
+ * This structure is used to send control requests to a USB device.  It matches
+ * the different fields of the USB 2.0 Spec section 9.3, table 9-2.  See the
+ * USB spec for a fuller description of the different fields, and what they are
+ * used for.
+ *
+ * Note that the driver for any interface can issue control requests.
+ * For most devices, interfaces don't coordinate with each other, so
+ * such requests may be made at any time.
+ */
+struct usb_ctrlrequest {
+	__u8 bRequestType;
+	__u8 bRequest;
+	__le16 wValue;
+	__le16 wIndex;
+	__le16 wLength;
+} __attribute__ ((packed));
+
 /* String descriptor */
 struct usb_string_descriptor {
 	unsigned char	bLength;
@@ -539,4 +565,40 @@ enum usb_phy_interface {
 	USBPHY_INTERFACE_MODE_SERIAL,
 	USBPHY_INTERFACE_MODE_HSIC,
 };
+
+
+/**
+ * usb_endpoint_maxp - get endpoint's max packet size
+ * @epd: endpoint to be checked
+ *
+ * Returns @epd's max packet
+ */
+static inline int usb_endpoint_maxp(const struct usb_endpoint_descriptor *epd)
+{
+	return __le16_to_cpu(get_unaligned(&epd->wMaxPacketSize));
+}
+
+/**
+ * usb_endpoint_type - get the endpoint's transfer type
+ * @epd: endpoint to be checked
+ *
+ * Returns one of USB_ENDPOINT_XFER_{CONTROL, ISOC, BULK, INT} according
+ * to @epd's transfer type.
+ */
+static inline int usb_endpoint_type(const struct usb_endpoint_descriptor *epd)
+{
+	return epd->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
+}
+
+/**
+ * usb_endpoint_num - get the endpoint's number
+ * @epd: endpoint to be checked
+ *
+ * Returns @epd's number: 0 to 15.
+ */
+static inline int usb_endpoint_num(const struct usb_endpoint_descriptor *epd)
+{
+	return epd->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK;
+}
+
 #endif /*_USB_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
