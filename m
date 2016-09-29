Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacb-00034q-3s
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:52 +0200
Message-Id: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] usb: Use standard debug macro
To: Barebox List <barebox@lists.infradead.org>

Use standard pr_debug instead of homebrew USB_PRINTF

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 52 ++++++++++++++++++++++++--------------------------
 1 file changed, 25 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ce229f2..aba2da0 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -40,6 +40,9 @@
  *
  * For each transfer (except "Interrupt") we wait for completion.
  */
+
+#define pr_fmt(fmt) "usb: " fmt
+
 #include <common.h>
 #include <command.h>
 #include <malloc.h>
@@ -56,14 +59,6 @@
 #include "usb.h"
 #include "hub.h"
 
-/* #define USB_DEBUG */
-
-#ifdef	USB_DEBUG
-#define	USB_PRINTF(fmt, args...)	printf(fmt , ##args)
-#else
-#define USB_PRINTF(fmt, args...)
-#endif
-
 #define USB_BUFSIZ	512
 
 static int dev_count;
@@ -113,7 +108,9 @@ int usb_register_host(struct usb_host *host)
 static int usb_set_configuration(struct usb_device *dev, int configuration)
 {
 	int res;
-	USB_PRINTF("set configuration %d\n", configuration);
+
+	pr_debug("set configuration %d\n", configuration);
+
 	/* set setup command */
 	res = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
 				USB_REQ_SET_CONFIGURATION, 0,
@@ -147,21 +144,21 @@ usb_set_maxpacket_ep(struct usb_device *dev, struct usb_endpoint_descriptor *ep)
 		/* Control => bidirectional */
 		dev->epmaxpacketout[b] = ep->wMaxPacketSize;
 		dev->epmaxpacketin[b] = ep->wMaxPacketSize;
-		USB_PRINTF("##Control EP epmaxpacketout/in[%d] = %d\n",
+		pr_debug("##Control EP epmaxpacketout/in[%d] = %d\n",
 			   b, dev->epmaxpacketin[b]);
 	} else {
 		if ((ep->bEndpointAddress & 0x80) == 0) {
 			/* OUT Endpoint */
 			if (ep->wMaxPacketSize > dev->epmaxpacketout[b]) {
 				dev->epmaxpacketout[b] = ep->wMaxPacketSize;
-				USB_PRINTF("##EP epmaxpacketout[%d] = %d\n",
+				pr_debug("##EP epmaxpacketout[%d] = %d\n",
 					   b, dev->epmaxpacketout[b]);
 			}
 		} else {
 			/* IN Endpoint */
 			if (ep->wMaxPacketSize > dev->epmaxpacketin[b]) {
 				dev->epmaxpacketin[b] = ep->wMaxPacketSize;
-				USB_PRINTF("##EP epmaxpacketin[%d] = %d\n",
+				pr_debug("##EP epmaxpacketin[%d] = %d\n",
 					   b, dev->epmaxpacketin[b]);
 			}
 		} /* if out */
@@ -250,20 +247,20 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 				&buffer[index], buffer[index]);
 			le16_to_cpus(&(dev->config.interface[ifno].ep_desc[epno].\
 							       wMaxPacketSize));
-			USB_PRINTF("if %d, ep %d\n", ifno, epno);
+			pr_debug("if %d, ep %d\n", ifno, epno);
 			break;
 		default:
 			if (head->bLength == 0)
 				return 1;
 
-			USB_PRINTF("unknown Description Type : %x\n",
+			pr_debug("unknown Description Type : %x\n",
 				   head->bDescriptorType);
 
 			{
 				ch = (unsigned char *)head;
 				for (i = 0; i < head->bLength; i++)
-					USB_PRINTF("%02X ", *ch++);
-				USB_PRINTF("\n\n\n");
+					pr_debug("%02X ", *ch++);
+				pr_debug("\n\n\n");
 			}
 			break;
 		}
@@ -281,7 +278,8 @@ static int usb_set_address(struct usb_device *dev)
 {
 	int res;
 
-	USB_PRINTF("set address %d\n", dev->devnum);
+	pr_debug("set address %d\n", dev->devnum);
+
 	res = usb_control_msg(dev, usb_snddefctrl(dev),
 				USB_REQ_SET_ADDRESS, 0,
 				(dev->devnum), 0,
@@ -345,7 +343,7 @@ int usb_new_device(struct usb_device *dev)
 
 	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0, desc, 64);
 	if (err < 0) {
-		USB_PRINTF("%s: usb_get_descriptor() failed with %d\n", __func__, err);
+		pr_debug("%s: usb_get_descriptor() failed with %d\n", __func__, err);
 		goto err_out;
 	}
 
@@ -417,7 +415,7 @@ int usb_new_device(struct usb_device *dev)
 			"len %d, status %lX\n", dev->act_len, dev->status);
 		goto err_out;
 	}
-	USB_PRINTF("new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
+	pr_debug("new device: Mfr=%d, Product=%d, SerialNumber=%d\n",
 		   dev->descriptor->iManufacturer, dev->descriptor->iProduct,
 		   dev->descriptor->iSerialNumber);
 	memset(dev->mf, 0, sizeof(dev->mf));
@@ -624,7 +622,7 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 	setup_packet->value = cpu_to_le16(value);
 	setup_packet->index = cpu_to_le16(index);
 	setup_packet->length = cpu_to_le16(size);
-	USB_PRINTF("usb_control_msg: request: 0x%X, requesttype: 0x%X, " \
+	pr_debug("usb_control_msg: request: 0x%X, requesttype: 0x%X, " \
 		   "value 0x%X index 0x%X length 0x%X\n",
 		   request, requesttype, value, index, size);
 	dev->status = USB_ST_NOT_PROC; /*not yet processed */
@@ -744,13 +742,13 @@ int usb_get_configuration_no(struct usb_device *dev,
 	tmp = le16_to_cpu(config->wTotalLength);
 
 	if (tmp > USB_BUFSIZ) {
-		USB_PRINTF("usb_get_configuration_no: failed to get " \
+		pr_debug("usb_get_configuration_no: failed to get " \
 			   "descriptor - too long: %u\n", tmp);
 		return -1;
 	}
 
 	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, tmp);
-	USB_PRINTF("get_conf_no %d Result %d, wLength %u\n",
+	pr_debug("get_conf_no %d Result %d, wLength %u\n",
 		   cfgno, result, tmp);
 	return result;
 }
@@ -931,17 +929,17 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	if (!dev->have_langid) {
 		err = usb_string_sub(dev, 0, 0, tbuf);
 		if (err < 0) {
-			USB_PRINTF("error getting string descriptor 0 " \
+			pr_debug("error getting string descriptor 0 " \
 				   "(error=%lx)\n", dev->status);
 			return -1;
 		} else if (tbuf[0] < 4) {
-			USB_PRINTF("string descriptor 0 too short\n");
+			pr_debug("string descriptor 0 too short\n");
 			return -1;
 		} else {
 			dev->have_langid = -1;
 			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
 				/* always use the first langid listed */
-			USB_PRINTF("USB device number %d default " \
+			pr_debug("USB device number %d default " \
 				   "language ID 0x%x\n",
 				   dev->devnum, dev->string_langid);
 		}
@@ -1063,12 +1061,12 @@ static int usb_match(struct device_d *dev, struct driver_d *drv)
 	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
 	const struct usb_device_id *id;
 
-	debug("matching: 0x%04x 0x%04x\n", usbdev->descriptor->idVendor,
+	pr_debug("matching: 0x%04x 0x%04x\n", usbdev->descriptor->idVendor,
 			usbdev->descriptor->idProduct);
 
 	id = usb_match_id(usbdev, usbdrv->id_table);
 	if (id) {
-		debug("match: 0x%04x 0x%04x\n", id->idVendor, id->idProduct);
+		pr_debug("match: 0x%04x 0x%04x\n", id->idVendor, id->idProduct);
 		return 0;
 	}
 	return 1;
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
