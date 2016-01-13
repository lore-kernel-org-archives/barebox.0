Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J7-Ia
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:29 +0100
Message-Id: <1452699456-1025-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/15] input: usb keyboard: convert to input framework
To: Barebox List <barebox@lists.infradead.org>

Conert the USB keyboard over to the new input core as a first user.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/Kconfig   |   1 +
 drivers/input/usb_kbd.c | 296 +++++++++---------------------------------------
 2 files changed, 55 insertions(+), 242 deletions(-)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index e0368b2..b840df2 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -54,6 +54,7 @@ config KEYBOARD_USB
 	depends on USB_HOST
 	depends on CONSOLE_FULL
 	select POLLER
+	select INPUT
 	help
 	  This driver implements support for usb keyboard.
 
diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index 655d0c7..74bc11f 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -23,56 +23,7 @@
 #include <usb/usb.h>
 #include <string.h>
 #include <dma.h>
-#include <kfifo.h>
-
-#define USB_KBD_FIFO_SIZE	50
-
-#define REPEAT_RATE	40		/* 40msec -> 25cps */
-#define REPEAT_DELAY	10		/* 10 x REPEAT_RATE = 400msec */
-
-#define NUM_LOCK	0x53
-#define CAPS_LOCK	0x39
-#define SCROLL_LOCK	0x47
-
-/* Modifier bits */
-#define LEFT_CNTR	(1 << 0)
-#define LEFT_SHIFT	(1 << 1)
-#define LEFT_ALT	(1 << 2)
-#define LEFT_GUI	(1 << 3)
-#define RIGHT_CNTR	(1 << 4)
-#define RIGHT_SHIFT	(1 << 5)
-#define RIGHT_ALT	(1 << 6)
-#define RIGHT_GUI	(1 << 7)
-
-/* Size of the keyboard buffer */
-#define USB_KBD_BUFFER_LEN	0x20
-
-/* Keyboard maps */
-static const unsigned char usb_kbd_numkey[] = {
-	'1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
-	'\r', 0x1b, '\b', '\t', ' ', '-', '=', '[', ']',
-	'\\', '#', ';', '\'', '`', ',', '.', '/'
-};
-static const unsigned char usb_kbd_numkey_shifted[] = {
-	'!', '@', '#', '$', '%', '^', '&', '*', '(', ')',
-	'\r', 0x1b, '\b', '\t', ' ', '_', '+', '{', '}',
-	'|', '~', ':', '"', '~', '<', '>', '?'
-};
-
-static const unsigned char usb_kbd_num_keypad[] = {
-	'/', '*', '-', '+', '\r',
-	'1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
-	'.', 0, 0, 0, '='
-};
-
-/*
- * map arrow keys to ^F/^B ^N/^P, can't really use the proper
- * ANSI sequence for arrow keys because the queuing code breaks
- * when a single keypress expands to 3 queue elements
- */
-static const unsigned char usb_kbd_arrow[] = {
-	0x6, 0x2, 0xe, 0x10
-};
+#include <input/input.h>
 
 /*
  * NOTE: It's important for the NUM, CAPS, SCROLL-lock bits to be in this
@@ -96,21 +47,18 @@ struct usb_kbd_pdata;
 
 struct usb_kbd_pdata {
 	uint64_t	last_report;
-	uint64_t	last_poll;
 	uint8_t		*new;
 	uint8_t		old[USB_KBD_BOOT_REPORT_SIZE];
-	uint32_t	repeat_delay;
 	uint8_t		flags;
 	struct poller_struct	poller;
 	struct usb_device	*usbdev;
-	struct console_device	cdev;
-	struct kfifo		*recv_fifo;
 	int		lock;
 	unsigned long	intpipe;
 	int		intpktsize;
 	int		intinterval;
 	struct usb_endpoint_descriptor *ep;
 	int (*do_poll)(struct usb_kbd_pdata *);
+	struct input_device input;
 };
 
 static int usb_kbd_int_poll(struct usb_kbd_pdata *data)
@@ -127,162 +75,36 @@ static int usb_kbd_cnt_poll(struct usb_kbd_pdata *data)
 			      1, 0, data->new, USB_KBD_BOOT_REPORT_SIZE);
 }
 
-#define CAPITAL_MASK	0x20
-/* Translate the scancode in ASCII */
-static int usb_kbd_translate(struct usb_kbd_pdata *data, unsigned char scancode,
-				unsigned char modifier, int pressed)
-{
-	int keycode = 0;
-
-	/* Key released */
-	if (pressed == 0) {
-		data->repeat_delay = 0;
-		return 0;
-	}
-
-	if (pressed == 2) {
-		data->repeat_delay++;
-		if (data->repeat_delay < REPEAT_DELAY)
-			return 0;
-
-		data->repeat_delay = REPEAT_DELAY;
-	}
-
-	/* Alphanumeric values */
-	if ((scancode > 3) && (scancode <= 0x1d)) {
-		keycode = scancode - 4 + 'a';
-
-		if (data->flags & USB_KBD_CAPSLOCK)
-			keycode &= ~CAPITAL_MASK;
-
-		if (modifier & (LEFT_SHIFT | RIGHT_SHIFT)) {
-			/* Handle CAPSLock + Shift pressed simultaneously */
-			if (keycode & CAPITAL_MASK)
-				keycode &= ~CAPITAL_MASK;
-			else
-				keycode |= CAPITAL_MASK;
-		}
-	}
-
-	if ((scancode > 0x1d) && (scancode < 0x3a)) {
-		/* Shift pressed */
-		if (modifier & (LEFT_SHIFT | RIGHT_SHIFT))
-			keycode = usb_kbd_numkey_shifted[scancode - 0x1e];
-		else
-			keycode = usb_kbd_numkey[scancode - 0x1e];
-	}
-
-	/* Arrow keys */
-	if ((scancode >= 0x4f) && (scancode <= 0x52))
-		keycode = usb_kbd_arrow[scancode - 0x4f];
-
-	/* Numeric keypad */
-	if ((scancode >= 0x54) && (scancode <= 0x67))
-		keycode = usb_kbd_num_keypad[scancode - 0x54];
-
-	if (data->flags & USB_KBD_CTRL)
-		keycode = scancode - 0x3;
-
-	if (pressed == 1) {
-		if (scancode == NUM_LOCK) {
-			data->flags ^= USB_KBD_NUMLOCK;
-			return 1;
-		}
-
-		if (scancode == CAPS_LOCK) {
-			data->flags ^= USB_KBD_CAPSLOCK;
-			return 1;
-		}
-		if (scancode == SCROLL_LOCK) {
-			data->flags ^= USB_KBD_SCROLLLOCK;
-			return 1;
-		}
-	}
-
-	/* Report keycode if any */
-	if (keycode) {
-		pr_debug("%s: key pressed: '%c'\n", __FUNCTION__, keycode);
-		kfifo_put(data->recv_fifo, (u_char*)&keycode, sizeof(keycode));
-	}
-
-	return 0;
-}
-
-static uint32_t usb_kbd_service_key(struct usb_kbd_pdata *data, int i, int up)
-{
-	uint32_t res = 0;
-	uint8_t *new;
-	uint8_t *old;
-
-	if (up) {
-		new = data->old;
-		old = data->new;
-	} else {
-		new = data->new;
-		old = data->old;
-	}
-
-	if ((old[i] > 3) &&
-	    (memscan(new + 2, old[i], USB_KBD_BOOT_REPORT_SIZE - 2) ==
-			new + USB_KBD_BOOT_REPORT_SIZE)) {
-		res |= usb_kbd_translate(data, old[i], data->new[0], up);
-	}
-
-	return res;
-}
-
-static void usb_kbd_setled(struct usb_kbd_pdata *data)
-{
-	struct usb_device *usbdev = data->usbdev;
-	struct usb_interface *iface = &usbdev->config.interface[0];
-	uint8_t leds = (uint8_t)(data->flags & USB_KBD_LEDMASK);
-
-	usb_control_msg(usbdev, usb_sndctrlpipe(usbdev, 0),
-		USB_REQ_SET_REPORT, USB_TYPE_CLASS | USB_RECIP_INTERFACE,
-		0x200, iface->desc.bInterfaceNumber, &leds, 1, USB_CNTL_TIMEOUT);
-}
-
-
-static int usb_kbd_process(struct usb_kbd_pdata *data)
-{
-	int i, res = 0;
-
-	/* No combo key pressed */
-	if (data->new[0] == 0x00)
-		data->flags &= ~USB_KBD_CTRL;
-	/* Left or Right Ctrl pressed */
-	else if ((data->new[0] == LEFT_CNTR) || (data->new[0] == RIGHT_CNTR))
-		data->flags |= USB_KBD_CTRL;
-
-	for (i = 2; i < USB_KBD_BOOT_REPORT_SIZE; i++) {
-		res |= usb_kbd_service_key(data, i, 0);
-		res |= usb_kbd_service_key(data, i, 1);
-	}
-
-	/* Key is still pressed */
-	if ((data->new[2] > 3) && (data->old[2] == data->new[2]))
-		res |= usb_kbd_translate(data, data->new[2], data->new[0], 2);
-
-	if (res == 1)
-		usb_kbd_setled(data);
-
-	return 1;
-}
+static const unsigned char usb_kbd_keycode[256] = {
+	  0,  0,  0,  0, 30, 48, 46, 32, 18, 33, 34, 35, 23, 36, 37, 38,
+	 50, 49, 24, 25, 16, 19, 31, 20, 22, 47, 17, 45, 21, 44,  2,  3,
+	  4,  5,  6,  7,  8,  9, 10, 11, 28,  1, 14, 15, 57, 12, 13, 26,
+	 27, 43, 43, 39, 40, 41, 51, 52, 53, 58, 59, 60, 61, 62, 63, 64,
+	 65, 66, 67, 68, 87, 88, 99, 70,119,110,102,104,111,107,109,106,
+	105,108,103, 69, 98, 55, 74, 78, 96, 79, 80, 81, 75, 76, 77, 71,
+	 72, 73, 82, 83, 86,127,116,117,183,184,185,186,187,188,189,190,
+	191,192,193,194,134,138,130,132,128,129,131,137,133,135,136,113,
+	115,114,  0,  0,  0,121,  0, 89, 93,124, 92, 94, 95,  0,  0,  0,
+	122,123, 90, 91, 85,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
+	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
+	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
+	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
+	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
+	 29, 42, 56,125, 97, 54,100,126,164,166,165,163,161,115,114,113,
+	150,158,159,128,136,177,178,176,142,152,173,140
+};
 
 static void usb_kbd_poll(struct poller_struct *poller)
 {
 	struct usb_kbd_pdata *data = container_of(poller,
 						  struct usb_kbd_pdata, poller);
 	struct usb_device *usbdev = data->usbdev;
-	int diff, tout, ret;
+	int ret, i;
 
 	if (data->lock)
 		return;
-	data->lock = 1;
 
-	if (!is_timeout_non_interruptible(data->last_poll, REPEAT_RATE * MSECOND / 2))
-		goto exit;
-	data->last_poll = get_time_ns();
+	data->lock = 1;
 
 	ret = data->do_poll(data);
 	if (ret == -EAGAIN)
@@ -293,40 +115,40 @@ static void usb_kbd_poll(struct poller_struct *poller)
 			"usb_submit_int_msg() failed. Keyboard disconnect?\n");
 		return;
 	}
