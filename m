Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PXxQr-0006X5-Lj
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 14:55:20 +0000
Received: by qyk27 with SMTP id 27so11950196qyk.15
	for <barebox@lists.infradead.org>; Wed, 29 Dec 2010 06:55:15 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1292857509-13881-9-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
	<1292857509-13881-9-git-send-email-jbe@pengutronix.de>
Date: Wed, 29 Dec 2010 15:55:15 +0100
Message-ID: <AANLkTinXmZiA1pVk43fMu1w1mXDBHHpUj-LxJ_YJkn6L@mail.gmail.com>
From: Gregory CLEMENT <gclement00@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/10] ARM STM/i.MX: Add video driver for i.MX23/i.MX28
To: Juergen Beisert <jbe@pengutronix.de>, "gregory.clement" <gregory.clement@free-electrons.com>
Cc: barebox <barebox@lists.infradead.org>

Hi,
I apply this patch for my project and use it with an imx23 base board.
I have a few comments and I think that I found a bug.
I you are interested I can send you patches related to my comments.

2010/12/20 Juergen Beisert <jbe@pengutronix.de>:
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
> =A0arch/arm/mach-stm/include/mach/fb.h =A0 =A0 =A0 =A0 | =A0 43 +++
> =A0arch/arm/mach-stm/include/mach/imx23-regs.h | =A0 =A01 +
> =A0drivers/video/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A07 +
> =A0drivers/video/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 =A01 +
> =A0drivers/video/stm.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0540 +++++++++++++++++++++++++++
> =A05 files changed, 592 insertions(+), 0 deletions(-)
> =A0create mode 100644 arch/arm/mach-stm/include/mach/fb.h
> =A0create mode 100644 drivers/video/stm.c
>
> diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/incl=
ude/mach/fb.h
> new file mode 100644
> index 0000000..65e3be2
> --- /dev/null
> +++ b/arch/arm/mach-stm/include/mach/fb.h
> @@ -0,0 +1,43 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __MACH_FB_H
> +# define __MACH_FB_H
> +
> +#include <fb.h>
> +
> +#define STMLCDIF_8BIT 1 =A0 =A0 =A0 =A0/** pixel data bus to the display=
 is of 8 bit width */
> +#define STMLCDIF_16BIT 0 /** pixel data bus to the display is of 16 bit =
width */
> +#define STMLCDIF_18BIT 2 /** pixel data bus to the display is of 18 bit =
width */
> +#define STMLCDIF_24BIT 3 /** pixel data bus to the display is of 24 bit =
width */
> +
> +/** LC display uses active high data enable signal */
> +#define FB_SYNC_DE_HIGH_ACT =A0 =A0(1 << 27)
> +/** LC display will latch its data at clock's rising edge */
> +#define FB_SYNC_CLK_INVERT =A0 =A0 (1 << 28)
> +/** output RGB digital data inverted */
> +#define FB_SYNC_DATA_INVERT =A0 =A0(1 << 29)
> +/** Stop clock if no data is sent (required for passive displays) */
> +#define FB_SYNC_CLK_IDLE_DIS =A0 (1 << 30)
> +/** swap RGB to BGR */
> +#define FB_SYNC_SWAP_RGB =A0 =A0 =A0 (1 << 31)
> +
> +struct imx_fb_videomode {
> + =A0 =A0 =A0 struct fb_videomode *mode_list;
> + =A0 =A0 =A0 unsigned mode_cnt;
> +
> + =A0 =A0 =A0 unsigned dotclk_delay; =A0/**< refer manual HW_LCDIF_VDCTRL=
4 register */
> + =A0 =A0 =A0 unsigned ld_intf_width; /**< refer STMLCDIF_* macros */
> +};

Should it be acceptable to add new field in this structure ?
For example for my need I added a data_mode flag which is used to configure
command mode polarity (bit 16 in HW_LCDIF_CTRL register)

