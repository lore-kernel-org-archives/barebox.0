Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHxLb-0000rx-U9
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 11:35:50 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 15 Nov 2010 12:35:09 +0100
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<1288092708-5187-9-git-send-email-jbe@pengutronix.de>
	<20101101144142.GA6017@pengutronix.de>
In-Reply-To: <20101101144142.GA6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011151235.09524.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/12] Add a video driver for S3C2440 bases platforms
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Tue, Oct 26, 2010 at 01:31:44PM +0200, Juergen Beisert wrote:
> > From: Juergen Beisert <juergen@kreuzholzen.de>
> >
> > Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
> > ---
> >  arch/arm/mach-s3c24xx/include/mach/fb.h |   40 +++
> >  drivers/video/Kconfig                   |    6 +
> >  drivers/video/Makefile                  |    1 +
> >  drivers/video/s3c.c                     |  452
> > +++++++++++++++++++++++++++++++ 4 files changed, 499 insertions(+), 0
> > deletions(-)
> >  create mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
> >  create mode 100644 drivers/video/s3c.c
> >
> > diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h
> > b/arch/arm/mach-s3c24xx/include/mach/fb.h new file mode 100644
> > index 0000000..eec6164
> > --- /dev/null
> > +++ b/arch/arm/mach-s3c24xx/include/mach/fb.h
> > @@ -0,0 +1,40 @@
> > +/*
> > + * Copyright (C) 2010 Juergen Beisert
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + *
> > + */
> > +
> > +#ifndef __MACH_FB_H_
> > +# define __MACH_FB_H_
> > +
> > +#include <fb.h>
> > +
> > +struct s3c_fb_platform_data {
> > +
> > +	const struct fb_videomode *mode_list;
> > +	unsigned mode_cnt;
> > +
> > +	int passive_display;	/**< enable support for STN or CSTN displays */
> > +
> > +	void *framebuffer;	/**< force framebuffer base address */
> > +	unsigned size;		/**< force framebuffer size */
> > +
> > +	/** hook to enable backlight and stuff */
> > +	void (*enable)(int);
> > +};
> > +
> > +#endif /* __MACH_FB_H_ */
> > diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> > index d7f3d01..5a5edd2 100644
> > --- a/drivers/video/Kconfig
> > +++ b/drivers/video/Kconfig
> > @@ -39,4 +39,10 @@ config DRIVER_VIDEO_IMX_IPU
> >  	  Add support for the IPU framebuffer device found on
> >  	  i.MX31 and i.MX35 CPUs.
> >
> > +config S3C_VIDEO
> > +	bool "S3C244x framebuffer driver"
> > +	depends on ARCH_S3C24xx
> > +	help
> > +	  Add support for the S3C244x LCD controller.
> > +
> >  endif
> > diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> > index 179f0c4..4287fc8 100644
> > --- a/drivers/video/Makefile
> > +++ b/drivers/video/Makefile
> > @@ -2,3 +2,4 @@ obj-$(CONFIG_VIDEO) += fb.o
> >
> >  obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
> >  obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
> > +obj-$(CONFIG_S3C_VIDEO) += s3c.o
> > diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
> > new file mode 100644
> > index 0000000..8ae5785
> > --- /dev/null
> > +++ b/drivers/video/s3c.c
> > @@ -0,0 +1,452 @@
> > +/*
> > + * Copyright (C) 2010 Juergen Beisert
> > + *
> > + * This driver is based on a patch found in the web:
> > + * (C) Copyright 2006 by OpenMoko, Inc.
> > + * Author: Harald Welte <laforge at openmoko.org>
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + *
> > + */
> > +
> > +/* #define DEBUG */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <fb.h>
> > +#include <driver.h>
> > +#include <malloc.h>
> > +#include <errno.h>
> > +#include <asm/io.h>
> > +#include <mach/gpio.h>
> > +#include <mach/s3c24xx-generic.h>
> > +#include <mach/s3c24x0-clocks.h>
> > +#include <mach/fb.h>
> > +
> > +#define LCDCON1 0x00
> > +# define PNRMODE(x) (((x) & 3) << 5)
> > +# define BPPMODE(x) (((x) & 0xf) << 1)
> > +# define SET_CLKVAL(x) (((x) & 0x3ff) << 8)
> > +# define GET_CLKVAL(x) (((x) >> 8) & 0x3ff)
> > +# define ENVID (1 << 0)
> > +
> > +#define LCDCON2 0x04
> > +# define SET_VBPD(x) (((x) & 0xff) << 24)
> > +# define SET_LINEVAL(x) (((x) & 0x3ff) << 14)
> > +# define SET_VFPD(x) (((x) & 0xff) << 6)
> > +# define SET_VSPW(x) ((x) & 0x3f)
> > +
> > +#define LCDCON3 0x08
> > +# define SET_HBPD(x) (((x) & 0x7f) << 19)
> > +# define SET_HOZVAL(x) (((x) & 0x7ff) << 8)
> > +# define SET_HFPD(x) ((x) & 0xff)
> > +
> > +#define LCDCON4 0x0c
> > +# define SET_HSPW(x) ((x) & 0xff)
> > +
> > +#define LCDCON5 0x10
> > +# define BPP24BL (1 << 12)
> > +# define FRM565 (1 << 11)
> > +# define INV_CLK (1 << 10)
> > +# define INV_HS (1 << 9)
> > +# define INV_VS (1 << 8)
> > +# define INV_DTA (1 << 7)
> > +# define INV_DE (1 << 6)
> > +# define INV_PWREN (1 << 5)
> > +# define INV_LEND (1 << 4)	/* FIXME */
> > +# define ENA_PWREN (1 << 3)
> > +# define ENA_LEND (1 << 2)	/* FIXME */
> > +# define BSWP (1 << 1)
> > +# define HWSWP (1 << 0)
> > +
> > +#define LCDSADDR1 0x14
> > +# define SET_LCDBANK(x) (((x) & 0x1ff) << 21)
> > +# define GET_LCDBANK(x) (((x) >> 21) & 0x1ff)
> > +# define SET_LCDBASEU(x) ((x) & 0x1fffff)
> > +# define GET_LCDBASEU(x) ((x) & 0x1fffff)
> > +
> > +#define LCDSADDR2 0x18
> > +# define SET_LCDBASEL(x) ((x) & 0x1fffff)
> > +# define GET_LCDBASEL(x) ((x) & 0x1fffff)
> > +
> > +#define LCDSADDR3 0x1c
> > +# define SET_OFFSIZE(x) (((x) & 0x7ff) << 11)
> > +# define GET_OFFSIZE(x) (((x) >> 11) & 0x7ff)
> > +# define SET_PAGE_WIDTH(x) ((x) & 0x3ff)
> > +# define GET_PAGE_WIDTH(x) ((x) & 0x3ff)
> > +
> > +#define RED_LUT 0x20
> > +#define GREEN_LUT 0x24
> > +#define BLUE_LUT 0x28
> > +
> > +#define DITHMODE 0x4c
> > +
> > +#define TPAL 0x50
> > +
> > +#define LCDINTPND 0x54
> > +
> > +#define LCDSRCPND 0x58
> > +
> > +#define LCDINTMSK 0x5c
> > +# define FIWSEL (1 << 2)
> > +
> > +#define TCONSEL 0x60
> > +
> > +#define RED 0
> > +#define GREEN 1
> > +#define BLUE 2
> > +#define TRANSP 3
> > +
> > +struct s3cfb_host {
> > +	struct fb_host fb_data;
> > +	struct device_d *hw_dev;
> > +	void __iomem *base;
> > +};
> > +
> > +#define fb_info_to_s3cfb_host(x) ((struct s3cfb_host*)((x)->host))
> >
> > +#define s3cfb_host_to_s3c_fb_platform_data(x) ((struct
> > s3c_fb_platform_data*)((x)->hw_dev->platform_data))
>
> Please add a pointer to 3c_fb_platform_data to s3cfb_host and get rid of
> this define.

