Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8GmA-0001vs-TC
 for barebox@lists.infradead.org; Thu, 15 Mar 2012 19:55:56 +0000
Date: Thu, 15 Mar 2012 20:55:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120315195545.GG3852@pengutronix.de>
References: <1331815767-16220-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331815767-16220-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 1/5] pcm049: Update RAM timings
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 15, 2012 at 01:49:23PM +0100, Teresa G=E1mez wrote:
> Updated RAM Timings for phyCORE-OMAP4.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied this series, thanks

Sascha

> ---
>  arch/arm/boards/pcm049/lowlevel.c |   27 +++++++++++++--------------
>  1 files changed, 13 insertions(+), 14 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/l=
owlevel.c
> index 444a394..5b91098 100644
> --- a/arch/arm/boards/pcm049/lowlevel.c
> +++ b/arch/arm/boards/pcm049/lowlevel.c
> @@ -30,23 +30,22 @@
>  =

>  void set_muxconf_regs(void);
>  =

> -/* Erstmal 200Mhz... */
> -static const struct ddr_regs ddr_regs_mt42L64M64_3_200_mhz =3D {
> -	.tim1		=3D 0x0aa8d4e3,
> -	.tim2		=3D 0x202e0b92,
> -	.tim3		=3D 0x009da2b3,
> -	.phy_ctrl_1	=3D 0x849FF404, /* mostly from elpida */
> -	.ref_ctrl	=3D 0x0000030c, /* from elpida 200MHz! */
> -	.config_init	=3D 0x80000eb1,
> -	.config_final	=3D 0x80000eb1,
> -	.zq_config	=3D 0x500b3215, /* mostly from elpida */
> -	.mr1		=3D 0x23,	      /* from elpida 200MHz! */
> -	.mr2		=3D 0x1	      /* from elpida 200MHz! */
> +static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz =3D {
> +	.tim1		=3D 0x0EEB0662,
> +	.tim2		=3D 0x20370DD2,
> +	.tim3		=3D 0x00BFC33F,
> +	.phy_ctrl_1	=3D 0x849FF408,
> +	.ref_ctrl	=3D 0x00000618,
> +	.config_init	=3D 0x80001AB1,
> +	.config_final	=3D 0x80001AB1,
> +	.zq_config	=3D 0xd0093215,
> +	.mr1		=3D 0x83,
> +	.mr2		=3D 0x4
>  };
>  =

>  static void noinline pcm049_init_lowlevel(void)
>  {
> -	struct dpll_param core =3D OMAP4_CORE_DPLL_PARAM_19M2_DDR200;
> +	struct dpll_param core =3D OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
>  	struct dpll_param mpu =3D OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
>  	struct dpll_param iva =3D OMAP4_IVA_DPLL_PARAM_19M2;
>  	struct dpll_param per =3D OMAP4_PER_DPLL_PARAM_19M2;
> @@ -55,7 +54,7 @@ static void noinline pcm049_init_lowlevel(void)
>  =

>  	set_muxconf_regs();
>  =

> -	omap4_ddr_init(&ddr_regs_mt42L64M64_3_200_mhz, &core);
> +	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
>  =

>  	/* Set VCORE1 =3D 1.3 V, VCORE2 =3D VCORE3 =3D 1.21V */
>  	omap4_scale_vcores();
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
