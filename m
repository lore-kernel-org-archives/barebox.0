Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMfgc-0004GR-Ah
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:12:39 +0000
Date: Thu, 10 Jun 2010 13:12:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610111237.GH20799@pengutronix.de>
References: <cover.1276065824.git.baruch@tkos.co.il>
	<f9f84cc251848d133fae379e6d20253df2121ffb.1276065824.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9f84cc251848d133fae379e6d20253df2121ffb.1276065824.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH 8/8] mx25 3ds: add support for boot from UART
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Wed, Jun 09, 2010 at 10:05:07AM +0300, Baruch Siach wrote:
> For details of the UART protocol see the i.MX25 Reference Manual, section 7.8
> "Serial Download protocol".
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  arch/arm/mach-imx/Kconfig                    |    5 +++++
>  board/freescale-mx25-3-stack/3stack.c        |    4 ++++
>  board/freescale-mx25-3-stack/lowlevel_init.S |    5 +++++
>  3 files changed, 14 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 419daab..40cebed 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -319,6 +319,11 @@ config FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
>  config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
>  	bool "128 MB (mDDR)"
>  endchoice
> +
> +config FREESCALE_MX25_3STACK_UART_BOOT
> +	bool "Boot from UART"
> +	depends on ARCH_IMX_INTERNAL_BOOT
> +
>  endif
>  endmenu
>  
> diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
> index a657a47..081487a 100644
> --- a/board/freescale-mx25-3-stack/3stack.c
> +++ b/board/freescale-mx25-3-stack/3stack.c
> @@ -44,7 +44,11 @@ extern unsigned long _stext;
>  
>  void __naked __flash_header_start go(void)
>  {
> +#if defined CONFIG_FREESCALE_MX25_3STACK_UART_BOOT
> +	__asm__ (".word	exception_vectors\n");
> +#else
>  	__asm__ __volatile__("b exception_vectors\n");
> +#endif

Do we need this change? I booted other i.MX SoCs without it. I really
like to keep this because it enables to jump to the first address if
booting second stage.

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
