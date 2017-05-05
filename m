Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6Zyp-0001uK-2i
 for barebox@lists.infradead.org; Fri, 05 May 2017 09:56:57 +0000
Received: by mail-lf0-x244.google.com with SMTP id 99so116258lfu.2
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 02:56:34 -0700 (PDT)
Date: Fri, 5 May 2017 13:05:20 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170505130520.390b624caa1617fe7153e642@gmail.com>
In-Reply-To: <1452699456-1025-8-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
 <1452699456-1025-8-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/15] input: Add input core
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, 13 Jan 2016 16:37:28 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> Currently all input driver register themselves as consoles. Consoles are
> fine for typing text, but they do not allow to ask for the current
> pressed state of buttons or keypads. They also do not support non
> printable keys like the function keys.
> =

> This patch adds a simple input core. On the driver side it supports
> input_report_key_event() to report events (button presses and releases).
> On the consumer side it allows getting the current button status via
> input_key_get_status(). Also an event driven interface is available

It looks like there is no input_key_get_status() user in barebox-v2017.05.0=
 ...

> which calls a callback whenever an input event is received.
> The input core also registers a console for all registered input
> devices which handles passing events to the console and stuff like key
> repetition, so this can be removed from the drivers once they are
> converted to the input core.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/input/Kconfig  |   3 +
>  drivers/input/Makefile |   1 +
>  drivers/input/input.c  | 202 +++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/input/input.h  |  34 +++++++++
>  4 files changed, 240 insertions(+)
>  create mode 100644 drivers/input/input.c
>  create mode 100644 include/input/input.h
> =

> diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
> index 336b9f5..e0368b2 100644
> --- a/drivers/input/Kconfig
> +++ b/drivers/input/Kconfig
> @@ -5,6 +5,9 @@
>  menu "Input device support"
>  	depends on !CONSOLE_NONE
>  =

