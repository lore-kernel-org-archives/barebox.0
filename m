Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STzMH-00066s-KM
 for barebox@lists.infradead.org; Mon, 14 May 2012 17:46:59 +0000
Date: Mon, 14 May 2012 19:46:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514174648.GH30400@pengutronix.de>
References: <1336988285-6192-1-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336988285-6192-1-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 1/7] Support most Samsung SoCs in S3C serial driver
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 14, 2012 at 03:38:05PM +0600, Alexey Galakhov wrote:
> Ok, I assume this should go into separate series. It fits both S5PV210 and S3C6410.
> 
> This adds support for S3C and S5P architectures (all of my knowledge) to the
> serial driver. Since the only difference between them is in clock handling,
> this is moved to an arch-dependent separate function.
> 
> Most modern architectures should define S3C_UART_HAS_UBRDIVSLOT and S3C_UART_HAS_UINTM.
> 
> This adds support for most 
> 
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-samsung/include/mach/s3c-generic.h |    4 ++
>  arch/arm/mach-samsung/s3c24xx-clocks.c           |   17 +++++++
>  drivers/serial/Kconfig                           |    2 +-
>  drivers/serial/serial_s3c.c                      |   55 +++++++++++++++-------
>  4 files changed, 60 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
> index 4ea3dd7..5d3808e 100644
> --- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
> +++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
> @@ -30,5 +30,9 @@ uint32_t s3c_get_fclk(void);
>  uint32_t s3c_get_hclk(void);
>  uint32_t s3c_get_pclk(void);
>  uint32_t s3c_get_uclk(void);
> +
> +unsigned s3c_get_uart_clk(unsigned src);
> +
>  uint32_t s3c24xx_get_memory_size(void);
> +
>  void s3c24xx_disable_second_sdram_bank(void);
> diff --git a/arch/arm/mach-samsung/s3c24xx-clocks.c b/arch/arm/mach-samsung/s3c24xx-clocks.c
> index a99d1b9..38d8b75 100644
> --- a/arch/arm/mach-samsung/s3c24xx-clocks.c
> +++ b/arch/arm/mach-samsung/s3c24xx-clocks.c
> @@ -117,6 +117,23 @@ uint32_t s3c24_get_uclk(void)
>  	return s3c_get_upllclk();
>  }
>  
> +/** 
> + * Return correct UART frequency based on the UCON register
> + */
> +unsigned s3c_get_uart_clk(unsigned src)
> +{
> +	switch (src & 3) {
> +	case 0:
> +	case 2:
> +		return s3c_get_pclk();
> +	case 1:
> +		return 0; /* TODO UEXTCLK */
> +	case 3:
> +		return 0; /* TODO FCLK/n */
> +	}
> +	return 0; /* not reached, to make compiler happy */
> +}
> +
>  /**
>   * Show the user the current clock settings
>   */
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 186b596..a9383da 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -80,7 +80,7 @@ config DRIVER_SERIAL_PL010
>  
>  config DRIVER_SERIAL_S3C
>  	bool "Samsung S3C serial driver"
> -	depends on ARCH_S3C24xx
> +	depends on ARCH_SAMSUNG
>  	default y
>  	help
>  	  Say Y here if you want to use the CONS on a Samsung S3C CPU
> diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
> index 2bdc1df..7a9b355 100644
> --- a/drivers/serial/serial_s3c.c
> +++ b/drivers/serial/serial_s3c.c
> @@ -40,6 +40,17 @@
>  #define UTXH 0x20		/* transmitt */
>  #define URXH 0x24		/* receive */
>  #define UBRDIV 0x28		/* baudrate generator */
> +#ifdef S3C_UART_HAS_UBRDIVSLOT
> +# define UBRDIVSLOT 0x2c	/* baudrate slot generator */
> +#endif
> +#ifdef S3C_UART_HAS_UINTM
> +# define UINTM 0x38		/* interrupt mask register */
> +#endif
> +
> +#ifndef S3C_UART_CLKSEL
> +/* Use pclk */
> +# define S3C_UART_CLKSEL 0
> +#endif
>  
>  struct s3c_uart {
>  	void __iomem *regs;
> @@ -51,26 +62,32 @@ struct s3c_uart {
>  static unsigned s3c_get_arch_uart_input_clock(void __iomem *base)
>  {
>  	unsigned reg = readw(base + UCON);
> -
> -	switch (reg & 0xc00) {
> -		case 0x000:
> -		case 0x800:
> -			return s3c_get_pclk();
> -		case 0x400:
> -			break;	/* TODO UEXTCLK */
> -		case 0xc00:
> -			break;	/* TODO FCLK/n */
> -	}
> -
> -	return 0;	/* not nice, but we can't emit an error message! */
> +	reg = (reg >> 10) & 0x3;
> +	return s3c_get_uart_clk(reg);
>  }
>  
> +#ifdef S3C_UART_HAS_UBRDIVSLOT
> +/*
> + * This table takes the fractional value of the baud divisor and gives
> + * the recommended setting for the UDIVSLOT register. Refer the datasheet
> + * for further details
> + */
> +static const uint16_t udivslot_table[] __maybe_unused = {
> +	0x0000, 0x0080, 0x0808, 0x0888, 0x2222, 0x4924, 0x4A52, 0x54AA,
> +	0x5555, 0xD555, 0xD5D5, 0xDDD5, 0xDDDD, 0xDFDD, 0xDFDF, 0xFFDF,
> +};
> +#endif
> +
>  static int s3c_serial_setbaudrate(struct console_device *cdev, int baudrate)
>  {
>  	struct s3c_uart *priv = to_s3c_uart(cdev);
>  	void __iomem *base = priv->regs;
>  	unsigned val;
>  
> +#ifdef S3C_UART_HAS_UBRDIVSLOT
> +	val = s3c_get_arch_uart_input_clock(base) / baudrate;
> +	writew(udivslot_table[val & 15], base + UBRDIVSLOT);
> +#endif
>  	val = s3c_get_arch_uart_input_clock(base) / (16 * baudrate) - 1;
>  	writew(val, base + UBRDIV);
>  
> @@ -88,11 +105,15 @@ static int s3c_serial_init_port(struct console_device *cdev)
>  
>  	/* Normal,No parity,1 stop,8 bit */
>  	writeb(0x03, base + ULCON);
> -	/*
> -	 * tx=level,rx=edge,disable timeout int.,enable rx error int.,
> -	 * normal,interrupt or polling
> -	 */
> -	writew(0x0245, base + UCON);
> +
> +	/* tx=level,rx=edge,disable timeout int.,enable rx error int.,
> +	 * normal, interrupt or polling, no pre-divider */
> +	writew(0x0245 | ((S3C_UART_CLKSEL) << 10), base + UCON);
> +
> +#ifdef S3C_UART_HAS_UINTM
> +	/* 'interrupt or polling mode' for both directions */
> +	writeb(0xf, base + UINTM);
> +#endif
>  
>  #ifdef CONFIG_DRIVER_SERIAL_S3C_AUTOSYNC
>  	writeb(0x10, base + UMCON); /* enable auto flow control */
> -- 
> 1.7.10
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
