Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Mpx-0000Gd-LA
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 18:59:38 +0000
Date: Fri, 22 Oct 2010 20:59:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101022185931.GO22139@pengutronix.de>
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
	<1287766405-1646-10-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1287766405-1646-10-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 09/11] STM378x: Add video driver for this platform
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 22, 2010 at 06:53:23PM +0200, Juergen Beisert wrote:
> As there is currently no user of this driver (but coming soon) it is for
> reference only.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/mach-stm/include/mach/fb.h |   38 +++
>  drivers/video/Kconfig               |    7 +
>  drivers/video/Makefile              |    1 +
>  drivers/video/stm.c                 |  556 +++++++++++++++++++++++++++++++++++
>  4 files changed, 602 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/mach-stm/include/mach/fb.h
>  create mode 100644 drivers/video/stm.c
> 
> diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
> new file mode 100644
> index 0000000..6596ef2
> --- /dev/null
> +++ b/arch/arm/mach-stm/include/mach/fb.h
> @@ -0,0 +1,38 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
> + * MA 02110-1301, USA.
> + */
> +
> +#ifndef __MACH_FB_H
> +# define __MACH_FB_H
> +
> +#include <fb.h>
> +
> +#define STMLCDIF_8BIT 1	/** pixel data bus to the display is of 8 bit width */
> +#define STMLCDIF_16BIT 0 /** pixel data bus to the display is of 16 bit width */
> +#define STMLCDIF_18BIT 2 /** pixel data bus to the display is of 18 bit width */
> +#define STMLCDIF_24BIT 3 /** pixel data bus to the display is of 24 bit width */
> +
> +struct imx_fb_videomode {
> +	struct fb_videomode *mode_list;
> +	unsigned mode_count;
> +	void *framebuffer;	/**< force fixed framebuffer address if != NULL */
> +	unsigned size;		/**< force fixed size if != NULL */
> +
> +	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
> +	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
> +};
> +
> +#endif /* __MACH_FB_H */
> +
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 64f68c4..63a80b0 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -55,4 +55,11 @@ config S3C_VIDEO
>  	help
>  	  Add support for the S3C244x LCD controller.
>  
> +config DRIVER_VIDEO_STM
> +	bool "i.MX23/28 framebuffer driver"
> +	depends on ARCH_STM
> +	help
> +	  Say 'Y' here to enable framebuffer and spash screen support for
> +	  i.MX23 and i.MX28 based systems.
> +
>  endif
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 4287fc8..0ddb81e 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -1,5 +1,6 @@
>  obj-$(CONFIG_VIDEO) += fb.o
>  
> +obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
>  obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
>  obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
>  obj-$(CONFIG_S3C_VIDEO) += s3c.o
> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
> new file mode 100644
> index 0000000..b18378a
> --- /dev/null
> +++ b/drivers/video/stm.c
> @@ -0,0 +1,556 @@
> +/*
> + * Copyright (C) 2010 Juergen Beisert, Pengutronix
> + *
> + * This code is based on:
> + * Author: Vitaly Wool <vital@embeddedalley.com>
> + *
> + * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
> + * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
> + * MA 02110-1301, USA.
> + */
> +
> +/**
> + * @file
> + * @brief LCDIF driver for i.MX23 and i.MX28 (i.MX23 untested yet)
> + *
> + * The LCDIF support four modes of operation
> + * - MPU interface (to drive smart displays) -> not supported yet
> + * - VSYNC interface (like MPU interface plus Vsync) -> not supported yet
> + * - Dotclock interface (to drive LC displays with RGB data and sync signals)
> + * - DVI (to drive ITU-R BT656)  -> not supported yet
> + *
> + * This driver depends on a correct setup of the pins used for this purpose
> + * (platform specific).
> + *
> + * For the developer: Don't forget to set the data bus width to the display
> + * in the imx_fb_videomode structure. You will else end up with ugly colours.
> + * If you fighting against jitter you can vary the clock delay. This is a feature
> + * of the i.MX28 and you can vary it between 2 ns ... 8 ns in 2 ns steps. Give
> + * the required value in the imx_fb_videomode structure.
> + */
> +
> +/* #define DEBUG */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <xfuncs.h>
> +#include <asm/io.h>
> +#include <mach/clock.h>
> +#include <mach/fb.h>
> +
> +#define HW_LCDIF_CTRL 0x00
> +# define CTRL_SFTRST (1 << 31)
> +# define CTRL_CLKGATE (1 << 30)
> +# define CTRL_BYPASS_COUNT (1 << 19)
> +# define CTRL_VSYNC_MODE (1 << 18)
> +# define CTRL_DOTCLK_MODE (1 << 17)
> +# define CTRL_DATA_SELECT (1 << 16)
> +# define SET_BUS_WIDTH(x) (((x) & 0x3) << 10)
> +# define SET_WORD_LENGTH(x) (((x) & 0x3) << 8)
> +# define GET_WORD_LENGTH(x) (((x) >> 8) & 0x3)
> +# define CTRL_MASTER (1 << 5)
> +# define CTRL_DF16 (1 << 3)
> +# define CTRL_DF18 (1 << 2)
> +# define CTRL_DF24 (1 << 1)
> +# define CTRL_RUN (1 << 0)
> +
> +#define HW_LCDIF_CTRL1 0x10
> +# define SET_BYTE_PACKAGING(x) (((x) & 0xf) << 16)
> +# define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
> +
> +#define HW_LCDIF_CTRL2 0x20
> +
> +#define HW_LCDIF_TRANSFER_COUNT 0x30
> +# define SET_VCOUNT(x) (((x) & 0xffff) << 16)
> +# define SET_HCOUNT(x) ((x) & 0xffff)
> +
> +#define HW_LCDIF_CUR_BUF 0x40
> +
> +#define HW_LCDIF_NEXT_BUF 0x50
> +
> +#define HW_LCDIF_TIMING 0x60
> +# define SET_CMD_HOLD(x) (((x) & 0xff) << 24)
> +# define SET_CMD_SETUP(x) (((x) & 0xff) << 16)
> +# define SET_DATA_HOLD(x) (((x) & 0xff) << 8)
> +# define SET_DATA_SETUP(x) ((x) & 0xff))
> +
> +#define HW_LCDIF_VDCTRL0 0x70
> +# define VDCTRL0_ENABLE_PRESENT (1 << 28)
> +# define VDCTRL0_VSYNC_POL (1 << 27) /* 0 = low active, 1 = high active */
> +# define VDCTRL0_HSYNC_POL (1 << 26) /* 0 = low active, 1 = high active */
> +# define VDCTRL0_DOTCLK_POL (1 << 25) /* 0 = output at falling edge, capturing at rising edge */
> +# define VDCTRL0_ENABLE_POL (1 << 24) /* 0 = low active, 1 = high active */
> +# define VDCTRL0_VSYNC_PERIOD_UNIT (1 << 21)
> +# define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT (1 << 20)
> +# define VDCTRL0_HALF_LINE (1 << 19)
> +# define VDCTRL0_HALF_LINE_MODE (1 << 18)
> +# define SET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
> +
> +#define HW_LCDIF_VDCTRL1 0x80
> +
> +#define HW_LCDIF_VDCTRL2 0x90
> +# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0x3fff) << 18)
> +# define SET_HSYNC_PERIOD(x) ((x) & 0x3ffff)
> +
> +#define HW_LCDIF_VDCTRL3 0xa0
> +# define VDCTRL3_MUX_SYNC_SIGNALS (1 << 29)
> +# define VDCTRL3_VSYNC_ONLY (1 << 28)
> +# define SET_HOR_WAIT_CNT(x) (((x) & 0xfff) << 16)
> +# define SET_VERT_WAIT_CNT(x) ((x) & 0xffff)
> +
> +#define HW_LCDIF_VDCTRL4 0xb0
> +# define SET_DOTCLK_DLY(x) (((x) & 0x7) << 29)
> +# define VDCTRL4_SYNC_SIGNALS_ON (1 << 18)
> +# define SET_DOTCLK_H_VALID_DATA_CNT(x) ((x) & 0x3ffff)
> +
> +#define HW_LCDIF_DVICTRL0 0xc0
> +#define HW_LCDIF_DVICTRL1 0xd0
> +#define HW_LCDIF_DVICTRL2 0xe0
> +#define HW_LCDIF_DVICTRL3 0xf0
> +#define HW_LCDIF_DVICTRL4 0x100
> +#define HW_LCDIF_DATA 0x180
> +
> +#define HW_LCDIF_DEBUG0 0x1d0
> +# define DEBUG_HSYNC (1 < 26)
> +# define DEBUG_VSYNC (1 < 25)
> +
> +#define RED 0
> +#define GREEN 1
> +#define BLUE 2
> +#define TRANSP 3
> +
> +struct imxfb_host {
> +	struct fb_host fb_data;
> +	struct device_d *hw_dev;
> +	void __iomem *base;
> +};
> +
> +#define fb_info_to_imxfb_host(x) ((struct imxfb_host*)((x)->host))
> +
> +/* the RGB565 true colour mode */
> +static const struct fb_bitfield def_rgb565[] = {
> +	[RED] = {
> +		.offset = 11,
> +		.length = 5,
> +	},
> +	[GREEN] = {
> +		.offset = 5,
> +		.length = 6,
> +	},
> +	[BLUE] = {
> +		.offset = 0,
> +		.length = 5,
> +	},
> +	[TRANSP] = {	/* no support for transparency */
> +		.length = 0,
> +	}
> +};
> +
> +/* the RGB666 true colour mode */
> +static const struct fb_bitfield def_rgb666[] = {
> +	[RED] = {
> +		.offset = 16,
> +		.length = 6,
> +	},
> +	[GREEN] = {
> +		.offset = 8,
> +		.length = 6,
> +	},
> +	[BLUE] = {
> +		.offset = 0,
> +		.length = 6,
> +	},
> +	[TRANSP] = {	/* no support for transparency */
> +		.length = 0,
> +	}
> +};
> +
> +/* the RGB888 true colour mode */
> +static const struct fb_bitfield def_rgb888[] = {
> +	[RED] = {
> +		.offset = 16,
> +		.length = 8,
> +	},
> +	[GREEN] = {
> +		.offset = 8,
> +		.length = 8,
> +	},
> +	[BLUE] = {
> +		.offset = 0,
> +		.length = 8,
> +	},
> +	[TRANSP] = {	/* no support for transparency */
> +		.length = 0,
> +	}
> +};
> +
> +/**
> + * Just calculate the amount of required bytes per line
> + * @param ppl Used pixel per line
> + * @param bpp Bits per pixel
> + * @return Byte count
> + */
> +static inline unsigned calc_line_length(unsigned ppl, unsigned bpp)
> +{
> +	return (ppl * bpp) >> 3;
> +}
> +
> +/**
> + * Prepare the video hardware for a specified video mode
> + * @param fb_info Framebuffer information
> + * @param mode The video mode description to initialize
> + * @return 0 on success
> + *
> + * Dotclock mode:
> + * One line of pixels or one frame in the i.MX28 is defined to:
> + * @verbatim
> + * |<---------------------- one line period -------------------------------->|
> + * |<- HSync length ->|
> + * |<----- Start of line --->|
> + *                           |<-------- active line data ------>|
> + *
> + * |<------------------------ frame period --------------------------------->|
> + * |<- VSync length ->|
> + * |<--- Start of 1. line -->|
> + *                           |<---------- active lines -------->|
> + * @endverbatim
> + * Based on the values from struct fb_videomode:
> + * - "one line period" = left_margin + xres + right_margin + hsync_len
> + * - "HSync length" = hsync_len
> + * - "Start of line" = hsync_len + left_margin
> + * - "active line data" = xres
> + */
> +static int stmfb_initialize_mode(struct fb_info *fb_info, const struct fb_videomode *mode)
> +{
> +	struct imxfb_host *fbh = fb_info_to_imxfb_host(fb_info);
> +	struct imx_fb_videomode *pdata = fbh->hw_dev->platform_data;
> +	uint32_t reg;
> +	unsigned size;
> +
> +	pr_debug("%s called\n", __func__);
> +	/*
> +	 * we need at least this amount of memory for the framebuffer
> +	 */
> +	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) * mode->yres;
> +	if (fb_info->fb_dev->size != 0) {
> +		if (size > fb_info->fb_dev->size) {
> +			pr_err("Cannot initialize video mode '%s': Its too large. "
> +				"Required bytes are %u, available only %u\n",
> +				mode->name, size, fb_info->fb_dev->size);
> +			return -EINVAL;
> +		}
> +	} else
> +		fb_info->fb_dev->size = size;
> +
> +	/*
> +	 * if no framebuffer memory was specified yet, allocate one,
> +	 * and allocate more memory, on user request
> +	 */
> +	if (fb_info->fb_dev->map_base == 0U)
> +		fb_info->fb_dev->map_base = (resource_size_t)xzalloc(fb_info->fb_dev->size);
> +
> +	/* TODO HCLK must be active at this point of time! */
> +
> +	size = imx_set_lcdifclk(PICOS2KHZ(mode->pixclock));
> +	if (size == 0) {
> +		pr_debug("Unable to set a valid pixel clock\n");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * bring the controller out of reset and configure it into DOTCLOCK mode
> +	 */
> +	reg = CTRL_BYPASS_COUNT |	/* always in DOTCLOCK mode */
> +		CTRL_DOTCLK_MODE;
> +	writel(reg, fbh->base + HW_LCDIF_CTRL);
> +
> +	/* master mode only */
> +	reg |= CTRL_MASTER;
> +
> +	/*
> +	 * Configure videomode and interface mode
> +	 */
> +	reg |= SET_BUS_WIDTH(pdata->ld_intf_width);
> +	switch (fb_info->bits_per_pixel) {
> +	case 8:
> +		reg |= SET_WORD_LENGTH(1);
> +		/* TODO refer manual page 2046 */
> +		pr_warning("8 bpp mode not supported yet\n");
> +		break;
> +	case 16:
> +		pr_debug("Setting up an RGB565 mode\n");
> +		reg |= SET_WORD_LENGTH(0) | CTRL_DF16; /* we assume RGB565 */
> +		writel(SET_BYTE_PACKAGING(0xf), fbh->base + HW_LCDIF_CTRL1);
> +		fb_info->red = def_rgb565[RED];
> +		fb_info->green = def_rgb565[GREEN];
> +		fb_info->blue = def_rgb565[BLUE];
> +		fb_info->transp =  def_rgb565[TRANSP];
> +		break;
> +	case 24:
> +	case 32:
> +		pr_debug("Setting up an RGB888/666 mode\n");
> +		reg |= SET_WORD_LENGTH(3);
> +		switch (pdata->ld_intf_width) {
> +		case STMLCDIF_8BIT:
> +			pr_debug("Unsupported LCD bus width mapping\n");
> +			break;
> +		case STMLCDIF_16BIT:
> +		case STMLCDIF_18BIT:
> +			/* 24 bit to 18 bit mapping */
> +			reg |= CTRL_DF24;	/* ignore the upper 2 bits in each colour component */
> +			fb_info->red = def_rgb666[RED];
> +			fb_info->green = def_rgb666[GREEN];
> +			fb_info->blue = def_rgb666[BLUE];
> +			fb_info->transp =  def_rgb666[TRANSP];
> +			break;
> +		case STMLCDIF_24BIT:
> +			/* real 24 bit */
> +			fb_info->red = def_rgb888[RED];
> +			fb_info->green = def_rgb888[GREEN];
> +			fb_info->blue = def_rgb888[BLUE];
> +			fb_info->transp =  def_rgb888[TRANSP];
> +			break;
> +		}
> +		/* do not use packed pixels = one pixel per word instead */
> +		writel(SET_BYTE_PACKAGING(0x7), fbh->base + HW_LCDIF_CTRL1);
> +		break;
> +	default:
> +		pr_debug("Unhandled colour depth of %u\n", fb_info->bits_per_pixel);
> +		return -EINVAL;
> +	}
> +	writel(reg, fbh->base + HW_LCDIF_CTRL);
> +	pr_debug("Setting up CTRL to %08X\n", reg);
> +
> +	writel(SET_VCOUNT(mode->yres) |
> +		SET_HCOUNT(mode->xres), fbh->base + HW_LCDIF_TRANSFER_COUNT);
> +
> +	reg = VDCTRL0_ENABLE_PRESENT |	/* always in DOTCLOCK mode */
> +		VDCTRL0_VSYNC_PERIOD_UNIT |
> +		VDCTRL0_VSYNC_PULSE_WIDTH_UNIT;
> +	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
> +		reg |= VDCTRL0_HSYNC_POL;
> +	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
> +		reg |= VDCTRL0_VSYNC_POL;
> +	if (mode->sync & FB_SYNC_DE_HIGH_ACT)
> +		reg |= VDCTRL0_ENABLE_POL;
> +	if (mode->sync & FB_SYNC_CLK_INVERT)
> +		reg |= VDCTRL0_DOTCLK_POL;
> +
> +	reg |= SET_VSYNC_PULSE_WIDTH(mode->vsync_len);
> +	writel(reg, fbh->base + HW_LCDIF_VDCTRL0);
> +	pr_debug("Setting up VDCTRL0 to %08X\n", reg);
> +
> +	/* frame length in lines */
> +	writel(mode->upper_margin + mode->vsync_len + mode->lower_margin + mode->yres,
> +		fbh->base + HW_LCDIF_VDCTRL1);
> +
> +	/* line length in units of clocks or pixels */
> +	writel(SET_HSYNC_PULSE_WIDTH(mode->hsync_len) |
> +		SET_HSYNC_PERIOD(mode->left_margin + mode->hsync_len + mode->right_margin + mode->xres),
> +		fbh->base + HW_LCDIF_VDCTRL2);
> +
> +	writel(SET_HOR_WAIT_CNT(mode->left_margin + mode->hsync_len) |
> +		SET_VERT_WAIT_CNT(mode->upper_margin + mode->vsync_len),
> +		fbh->base + HW_LCDIF_VDCTRL3);
> +
> +	writel(SET_DOTCLK_DLY(pdata->dotclk_delay) |
> +		SET_DOTCLK_H_VALID_DATA_CNT(mode->xres),
> +		fbh->base + HW_LCDIF_VDCTRL4);
> +
> +	writel(fb_info->fb_dev->map_base, fbh->base + HW_LCDIF_CUR_BUF);
> +	/* always show one framebuffer only */
> +	writel(fb_info->fb_dev->map_base, fbh->base + HW_LCDIF_NEXT_BUF);
> +
> +	return 0;
> +}
> +
> +/**
> + * @param fb_info Framebuffer information
> + */
> +static void stmfb_enable_controller(struct fb_info *fb_info)
> +{
> +	struct imxfb_host *fbh = fb_info_to_imxfb_host(fb_info);
> +	uint32_t reg, last_reg;
> +	unsigned loop, edges;
> +
> +	pr_debug("%s called\n", __func__);
> +
> +	/* if it was disabled, re-enable the mode again */
> +	reg = readl(fbh->base + HW_LCDIF_CTRL);
> +	reg |= CTRL_DOTCLK_MODE;
> +	writel(reg, fbh->base + HW_LCDIF_CTRL);
> +
> +	/* enable the SYNC signals first, then the DMA enginge */
> +	reg = readl(fbh->base + HW_LCDIF_VDCTRL4);
> +	reg |= VDCTRL4_SYNC_SIGNALS_ON;
> +	writel(reg, fbh->base + HW_LCDIF_VDCTRL4);
> +
> +	/*
> +	 * Give the attached LC display or monitor a chance to sync into
> +	 * our signals.
> +	 * Wait for at least 2 VSYNCs = four VSYNC edges
> +	 */
> +	edges = 4;
> +
> +	while (edges != 0) {
> +		loop = 800;
> +		last_reg = readl(fbh->base + HW_LCDIF_DEBUG0) & DEBUG_VSYNC;
> +		do {
> +			reg = readl(fbh->base + HW_LCDIF_DEBUG0) & DEBUG_VSYNC;
> +			if (reg != last_reg);
> +				break;
> +			last_reg = reg;
> +			loop--;
> +		} while (loop != 0);
> +		edges--;
> +	}
> +
> +	reg = readl(fbh->base + HW_LCDIF_CTRL);
> +	reg |= CTRL_RUN;
> +	writel(reg, fbh->base + HW_LCDIF_CTRL);
> +}
> +
> +/**
> + * @param fb_info Framebuffer information
> + */
> +static void stmfb_disable_controller(struct fb_info *fb_info)
> +{
> +	struct imxfb_host *fbh = fb_info_to_imxfb_host(fb_info);
> +	unsigned loop;
> +	uint32_t reg;
> +
> +	pr_debug("%s called\n", __func__);
> +	/*
> +	 * Even if we disable the controller here, it will still continue
> +	 * until its FIFOs are running out of data
> +	 */
> +	reg = readl(fbh->base + HW_LCDIF_CTRL);
> +	reg &= ~CTRL_DOTCLK_MODE;
> +	writel(reg, fbh->base + HW_LCDIF_CTRL);
> +
> +	loop = 1000;
> +	while (loop) {
> +		reg = readl(fbh->base + HW_LCDIF_CTRL);
> +		if (!(reg & CTRL_RUN))
> +			break;
> +		loop--;
> +	}
> +
> +	reg = readl(fbh->base + HW_LCDIF_VDCTRL4);
> +	reg &= ~VDCTRL4_SYNC_SIGNALS_ON;
> +	writel(reg, fbh->base + HW_LCDIF_VDCTRL4);
> +}
> +
> +/**
> + * Print some information about the current hardware state
> + * @param hw_dev STM video device
> + */
> +static void stmfb_info(struct device_d *hw_dev)
> +{
> +	uint32_t reg;
> +
> +	printf(" STM video hardware:\n");
> +	printf("  Pixel clock: %u kHz\n", imx_get_lcdifclk());
> +
> +	reg = readl(hw_dev->map_base + HW_LCDIF_CTRL);
> +	switch (GET_WORD_LENGTH(reg)) {
> +	case 0:
> +		printf("  16 bpp mode with %s colour scheme\n", reg & CTRL_DF16 ? "RGB565" : "ARGB1555");
> +		switch (GET_BYTE_PACKAGING(readl(hw_dev->map_base + HW_LCDIF_CTRL1))) {
> +		case 0xf:
> +			printf("  One pixel per halfword\n");
> +			break;
> +		case 0x3:
> +			printf("  One pixel per word\n");
> +			break;
> +		default:
> +			printf("Unknown pixel packaging: %u\n", GET_BYTE_PACKAGING(readl(hw_dev->map_base + HW_LCDIF_CTRL1)));

Care to spend a line break?

> +		}
> +		break;
> +	case 1:
> +	case 2:
> +		printf("Unsupported bpp mode yet!\n");
> +		break;
> +	case 3:
> +		printf("  24 bpp mode with %s colour scheme\n", reg & CTRL_DF24 ? "RGB888" : "RGB666");
> +		switch (GET_BYTE_PACKAGING(readl(hw_dev->map_base + HW_LCDIF_CTRL1))) {
> +		case 0x7:
> +			printf("  One pixel per word (xRGB xRGB xRGB ...)\n");
> +			break;
> +		case 0xf:
> +			printf("Packed pixel format per word (RGBR GBRG BRGB ...)\n");
> +			break;
> +		default:
> +			printf("Unknown pixel packaging: %u\n", GET_BYTE_PACKAGING(readl(hw_dev->map_base + HW_LCDIF_CTRL1)));

ditto

> +		}
> +		break;
> +	}
> +}
> +
> +/*
> + * There is only one video hardware instance available.
> + * It makes no sense to dynamically allocate this data
> + */
> +static struct imxfb_host host_data = {
> +	.fb_data.fb_mode = stmfb_initialize_mode,
> +	.fb_data.fb_enable = stmfb_enable_controller,
> +	.fb_data.fb_disable = stmfb_disable_controller,
> +	.fb_data.bits_per_pixel = 16,
> +};
> +
> +static int stmfb_probe(struct device_d *hw_dev)
> +{
> +	struct imx_fb_videomode *pdata = hw_dev->platform_data;
> +	struct device_d *fb_dev;
> +
> +	if (pdata == NULL) {
> +		pr_debug("STMFB: No platformdata. Giving up\n");

We also have dev_dbg and friends for this.

> +		return -ENODEV;
> +	}
> +
> +	/* add runtime hardware info */
> +	host_data.hw_dev = hw_dev;
> +	host_data.base = (void*)hw_dev->map_base;
> +
> +	/* add runtime video info */
> +	host_data.fb_data.mode = pdata->mode_list;
> +	host_data.fb_data.mode_cnt = pdata->mode_count;
> +
> +	fb_dev = register_framebuffer(&host_data.fb_data, pdata->framebuffer, pdata->size);
> +	if (fb_dev == NULL) {
> +		pr_err("STMFB: Failed to register framebuffer\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct driver_d stmfb_driver = {
> +	.name	= "stmfb",
> +	.probe	= stmfb_probe,
> +	.info	= stmfb_info,
> +};
> +
> +static int stmfb_init(void)
> +{
> +	return register_driver(&stmfb_driver);
> +}
> +
> +device_initcall(stmfb_init);
> +
> -- 
> 1.7.2.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
