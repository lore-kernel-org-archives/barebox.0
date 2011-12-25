Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqi-0006DH-3S
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:20 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000hE-EJ
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001LZ-Bf
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:29 +0100
Message-Id: <1324845517-4601-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
References: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/14] MACH SAMSUNG/S3C: Reflect the CPU name the LCD driver
 is for
To: barebox@lists.infradead.org

This LCD driver is for the LCD controller in the S3C2410/S3C2440 CPUs only.
Change its name to reflect its usage and free the way to add LCD controller
drivers for more recent Samsung CPUs.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/mini2440/mini2440.c             |    2 +-
 arch/arm/mach-samsung/include/mach/fb.h         |   59 ---
 arch/arm/mach-samsung/include/mach/s3c24xx-fb.h |   59 +++
 drivers/video/Kconfig                           |    2 +-
 drivers/video/Makefile                          |    2 +-
 drivers/video/s3c.c                             |  431 -----------------------
 drivers/video/s3c24xx.c                         |  431 +++++++++++++++++++++++
 7 files changed, 493 insertions(+), 493 deletions(-)
 delete mode 100644 arch/arm/mach-samsung/include/mach/fb.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
 delete mode 100644 drivers/video/s3c.c
 create mode 100644 drivers/video/s3c24xx.c

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 233f337..0186465 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -42,7 +42,7 @@
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-mci.h>
-#include <mach/fb.h>
+#include <mach/s3c24xx-fb.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0,
diff --git a/arch/arm/mach-samsung/include/mach/fb.h b/arch/arm/mach-samsung/include/mach/fb.h
deleted file mode 100644
index 05e013a..0000000
--- a/arch/arm/mach-samsung/include/mach/fb.h
+++ /dev/null
@@ -1,59 +0,0 @@
-/*
- * Copyright (C) 2010 Juergen Beisert
- * Copyright (C) 2011 Alexey Galakhov
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-#ifndef __MACH_FB_H_
-# define __MACH_FB_H_
-
-#include <fb.h>
-
-/** Proprietary flags corresponding to  S3C24x0 LCDCON5 register */
-
-/** ! INVVDEN - DE active high */
-#define FB_SYNC_DE_HIGH_ACT	(1 << 23)
-/** INVVCLK - invert CLK signal */
-#define FB_SYNC_CLK_INVERT	(1 << 24)
-/** INVVD - invert data */
-#define FB_SYNC_DATA_INVERT	(1 << 25)
-/** INVPWREN - use PWREN signal */
-#define FB_SYNC_INVERT_PWREN	(1 << 26)
-/** INVLEND - use LEND signal */
-#define FB_SYNC_INVERT_LEND	(1 << 27)
-/** PWREN - use PWREN signal */
-#define FB_SYNC_USE_PWREN	(1 << 28)
-/** ENLEND - use LEND signal */
-#define FB_SYNC_USE_LEND	(1 << 29)
-/** BSWP - swap bytes */
-#define FB_SYNC_SWAP_BYTES	(1 << 30)
-/** HWSWP - swap half words */
-#define FB_SYNC_SWAP_HW		(1 << 31)
-
-struct s3c_fb_platform_data {
-	struct fb_videomode *mode_list;
-	unsigned mode_cnt;
-
-	unsigned bits_per_pixel;
-	int passive_display;	/**< enable support for STN or CSTN displays */
-
-	/** hook to enable backlight and stuff */
-	void (*enable)(int enable);
-};
-
-#endif /* __MACH_FB_H_ */
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-fb.h b/arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
new file mode 100644
index 0000000..05e013a
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert
+ * Copyright (C) 2011 Alexey Galakhov
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef __MACH_FB_H_
+# define __MACH_FB_H_
+
+#include <fb.h>
+
+/** Proprietary flags corresponding to  S3C24x0 LCDCON5 register */
+
+/** ! INVVDEN - DE active high */
+#define FB_SYNC_DE_HIGH_ACT	(1 << 23)
+/** INVVCLK - invert CLK signal */
+#define FB_SYNC_CLK_INVERT	(1 << 24)
+/** INVVD - invert data */
+#define FB_SYNC_DATA_INVERT	(1 << 25)
+/** INVPWREN - use PWREN signal */
+#define FB_SYNC_INVERT_PWREN	(1 << 26)
+/** INVLEND - use LEND signal */
+#define FB_SYNC_INVERT_LEND	(1 << 27)
+/** PWREN - use PWREN signal */
+#define FB_SYNC_USE_PWREN	(1 << 28)
+/** ENLEND - use LEND signal */
+#define FB_SYNC_USE_LEND	(1 << 29)
+/** BSWP - swap bytes */
+#define FB_SYNC_SWAP_BYTES	(1 << 30)
+/** HWSWP - swap half words */
+#define FB_SYNC_SWAP_HW		(1 << 31)
+
+struct s3c_fb_platform_data {
+	struct fb_videomode *mode_list;
+	unsigned mode_cnt;
+
+	unsigned bits_per_pixel;
+	int passive_display;	/**< enable support for STN or CSTN displays */
+
+	/** hook to enable backlight and stuff */
+	void (*enable)(int enable);
+};
+
+#endif /* __MACH_FB_H_ */
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index df2157e..4a05af9 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -27,7 +27,7 @@ config DRIVER_VIDEO_STM
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  i.MX23 and i.MX28 based systems.
 