But this pointer would only provide redundant information, as this pointer is 
already part of the hw_dev member.

> > +
> > +/* the RGB565 true colour mode */
> > +static const struct fb_bitfield def_rgb565[] = {
> > +	[RED] = {
> > +		.offset = 11,
> > +		.length = 5,
> > +	},
> > +	[GREEN] = {
> > +		.offset = 5,
> > +		.length = 6,
> > +	},
> > +	[BLUE] = {
> > +		.offset = 0,
> > +		.length = 5,
> > +	},
> > +	[TRANSP] = {	/* no support for transparency */
> > +		.length = 0,
> > +	}
> > +};
> > +
> > +/* the RGB888 true colour mode */
> > +static const struct fb_bitfield def_rgb888[] = {
> > +	[RED] = {
> > +		.offset = 16,
> > +		.length = 8,
> > +	},
> > +	[GREEN] = {
> > +		.offset = 8,
> > +		.length = 8,
> > +	},
> > +	[BLUE] = {
> > +		.offset = 0,
> > +		.length = 8,
> > +	},
> > +	[TRANSP] = {	/* no support for transparency */
> > +		.length = 0,
> > +	}
> > +};
> > +
> > +/**
> > + * @param fb_info Framebuffer information
> > + */
> > +static void s3cfb_enable_controller(struct fb_info *fb_info)
> > +{
> > +	struct s3cfb_host *fbh = fb_info_to_s3cfb_host(fb_info);
> > +	struct s3c_fb_platform_data *pdata =
> > s3cfb_host_to_s3c_fb_platform_data(fbh); +	uint32_t con1;
> > +
> > +	pr_debug("%s called\n", __func__);
> > +
> > +	con1 = readl(fbh->base + LCDCON1);
> > +
> > +	con1 |= ENVID;
> > +
> > +	writel(con1, fbh->base + LCDCON1);
> > +
> > +	if (pdata->enable)
> > +		(pdata->enable)(1);
> > +}
> > +
> > +/**
> > + * @param fb_info Framebuffer information
> > + */
> > +static void s3cfb_disable_controller(struct fb_info *fb_info)
> > +{
> > +	struct s3cfb_host *fbh = fb_info_to_s3cfb_host(fb_info);
> > +	struct s3c_fb_platform_data *pdata =
> > s3cfb_host_to_s3c_fb_platform_data(fbh); +	uint32_t con1;
> > +
> > +	pr_debug("%s called\n", __func__);
> > +
> > +	if (pdata->enable)
> > +		(pdata->enable)(0);
> > +
> > +	con1 = readl(fbh->base + LCDCON1);
> > +
> > +	con1 &= ~ENVID;
> > +
> > +	writel(con1, fbh->base + LCDCON1);
> > +}
> > +
> > +/**
> > + * Prepare the video hardware for a specified video mode
> > + * @param fb_info Framebuffer information
> > + * @param mode The video mode description to initialize
> > + * @return 0 on success
> > + */
> > +static int s3cfb_initialize_mode(struct fb_info *fb_info, const struct
> > fb_videomode *mode) +{
> > +	struct s3cfb_host *fbh = fb_info_to_s3cfb_host(fb_info);
> > +	struct s3c_fb_platform_data *pdata =
> > s3cfb_host_to_s3c_fb_platform_data(fbh); +	unsigned size, hclk, div;
> > +	uint32_t con1, con2, con3, con4, con5 = 0;
> > +
> > +	pr_debug("%s called\n", __func__);
> > +
> > +	if (pdata->passive_display != 0) {
> > +		pr_err("Passive displays are currently not supported\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/*
> > +	 * we need at least this amount of memory for the framebuffer
> > +	 */
> > +	size = mode->xres * mode->yres * (fb_info->bits_per_pixel >> 3);
> > +	if (fb_info->fb_dev->size != 0) {
> > +		if (size > fb_info->fb_dev->size) {
> > +			pr_err("Cannot initialize video mode '%s': Its too large. "
> > +				"Required bytes are %u, available only %u\n",
> > +				mode->name, size, fb_info->fb_dev->size);
> > +			return -EINVAL;
> > +		}
> > +	} else
> > +		fb_info->fb_dev->size = size;
> > +
> > +	/*
> > +	 * if no framebuffer memory was specified yet, allocate one,
> > +	 * and allocate more memory, on user request
> > +	 */
> > +	if (fb_info->fb_dev->map_base == 0U)
> > +		fb_info->fb_dev->map_base =
> > (resource_size_t)xzalloc(fb_info->fb_dev->size);
>
> Honestly I don't understand what the two blocks above do. I hope this
> gets simpler once we remove the base/size arguments from
> register_framebuffer.

These blocks distinguish between dynamic and a fixed framebuffer. And 
register_framebuffer's base/size parameters only allow to define a fixed 
framebuffer. So, how to define a fixed framebuffer when the base and size 
parameter are gone?

> > +
> > +	/* its useful to enable the unit's clock */
> > +	s3c244x_mod_clock(CLK_LCDC, 1);
> > +
> > +	/* ensure video output is _off_ */
> > +	writel(0x00000000, fbh->base + LCDCON1);
> > +
> > +	hclk = s3c24xx_get_hclk() / 1000U;	/* hclk in kHz */
> > +	div = hclk / PICOS2KHZ(mode->pixclock);
> > +	if (div < 3)
> > +		div  = 3;
> > +	/* pixel clock is: (hclk) / ((div + 1) * 2) */
> > +	div += 1;
> > +	div >>= 1;
> > +	div -= 1;
> > +
> > +	con1 = PNRMODE(3) | SET_CLKVAL(div);	/* PNRMODE=3 is TFT */
> > +
> > +	switch (fb_info->bits_per_pixel) {
> > +#if 0
> > +	/* TODO add CLUT based modes */
> > +	case 1:
> > +		con1 |= BPPMODE(8);
> > +		break;
> > +	case 2:
> > +		con1 |= BPPMODE(9);
> > +		break;
> > +	case 4:
> > +		con1 |= BPPMODE(10);
> > +		break;
> > +	case 8:
> > +		con1 |= BPPMODE(11);
> > +		break;
> > +#endif
> > +	case 16:
> > +		con1 |= BPPMODE(12);
> > +		con5 |= FRM565;
> > +		fb_info->red = def_rgb565[RED];
> > +		fb_info->green = def_rgb565[GREEN];
> > +		fb_info->blue = def_rgb565[BLUE];
> > +		fb_info->transp =  def_rgb565[TRANSP];
> > +		break;
> > +	case 24:
> > +		con1 |= BPPMODE(13);
> > +		con5 |= BPP24BL;	/* FIXME */
>
> Please either remove the FIXME or explain what we have to fix here.

Sure.

> > +		fb_info->red = def_rgb888[RED];
> > +		fb_info->green = def_rgb888[GREEN];
> > +		fb_info->blue = def_rgb888[BLUE];
> > +		fb_info->transp =  def_rgb888[TRANSP];
> > +		break;
> > +	default:
> > +		pr_err("Invalid bits per pixel value: %u\n", fb_info->bits_per_pixel);
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* 'normal' in register description means positive logic */
> > +	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
> > +		con5 |= INV_HS;
> > +	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
> > +		con5 |= INV_VS;
> > +	if (!(mode->sync & FB_SYNC_DE_HIGH_ACT))
> > +		con5 |= INV_DE;
> > +	if (mode->sync & FB_SYNC_CLK_INVERT)
> > +		con5 |= INV_CLK;	/* display should latch at the rising edge */
> > +	if (mode->sync & FB_SYNC_SWAP_RGB)
> > +		con5 |= HWSWP;
> > +
> > +	/* TODO power enable config via platform data */
> > +
> > +	/* vertical timing */
> > +	con2 = SET_VBPD(mode->upper_margin - 1) |
> > +		SET_LINEVAL(mode->yres - 1) |
> > +		SET_VFPD(mode->lower_margin - 1) |
> > +		SET_VSPW(mode->vsync_len - 1);
> > +
> > +	/* horizontal timing */
> > +	con3 = SET_HBPD(mode->left_margin - 1) |
> > +		SET_HOZVAL(mode->xres - 1) |
> > +		SET_HFPD(mode->right_margin - 1);
> > +	con4 = SET_HSPW(mode->hsync_len - 1);
> > +
> > +	/* basic timing setup */
> > +	writel(con1, fbh->base + LCDCON1);
> > +	pr_debug(" Writing %08X into %08X (con1)\n", con1, fbh->base +
> > LCDCON1); +	writel(con2, fbh->base + LCDCON2);
> > +	pr_debug(" Writing %08X into %08X (con2)\n", con2, fbh->base +
> > LCDCON2); +	writel(con3, fbh->base + LCDCON3);
> > +	pr_debug(" Writing %08X into %08X (con3)\n", con3, fbh->base +
> > LCDCON3); +	writel(con4, fbh->base + LCDCON4);
> > +	pr_debug(" Writing %08X into %08X (con4)\n", con4, fbh->base +
> > LCDCON4); +	writel(con5, fbh->base + LCDCON5);
> > +	pr_debug(" Writing %08X into %08X (con5)\n", con5, fbh->base +
> > LCDCON5); +
> > +	pr_debug("Setting up the fb baseadress to %08X\n",
> > fb_info->fb_dev->map_base); +
> > +	/* framebuffer memory setup */
> > +	writel(fb_info->fb_dev->map_base >> 1, fbh->base + LCDSADDR1);
> > +	size = mode->xres * (fb_info->bits_per_pixel >> 3) * (mode->yres);
>
> You already calculated this value.

Ups, yes. Thanks.

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
