Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rF-KS
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:11 +0200
Message-Id: <1340272517-8972-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] USB core: Allocate tmpbuf using dma_alloc
To: barebox@lists.infradead.org

This needs to be dma save.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c |   29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 264ca2d..a5075d5 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -299,12 +299,14 @@ static int usb_new_device(struct usb_device *dev)
 {
 	int addr, err;
 	int tmp;
-	unsigned char tmpbuf[USB_BUFSIZ];
+	void *buf;
 	struct usb_device_descriptor *desc;
 	int port = -1;
 	struct usb_device *parent = dev->parent;
 	unsigned short portstatus;
 
+	buf = dma_alloc(USB_BUFSIZ);
+
 	/* We still haven't set the Address yet */
 	addr = dev->devnum;
 	dev->devnum = 0;
@@ -322,7 +324,7 @@ static int usb_new_device(struct usb_device *dev)
 	 * the maxpacket size is 8 or 16 the device may be waiting to transmit
 	 * some more, or keeps on retransmitting the 8 byte header. */
 
-	desc = (struct usb_device_descriptor *)tmpbuf;
+	desc = buf;
 	dev->descriptor->bMaxPacketSize0 = 64;	    /* Start off at 64 bytes  */
 	/* Default to 64 byte max packet size */
 	dev->maxpacketsize = PACKET_SIZE_64;
@@ -332,7 +334,7 @@ static int usb_new_device(struct usb_device *dev)
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0, desc, 64);
 	if (err < 0) {
 		USB_PRINTF("%s: usb_get_descriptor() failed with %d\n", __func__, err);
-		return 1;
+		goto err_out;
 	}
 
 	dev->descriptor->bMaxPacketSize0 = desc->bMaxPacketSize0;
@@ -349,14 +351,15 @@ static int usb_new_device(struct usb_device *dev)
 		}
 		if (port < 0) {
 			printf("%s: cannot locate device's port.\n", __func__);
-			return 1;
+			err = -ENODEV;
+			goto err_out;
 		}
 
 		/* reset the port for the second time */
 		err = hub_port_reset(dev->parent, port, &portstatus);
 		if (err < 0) {
 			printf("\n     Couldn't reset port %i\n", port);
-			return 1;
+			goto err_out;
 		}
 	}
 
@@ -383,7 +386,7 @@ static int usb_new_device(struct usb_device *dev)
 	if (err < 0) {
 		printf("\n      USB device not accepting new address " \
 			"(error=%lX)\n", dev->status);
-		return 1;
+		goto err_out;
 	}
 
 	wait_ms(10);	/* Let the SET_ADDRESS settle */
@@ -399,7 +402,7 @@ static int usb_new_device(struct usb_device *dev)
 		else
 			printf("USB device descriptor short read " \
 				"(expected %i, got %i)\n", tmp, err);
-		return 1;
+		goto err_out;
 	}
 	/* correct le values */
 	le16_to_cpus(&dev->descriptor->bcdUSB);
@@ -407,14 +410,14 @@ static int usb_new_device(struct usb_device *dev)
 	le16_to_cpus(&dev->descriptor->idProduct);
 	le16_to_cpus(&dev->descriptor->bcdDevice);
 	/* only support for one config for now */
-	usb_get_configuration_no(dev, &tmpbuf[0], 0);
-	usb_parse_config(dev, &tmpbuf[0], 0);
+	usb_get_configuration_no(dev, buf, 0);
+	usb_parse_config(dev, buf, 0);
 	usb_set_maxpacket(dev);
 	/* we set the default configuration here */
 	if (usb_set_configuration(dev, dev->config.bConfigurationValue)) {
 		printf("failed to set default configuration " \
 			"len %d, status %lX\n", dev->act_len, dev->status);
-		return -1;
+		goto err_out;
 	}
 	USB_PRINTF("new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
 		   dev->descriptor->iManufacturer, dev->descriptor->iProduct,
@@ -441,7 +444,11 @@ static int usb_new_device(struct usb_device *dev)
 	register_device(&dev->dev);
 	list_add_tail(&dev->list, &usb_device_list);
 
-	return 0;
+	err = 0;
+
+err_out:
+	dma_free(buf);
+	return err;
 }
 
 static struct usb_device *usb_alloc_new_device(void)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
