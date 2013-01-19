Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwWe1-0006kC-5l
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 11:31:29 +0000
Date: Sat, 19 Jan 2013 12:31:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130119113127.GI1906@pengutronix.de>
References: <20130119112125.GH22953@game.jcrosoft.org>
 <1358594814-8297-1-git-send-email-plagnioj@jcrosoft.com>
 <1358594814-8297-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358594814-8297-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 6/7] at91: add bootstrap version
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 19, 2013 at 12:26:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to boot from NAND/MMC and others.
> This version of bootstrap is a non shell version of barebox compressed by the
> pbl.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/Kconfig                  |    1 +
>  arch/arm/mach-at91/Makefile                 |    1 +
>  arch/arm/mach-at91/bootstrap.c              |   86 +++++++++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/bootstrap.h |   28 +++++++++
>  4 files changed, 116 insertions(+)
>  create mode 100644 arch/arm/mach-at91/bootstrap.c
>  create mode 100644 arch/arm/mach-at91/include/mach/bootstrap.h
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 2925b1f..484d076 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -92,6 +92,7 @@ config SOC_AT91SAM9263
>  	select HAVE_AT91_DBGU1
>  	select HAS_MACB
>  	select AT91SAM9_RESET
> +	select HAVE_NOSHELL
>  
>  config SOC_AT91SAM9G45
>  	bool
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 4404d23..e582f1a 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -1,6 +1,7 @@
>  obj-y += setup.o clock.o gpio.o
>  obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
>  
> +obj-$(CONFIG_SHELL_NONE) += bootstrap.o
>  lowlevel_init-y = at91sam926x_lowlevel_init.o
>  lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
>  obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
> new file mode 100644
> index 0000000..2ec16f1
> --- /dev/null
> +++ b/arch/arm/mach-at91/bootstrap.c
> @@ -0,0 +1,86 @@
> +/*
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#include <common.h>
> +#include <bootstrap.h>
> +#include <mach/bootstrap.h>
> +#include <sizes.h>
> +#include <malloc.h>
> +
> +#if defined(CONFIG_MCI_ATMEL)
> +#define is_mmc() 1
> +#else
> +#define is_mmc() 0
> +#endif
> +
> +#ifdef CONFIG_NAND_ATMEL
> +#define is_nand() 1
> +#else
> +#define is_nand() 0
> +#endif
> +
> +#ifdef CONFIG_MTD_M25P80
> +#define is_m25p80() 1
> +#else
> +#define is_m25p80() 0
> +#endif
> +
> +#ifdef CONFIG_MTD_DATAFLASH
> +#define is_dataflash() 1
> +#else
> +#define is_dataflash() 0
> +#endif
> +
> +static void boot_seq(bool is_barebox)
> +{
> +	char *name = is_barebox ? "barebox" : "unknown";
> +	int (*func)(void) = NULL;
> +
> +	if (is_m25p80()) {
> +		func = bootstrap_board_read_m25p80();
> +		printf("Boot %s from m25p80\n", name);
> +		bootstrap_boot(func, is_barebox);
> +		bootstrap_err("... failled\n");

s/failled/failed/

> +		free(func);
> +	}
> +	if (is_dataflash()) {
> +		printf("Boot %s from dataflash\n", name);
> +		func = bootstrap_board_read_dataflash();
> +		bootstrap_boot(func, is_barebox);
> +		bootstrap_err("... failled\n");

ditto

> +		free(func);
> +	}
> +	if (is_nand()) {
> +		printf("Boot %s from nand\n", name);
> +		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
> +		bootstrap_boot(func, is_barebox);
> +		bootstrap_err("... failled\n");

ditto

> +		free(func);
> +	}
> +}
> +
> +int run_shell(void)
> +{
> +	int (*func)(void) = NULL;
> +
> +	if (is_mmc()) {
> +		printf("Boot from mmc\n");
> +		func = bootstrap_read_disk("disk0.0");
> +		bootstrap_boot(func, false);
> +		bootstrap_err("... failled\n");

ditto

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
