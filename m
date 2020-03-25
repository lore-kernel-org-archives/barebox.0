Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00054Q-EF
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:00 +0100
Message-Id: <20200325123111.9612-14-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/24] usb: Assign dev_index once
To: Barebox List <barebox@lists.infradead.org>

dev->devnum is set once in usb_alloc_new_device(), set to 0 again later
in usb_new_device() and then set back to the original value. This seems
unnecessary, just set devnum once right before calling usb_set_address()
on the device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index b94f7978a3..ad1d78b8fb 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -301,15 +301,14 @@ static int usb_get_descriptor(struct usb_device *dev, unsigned char type,
 }
 
 /*
- * By the time we get here, the device has gotten a new device ID
- * and is in the default state. We need to identify the thing and
- * get the ball rolling..
+ * By the time we get here, the device is in the default state. We need to
+ * identify the thing and get the ball rolling..
  *
  * Returns 0 for success, != 0 for error.
  */
 int usb_new_device(struct usb_device *dev)
 {
-	int addr, err;
+	int err;
 	int tmp;
 	void *buf;
 	struct usb_device_descriptor *desc;
@@ -326,10 +325,6 @@ int usb_new_device(struct usb_device *dev)
 
 	buf = dma_alloc(USB_BUFSIZ);
 
-	/* We still haven't set the Address yet */
-	addr = dev->devnum;
-	dev->devnum = 0;
-
 	/* This is a Windows scheme of initialization sequence, with double
 	 * reset of the device (Linux uses the same sequence)
 	 * Some equipment is said to work only with such init sequence; this
@@ -377,7 +372,7 @@ int usb_new_device(struct usb_device *dev)
 		dev->maxpacketsize = PACKET_SIZE_64;
 		break;
 	}
-	dev->devnum = addr;
+	dev->devnum = ++dev_index;
 
 	err = usb_set_address(dev); /* set address */
 
@@ -500,7 +495,6 @@ struct usb_device *usb_alloc_new_device(void)
 {
 	struct usb_device *usbdev = xzalloc(sizeof (*usbdev));
 
-	usbdev->devnum = ++dev_index;
 	usbdev->maxchild = 0;
 	usbdev->dev.bus = &usb_bus_type;
 	usbdev->setup_packet = dma_alloc(sizeof(*usbdev->setup_packet));
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