> +
> +#endif /* __MACH_FB_H */
> +
> diff --git a/arch/arm/mach-stm/include/mach/imx23-regs.h b/arch/arm/mach-=
stm/include/mach/imx23-regs.h
> index 89ca453..caac19b 100644
> --- a/arch/arm/mach-stm/include/mach/imx23-regs.h
> +++ b/arch/arm/mach-stm/include/mach/imx23-regs.h
> @@ -36,6 +36,7 @@
> =A0#define IMX_CCM_BASE =A0 =A0 =A0 =A0 =A0 0x80040000
> =A0#define IMX_I2C1_BASE =A0 =A0 =A0 =A0 =A00x80058000
> =A0#define IMX_SSP1_BASE =A0 =A0 =A0 =A0 =A00x80010000
> +#define IMX_FB_BASE =A0 =A0 =A0 =A0 =A0 =A00x80030000
> =A0#define IMX_SSP2_BASE =A0 =A0 =A0 =A0 =A00x80034000
>
> =A0#endif /* __ASM_ARCH_MX23_REGS_H */
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 7a89a3f..c69308e 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -20,4 +20,11 @@ config DRIVER_VIDEO_IMX_IPU
> =A0 =A0 =A0 =A0 =A0Add support for the IPU framebuffer device found on
> =A0 =A0 =A0 =A0 =A0i.MX31 and i.MX35 CPUs.
>
> +config DRIVER_VIDEO_STM
> + =A0 =A0 =A0 bool "i.MX23/28 framebuffer driver"
> + =A0 =A0 =A0 depends on ARCH_STM
> + =A0 =A0 =A0 help
> + =A0 =A0 =A0 =A0 Say 'Y' here to enable framebuffer and splash screen su=
pport for
> + =A0 =A0 =A0 =A0 i.MX23 and i.MX28 based systems.
> +
> =A0endif
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 179f0c4..a217a0b 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -1,4 +1,5 @@
> =A0obj-$(CONFIG_VIDEO) +=3D fb.o
>
> +obj-$(CONFIG_DRIVER_VIDEO_STM) +=3D stm.o
> =A0obj-$(CONFIG_DRIVER_VIDEO_IMX) +=3D imx.o
> =A0obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) +=3D imx-ipu-fb.o
> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
> new file mode 100644
> index 0000000..f0abe4c
> --- /dev/null
> +++ b/drivers/video/stm.c
> @@ -0,0 +1,540 @@
> +/*
> + * Copyright (C) 2010 Juergen Beisert, Pengutronix <jbe@pengutronix.de>
> + *
> + * This is based on code from:
> + * Author: Vitaly Wool <vital@embeddedalley.com>
> + *
> + * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
> + * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * as published by the Free Software Foundation; either version 2
> + * of the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the
> + * GNU General Public License for more details.
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <xfuncs.h>
> +#include <asm/io.h>
> +#include <mach/imx-regs.h>
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
> +# define CTRL1_FIFO_CLEAR (1 << 21)
> +# define SET_BYTE_PACKAGING(x) (((x) & 0xf) << 16)
> +# define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
> +
> +#ifdef CONFIG_ARCH_IMX28
> +# define HW_LCDIF_CTRL2 0x20
> +# define HW_LCDIF_TRANSFER_COUNT 0x30
> +#endif
> +#ifdef CONFIG_ARCH_IMX23
> +# define HW_LCDIF_TRANSFER_COUNT 0x20
> +#endif
> +# define SET_VCOUNT(x) (((x) & 0xffff) << 16)
> +# define SET_HCOUNT(x) ((x) & 0xffff)
> +
> +#ifdef CONFIG_ARCH_IMX28
> +# define HW_LCDIF_CUR_BUF 0x40
> +# define HW_LCDIF_NEXT_BUF 0x50
> +#endif
> +#ifdef CONFIG_ARCH_IMX23
> +# define HW_LCDIF_CUR_BUF 0x30
> +# define HW_LCDIF_NEXT_BUF 0x40
> +#endif
> +
> +#define HW_LCDIF_TIMING 0x60
> +# define SET_CMD_HOLD(x) (((x) & 0xff) << 24)
> +# define SET_CMD_SETUP(x) (((x) & 0xff) << 16)
> +# define SET_DATA_HOLD(x) (((x) & 0xff) << 8)
> +# define SET_DATA_SETUP(x) ((x) & 0xff)
> +
> +#define HW_LCDIF_VDCTRL0 0x70
> +# define VDCTRL0_ENABLE_PRESENT (1 << 28)
> +# define VDCTRL0_VSYNC_POL (1 << 27) /* 0 =3D low active, 1 =3D high act=
ive */
> +# define VDCTRL0_HSYNC_POL (1 << 26) /* 0 =3D low active, 1 =3D high act=
ive */
> +# define VDCTRL0_DOTCLK_POL (1 << 25) /* 0 =3D output@falling, capturing=
@rising edge */
> +# define VDCTRL0_ENABLE_POL (1 << 24) /* 0 =3D low active, 1 =3D high ac=
tive */
> +# define VDCTRL0_VSYNC_PERIOD_UNIT (1 << 21)
> +# define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT (1 << 20)
> +# define VDCTRL0_HALF_LINE (1 << 19)
> +# define VDCTRL0_HALF_LINE_MODE (1 << 18)
> +# define SET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
> +
> +#define HW_LCDIF_VDCTRL1 0x80
> +
> +#define HW_LCDIF_VDCTRL2 0x90
> +#ifdef CONFIG_ARCH_IMX28
> +# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0x3fff) << 18)
> +#endif
> +#ifdef CONFIG_ARCH_IMX23
> +# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0xff) << 24)
> +#endif
> +# define SET_HSYNC_PERIOD(x) ((x) & 0x3ffff)
> +
> +#define HW_LCDIF_VDCTRL3 0xa0
> +# define VDCTRL3_MUX_SYNC_SIGNALS (1 << 29)
> +# define VDCTRL3_VSYNC_ONLY (1 << 28)
> +# define SET_HOR_WAIT_CNT(x) (((x) & 0xfff) << 16)
> +# define SET_VERT_WAIT_CNT(x) ((x) & 0xffff)
> +
> +#define HW_LCDIF_VDCTRL4 0xb0
> +#ifdef CONFIG_ARCH_IMX28
> +# define SET_DOTCLK_DLY(x) (((x) & 0x7) << 29)
> +#endif
> +# define VDCTRL4_SYNC_SIGNALS_ON (1 << 18)
> +# define SET_DOTCLK_H_VALID_DATA_CNT(x) ((x) & 0x3ffff)
> +
> +#define HW_LCDIF_DVICTRL0 0xc0
> +#define HW_LCDIF_DVICTRL1 0xd0
> +#define HW_LCDIF_DVICTRL2 0xe0
> +#define HW_LCDIF_DVICTRL3 0xf0
> +#define HW_LCDIF_DVICTRL4 0x100
> +
> +#ifdef CONFIG_ARCH_IMX28
> +# define HW_LCDIF_DATA 0x180
> +#endif
> +#ifdef CONFIG_ARCH_IMX23
> +# define HW_LCDIF_DATA 0x1b0
> +#endif
> +
> +#ifdef CONFIG_ARCH_IMX28
> +# define HW_LCDIF_DEBUG0 0x1d0
> +#endif
> +#ifdef CONFIG_ARCH_IMX23
> +# define HW_LCDIF_DEBUG0 0x1f0
> +#endif
> +# define DEBUG_HSYNC (1 < 26)
> +# define DEBUG_VSYNC (1 < 25)
> +
> +#define RED 0
> +#define GREEN 1
> +#define BLUE 2
> +#define TRANSP 3
> +
> +struct imxfb_info {
> + =A0 =A0 =A0 void __iomem *base;
> + =A0 =A0 =A0 unsigned memory_size;
> + =A0 =A0 =A0 struct fb_info info;
> + =A0 =A0 =A0 struct device_d *hw_dev;
> + =A0 =A0 =A0 struct imx_fb_videomode *pdata;
> +};
> +
> +/* the RGB565 true colour mode */
> +static const struct fb_bitfield def_rgb565[] =3D {
> + =A0 =A0 =A0 [RED] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 11,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 5,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [GREEN] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 5,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 6,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [BLUE] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 0,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 5,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [TRANSP] =3D { =A0 =A0/* no support for transparency */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 0,
> + =A0 =A0 =A0 }
> +};
> +
> +/* the RGB666 true colour mode */
> +static const struct fb_bitfield def_rgb666[] =3D {
> + =A0 =A0 =A0 [RED] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 16,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 6,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [GREEN] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 8,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 6,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [BLUE] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 0,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 6,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [TRANSP] =3D { =A0 =A0/* no support for transparency */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 0,
> + =A0 =A0 =A0 }
> +};
> +
> +/* the RGB888 true colour mode */
> +static const struct fb_bitfield def_rgb888[] =3D {
> + =A0 =A0 =A0 [RED] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 16,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 8,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [GREEN] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 8,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 8,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [BLUE] =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .offset =3D 0,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 8,
> + =A0 =A0 =A0 },
> + =A0 =A0 =A0 [TRANSP] =3D { =A0 =A0/* no support for transparency */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .length =3D 0,
> + =A0 =A0 =A0 }
> +};
> +
> +static inline unsigned calc_line_length(unsigned ppl, unsigned bpp)
> +{
> + =A0 =A0 =A0 if (bpp =3D=3D 24)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 bpp =3D 32;
> + =A0 =A0 =A0 return (ppl * bpp) >> 3;
> +}
> +
> +static int stmfb_memory_mmgt(struct fb_info *fb_info, unsigned size)
> +{
> + =A0 =A0 =A0 struct imxfb_info *fbi =3D fb_info->priv;
> +
> + =A0 =A0 =A0 if (fbi->memory_size !=3D 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 free(fb_info->screen_base);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->screen_base =3D NULL;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fbi->memory_size =3D 0;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 if (fbi->memory_size =3D=3D 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->screen_base =3D xzalloc(size);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fbi->memory_size =3D size;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static void stmfb_enable_controller(struct fb_info *fb_info)
> +{
> + =A0 =A0 =A0 struct imxfb_info *fbi =3D fb_info->priv;
> + =A0 =A0 =A0 uint32_t reg, last_reg;
> + =A0 =A0 =A0 unsigned loop, edges;
> +
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* Sometimes some data is still present in the FIFO. This=
 leads into
> + =A0 =A0 =A0 =A0* a correct but shifted picture. Clearing the FIFO helps
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_S=
ET);
> +
> + =A0 =A0 =A0 /* if it was disabled, re-enable the mode again */
> + =A0 =A0 =A0 reg =3D readl(fbi->base + HW_LCDIF_CTRL);
> + =A0 =A0 =A0 reg |=3D CTRL_DOTCLK_MODE;
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_CTRL);
> +
> + =A0 =A0 =A0 /* enable the SYNC signals first, then the DMA engine */
> + =A0 =A0 =A0 reg =3D readl(fbi->base + HW_LCDIF_VDCTRL4);
> + =A0 =A0 =A0 reg |=3D VDCTRL4_SYNC_SIGNALS_ON;
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_VDCTRL4);
> +
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* Give the attached LC display or monitor a chance to sy=
nc into
> + =A0 =A0 =A0 =A0* our signals.
> + =A0 =A0 =A0 =A0* Wait for at least 2 VSYNCs =3D four VSYNC edges
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 edges =3D 4;
> +
> + =A0 =A0 =A0 while (edges !=3D 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 loop =3D 800;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 last_reg =3D readl(fbi->base + HW_LCDIF_DEB=
UG0) & DEBUG_VSYNC;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 do {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg =3D readl(fbi->base + H=
W_LCDIF_DEBUG0) & DEBUG_VSYNC;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (reg !=3D last_reg)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 last_reg =3D reg;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 loop--;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 } while (loop !=3D 0);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 edges--;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 /* stop FIFO reset */
> + =A0 =A0 =A0 writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_C=
LR);
> + =A0 =A0 =A0 /* start the engine right now */
> + =A0 =A0 =A0 writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + BIT_SET);
> +}
> +
> +static void stmfb_disable_controller(struct fb_info *fb_info)
> +{
> + =A0 =A0 =A0 struct imxfb_info *fbi =3D fb_info->priv;
> + =A0 =A0 =A0 unsigned loop;
> + =A0 =A0 =A0 uint32_t reg;
> +
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* Even if we disable the controller here, it will still =
continue
> + =A0 =A0 =A0 =A0* until its FIFOs are running out of data
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 reg =3D readl(fbi->base + HW_LCDIF_CTRL);
> + =A0 =A0 =A0 reg &=3D ~CTRL_DOTCLK_MODE;
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_CTRL);
> +
> + =A0 =A0 =A0 loop =3D 1000;
> + =A0 =A0 =A0 while (loop) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg =3D readl(fbi->base + HW_LCDIF_CTRL);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!(reg & CTRL_RUN))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 loop--;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 reg =3D readl(fbi->base + HW_LCDIF_VDCTRL4);
> + =A0 =A0 =A0 reg &=3D ~VDCTRL4_SYNC_SIGNALS_ON;
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_VDCTRL4);
> +}
> +
> +static int stmfb_activate_var(struct fb_info *fb_info)
> +{
> + =A0 =A0 =A0 struct imxfb_info *fbi =3D fb_info->priv;
> + =A0 =A0 =A0 struct imx_fb_videomode *pdata =3D fbi->pdata;
> + =A0 =A0 =A0 struct fb_videomode *mode =3D fb_info->mode;
> + =A0 =A0 =A0 uint32_t reg;
> + =A0 =A0 =A0 int ret;
> + =A0 =A0 =A0 unsigned size;
> +
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* we need at least this amount of memory for the framebu=
ffer
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 size =3D calc_line_length(mode->xres, fb_info->bits_per_pix=
el) *
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 mode->yres;
> +
> + =A0 =A0 =A0 ret =3D stmfb_memory_mmgt(fb_info, size);
> + =A0 =A0 =A0 if (ret !=3D 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_err(fbi->hw_dev, "Cannot allocate frame=
buffer memory\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return ret;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 /** @todo ensure HCLK is active at this point of time! */
> +
> + =A0 =A0 =A0 size =3D imx_set_lcdifclk(PICOS2KHZ(mode->pixclock) * 1000);
> + =A0 =A0 =A0 if (size =3D=3D 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_dbg(fbi->hw_dev, "Unable to set a valid=
 pixel clock\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* bring the controller out of reset and
> + =A0 =A0 =A0 =A0* configure it into DOTCLOCK mode
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 reg =3D CTRL_BYPASS_COUNT | =A0 =A0 =A0 /* always in DOTCLO=
CK mode */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 CTRL_DOTCLK_MODE;
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_CTRL);
> +
> + =A0 =A0 =A0 /* master mode only */
> + =A0 =A0 =A0 reg |=3D CTRL_MASTER;
> +
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* Configure videomode and interface mode
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 reg |=3D SET_BUS_WIDTH(pdata->ld_intf_width);
> + =A0 =A0 =A0 switch (fb_info->bits_per_pixel) {
> + =A0 =A0 =A0 case 8:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D SET_WORD_LENGTH(1);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /** @todo refer manual page 2046 for 8 bpp =
modes */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_dbg(fbi->hw_dev, "8 bpp mode not suppor=
ted yet\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 case 16:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 pr_debug("Setting up an RGB565 mode\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D SET_WORD_LENGTH(0);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg &=3D ~CTRL_DF16; /* we assume RGB565 */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(SET_BYTE_PACKAGING(0xf), fbi->base +=
 HW_LCDIF_CTRL1);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->red =3D def_rgb565[RED];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->green =3D def_rgb565[GREEN];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->blue =3D def_rgb565[BLUE];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->transp =3D =A0def_rgb565[TRANSP];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 case 24:
> + =A0 =A0 =A0 case 32:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 pr_debug("Setting up an RGB888/666 mode\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D SET_WORD_LENGTH(3);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 switch (pdata->ld_intf_width) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case STMLCDIF_8BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_dbg(fbi->hw_dev,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 "Unsupporte=
d LCD bus width mapping\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case STMLCDIF_16BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case STMLCDIF_18BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* 24 bit to 18 bit mapping
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* which means: ignore th=
e upper 2 bits in
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* each colour component
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D CTRL_DF24;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->red =3D def_rgb666=
[RED];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->green =3D def_rgb6=
66[GREEN];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->blue =3D def_rgb66=
6[BLUE];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->transp =3D =A0def_=
rgb666[TRANSP];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case STMLCDIF_24BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* real 24 bit */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->red =3D def_rgb888=
[RED];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->green =3D def_rgb8=
88[GREEN];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->blue =3D def_rgb88=
8[BLUE];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->transp =3D =A0def_=
rgb888[TRANSP];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* do not use packed pixels =3D one pixel p=
er word instead */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(SET_BYTE_PACKAGING(0x7), fbi->base +=
 HW_LCDIF_CTRL1);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 default:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_dbg(fbi->hw_dev, "Unhandled colour dept=
h of %u\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fb_info->bits_per_pixel);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> + =A0 =A0 =A0 }
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_CTRL);
> + =A0 =A0 =A0 pr_debug("Setting up CTRL to %08X\n", reg);
> +
> + =A0 =A0 =A0 writel(SET_VCOUNT(mode->yres) |
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 SET_HCOUNT(mode->xres), fbi->base + HW_LCDI=
F_TRANSFER_COUNT);
> +
> + =A0 =A0 =A0 reg =3D VDCTRL0_ENABLE_PRESENT | =A0/* always in DOTCLOCK m=
ode */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 VDCTRL0_VSYNC_PERIOD_UNIT |
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 VDCTRL0_VSYNC_PULSE_WIDTH_UNIT;
> + =A0 =A0 =A0 if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D VDCTRL0_HSYNC_POL;
> + =A0 =A0 =A0 if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D VDCTRL0_VSYNC_POL;
> + =A0 =A0 =A0 if (mode->sync & FB_SYNC_DE_HIGH_ACT)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D VDCTRL0_ENABLE_POL;
> + =A0 =A0 =A0 if (mode->sync & FB_SYNC_CLK_INVERT)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D VDCTRL0_DOTCLK_POL;
> +
> + =A0 =A0 =A0 reg |=3D SET_VSYNC_PULSE_WIDTH(mode->vsync_len);
> + =A0 =A0 =A0 writel(reg, fbi->base + HW_LCDIF_VDCTRL0);
> + =A0 =A0 =A0 pr_debug("Setting up VDCTRL0 to %08X\n", reg);
> +
> + =A0 =A0 =A0 /* frame length in lines */
> + =A0 =A0 =A0 writel(mode->upper_margin + mode->vsync_len + mode->lower_m=
argin +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 mode->yres,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fbi->base + HW_LCDIF_VDCTRL1);
> +
> + =A0 =A0 =A0 /* line length in units of clocks or pixels */
> + =A0 =A0 =A0 writel(SET_HSYNC_PULSE_WIDTH(mode->hsync_len) |
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 SET_HSYNC_PERIOD(mode->left_margin + mode->=
hsync_len +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 mode->right_margin + mode->=
xres),
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fbi->base + HW_LCDIF_VDCTRL2);
> +
> + =A0 =A0 =A0 writel(SET_HOR_WAIT_CNT(mode->left_margin + mode->hsync_len=
) |
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 SET_VERT_WAIT_CNT(mode->upper_margin + mode=
->vsync_len),
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fbi->base + HW_LCDIF_VDCTRL3);
> +
> + =A0 =A0 =A0 writel(
> +#ifdef CONFIG_ARCH_IMX28
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 SET_DOTCLK_DLY(pdata->dotclk_delay) |
> +#endif
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 SET_DOTCLK_H_VALID_DATA_CNT(mode->xres),
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 fbi->base + HW_LCDIF_VDCTRL4);
> +
> + =A0 =A0 =A0 writel((uint32_t)fb_info->screen_base, fbi->base + HW_LCDIF=
_CUR_BUF);
> + =A0 =A0 =A0 writel((uint32_t)fb_info->screen_base, fbi->base + HW_LCDIF=
_NEXT_BUF);
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static void stmfb_info(struct device_d *hw_dev)
> +{
> + =A0 =A0 =A0 struct imx_fb_videomode *pdata =3D hw_dev->platform_data;
> + =A0 =A0 =A0 unsigned u;
> +
> + =A0 =A0 =A0 printf(" Supported video modes:\n");
> + =A0 =A0 =A0 for (u =3D 0; u < pdata->mode_cnt; u++)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(" =A0- '%s': %u x %u\n", pdata->mode=
_list[u].name,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 pdata->mode_list[u].xres, p=
data->mode_list[u].yres);
> +}
> +
> +/*
> + * There is only one video hardware instance available.
> + * It makes no sense to dynamically allocate this data
> + */
> +static struct fb_ops imxfb_ops =3D {
> + =A0 =A0 =A0 .fb_activate_var =3D stmfb_activate_var,
> + =A0 =A0 =A0 .fb_enable =3D stmfb_enable_controller,
> + =A0 =A0 =A0 .fb_disable =3D stmfb_disable_controller,
> +};
> +
> +static struct imxfb_info fbi =3D {
> + =A0 =A0 =A0 .info =3D {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .fbops =3D &imxfb_ops,
> + =A0 =A0 =A0 },
> +};
> +
> +static int stmfb_probe(struct device_d *hw_dev)
> +{
> + =A0 =A0 =A0 struct imx_fb_videomode *pdata =3D hw_dev->platform_data;
> + =A0 =A0 =A0 int ret;
> +
> + =A0 =A0 =A0 /* just init */
> + =A0 =A0 =A0 fbi.info.priv =3D &fbi;
> +
> + =A0 =A0 =A0 /* add runtime hardware info */
> + =A0 =A0 =A0 fbi.hw_dev =3D hw_dev;
> + =A0 =A0 =A0 fbi.base =3D (void *)hw_dev->map_base;
> + =A0 =A0 =A0 fbi.pdata =3D pdata;
> +
> + =A0 =A0 =A0 /* add runtime video info */
> + =A0 =A0 =A0 fbi.info.mode_list =3D pdata->mode_list;
> + =A0 =A0 =A0 fbi.info.num_modes =3D pdata->mode_cnt;
> + =A0 =A0 =A0 fbi.info.mode =3D &fbi.info.mode_list[0];
> + =A0 =A0 =A0 fbi.info.xres =3D fbi.info.mode->xres;
> + =A0 =A0 =A0 fbi.info.yres =3D fbi.info.mode->yres;
> + =A0 =A0 =A0 fbi.info.bits_per_pixel =3D 16;
Could we consider to pass .bits_per_pixel through platform _data?
Is there any reason to hardcode this value?


> +
> + =A0 =A0 =A0 ret =3D register_framebuffer(&fbi.info);

At this point you register the framebuffer but screen_base is not set yet.
So when we want to access framebuffer from mmap we get a pointer to 0x0
instead of getting the pointer to the frambeffer address..
I moved  stmfb_memory_mmgt from  stmfb_activate_var to be able to
display a picture with bmp command. It worked for me because I have only
one screen available, but if you want to keep the capability to change scre=
en on
the fly, then we will need to update map_base in fb driver.


> + =A0 =A0 =A0 if (ret !=3D 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_err(hw_dev, "Failed to register framebu=
ffer\n");
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static struct driver_d stmfb_driver =3D {
> + =A0 =A0 =A0 .name =A0 =3D "stmfb",
> + =A0 =A0 =A0 .probe =A0=3D stmfb_probe,
> + =A0 =A0 =A0 .info =A0 =3D stmfb_info,
> +};
> +
> +static int stmfb_init(void)
> +{
> + =A0 =A0 =A0 return register_driver(&stmfb_driver);
> +}
> +
> +device_initcall(stmfb_init);
> +
> +/**
> + * @file
> + * @brief LCDIF driver for i.MX23 and i.MX28
> + *
> + * The LCDIF support four modes of operation
> + * - MPU interface (to drive smart displays) -> not supported yet
> + * - VSYNC interface (like MPU interface plus Vsync) -> not supported yet
> + * - Dotclock interface (to drive LC displays with RGB data and sync sig=
nals)
> + * - DVI (to drive ITU-R BT656) =A0-> not supported yet
> + *
> + * This driver depends on a correct setup of the pins used for this purp=
ose
> + * (platform specific).
> + *
> + * For the developer: Don't forget to set the data bus width to the disp=
lay
> + * in the imx_fb_videomode structure. You will else end up with ugly col=
ours.
> + * If you fight against jitter you can vary the clock delay. This is a f=
eature
> + * of the i.MX28 and you can vary it between 2 ns ... 8 ns in 2 ns steps=
. Give
> + * the required value in the imx_fb_videomode structure.
> + */
> --
> 1.7.2.3
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>


-- =

Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
