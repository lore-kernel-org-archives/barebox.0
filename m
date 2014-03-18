Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPwrd-00084w-Ky
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 16:27:42 +0000
Date: Tue, 18 Mar 2014 17:27:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140318162719.GY17250@pengutronix.de>
References: <1395049022-13693-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395049022-13693-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2] clocksource: add dummy software-only clocksource
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 17, 2014 at 01:37:02PM +0400, Antony Pavlov wrote:
> This driver is very handy for initial barebox porting.
> It was used for running barebox on DiGiC2-based camera
> and initial porting barebox to Loongson-1 and ar9331.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reported-by: Alexander Aring <alex.aring@gmail.com>
> Reported-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/clocksource/Kconfig  | 22 +++++++++++++++++
>  drivers/clocksource/Makefile |  1 +
>  drivers/clocksource/dummy.c  | 56 ++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 79 insertions(+)
>  create mode 100644 drivers/clocksource/dummy.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 4ef25ec..f53c933 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -14,6 +14,28 @@ config CLOCKSOURCE_CLPS711X
>  	bool
>  	depends on ARCH_CLPS711X
>  
> +config CLOCKSOURCE_DUMMY
> +	bool "Enable dummy software-only clocksource"
> +	help
> +	  When porting barebox to a new SoC there might be a case
> +	  of broken or absent clocksource. This causes barebox serial
> +	  console to be non functional.
> +	  To solve the problem this software-only clocksource driver is used.
> +	      WARNING!!! This clocksource doesn't provide correct timing.
> +	  To adjust this clocksource please use CONFIG_CLOCKSOURCE_DUMMY_RATE.
> +	  The bigger rate valuest makes clocksource "faster".
> +	  It's possible to add this clocksource unconditionally.
> +	  This clocksource starts very early (pure_initcall) so
> +	  real clocksource will take over.
> +	  This can help if initialization order is wrong so that
> +	  the time functions are used before the real clocksource
> +	  was initialized.
> +
> +config CLOCKSOURCE_DUMMY_RATE
> +	int "  dummy clocksource rate"
> +	depends on CLOCKSOURCE_DUMMY
> +	default 1000
> +
>  config CLOCKSOURCE_MVEBU
>  	bool
>  	depends on ARCH_MVEBU
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index 25b7f46..834a15d 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -2,6 +2,7 @@ obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
>  obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
>  obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
>  obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
> +obj-$(CONFIG_CLOCKSOURCE_DUMMY)   += dummy.o
>  obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
>  obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
>  obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
> diff --git a/drivers/clocksource/dummy.c b/drivers/clocksource/dummy.c
> new file mode 100644
> index 0000000..154a8cd
> --- /dev/null
> +++ b/drivers/clocksource/dummy.c
> @@ -0,0 +1,56 @@
> +/*
> + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <clock.h>
> +
> +static uint64_t dummy_counter;
> +
> +static uint64_t dummy_cs_read(void)
> +{
> +	static int first;
> +
> +	if (!first) {
> +		pr_warn("Warning: Using dummy clocksource\n");
> +		first = 1;
> +	}
> +
> +	dummy_counter += CONFIG_CLOCKSOURCE_DUMMY_RATE;
> +
> +	return dummy_counter;
> +}
> +
> +static struct clocksource dummy_cs = {
> +	.read	= dummy_cs_read,
> +	.mask   = CLOCKSOURCE_MASK(32),
> +};
> +
> +static int clocksource_init(void)
> +{
> +	dummy_counter = 0;
> +
> +	clocks_calc_mult_shift(&dummy_cs.mult, &dummy_cs.shift,
> +		100000000, NSEC_PER_SEC, 10);
> +
> +	pr_debug("clocksource_init: mult=%08x, shift=%08x\n",
> +			dummy_cs.mult, dummy_cs.shift);
> +	init_clock(&dummy_cs);
> +
> +	return 0;
> +}
> +pure_initcall(clocksource_init);
> -- 
> 1.9.0
> 
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
