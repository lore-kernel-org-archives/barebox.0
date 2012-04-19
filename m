Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKlDC-00036U-18
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:51:31 +0000
Date: Thu, 19 Apr 2012 08:51:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120419065111.GJ3852@pengutronix.de>
References: <1334779364-15157-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334779364-15157-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Merge silicon definitions i.MX35, i.MX51 and i.MX53
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Apr 19, 2012 at 12:02:44AM +0400, Alexander Shiyan wrote:
> Also definition can be modified in arch/arm/boards/pcm043/lowlevel.c,
> but I am not sure is we can call imx_silicon_revision() from
> board_init_lowlevel().
> =

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

Sascha

> ---
>  arch/arm/boards/freescale-mx51-pdk/board.c  |    2 +-
>  arch/arm/mach-imx/imx35.c                   |    3 ++-
>  arch/arm/mach-imx/imx51.c                   |   12 ++++++------
>  arch/arm/mach-imx/include/mach/generic.h    |    3 ---
>  arch/arm/mach-imx/include/mach/imx-regs.h   |    8 ++++++++
>  arch/arm/mach-imx/include/mach/imx51-regs.h |   13 -------------
>  6 files changed, 17 insertions(+), 24 deletions(-)
> =

> diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards=
/freescale-mx51-pdk/board.c
> index f5e0da7..3b1b574 100644
> --- a/arch/arm/boards/freescale-mx51-pdk/board.c
> +++ b/arch/arm/boards/freescale-mx51-pdk/board.c
> @@ -141,7 +141,7 @@ static void babbage_power_init(void)
>  	/* power up the system first */
>  	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, 0x00200000);
>  =

> -	if (imx_silicon_revision() < MX51_CHIP_REV_3_0) {
> +	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
>  		/* Set core voltage to 1.1V */
>  		mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_0, &val);
>  		val &=3D ~0x1f;
> diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
> index 381a564..fe0c99e 100644
> --- a/arch/arm/mach-imx/imx35.c
> +++ b/arch/arm/mach-imx/imx35.c
> @@ -37,7 +37,8 @@ int imx_silicon_revision()
>  {
>  	uint32_t reg;
>  	reg =3D readl(IMX_IIM_BASE + IIM_SREV);
> -	reg +=3D IMX35_CHIP_REVISION_1_0;
> +	/* 0=D700 =3D TO 1.0, First silicon */
> +	reg +=3D IMX_CHIP_REV_1_0;
>  =

>  	return (reg & 0xFF);
>  }
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index 4cfd03b..25cc6da 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -20,8 +20,8 @@
>  #include <sizes.h>
>  #include <environment.h>
>  #include <io.h>
> -#include <mach/imx51-regs.h>
>  #include <mach/imx5.h>
> +#include <mach/imx-regs.h>
>  #include <mach/clock-imx51_53.h>
>  =

>  #include "gpio.h"
> @@ -53,19 +53,19 @@ static int query_silicon_revision(void)
>  	rev =3D readl(rom + SI_REV);
>  	switch (rev) {
>  	case 0x1:
> -		mx51_silicon_revision =3D MX51_CHIP_REV_1_0;
> +		mx51_silicon_revision =3D IMX_CHIP_REV_1_0;
>  		mx51_rev_string =3D "1.0";
>  		break;
>  	case 0x2:
> -		mx51_silicon_revision =3D MX51_CHIP_REV_1_1;
> +		mx51_silicon_revision =3D IMX_CHIP_REV_1_1;
>  		mx51_rev_string =3D "1.1";
>  		break;
>  	case 0x10:
> -		mx51_silicon_revision =3D MX51_CHIP_REV_2_0;
> +		mx51_silicon_revision =3D IMX_CHIP_REV_2_0;
>  		mx51_rev_string =3D "2.0";
>  		break;
>  	case 0x20:
> -		mx51_silicon_revision =3D MX51_CHIP_REV_3_0;
> +		mx51_silicon_revision =3D IMX_CHIP_REV_3_0;
>  		mx51_rev_string =3D "3.0";
>  		break;
>  	default:
> @@ -194,7 +194,7 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
>  	imx5_init_lowlevel();
>  =

>  	/* disable write combine for TO 2 and lower revs */
> -	if (imx_silicon_revision() < MX51_CHIP_REV_3_0) {
> +	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
>  		__asm__ __volatile__("mrc 15, 1, %0, c9, c0, 1":"=3Dr"(r));
>  		r |=3D (1 << 25);
>  		__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 1" : : "r"(r));
> diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx=
/include/mach/generic.h
> index 8ff04fb..930d52c 100644
> --- a/arch/arm/mach-imx/include/mach/generic.h
> +++ b/arch/arm/mach-imx/include/mach/generic.h
> @@ -3,9 +3,6 @@ int imx_silicon_revision(void);
>  #define IMX27_CHIP_REVISION_1_0   0
>  #define IMX27_CHIP_REVISION_2_0   1
>  =

> -#define IMX35_CHIP_REVISION_1_0   0x10
> -#define IMX35_CHIP_REVISION_2_0   0x20
> -
>  u64 imx_uid(void);
>  =

>  =

> diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-im=
x/include/mach/imx-regs.h
> index 789397e..5bd5182 100644
> --- a/arch/arm/mach-imx/include/mach/imx-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx-regs.h
> @@ -107,7 +107,15 @@
>  =

>  /* silicon revisions  */
>  #define IMX_CHIP_REV_1_0	0x10
> +#define IMX_CHIP_REV_1_1	0x11
> +#define IMX_CHIP_REV_1_2	0x12
> +#define IMX_CHIP_REV_1_3	0x13
>  #define IMX_CHIP_REV_2_0	0x20
>  #define IMX_CHIP_REV_2_1	0x21
> +#define IMX_CHIP_REV_2_2	0x22
> +#define IMX_CHIP_REV_2_3	0x23
> +#define IMX_CHIP_REV_3_0	0x30
> +#define IMX_CHIP_REV_3_1	0x31
> +#define IMX_CHIP_REV_3_2	0x32
>  =

>  #endif				/* _IMX_REGS_H */
> diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-=
imx/include/mach/imx51-regs.h
> index 90e81cb..3eb0a1f 100644
> --- a/arch/arm/mach-imx/include/mach/imx51-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
> @@ -130,17 +130,4 @@
>  #define MX51_CS4_BASE_ADDR		0xCC000000
>  #define MX51_CS5_BASE_ADDR		0xCE000000
>  =

> -/* silicon revisions specific to i.MX51 */
> -#define MX51_CHIP_REV_1_0	0x10
> -#define MX51_CHIP_REV_1_1	0x11
> -#define MX51_CHIP_REV_1_2	0x12
> -#define MX51_CHIP_REV_1_3	0x13
> -#define MX51_CHIP_REV_2_0	0x20
> -#define MX51_CHIP_REV_2_1	0x21
> -#define MX51_CHIP_REV_2_2	0x22
> -#define MX51_CHIP_REV_2_3	0x23
> -#define MX51_CHIP_REV_3_0	0x30
> -#define MX51_CHIP_REV_3_1	0x31
> -#define MX51_CHIP_REV_3_2	0x32
> -
>  #endif /* __MACH_IMX51_REGS_H */
> -- =

> 1.7.3.4
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
