Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqMhV-0001tE-Ac
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 11:41:38 +0000
Message-ID: <1357126891.3863.2.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 02 Jan 2013 12:41:31 +0100
In-Reply-To: <1356775697-1849-6-git-send-email-plagnioj@jcrosoft.com>
References: <20121229100404.GA22953@game.jcrosoft.org>
 <1356775697-1849-1-git-send-email-plagnioj@jcrosoft.com>
 <1356775697-1849-6-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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

On Sat, 2012-12-29 at 11:08 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
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
> +		free(func);
> +	}
> +	if (is_dataflash()) {
> +		printf("Boot %s from dataflash\n", name);
> +		func = bootstrap_board_read_dataflash();
> +		bootstrap_boot(func, is_barebox);
> +		bootstrap_err("... failled\n");
> +		free(func);
> +	}
> +	if (is_nand()) {
> +		printf("Boot %s from nand\n", name);
> +		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
> +		bootstrap_boot(func, is_barebox);
> +		bootstrap_err("... failled\n");
> +		free(func);
> +	}
> +}

Why can't you use IS_ENABLED(CONFIG_xxx) here?


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
