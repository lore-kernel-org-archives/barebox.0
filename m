Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXLV8-0004so-1D
 for barebox@lists.infradead.org; Tue, 27 Oct 2020 09:42:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2020 10:42:42 +0100
Message-Id: <20201027094242.32582-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: Fix initial max packet size
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

In case the USB device is a full speed device we have to set
dev->epmaxpacketin[0] and dev->epmaxpacketout[0] before doing a
get_descriptor_len() because otherwise it's unset during that call.

Fixes: 6d1d95a386 ("usb: factor out a usb_setup_descriptor() function")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index c068c64c6b..ea244d4bcf 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -332,6 +332,8 @@ static int usb_setup_descriptor(struct usb_device *dev, bool do_read)
 		dev->descriptor->bMaxPacketSize0 = 64;
 		dev->maxpacketsize = PACKET_SIZE_64;
 	}
+	dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
+	dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
 
 	if (do_read && dev->speed == USB_SPEED_FULL) {
 		int err;
@@ -355,10 +357,10 @@ static int usb_setup_descriptor(struct usb_device *dev, bool do_read)
 		err = get_descriptor_len(dev, 64, 8);
 		if (err)
 			return err;
-	}
 
-	dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
-	dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
+		dev->epmaxpacketin[0] = dev->descriptor->bMaxPacketSize0;
+		dev->epmaxpacketout[0] = dev->descriptor->bMaxPacketSize0;
+	}
 
 	switch (dev->descriptor->bMaxPacketSize0) {
 	case 8:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
