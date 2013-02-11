Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4pyS-0005dp-Aj
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:46:56 +0000
Date: Mon, 11 Feb 2013 10:46:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211094654.GV1906@pengutronix.de>
References: <20130210155819.GU19322@game.jcrosoft.org>
 <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] clocksource: add ARM AMBA SP804 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 10, 2013 at 05:02:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/clocksource/Kconfig      |    4 ++
>  drivers/clocksource/Makefile     |    1 +
>  drivers/clocksource/amba-sp804.c |   89 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 94 insertions(+)
>  create mode 100644 drivers/clocksource/amba-sp804.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 09acdd7..3f27cf2 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -1,3 +1,7 @@
> +config AMBA_SP804
> +	bool
> +	depends on ARM_AMBA
> +
>  config ARM_SMP_TWD
>  	bool
>  	depends on ARM && CPU_V7
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index 92d7c13..b0bc8bd 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -1,3 +1,4 @@
> +obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
>  obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
>  obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
>  obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
> diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
> new file mode 100644
> index 0000000..bb6facc
> --- /dev/null
> +++ b/drivers/clocksource/amba-sp804.c
> @@ -0,0 +1,89 @@
> +/*
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPL v2
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <clock.h>
> +#include <io.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <linux/amba/bus.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <asm/hardware/arm_timer.h>
> +
> +static __iomem void *sp804_base;
> +static struct clk *sp804_clk;
> +
> +static uint64_t sp804_read(void)
> +{
> +	return ~readl(sp804_base + TIMER_VALUE);
> +}
> +
> +static struct clocksource sp804_clksrc = {
> +	.read	= sp804_read,
> +	.shift	= 20,
> +	.mask	= CLOCKSOURCE_MASK(32),
> +};
> +
> +static int sp804_probe(struct amba_device *dev, const struct amba_id *id)
> +{
> +	u32 tick_rate;
> +	int ret;
> +

Since this is a single instance driver please protect this driver from
being probed twice:

	if (sp804_base)
		return -EBUSY;

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
