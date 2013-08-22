Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCOwm-0006v0-Al
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 07:04:49 +0000
Date: Thu, 22 Aug 2013 09:04:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130822070421.GW31036@pengutronix.de>
References: <1377000604-26071-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377000604-26071-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] AM33xx: Make OSC frequency board depended
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 20, 2013 at 02:10:04PM +0200, Teresa G=E1mez wrote:
> The oscillator frequency varies on different AM33xx boards.
> Pass the osc frequency from lowlevel board code
> to set the correct one on every board.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/beaglebone/lowlevel.c          |    2 +-
>  arch/arm/boards/pcm051/lowlevel.c              |    2 +-
>  arch/arm/mach-omap/am33xx_clock.c              |   26 ++++++++++++------=
------
>  arch/arm/mach-omap/include/mach/am33xx-clock.h |    8 +------
>  4 files changed, 16 insertions(+), 22 deletions(-)
> =

> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beag=
lebone/lowlevel.c
> index d871ca1..2f3b3df 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -198,7 +198,7 @@ void beaglebone_sram_init(void)
>  	u32 regVal, uart_base;
>  =

>  	/* Setup the PLLs and the clocks for the peripherals */
> -	pll_init(MPUPLL_M_500);
> +	pll_init(MPUPLL_M_500, 24);
>  =

>  	beaglebone_config_ddr();
>  =

> diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/l=
owlevel.c
> index f4a1742..dd06c6a 100644
> --- a/arch/arm/boards/pcm051/lowlevel.c
> +++ b/arch/arm/boards/pcm051/lowlevel.c
> @@ -159,7 +159,7 @@ void pcm051_sram_init(void)
>  	u32 regVal, uart_base;
>  =

>  	/* Setup the PLLs and the clocks for the peripherals */
> -	pll_init(MPUPLL_M_600);
> +	pll_init(MPUPLL_M_600, 25);
>  =

>  	pcm051_config_ddr();
>  =

> diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33x=
x_clock.c
> index 9928e9f..c6cae42 100644
> --- a/arch/arm/mach-omap/am33xx_clock.c
> +++ b/arch/arm/mach-omap/am33xx_clock.c
> @@ -156,7 +156,7 @@ static void per_clocks_enable(void)
>  	while (__raw_readl(CM_PER_SPI1_CLKCTRL) !=3D PRCM_MOD_EN);
>  }
>  =

> -static void mpu_pll_config(int mpupll_M)
> +static void mpu_pll_config(int mpupll_M, int osc)
>  {
>  	u32 clkmode, clksel, div_m2;
>  =

> @@ -170,7 +170,7 @@ static void mpu_pll_config(int mpupll_M)
>  	while(__raw_readl(CM_IDLEST_DPLL_MPU) !=3D 0x00000100);
>  =

>  	clksel =3D clksel & (~0x7ffff);
> -	clksel =3D clksel | ((mpupll_M << 0x8) | MPUPLL_N);
> +	clksel =3D clksel | ((mpupll_M << 0x8) | (osc - 1));
>  	__raw_writel(clksel, CM_CLKSEL_DPLL_MPU);
>  =

>  	div_m2 =3D div_m2 & ~0x1f;
> @@ -183,7 +183,7 @@ static void mpu_pll_config(int mpupll_M)
>  	while(__raw_readl(CM_IDLEST_DPLL_MPU) !=3D 0x1);
>  }
>  =

> -static void core_pll_config(void)
> +static void core_pll_config(int osc)
>  {
>  	u32 clkmode, clksel, div_m4, div_m5, div_m6;
>  =

> @@ -199,7 +199,7 @@ static void core_pll_config(void)
>  	while(__raw_readl(CM_IDLEST_DPLL_CORE) !=3D 0x00000100);
>  =

>  	clksel =3D clksel & (~0x7ffff);
> -	clksel =3D clksel | ((COREPLL_M << 0x8) | COREPLL_N);
> +	clksel =3D clksel | ((COREPLL_M << 0x8) | (osc - 1));
>  	__raw_writel(clksel, CM_CLKSEL_DPLL_CORE);
>  =

>  	div_m4 =3D div_m4 & ~0x1f;
> @@ -221,7 +221,7 @@ static void core_pll_config(void)
>  	while(__raw_readl(CM_IDLEST_DPLL_CORE) !=3D 0x1);
>  }
>  =

