Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043J-Ch
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:12 +0200
Message-Id: <1277372356-32370-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] usbnet: remove unused dev member in struct usbnet
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/asix.c   |   12 ++++++------
 drivers/net/usb/usbnet.c |    9 +++++----
 include/usb/usbnet.h     |    2 --
 3 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index fc4146f..ca71b34 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -415,13 +415,13 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 
 	while (len > 0) {
 		if ((short)(header & 0x0000ffff) != ~((short)((header & 0xffff0000) >> 16)))
-			dev_err(&dev->dev, "asix_rx_fixup() Bad Header Length");
-	
+			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length");
+
 		/* get the packet length */
 		size = (unsigned short) (header & 0x0000ffff);
 
 		if (size > 1514) {
-			dev_err(&dev->dev, "asix_rx_fixup() Bad RX Length %d", size);
+			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad RX Length %d", size);
 			return 0;
 		}
 
@@ -440,7 +440,7 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 	}
 
 	if (len < 0) {
-		dev_err(&dev->dev,"asix_rx_fixup() Bad SKB Length %d", len);
+		dev_err(&dev->edev.dev,"asix_rx_fixup() Bad SKB Length %d", len);
 		return -1;
 	}
 	return 0;
@@ -503,13 +503,13 @@ static int ax88172_bind(struct usbnet *dev)
 	unsigned long gpio_bits = dev->driver_info->data;
 	struct asix_data *data = (struct asix_data *)&dev->data;
 
-	dev_dbg(&dev->dev, "%s\n", __func__);
+	dev_dbg(&dev->edev.dev, "%s\n", __func__);
 
 	data->eeprom_len = AX88172_EEPROM_LEN;
 
 	ret = usbnet_get_endpoints(dev);
 	if (ret) {
-		dev_err(&dev->dev, "can not get EPs\n");
+		dev_err(&dev->edev.dev, "can not get EPs\n");
 		return ret;
 	}
 
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index b0e3090..cc170f6 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -74,7 +74,7 @@ int usbnet_get_endpoints(struct usbnet *dev)
 			in->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 	dev->out = usb_sndbulkpipe (dev->udev,
 			out->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
-	dev_dbg(&dev->dev, "found endpoints: IN=%d OUT=%d\n",
+	dev_dbg(&dev->edev.dev, "found endpoints: IN=%d OUT=%d\n",
 			in->bEndpointAddress, out->bEndpointAddress);
 
 	return 0;
@@ -89,14 +89,14 @@ static int usbnet_send(struct eth_device *edev, void *eth_data, int data_length)
 	struct driver_info	*info = dev->driver_info;
 	int			len, alen, ret;
 
-	dev_dbg(&dev->dev, "%s\n",__func__);
+	dev_dbg(&edev->dev, "%s\n",__func__);
 
 	/* some devices want funky USB-level framing, for
 	 * win32 driver (usually) and/or hardware quirks
 	 */
         if(info->tx_fixup) {
                 if(info->tx_fixup(dev, eth_data, data_length, tx_buffer, &len)) {
-                        dev_dbg(&dev->dev, "can't tx_fixup packet");
+			dev_dbg(&edev->dev, "can't tx_fixup packet");
                         return 0;
                 }
         } else {
@@ -191,7 +191,7 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 	struct driver_info *info;
 	int status;
 
-	dev_dbg(&edev->dev, "%s\n", __func__);
+	dev_dbg(&usbdev->dev, "%s\n", __func__);
 
 	undev = xzalloc(sizeof (*undev));
 
@@ -206,6 +206,7 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 	edev->recv = usbnet_recv,
 	edev->halt = usbnet_halt,
 	edev->priv = undev;
+	edev->dev = usbdev->dev; /* will be overwritten by eth_register */
 
 	info = (struct driver_info *)prod->driver_info;
 	undev->driver_info = info;
diff --git a/include/usb/usbnet.h b/include/usb/usbnet.h
index 77f1960..e3ea373 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -54,8 +54,6 @@ struct usbnet {
 #		define EVENT_RX_MEMORY	2
 #		define EVENT_STS_SPLIT	3
 #		define EVENT_LINK_RESET	4
-	/* FIXME: Our eth_device should have this, not us! */
-	struct device_d dev;
 };
 
 #if 0
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
