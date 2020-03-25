Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-0005Az-VE
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:06 +0100
Message-Id: <20200325123111.9612-20-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/24] usb: factor out a usb_setup_descriptor() function
To: Barebox List <barebox@lists.infradead.org>

This factors out a usb_setup_descriptor() function with the goal to
make the code better comparable to the corresponding U-Boot code.

This also incorporates this U-Boot commit:

| commit 2b338ef41127351089254b748de5cefd95c3e800
| Author: Hans de Goede <hdegoede@redhat.com>
| Date:   Tue May 5 23:56:04 2015 +0200
|
|     usb: Fix maxpacketsize for first descriptor read for low-speed usb devs
|
|     This fixes descriptor reading of lowspeed devices through ohci not working.
|
|     Signed-off-by: Hans de Goede <hdegoede@redhat.com>
|     Acked-by: Marek Vasut <marex@denx.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 155 +++++++++++++++++++++++++++--------------
 1 file changed, 103 insertions(+), 52 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index e5c80aa1da..0ed897fa49 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -272,6 +272,108 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
 	return 1;
 }
 
+static int usb_get_descriptor(struct usb_device *dev, unsigned char type,
+			unsigned char index, void *buf, int size)
+{
+	int res;
+	res = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
+			USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
+			(type << 8) + index, 0,
+			buf, size, USB_CNTL_TIMEOUT);
+	return res;
+}
+
+static int get_descriptor_len(struct usb_device *dev, int len, int expect_len)
+{
+	int err;
+
+	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0, dev->descriptor, len);
+	if (err < expect_len) {
+		if (err < 0) {
+			dev_err(&dev->dev, "unable to get device descriptor (error=%d)\n",
+				err);
+			return err;
+		} else {
+			dev_err(&dev->dev, "USB device descriptor short read (expected %i, got %i)\n",
+				expect_len, err);
+			return -EIO;
+		}
+	}
+
+        return 0;
+}
+
+static int usb_setup_descriptor(struct usb_device *dev, bool do_read)
+{
+	/*
+	 * This is a Windows scheme of initialization sequence, with double
+	 * reset of the device (Linux uses the same sequence)
+	 * Some equipment is said to work only with such init sequence; this
+	 * patch is based on the work by Alan Stern:
+	 * http://sourceforge.net/mailarchive/forum.php?
+	 * thread_id=5729457&forum_id=5398
+	 */
+
+	/*
+	 * send 64-byte GET-DEVICE-DESCRIPTOR request.  Since the descriptor is
+	 * only 18 bytes long, this will terminate with a short packet.  But if
+	 * the maxpacket size is 8 or 16 the device may be waiting to transmit
+	 * some more, or keeps on retransmitting the 8 byte header.
+	 */
+
+	if (dev->speed == USB_SPEED_LOW) {
+		dev->descriptor->bMaxPacketSize0 = 8;
+		dev->maxpacketsize = PACKET_SIZE_8;
+	} else {
+		dev->descriptor->bMaxPacketSize0 = 64;
+		dev->maxpacketsize = PACKET_SIZE_64;
+	}
+
+	if (do_read && dev->speed == USB_SPEED_FULL) {
+		int err;
+
+		/*
+		 * Validate we've received only at least 8 bytes, not that
+		 * we've received the entire descriptor. The reasoning is:
+		 * - The code only uses fields in the first 8 bytes, so
+		 *   that's all we need to have fetched at this stage.
+		 * - The smallest maxpacket size is 8 bytes. Before we know
+		 *   the actual maxpacket the device uses, the USB controller
+		 *   may only accept a single packet. Consequently we are only
+		 *   guaranteed to receive 1 packet (at least 8 bytes) even in
+		 *   a non-error case.
+		 *
+		 * At least the DWC2 controller needs to be programmed with
+		 * the number of packets in addition to the number of bytes.
+		 * A request for 64 bytes of data with the maxpacket guessed
+		 * as 64 (above) yields a request for 1 packet.
+		 */
+		err = get_descriptor_len(dev, 64, 8);
+		if (err)
+			return err;
+	}
+
+	dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
+	dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
+
+	switch (dev->descriptor->bMaxPacketSize0) {
+	case 8:
+		dev->maxpacketsize  = PACKET_SIZE_8;
+		break;
+	case 16:
+		dev->maxpacketsize = PACKET_SIZE_16;
+		break;
+	case 32:
+		dev->maxpacketsize = PACKET_SIZE_32;
+		break;
+	case 64:
+		dev->maxpacketsize = PACKET_SIZE_64;
+		break;
+	}
+
+	return 0;
+}
+
 /**
  * set address of a device to the value in dev->devnum.
  * This can only be done by addressing the device via the default address (0)
@@ -289,17 +391,6 @@ static int usb_set_address(struct usb_device *dev)
 	return res;
 }
 
-static int usb_get_descriptor(struct usb_device *dev, unsigned char type,
-			unsigned char index, void *buf, int size)
-{
-	int res;
-	res = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
-			USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
-			(type << 8) + index, 0,
-			buf, size, USB_CNTL_TIMEOUT);
-	return res;
-}
-
 /*
  * By the time we get here, the device is in the default state. We need to
  * identify the thing and get the ball rolling..
@@ -324,53 +415,13 @@ int usb_new_device(struct usb_device *dev)
 
 	buf = dma_alloc(USB_BUFSIZ);
 
-	/* This is a Windows scheme of initialization sequence, with double
-	 * reset of the device (Linux uses the same sequence)
-	 * Some equipment is said to work only with such init sequence; this
-	 * patch is based on the work by Alan Stern:
-	 * http://sourceforge.net/mailarchive/forum.php?
-	 * thread_id=5729457&forum_id=5398
-	 */
-
-	/* send 64-byte GET-DEVICE-DESCRIPTOR request.  Since the descriptor is
-	 * only 18 bytes long, this will terminate with a short packet.  But if
-	 * the maxpacket size is 8 or 16 the device may be waiting to transmit
-	 * some more, or keeps on retransmitting the 8 byte header. */
-
 	desc = buf;
-	dev->descriptor->bMaxPacketSize0 = 64;	    /* Start off at 64 bytes  */
-	/* Default to 64 byte max packet size */
-	dev->maxpacketsize = PACKET_SIZE_64;
-	dev->epmaxpacketin[0] = 64;
-	dev->epmaxpacketout[0] = 64;
 
 	if (parent)
 		dev->level = parent->level + 1;
 
-	err = usb_get_descriptor(dev, USB_DT_DEVICE, 0, desc, 64);
-	if (err < 0) {
-		dev_dbg(&dev->dev, "%s: usb_get_descriptor() failed with %d\n", __func__, err);
-		goto err_out;
-	}
-
-	dev->descriptor->bMaxPacketSize0 = desc->bMaxPacketSize0;
+	usb_setup_descriptor(dev, true);
 
-	dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
-	dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
-	switch (dev->descriptor->bMaxPacketSize0) {
-	case 8:
-		dev->maxpacketsize  = PACKET_SIZE_8;
-		break;
-	case 16:
-		dev->maxpacketsize = PACKET_SIZE_16;
-		break;
-	case 32:
-		dev->maxpacketsize = PACKET_SIZE_32;
-		break;
-	case 64:
-		dev->maxpacketsize = PACKET_SIZE_64;
-		break;
-	}
 	dev->devnum = ++dev_index;
 
 	err = usb_set_address(dev); /* set address */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
