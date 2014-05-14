Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkTVf-0004bT-U4
 for barebox@lists.infradead.org; Wed, 14 May 2014 07:21:53 +0000
Date: Wed, 14 May 2014 09:21:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140514072130.GA5858@pengutronix.de>
References: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 1/4] PCM051: Update RAM timings
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, May 12, 2014 at 02:24:19PM +0200, Wadim Egorov wrote:
> From: Teresa G=E1mez <t.gamez@phytec.de>
> =

> Updated timings for new MT41J256M16HA15EIT RAM.
> Timings are backward compatible to the MT41J256M8HX15E RAMs

Applied 1/2 and 2/2 for now.

Sascha

> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  arch/arm/boards/phytec-phycore-am335x/lowlevel.c |   28 ++++++++++------=
-----
>  1 files changed, 13 insertions(+), 15 deletions(-)
> =

> diff --git a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c b/arch/arm/=
boards/phytec-phycore-am335x/lowlevel.c
> index f04961d..2badcc1 100644
> --- a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
> @@ -15,7 +15,7 @@
>  #include <mach/wdt.h>
>  #include <debug_ll.h>
>  =

> -static const struct am33xx_cmd_control MT41J256M8HX15E_2x256M8_cmd =3D {
> +static const struct am33xx_cmd_control MT41J256M16HA15EIT_1x512MB_cmd =
=3D {
>  	.slave_ratio0 =3D 0x40,
>  	.dll_lock_diff0 =3D 0x0,
>  	.invert_clkout0 =3D 0x1,
> @@ -27,23 +27,21 @@ static const struct am33xx_cmd_control MT41J256M8HX15=
E_2x256M8_cmd =3D {
>  	.invert_clkout2 =3D 0x1,
>  };
>  =

> -static const struct am33xx_emif_regs MT41J256M8HX15E_2x256M8_regs =3D {
> +static const struct am33xx_emif_regs MT41J256M16HA15EIT_1x512MB_regs =3D=
 {
>  	.emif_read_latency	=3D 0x6,
> -	.emif_tim1		=3D 0x0668A39B,
> -	.emif_tim2		=3D 0x26337FDA,
> -	.emif_tim3		=3D 0x501F830F,
> -	.sdram_config		=3D 0x61C04832,
> +	.emif_tim1		=3D 0x0888A39B,
> +	.emif_tim2		=3D 0x26517FDA,
> +	.emif_tim3		=3D 0x501F84EF,
> +	.sdram_config		=3D 0x61C04B32,
>  	.zq_config		=3D 0x50074BE4,
>  	.sdram_ref_ctrl		=3D 0x0000093B,
>  };
>  =

> -static const struct am33xx_ddr_data MT41J256M8HX15E_2x256M8_data =3D {
> +static const struct am33xx_ddr_data MT41J256M16HA15EIT_1x512MB_data =3D {
>  	.rd_slave_ratio0	=3D 0x3B,
> -	.wr_dqs_slave_ratio0	=3D 0x85,
> -	.fifo_we_slave_ratio0	=3D 0x100,
> -	.wr_slave_ratio0	=3D 0xC1,
> -	.use_rank0_delay	=3D 0x01,
> -	.dll_lock_diff0		=3D 0x0,
> +	.wr_dqs_slave_ratio0	=3D 0x3B,
> +	.fifo_we_slave_ratio0	=3D 0x96,
> +	.wr_slave_ratio0	=3D 0x76,
>  };
>  =

>  extern char __dtb_am335x_phytec_phycore_start[];
> @@ -72,9 +70,9 @@ static noinline void pcm051_board_init(void)
>  =

>  	am33xx_pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
>  =

> -	am335x_sdram_init(0x18B, &MT41J256M8HX15E_2x256M8_cmd,
> -			&MT41J256M8HX15E_2x256M8_regs,
> -			&MT41J256M8HX15E_2x256M8_data);
> +	am335x_sdram_init(0x18B, &MT41J256M16HA15EIT_1x512MB_cmd,
> +			&MT41J256M16HA15EIT_1x512MB_regs,
> +			&MT41J256M16HA15EIT_1x512MB_data);
>  =

>  	am33xx_uart0_soft_reset();
>  	am33xx_enable_uart0_pin_mux();
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
