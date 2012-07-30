Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svkhu-0007wN-IJ
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 07:48:03 +0000
Date: Mon, 30 Jul 2012 09:47:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730074747.GH30009@pengutronix.de>
References: <1343450217-17073-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343450217-17073-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: add debug_ll support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


The subject is wrong, it's not 'arm:', but 'ARM at91:'

Sascha

On Sat, Jul 28, 2012 at 06:36:57AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Today we only use the DBGU port
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Kconfig                           |    1 +
>  arch/arm/mach-at91/include/mach/debug_ll.h |   37 ++++++++++++++++++++++++++++
>  2 files changed, 38 insertions(+)
>  create mode 100644 arch/arm/mach-at91/include/mach/debug_ll.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 245bec8..a7f1bfb 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -25,6 +25,7 @@ config ARCH_AT91
>  	bool "Atmel AT91"
>  	select GENERIC_GPIO
>  	select CLKDEV_LOOKUP
> +	select HAS_DEBUG_LL
>  
>  config ARCH_EP93XX
>  	bool "Cirrus Logic EP93xx"
> diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
> new file mode 100644
> index 0000000..ee824cb
> --- /dev/null
> +++ b/arch/arm/mach-at91/include/mach/debug_ll.h
> @@ -0,0 +1,37 @@
> +/*
> + * Copyright (C) 2012
> + * Jean-Christophe PLAGNIOL-VILLARD <planioj@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#ifndef __MACH_DEBUG_LL_H__
> +#define __MACH_DEBUG_LL_H__
> +
> +#include <asm/io.h>
> +#include <mach/hardware.h>
> +
> +#define UART_BASE	(AT91_BASE_SYS + AT91_DBGU)
> +
> +#define ATMEL_US_CSR		0x0014
> +#define ATMEL_US_THR		0x001c
> +#define ATMEL_US_TXRDY		(1 << 1)
> +#define ATMEL_US_TXEMPTY	(1 << 9)
> +
> +/*
> + * The following code assumes the serial port has already been
> + * initialized by the bootloader.  If you didn't setup a port in
> + * your bootloader then nothing will appear (which might be desired).
> + *
> + * This does not append a newline
> + */
> +static void putc(int c)
> +{
> +	while (!(__raw_readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
> +		barrier();
> +	__raw_writel(c, UART_BASE + ATMEL_US_THR);
> +
> +	while (!(__raw_readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
> +		barrier();
> +}
> +#endif
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
