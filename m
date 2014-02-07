Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBfnO-0005ow-Cl
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 07:24:19 +0000
Date: Fri, 7 Feb 2014 08:23:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140207072356.GH16215@pengutronix.de>
References: <1391701030-18395-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391701030-18395-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] spi: imx5: allow CSPI to work
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 06, 2014 at 04:37:07PM +0100, Lucas Stach wrote:
> i.MX5 SoCs still have one old i.MX35-style SPI
> controller. Allow this one to work side by side
> with the new ECSPI controllers.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/spi/Kconfig   |  2 +-
>  drivers/spi/imx_spi.c | 13 +++++++++++++
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 422693ccd5fe..b9f28da7983b 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -25,7 +25,7 @@ config DRIVER_SPI_IMX_0_0
>  
>  config DRIVER_SPI_IMX_0_7
>  	bool
> -	depends on ARCH_IMX25 || ARCH_IMX35
> +	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51 || ARCH_IMX53
>  	default y
>  
>  config DRIVER_SPI_IMX_2_3
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index c0c2ed7c49df..e43712e118b3 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -564,6 +564,10 @@ static int imx_spi_probe(struct device_d *dev)
>  	if (cpu_is_mx51() || cpu_is_mx53() || cpu_is_mx6())
>  		version = SPI_IMX_VER_2_3;
>  #endif
> +	/* oftree knows best, so use it if it's there */
> +	if (dev->of_id_entry)
> +		version = dev->of_id_entry->data;
> +
>  	imx->chipselect = spi_imx_devtype_data[version].chipselect;
>  	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
>  	imx->init = spi_imx_devtype_data[version].init;
> @@ -584,10 +588,19 @@ err_free:
>  static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
>  	{
>  		.compatible = "fsl,imx27-cspi",
> +#ifdef CONFIG_DRIVER_SPI_IMX_0_0
> +		.data = SPI_IMX_VER_0_0,
> +#endif
>  	}, {
>  		.compatible = "fsl,imx35-cspi",
> +#ifdef CONFIG_DRIVER_SPI_IMX_0_7
> +		.data = SPI_IMX_VER_0_7,
> +#endif
>  	}, {
>  		.compatible = "fsl,imx51-ecspi",
> +#ifdef CONFIG_DRIVER_SPI_IMX_2_3
> +		.data = SPI_IMX_VER_2_3,
> +#endif

Are the ifdefs needed?

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