> +config INPUT
> +	bool
> +
>  config KEYBOARD_GPIO
>  	bool "GPIO Buttons"
>  	depends on GENERIC_GPIO
> diff --git a/drivers/input/Makefile b/drivers/input/Makefile
> index 40b898c..b9e5a5d 100644
> --- a/drivers/input/Makefile
> +++ b/drivers/input/Makefile
> @@ -1,3 +1,4 @@
> +obj-$(CONFIG_INPUT) +=3D input.o
>  obj-$(CONFIG_KEYBOARD_USB) +=3D usb_kbd.o
>  obj-$(CONFIG_KEYBOARD_GPIO) +=3D gpio_keys.o
>  obj-$(CONFIG_KEYBOARD_TWL6030) +=3D twl6030_pwrbtn.o
> diff --git a/drivers/input/input.c b/drivers/input/input.c
> new file mode 100644
> index 0000000..ad7400f
> --- /dev/null
> +++ b/drivers/input/input.c
> @@ -0,0 +1,202 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; version 2.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
> + * General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <kfifo.h>
> +#include <poller.h>
> +#include <clock.h>
> +#include <input/input.h>
> +#include <linux/bitmap.h>
> +#include <input/keyboard.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +
> +static LIST_HEAD(input_consumers);
> +
> +int input_register_notfier(struct input_notifier *in)
> +{
> +	list_add_tail(&in->list, &input_consumers);
> +
> +	return 0;
> +}
> +
> +void input_unregister_notfier(struct input_notifier *in)
> +{
> +	list_del(&in->list);
> +}
> +
> +void input_report_key_event(struct input_device *idev, unsigned int code=
, int value)
> +{
> +	struct input_event event;
> +	struct input_notifier *in;
> +
> +	if (code > KEY_MAX)
> +		return;
> +
> +	if (value)
> +		set_bit(code, &idev->keys);
> +	else
> +		clear_bit(code, &idev->keys);
> +
> +	event.code =3D code;
> +	event.value =3D value;
> +
> +	list_for_each_entry(in, &input_consumers, list)
> +		in->notify(in, &event);
> +}
> +
> +static LIST_HEAD(input_devices);
> +
> +int input_device_register(struct input_device *idev)
> +{
> +	list_add_tail(&idev->list, &input_devices);
> +
> +	return 0;
> +}
> +
> +void input_device_unregister(struct input_device *idev)
> +{
> +	list_del(&idev->list);
> +}
> +
> +void input_key_get_status(unsigned long *keys, int bits)
> +{
> +	struct input_device *idev;
> +
> +	bitmap_zero(keys, bits);
> +
> +	if (bits > KEY_MAX)
> +		bits =3D KEY_MAX;
> +
> +	list_for_each_entry(idev, &input_devices, list)
> +		bitmap_or(keys, keys, idev->keys, bits);
> +}
> +
> +struct input_console {
> +	struct console_device console;
> +	struct input_notifier notifier;
> +	struct kfifo *fifo;
> +	struct poller_async poller;
> +	uint8_t current_key;
> +	uint8_t modstate[6];
> +};
> +
> +static int input_console_tstc(struct console_device *cdev)
> +{
> +	struct input_console *ic =3D container_of(cdev, struct input_console, c=
onsole);
> +
> +	return kfifo_len(ic->fifo) ? 1 : 0;
> +}
> +
> +static int input_console_getc(struct console_device *cdev)
> +{
> +	struct input_console *ic =3D container_of(cdev, struct input_console, c=
onsole);
> +	uint8_t c;
> +
> +	kfifo_getc(ic->fifo, &c);
> +
> +	return c;
> +}
> +
> +static void input_console_repeat(void *ctx)
> +{
> +	struct input_console *ic =3D ctx;
> +
> +	if (ic->current_key) {
> +		kfifo_putc(ic->fifo, ic->current_key);
> +		poller_call_async(&ic->poller, 40 * MSECOND,
> +				  input_console_repeat, ic);
> +	}
> +}
> +
> +struct keycode {
> +	unsigned char key;
> +	unsigned char ascii;
> +};
> +
> +static void input_console_notify(struct input_notifier *in,
> +				 struct input_event *ev)
> +{
> +	struct input_console *ic =3D container_of(in, struct input_console, not=
ifier);
> +	uint8_t modstate =3D 0;
> +	unsigned char ascii;
> +
> +	switch (ev->code) {
> +	case KEY_LEFTSHIFT:
> +		ic->modstate[0] =3D ev->value;
> +		return;
> +	case KEY_RIGHTSHIFT:
> +		ic->modstate[1] =3D ev->value;
> +		return;
> +	case KEY_LEFTCTRL:
> +		ic->modstate[2] =3D ev->value;
> +		return;
> +	case KEY_RIGHTCTRL:
> +		ic->modstate[3] =3D ev->value;
> +		return;
> +	case KEY_LEFTALT:
> +		ic->modstate[4] =3D ev->value;
> +		return;
> +	case KEY_RIGHTALT:
> +		ic->modstate[5] =3D ev->value;
> +		return;
> +	case KEY_LEFTMETA:
> +	case KEY_RIGHTMETA:
> +		return;
> +	default:
> +		break;
> +	}
> +
> +	if (ic->modstate[0] || ic->modstate[1])
> +		modstate |=3D 1 << 0;
> +
> +	if (ic->modstate[2] || ic->modstate[3])
> +		modstate |=3D 1 << 1;
> +
> +	if (ic->modstate[4] || ic->modstate[5])
> +		modstate |=3D 1 << 2;
> +
> +	if (modstate & (1 << 0))
> +		ascii =3D keycode_bb_shift_keys[ev->code];
> +	else
> +		ascii =3D keycode_bb_keys[ev->code];
> +
> +	pr_debug("map %02x KEY: 0x%04x code: %d\n", modstate, ascii, ev->code);
> +
> +	if (ev->value) {
> +		kfifo_putc(ic->fifo, ascii);
> +		ic->current_key =3D ascii;
> +		poller_call_async(&ic->poller, 400 * MSECOND,
> +				  input_console_repeat, ic);
> +	} else {
> +		ic->current_key =3D 0;
> +		poller_async_cancel(&ic->poller);
> +	}
> +}
> +
> +static struct input_console input_console;
> +
> +static int input_init(void)
> +{
> +	struct input_console *ic =3D &input_console;
> +
> +	ic->console.tstc =3D input_console_tstc;
> +	ic->console.getc =3D input_console_getc;
> +	ic->console.f_active =3D CONSOLE_STDIN;
> +
> +	ic->fifo =3D kfifo_alloc(32);
> +	ic->notifier.notify =3D input_console_notify;
> +	input_register_notfier(&ic->notifier);
> +	poller_async_register(&ic->poller);
> +
> +	return console_register(&ic->console);
> +}
> +console_initcall(input_init);
> diff --git a/include/input/input.h b/include/input/input.h
> new file mode 100644
> index 0000000..dbf3e7f
> --- /dev/null
> +++ b/include/input/input.h
> @@ -0,0 +1,34 @@
> +#ifndef __INPUT_H
> +#define __INPUT_H
> +
> +#include <linux/types.h>
> +#include <linux/list.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +
> +struct input_event {
> +	uint16_t code;
> +	uint16_t value;
> +};
> +
> +struct input_device {
> +	struct list_head list;
> +	DECLARE_BITMAP(keys, KEY_CNT);
> +};
> +
> +void input_report_key_event(struct input_device *idev, unsigned int code=
, int value);
> +
> +int input_device_register(struct input_device *);
> +void input_device_unregister(struct input_device *);
> +
> +void input_key_get_status(unsigned long *keys, int bits);
> +
> +struct input_notifier {
> +	void (*notify)(struct input_notifier *in, struct input_event *event);
> +	struct list_head list;
> +};
> +
> +int input_register_notfier(struct input_notifier *in);
> +void input_unregister_notfier(struct input_notifier *in);
> +
> +#endif /* __INPUT_H */
> +
> -- =

> 2.6.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
