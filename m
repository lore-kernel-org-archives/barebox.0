Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo25.mail-out.ovh.net ([178.32.228.25])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UP6OK-0000nL-0Y
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 07:21:27 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo25.mail-out.ovh.net (Postfix) with SMTP id 6B7F2FF9256
 for <barebox@lists.infradead.org>; Mon,  8 Apr 2013 09:37:02 +0200 (CEST)
Date: Mon, 8 Apr 2013 09:17:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130408071715.GS1568@game.jcrosoft.org>
References: <1365057762.3836.18.camel@mars>
 <20130405085917.GK1906@pengutronix.de>
 <1365372959.20809.6.camel@lovely>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365372959.20809.6.camel@lovely>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] omap4-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On 00:15 Mon 08 Apr     , Christoph Fritz wrote:
> This patch adds omap4 display controller support.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  arch/arm/mach-omap/Makefile                |    1 +
>  arch/arm/mach-omap/include/mach/omap4-fb.h |   52 +++
>  arch/arm/mach-omap/omap4_fb.c              |   29 ++
>  drivers/video/Kconfig                      |    8 +
>  drivers/video/Makefile                     |    1 +
>  drivers/video/omap4.c                      |  507 ++++++++++++++++++++++++++++
>  drivers/video/omap4.h                      |  408 ++++++++++++++++++++++
>  7 files changed, 1006 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/omap4-fb.h
>  create mode 100644 arch/arm/mach-omap/omap4_fb.c
>  create mode 100644 drivers/video/omap4.c
>  create mode 100644 drivers/video/omap4.h
> 
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 94e42c6..e70ddbd 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
>  obj-$(CONFIG_SHELL_NONE) += xload.o
> +obj-$(CONFIG_DRIVER_VIDEO_OMAP4) += omap4_fb.o
>  obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
>  obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
>  obj-y += gpio.o
> diff --git a/arch/arm/mach-omap/include/mach/omap4-fb.h b/arch/arm/mach-omap/include/mach/omap4-fb.h
> new file mode 100644
> index 0000000..bb4c8e9
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/omap4-fb.h
> @@ -0,0 +1,52 @@
> +#ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
> +#define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
> +
> +#include <fb.h>
> +
> +/* device resource index */
> +enum {
> +	OMAP4_FB_RESOURCE_DSS,
> +	OMAP4_FB_RESOURCE_DISPC,
> +};
> +
> +#define OMAP_DSS_LCD_TFT	(1u << 0)
> +#define OMAP_DSS_LCD_IVS	(1u << 1)
> +#define OMAP_DSS_LCD_IHS	(1u << 2)
> +#define OMAP_DSS_LCD_IPC	(1u << 3)
> +#define OMAP_DSS_LCD_IEO	(1u << 4)
> +#define OMAP_DSS_LCD_RF	(1u << 5)
> +#define OMAP_DSS_LCD_ONOFF	(1u << 6)
> +
> +#define OMAP_DSS_LCD_DATALINES(_l)	((_l) << 10)
> +#define OMAP_DSS_LCD_DATALINES_msk	OMAP_DSS_LCD_DATALINES(3u)
> +#define OMAP_DSS_LCD_DATALINES_12	OMAP_DSS_LCD_DATALINES(0u)
> +#define OMAP_DSS_LCD_DATALINES_16	OMAP_DSS_LCD_DATALINES(1u)
> +#define OMAP_DSS_LCD_DATALINES_18	OMAP_DSS_LCD_DATALINES(2u)
> +#define OMAP_DSS_LCD_DATALINES_24	OMAP_DSS_LCD_DATALINES(3u)
> +
> +struct omap4fb_display {
> +	struct fb_videomode mode;
> +
> +	unsigned long config;
> +
> +	unsigned int power_on_delay;
> +	unsigned int power_off_delay;
> +};
> +
> +struct omap4fb_platform_data {
> +	struct omap4fb_display const *displays;
> +	size_t num_displays;
> +
> +	unsigned int dss_clk_hz;
> +
> +	unsigned int bpp;
> +
> +	struct resource const *screen;
> +
> +	void (*enable)(int p);
> +};
> +
> +struct device_d;
> +struct device_d *omap4_add_display(void *pdata);
> +
> +#endif	/* H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H */
> diff --git a/arch/arm/mach-omap/omap4_fb.c b/arch/arm/mach-omap/omap4_fb.c
> new file mode 100644
> index 0000000..70fbab6
> --- /dev/null
> +++ b/arch/arm/mach-omap/omap4_fb.c
> @@ -0,0 +1,29 @@
> +#include <driver.h>
> +#include <common.h>
> +#include <linux/ioport.h>
> +#include <mach/omap4-fb.h>
> +
> +static struct resource omap4_fb_resources[] = {
> +	[OMAP4_FB_RESOURCE_DSS] = {
> +		.start	= 0x48040000,
> +		.end	= 0x48040000 + 512 - 1,
> +		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
> +		.name	= "DSS",
> +	},
> +
> +	[OMAP4_FB_RESOURCE_DISPC] = {
> +		.start	= 0x48041000,
> +		.end	= 0x48041000 + 3072 - 1,
> +		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
> +		.name	= "DISPC",
> +	},
> +};
> +
> +struct device_d *omap4_add_display(void *pdata)
> +{
> +	return add_generic_device_res("omap4_fb", -1,
> +				      omap4_fb_resources,
> +				      ARRAY_SIZE(omap4_fb_resources),
> +				      pdata);
> +}
> +EXPORT_SYMBOL(omap4_add_display);
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 6d6b08f..9dfa0cd 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -45,6 +45,14 @@ config DRIVER_VIDEO_S3C24XX
>  	help
>  	  Add support for the S3C244x LCD controller.
>  
> +config DRIVER_VIDEO_OMAP4
> +	bool "OMAP4 framebuffer driver"
> +	depends on ARCH_OMAP4
> +	help
> +	  Add support for the OMAP4 Display Controller.
> +	  DSI is unsupported, only DISPC parallel mode on LCD2
> +	  is supported.
> +
>  if DRIVER_VIDEO_S3C24XX
>  
>  config DRIVER_VIDEO_S3C_VERBOSE
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 7429141..83feebb 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -8,3 +8,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
>  obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
>  obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
>  obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
> +obj-$(CONFIG_DRIVER_VIDEO_OMAP4) += omap4.o
> diff --git a/drivers/video/omap4.c b/drivers/video/omap4.c
> new file mode 100644
> index 0000000..23c64d0
> --- /dev/null
> +++ b/drivers/video/omap4.c
> @@ -0,0 +1,507 @@
> +/*
> + * TI Omap4 Frame Buffer device driver
> + *
> + * Copyright (C) 2013 Christoph Fritz <chf.fritz@googlemail.com>
> + *   Based on work by Enrico Scholz, sponsored by Phytec
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <driver.h>
> +#include <fb.h>
> +#include <errno.h>
> +#include <xfuncs.h>
> +#include <init.h>
> +#include <stdio.h>
> +#include <io.h>
> +#include <common.h>
> +#include <malloc.h>
> +#include <common.h>
> +#include <clock.h>
> +
> +#include <mach/omap4-silicon.h>
> +#include <mach/omap4-fb.h>
> +
> +#include "omap4.h"
> +
> +struct omap4fb_device {
> +	struct fb_info info;
> +	struct device_d *dev;
> +
> +	struct omap4fb_display const *cur_display;
> +
> +	struct omap4fb_display const *displays;
> +	size_t num_displays;
> +
> +	struct {
> +		struct omap4_regs_dss __iomem *dss;
> +		struct omap4_regs_dispc __iomem *dispc;
> +	} regs;
please drop those non-sense regs struct
> +
> +	struct {
> +		void __iomem *addr;
> +		size_t size;
> +	} prealloc_screen;
> +
> +	struct {
> +		uint32_t dispc_control;
> +		uint32_t dispc_pol_freq;
> +	} shadow;
> +
> +	struct {
> +		unsigned int dss_clk_hz;
> +		unsigned int lckd;
> +		unsigned int pckd;
> +	} divisor;
> +
> +	void (*enable_fn)(int);
> +
> +	struct fb_videomode	video_modes[];
> +};
> +
> +static inline void fb_write(uint32_t v, void __iomem *addr)
> +{
> +	__raw_writel(v, addr);
> +}
> +
> +static inline uint32_t fb_read(void const __iomem *addr)
> +{
> +	return __raw_readl(addr);
> +}
what is the dif?
> +
> +static void omap4fb_enable(struct fb_info *info)
> +{
> +	struct omap4fb_device *fbi =
> +		container_of(info, struct omap4fb_device, info);
> +	struct omap4_regs_dispc __iomem	*dispc = fbi->regs.dispc;
> +
> +	dev_info(fbi->dev, "%s\n", __func__);
> +
> +	if (!fbi->cur_display) {
> +		dev_err(fbi->dev, "no valid mode set\n");
> +		return;
> +	}
> +
> +	if (fbi->enable_fn)
> +		fbi->enable_fn(1);
> +
> +	udelay(fbi->cur_display->power_on_delay * 1000u);
mdelay
> +
> +	fb_write(fb_read(&dispc->control2) |
> +		 DSS_DISPC_CONTROL_LCDENABLE |
> +		 1*DSS_DISPC_CONTROL_LCDENABLESIGNAL,
> +		 &dispc->control2);
> +
> +	fb_write(fb_read(&dispc->vid1.attributes) |
> +		 DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE,
> +		 &dispc->vid1.attributes);
> +
> +	fb_write(fb_read(&dispc->control2) |
> +		 DSS_DISPC_CONTROL_GOLCD,
> +		 &dispc->control2);
> +}
> +
> +static void omap4fb_disable(struct fb_info *info)
> +{
> +	struct omap4fb_device	*fbi =
> +		container_of(info, struct omap4fb_device, info);
> +	struct omap4_regs_dispc __iomem	*dispc = fbi->regs.dispc;
> +
> +	dev_info(fbi->dev, "%s\n", __func__);
> +
> +	if (!fbi->cur_display) {
> +		dev_err(fbi->dev, "no valid mode set\n");
> +		return;
> +	}
> +
> +	fb_write(fb_read(&dispc->control2) &
> +		 ~(DSS_DISPC_CONTROL_LCDENABLE |
> +		   DSS_DISPC_CONTROL_LCDENABLESIGNAL),
> +		 &dispc->control2);
> +
> +	fb_write(fb_read(&dispc->vid1.attributes) &
> +		 ~(DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE),
> +		 &dispc->vid1.attributes);
> +
> +	if (fbi->prealloc_screen.addr == NULL)
> +		/* free frame buffer; but only when screen is not
> +		 * preallocated */
> +		free(info->screen_base);
> +
> +	info->screen_base = NULL;
> +
> +	udelay(fbi->cur_display->power_off_delay * 1000u);
> +
> +	if (fbi->enable_fn)
> +		fbi->enable_fn(0);
> +}
> +
> +static void omap4fb_calc_divisor(struct omap4fb_device *fbi,
> +			struct fb_videomode const *mode)
> +{
> +	unsigned int l, k, t, b;
> +
> +	b = UINT_MAX;
> +	for (l = 1; l < 256; l++) {
> +		for (k = 1; k < 256; k++) {
> +			t = abs(mode->pixclock * 100 -
> +				(fbi->divisor.dss_clk_hz / l / k));
> +			if (t <= b) {
> +				b = t;
> +				fbi->divisor.lckd = l;
> +				fbi->divisor.pckd = k;
> +			}
> +		}
> +	}
> +}
> +
> +static unsigned int omap4fb_calc_format(struct fb_info const *info)
> +{
> +	switch (info->bits_per_pixel) {
> +	case 24: return 9;
> +	case 32: return 0x8; /* xRGB24-8888 (32-bit container) */
> +	default:
> +		printf("%s: unsupported bpp %d\n", __func__,
> +		       info->bits_per_pixel);
> +		return 0;
> +	}
> +}
> +
> +struct omap4fb_colors {
> +	struct fb_bitfield	red;
> +	struct fb_bitfield	green;
> +	struct fb_bitfield	blue;
> +	struct fb_bitfield	transp;
> +};
> +
> +static struct omap4fb_colors const omap4fb_col[] = {
> +	[0] = {
> +		.red	= { .length = 0, .offset = 0 },
> +	},
> +	[1] = {
> +		.blue	= { .length = 8, .offset = 0 },
> +		.green	= { .length = 8, .offset = 8 },
> +		.red	= { .length = 8, .offset = 16 },
> +	},
> +	[2] = {
> +		.blue	= { .length = 8, .offset = 0 },
> +		.green	= { .length = 8, .offset = 8 },
> +		.red	= { .length = 8, .offset = 16 },
> +		.transp	= { .length = 8, .offset = 24 },
> +	},
> +};
> +
> +static void omap4fb_fill_shadow(struct omap4fb_device *fbi,
> +				struct omap4fb_display const *display)
> +{
> +	fbi->shadow.dispc_control = 0;
> +	fbi->shadow.dispc_pol_freq = 0;
> +
> +	fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_STNTFT;
> +
> +	switch (display->config & OMAP_DSS_LCD_DATALINES_msk) {
> +	case OMAP_DSS_LCD_DATALINES_12:
> +		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_12;
> +		break;
> +	case OMAP_DSS_LCD_DATALINES_16:
> +		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_16;
> +		break;
> +	case OMAP_DSS_LCD_DATALINES_18:
> +		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_18;
> +		break;
> +	case OMAP_DSS_LCD_DATALINES_24:
> +		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_24;
> +		break;
> +	}
> +
> +	if (display->config & OMAP_DSS_LCD_IPC)
> +		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IPC;
> +
> +	if (display->config & OMAP_DSS_LCD_IVS)
> +		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IVS;
> +
> +	if (display->config & OMAP_DSS_LCD_IHS)
> +		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IHS;
> +
> +	if (display->config & OMAP_DSS_LCD_IEO)
> +		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IEO;
> +
> +	if (display->config & OMAP_DSS_LCD_RF)
> +		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_RF;
> +
> +	if (display->config & OMAP_DSS_LCD_ONOFF)
> +		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_ONOFF;
> +}
> +
> +static int omap4fb_activate_var(struct fb_info *info)
> +{
> +	struct omap4fb_device *fbi =
> +		container_of(info, struct omap4fb_device, info);
> +	struct omap4_regs_dispc __iomem	*dispc = fbi->regs.dispc;
> +	struct fb_videomode const *mode = info->mode;
> +	size_t size = mode->xres * mode->yres * (info->bits_per_pixel / 8);
> +	int rc;
> +	unsigned int fmt = omap4fb_calc_format(info);
> +	struct omap4fb_colors const *cols;
> +	size_t i;
> +	struct omap4fb_display const *new_display = NULL;
> +
> +	for (i = 0; i < fbi->num_displays && new_display == NULL; ++i) {
> +		if (strcmp(mode->name, fbi->displays[i].mode.name) == 0)
> +			new_display = &fbi->displays[i];
> +	}
> +
> +	if (WARN_ON(!new_display)) {
> +		dev_err(fbi->dev, "no matching display found for this mode '%s'\n",
> +			mode->name);
> +		rc = -ENXIO;
> +		goto out;
> +	}
> +
> +	if (fbi->prealloc_screen.addr == NULL) {
> +		/* case 1: no preallocated screen */
> +		free(info->screen_base);
> +		info->screen_base = memalign(0x100, size);
> +	} else if (fbi->prealloc_screen.size < size) {
> +		/* case 2: preallocated screen, but too small */
> +		dev_err(fbi->dev,
> +			"allocated framebuffer too small (%zu < %zu)\n",
> +			fbi->prealloc_screen.size, size);
> +		rc = -ENOMEM;
> +		goto out;
> +	} else {
> +		/* case 3: preallocated screen */
> +		info->screen_base = fbi->prealloc_screen.addr;
> +	}
> +
> +	omap4fb_fill_shadow(fbi, new_display);
> +
> +	omap4fb_calc_divisor(fbi, mode);
> +
> +	switch (info->bits_per_pixel) {
> +	case 24:
> +		cols = &omap4fb_col[1];
> +		break;
> +	case 32:
> +		cols = &omap4fb_col[2];
> +		break;
> +	default:
> +		cols = &omap4fb_col[0];
> +	}
> +
> +	info->red = cols->red;
> +	info->green = cols->green;
> +	info->blue = cols->blue;
> +	info->transp = cols->transp;
> +
> +	fb_write(fbi->shadow.dispc_control,
> +		 &dispc->control2);
> +
> +	fb_write(fbi->shadow.dispc_pol_freq,
> +		 &dispc->pol_freq2);
> +
> +	fb_write(DSS_DISPC_TIMING_H_HSW(mode->hsync_len - 1) |
> +		 DSS_DISPC_TIMING_H_HFP(mode->right_margin - 1) |
> +		 DSS_DISPC_TIMING_H_HBP(mode->left_margin - 1),
> +		 &dispc->timing_h2);
> +
> +	fb_write(DSS_DISPC_TIMING_V_VSW(mode->vsync_len - 1) |
> +		 DSS_DISPC_TIMING_V_VFP(mode->lower_margin) |
> +		 DSS_DISPC_TIMING_V_VBP(mode->upper_margin),
> +		 &dispc->timing_v2);
> +
> +	fb_write(DSS_DISPC_DIVISOR_ENABLE | DSS_DISPC_DIVISOR_LCD(1),
> +			&dispc->divisor);
> +
> +	fb_write(DSS_DISPC_DIVISOR2_LCD(fbi->divisor.lckd) |
> +		 DSS_DISPC_DIVISOR2_PCD(fbi->divisor.pckd),
> +		 &dispc->divisor2);
> +
> +	fb_write(DSS_DISPC_SIZE_LCD_PPL(mode->xres - 1) |
> +		 DSS_DISPC_SIZE_LCD_LPP(mode->yres - 1),
> +		 &dispc->size_lcd2);
> +
> +	fb_write(0x0000FF00, &dispc->default_color2);
> +
> +	/* we use VID1 */
> +	fb_write((uintptr_t)info->screen_base, &dispc->vid1.ba[0]);
> +	fb_write((uintptr_t)info->screen_base, &dispc->vid1.ba[1]);
> +
> +	fb_write(DSS_DISPC_VIDn_POSITION_VIDPOSX(0) |
> +		 DSS_DISPC_VIDn_POSITION_VIDPOSY(0),
> +		 &dispc->vid1.position);
> +	fb_write(DSS_DISPC_VIDn_SIZE_VIDSIZEX(mode->xres - 1) |
> +		 DSS_DISPC_VIDn_SIZE_VIDSIZEY(mode->yres - 1),
> +		 &dispc->vid1.size);
> +	fb_write(DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEX(mode->xres - 1) |
> +		 DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEY(mode->yres - 1),
> +		 &dispc->vid1.picture_size);
> +	fb_write(1, &dispc->vid1.row_inc);
> +	fb_write(1, &dispc->vid1.pixel_inc);
> +
> +	fb_write(0xfff, &dispc->vid_preload[0]);
> +
> +	fb_write(DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(fmt) |
> +			 DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 |
> +			 DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE |
> +			 DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD,
> +			 &dispc->vid1.attributes);
> +
> +	while (fb_read(&dispc->control2) & DSS_DISPC_CONTROL_GOLCD)
> +		;			/* noop */
> +
> +	fb_write(fb_read(&dispc->control2) |
> +		 DSS_DISPC_CONTROL_GOLCD,
> +		 &dispc->control2);
> +
> +	fbi->cur_display = new_display;
> +	info->xres = mode->xres;
> +	info->yres = mode->yres;
> +
> +	rc = 0;
> +
> +out:
> +	return rc;
> +}
> +
> +static void omap4fb_reset(struct omap4fb_device const *fbi)
> +{
> +	struct omap4_regs_dispc __iomem	*dispc = fbi->regs.dispc;
> +	struct omap4_regs_dss __iomem *dss = fbi->regs.dss;
> +
> +	uint32_t	v = fb_read(&dispc->control2);
> +
> +	/* step 1: stop the LCD controller */
> +	if (v & DSS_DISPC_CONTROL_LCDENABLE) {
> +		fb_write(v & ~DSS_DISPC_CONTROL_LCDENABLE,
> +			 &dispc->control2);
> +
> +		fb_write(DSS_DISPC_IRQSTATUS_FRAMEDONE2, &dispc->irqstatus);
> +
> +		while ((fb_read(&dispc->irqstatus) &
> +			DSS_DISPC_IRQSTATUS_FRAMEDONE) == 0)
> +			;		/* noop */
> +	}
> +
> +	/* step 2: wait for reset done status */
> +	while (!(fb_read(&dss->sysstatus) & DSS_DSS_SYSSTATUS_RESETDONE))
> +		;			/* noop */
> +
> +	/* DSS_CTL: set to reset value */
> +	fb_write(0, &dss->ctrl);
> +}
> +
> +static struct fb_ops omap4fb_ops = {
> +	.fb_enable		= omap4fb_enable,
> +	.fb_disable		= omap4fb_disable,
> +	.fb_activate_var	= omap4fb_activate_var,
> +};
> +
> +static int omap4fb_probe(struct device_d *dev)
> +{
> +	struct omap4fb_platform_data const *pdata = dev->platform_data;
> +	struct omap4fb_device *fbi;
> +	struct fb_info *info;
> +	struct omap4_regs_dispc __iomem	*dispc;
> +	struct omap4_regs_dss __iomem *dss;
> +	int rc;
> +	size_t i;
> +
> +	if (!pdata)
> +		return -ENODEV;
> +
> +	fbi = xzalloc(sizeof *fbi +
> +		      pdata->num_displays * sizeof fbi->video_modes[0]);
> +	info = &fbi->info;
> +
> +	fbi->dev = dev;
> +
> +	/* CM_DSS_CLKSTCTRL (TRM: 935) trigger SW_WKUP */
> +	__raw_writel(0x2, 0x4a009100); /* TODO: move this to clockmanagement */
> +
> +	fbi->regs.dss   = dev_request_mem_region(dev, OMAP4_FB_RESOURCE_DSS);
> +	fbi->regs.dispc = dev_request_mem_region(dev, OMAP4_FB_RESOURCE_DISPC);
use named dev_request
> +
> +	if (!fbi->regs.dss || !fbi->regs.dispc) {
> +		dev_err(dev, "Insufficient register description\n");
> +		rc = -EINVAL;
> +		goto out;
> +	}
> +
> +	dispc = fbi->regs.dispc;
> +	dss = fbi->regs.dss;
> +	dev_info(dev, "HW-Revision 0x%04x 0x%04x\n",
> +		fb_read(&dispc->revision),
> +		fb_read(&dss->revision));
> +
> +
> +	if (!pdata->dss_clk_hz | !pdata->displays | !pdata->num_displays |
> +		!pdata->bpp) {
> +		dev_err(dev, "Insufficient omap4fb_platform_data\n");
> +		rc = -EINVAL;
> +		goto out;
> +	}
> +
> +	fbi->enable_fn    = pdata->enable;
> +	fbi->displays     = pdata->displays;
> +	fbi->num_displays = pdata->num_displays;
> +	fbi->divisor.dss_clk_hz = pdata->dss_clk_hz;
why via pdata?
> +
> +	for (i = 0; i < pdata->num_displays; ++i)
> +		fbi->video_modes[i] = pdata->displays[i].mode;
> +
> +	info->mode_list = fbi->video_modes;
> +	info->num_modes = pdata->num_displays;
> +
> +	info->priv = fbi;
> +	info->fbops = &omap4fb_ops;
> +	info->bits_per_pixel = pdata->bpp;
> +
> +	if (pdata->screen) {
> +		fbi->prealloc_screen.addr =
> +				(void __iomem *)pdata->screen->start;
> +		fbi->prealloc_screen.size = resource_size(pdata->screen);
> +	}
> +
> +	omap4fb_reset(fbi);
> +
> +	dev_add_param(fbi->dev, "bootargs", NULL, NULL, 0);
??
> +
> +	rc = register_framebuffer(info);
> +	if (rc < 0) {
> +		dev_err(dev, "failed to register framebuffer: %d\n", rc);
> +		goto out;
> +	}
> +
> +	rc = 0;
> +	dev_info(dev, "registered\n");
> +
> +out:
> +	if (rc < 0)
> +		free(fbi);
> +
> +	return rc;
> +}
> +
> +static struct driver_d omap4fb_driver = {
> +	.name	= "omap4_fb",
> +	.probe	= omap4fb_probe,
> +};
> +
> +static int omap4fb_init(void)
> +{
> +	return platform_driver_register(&omap4fb_driver);
> +}
> +
> +device_initcall(omap4fb_init);
> diff --git a/drivers/video/omap4.h b/drivers/video/omap4.h
> new file mode 100644
> index 0000000..b3364a5
> --- /dev/null
> +++ b/drivers/video/omap4.h
> @@ -0,0 +1,408 @@
> +/*
> + * TI Omap4 Frame Buffer device driver
> + *
> + * Copyright (C) 2013 Christoph Fritz <chf.fritz@googlemail.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H
> +#define H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H
> +
> +#include <types.h>
> +#include <common.h>
> +
> +#define OMAP4_RESERVED(_f, _t) \
> +	uint32_t const reserved_ ## _f ## _ ## _t[((_t) - (_f)) / 4]
> +
> +
> +/* TRM: 10.1.3.2 DSS Registers */
> +struct omap4_regs_dss {
> +	uint32_t revision;
> +	OMAP4_RESERVED(0x4, 0x14);
> +	uint32_t const sysstatus;
> +	OMAP4_RESERVED(0x18, 0x40);
> +	uint32_t ctrl;
> +	OMAP4_RESERVED(0x44, 0x5C);
> +	uint32_t const status;
> +};
> +
> +
> +struct omap4_regs_dispc_vid {
> +	uint32_t ba[2];
> +	uint32_t position;
> +	uint32_t size;
> +	uint32_t attributes;
> +	uint32_t buf_threshold;
> +	uint32_t const buf_size_status;
> +	uint32_t row_inc;
> +	uint32_t pixel_inc;
> +	uint32_t fir;
> +	uint32_t picture_size;
> +	uint32_t accu[2];
> +	struct {
> +		uint32_t h;
> +		uint32_t hv;
> +	} fir_coef[8];
> +	uint32_t conv_coef0;
> +	uint32_t conv_coef1;
> +	uint32_t conv_coef2;
> +	uint32_t conv_coef3;
> +	uint32_t conv_coef4;
> +};
> +
> +/* TRM: 10.2.7.3 Display Controller Registers */
> +struct omap4_regs_dispc {
> +	uint32_t const revision;
> +	OMAP4_RESERVED(0x04, 0x10);
> +	uint32_t sysconfig;
> +	uint32_t const sysstatus;
> +	uint32_t irqstatus;
> +	uint32_t irqenable;
> +	OMAP4_RESERVED(0x20, 0x40);
> +	uint32_t control1;
> +	uint32_t config1;
> +	OMAP4_RESERVED(0x48, 0x4C);
> +
> +	uint32_t default_color[2];
> +	uint32_t trans_color[2];
> +
> +	uint32_t const line_status;
> +	uint32_t line_number;
> +	uint32_t timing_h1;
> +	uint32_t timing_v1;
> +	uint32_t pol_freq1;
> +	uint32_t divisor1;
> +	uint32_t global_alpha;
> +	uint32_t size_tv;
> +	uint32_t size_lcd1;
> +
> +	struct {
> +		uint32_t ba[2];
> +		uint32_t position;
> +		uint32_t size;
> +		OMAP4_RESERVED(0x90, 0xA0);
> +		uint32_t attributes;
> +		uint32_t buf_threshold;
> +		uint32_t const buf_size_status;
> +		uint32_t row_inc;
> +		uint32_t pixel_inc;
> +		OMAP4_RESERVED(0xB4, 0xB8);
> +		uint32_t table_ba;
> +	} gfx;
> +
> +	struct omap4_regs_dispc_vid vid1;
> +	OMAP4_RESERVED(0x144, 0x14C);
> +	struct omap4_regs_dispc_vid vid2;
> +
> +	uint32_t data1_cycle[3];
> +
> +	uint32_t vid1_fir_coef_v[8];
> +	uint32_t vid2_fir_coef_v[8];
> +	uint32_t cpr1_coef_r;
> +	uint32_t cpr1_coef_g;
> +	uint32_t cpr1_coef_b;
> +	uint32_t gfx_preload;
> +	uint32_t vid_preload[2];
> +	uint32_t control2;
> +	OMAP4_RESERVED(0x23C, 0x300);
> +
> +	struct {
> +		uint32_t accu[2];
> +		uint32_t ba[2];
> +		struct {
> +			uint32_t h;
> +			uint32_t hv;
> +		} fir_coef[8];
> +		uint32_t fir_coef_v[8];
> +		uint32_t attributes;
> +		uint32_t conv_coef0;
> +		uint32_t conv_coef1;
> +		uint32_t conv_coef2;
> +		uint32_t conv_coef3;
> +		uint32_t conv_coef4;
> +		uint32_t const buf_size_status;
> +		uint32_t buf_threshold;
> +		uint32_t fir;
> +		uint32_t picture_size;
> +		uint32_t pixel_inc;
> +		uint32_t position;
> +		uint32_t preload;
> +		uint32_t row_inc;
> +		uint32_t size;
> +	} vid3;
> +
> +	uint32_t default_color2;
> +	uint32_t trans_color2;
> +	uint32_t cpr2_coef_b;
> +	uint32_t cpr2_coef_g;
> +	uint32_t cpr2_coef_r;
> +	uint32_t data2_cycle[3];
> +	uint32_t size_lcd2;
> +	OMAP4_RESERVED(0x3D0, 0x400);
> +	uint32_t timing_h2;
> +	uint32_t timing_v2;
> +	uint32_t pol_freq2;
> +	uint32_t divisor2;
> +	OMAP4_RESERVED(0x410, 0x500);
> +
> +	struct {
> +		uint32_t accu[2];
> +		uint32_t ba[2];
> +		struct {
> +			uint32_t h;
> +			uint32_t hv;
> +		} fir_coef[8];
> +		uint32_t fir_coef_v[8];
> +		uint32_t attributes;
> +		uint32_t conv_coef0;
> +		uint32_t conv_coef1;
> +		uint32_t conv_coef2;
> +		uint32_t conv_coef3;
> +		uint32_t conv_coef4;
> +		uint32_t const buf_size_status;
> +		uint32_t buf_threshold;
> +		uint32_t fir;
> +		uint32_t picture_size;
> +		uint32_t pixel_inc;
> +		OMAP4_RESERVED(0x59C, 0x5A4);
> +		uint32_t row_inc;
> +		uint32_t size;
> +	} wb;
> +
> +	OMAP4_RESERVED(0x5AC, 0x600);
> +	uint32_t vid1_ba_uv[2];
> +	uint32_t vid2_ba_uv[2];
> +	uint32_t vid3_ba_uv[2];
> +	uint32_t wb_ba_uv[2];
> +	uint32_t config2;
> +	uint32_t vid1_attributes2;
> +	uint32_t vid2_attributes2;
> +	uint32_t vid3_attributes2;
> +	uint32_t gamma_table0;
> +	uint32_t gamma_table1;
> +	uint32_t gamma_table2;
> +	uint32_t vid1_fir2;
> +	uint32_t vid1_accu2[2];
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} vid1_fir_coef[8];
> +	uint32_t vid1_fir_coef_v2[8];
> +	uint32_t vid2_fir2;
> +	uint32_t vid2_accu2[2];
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} vid2_fir_coef[8];
> +	uint32_t vid2_fir_coef_v2[8];
> +	OMAP4_RESERVED(0x714, 0x724);
> +	uint32_t vid3_fir2;
> +	uint32_t vid3_accu2[2];
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} vid3_fir_coef[8];
> +	uint32_t vid3_fir_coef_v2[8];
> +	uint32_t wb_fir2;
> +	uint32_t wb_accu2[2];
> +	OMAP4_RESERVED(0x79C, 0x7A0);
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} wb_fir_coef[8];
> +	uint32_t wb_fir_coef_v2[8];
> +	uint32_t global_buffer;
> +	uint32_t divisor;
> +	OMAP4_RESERVED(0x808, 0x810);
> +	uint32_t wb_attributes2;
> +};
> +
> +#define DSS_DISPC_VIDn_POSITION_VIDPOSX(_x)		((_x) << 0)
> +#define DSS_DISPC_VIDn_POSITION_VIDPOSY(_y)		((_y) << 16)
> +
> +#define DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEX(_x)	((_x) << 0)
> +#define DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEY(_y)	((_y) << 16)
> +
> +#define DSS_DISPC_VIDn_SIZE_VIDSIZEX(_x)		((_x) << 0)
> +#define DSS_DISPC_VIDn_SIZE_VIDSIZEY(_y)		((_y) << 16)
> +
> +#define DSS_DISPC_SIZE_LCD_PPL(_x)			((_x) << 0)
> +#define DSS_DISPC_SIZE_LCD_LPP(_y)			((_y) << 16)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE		(1u << 0)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(_fmt)	((_fmt) << 1)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB12	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(4u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB16	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(5u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB16	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(6u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB16o	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(7u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_xRGB24u	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(8u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB24p	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(9u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_YUV2	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(10u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_UYVY	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(11u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB32	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(12u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGBA32	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(13u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_xRGB32	\
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(14u)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE(_f)	((_f) << 5)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE_NONE \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE(0u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE_H \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE(1u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE_V \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE(2u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE_HV \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDRESIZEENABLE(3u)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDCOLORCONVENABLE	(1u << 9)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDREPLICATIONENABLE	(1u << 10)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFULLRANGE		(1u << 11)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION(_r)	((_r) << 12)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION_0 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION(0u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION_90 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION(1u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION_180 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION(2u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION_270 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDROTATION(3u)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(_b)	((_b) << 14)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_2x128 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(0u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_4x128 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(1u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 \
> +	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(2u)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDCHANNELOUT	(1u << 16)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_SELFREFRESHAUTO	(1u << 17)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFIFOPRELOAD	(1u << 19)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDVERTICALTAPS	(1u << 21)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_DOUBLESTRIDE		(1u << 22)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDARBITRATION	(1u << 23)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_VIDSELFREFRESH	(1u << 24)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE		(1u << 25)
> +
> +#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(_b)  ((_b) << 30)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_PRIMARY_LCD \
> +	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(0u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD \
> +	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(1u)
> +#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_WRITEBACK_MEM \
> +	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(3u)
> +
> +#define DSS_DISPC_CONFIG_PIXELGATED			(1u << 0)
> +#define DSS_DISPC_CONFIG_PIXELDATAGATED		(1u << 4)
> +#define DSS_DISPC_CONFIG_PIXELCLOCKGATED		(1u << 5)
> +#define DSS_DISPC_CONFIG_HSYNCGATED			(1u << 6)
> +#define DSS_DISPC_CONFIG_VSYNCGATED			(1u << 7)
> +#define DSS_DISPC_CONFIG_ACBIASGATED			(1u << 8)
> +#define DSS_DISPC_CONFIG_FUNCGATED			(1u << 9)
> +#define DSS_DISPC_CONFIG_TCKLCDENABLE			(1u << 10)
> +#define DSS_DISPC_CONFIG_TCKLCDSELECTION		(1u << 11)
> +#define DSS_DISPC_CONFIG_CPR				(1u << 15)
> +#define DSS_DISPC_CONFIG_FIFOHANDCHECK			(1u << 16)
> +#define DSS_DISPC_CONFIG_OUTPUTMODE			(1u << 22)
> +#define DSS_DISPC_CONFIG_FIDFIRST			(1u << 23)
> +#define DSS_DISPC_CONFIG_COLORCONV			(1u << 24)
> +#define DSS_DISPC_CONFIG_FULLRANGE			(1u << 25)
> +
> +#define DSS_DISPC_CONTROL_LCDENABLE			(1u << 0)
> +#define DSS_DISPC_CONTROL_TVENABLE			(1u << 1)
> +#define DSS_DISPC_CONTROL_MONOCOLOR			(1u << 2)
> +#define DSS_DISPC_CONTROL_STNTFT			(1u << 3)
> +#define DSS_DISPC_CONTROL_M8B				(1u << 4)
> +#define DSS_DISPC_CONTROL_GOLCD			(1u << 5)
> +#define DSS_DISPC_CONTROL_GOTV				(1u << 6)
> +#define DSS_DISPC_CONTROL_STDITHERENABLE		(1u << 7)
> +
> +#define DSS_DISPC_CONTROL_TFTDATALINES(_l)		((_l) << 8)
> +#define DSS_DISPC_CONTROL_TFTDATALINES_12 \
> +	DSS_DISPC_CONTROL_TFTDATALINES(0u)
> +#define DSS_DISPC_CONTROL_TFTDATALINES_16 \
> +	DSS_DISPC_CONTROL_TFTDATALINES(1u)
> +#define DSS_DISPC_CONTROL_TFTDATALINES_18 \
> +	DSS_DISPC_CONTROL_TFTDATALINES(2u)
> +#define DSS_DISPC_CONTROL_TFTDATALINES_24 \
> +	DSS_DISPC_CONTROL_TFTDATALINES(3u)
> +
> +#define DSS_DISPC_CONTROL_STALLMODE			(1u << 11)
> +#define DSS_DISPC_CONTROL_OVERLAYOPTIMIZATION		(1u << 12)
> +#define DSS_DISPC_CONTROL_GPIN0			(1u << 13) /* ro */
> +#define DSS_DISPC_CONTROL_GPIN1			(1u << 14) /* ro */
> +#define DSS_DISPC_CONTROL_GPOUT0			(1u << 15)
> +#define DSS_DISPC_CONTROL_GPOUT1			(1u << 16)
> +#define DSS_DISPC_CONTROL_HT(_ht)			((_ht) << 17)
> +#define DSS_DISPC_CONTROL_TDMENABLE			(1u << 20)
> +#define DSS_DISPC_CONTROL_TDMPARALLELMODE(_pm)		((_pm) << 21)
> +#define DSS_DISPC_CONTROL_TDMCYCLEFORMAT(_cf)		((_cf) << 23)
> +#define DSS_DISPC_CONTROL_TDMUNUSEDBITS(_ub)		((_ub) << 25)
> +#define DSS_DISPC_CONTROL_PCKFREEENABLE		(1u << 27)
> +#define DSS_DISPC_CONTROL_LCDENABLESIGNAL		(1u << 28)
> +#define DSS_DISPC_CONTROL_LCDENABLEPOL			(1u << 29)
> +#define DSS_DISPC_CONTROL_SPATIALTEMPD(_df)		((_df) << 30)
> +
> +#define DSS_DISPC_POL_FREQ_IVS				(1u << 12)
> +#define DSS_DISPC_POL_FREQ_IHS				(1u << 13)
> +#define DSS_DISPC_POL_FREQ_IPC				(1u << 14)
> +#define DSS_DISPC_POL_FREQ_IEO				(1u << 15)
> +#define DSS_DISPC_POL_FREQ_RF				(1u << 16)
> +#define DSS_DISPC_POL_FREQ_ONOFF			(1u << 17)
> +
> +#define DSS_DISPC_TIMING_H_HSW(_hsw)			((_hsw) << 0)
> +#define DSS_DISPC_TIMING_H_HFP(_hfp)			((_hfp) << 8)
> +#define DSS_DISPC_TIMING_H_HBP(_hbp)			((_hbp) << 20)
> +
> +#define DSS_DISPC_TIMING_V_VSW(_vsw)			((_vsw) << 0)
> +#define DSS_DISPC_TIMING_V_VFP(_vfp)			((_vfp) << 8)
> +#define DSS_DISPC_TIMING_V_VBP(_vbp)			((_vbp) << 20)
> +
> +#define DSS_DISPC_DIVISOR_ENABLE			(1u << 0)
> +#define DSS_DISPC_DIVISOR_LCD(_lcd)			((_lcd) << 16)
> +
> +#define DSS_DISPC_DIVISOR2_PCD(_pcd)			((_pcd) << 0)
> +#define DSS_DISPC_DIVISOR2_LCD(_lcd)			((_lcd) << 16)
> +
> +#define DSS_DISPC_IRQSTATUS_FRAMEDONE			(1u << 0)
> +#define DSS_DISPC_IRQSTATUS_FRAMEDONE2			(1u << 22)
> +
> +#define DSS_DSS_SYSCONFIG_SOFTRESET			(1u << 1)
> +#define DSS_DSS_SYSSTATUS_RESETDONE			(1u << 0)
> +
> +#define DSS_DSS_CONTROL_DISPC_CLK_SWITCH		(1u << 0)
> +#define DSS_DSS_CONTROL_DSI_CLK_SWITCH			(1u << 1)
> +
> +#define CM_FCLKEN_DSS_EN_DSS1	(1u << 0)
> +#define CM_FCLKEN_DSS_EN_DSS2	(1u << 1)
> +#define CM_FCLKEN_DSS_EN_TV	(1u << 2)
> +
> +#define CM_ICLKEN_DSS_EN_DSS	(1u << 0)
> +
> +
> +#undef OMAP4_RESERVED
> +
> +#endif	/* H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H */
> -- 
> 1.7.10.4
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