-config DRIVER_VIDEO_S3C
+config DRIVER_VIDEO_S3C24XX
 	bool "S3C244x framebuffer driver"
 	depends on ARCH_S3C24xx
 	help
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 123c46f..913c78d 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -3,5 +3,5 @@ obj-$(CONFIG_VIDEO) += fb.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
-obj-$(CONFIG_DRIVER_VIDEO_S3C) += s3c.o
+obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
deleted file mode 100644
index a03ec3d..0000000
--- a/drivers/video/s3c.c
+++ /dev/null
@@ -1,431 +0,0 @@
-/*
- * Copyright (C) 2010 Juergen Beisert
- * Copyright (C) 2011 Alexey Galakhov
- *
- * This driver is based on a patch found in the web:
- * (C) Copyright 2006 by OpenMoko, Inc.
- * Author: Harald Welte <laforge at openmoko.org>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <fb.h>
-#include <driver.h>
-#include <malloc.h>
-#include <errno.h>
-#include <io.h>
-#include <mach/gpio.h>
-#include <mach/s3c-generic.h>
-#include <mach/fb.h>
-
-#define LCDCON1 0x00
-# define PNRMODE(x) (((x) & 3) << 5)
-# define BPPMODE(x) (((x) & 0xf) << 1)
-# define SET_CLKVAL(x) (((x) & 0x3ff) << 8)
-# define GET_CLKVAL(x) (((x) >> 8) & 0x3ff)
-# define ENVID (1 << 0)
-
-#define LCDCON2 0x04
-# define SET_VBPD(x) (((x) & 0xff) << 24)
-# define SET_LINEVAL(x) (((x) & 0x3ff) << 14)
-# define SET_VFPD(x) (((x) & 0xff) << 6)
-# define SET_VSPW(x) ((x) & 0x3f)
-
-#define LCDCON3 0x08
-# define SET_HBPD(x) (((x) & 0x7f) << 19)
-# define SET_HOZVAL(x) (((x) & 0x7ff) << 8)
-# define SET_HFPD(x) ((x) & 0xff)
-
-#define LCDCON4 0x0c
-# define SET_HSPW(x) ((x) & 0xff)
-
-#define LCDCON5 0x10
-# define BPP24BL (1 << 12)
-# define FRM565 (1 << 11)
-# define INV_CLK (1 << 10)
-# define INV_HS (1 << 9)
-# define INV_VS (1 << 8)
-# define INV_DTA (1 << 7)
-# define INV_DE (1 << 6)
-# define INV_PWREN (1 << 5)
-# define INV_LEND (1 << 4)
-# define ENA_PWREN (1 << 3)
-# define ENA_LEND (1 << 2)
-# define BSWP (1 << 1)
-# define HWSWP (1 << 0)
-
-#define LCDSADDR1 0x14
-# define SET_LCDBANK(x) (((x) & 0x1ff) << 21)
-# define GET_LCDBANK(x) (((x) >> 21) & 0x1ff)
-# define SET_LCDBASEU(x) ((x) & 0x1fffff)
-# define GET_LCDBASEU(x) ((x) & 0x1fffff)
-
-#define LCDSADDR2 0x18
-# define SET_LCDBASEL(x) ((x) & 0x1fffff)
-# define GET_LCDBASEL(x) ((x) & 0x1fffff)
-
-#define LCDSADDR3 0x1c
-# define SET_OFFSIZE(x) (((x) & 0x7ff) << 11)
-# define GET_OFFSIZE(x) (((x) >> 11) & 0x7ff)
-# define SET_PAGE_WIDTH(x) ((x) & 0x3ff)
-# define GET_PAGE_WIDTH(x) ((x) & 0x3ff)
-
-#define RED_LUT 0x20
-#define GREEN_LUT 0x24
-#define BLUE_LUT 0x28
-
-#define DITHMODE 0x4c
-
-#define TPAL 0x50
-
-#define LCDINTPND 0x54
-#define LCDSRCPND 0x58
-#define LCDINTMSK 0x5c
-# define FIWSEL (1 << 2)
-# define INT_FrSyn (1 << 1)
-# define INT_FiCnt (1 << 0)
-
-#define TCONSEL 0x60
-
-#define RED 0
-#define GREEN 1
-#define BLUE 2
-#define TRANSP 3
-
-struct s3cfb_info {
-	void __iomem *base;
-	unsigned memory_size;
-	struct fb_info info;
-	struct device_d *hw_dev;
-	int passive_display;
-	void (*enable)(int enable);
-};
-
-/* the RGB565 true colour mode */
-static const struct fb_bitfield def_rgb565[] = {
-	[RED] = {
-		.offset = 11,
-		.length = 5,
-	},
-	[GREEN] = {
-		.offset = 5,
-		.length = 6,
-	},
-	[BLUE] = {
-		.offset = 0,
-		.length = 5,
-	},
-	[TRANSP] = {	/* no support for transparency */
-		.length = 0,
-	}
-};
-
-/* the RGB888 true colour mode */
-static const struct fb_bitfield def_rgb888[] = {
-	[RED] = {
-		.offset = 16,
-		.length = 8,
-	},
-	[GREEN] = {
-		.offset = 8,
-		.length = 8,
-	},
-	[BLUE] = {
-		.offset = 0,
-		.length = 8,
-	},
-	[TRANSP] = {	/* no support for transparency */
-		.length = 0,
-	}
-};
-
-/**
- * @param fb_info Framebuffer information
- */
-static void s3cfb_enable_controller(struct fb_info *fb_info)
-{
-	struct s3cfb_info *fbi = fb_info->priv;
-	uint32_t con1;
-
-	con1 = readl(fbi->base + LCDCON1);
-
-	con1 |= ENVID;
-
-	writel(con1, fbi->base + LCDCON1);
-
-	if (fbi->enable)
-		fbi->enable(1);
-}
-
-/**
- * @param fb_info Framebuffer information
- */
-static void s3cfb_disable_controller(struct fb_info *fb_info)
-{
-	struct s3cfb_info *fbi = fb_info->priv;
-	uint32_t con1;
-
-	if (fbi->enable)
-		fbi->enable(0);
-
-	con1 = readl(fbi->base + LCDCON1);
-
-	con1 &= ~ENVID;
-
-	writel(con1, fbi->base + LCDCON1);
-}
-
-/**
- * Prepare the video hardware for a specified video mode
- * @param fb_info Framebuffer information
- * @param mode The video mode description to initialize
- * @return 0 on success
- */
-static int s3cfb_activate_var(struct fb_info *fb_info)
-{
-	struct s3cfb_info *fbi = fb_info->priv;
-	struct fb_videomode *mode = fb_info->mode;
-	unsigned size, hclk, div;
-	uint32_t con1, con2, con3, con4, con5 = 0;
-
-	if (fbi->passive_display != 0) {
-		dev_err(fbi->hw_dev, "Passive displays are currently not supported\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * we need at least this amount of memory for the framebuffer
-	 */
-	size = mode->xres * mode->yres * (fb_info->bits_per_pixel >> 3);
-	if (fbi->memory_size != size || fb_info->screen_base == NULL) {
-		if (fb_info->screen_base)
-			free(fb_info->screen_base);
-		fbi->memory_size = 0;
-		fb_info->screen_base = malloc(size);
-		if (! fb_info->screen_base)
-			return -ENOMEM;
-		memset(fb_info->screen_base, 0, size);
-		fbi->memory_size = size;
-	}
-
-	/* ensure video output is _off_ */
-	writel(0x00000000, fbi->base + LCDCON1);
-
-	hclk = s3c24xx_get_hclk() / 1000U;	/* hclk in kHz */
-	div = hclk / PICOS2KHZ(mode->pixclock);
-	if (div < 3)
-		div  = 3;
-	/* pixel clock is: (hclk) / ((div + 1) * 2) */
-	div += 1;
-	div >>= 1;
-	div -= 1;
-
-	con1 = PNRMODE(3) | SET_CLKVAL(div);	/* PNRMODE=3 is TFT */
-
-	switch (fb_info->bits_per_pixel) {
-	case 16:
-		con1 |= BPPMODE(12);
-		con5 |= FRM565;
-		con5 |= HWSWP;
-		fb_info->red = def_rgb565[RED];
-		fb_info->green = def_rgb565[GREEN];
-		fb_info->blue = def_rgb565[BLUE];
-		fb_info->transp =  def_rgb565[TRANSP];
-		break;
-	case 24:
-		con1 |= BPPMODE(13);
-		/* con5 |= BPP24BL;	*/ /* FIXME maybe needed, check alignment */
-		fb_info->red = def_rgb888[RED];
-		fb_info->green = def_rgb888[GREEN];
-		fb_info->blue = def_rgb888[BLUE];
-		fb_info->transp =  def_rgb888[TRANSP];
-		break;
-	default:
-		dev_err(fbi->hw_dev, "Invalid bits per pixel value: %u\n", fb_info->bits_per_pixel);
-		return -EINVAL;
-	}
-
-	/* 'normal' in register description means positive logic */
-	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
-		con5 |= INV_HS;
-	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
-		con5 |= INV_VS;
-	if (!(mode->sync & FB_SYNC_DE_HIGH_ACT))
-		con5 |= INV_DE;
-	if (mode->sync & FB_SYNC_CLK_INVERT)
-		con5 |= INV_CLK;	/* display should latch at the rising edge */
-	if (mode->sync & FB_SYNC_DATA_INVERT)
-		con5 |= INV_DTA;
-	if (mode->sync & FB_SYNC_INVERT_PWREN)
-		con5 |= INV_PWREN;
-	if (mode->sync & FB_SYNC_INVERT_LEND)
-		con5 |= INV_LEND;
-	if (mode->sync & FB_SYNC_USE_PWREN)
-		con5 |= ENA_PWREN;	/* FIXME should this be done conditionally/later? */
-	if (mode->sync & FB_SYNC_USE_LEND)
-		con5 |= ENA_LEND;
-	if (mode->sync & FB_SYNC_SWAP_BYTES)
-		con5 ^= BSWP;
-	if (mode->sync & FB_SYNC_SWAP_HW)
-		con5 ^= HWSWP;
-
-	/* vertical timing */
-	con2 = SET_VBPD(mode->upper_margin - 1) |
-		SET_LINEVAL(mode->yres - 1) |
-		SET_VFPD(mode->lower_margin - 1) |
-		SET_VSPW(mode->vsync_len - 1);
-
-	/* horizontal timing */
-	con3 = SET_HBPD(mode->left_margin - 1) |
-		SET_HOZVAL(mode->xres - 1) |
-		SET_HFPD(mode->right_margin - 1);
-	con4 = SET_HSPW(mode->hsync_len - 1);
-
-	/* basic timing setup */
-	writel(con1, fbi->base + LCDCON1);
-	dev_dbg(fbi->hw_dev, "writing %08X into %p (con1)\n", con1, fbi->base + LCDCON1);
-	writel(con2, fbi->base + LCDCON2);
-	dev_dbg(fbi->hw_dev, "writing %08X into %p (con2)\n", con2, fbi->base + LCDCON2);
-	writel(con3, fbi->base + LCDCON3);
-	dev_dbg(fbi->hw_dev, "writing %08X into %p (con3)\n", con3, fbi->base + LCDCON3);
-	writel(con4, fbi->base + LCDCON4);
-	dev_dbg(fbi->hw_dev, "writing %08X into %p (con4)\n", con4, fbi->base + LCDCON4);
-	writel(con5, fbi->base + LCDCON5);
-	dev_dbg(fbi->hw_dev, "writing %08X into %p (con5)\n", con5, fbi->base + LCDCON5);
-
-	dev_dbg(fbi->hw_dev, "setting up the fb baseadress to %p\n", fb_info->screen_base);
-
-	/* framebuffer memory setup */
-	writel((unsigned)fb_info->screen_base >> 1, fbi->base + LCDSADDR1);
-	size = mode->xres * (fb_info->bits_per_pixel >> 3) * (mode->yres);
-	writel(SET_LCDBASEL(((unsigned)fb_info->screen_base + size) >> 1), fbi->base + LCDSADDR2);
-	writel(SET_OFFSIZE(0) |
-		SET_PAGE_WIDTH((mode->xres * fb_info->bits_per_pixel) >> 4),
-		fbi->base + LCDSADDR3);
-	writel(FIWSEL | INT_FrSyn | INT_FiCnt, fbi->base + LCDINTMSK);
-
-	return 0;
-}
-
-/**
- * Print some information about the current hardware state
- * @param hw_dev S3C video device
- */
-#ifdef CONFIG_DRIVER_VIDEO_S3C_VERBOSE
-static void s3cfb_info(struct device_d *hw_dev)
-{
-	uint32_t con1, addr1, addr2, addr3;
-	struct s3cfb_info *fbi = hw_dev->priv;
-
-	con1 = readl(fbi->base + LCDCON1);
-	addr1 = readl(fbi->base + LCDSADDR1);
-	addr2 = readl(fbi->base + LCDSADDR2);
-	addr3 = readl(fbi->base + LCDSADDR3);
-
-	printf(" Video hardware info:\n");
-	printf("  Video clock is running at %u Hz\n", s3c24xx_get_hclk() / ((GET_CLKVAL(con1) + 1) * 2));
-	printf("  Video memory bank starts at 0x%08X\n", GET_LCDBANK(addr1) << 22);
-	printf("  Video memory bank offset: 0x%08X\n", GET_LCDBASEU(addr1));
-	printf("  Video memory end: 0x%08X\n", GET_LCDBASEU(addr2));
-	printf("  Virtual screen offset size: %u half words\n", GET_OFFSIZE(addr3));
-	printf("  Virtual screen page width: %u half words\n", GET_PAGE_WIDTH(addr3));
-}
-#endif
-
-/*
- * There is only one video hardware instance available.
- * It makes no sense to dynamically allocate this data
- */
-static struct fb_ops s3cfb_ops = {
-	.fb_activate_var = s3cfb_activate_var,
-	.fb_enable = s3cfb_enable_controller,
-	.fb_disable = s3cfb_disable_controller,
-};
-
-static struct s3cfb_info fbi = {
-	.info = {
-		.fbops = &s3cfb_ops,
-	},
-};
-
-static int s3cfb_probe(struct device_d *hw_dev)
-{
-	struct s3c_fb_platform_data *pdata = hw_dev->platform_data;
-	int ret;
-
-	if (! pdata)
-		return -ENODEV;
-
-	fbi.base = dev_request_mem_region(hw_dev, 0);
-	writel(0, fbi.base + LCDCON1);
-	writel(0, fbi.base + LCDCON5); /* FIXME not 0 for some displays */
-
-	/* just init */
-	fbi.info.priv = &fbi;
-
-	/* add runtime hardware info */
-	fbi.hw_dev = hw_dev;
-	hw_dev->priv = &fbi;
-
-	/* add runtime video info */
-	fbi.info.mode_list = pdata->mode_list;
-	fbi.info.num_modes = pdata->mode_cnt;
-	fbi.info.mode = &fbi.info.mode_list[1];
-	fbi.info.xres = fbi.info.mode->xres;
-	fbi.info.yres = fbi.info.mode->yres;
-	if (pdata->bits_per_pixel)
-		fbi.info.bits_per_pixel = pdata->bits_per_pixel;
-	else
-		fbi.info.bits_per_pixel = 16;
-	fbi.passive_display = pdata->passive_display;
-	fbi.enable = pdata->enable;
-
-	ret = register_framebuffer(&fbi.info);
-	if (ret != 0) {
-		dev_err(hw_dev, "Failed to register framebuffer\n");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static struct driver_d s3cfb_driver = {
-	.name	= "s3c_fb",
-	.probe	= s3cfb_probe,
-#ifdef CONFIG_DRIVER_VIDEO_S3C_VERBOSE
-	.info	= s3cfb_info,
-#endif
-};
-
-static int s3cfb_init(void)
-{
-	return register_driver(&s3cfb_driver);
-}
-
-device_initcall(s3cfb_init);
-
-/**
- * The S3C244x LCD controller supports passive (CSTN/STN) and active (TFT) LC displays
- *
- * The driver itself currently supports only active TFT LC displays in the follwing manner:
- *
- *  * True colours
- *    - 16 bpp
- *    - 24 bpp (untested)
- */
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
new file mode 100644
index 0000000..75677c3
--- /dev/null
+++ b/drivers/video/s3c24xx.c
@@ -0,0 +1,431 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert
+ * Copyright (C) 2011 Alexey Galakhov
+ *
+ * This driver is based on a patch found in the web:
+ * (C) Copyright 2006 by OpenMoko, Inc.
+ * Author: Harald Welte <laforge at openmoko.org>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <fb.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <io.h>
+#include <mach/s3c-gpio.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c24xx-fb.h>
+
+#define LCDCON1 0x00
+# define PNRMODE(x) (((x) & 3) << 5)
+# define BPPMODE(x) (((x) & 0xf) << 1)
+# define SET_CLKVAL(x) (((x) & 0x3ff) << 8)
+# define GET_CLKVAL(x) (((x) >> 8) & 0x3ff)
+# define ENVID (1 << 0)
+
+#define LCDCON2 0x04
+# define SET_VBPD(x) (((x) & 0xff) << 24)
+# define SET_LINEVAL(x) (((x) & 0x3ff) << 14)
+# define SET_VFPD(x) (((x) & 0xff) << 6)
+# define SET_VSPW(x) ((x) & 0x3f)
+
+#define LCDCON3 0x08
+# define SET_HBPD(x) (((x) & 0x7f) << 19)
+# define SET_HOZVAL(x) (((x) & 0x7ff) << 8)
+# define SET_HFPD(x) ((x) & 0xff)
+
+#define LCDCON4 0x0c
+# define SET_HSPW(x) ((x) & 0xff)
+
+#define LCDCON5 0x10
+# define BPP24BL (1 << 12)
+# define FRM565 (1 << 11)
+# define INV_CLK (1 << 10)
+# define INV_HS (1 << 9)
+# define INV_VS (1 << 8)
+# define INV_DTA (1 << 7)
+# define INV_DE (1 << 6)
+# define INV_PWREN (1 << 5)
+# define INV_LEND (1 << 4)
+# define ENA_PWREN (1 << 3)
+# define ENA_LEND (1 << 2)
+# define BSWP (1 << 1)
+# define HWSWP (1 << 0)
+
+#define LCDSADDR1 0x14
+# define SET_LCDBANK(x) (((x) & 0x1ff) << 21)
+# define GET_LCDBANK(x) (((x) >> 21) & 0x1ff)
+# define SET_LCDBASEU(x) ((x) & 0x1fffff)
+# define GET_LCDBASEU(x) ((x) & 0x1fffff)
+
+#define LCDSADDR2 0x18
+# define SET_LCDBASEL(x) ((x) & 0x1fffff)
+# define GET_LCDBASEL(x) ((x) & 0x1fffff)
+
+#define LCDSADDR3 0x1c
+# define SET_OFFSIZE(x) (((x) & 0x7ff) << 11)
+# define GET_OFFSIZE(x) (((x) >> 11) & 0x7ff)
+# define SET_PAGE_WIDTH(x) ((x) & 0x3ff)
+# define GET_PAGE_WIDTH(x) ((x) & 0x3ff)
+
+#define RED_LUT 0x20
+#define GREEN_LUT 0x24
+#define BLUE_LUT 0x28
+
+#define DITHMODE 0x4c
+
+#define TPAL 0x50
+
+#define LCDINTPND 0x54
+#define LCDSRCPND 0x58
+#define LCDINTMSK 0x5c
+# define FIWSEL (1 << 2)
+# define INT_FrSyn (1 << 1)
+# define INT_FiCnt (1 << 0)
+
+#define TCONSEL 0x60
+
+#define RED 0
+#define GREEN 1
+#define BLUE 2
+#define TRANSP 3
+
+struct s3cfb_info {
+	void __iomem *base;
+	unsigned memory_size;
+	struct fb_info info;
+	struct device_d *hw_dev;
+	int passive_display;
+	void (*enable)(int enable);
+};
+
+/* the RGB565 true colour mode */
+static const struct fb_bitfield def_rgb565[] = {
+	[RED] = {
+		.offset = 11,
+		.length = 5,
+	},
+	[GREEN] = {
+		.offset = 5,
+		.length = 6,
+	},
+	[BLUE] = {
+		.offset = 0,
+		.length = 5,
+	},
+	[TRANSP] = {	/* no support for transparency */
+		.length = 0,
+	}
+};
+
+/* the RGB888 true colour mode */
+static const struct fb_bitfield def_rgb888[] = {
+	[RED] = {
+		.offset = 16,
+		.length = 8,
+	},
+	[GREEN] = {
+		.offset = 8,
+		.length = 8,
+	},
+	[BLUE] = {
+		.offset = 0,
+		.length = 8,
+	},
+	[TRANSP] = {	/* no support for transparency */
+		.length = 0,
+	}
+};
+
+/**
+ * @param fb_info Framebuffer information
+ */
+static void s3cfb_enable_controller(struct fb_info *fb_info)
+{
+	struct s3cfb_info *fbi = fb_info->priv;
+	uint32_t con1;
+
+	con1 = readl(fbi->base + LCDCON1);
+
+	con1 |= ENVID;
+
+	writel(con1, fbi->base + LCDCON1);
+
+	if (fbi->enable)
+		fbi->enable(1);
+}
+
+/**
+ * @param fb_info Framebuffer information
+ */
+static void s3cfb_disable_controller(struct fb_info *fb_info)
+{
+	struct s3cfb_info *fbi = fb_info->priv;
+	uint32_t con1;
+
+	if (fbi->enable)
+		fbi->enable(0);
+
+	con1 = readl(fbi->base + LCDCON1);
+
+	con1 &= ~ENVID;
+
+	writel(con1, fbi->base + LCDCON1);
+}
+
+/**
+ * Prepare the video hardware for a specified video mode
+ * @param fb_info Framebuffer information
+ * @param mode The video mode description to initialize
+ * @return 0 on success
+ */
+static int s3cfb_activate_var(struct fb_info *fb_info)
+{
+	struct s3cfb_info *fbi = fb_info->priv;
+	struct fb_videomode *mode = fb_info->mode;
+	unsigned size, hclk, div;
+	uint32_t con1, con2, con3, con4, con5 = 0;
+
+	if (fbi->passive_display != 0) {
+		dev_err(fbi->hw_dev, "Passive displays are currently not supported\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * we need at least this amount of memory for the framebuffer
+	 */
+	size = mode->xres * mode->yres * (fb_info->bits_per_pixel >> 3);
+	if (fbi->memory_size != size || fb_info->screen_base == NULL) {
+		if (fb_info->screen_base)
+			free(fb_info->screen_base);
+		fbi->memory_size = 0;
+		fb_info->screen_base = malloc(size);
+		if (! fb_info->screen_base)
+			return -ENOMEM;
+		memset(fb_info->screen_base, 0, size);
+		fbi->memory_size = size;
+	}
+
+	/* ensure video output is _off_ */
+	writel(0x00000000, fbi->base + LCDCON1);
+
+	hclk = s3c24xx_get_hclk() / 1000U;	/* hclk in kHz */
+	div = hclk / PICOS2KHZ(mode->pixclock);
+	if (div < 3)
+		div  = 3;
+	/* pixel clock is: (hclk) / ((div + 1) * 2) */
+	div += 1;
+	div >>= 1;
+	div -= 1;
+
+	con1 = PNRMODE(3) | SET_CLKVAL(div);	/* PNRMODE=3 is TFT */
+
+	switch (fb_info->bits_per_pixel) {
+	case 16:
+		con1 |= BPPMODE(12);
+		con5 |= FRM565;
+		con5 |= HWSWP;
+		fb_info->red = def_rgb565[RED];
+		fb_info->green = def_rgb565[GREEN];
+		fb_info->blue = def_rgb565[BLUE];
+		fb_info->transp =  def_rgb565[TRANSP];
+		break;
+	case 24:
+		con1 |= BPPMODE(13);
+		/* con5 |= BPP24BL;	*/ /* FIXME maybe needed, check alignment */
+		fb_info->red = def_rgb888[RED];
+		fb_info->green = def_rgb888[GREEN];
+		fb_info->blue = def_rgb888[BLUE];
+		fb_info->transp =  def_rgb888[TRANSP];
+		break;
+	default:
+		dev_err(fbi->hw_dev, "Invalid bits per pixel value: %u\n", fb_info->bits_per_pixel);
+		return -EINVAL;
+	}
+
+	/* 'normal' in register description means positive logic */
+	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
+		con5 |= INV_HS;
+	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
+		con5 |= INV_VS;
+	if (!(mode->sync & FB_SYNC_DE_HIGH_ACT))
+		con5 |= INV_DE;
+	if (mode->sync & FB_SYNC_CLK_INVERT)
+		con5 |= INV_CLK;	/* display should latch at the rising edge */
+	if (mode->sync & FB_SYNC_DATA_INVERT)
+		con5 |= INV_DTA;
+	if (mode->sync & FB_SYNC_INVERT_PWREN)
+		con5 |= INV_PWREN;
+	if (mode->sync & FB_SYNC_INVERT_LEND)
+		con5 |= INV_LEND;
+	if (mode->sync & FB_SYNC_USE_PWREN)
+		con5 |= ENA_PWREN;	/* FIXME should this be done conditionally/later? */
+	if (mode->sync & FB_SYNC_USE_LEND)
+		con5 |= ENA_LEND;
+	if (mode->sync & FB_SYNC_SWAP_BYTES)
+		con5 ^= BSWP;
+	if (mode->sync & FB_SYNC_SWAP_HW)
+		con5 ^= HWSWP;
+
+	/* vertical timing */
+	con2 = SET_VBPD(mode->upper_margin - 1) |
+		SET_LINEVAL(mode->yres - 1) |
+		SET_VFPD(mode->lower_margin - 1) |
+		SET_VSPW(mode->vsync_len - 1);
+
+	/* horizontal timing */
+	con3 = SET_HBPD(mode->left_margin - 1) |
+		SET_HOZVAL(mode->xres - 1) |
+		SET_HFPD(mode->right_margin - 1);
+	con4 = SET_HSPW(mode->hsync_len - 1);
+
+	/* basic timing setup */
+	writel(con1, fbi->base + LCDCON1);
+	dev_dbg(fbi->hw_dev, "writing %08X into %p (con1)\n", con1, fbi->base + LCDCON1);
+	writel(con2, fbi->base + LCDCON2);
+	dev_dbg(fbi->hw_dev, "writing %08X into %p (con2)\n", con2, fbi->base + LCDCON2);
+	writel(con3, fbi->base + LCDCON3);
+	dev_dbg(fbi->hw_dev, "writing %08X into %p (con3)\n", con3, fbi->base + LCDCON3);
+	writel(con4, fbi->base + LCDCON4);
+	dev_dbg(fbi->hw_dev, "writing %08X into %p (con4)\n", con4, fbi->base + LCDCON4);
+	writel(con5, fbi->base + LCDCON5);
+	dev_dbg(fbi->hw_dev, "writing %08X into %p (con5)\n", con5, fbi->base + LCDCON5);
+
+	dev_dbg(fbi->hw_dev, "setting up the fb baseadress to %p\n", fb_info->screen_base);
+
+	/* framebuffer memory setup */
+	writel((unsigned)fb_info->screen_base >> 1, fbi->base + LCDSADDR1);
+	size = mode->xres * (fb_info->bits_per_pixel >> 3) * (mode->yres);
+	writel(SET_LCDBASEL(((unsigned)fb_info->screen_base + size) >> 1), fbi->base + LCDSADDR2);
+	writel(SET_OFFSIZE(0) |
+		SET_PAGE_WIDTH((mode->xres * fb_info->bits_per_pixel) >> 4),
+		fbi->base + LCDSADDR3);
+	writel(FIWSEL | INT_FrSyn | INT_FiCnt, fbi->base + LCDINTMSK);
+
+	return 0;
+}
+
+/**
+ * Print some information about the current hardware state
+ * @param hw_dev S3C video device
+ */
+#ifdef CONFIG_DRIVER_VIDEO_S3C_VERBOSE
+static void s3cfb_info(struct device_d *hw_dev)
+{
+	uint32_t con1, addr1, addr2, addr3;
+	struct s3cfb_info *fbi = hw_dev->priv;
+
+	con1 = readl(fbi->base + LCDCON1);
+	addr1 = readl(fbi->base + LCDSADDR1);
+	addr2 = readl(fbi->base + LCDSADDR2);
+	addr3 = readl(fbi->base + LCDSADDR3);
+
+	printf(" Video hardware info:\n");
+	printf("  Video clock is running at %u Hz\n", s3c24xx_get_hclk() / ((GET_CLKVAL(con1) + 1) * 2));
+	printf("  Video memory bank starts at 0x%08X\n", GET_LCDBANK(addr1) << 22);
+	printf("  Video memory bank offset: 0x%08X\n", GET_LCDBASEU(addr1));
+	printf("  Video memory end: 0x%08X\n", GET_LCDBASEU(addr2));
+	printf("  Virtual screen offset size: %u half words\n", GET_OFFSIZE(addr3));
+	printf("  Virtual screen page width: %u half words\n", GET_PAGE_WIDTH(addr3));
+}
+#endif
+
+/*
+ * There is only one video hardware instance available.
+ * It makes no sense to dynamically allocate this data
+ */
+static struct fb_ops s3cfb_ops = {
+	.fb_activate_var = s3cfb_activate_var,
+	.fb_enable = s3cfb_enable_controller,
+	.fb_disable = s3cfb_disable_controller,
+};
+
+static struct s3cfb_info fbi = {
+	.info = {
+		.fbops = &s3cfb_ops,
+	},
+};
+
+static int s3cfb_probe(struct device_d *hw_dev)
+{
+	struct s3c_fb_platform_data *pdata = hw_dev->platform_data;
+	int ret;
+
+	if (! pdata)
+		return -ENODEV;
+
+	fbi.base = dev_request_mem_region(hw_dev, 0);
+	writel(0, fbi.base + LCDCON1);
+	writel(0, fbi.base + LCDCON5); /* FIXME not 0 for some displays */
+
+	/* just init */
+	fbi.info.priv = &fbi;
+
+	/* add runtime hardware info */
+	fbi.hw_dev = hw_dev;
+	hw_dev->priv = &fbi;
+
+	/* add runtime video info */
+	fbi.info.mode_list = pdata->mode_list;
+	fbi.info.num_modes = pdata->mode_cnt;
+	fbi.info.mode = &fbi.info.mode_list[1];
+	fbi.info.xres = fbi.info.mode->xres;
+	fbi.info.yres = fbi.info.mode->yres;
+	if (pdata->bits_per_pixel)
+		fbi.info.bits_per_pixel = pdata->bits_per_pixel;
+	else
+		fbi.info.bits_per_pixel = 16;
+	fbi.passive_display = pdata->passive_display;
+	fbi.enable = pdata->enable;
+
+	ret = register_framebuffer(&fbi.info);
+	if (ret != 0) {
+		dev_err(hw_dev, "Failed to register framebuffer\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static struct driver_d s3cfb_driver = {
+	.name	= "s3c_fb",
+	.probe	= s3cfb_probe,
+#ifdef CONFIG_DRIVER_VIDEO_S3C_VERBOSE
+	.info	= s3cfb_info,
+#endif
+};
+
+static int s3cfb_init(void)
+{
+	return register_driver(&s3cfb_driver);
+}
+
+device_initcall(s3cfb_init);
+
+/**
+ * The S3C244x LCD controller supports passive (CSTN/STN) and active (TFT) LC displays
+ *
+ * The driver itself currently supports only active TFT LC displays in the follwing manner:
+ *
+ *  * True colours
+ *    - 16 bpp
+ *    - 24 bpp (untested)
+ */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
