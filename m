Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxq-0006J1-6g
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:16 +0000
Received: by mail-we0-f174.google.com with SMTP id x48so1217499wes.19
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:49 +0200
Message-Id: <1406123512-26489-9-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 08/10] USB: EHCI: use descriptor length fields
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Instead of hard-coding descriptor length, pick it from the
corresponding descriptor.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/usb/host/ehci-hcd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index a3063f988da0..ab1bc0331ba1 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -503,12 +503,12 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		case USB_DT_DEVICE:
 			dev_dbg(ehci->dev, "USB_DT_DEVICE request\n");
 			srcptr = &descriptor.device;
-			srclen = 0x12;
+			srclen = descriptor.device.bLength;
 			break;
 		case USB_DT_CONFIG:
 			dev_dbg(ehci->dev, "USB_DT_CONFIG config\n");
 			srcptr = &descriptor.config;
-			srclen = 0x19;
+			srclen = le16_to_cpu(descriptor.config.wTotalLength);
 			break;
 		case USB_DT_STRING:
 			dev_dbg(ehci->dev, "USB_DT_STRING config\n");
@@ -543,7 +543,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		case USB_DT_HUB:
 			dev_dbg(ehci->dev, "USB_DT_HUB config\n");
 			srcptr = &descriptor.hub;
-			srclen = 0x8;
+			srclen = descriptor.hub.bLength;
 			break;
 		default:
 			dev_dbg(ehci->dev, "unknown value %x\n", le16_to_cpu(req->value));
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
