Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward10h.cmail.yandex.net ([2a02:6b8:0:f35::ec])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbkv-0003GK-Hd
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:54:23 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net
 [IPv6:2a02:6b8:0:f05::116])
 by forward10h.cmail.yandex.net (Yandex) with ESMTP id 27212222C5
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 13:53:52 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:17:51 +0300
Message-Id: <1457518672-30074-4-git-send-email-rndfax@yandex.ru>
In-Reply-To: <1457518672-30074-1-git-send-email-rndfax@yandex.ru>
References: <1457518672-30074-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v3 4/5] usb_kbd: use async polling instead of regular polling
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

This fixes the overpolling of USB keyboard which
causes slowdown of entier barebox by using periodic
polling occuting once per some milliseconds.

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/input/usb_kbd.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 6f7a081..bdaf305 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -48,7 +48,7 @@ struct usb_kbd_pdata;
 struct usb_kbd_pdata {
 	uint8_t		*new;
 	uint8_t		old[USB_KBD_BOOT_REPORT_SIZE];
-	struct poller_struct	poller;
+	struct poller_async	poller;
 	struct usb_device	*usbdev;
 	int		lock;
 	unsigned long	intpipe;
@@ -92,10 +92,9 @@ static const unsigned char usb_kbd_keycode[256] = {
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
 
@@ -146,6 +145,7 @@ static void usb_kbd_poll(struct poller_struct *poller)
 
 exit:
 	data->lock = 0;
+	poller_call_async(&data->poller, data->intinterval * MSECOND, usb_kbd_poll, data);
 }
 
 static int usb_kbd_probe(struct usb_device *usbdev,
@@ -201,16 +201,22 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 		return ret;
 	}
 
-	data->poller.func = usb_kbd_poll;
+	ret = poller_async_register(&data->poller);
+	if (ret) {
+		dev_err(&usbdev->dev, "can't setup poller\n");
+		return ret;
+	}
+
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
