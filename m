Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward12p.cmail.yandex.net ([87.250.241.138])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab4qZ-0006PX-Hv
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 11:21:41 +0000
Received: from smtp14.mail.yandex.net (smtp14.mail.yandex.net
 [IPv6:2a02:6b8:0:801:1::13])
 by forward12p.cmail.yandex.net (Yandex) with ESMTP id E23FC21030
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 14:07:19 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  2 Mar 2016 13:50:36 +0300
Message-Id: <1456915836-11021-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH] usb_kbd: fix overpolling of keyboard
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

- use async callings to call poll function
- remove unused
- remove unnecessary locking
---
 drivers/input/usb_kbd.c | 41 ++++++++++++++++++++---------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 74bc11f..03796f3 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -46,13 +46,10 @@
 struct usb_kbd_pdata;
 
 struct usb_kbd_pdata {
-	uint64_t	last_report;
 	uint8_t		*new;
 	uint8_t		old[USB_KBD_BOOT_REPORT_SIZE];
-	uint8_t		flags;
-	struct poller_struct	poller;
+	struct poller_async	poller;
 	struct usb_device	*usbdev;
-	int		lock;
 	unsigned long	intpipe;
 	int		intpktsize;
 	int		intinterval;
@@ -94,23 +91,17 @@ static const unsigned char usb_kbd_keycode[256] = {
 	150,158,159,128,136,177,178,176,142,152,173,140
 };
 
-static void usb_kbd_poll(struct poller_struct *poller)
+static void usb_kbd_poll(void *arg)
 {
-	struct usb_kbd_pdata *data = container_of(poller,
-						  struct usb_kbd_pdata, poller);
+	struct usb_kbd_pdata *data = arg;
 	struct usb_device *usbdev = data->usbdev;
 	int ret, i;
 
-	if (data->lock)
-		return;
-
-	data->lock = 1;
-
 	ret = data->do_poll(data);
 	if (ret == -EAGAIN)
 		goto exit;
 	if (ret < 0) {
-		/* exit and lock forever */
+		/* exit and die forever */
 		dev_err(&usbdev->dev,
 			"usb_submit_int_msg() failed. Keyboard disconnect?\n");
 		return;
@@ -125,7 +116,6 @@ static void usb_kbd_poll(struct poller_struct *poller)
 		input_report_key_event(&data->input, usb_kbd_keycode[i + 224], (data->new[0] >> i) & 1);
 
 	for (i = 2; i < 8; i++) {
-
 		if (data->old[i] > 3 && memscan(data->new + 2, data->old[i], 6) == data->new + 8) {
 			if (usb_kbd_keycode[data->old[i]])
 				input_report_key_event(&data->input, usb_kbd_keycode[data->old[i]], 0);
@@ -145,10 +135,10 @@ static void usb_kbd_poll(struct poller_struct *poller)
 		}
 	}
 
-	memcpy(data->old, data->new, 8);
+	memcpy(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE);
 
 exit:
-	data->lock = 0;
+	poller_call_async(&data->poller, data->intinterval * MSECOND, usb_kbd_poll, data);
 }
 
 static int usb_kbd_probe(struct usb_device *usbdev,
@@ -173,7 +163,6 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	data->new = dma_alloc(USB_KBD_BOOT_REPORT_SIZE);
 
 	data->usbdev = usbdev;
-	data->last_report = get_time_ns();
 
 	data->ep = &iface->ep_desc[0];
 	data->intpipe = usb_rcvintpipe(usbdev, data->ep->bEndpointAddress);
@@ -199,18 +188,28 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	} else
 		dev_dbg(&usbdev->dev, "poll keyboard via int ep\n");
 
-	input_device_register(&data->input);
+	ret = input_device_register(&data->input);
+	if (ret) {
+		dev_err(&usbdev->dev, "can't register input\n");
+		return ret;
+	}
+
+	ret = poller_async_register(&data->poller);
+	if (ret) {
+		dev_err(&usbdev->dev, "can't setup poller\n");
+		return ret;
+	}
 
-	data->poller.func = usb_kbd_poll;
+	poller_call_async(&data->poller, data->intinterval * MSECOND, usb_kbd_poll, data);
 
-	return poller_register(&data->poller);
+	return 0;
 }
 
 static void usb_kbd_disconnect(struct usb_device *usbdev)
 {
 	struct usb_kbd_pdata *data = usbdev->drv_data;
 
-	poller_unregister(&data->poller);
+	poller_async_unregister(&data->poller);
 	input_device_unregister(&data->input);
 	dma_free(data->new);
 	free(data);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
