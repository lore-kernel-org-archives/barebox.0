Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zel8h-0008Eo-Dp
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 14:35:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 16:34:55 +0200
Message-Id: <1443018895-20796-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443018895-20796-1-git-send-email-s.hauer@pengutronix.de>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
 <1443018895-20796-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fixup! input: port usb keyboard driver from the u-boot
To: Barebox List <barebox@lists.infradead.org>

No need for coherent memory in the keyboard driver. The USB driver should
handle the cache handling.
---
 drivers/input/usb_kbd.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 3d70c8d..8c08aba 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -347,7 +347,7 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	data = xzalloc(sizeof(struct usb_kbd_pdata));
 	usbdev->drv_data = data;
 	data->recv_fifo = kfifo_alloc(USB_KBD_FIFO_SIZE);
-	data->new = dma_alloc_coherent(USB_KBD_BOOT_REPORT_SIZE, NULL);
+	data->new = dma_alloc(USB_KBD_BOOT_REPORT_SIZE);
 
 	data->usbdev = usbdev;
 	data->last_report = get_time_ns();
@@ -369,8 +369,7 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 		if (ret < 0) {
 			/* no luck */
 			kfifo_free(data->recv_fifo);
-			dma_free_coherent(data->new, 0,
-					  USB_KBD_BOOT_REPORT_SIZE);
+			dma_free(data->new);
 			free(data);
 			return ret;
 		} else
@@ -398,7 +397,7 @@ static void usb_kbd_disconnect(struct usb_device *usbdev)
 	poller_unregister(&data->poller);
 	console_unregister(&data->cdev);
 	kfifo_free(data->recv_fifo);
-	dma_free_coherent(data->new, 0, USB_KBD_BOOT_REPORT_SIZE);
+	dma_free(data->new);
 	free(data);
 }
 
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
