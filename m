Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGX-0007fh-Ae
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BF8D627E102A
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:49:59 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:42 +0100
Message-Id: <20200122154950.22746-2-jmaselbas@kalray.eu>
In-Reply-To: <20200122154950.22746-1-jmaselbas@kalray.eu>
References: <20200122154950.22746-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 1/9] BACKPORT: usb: Add helper to extract bits 12:11 of
 wMaxPacketize
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

According to USB Specification 2.0 table 9-4,
wMaxPacketSize is a bitfield. Endpoint's maxpacket
is laid out in bits 10:0. For high-speed,
high-bandwidth isochronous endpoints, bits 12:11
contain a multiplier to tell us how many
transactions we want to try per uframe.

This means that if we want an isochronous endpoint
to issue 3 transfers of 1024 bytes per uframe,
wMaxPacketSize should contain the value:

        1024 | (2 << 11)

or 5120 (0x1400). In order to make Host and
Peripheral controller drivers' life easier, we're
adding a helper which returns bits 12:11. Note that
no care is made WRT to checking endpoint type and
gadget's speed. That's left for drivers to handle.

(cherry picked from linux commit 541b6fe63023f3059cf85d47ff2767a3e42a8e44)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 include/usb/ch9.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index 85f3e64ca..fc6ec862c 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -1,3 +1,4 @@
+
 /*
  * This file holds USB constants and structures that are needed for
  * USB device APIs.  These are used by the USB device model, which is
@@ -400,6 +401,11 @@ struct usb_endpoint_descriptor {
 #define USB_ENDPOINT_XFER_INT		3
 #define USB_ENDPOINT_MAX_ADJUSTABLE	0x80
 
+#define USB_EP_MAXP_MULT_SHIFT		11
+#define USB_EP_MAXP_MULT_MASK		(3 << USB_EP_MAXP_MULT_SHIFT)
+#define USB_EP_MAXP_MULT(m) \
+	(((m) & USB_EP_MAXP_MULT_MASK) >> USB_EP_MAXP_MULT_SHIFT)
+
 /* The USB 3.0 spec redefines bits 5:4 of bmAttributes as interrupt ep type. */
 #define USB_ENDPOINT_INTRTYPE		0x30
 #define USB_ENDPOINT_INTR_PERIODIC	(0 << 4)
@@ -596,6 +602,20 @@ static inline int usb_endpoint_is_isoc_out(
 	return usb_endpoint_xfer_isoc(epd) && usb_endpoint_dir_out(epd);
 }
 
+/**
+ * usb_endpoint_maxp_mult - get endpoint's transactional opportunities
+ * @epd: endpoint to be checked
+ *
+ * Return @epd's wMaxPacketSize[12:11] + 1
+ */
+static inline int
+usb_endpoint_maxp_mult(const struct usb_endpoint_descriptor *epd)
+{
+       int maxp = __le16_to_cpu(epd->wMaxPacketSize);
+
+       return USB_EP_MAXP_MULT(maxp) + 1;
+}
+
 /**
  * usb_endpoint_maxp - get endpoint's max packet size
  * @epd: endpoint to be checked
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
