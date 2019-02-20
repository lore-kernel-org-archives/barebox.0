Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKF-0002lg-Ix
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id g6so11467679pfh.13
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:10 -0800
Message-Id: <20190220072930.14300-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/25] usb: xhci-hcd: Drop pointless bitwise or
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On_hs_hub is a boolean, not a bitfiled, so usage of bitwise or is
unnecessary. Replace it with a regular assignement operator.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index cdce0d5ec..f97a334f0 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -849,7 +849,7 @@ static int xhci_virtdev_init(struct xhci_virtual_device *vdev)
 		if (top_dev->parent->descriptor->bDeviceClass == USB_CLASS_HUB &&
 		    top_dev->parent->speed != USB_SPEED_LOW &&
 		    top_dev->parent->speed != USB_SPEED_FULL) {
-			on_hs_hub |= true;
+			on_hs_hub = true;
 			if (!hs_slot_id) {
 				struct xhci_virtual_device *vhub =
 					xhci_find_virtdev(xhci, top_dev->parent);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