-	diff = memcmp(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE);
-	tout = get_time_ns() > data->last_report + REPEAT_RATE * MSECOND;
-	if (diff || tout) {
-		data->last_report = get_time_ns();
-		if (diff) {
-			pr_debug("%s: old report: %016llx\n",
-				__func__,
-				*((volatile uint64_t *)data->old));
-			pr_debug("%s: new report: %016llx\n\n",
-				__func__,
-				*((volatile uint64_t *)data->new));
-		}
-		usb_kbd_process(data);
-		memcpy(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE);
-	}
 
-exit:
-	data->lock = 0;
-}
+	if (!memcmp(data->old, data->new, USB_KBD_BOOT_REPORT_SIZE))
+		goto exit;
 
-static int usb_kbd_getc(struct console_device *cdev)
-{
-	int code = 0;
-	struct usb_kbd_pdata *data = container_of(cdev, struct usb_kbd_pdata, cdev);
+	pr_debug("%s: new report: %016llx\n", __func__, *((volatile uint64_t *)data->new));
 
-	kfifo_get(data->recv_fifo, (u_char*)&code, sizeof(int));
-	return code;
-}
+	for (i = 0; i < 8; i++)
+		input_report_key_event(&data->input, usb_kbd_keycode[i + 224], (data->new[0] >> i) & 1);
 
