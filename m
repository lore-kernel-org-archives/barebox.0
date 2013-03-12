Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFTJt-0000pg-0h
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 17:49:02 +0000
Date: Tue, 12 Mar 2013 18:48:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130312174858.GS1906@pengutronix.de>
References: <1363046484-24946-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363046484-24946-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 2/4] twl6030: add power button as an input key
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2013 at 01:01:23AM +0100, Vicente Bergas wrote:
> Done as suggested.
> Thanks for the suggestion.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  drivers/input/Kconfig          |   7 +++
>  drivers/input/Makefile         |   1 +
>  drivers/input/twl6030_pwrbtn.c | 112 +++++++++++++++++++++++++++++++++++++++++
>  include/twl6030_pwrbtn.h       |   9 ++++
>  4 files changed, 129 insertions(+)
>  create mode 100644 drivers/input/twl6030_pwrbtn.c
>  create mode 100644 include/twl6030_pwrbtn.h
> 
> diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
> index a6f1f47..3d9016b 100644
> --- a/drivers/input/Kconfig
> +++ b/drivers/input/Kconfig
> @@ -38,4 +38,11 @@ config KEYBOARD_QT1070
>  	  Say Y here if you want to use Atmel AT42QT1070 QTouch
>  	  Sensor chip as input device.
>  
> +config KEYBOARD_TWL6030
> +	tristate "TWL6030 power button"
> +	depends on MFD_TWL6030
> +	select POLLER
> +	help
> +	  Say Y here if you want to use TWL6030 power button as a key.
> +
>  endmenu
> diff --git a/drivers/input/Makefile b/drivers/input/Makefile
> index d042980..b9bcc82 100644
> --- a/drivers/input/Makefile
> +++ b/drivers/input/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
> +obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
>  obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
>  obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
> diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
> new file mode 100644
> index 0000000..ec6cf7f
> --- /dev/null
> +++ b/drivers/input/twl6030_pwrbtn.c
> @@ -0,0 +1,112 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <poller.h>
> +#include <kfifo.h>
> +#include <mfd/twl6030.h>
> +#include <twl6030_pwrbtn.h>
> +
> +struct twl6030_pwrbtn_internal_data {
> +	int code;
> +	u8 previous_state;
> +	struct twl6030 *twl6030;
> +	struct kfifo *recv_fifo;
> +	struct console_device cdev;
> +	struct poller_struct poller;
> +};
> +
> +#define PWR_PWRON_IRQ (1 << 0)
> +
> +static void ic2_key_poller(struct poller_struct *poller)
> +{
> +	struct twl6030_pwrbtn_internal_data *idata = container_of(
> +		poller, struct twl6030_pwrbtn_internal_data, poller);
> +	u8 val;
> +
> +	if (twl6030_reg_read(idata->twl6030, TWL6030_PMCM_HW, &val)) {
> +		dev_err(idata->cdev.dev, "reading i2c\n");
> +		return;
> +	}
> +	val = !(val & PWR_PWRON_IRQ);
> +	if (val != idata->previous_state && val) {
> +		kfifo_put(idata->recv_fifo, (u_char *)&idata->code,
> +			sizeof(int));
> +		dev_dbg(idata->cdev.dev, "pressed power button as %d\n",
> +			idata->code);
> +	}
> +	idata->previous_state = val;
> +}
> +
> +static int twl6030_pwrbtn_tstc(struct console_device *cdev)
> +{
> +	struct twl6030_pwrbtn_internal_data *idata = container_of(
> +		cdev, struct twl6030_pwrbtn_internal_data, cdev);
> +
> +	return kfifo_len(idata->recv_fifo) ? 1 : 0;
> +}
> +
> +static int twl6030_pwrbtn_getc(struct console_device *cdev)
> +{
> +	int code = 0;
> +	struct twl6030_pwrbtn_internal_data *idata = container_of(
> +		cdev, struct twl6030_pwrbtn_internal_data, cdev);
> +
> +	kfifo_get(idata->recv_fifo, (u_char *)&code, sizeof(int));
> +	return code;
> +}
> +
> +static int __init twl6030_pwrbtn_probe(struct device_d *dev)
> +{
> +	struct twl6030_pwrbtn_internal_data *idata;
> +	struct twl6030_pwrbtn_platform_data *pdata;
> +
> +	pdata = dev->platform_data;
> +	if (!pdata) {
> +		dev_err(dev, "missing platform_data\n");
> +		return -ENODEV;
> +	}
> +
> +	idata = xzalloc(sizeof(struct twl6030_pwrbtn_internal_data));
> +	if (!idata) {
> +		dev_err(dev, "out of memory allocating idata\n");
> +		return -ENOMEM;
> +	}

xzalloc always returns memory. You don't need to check the result.

Fixed while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
