Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cnw-0001gU-MO
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 09:02:50 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1i3cnv-0001fQ-I7
 for barebox@lists.infradead.org; Fri, 30 Aug 2019 11:02:47 +0200
References: <20190829052808.25624-1-a.fatoum@pengutronix.de>
 <20190829112626.GA10723@router.tkernel.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6aad20a4-ca38-2cd0-5df1-4a6b4950ff6a@pengutronix.de>
Date: Fri, 30 Aug 2019 11:02:47 +0200
MIME-Version: 1.0
In-Reply-To: <20190829112626.GA10723@router.tkernel.org>
Content-Language: en-US
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
Subject: Re: [PATCH] input: add handler for reset and power key input events
To: barebox@lists.infradead.org

Hello,

On 8/29/19 1:26 PM, duhuanpeng wrote:
> Hello, I merged this patch to my barebox. and test on my own board.
> 
> 1. Abort barebox booting and enter the console.
>    the board reboots immediately when I press the button without release.
>    here is my .dts about this button:
> 
>                 net {
>                         label = "board:LED1:system";
>                         gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
>                         default-state = "off";
>                         barebox,default-trigger = "net";
>                 };

Copy-paste mistake?

> 
> 2. Panic.
>    type 'go 888' make barebox panic. now I really need a 'reset' key.
>    I press and releaes the key, and try to hold this key several seconds.
>    no reaction.
> 
> Is the 'reset' key designed for reset the board when something goes wrong?

That's the watchdog's job. If your hardware features a hardware watchdog, you can
have it started on bootm or configure barebox' poller to feed it continuously.
If barebox panics or anything else happens before Linux starts feeding the watchdog,
your system will then automatically reset.

You could have barebox panic loop on a gpio, but it would only help if barebox
actually calls panic. If you run into an infinite loop, or the exception vectors
are overwritten, there's nothing barebox can do (short of evolving to barebOS and
implementing preemption and privilege separation).

Cheers
Ahmad

> 
> Regards,
> duhuanpeng
> 
> 
> On Thu, Aug 29, 2019 at 07:28:08AM +0200, Ahmad Fatoum wrote:
>> Kernel device trees may indicate linux,code = KEY_POWER or KEY_RESTART,
>> mostly for gpio-keys. Make barebox able to act on them by registering an
>> appropriate input notifier.
>>
>> Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/input/Kconfig       |  6 ++++++
>>  drivers/input/Makefile      |  1 +
>>  drivers/input/specialkeys.c | 36 ++++++++++++++++++++++++++++++++++++
>>  3 files changed, 43 insertions(+)
>>  create mode 100644 drivers/input/specialkeys.c
>>
>> diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
>> index 1f89ae3892dc..be061683fb0a 100644
>> --- a/drivers/input/Kconfig
>> +++ b/drivers/input/Kconfig
>> @@ -64,4 +64,10 @@ config KEYBOARD_USB
>>  	help
>>  	  This driver implements support for usb keyboard.
>>  
>> +config INPUT_SPECIALKEYS
>> +	bool "Special keys handler"
>> +	select INPUT
>> +	help
>> +	  Say Y here to handle key events like KEY_RESTART and KEY_POWER.
>> +
>>  endmenu
>> diff --git a/drivers/input/Makefile b/drivers/input/Makefile
>> index e694a98d1087..36a4204d5308 100644
>> --- a/drivers/input/Makefile
>> +++ b/drivers/input/Makefile
>> @@ -5,3 +5,4 @@ obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
>>  obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
>>  obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
>>  obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
>> +obj-$(CONFIG_INPUT_SPECIALKEYS)	+= specialkeys.o
>> diff --git a/drivers/input/specialkeys.c b/drivers/input/specialkeys.c
>> new file mode 100644
>> index 000000000000..51ee43218192
>> --- /dev/null
>> +++ b/drivers/input/specialkeys.c
>> @@ -0,0 +1,36 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// Copyright (c) 2019 Ahmad Fatoum, Pengutronix
>> +
>> +#include <common.h>
>> +#include <restart.h>
>> +#include <poweroff.h>
>> +#include <init.h>
>> +#include <input/input.h>
>> +#include <dt-bindings/input/linux-event-codes.h>
>> +
>> +static void input_specialkeys_notify(struct input_notifier *in,
>> +				     struct input_event *ev)
>> +{
>> +	switch (ev->code) {
>> +	case KEY_RESTART:
>> +		pr_debug("code: %d. Triggering reset.\n", ev->code);
>> +		restart_machine();
>> +		break;
>> +
>> +	case KEY_POWER:
>> +		pr_debug("code: %d. Triggering poweroff.\n", ev->code);
>> +		poweroff_machine();
>> +		break;
>> +	}
>> +
>> +	pr_debug("ignoring code: %d\n", ev->code);
>> +}
>> +
>> +static struct input_notifier notifier;
>> +
>> +static int input_specialkeys_init(void)
>> +{
>> +	notifier.notify = input_specialkeys_notify;
>> +	return input_register_notfier(&notifier);
>> +}
>> +late_initcall(input_specialkeys_init);
>> -- 
>> 2.23.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
