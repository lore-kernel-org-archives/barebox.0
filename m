Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFhz9-0002ja-9d
 for barebox@lists.infradead.org; Sat, 31 Aug 2013 10:00:52 +0000
Date: Sat, 31 Aug 2013 12:00:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130831100027.GH30088@pengutronix.de>
References: <1377780855-23634-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377780855-23634-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH for next] PCM051: Fixup DDRPLL
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 29, 2013 at 02:54:15PM +0200, Teresa G=E1mez wrote:
> The correct DDRPLL for PCM051 is 303MHz.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  As the board runs also fine with 266MHz. There
>  is no need to fix it in master.
> =

>  arch/arm/boards/pcm051/lowlevel.c              |    2 +-
>  arch/arm/mach-omap/include/mach/am33xx-clock.h |    1 +
>  2 files changed, 2 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/l=
owlevel.c
> index 078e83b..48578cd 100644
> --- a/arch/arm/boards/pcm051/lowlevel.c
> +++ b/arch/arm/boards/pcm051/lowlevel.c
> @@ -68,7 +68,7 @@ static int pcm051_board_init(void)
>  	if (running_in_sdram())
>  		return 0;
>  =

> -	pll_init(MPUPLL_M_600, 25, DDRPLL_M_266);
> +	pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
>  =

>  	am335x_sdram_init(0x18B, &MT41J256M8HX15E_2x256M8_cmd,
>  			&MT41J256M8HX15E_2x256M8_regs,
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/ma=
ch-omap/include/mach/am33xx-clock.h
> index b3c7519..ecd90b2 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> @@ -49,6 +49,7 @@
>  /* DDR Freq is 266 MHZ for now*/
>  /* Set Fdll =3D 400 MHZ , Fdll =3D M * 2 * CLKINP/ N + 1; clkout =3D Fdl=
l /(2 * M2) */
>  #define DDRPLL_M_266	266
> +#define DDRPLL_M_303	303
>  #define DDRPLL_M_400	400
>  #define DDRPLL_N	(OSC - 1)
>  #define DDRPLL_M2	1
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
