Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKQ-0002yY-LI
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id d15so4624020plr.1
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:02 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:20 -0800
Message-Id: <20190220072930.14300-16-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/25] usb: xhci-hcd: Simplify route string building loop
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify route string building loop by avoiding checking
top_dev->parent->descriptor->bDeviceClass twice.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 517446379..32a6ccd5c 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -947,10 +947,12 @@ static int xhci_virtdev_init(struct xhci_virtual_device *vdev)
 	 */
 	for (top_dev = vdev->udev; top_dev->parent && top_dev->parent->parent;
 	     top_dev = top_dev->parent) {
-		if (top_dev->parent->descriptor->bDeviceClass == USB_CLASS_HUB)
-			route = (route << 4) | (top_dev->portnr & 0xf);
-		if (top_dev->parent->descriptor->bDeviceClass == USB_CLASS_HUB &&
-		    top_dev->parent->speed != USB_SPEED_LOW &&
+		if (top_dev->parent->descriptor->bDeviceClass != USB_CLASS_HUB)
+			continue;
+
+		route = (route << 4) | (top_dev->portnr & 0xf);
+
+		if (top_dev->parent->speed != USB_SPEED_LOW &&
 		    top_dev->parent->speed != USB_SPEED_FULL) {
 			on_hs_hub = true;
 			if (!hs_slot_id) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
