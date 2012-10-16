Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOEOm-0007ni-RT
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 21:10:01 +0000
Date: Tue, 16 Oct 2012 23:09:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016210958.GB27665@pengutronix.de>
References: <1350410685-46202-1-git-send-email-carlo.caione@gmail.com>
 <1350410685-46202-3-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350410685-46202-3-git-send-email-carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] BCM2835: add gpio driver
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

Hi Carlo,

I had an additional look before applying it, but there are still
some things that deserve a cleanup.

On Tue, Oct 16, 2012 at 08:04:42PM +0200, Carlo Caione wrote:
> +#include <common.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <io.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <mach/platform.h>

Is this needed? I think not as this file only defines some base
addresses.

> +static int bcm2835_gpio_probe(struct device_d *dev)
> +{
> +	struct bcm2835_gpio_chip *bcmgpio;
> +	int ret;
> +
> +	bcmgpio = xzalloc(sizeof(*bcmgpio));
> +	bcmgpio->base = dev_request_mem_region(dev, 0);
> +	bcmgpio->chip.ops = &bcm2835_gpio_ops;
> +	bcmgpio->chip.base = -1;

Better to use 0 for base of the SoC internal gpios (or something like
dev->id * 32) to get a known base for the gpios. Board code will likely
depend on fixed numbers.

> +
> +static __maybe_unused struct of_device_id bcm2835_gpio_dt_ids[] = {
> +	{
> +			.compatible = "brcm,bcm2835-gpio",

Too many whitespaces here.

Sascha

> +static int bcm2835_gpio_add(void)
> +{
> +	platform_driver_register(&bcm2835_gpio_driver);
> +	return 0;

return platform_device_register() please. We had a time when barebox
just paniced when an initcall failed, hence we never returned
unsuccesful. Now we just print an error message, so when the register
for some reason fails you will see it.

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
