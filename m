Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLAN-0002h7-Pn
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 12:59:53 +0000
Date: Tue, 14 Apr 2020 14:59:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414125949.GO27288@pengutronix.de>
References: <20200404202910.12524-1-cleger@kalray.eu>
 <20200404202910.12524-6-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404202910.12524-6-cleger@kalray.eu>
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
Subject: Re: [PATCH v2 5/6] clocksource: kvx: Add kvx clocksource support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Sat, Apr 04, 2020 at 10:29:09PM +0200, Clement Leger wrote:
> Add a clocksource for kvx architecture based on core performance
> counter. This performance counter is configured to count cycles and as
> such can be used to be a clocksource.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  arch/kvx/configs/generic_defconfig |  1 +
>  drivers/clocksource/Kconfig        |  4 ++
>  drivers/clocksource/Makefile       |  1 +
>  drivers/clocksource/kvx_timer.c    | 59 ++++++++++++++++++++++++++++++
>  4 files changed, 65 insertions(+)
>  create mode 100644 drivers/clocksource/kvx_timer.c
> 
> diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
> index 3f7bb0f19..d0c2252bf 100644
> --- a/arch/kvx/configs/generic_defconfig
> +++ b/arch/kvx/configs/generic_defconfig
> @@ -1,6 +1,7 @@
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_BAUDRATE=115200
>  # CONFIG_BOOTM is not set
> +CONFIG_CLOCKSOURCE_KVX=y
>  CONFIG_CMD_CMP=y
>  CONFIG_CMD_OF_DUMP=y
>  CONFIG_CMD_POWEROFF=y
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 39ddd159f..8805cda39 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -47,6 +47,10 @@ config CLOCKSOURCE_EFI_X86
>  	bool "EFI X86 HW driver"
>  	depends on EFI_BOOTUP && X86
>  
> +config CLOCKSOURCE_KVX
> +	bool "KVX core timer clocksource"
> +	depends on KVX
> +
>  config CLOCKSOURCE_MVEBU
>  	bool
>  	depends on ARCH_MVEBU
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index cba6344bb..b4607f787 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -5,6 +5,7 @@ obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
>  obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
>  obj-$(CONFIG_CLOCKSOURCE_EFI) += efi.o
>  obj-$(CONFIG_CLOCKSOURCE_EFI_X86) += efi_x86.o
> +obj-$(CONFIG_CLOCKSOURCE_KVX)     += kvx_timer.o
>  obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
>  obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
>  obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
> diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
> new file mode 100644
> index 000000000..be2545ed0
> --- /dev/null
> +++ b/drivers/clocksource/kvx_timer.c
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2018 Kalray Inc.
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <init.h>
> +
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <asm/sfr.h>
> +
> +static uint64_t kvx_pm_read(void)
> +{
> +	return kvx_sfr_get(PM0);
> +}
> +
> +static struct clocksource kvx_clksrc = {
> +	.read	= kvx_pm_read,
> +	.mask	= CLOCKSOURCE_MASK(64),
> +	.shift	= 0,
> +};
> +
> +static int kvx_timer_probe(struct device_d *dev)
> +{
> +	struct clk *clk;
> +	uint32_t clk_freq;
> +	struct device_node *np = dev->device_node;
> +
> +	/* Get clock frequency */
> +	clk = of_clk_get(np, 0);
> +	if (IS_ERR(clk)) {
> +		pr_err("Failed to get CPU clock: %ld\n", PTR_ERR(clk));
> +		return PTR_ERR(clk);
> +	}

You have a struct device_d pointer, in that case you should use clk_get
rather than of_clk_get and dev_err rather than pr_err.

> +
> +	clk_freq = clk_get_rate(clk);
> +	clk_put(clk);

clk_put looks wrong here. Better just keep the ownership of the clock,
although it doesn't make much difference here of course.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
