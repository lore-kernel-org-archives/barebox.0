Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhuhC-0002vf-M2
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 07:23:59 +0000
Received: by lbbmp1 with SMTP id mp1so21870127lbb.1
 for <barebox@lists.infradead.org>; Fri, 02 Oct 2015 00:23:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  2 Oct 2015 10:23:30 +0300
Message-Id: <1443770610-24469-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] usb: core: drop unnecessary le16_to_cpu() conversion
To: barebox@lists.infradead.org

In drivers/usb/core/usb.c we already have le16_to_cpus() conversion
just after usb_get_descriptor():

    390     /* correct le values */
    391     le16_to_cpus(&dev->descriptor->bcdUSB);
    392     le16_to_cpus(&dev->descriptor->idVendor);
    393     le16_to_cpus(&dev->descriptor->idProduct);
    394     le16_to_cpus(&dev->descriptor->bcdDevice);

so no additional idVendor/idProduct descriptor fields
le16_to_cpu() conversion is needed after that.

On the big-endian machines extra le16_to_cpu() conversion
leads to wrong idVendor/idProduct USB device parameters values
(e.g. see devinfo <usb-device> output), and to a much more
serious problem: idVendor/idProduct-based USB device detection
does not work.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/core/usb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index f8d6014..a3fb1e8 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -445,9 +445,9 @@ int usb_new_device(struct usb_device *dev)
 	dev_add_param_fixed(&dev->dev, "Product", dev->prod);
 	dev_add_param_fixed(&dev->dev, "SerialNumber", dev->serial);
 	dev_add_param_int_ro(&dev->dev, "idVendor",
-			le16_to_cpu(dev->descriptor->idVendor), "%04x");
+			dev->descriptor->idVendor, "%04x");
 	dev_add_param_int_ro(&dev->dev, "idProduct",
-			le16_to_cpu(dev->descriptor->idProduct), "%04x");
+			dev->descriptor->idProduct, "%04x");
 	list_add_tail(&dev->list, &usb_device_list);
 	dev_count++;
 
@@ -938,11 +938,11 @@ int usb_driver_register(struct usb_driver *drv)
 static int usb_match_device(struct usb_device *dev, const struct usb_device_id *id)
 {
 	if ((id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
-	    id->idVendor != le16_to_cpu(dev->descriptor->idVendor))
+	    id->idVendor != dev->descriptor->idVendor)
 		return 0;
 
 	if ((id->match_flags & USB_DEVICE_ID_MATCH_PRODUCT) &&
-	    id->idProduct != le16_to_cpu(dev->descriptor->idProduct))
+	    id->idProduct != dev->descriptor->idProduct)
 		return 0;
 
 	return 1;
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
