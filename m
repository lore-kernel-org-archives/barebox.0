Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAJ50-0004fc-S1
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 13:29:07 +0000
Received: by mail-wi0-f171.google.com with SMTP id hi2so9670728wib.4
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 06:28:43 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 24 Jul 2014 15:28:42 +0200
Message-Id: <1406208526-24261-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/6] USB: Count detected USB devices independent of dev_index
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Adding a usb device increases dev_index every time a new device is
allocated. Removing a usb device does not decrease again, of course.
As we print the number of detected usb devices after each usb bus
scan based on dev_index, we cannot trust dev_index here. Keep track
of the correct number of (currently) detected usb devices by
introducing an independent dev_count that gets increased on alloc
and decreased on remove.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/usb/core/usb.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 2cc338465539..d3bd19be706d 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -66,6 +66,7 @@
 
 #define USB_BUFSIZ	512
 
+static int dev_count;
 static int dev_index;
 static int asynch_allowed;
 
@@ -448,6 +449,7 @@ int usb_new_device(struct usb_device *dev)
 	dev_add_param_int_ro(&dev->dev, "idProduct",
 			le16_to_cpu(dev->descriptor->idProduct), "%04x");
 	list_add_tail(&dev->list, &usb_device_list);
+	dev_count++;
 
 	err = 0;
 
@@ -474,6 +476,7 @@ void usb_remove_device(struct usb_device *usbdev)
 	usbdev->parent->children[usbdev->portnr - 1] = NULL;
 	list_del(&usbdev->list);
 	free(usbdev);
+	dev_count--;
 }
 
 struct usb_device *usb_alloc_new_device(void)
@@ -527,7 +530,7 @@ void usb_rescan(void)
 			continue;
 	}
 
-	pr_info("%d USB Device(s) found\n", dev_index);
+	pr_info("%d USB Device(s) found\n", dev_count);
 }
 
 /*
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
