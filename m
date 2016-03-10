Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adwrh-0003uv-Lm
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 09:26:43 +0000
Date: Thu, 10 Mar 2016 10:26:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160310092619.GK30994@pengutronix.de>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
 <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
 <20160304071921.GD21869@pengutronix.de>
 <4230541457086688@web17h.yandex.ru>
 <20160307073016.GG21869@pengutronix.de>
 <1569051457342206@web17j.yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569051457342206@web17j.yandex.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] input: make the Input Core be the last in the poller
 queue
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Mar 07, 2016 at 12:16:46PM +0300, Aleksey Kuleshov wrote:
> >> =A0This function is ASYNC. All what you have to do is to make sure that
> >> =A0this function gets called AFTER all input-driver-providers will be =
polled.
> >
> > I thought that aswell and thought I should have fixed this issue in my
> > patch, but it didn't work as expected so there's still something wrong,
> > either in my thoughts or in my implementation.
> =

> Well, until we all see this patch nobody can help :)

Indeed not ;)

Here it is. It now works, presumable because of your recent change to
the interrupt transactions (ehci-hcd: preserve DTC in QH for interrupt
transactions). As the commit log says the patch is not yet ready.

Sascha

----------------------------8<---------------------------------

From e0bfdea8b65572f5119fe3b47c3c04cc6ef91fc2 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 3 Mar 2016 09:04:19 +0100
Subject: [PATCH] input: Let input core poll devices (wip)

So far each input device registers its own poller. This is not
necessary: We do not have interrupt support, so every input device
will need to poll. Let the core register one poller and drop the
ones from the individual devices. This also has the advantage that
we can handle the key repetition in the core.

