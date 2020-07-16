Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jw3wE-0007FH-QX
 for barebox@lists.infradead.org; Thu, 16 Jul 2020 13:28:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CFE0B27E085C
 for <barebox@lists.infradead.org>; Thu, 16 Jul 2020 15:28:37 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 16 Jul 2020 15:28:30 +0200
Message-Id: <20200716132830.16453-1-jmaselbas@kalray.eu>
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
Subject: [PATCH] USB: gadget: Add serialnumber device parameter
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

This add the device parameter usbgadget.serialnumber

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/multi.c    | 2 ++
 drivers/usb/gadget/udc-core.c | 3 +++
 include/usb/gadget.h          | 1 +
 3 files changed, 6 insertions(+)

diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 445cc3242..95f5b90c8 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -179,8 +179,10 @@ static int multi_bind(struct usb_composite_dev *cdev)
 
 	strings_dev[USB_GADGET_MANUFACTURER_IDX].s = gadget->manufacturer;
 	strings_dev[USB_GADGET_PRODUCT_IDX].s = gadget->productname;
+	strings_dev[USB_GADGET_SERIAL_IDX].s = gadget->serialnumber;
 
 	device_desc.iProduct = strings_dev[USB_GADGET_PRODUCT_IDX].id;
+	device_desc.iSerialNumber = strings_dev[USB_GADGET_SERIAL_IDX].id;
 
 	config.label          = strings_dev[STRING_DESCRIPTION_IDX].s;
 	config.iConfiguration = strings_dev[STRING_DESCRIPTION_IDX].id;
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index 126d76e8b..2516676f8 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -212,6 +212,9 @@ int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadge
 	gadget->productname = xstrdup(barebox_get_model());
 	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
 			&gadget->productname, NULL);
+	gadget->serialnumber = xstrdup("");
+	dev_add_param_string(&gadget->dev, "serialnumber", NULL, NULL,
+			&gadget->serialnumber, NULL);
 
 	dev_set_name(&udc->dev, "udc");
 	udc->dev.id = DEVICE_ID_DYNAMIC;
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index afa11b2d9..3e1d7153d 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -561,6 +561,7 @@ struct usb_gadget {
 	uint32_t			product_id;
 	char				*manufacturer;
 	char				*productname;
+	char				*serialnumber;
 };
 #define work_to_gadget(w)	(container_of((w), struct usb_gadget, work))
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
