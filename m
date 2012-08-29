Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6cGU-0003Jw-0j
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 07:00:38 +0000
Date: Wed, 29 Aug 2012 09:00:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829070036.GP26594@pengutronix.de>
References: <1346189717-10476-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346189717-10476-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX35: add cspi1 support
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 28, 2012 at 11:35:17PM +0200, Eric B=E9nard wrote:
> tested with a m25p128 flash both in nand boot & spi boot.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/devices-imx35.h |    5 +++++
>  arch/arm/mach-imx/include/mach/imx35-regs.h    |    2 ++
>  arch/arm/mach-imx/speed-imx35.c                |    5 +++++
>  drivers/spi/Kconfig                            |    2 +-
>  drivers/spi/imx_spi.c                          |    2 +-
>  5 files changed, 14 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/ma=
ch-imx/include/mach/devices-imx35.h
> index 6c0d750..9ecaa35 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx35.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
> @@ -16,6 +16,11 @@ static inline struct device_d *imx35_add_i2c2(struct i=
2c_platform_data *pdata)
>  	return imx_add_i2c((void *)IMX_I2C3_BASE, 2, pdata);
>  }
>  =

> +static inline struct device_d *imx35_add_spi0(struct spi_imx_master *pda=
ta)
> +{
> +	return imx_add_spi((void *)IMX_CSPI1_BASE, 0, pdata);
> +}
> +
>  static inline struct device_d *imx35_add_uart0(void)
>  {
>  	return imx_add_uart((void *)IMX_UART1_BASE, 0);
> diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-=
imx/include/mach/imx35-regs.h
> index fafcd61..91d4b9b 100644
> --- a/arch/arm/mach-imx/include/mach/imx35-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
> @@ -49,6 +49,7 @@
>  #define IMX_I2C1_BASE		0x43F80000
>  #define IMX_I2C2_BASE		0x43F98000
>  #define IMX_I2C3_BASE		0x43F84000
> +#define IMX_CSPI1_BASE		0x43FA4000
>  #define IMX_SDHC1_BASE		0x53FB4000
>  #define IMX_SDHC2_BASE		0x53FB8000
>  #define IMX_SDHC3_BASE		0x53FBC000
> @@ -75,6 +76,7 @@
>  #define CCM_CGR2	0x34
>  #define CCM_CGR3	0x38
>  =

> +#define CCM_CGR0_CSPI1_SHIFT	10
>  #define CCM_CGR1_FEC_SHIFT	0
>  #define CCM_CGR1_I2C1_SHIFT	10
>  #define CCM_CGR1_SDHC1_SHIFT	26
> diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-im=
x35.c
> index 684dc14..5f0e229 100644
> --- a/arch/arm/mach-imx/speed-imx35.c
> +++ b/arch/arm/mach-imx/speed-imx35.c
> @@ -186,6 +186,11 @@ ulong imx_get_i2cclk(void)
>  	return imx_get_ipg_perclk();
>  }
>  =

> +unsigned long imx_get_cspiclk(void)
> +{
> +	return imx_get_ipgclk();
> +}
> +
>  void imx_dump_clocks(void)
>  {
>  	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 609bafd..7a2f54a 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -16,7 +16,7 @@ config DRIVER_SPI_IMX_0_0
>  =

>  config DRIVER_SPI_IMX_0_7
>  	bool
> -	depends on ARCH_IMX25
> +	depends on ARCH_IMX25 || ARCH_IMX35
>  	default y
>  =

>  config DRIVER_SPI_IMX_2_3
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 42358f2..06cee86 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -517,7 +517,7 @@ static int imx_spi_probe(struct device_d *dev)
>  		version =3D SPI_IMX_VER_0_0;
>  #endif
>  #ifdef CONFIG_DRIVER_SPI_IMX_0_7
> -	if (cpu_is_mx25())
> +	if (cpu_is_mx25() || cpu_is_mx35())
>  		version =3D SPI_IMX_VER_0_7;
>  #endif
>  #ifdef CONFIG_DRIVER_SPI_IMX_2_3
> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
