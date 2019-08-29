Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3E7k-0000Fc-LQ
 for barebox@lists.infradead.org; Thu, 29 Aug 2019 06:41:38 +0000
References: <20190829052808.25624-1-a.fatoum@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <443ebcdb-f66c-a608-9ccf-5fcb28721d88@pengutronix.de>
Date: Thu, 29 Aug 2019 08:41:32 +0200
MIME-Version: 1.0
In-Reply-To: <20190829052808.25624-1-a.fatoum@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] input: add handler for reset and power key input events
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

Hi

On 29.08.19 07:28, Ahmad Fatoum wrote:
> Kernel device trees may indicate linux,code = KEY_POWER or KEY_RESTART,
> mostly for gpio-keys. Make barebox able to act on them by registering an
> appropriate input notifier.
> 
> Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   drivers/input/Kconfig       |  6 ++++++
>   drivers/input/Makefile      |  1 +
>   drivers/input/specialkeys.c | 36 ++++++++++++++++++++++++++++++++++++
>   3 files changed, 43 insertions(+)
>   create mode 100644 drivers/input/specialkeys.c
> 
> diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
> index 1f89ae3892dc..be061683fb0a 100644
> --- a/drivers/input/Kconfig
> +++ b/drivers/input/Kconfig
> @@ -64,4 +64,10 @@ config KEYBOARD_USB
>   	help
>   	  This driver implements support for usb keyboard.
>   
> +config INPUT_SPECIALKEYS
> +	bool "Special keys handler"
> +	select INPUT
> +	help
> +	  Say Y here to handle key events like KEY_RESTART and KEY_POWER.
> +
>   endmenu
> diff --git a/drivers/input/Makefile b/drivers/input/Makefile
> index e694a98d1087..36a4204d5308 100644
> --- a/drivers/input/Makefile
> +++ b/drivers/input/Makefile
> @@ -5,3 +5,4 @@ obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
>   obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
>   obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
>   obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
> +obj-$(CONFIG_INPUT_SPECIALKEYS)	+= specialkeys.o
> diff --git a/drivers/input/specialkeys.c b/drivers/input/specialkeys.c
> new file mode 100644
> index 000000000000..51ee43218192
> --- /dev/null
> +++ b/drivers/input/specialkeys.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (c) 2019 Ahmad Fatoum, Pengutronix
> +
> +#include <common.h>
> +#include <restart.h>
> +#include <poweroff.h>
> +#include <init.h>
> +#include <input/input.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +
> +static void input_specialkeys_notify(struct input_notifier *in,
> +				     struct input_event *ev)
> +{
> +	switch (ev->code) {
> +	case KEY_RESTART:
> +		pr_debug("code: %d. Triggering reset.\n", ev->code);

May be it is better to increase the pr_ level, for example to pr_info? In case we have 
some buggy KEY (wrong active level, or floating input gpio) we can easily detect it.

> +		restart_machine();
> +		break;
> +
> +	case KEY_POWER:
> +		pr_debug("code: %d. Triggering poweroff.\n", ev->code);

same here.

> +		poweroff_machine();
> +		break;
> +	}
> +
> +	pr_debug("ignoring code: %d\n", ev->code);
> +}
> +
> +static struct input_notifier notifier;
> +
> +static int input_specialkeys_init(void)
> +{
> +	notifier.notify = input_specialkeys_notify;
> +	return input_register_notfier(&notifier);
> +}
> +late_initcall(input_specialkeys_init);
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
