Delivery-date: Tue, 28 Feb 2023 14:59:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX0Vf-004jM0-3C
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 14:59:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX0Ve-0000No-Bo
	for lore@pengutronix.de; Tue, 28 Feb 2023 14:59:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dMin+1FVzbSbAydsdGer7WiuUxWdIcHi2JEN13jbv6o=; b=k0Ac0nT/0J/4y0pCYn2GPZ3Km5
	0RaC5hDc+HKsg5Edz+ejyRDSKUN5M+qEgfjp5B+y947UHUZIeRSP49W3N5Sn9+L0iGuTXbNF86wLC
	5vmU424GfdVdMfQUv5RrtrIm6IAYJv30pGLvA7cCzEBv/5isAIJUwPvBQo+bpFXoAqhhg8eY6Gb+C
	po8fR8MaqIuNb/o/Qwrg48vKe4gCl1XF132dWUWgR9tXpOt+RWhRonst8/BZHAEn9ngUJTcqDgh+A
	Xtb4pC+DNxx/FRMYtb/2wGVAojcGk3frO/U3E3RvZYH8gxIzN06BtgohUif9QQtU6YtHmHgp8gmno
	cK4Yb6ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX0UB-00DMdx-PA; Tue, 28 Feb 2023 13:57:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX0U1-00DMa6-Pt
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 13:57:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Tz-0000AC-Cn; Tue, 28 Feb 2023 14:57:31 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Ty-000sdo-Nf; Tue, 28 Feb 2023 14:57:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Tx-006irj-FG; Tue, 28 Feb 2023 14:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 14:57:27 +0100
Message-Id: <20230228135727.1602351-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228135727.1602351-1-s.hauer@pengutronix.de>
References: <20230228135727.1602351-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_055734_247904_CDD7170D 
X-CRM114-Status: GOOD (  27.83  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] video: remove s3c driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Samsung architecture has been removed, remove the framebuffer driver
only used on this architecture as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig   |  13 --
 drivers/video/Makefile  |   1 -
 drivers/video/s3c24xx.c | 411 ----------------------------------------
 3 files changed, 425 deletions(-)
 delete mode 100644 drivers/video/s3c24xx.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 01bdaf47bf..f20cc0befc 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -67,12 +67,6 @@ config DRIVER_VIDEO_STM32_LTDC
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  STM32 and STM32MP1.
 
-config DRIVER_VIDEO_S3C24XX
-	bool "S3C244x framebuffer driver"
-	depends on ARCH_S3C24xx
-	help
-	  Add support for the S3C244x LCD controller.
-
 config DRIVER_VIDEO_OMAP
 	bool "OMAP framebuffer driver"
 	depends on ARCH_OMAP4 || COMPILE_TEST
@@ -81,13 +75,6 @@ config DRIVER_VIDEO_OMAP
 	  driver only supports OMAP4 SoCs in DISPC parallel mode on
 	  LCD2 (MIPI DPI).
 
-if DRIVER_VIDEO_S3C24XX
-
-config DRIVER_VIDEO_S3C_VERBOSE
-	bool "S3C244x verbose framebuffer info"
-
-endif
-
 config DRIVER_VIDEO_SDL
 	bool "SDL framebuffer driver"
 	depends on SANDBOX
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index d50d2d3ba5..1b6d2986d7 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -18,7 +18,6 @@ obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_STM32_LTDC) += stm32_ltdc.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
-obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
 obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
deleted file mode 100644
index 8fd56bbc7b..0000000000
--- a/drivers/video/s3c24xx.c
+++ /dev/null
@@ -1,411 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (C) 2010 Juergen Beisert
- * Copyright (C) 2011 Alexey Galakhov
- *
- * This driver is based on a patch found in the web:
- * (C) Copyright 2006 by OpenMoko, Inc.
- * Author: Harald Welte <laforge at openmoko.org>
- */
-
-#include <common.h>
-#include <init.h>
-#include <fb.h>
-#include <driver.h>
-#include <malloc.h>
-#include <errno.h>
-#include <io.h>
-#include <mach/s3c-generic.h>
-#include <mach/s3c24xx-fb.h>
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
-	struct device *hw_dev;
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
-	hclk = s3c_get_hclk() / 1000U;	/* hclk in kHz */
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
-static void s3cfb_info(struct device *hw_dev)
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
-	printf("  Video clock is running at %u Hz\n", s3c_get_hclk() / ((GET_CLKVAL(con1) + 1) * 2));
-	printf("  Video memory bank starts at 0x%08X\n", GET_LCDBANK(addr1) << 22);
-	printf("  Video memory bank offset: 0x%08X\n", GET_LCDBASEU(addr1));
-	printf("  Video memory end: 0x%08X\n", GET_LCDBASEU(addr2));
-	printf("  Virtual screen offset size: %u half words\n", GET_OFFSIZE(addr3));
-	printf("  Virtual screen page width: %u half words\n", GET_PAGE_WIDTH(addr3));
-}
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
-static int s3cfb_probe(struct device *hw_dev)
-{
-	struct resource *iores;
-	struct s3c_fb_platform_data *pdata = hw_dev->platform_data;
-	int ret;
-
-	if (! pdata)
-		return -ENODEV;
-
-	iores = dev_request_mem_resource(hw_dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	fbi.base = IOMEM(iores->start);
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
-	fbi.info.modes.modes = pdata->mode_list;
-	fbi.info.modes.num_modes = pdata->mode_cnt;
-	fbi.info.mode = &fbi.info.modes.modes[0];
-	fbi.info.xres = fbi.info.mode->xres;
-	fbi.info.yres = fbi.info.mode->yres;
-	if (pdata->bits_per_pixel)
-		fbi.info.bits_per_pixel = pdata->bits_per_pixel;
-	else
-		fbi.info.bits_per_pixel = 16;
-	fbi.passive_display = pdata->passive_display;
-	fbi.enable = pdata->enable;
-
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_S3C_VERBOSE))
-		hw_dev->info = s3cfb_info;
-
-	fbi.info.dev.parent = hw_dev;
-	ret = register_framebuffer(&fbi.info);
-	if (ret != 0) {
-		dev_err(hw_dev, "Failed to register framebuffer\n");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static struct driver s3cfb_driver = {
-	.name	= "s3c_fb",
-	.probe	= s3cfb_probe,
-};
-device_platform_driver(s3cfb_driver);
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
-- 
2.30.2



