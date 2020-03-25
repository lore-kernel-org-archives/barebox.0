Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-000544-EH
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:56 +0100
Message-Id: <20200325123111.9612-10-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/24] usb: Use dev_*
To: Barebox List <barebox@lists.infradead.org>

Give the USB messages some context by using dev_* functions rather than
printf()/debug().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 50 +++++++++++++++++++++---------------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index e1ff443d29..32b19135a5 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -68,7 +68,7 @@ LIST_HEAD(usb_device_list);
 
 static void print_usb_device(struct usb_device *dev)
 {
-	pr_info("Bus %03d Device %03d: ID %04x:%04x %s\n",
+	dev_info(&dev->dev, "Bus %03d Device %03d: ID %04x:%04x %s\n",
 		dev->host->busnum, dev->devnum,
 		dev->descriptor->idVendor,
 		dev->descriptor->idProduct,
@@ -111,7 +111,7 @@ static int usb_set_configuration(struct usb_device *dev, int configuration)
 {
 	int res;
 
-	pr_debug("set configuration %d\n", configuration);
+	dev_dbg(&dev->dev, "set configuration %d\n", configuration);
 
 	/* set setup command */
 	res = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
@@ -146,21 +146,21 @@ usb_set_maxpacket_ep(struct usb_device *dev, struct usb_endpoint_descriptor *ep)
 		/* Control => bidirectional */
 		dev->epmaxpacketout[b] = ep->wMaxPacketSize;
 		dev->epmaxpacketin[b] = ep->wMaxPacketSize;
-		pr_debug("##Control EP epmaxpacketout/in[%d] = %d\n",
+		dev_dbg(&dev->dev, "##Control EP epmaxpacketout/in[%d] = %d\n",
 			   b, dev->epmaxpacketin[b]);
 	} else {
 		if ((ep->bEndpointAddress & 0x80) == 0) {
 			/* OUT Endpoint */
 			if (ep->wMaxPacketSize > dev->epmaxpacketout[b]) {
 				dev->epmaxpacketout[b] = ep->wMaxPacketSize;
-				pr_debug("##EP epmaxpacketout[%d] = %d\n",
+				dev_dbg(&dev->dev, "##EP epmaxpacketout[%d] = %d\n",
 					   b, dev->epmaxpacketout[b]);
 			}
 		} else {
 			/* IN Endpoint */
 			if (ep->wMaxPacketSize > dev->epmaxpacketin[b]) {
 				dev->epmaxpacketin[b] = ep->wMaxPacketSize;
-				pr_debug("##EP epmaxpacketin[%d] = %d\n",
+				dev_dbg(&dev->dev, "##EP epmaxpacketin[%d] = %d\n",
 					   b, dev->epmaxpacketin[b]);
 			}
 		} /* if out */
@@ -200,7 +200,7 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 	dev->configno = cfgno;
 	head = (struct usb_descriptor_header *) &buffer[0];
 	if (head->bDescriptorType != USB_DT_CONFIG) {
-		printf(" ERROR: NOT USB_CONFIG_DESC %x\n",
+		dev_err(&dev->dev, " ERROR: NOT USB_CONFIG_DESC %x\n",
 			head->bDescriptorType);
 		return -1;
 	}
@@ -223,7 +223,7 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 				 * next memcpy() will corrupt dev->config
 				 */
 				if (ifno > USB_MAXINTERFACES) {
-					printf("ifno = %d > "
+					dev_err(&dev->dev, "ifno = %d > "
 						"USB_MAXINTERFACES = %d !\n",
 						ifno,
 						USB_MAXINTERFACES);
@@ -249,13 +249,13 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 				&buffer[index], buffer[index]);
 			le16_to_cpus(&(dev->config.interface[ifno].ep_desc[epno].\
 							       wMaxPacketSize));
-			pr_debug("if %d, ep %d\n", ifno, epno);
+			dev_dbg(&dev->dev, "if %d, ep %d\n", ifno, epno);
 			break;
 		default:
 			if (head->bLength == 0)
 				return 1;
 
-			pr_debug("unknown Description Type : %x\n",
+			dev_dbg(&dev->dev, "unknown Description Type : %x\n",
 				   head->bDescriptorType);
 
 			{
@@ -280,7 +280,7 @@ static int usb_set_address(struct usb_device *dev)
 {
 	int res;
 
-	pr_debug("set address %d\n", dev->devnum);
+	dev_dbg(&dev->dev, "set address %d\n", dev->devnum);
 
 	res = usb_control_msg(dev, usb_snddefctrl(dev),
 				USB_REQ_SET_ADDRESS, 0,
@@ -352,7 +352,7 @@ int usb_new_device(struct usb_device *dev)
 
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0, desc, 64);
 	if (err < 0) {
-		pr_debug("%s: usb_get_descriptor() failed with %d\n", __func__, err);
+		dev_dbg(&dev->dev, "%s: usb_get_descriptor() failed with %d\n", __func__, err);
 		goto err_out;
 	}
 
@@ -379,7 +379,7 @@ int usb_new_device(struct usb_device *dev)
 	err = usb_set_address(dev); /* set address */
 
 	if (err < 0) {
-		printf("\n      USB device not accepting new address " \
+		dev_err(&dev->dev, "USB device not accepting new address " \
 			"(error=%lX)\n", dev->status);
 		goto err_out;
 	}
@@ -392,10 +392,10 @@ int usb_new_device(struct usb_device *dev)
 				 dev->descriptor, sizeof(*dev->descriptor));
 	if (err < tmp) {
 		if (err < 0)
-			printf("unable to get device descriptor (error=%d)\n",
+			dev_err(&dev->dev, "unable to get device descriptor (error=%d)\n",
 			       err);
 		else
-			printf("USB device descriptor short read " \
+			dev_err(&dev->dev, "USB device descriptor short read " \
 				"(expected %i, got %i)\n", tmp, err);
 		goto err_out;
 	}
@@ -411,12 +411,12 @@ int usb_new_device(struct usb_device *dev)
 	/* we set the default configuration here */
 	err = usb_set_configuration(dev, dev->config.desc.bConfigurationValue);
 	if (err) {
-		printf("Setting default configuration failed with: %s\n" \
+		dev_err(&dev->dev, "Setting default configuration failed with: %s\n" \
 			"len %d, status %lX\n", strerror(-err),
 		       dev->act_len, dev->status);
 		goto err_out;
 	}
-	pr_debug("new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
+	dev_dbg(&dev->dev, "new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
 		   dev->descriptor->iManufacturer, dev->descriptor->iProduct,
 		   dev->descriptor->iSerialNumber);
 	memset(dev->mf, 0, sizeof(dev->mf));
@@ -436,7 +436,7 @@ int usb_new_device(struct usb_device *dev)
 
 	err = register_device(&dev->dev);
 	if (err) {
-		printf("Failed to register device: %s\n", strerror(-err));
+		dev_err(&dev->dev, "Failed to register device: %s\n", strerror(-err));
 		goto err_out;
 	}
 
@@ -599,7 +599,7 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 	setup_packet->value = cpu_to_le16(value);
 	setup_packet->index = cpu_to_le16(index);
 	setup_packet->length = cpu_to_le16(size);
-	pr_debug("usb_control_msg: request: 0x%X, requesttype: 0x%X, " \
+	dev_dbg(&dev->dev, "usb_control_msg: request: 0x%X, requesttype: 0x%X, " \
 		   "value 0x%X index 0x%X length 0x%X\n",
 		   request, requesttype, value, index, size);
 	dev->status = USB_ST_NOT_PROC; /*not yet processed */
@@ -709,23 +709,23 @@ int usb_get_configuration_no(struct usb_device *dev,
 	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, 9);
 	if (result < 9) {
 		if (result < 0)
-			printf("unable to get descriptor, error %lX\n",
+			dev_err(&dev->dev, "unable to get descriptor, error %lX\n",
 				dev->status);
 		else
-			printf("config descriptor too short " \
+			dev_err(&dev->dev, "config descriptor too short " \
 				"(expected %i, got %i)\n", 9, result);
 		return -1;
 	}
 	tmp = le16_to_cpu(config->wTotalLength);
 
 	if (tmp > USB_BUFSIZ) {
-		pr_debug("usb_get_configuration_no: failed to get " \
+		dev_dbg(&dev->dev, "usb_get_configuration_no: failed to get " \
 			   "descriptor - too long: %u\n", tmp);
 		return -1;
 	}
 
 	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, tmp);
-	pr_debug("get_conf_no %d Result %d, wLength %u\n",
+	dev_dbg(&dev->dev, "get_conf_no %d Result %d, wLength %u\n",
 		   cfgno, result, tmp);
 	return result;
 }
@@ -745,7 +745,7 @@ int usb_set_interface(struct usb_device *dev, int interface, int alternate)
 		}
 	}
 	if (!if_face) {
-		printf("selecting invalid interface %d", interface);
+		dev_err(&dev->dev, "selecting invalid interface %d", interface);
 		return -1;
 	}
 	/*
@@ -906,7 +906,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	if (!dev->have_langid) {
 		err = usb_string_sub(dev, 0, 0, tbuf);
 		if (err < 0) {
-			pr_debug("error getting string descriptor 0 " \
+			dev_dbg(&dev->dev, "error getting string descriptor 0 " \
 				   "(error=%lx)\n", dev->status);
 			return -1;
 		} else if (tbuf[0] < 4) {
@@ -916,7 +916,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 			dev->have_langid = -1;
 			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
 				/* always use the first langid listed */
-			pr_debug("USB device number %d default " \
+			dev_dbg(&dev->dev, "USB device number %d default " \
 				   "language ID 0x%x\n",
 				   dev->devnum, dev->string_langid);
 		}
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
