Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8669-0004fI-VD
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 06:55:04 +0000
Date: Tue, 19 Oct 2010 08:54:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101019065458.GQ28242@pengutronix.de>
References: <201010161546.52848.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010161546.52848.jbe@pengutronix.de>
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
Subject: Re: [PATCH] imx: Separate framebuffer platformdata and the videomode
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Sat, Oct 16, 2010 at 03:46:52PM +0200, Juergen Beisert wrote:
> commit 4ac682bf08b61708bc432c48e58a6d1cf9ea3832
> Author: Juergen Beisert <jbe@pengutronix.de>
> Date:   Sat Oct 16 15:32:06 2010 +0200
> =

>     imx: Separate framebuffer platformdata and the videomode
>     =

>     This patch separates the imx platformdata and its videomode in two st=
ructures,
>     in order to support more than one defined videomode in the boardfile.=
 This
>     is intended to support runtime videomode selection later on. It also =
uses
>     now the same videomode setup style than the imx-fpu based systems (li=
ke the
>     i.MX35).

Multiple displays can have different bpp/pcr values. Shouldn't we build
an array of imx_fb_videomode instead?

Sascha

>     =

>     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm=
/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> index c2eb398..b1b9852 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> +++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> @@ -119,20 +119,22 @@ static struct device_d nand_dev =3D {
>  	.platform_data	=3D &nand_info,
>  };
>  =

> +static struct fb_videomode cmo_display =3D {
> +	.name		=3D "CMO-QVGA",
> +	.refresh	=3D 60,
> +	.xres		=3D 320,
> +	.yres		=3D 240,
> +	.pixclock	=3D KHZ2PICOS(6500),
> +	.hsync_len	=3D 30,
> +	.left_margin	=3D 38,
> +	.right_margin	=3D 20,
> +	.vsync_len	=3D 3,
> +	.upper_margin	=3D 15,
> +	.lower_margin	=3D 4,
> +};
> +
>  static struct imx_fb_videomode imxfb_mode =3D {
> -	.mode =3D {
> -		.name		=3D "CMO-QVGA",
> -		.refresh	=3D 60,
> -		.xres		=3D 320,
> -		.yres		=3D 240,
> -		.pixclock	=3D KHZ2PICOS(6500),
> -		.hsync_len	=3D 30,
> -		.left_margin	=3D 38,
> -		.right_margin	=3D 20,
> -		.vsync_len	=3D 3,
> -		.upper_margin	=3D 15,
> -		.lower_margin	=3D 4,
> -	},
> +	.mode		=3D &cmo_display,
>  	.pcr		=3D 0xCAD08B80,
>  	.bpp		=3D 16,
>  };
> diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm=
/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> index 62fc14e..3ea2466 100644
> --- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> +++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> @@ -186,20 +186,22 @@ static void eukrea_cpuimx27_mmu_init(void)
>  #endif
>  =

>  #ifdef CONFIG_DRIVER_VIDEO_IMX
> +static struct fb_videomode cmo_display =3D {
> +	.name		=3D "CMO-QVGA",
> +	.refresh	=3D 60,
> +	.xres		=3D 320,
> +	.yres		=3D 240,
> +	.pixclock	=3D 156000,
> +	.hsync_len	=3D 30,
> +	.left_margin	=3D 38,
> +	.right_margin	=3D 20,
> +	.vsync_len	=3D 3,
> +	.upper_margin	=3D 15,
> +	.lower_margin	=3D 4,
> +};
> +
>  static struct imx_fb_videomode imxfb_mode =3D {
> -	.mode =3D {
> -		.name		=3D "CMO-QVGA",
> -		.refresh	=3D 60,
> -		.xres		=3D 320,
> -		.yres		=3D 240,
> -		.pixclock	=3D 156000,
> -		.hsync_len	=3D 30,
> -		.left_margin	=3D 38,
> -		.right_margin	=3D 20,
> -		.vsync_len	=3D 3,
> -		.upper_margin	=3D 15,
> -		.lower_margin	=3D 4,
> -	},
> +	.mode		=3D &cmo_display,
>  	.pcr		=3D 0xFAD08B80,
>  	.bpp		=3D 16,};
>  =

> diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/=
board.c
> index 9c85c08..6949675 100644
> --- a/arch/arm/boards/guf-neso/board.c
> +++ b/arch/arm/boards/guf-neso/board.c
> @@ -91,20 +91,22 @@ static struct device_d nand_dev =3D {
>  	.platform_data	=3D &nand_info,
>  };
>  =

