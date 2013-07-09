Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwbnX-0006Mn-U4
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 17:33:56 +0000
Date: Tue, 9 Jul 2013 19:33:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709173334.GV516@pengutronix.de>
References: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv2 01/12] ARM: OMAP: AM33xx: Add basic NAND support
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 09, 2013 at 11:23:11AM +0200, Teresa G=E1mez wrote:
> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied this series.

Thanks
 Sascha

> ---
>  arch/arm/mach-omap/am33xx_generic.c          |   15 +++++++++++++++
>  arch/arm/mach-omap/am33xx_mux.c              |    8 +++++---
>  arch/arm/mach-omap/include/mach/am33xx-mux.h |    1 +
>  arch/arm/mach-omap/include/mach/gpmc_nand.h  |    1 +
>  4 files changed, 22 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am3=
3xx_generic.c
> index 96432c9..9806fbe 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -27,6 +27,7 @@
>  #include <mach/am33xx-clock.h>
>  #include <mach/sys_info.h>
>  #include <mach/am33xx-generic.h>
> +#include <mach/gpmc.h>
>  =

>  void __noreturn reset_cpu(unsigned long addr)
>  {
> @@ -126,3 +127,17 @@ int am33xx_register_ethaddr(int eth_id, int mac_id)
>  =

>  	return -ENODEV;
>  }
> +
> +/* GPMC timing for AM33XX nand device */
> +const struct gpmc_config am33xx_nand_cfg =3D {
> +	.cfg =3D {
> +		0x00000800,	/* CONF1 */
> +		0x001e1e00,	/* CONF2 */
> +		0x001e1e00,	/* CONF3 */
> +		0x16051807,	/* CONF4 */
> +		0x00151e1e,	/* CONF5 */
> +		0x16000f80,	/* CONF6 */
> +	},
> +	.base =3D 0x08000000,
> +	.size =3D GPMC_SIZE_16M,
> +};
> diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_=
mux.c
> index abc8586..8318713 100644
> --- a/arch/arm/mach-omap/am33xx_mux.c
> +++ b/arch/arm/mach-omap/am33xx_mux.c
> @@ -39,8 +39,6 @@ static const __maybe_unused struct module_pin_mux uart3=
_pin_mux[] =3D {
>  	{-1},
>  };
>  =

> -
> -#ifdef CONFIG_NAND
>  static const __maybe_unused struct module_pin_mux nand_pin_mux[] =3D {
>  	{OFFSET(gpmc_ad0), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD0 */
>  	{OFFSET(gpmc_ad1), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* NAND AD1 */
> @@ -59,7 +57,6 @@ static const __maybe_unused struct module_pin_mux nand_=
pin_mux[] =3D {
>  	{OFFSET(gpmc_be0n_cle), (MODE(0) | PULLUDEN)},	/* NAND_BE_CLE */
>  	{-1},
>  };
> -#endif
>  =

>  static const __maybe_unused struct module_pin_mux i2c0_pin_mux[] =3D {
>  	{OFFSET(i2c0_sda), (MODE(0) | RXACTIVE | PULLUDEN | SLEWCTRL)},	/* I2C_=
DATA */
> @@ -319,3 +316,8 @@ void am33xx_enable_spi0_pin_mux(void)
>  {
>  	configure_module_pin_mux(spi0_pin_mux);
>  }
> +
> +void am33xx_enable_nand_pin_mux(void)
> +{
> +	configure_module_pin_mux(nand_pin_mux);
> +}
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach=
-omap/include/mach/am33xx-mux.h
> index d6b19dd..fe3168b 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
> @@ -257,5 +257,6 @@ extern void am33xx_enable_uart0_pin_mux(void);
>  extern void am33xx_enable_uart2_pin_mux(void);
>  extern void am33xx_enable_mmc0_pin_mux(void);
>  extern void am33xx_enable_spi0_pin_mux(void);
> +extern void am33xx_enable_nand_pin_mux(void);
>  =

>  #endif /*__AM33XX_MUX_H__ */
> diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-=
omap/include/mach/gpmc_nand.h
> index 4a93465..8d138ec 100644
> --- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
> +++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
> @@ -65,5 +65,6 @@ int omap_add_gpmc_nand_device(struct gpmc_nand_platform=
_data *pdata);
>  =

>  extern struct gpmc_config omap3_nand_cfg;
>  extern struct gpmc_config omap4_nand_cfg;
> +extern struct gpmc_config am33xx_nand_cfg;
>  =

>  #endif				/* __ASM_OMAP_NAND_GPMC_H */
> -- =

> 1.7.0.4
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
