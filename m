Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rD-KT
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:10 +0200
Message-Id: <1340272517-8972-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
References: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/9] USB core: device descriptor using dma_alloc
To: barebox@lists.infradead.org

The device descriptor needs to be dma save.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c |   53 +++++++++++++++++++++++++-----------------------
 include/usb/usb.h      |    2 +-
 2 files changed, 29 insertions(+), 26 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7333c0e..264ca2d 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -80,8 +80,8 @@ static void print_usb_device(struct usb_device *dev)
 {
 	printf("Bus %03d Device %03d: ID %04x:%04x %s\n",
 		dev->host->busnum, dev->devnum,
-		dev->descriptor.idVendor,
-		dev->descriptor.idProduct,
+		dev->descriptor->idVendor,
+		dev->descriptor->idProduct,
 		dev->prod);
 }
 
@@ -323,7 +323,7 @@ static int usb_new_device(struct usb_device *dev)
 	 * some more, or keeps on retransmitting the 8 byte header. */
 
 	desc = (struct usb_device_descriptor *)tmpbuf;
-	dev->descriptor.bMaxPacketSize0 = 64;	    /* Start off at 64 bytes  */
+	dev->descriptor->bMaxPacketSize0 = 64;	    /* Start off at 64 bytes  */
 	/* Default to 64 byte max packet size */
 	dev->maxpacketsize = PACKET_SIZE_64;
 	dev->epmaxpacketin[0] = 64;
@@ -335,7 +335,7 @@ static int usb_new_device(struct usb_device *dev)
 		return 1;
 	}
 
-	dev->descriptor.bMaxPacketSize0 = desc->bMaxPacketSize0;
+	dev->descriptor->bMaxPacketSize0 = desc->bMaxPacketSize0;
 
 	/* find the port number we're at */
 	if (parent) {
@@ -360,9 +360,9 @@ static int usb_new_device(struct usb_device *dev)
 		}
 	}
 
-	dev->epmaxpacketin[0] = dev->descriptor.bMaxPacketSize0;
-	dev->epmaxpacketout[0] = dev->descriptor.bMaxPacketSize0;
-	switch (dev->descriptor.bMaxPacketSize0) {
+	dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
+	dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
+	switch (dev->descriptor->bMaxPacketSize0) {
 	case 8:
 		dev->maxpacketsize  = PACKET_SIZE_8;
 		break;
@@ -388,10 +388,10 @@ static int usb_new_device(struct usb_device *dev)
 
 	wait_ms(10);	/* Let the SET_ADDRESS settle */
 
-	tmp = sizeof(dev->descriptor);
+	tmp = sizeof(*dev->descriptor);
 
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0,
-				 &dev->descriptor, sizeof(dev->descriptor));
+				 dev->descriptor, sizeof(*dev->descriptor));
 	if (err < tmp) {
 		if (err < 0)
 			printf("unable to get device descriptor (error=%d)\n",
@@ -402,10 +402,10 @@ static int usb_new_device(struct usb_device *dev)
 		return 1;
 	}
 	/* correct le values */
-	le16_to_cpus(&dev->descriptor.bcdUSB);
-	le16_to_cpus(&dev->descriptor.idVendor);
-	le16_to_cpus(&dev->descriptor.idProduct);
-	le16_to_cpus(&dev->descriptor.bcdDevice);
+	le16_to_cpus(&dev->descriptor->bcdUSB);
+	le16_to_cpus(&dev->descriptor->idVendor);
+	le16_to_cpus(&dev->descriptor->idProduct);
+	le16_to_cpus(&dev->descriptor->bcdDevice);
 	/* only support for one config for now */
 	usb_get_configuration_no(dev, &tmpbuf[0], 0);
 	usb_parse_config(dev, &tmpbuf[0], 0);
@@ -417,19 +417,19 @@ static int usb_new_device(struct usb_device *dev)
 		return -1;
 	}
 	USB_PRINTF("new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
-		   dev->descriptor.iManufacturer, dev->descriptor.iProduct,
-		   dev->descriptor.iSerialNumber);
+		   dev->descriptor->iManufacturer, dev->descriptor->iProduct,
+		   dev->descriptor->iSerialNumber);
 	memset(dev->mf, 0, sizeof(dev->mf));
 	memset(dev->prod, 0, sizeof(dev->prod));
 	memset(dev->serial, 0, sizeof(dev->serial));
