Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGX-0007gN-UW
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 64D2B27E1068
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:00 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:43 +0100
Message-Id: <20200122154950.22746-3-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 2/9] BACKPORT: usb: ch9: make usb_endpoint_maxp() return
 only packet size
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Now that we have a helper to gather periodic
endpoints' multiplier bits from wMaxPacketSize and
every driver is using it, we can safely make sure
that usb_endpoint_maxp() returns only bits 10:0 of
wMaxPacketSize which is where the actual packet size
lies.

(backported from linux commit abb621844f6a0c93bbc934f9a096752c4c1c5722)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 include/usb/ch9.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index fc6ec862c..5adabcaee 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -401,6 +401,7 @@ struct usb_endpoint_descriptor {
 #define USB_ENDPOINT_XFER_INT		3
 #define USB_ENDPOINT_MAX_ADJUSTABLE	0x80
 
+#define USB_ENDPOINT_MAXP_MASK		0x07ff
 #define USB_EP_MAXP_MULT_SHIFT		11
 #define USB_EP_MAXP_MULT_MASK		(3 << USB_EP_MAXP_MULT_SHIFT)
 #define USB_EP_MAXP_MULT(m) \
@@ -620,11 +621,11 @@ usb_endpoint_maxp_mult(const struct usb_endpoint_descriptor *epd)
  * usb_endpoint_maxp - get endpoint's max packet size
  * @epd: endpoint to be checked
  *
- * Returns @epd's max packet
+ * Returns @epd's max packet bits [10:0]
  */
 static inline int usb_endpoint_maxp(const struct usb_endpoint_descriptor *epd)
 {
-	return __le16_to_cpu(epd->wMaxPacketSize);
+	return __le16_to_cpu(epd->wMaxPacketSize) & USB_ENDPOINT_MAXP_MASK;
 }
 
 static inline int usb_endpoint_interrupt_type(
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