> +static struct fb_videomode cpt_display =3D {
> +	.name		=3D "CPT CLAA070LC0JCT",
> +	.refresh	=3D 60,
> +	.xres		=3D 800,
> +	.yres		=3D 480,
> +	.pixclock	=3D KHZ2PICOS(27000),
> +	.hsync_len	=3D 1,	/* DE only sync */
> +	.left_margin	=3D 50,
> +	.right_margin	=3D 50,
> +	.vsync_len	=3D 1,	/* DE only sync */
> +	.upper_margin	=3D 10,
> +	.lower_margin	=3D 10,
> +};
> +
>  static struct imx_fb_videomode imxfb_mode =3D {
> -	.mode =3D {
> -		.name		=3D "CPT CLAA070LC0JCT",
> -		.refresh	=3D 60,
> -		.xres		=3D 800,
> -		.yres		=3D 480,
> -		.pixclock	=3D KHZ2PICOS(27000),
> -		.hsync_len	=3D 1,	/* DE only sync */
> -		.left_margin	=3D 50,
> -		.right_margin	=3D 50,
> -		.vsync_len	=3D 1,	/* DE only sync */
> -		.upper_margin	=3D 10,
> -		.lower_margin	=3D 10,
> -	},
> +	.mode =3D &cpt_display,
>  	/*
>  	 * - TFT style panel
>  	 * - clk enabled while idle
> diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21a=
ds/imx21ads.c
> index 44d37aa..81006de 100644
> --- a/arch/arm/boards/imx21ads/imx21ads.c
> +++ b/arch/arm/boards/imx21ads/imx21ads.c
> @@ -79,24 +79,26 @@ static struct device_d cs8900_dev =3D {
>  	// IRQ is connected to UART3_RTS
>  };
>  =

> +static struct fb_videomode sharp_display =3D {
> +	.name           =3D "Sharp-LQ035Q7",
> +	.refresh        =3D 60,
> +	.xres           =3D 240,
> +	.yres           =3D 320,
> +	.pixclock       =3D 188679,
> +	.left_margin    =3D 6,
> +	.right_margin   =3D 16,
> +	.upper_margin   =3D 8,
> +	.lower_margin   =3D 10,
> +	.hsync_len      =3D 2,
> +	.vsync_len      =3D 1,
> +	.sync           =3D 0,
> +	.vmode          =3D FB_VMODE_NONINTERLACED,
> +	.flag           =3D 0,
> +};
> +
>  /* Sharp LQ035Q7DB02 QVGA display */
>  static struct imx_fb_videomode imx_fb_modedata =3D {
> -        .mode =3D {
> -		.name           =3D "Sharp-LQ035Q7",
> -		.refresh        =3D 60,
> -		.xres           =3D 240,
> -		.yres           =3D 320,
> -		.pixclock       =3D 188679,
> -		.left_margin    =3D 6,
> -		.right_margin   =3D 16,
> -		.upper_margin   =3D 8,
> -		.lower_margin   =3D 10,
> -		.hsync_len      =3D 2,
> -		.vsync_len      =3D 1,
> -		.sync           =3D 0,
> -		.vmode          =3D FB_VMODE_NONINTERLACED,
> -		.flag           =3D 0,
> -	},
> +        .mode           =3D &sharp_display,
>          .pcr            =3D 0xfb108bc7,
>          .bpp            =3D 16,
>  };
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm=
038.c
> index 3a9b413..026e9c0 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -127,20 +127,22 @@ static struct device_d nand_dev =3D {
>  	.platform_data	=3D &nand_info,
>  };
>  =

> +static struct fb_videomode sharp_display =3D {
> +	.name		=3D "Sharp-LQ035Q7",
> +	.refresh	=3D 60,
> +	.xres		=3D 240,
> +	.yres		=3D 320,
> +	.pixclock	=3D 188679, /* in ps (5.3MHz) */
> +	.hsync_len	=3D 7,
> +	.left_margin	=3D 5,
> +	.right_margin	=3D 16,
> +	.vsync_len	=3D 1,
> +	.upper_margin	=3D 7,
> +	.lower_margin	=3D 9,
> +};
> +
>  static struct imx_fb_videomode imxfb_mode =3D {
> -	.mode =3D {
> -		.name		=3D "Sharp-LQ035Q7",
> -		.refresh	=3D 60,
> -		.xres		=3D 240,
> -		.yres		=3D 320,
> -		.pixclock	=3D 188679, /* in ps (5.3MHz) */
> -		.hsync_len	=3D 7,
> -		.left_margin	=3D 5,
> -		.right_margin	=3D 16,
> -		.vsync_len	=3D 1,
> -		.upper_margin	=3D 7,
> -		.lower_margin	=3D 9,
> -	},
> +	.mode		=3D &sharp_display,
>  	/*
>  	 * - HSYNC active high
>  	 * - VSYNC active high
> diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/i=
nclude/mach/imxfb.h
> index 16b43ea..7baa244 100644
> --- a/arch/arm/mach-imx/include/mach/imxfb.h
> +++ b/arch/arm/mach-imx/include/mach/imxfb.h
> @@ -50,7 +50,7 @@
>  #define DMACR_TM(x)	((x) & 0xf)
>  =

>  struct imx_fb_videomode {
> -	struct fb_videomode mode;
> +	struct fb_videomode *mode;
>  	u32 pcr;
>  	unsigned char	bpp;
>  };
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index ac51858..6ccd77e 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -555,9 +555,9 @@ static int imxfb_probe(struct device_d *dev)
>  	fbi->enable =3D pdata->enable;
>  	fbi->dev =3D dev;
>  	info->priv =3D fbi;
> -	info->mode =3D &pdata->mode->mode;
> -	info->xres =3D pdata->mode->mode.xres;
> -	info->yres =3D pdata->mode->mode.yres;
> +	info->mode =3D pdata->mode->mode;
> +	info->xres =3D pdata->mode->mode->xres;
> +	info->yres =3D pdata->mode->mode->yres;
>  	info->bits_per_pixel =3D pdata->mode->bpp;
>  	info->fbops =3D &imxfb_ops;
>  =

> -- =

> Pengutronix e.K.                              | Juergen Beisert          =
   |
> Linux Solutions for Science and Industry      | Phone: +49-8766-939 228  =
   |
> Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-55=
55 |
> Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de=
/  |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
