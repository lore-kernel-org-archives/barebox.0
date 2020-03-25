Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-0005A3-QW
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:02 +0100
Message-Id: <20200325123111.9612-16-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/24] usb: net: Allocate rx buffer dynamically
To: Barebox List <barebox@lists.infradead.org>

Allocate an individual rx buffer per device in the size we need it
instead of using one global buffer for all devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 15 ++++++++++-----
 include/usb/usbnet.h     |  1 +
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 60e67ff1a2..943113adb0 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -5,6 +5,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <linux/phy.h>
+#include <dma.h>
 
 /* handles CDC Ethernet and many other network "bulk data" interfaces */
 int usbnet_get_endpoints(struct usbnet *dev)
@@ -113,8 +114,6 @@ static int usbnet_send(struct eth_device *edev, void *eth_data, int data_length)
 	return ret;
 }
 
-static char rx_buf[4096];
-
 static int usbnet_recv(struct eth_device *edev)
 {
 	struct usbnet		*dev = (struct usbnet*) edev->priv;
@@ -125,15 +124,15 @@ static int usbnet_recv(struct eth_device *edev)
 
 	len = dev->rx_urb_size;
 
-	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 100);
+	ret = usb_bulk_msg(dev->udev, dev->in, dev->rx_buf, len, &alen, 100);
 	if (ret)
 		return ret;
 
 	if (alen) {
 		if (info->rx_fixup)
-			return info->rx_fixup(dev, rx_buf, alen);
+			return info->rx_fixup(dev, dev->rx_buf, alen);
 		else
-			net_receive(edev, rx_buf, alen);
+			net_receive(edev, dev->rx_buf, alen);
 	}
 
         return 0;
@@ -211,6 +210,12 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
 		undev->rx_urb_size = 1514; /* FIXME: What to put here? */
 	undev->maxpacket = usb_maxpacket(undev->udev, undev->out);
 
+	undev->rx_buf = dma_alloc(undev->rx_urb_size);
+	if (!undev->rx_buf) {
+		status = -ENOMEM;
+		goto out1;
+	}
+
 	eth_register(edev);
 
 	return 0;
diff --git a/include/usb/usbnet.h b/include/usb/usbnet.h
index 386c2164bd..3edf49413a 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -45,6 +45,7 @@ struct usbnet {
 	u32			xid;
 	u32			hard_mtu;	/* count any extra framing */
 	size_t			rx_urb_size;	/* size for rx urbs */
+	void			*rx_buf;
 
 	unsigned long		flags;
 #		define EVENT_TX_HALT	0
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
