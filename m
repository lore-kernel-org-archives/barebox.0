Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ4L0-0003TA-61
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 16:29:20 +0000
Received: by mail-bk0-f41.google.com with SMTP id na10so2446742bkb.14
 for <barebox@lists.infradead.org>; Mon, 09 Sep 2013 09:28:51 -0700 (PDT)
Message-ID: <522DF740.9050503@gmail.com>
Date: Mon, 09 Sep 2013 18:28:48 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1378738482-15488-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1378738482-15488-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] gpio: Add designware gpio controller support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09/09/13 16:54, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   drivers/gpio/Kconfig   |   6 ++
>   drivers/gpio/Makefile  |   1 +
>   drivers/gpio/gpio-dw.c | 151 +++++++++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 158 insertions(+)
>   create mode 100644 drivers/gpio/gpio-dw.c
>
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index d5ac532..18d3135 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -54,6 +54,12 @@ config GPIO_TEGRA
>   	help
>   	  Say yes here to include the driver for the GPIO controller found on the
>   	  Tegra line of SoCs.
> +
> +config GPIO_DESIGNWARE
> +	tristate "Synopsys DesignWare GPIO driver"

Sascha,

I know DW's GPIO is also used on Armada 1500 which I currently work on.
Precisely, the IP is named dw-apb-gpio. Maybe the above should also
reflect APB.

[...]
> diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
> new file mode 100644
> index 0000000..54e7452
> --- /dev/null
> +++ b/drivers/gpio/gpio-dw.c
> @@ -0,0 +1,151 @@
[...]
> +#include <common.h>
> +#include <errno.h>
> +#include <io.h>
> +#include <gpio.h>
> +#include <init.h>
> +
> +#define GPIO_INT_EN_REG_OFFSET 		0x30
> +#define GPIO_INT_MASK_REG_OFFSET 	0x34
> +#define GPIO_INT_TYPE_LEVEL_REG_OFFSET 	0x38
> +#define GPIO_INT_POLARITY_REG_OFFSET 	0x3c
> +#define GPIO_INT_STATUS_REG_OFFSET 	0x40
> +#define GPIO_PORT_A_EOI_REG_OFFSET 	0x4c

I have seen this driver and think it can be improved by exploiting
its config1/2 registers where synthesis settings are stored. Please
also look at [1] pp.1229; you can read out number of ports, port
width, interrupt, and debounce features.

Unfortunately, I am not ready to run barebox on Armada 1500 and I
don't have a socfpga to test. So if you are not eager to modify it now,
I can add config reg based read-out later.

[1] http://www.altera.com/literature/hb/arria-v/hps.pdf

[...]
> +static __maybe_unused struct of_device_id dwgpio_match[] = {
> +	{
> +		.compatible = "snps,dw-gpio",
> +	}, {

Please add "snps,dw-apb-gpio", that's what the linux driver
will look for if make to pick it up for Armada 1500.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
