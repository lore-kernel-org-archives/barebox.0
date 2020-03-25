Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-000598-O5
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:03 +0100
Message-Id: <20200325123111.9612-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/24] usb: net: Allocate tx buffer dynamically
To: Barebox List <barebox@lists.infradead.org>

It's cleaner to have a tx buffer per device and not one for all.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 20 +++++++++++++-------
 include/usb/usbnet.h     |  1 +
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 943113adb0..83e2c7a9e2 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -78,8 +78,6 @@ int usbnet_get_endpoints(struct usbnet *dev)
 }
 EXPORT_SYMBOL(usbnet_get_endpoints);
 
-char tx_buffer[4096];
-
 static int usbnet_send(struct eth_device *edev, void *eth_data, int data_length)
 {
 	struct usbnet		*dev = edev->priv;
@@ -92,23 +90,25 @@ static int usbnet_send(struct eth_device *edev, void *eth_data, int data_length)
 	 * win32 driver (usually) and/or hardware quirks
 	 */
         if(info->tx_fixup) {
-                if(info->tx_fixup(dev, eth_data, data_length, tx_buffer, &len)) {
+                if(info->tx_fixup(dev, eth_data, data_length, dev->tx_buf, &len)) {
 			dev_dbg(&edev->dev, "can't tx_fixup packet");
                         return 0;
                 }
         } else {
                 len = data_length;
-                memmove(tx_buffer, (void*) eth_data, len);
+                memmove(dev->tx_buf, (void*) eth_data, len);
         }
 
 	/* don't assume the hardware handles USB_ZERO_PACKET
 	 * NOTE:  strictly conforming cdc-ether devices should expect
 	 * the ZLP here, but ignore the one-byte packet.
 	 */
-	if ((len % dev->maxpacket) == 0)
-		tx_buffer[len++] = 0;
+	if ((len % dev->maxpacket) == 0) {
+		*(unsigned char *)(dev->tx_buf + len) = 0;
+		len++;
+	}
 
-	ret = usb_bulk_msg(dev->udev, dev->out, tx_buffer, len, &alen, 1000);
+	ret = usb_bulk_msg(dev->udev, dev->out, dev->tx_buf, len, &alen, 1000);
 	dev_dbg(&edev->dev, "%s: ret: %d len: %d alen: %d\n", __func__, ret, len, alen);
 
 	return ret;
@@ -216,6 +216,12 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 		goto out1;
 	}
 
+	undev->tx_buf = dma_alloc(4096);
+	if (!undev->tx_buf) {
+		status = -ENOMEM;
+		goto out1;
+	}
+
 	eth_register(edev);
 
 	return 0;
diff --git a/include/usb/usbnet.h b/include/usb/usbnet.h
index 3edf49413a..450db47b40 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -46,6 +46,7 @@ struct usbnet {
 	u32			hard_mtu;	/* count any extra framing */
 	size_t			rx_urb_size;	/* size for rx urbs */
 	void			*rx_buf;
+	void			*tx_buf;
 
 	unsigned long		flags;
 #		define EVENT_TX_HALT	0
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