-static int usb_kbd_tstc(struct console_device *cdev)
-{
-	struct usb_kbd_pdata *data = container_of(cdev, struct usb_kbd_pdata, cdev);
+	for (i = 2; i < 8; i++) {
+
+		if (data->old[i] > 3 && memscan(data->new + 2, data->old[i], 6) == data->new + 8) {
+			if (usb_kbd_keycode[data->old[i]])
+				input_report_key_event(&data->input, usb_kbd_keycode[data->old[i]], 0);
+			else
+				dev_err(&usbdev->dev,
+					 "Unknown key (scancode %#x) released.\n",
+					 data->old[i]);
+		}
+
+		if (data->new[i] > 3 && memscan(data->old + 2, data->new[i], 6) == data->old + 8) {
+			if (usb_kbd_keycode[data->new[i]])
+				input_report_key_event(&data->input, usb_kbd_keycode[data->new[i]], 1);
+			else
+				dev_err(&usbdev->dev,
+					 "Unknown key (scancode %#x) pressed.\n",
+					 data->new[i]);
+		}
+	}
 
-	return (kfifo_len(data->recv_fifo) == 0) ? 0 : 1;
+	memcpy(data->old, data->new, 8);
+
+exit:
+	data->lock = 0;
 }
 
 static int usb_kbd_probe(struct usb_device *usbdev,
@@ -335,7 +157,6 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	int ret;
 	struct usb_interface *iface = &usbdev->config.interface[0];
 	struct usb_kbd_pdata *data;
-	struct console_device *cdev;
 
 	dev_info(&usbdev->dev, "USB keyboard found\n");
 	dev_dbg(&usbdev->dev, "Debug enabled\n");
@@ -349,7 +170,6 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 
 	data = xzalloc(sizeof(struct usb_kbd_pdata));
 	usbdev->drv_data = data;
-	data->recv_fifo = kfifo_alloc(USB_KBD_FIFO_SIZE);
 	data->new = dma_alloc(USB_KBD_BOOT_REPORT_SIZE);
 
 	data->usbdev = usbdev;
@@ -371,7 +191,6 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 		ret = data->do_poll(data);
 		if (ret < 0) {
 			/* no luck */
-			kfifo_free(data->recv_fifo);
 			dma_free(data->new);
 			free(data);
 			return ret;
@@ -380,16 +199,10 @@ static int usb_kbd_probe(struct usb_device *usbdev,
 	} else
 		dev_dbg(&usbdev->dev, "poll keyboard via int ep\n");
 
-	cdev = &data->cdev;
-	usbdev->dev.type_data = cdev;
-	cdev->dev = &usbdev->dev;
-	cdev->tstc = usb_kbd_tstc;
-	cdev->getc = usb_kbd_getc;
-
-	console_register(cdev);
-	console_set_active(cdev, CONSOLE_STDIN);
+	input_device_register(&data->input);
 
 	data->poller.func = usb_kbd_poll;
+
 	return poller_register(&data->poller);
 }
 
@@ -398,8 +211,7 @@ static void usb_kbd_disconnect(struct usb_device *usbdev)
 	struct usb_kbd_pdata *data = usbdev->drv_data;
 
 	poller_unregister(&data->poller);
-	console_unregister(&data->cdev);
-	kfifo_free(data->recv_fifo);
+	input_device_unregister(&data->input);
 	dma_free(data->new);
 	free(data);
 }
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