> -static void per_pll_config(void)
> +static void per_pll_config(int osc)
>  {
>  	u32 clkmode, clksel, div_m2;
>  =

> @@ -235,7 +235,7 @@ static void per_pll_config(void)
>  	while(__raw_readl(CM_IDLEST_DPLL_PER) !=3D 0x00000100);
>  =

>  	clksel =3D clksel & (~0x7ffff);
> -	clksel =3D clksel | ((PERPLL_M << 0x8) | PERPLL_N);
> +	clksel =3D clksel | ((PERPLL_M << 0x8) | (osc - 1));
>  	__raw_writel(clksel, CM_CLKSEL_DPLL_PER);
>  =

>  	div_m2 =3D div_m2 & ~0x7f;
> @@ -248,7 +248,7 @@ static void per_pll_config(void)
>  	while(__raw_readl(CM_IDLEST_DPLL_PER) !=3D 0x1);
>  }
>  =

> -static void ddr_pll_config(void)
> +static void ddr_pll_config(int osc)
>  {
>  	u32 clkmode, clksel, div_m2;
>  =

> @@ -263,7 +263,7 @@ static void ddr_pll_config(void)
>  	while ((__raw_readl(CM_IDLEST_DPLL_DDR) & 0x00000100) !=3D 0x00000100);
>  =

>  	clksel =3D clksel & (~0x7ffff);
> -	clksel =3D clksel | ((DDRPLL_M << 0x8) | DDRPLL_N);
> +	clksel =3D clksel | ((DDRPLL_M << 0x8) | (osc - 1));
>  	__raw_writel(clksel, CM_CLKSEL_DPLL_DDR);
>  =

>  	div_m2 =3D div_m2 & 0xFFFFFFE0;
> @@ -294,12 +294,12 @@ void enable_ddr_clocks(void)
>  /*
>   * Configure the PLL/PRCM for necessary peripherals
>   */
> -void pll_init(int mpupll_M)
> +void pll_init(int mpupll_M, int osc)
>  {
> -	mpu_pll_config(mpupll_M);
> -	core_pll_config();
> -	per_pll_config();
> -	ddr_pll_config();
> +	mpu_pll_config(mpupll_M, osc);
> +	core_pll_config(osc);
> +	per_pll_config(osc);
> +	ddr_pll_config(osc);
>  	/* Enable the required interconnect clocks */
>  	interface_clocks_enable();
>  	/* Enable power domain transition */
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/ma=
ch-omap/include/mach/am33xx-clock.h
> index 968509e..6035da6 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
> @@ -23,20 +23,16 @@
>  =

>  /* Put the pll config values over here */
>  =

> -#define OSC	24
> -
>  /* MAIN PLL Fdll =3D 1 GHZ, */
>  #define MPUPLL_M_500	500	/* 125 * n */
>  #define MPUPLL_M_550	550	/* 125 * n */
>  #define MPUPLL_M_600	600	/* 125 * n */
>  #define MPUPLL_M_720	720	/* 125 * n */
>  =

> -#define MPUPLL_N	(OSC - 1)
>  #define MPUPLL_M2	1
>  =

>  /* Core PLL Fdll =3D 1 GHZ, */
>  #define COREPLL_M	1000	/* 125 * n */
> -#define COREPLL_N	(OSC - 1)
>  =

>  #define COREPLL_M4	10	/* CORE_CLKOUTM4 =3D 200 MHZ */
>  #define COREPLL_M5	8	/* CORE_CLKOUTM5 =3D 250 MHZ */
> @@ -48,13 +44,11 @@
>   * For clkout =3D 192 MHZ, Fdll =3D 960 MHZ, divider values are given be=
low
>   */
>  #define PERPLL_M	960
> -#define PERPLL_N	(OSC - 1)
>  #define PERPLL_M2	5
>  =

>  /* DDR Freq is 266 MHZ for now*/
>  /* Set Fdll =3D 400 MHZ , Fdll =3D M * 2 * CLKINP/ N + 1; clkout =3D Fdl=
l /(2 * M2) */
>  #define DDRPLL_M	266
> -#define DDRPLL_N	(OSC - 1)
>  #define DDRPLL_M2	1
>  =

>  /* PRCM */
> @@ -187,7 +181,7 @@
>  =

>  #define CM_ALWON_GPMC_CLKCTRL           CM_PER_GPMC_CLKCTRL
>  =

> -extern void pll_init(int mpupll_M);
> +extern void pll_init(int mpupll_M, int osc);
>  extern void enable_ddr_clocks(void);
>  =

>  #endif  /* endif _AM33XX_CLOCKS_H_ */
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
