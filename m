Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlGic-0003om-GS
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 09:13:11 +0000
Date: Thu, 12 Jan 2012 10:13:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120112091303.GY5446@pengutronix.de>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326303284-14444-1-git-send-email-premi@ti.com>
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
Subject: Re: [RFC 1/2] ARM omap: Add null console
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 11, 2012 at 11:04:43PM +0530, Sanjeev Premi wrote:
> When using barebox as both 1st and 2nd stage bootloader,
> same banner gets printed - date being the only difference.
> 
> For the first stage bootloader, prints are definitely
> required during initial debug and development phases,
> but after that, they can easily be avoided.
> 
> And if we don't need prints, then we can do without the
> serial driver as well.
> 
> With this background, this patch introduces concept of
> NULL console. Most Kconfig changes are quite simple.
> 
> Separate file console_null.c was created only for ease
> of review and maintaining console_simple.c as-is.
> 
> In final version, appropriate #ifdefs in console_simple.c
> should be used.
> 
> Visually, the prompt from barebox.bin comes up is about
> a second - and appears to be much faster.
> 
> Here is comparison of the size:
> 
>    text    data     bss     dec     hex filename
>   45801    3300    4024   53125    cf85 barebox  (Before)
>   44221    3196    4020   51437    c8ed barebox  (After)
> 
> Tested on OMAP3EVM with xload configuration derived from
> omap3530_beagle_xload_defconfig.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> 
>  Although I have marked the change to be specific to
>  ARM+OMAP, it could be generally applicable.
> 
>  arch/arm/mach-omap/Kconfig |    4 +-
>  common/Kconfig             |   11 +++-
>  common/Makefile            |    1 +
>  common/console_null.c      |  135 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/serial/Kconfig     |    1 +
>  5 files changed, 149 insertions(+), 3 deletions(-)
>  create mode 100644 common/console_null.c
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 72c6850..9edb4a9 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -171,13 +171,13 @@ if MACH_OMAP3EVM
>  
>  	config OMAP3EVM_UART1
>  		bool "Use UART1"
> -		depends on MACH_OMAP3EVM
> +		depends on MACH_OMAP3EVM && !CONSOLE_NULL

Right now CONFIG_OMAP3EVM_UART1 and CONFIG_OMAP3EVM_UART3 are
exclusive options and I see no reason why they should be. To make
this a bit simpler we could do this:

#ifndef CONSOLE_NULL
	MUX_VAL(CP(UART1_TX),		(IDIS | PTD | DIS | M0));
	MUX_VAL(CP(UART1_RTS),		(IDIS | PTD | DIS | M0));
	MUX_VAL(CP(UART1_CTS),		(IEN  | PTU | DIS | M0));
	MUX_VAL(CP(UART1_RX),		(IEN  | PTD | DIS | M0));
	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | DIS | M0));
	MUX_VAL(CP(UART3_TX_IRTX),	(IDIS | PTD | DIS | M0));
#endif

#ifdef CONFIG_OMAP3EVM_UART1
	add_ns16550_device(...)
#endif
#ifdef CONFIG_OMAP3EVM_UART3
	add_ns16550_device(...)
#endif

> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 186b596..cc0e583 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -56,6 +56,7 @@ config DRIVER_SERIAL_ALTERA_JTAG
>  config DRIVER_SERIAL_NS16550
>  	default n
>  	bool "NS16550 serial driver"
> +	depends on !CONSOLE_NULL

No, we don't want to add this 'depends on' to every serial driver.
Instead we should turn the serial driver menu to a menuconfig
depending on !CONSOLE_NULL.

Please split the omap specific part and the generic part into two
patches next time you send this.

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