This is not ready yet, only the USB keyboard driver is converted, the
other drivers need fixup aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/input.c   | 47 ++++++++++++++++++++++++++++-----------------=
--
 drivers/input/usb_kbd.c | 26 +++++++-------------------
 include/input/input.h   |  4 ++++
 3 files changed, 39 insertions(+), 38 deletions(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 31a9c22..f59bd27 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -36,7 +36,7 @@ void input_unregister_notfier(struct input_notifier *in)
 =

 void input_report_key_event(struct input_device *idev, unsigned int code, =
int value)
 {
-	struct input_event event;
+	struct input_event *event =3D &idev->event;
 	struct input_notifier *in;
 =

 	if (code > KEY_MAX)
@@ -47,11 +47,13 @@ void input_report_key_event(struct input_device *idev, =
unsigned int code, int va
 	else
 		clear_bit(code, &idev->keys);
 =

-	event.code =3D code;
-	event.value =3D value;
+	event->code =3D code;
+	event->value =3D value;
+	idev->start =3D get_time_ns();
+	idev->timeout =3D 400 * MSECOND;
 =

 	list_for_each_entry(in, &input_consumers, list)
-		in->notify(in, &event);
+		in->notify(in, event);
 }
 =

 static LIST_HEAD(input_devices);
@@ -107,17 +109,31 @@ static int input_console_getc(struct console_device *=
cdev)
 	return c;
 }
 =

-static void input_console_repeat(void *ctx)
+static void input_devices_poller_func(struct poller_struct *poller)
 {
-	struct input_console *ic =3D ctx;
+	struct input_device *idev;
+	static uint64_t last_poll;
+	struct input_notifier *in;
+
+	if (!is_timeout(last_poll, 10 * MSECOND))
+		return;
 =

-	if (ic->current_key) {
-		kfifo_putc(ic->fifo, ic->current_key);
-		poller_call_async(&ic->poller, 40 * MSECOND,
-				  input_console_repeat, ic);
+	list_for_each_entry(idev, &input_devices, list) {
+		idev->poll(idev);
+
+		if (idev->event.value && is_timeout(idev->start, idev->timeout)) {
+			list_for_each_entry(in, &input_consumers, list)
+				in->notify(in, &idev->event);
+			idev->timeout =3D 40 * MSECOND;
+			idev->start =3D get_time_ns();
+		}
 	}
 }
 =

+struct poller_struct input_poller =3D {
+	.func =3D input_devices_poller_func,
+};
+
 struct keycode {
 	unsigned char key;
 	unsigned char ascii;
@@ -175,15 +191,8 @@ static void input_console_notify(struct input_notifier=
 *in,
 =

 	pr_debug("map %02x KEY: 0x%04x code: %d\n", modstate, ascii, ev->code);
 =

-	if (ev->value) {
+	if (ev->value)
 		kfifo_putc(ic->fifo, ascii);
-		ic->current_key =3D ascii;
-		poller_call_async(&ic->poller, 400 * MSECOND,
-				  input_console_repeat, ic);
-	} else {
-		ic->current_key =3D 0;
-		poller_async_cancel(&ic->poller);
-	}
 }
 =

 static struct input_console input_console;
@@ -199,7 +208,7 @@ static int input_init(void)
 	ic->fifo =3D kfifo_alloc(32);
 	ic->notifier.notify =3D input_console_notify;
 	input_register_notfier(&ic->notifier);
-	poller_async_register(&ic->poller);
+	poller_register(&input_poller);
 =

 	return console_register(&ic->console);
 }
diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 2acc95d..a0e3120 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -48,7 +48,7 @@ struct usb_kbd_pdata;
 struct usb_kbd_pdata {
 	uint8_t		*new;
 	uint8_t		old[USB_KBD_BOOT_REPORT_SIZE];
-	struct poller_async	poller;
+	uint8_t		flags;
 	struct usb_device	*usbdev;
 	unsigned long	intpipe;
 	int		intpktsize;
@@ -91,9 +91,10 @@ static const unsigned char usb_kbd_keycode[256] =3D {
 	150,158,159,128,136,177,178,176,142,152,173,140
 };
 =

-static void usb_kbd_poll(void *arg)
+static void usb_kbd_poll(struct input_device *input)
 {
-	struct usb_kbd_pdata *data =3D arg;
+	struct usb_kbd_pdata *data =3D container_of(input,
+						  struct usb_kbd_pdata, input);
 	struct usb_device *usbdev =3D data->usbdev;
 	int ret, i;
 =

@@ -138,7 +139,7 @@ static void usb_kbd_poll(void *arg)
 	memcpy(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE);
 =

 exit:
-	poller_call_async(&data->poller, data->intinterval * MSECOND, usb_kbd_pol=
l, data);
+	return;
 }
 =

 static int usb_kbd_probe(struct usb_device *usbdev,
@@ -188,28 +189,15 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	} else
 		dev_dbg(&usbdev->dev, "poll keyboard via int ep\n");
 =

-	ret =3D input_device_register(&data->input);
-	if (ret) {
-		dev_err(&usbdev->dev, "can't register input\n");
-		return ret;
-	}
-
-	ret =3D poller_async_register(&data->poller);
-	if (ret) {
-		dev_err(&usbdev->dev, "can't setup poller\n");
-		return ret;
-	}
-
-	poller_call_async(&data->poller, data->intinterval * MSECOND, usb_kbd_pol=
l, data);
+	data->input.poll =3D usb_kbd_poll;
 =

-	return 0;
+	return input_device_register(&data->input);
 }
 =

 static void usb_kbd_disconnect(struct usb_device *usbdev)
 {
 	struct usb_kbd_pdata *data =3D usbdev->drv_data;
 =

-	poller_async_unregister(&data->poller);
 	input_device_unregister(&data->input);
 	dma_free(data->new);
 	free(data);
diff --git a/include/input/input.h b/include/input/input.h
index dbf3e7f..44280af 100644
--- a/include/input/input.h
+++ b/include/input/input.h
@@ -13,6 +13,10 @@ struct input_event {
 struct input_device {
 	struct list_head list;
 	DECLARE_BITMAP(keys, KEY_CNT);
+	void (*poll)(struct input_device *);
+	struct input_event event;
+	uint64_t start;
+	uint64_t timeout;
 };
 =

 void input_report_key_event(struct input_device *idev, unsigned int code, =
int value);
-- =

2.7.0

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
