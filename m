Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlItC-0002Bf-L5
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 14:45:51 +0000
Date: Mon, 3 Nov 2014 15:45:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103144528.GR14443@pengutronix.de>
References: <1415017914-43444-1-git-send-email-t.gamez@phytec.de>
 <1415017914-43444-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415017914-43444-2-git-send-email-t.gamez@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2 2/3] ARM: am335x: Add register of boot devices
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 03, 2014 at 01:31:53PM +0100, Teresa G=E1mez wrote:
> Add support for registering disabled boot devices from oftree.
> Creating a device tree with all bootable devices disabled, makes
> it possible to only enable and register the devices needed to
> load the next stage bootloader.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied all, thanks

Sascha

> ---
> v2:
> - updated of funcion name
> =

>  arch/arm/mach-omap/am33xx_generic.c              | 31 ++++++++++++++++++=
++++++
>  arch/arm/mach-omap/include/mach/am33xx-generic.h |  1 +
>  2 files changed, 32 insertions(+)
> =

> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am3=
3xx_generic.c
> index f293134..b561575 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -428,3 +428,34 @@ void am335x_sdram_init(int ioctrl, const struct am33=
xx_cmd_control *cmd_ctrl,
>  =

>  	am33xx_config_sdram(emif_regs);
>  }
> +
> +int am33xx_of_register_bootdevice(void)
> +{
> +	struct device_d *dev;
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		if (bootsource_get_instance() =3D=3D 0)
> +			dev =3D of_device_enable_and_register_by_name("mmc@48060000");
> +		else
> +			dev =3D of_device_enable_and_register_by_name("mmc@481d8000");
> +		break;
> +	case BOOTSOURCE_NAND:
> +		dev =3D of_device_enable_and_register_by_name("gpmc@50000000");
> +		break;
> +	case BOOTSOURCE_SPI:
> +		dev =3D of_device_enable_and_register_by_name("spi@48030000");
> +		break;
> +	default:
> +		/* Use nand fallback */
> +		dev =3D of_device_enable_and_register_by_name("gpmc@50000000");
> +		break;
> +	}
> +
> +	if (!dev) {
> +		printf("Unable to register boot device\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/=
mach-omap/include/mach/am33xx-generic.h
> index 6c85d51..7312061 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
> @@ -33,5 +33,6 @@ void __noreturn am33xx_reset_cpu(unsigned long addr);
>  void am33xx_enable_per_clocks(void);
>  int am33xx_init(void);
>  int am33xx_devices_init(void);
> +int am33xx_of_register_bootdevice(void);
>  =

>  #endif /* __MACH_AM33XX_GENERIC_H */
> -- =

> 1.9.1
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
