Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UV62L-0002Vz-GM
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 20:11:30 +0000
Date: Wed, 24 Apr 2013 22:11:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130424201127.GG32299@pengutronix.de>
References: <014261>
 <1366799600-10058-1-git-send-email-u.bely@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366799600-10058-1-git-send-email-u.bely@sam-solutions.com>
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
Subject: Re: [PATCH] ARM: OMAP5 processors support
To: Uladzimir Bely <u.bely@sam-solutions.com>
Cc: barebox@lists.infradead.org, Uladzimir Bely <u.bely@sam-solutions.net>

On Wed, Apr 24, 2013 at 01:33:20PM +0300, Uladzimir Bely wrote:
> From: Uladzimir Bely <u.bely@sam-solutions.net>
> 
> +
> +static struct NS16550_plat serial_plat = {
> +	.clock = 48000000,	/* 48MHz (APLL96/2) */
> +	.shift = 2,
> +};
> +
> +static int omap5_sevm_console_init(void)
> +{
> +	/* Register the serial port */
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP54XX_UART3_BASE, 1024,
> +		IORESOURCE_MEM_8BIT, &serial_plat);

We have convenience wrappers for omap3/4 (omap3_add_uartx). Would be
nice to get them for omap5 aswell.

> diff --git a/arch/arm/boards/omap5_sevm/config.h b/arch/arm/boards/omap5_sevm/config.h
> new file mode 100644
> index 0000000..da84fa5
> --- /dev/null
> +++ b/arch/arm/boards/omap5_sevm/config.h
> @@ -0,0 +1 @@
> +/* nothing */
> diff --git a/arch/arm/boards/omap5_sevm/env/config b/arch/arm/boards/omap5_sevm/env/config
> new file mode 100644
> index 0000000..9752957
> --- /dev/null
> +++ b/arch/arm/boards/omap5_sevm/env/config
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +machine=omap5
> +
> +autoboot_timeout=2
> +
> +bootargs="console=ttyO2,115200"
> +
> +kernel_loc=disk
> +
> +PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> +#define CM_WKUPAON_KBD_CLKCTRL_OFT		0x0078
> +#define CM_WKUPAON_SCRM_CLKCTRL_OFT		0x0090
> +#define CM_WKUPAON_IO_SRCOMP_CLKCTRL_OFT	0x0098
> +
> +/* CKGEN_CM_CORE_AON Registers */
> +#define CM_BASE					0x4a004100

Please add at least to the base addresses a proper OMAP5_ prefix.

> +struct s32ktimer {
> +	unsigned char res[0x10];
> +	unsigned int s32k_cr;
> +};

This is unused.

Much of the code looks quite famliar from the omap4 port. Isn't there
more code sharing possible?

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
