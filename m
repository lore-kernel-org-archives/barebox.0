Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqfc8-0005Eo-9L
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:21:05 +0000
Date: Mon, 16 Jul 2012 09:20:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716072045.GW30009@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
 <1342206070-29698-6-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342206070-29698-6-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 05/18] Samsung/serial: make the clock source configureable
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 13, 2012 at 09:00:57PM +0200, Juergen Beisert wrote:
> Instead of taking the value from somewhere, use the menu to select one. Also
> provide sane default values for known SoCs.

Do we really really need this in Kconfig? I don't like having things in
Kconfig which decide between 'right' and 'wrong'. You should rather have
some cpu_is or platformdata mechanism.

Sascha

> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/serial/Kconfig      |   12 ++++++++++++
>  drivers/serial/serial_s3c.c |    7 +------
>  2 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index a9383da..a118aaf 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -85,6 +85,18 @@ config DRIVER_SERIAL_S3C
>  	help
>  	  Say Y here if you want to use the CONS on a Samsung S3C CPU
>  
> +config DRIVER_SERIAL_S3C_CLK
> +	int
> +	prompt "input clock reference"
> +	depends on DRIVER_SERIAL_S3C
> +	default 0 if ARCH_S3C24xx
> +	default 3 if ARCH_S5PCxx
> +	help
> +	  Select one of up to four available clock sources for the UART:
> +	   0+1: PCLK, 2: UCLK0, 3: UCLK1
> +	  Note: not all values are possible on all Samsung SoCs. Read the
> +	  manual if unsure.
> +
>  config DRIVER_SERIAL_S3C_AUTOSYNC
>  	bool "Enable auto flow"
>  	depends on DRIVER_SERIAL_S3C
> diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
> index ff3792b..5c05ba8 100644
> --- a/drivers/serial/serial_s3c.c
> +++ b/drivers/serial/serial_s3c.c
> @@ -47,11 +47,6 @@
>  # define UINTM 0x38		/* interrupt mask register */
>  #endif
>  
> -#ifndef S3C_UART_CLKSEL
> -/* Use pclk */
> -# define S3C_UART_CLKSEL 0
> -#endif
> -
>  struct s3c_uart {
>  	void __iomem *regs;
>  	struct console_device cdev;
> @@ -108,7 +103,7 @@ static int s3c_serial_init_port(struct console_device *cdev)
>  
>  	/* tx=level,rx=edge,disable timeout int.,enable rx error int.,
>  	 * normal, interrupt or polling, no pre-divider */
> -	writew(0x0245 | ((S3C_UART_CLKSEL) << 10), base + UCON);
> +	writew(0x0245 | ((CONFIG_DRIVER_SERIAL_S3C_CLK) << 10), base + UCON);
>  
>  #ifdef S3C_UART_HAS_UINTM
>  	/* 'interrupt or polling mode' for both directions */
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