-	if (dev->descriptor.iManufacturer)
-		usb_string(dev, dev->descriptor.iManufacturer,
+	if (dev->descriptor->iManufacturer)
+		usb_string(dev, dev->descriptor->iManufacturer,
 			   dev->mf, sizeof(dev->mf));
-	if (dev->descriptor.iProduct)
-		usb_string(dev, dev->descriptor.iProduct,
+	if (dev->descriptor->iProduct)
+		usb_string(dev, dev->descriptor->iProduct,
 			   dev->prod, sizeof(dev->prod));
-	if (dev->descriptor.iSerialNumber)
-		usb_string(dev, dev->descriptor.iSerialNumber,
+	if (dev->descriptor->iSerialNumber)
+		usb_string(dev, dev->descriptor->iSerialNumber,
 			   dev->serial, sizeof(dev->serial));
 	/* now prode if the device is a hub */
 	usb_hub_probe(dev, 0);
@@ -455,6 +455,7 @@ static struct usb_device *usb_alloc_new_device(void)
 	usbdev->maxchild = 0;
 	usbdev->dev.bus = &usb_bus_type;
 	usbdev->setup_packet = dma_alloc(sizeof(*usbdev->setup_packet));
+	usbdev->descriptor = dma_alloc(sizeof(*usbdev->descriptor));
 
 	dev_index++;
 
@@ -473,6 +474,7 @@ void usb_rescan(void)
 		if (dev->hub)
 			free(dev->hub);
 		dma_free(dev->setup_packet);
+		dma_free(dev->descriptor);
 		free(dev);
 	}
 
@@ -1288,11 +1290,11 @@ int usb_driver_register(struct usb_driver *drv)
 static int usb_match_device(struct usb_device *dev, const struct usb_device_id *id)
 {
 	if ((id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
-	    id->idVendor != le16_to_cpu(dev->descriptor.idVendor))
+	    id->idVendor != le16_to_cpu(dev->descriptor->idVendor))
 		return 0;
 
 	if ((id->match_flags & USB_DEVICE_ID_MATCH_PRODUCT) &&
-	    id->idProduct != le16_to_cpu(dev->descriptor.idProduct))
+	    id->idProduct != le16_to_cpu(dev->descriptor->idProduct))
 		return 0;
 
 	return 1;
@@ -1315,7 +1317,7 @@ static int usb_match_one_id(struct usb_device *usbdev,
 	/* The interface class, subclass, and protocol should never be
 	 * checked for a match if the device class is Vendor Specific,
 	 * unless the match record specifies the Vendor ID. */
-	if (usbdev->descriptor.bDeviceClass == USB_CLASS_VENDOR_SPEC &&
+	if (usbdev->descriptor->bDeviceClass == USB_CLASS_VENDOR_SPEC &&
 			!(id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
 			(id->match_flags & USB_DEVICE_ID_MATCH_INT_INFO))
 		return 0;
@@ -1375,7 +1377,8 @@ static int usb_match(struct device_d *dev, struct driver_d *drv)
 	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
 	const struct usb_device_id *id;
 
-	debug("matching: 0x%04x 0x%04x\n", usbdev->descriptor.idVendor, usbdev->descriptor.idProduct);
+	debug("matching: 0x%04x 0x%04x\n", usbdev->descriptor->idVendor,
+			usbdev->descriptor->idProduct);
 
 	id = usb_match_id(usbdev, usbdrv->id_table);
 	if (id) {
diff --git a/include/usb/usb.h b/include/usb/usb.h
index f836593..f273983 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -159,7 +159,7 @@ struct usb_device {
 	int epmaxpacketout[16];		/* OUTput endpoint specific maximums */
 
 	int configno;			/* selected config number */
-	struct usb_device_descriptor descriptor; /* Device Descriptor */
+	struct usb_device_descriptor *descriptor; /* Device Descriptor */
 	struct usb_config_descriptor config; /* config descriptor */
 	struct devrequest *setup_packet;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
