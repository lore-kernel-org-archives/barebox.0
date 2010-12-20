Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIe-0003Em-SO
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:33 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000UC-EO
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xe-AF
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:07 +0100
Message-Id: <1292857509-13881-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/10] ARM STM/i.MX: Add video driver for i.MX23/i.MX28
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/fb.h         |   43 +++
 arch/arm/mach-stm/include/mach/imx23-regs.h |    1 +
 drivers/video/Kconfig                       |    7 +
 drivers/video/Makefile                      |    1 +
 drivers/video/stm.c                         |  540 +++++++++++++++++++++++++++
 5 files changed, 592 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-stm/include/mach/fb.h
 create mode 100644 drivers/video/stm.c

diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
new file mode 100644
index 0000000..65e3be2
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -0,0 +1,43 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MACH_FB_H
+# define __MACH_FB_H
+
+#include <fb.h>
+
+#define STMLCDIF_8BIT 1	/** pixel data bus to the display is of 8 bit width */
+#define STMLCDIF_16BIT 0 /** pixel data bus to the display is of 16 bit width */
+#define STMLCDIF_18BIT 2 /** pixel data bus to the display is of 18 bit width */
+#define STMLCDIF_24BIT 3 /** pixel data bus to the display is of 24 bit width */
+
+/** LC display uses active high data enable signal */
+#define FB_SYNC_DE_HIGH_ACT	(1 << 27)
+/** LC display will latch its data at clock's rising edge */
+#define FB_SYNC_CLK_INVERT	(1 << 28)
+/** output RGB digital data inverted */
+#define FB_SYNC_DATA_INVERT	(1 << 29)
+/** Stop clock if no data is sent (required for passive displays) */
+#define FB_SYNC_CLK_IDLE_DIS	(1 << 30)
+/** swap RGB to BGR */
+#define FB_SYNC_SWAP_RGB	(1 << 31)
+
+struct imx_fb_videomode {
+	struct fb_videomode *mode_list;
+	unsigned mode_cnt;
+
+	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
+	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
+};
+
+#endif /* __MACH_FB_H */
+
diff --git a/arch/arm/mach-stm/include/mach/imx23-regs.h b/arch/arm/mach-stm/include/mach/imx23-regs.h
index 89ca453..caac19b 100644
--- a/arch/arm/mach-stm/include/mach/imx23-regs.h
+++ b/arch/arm/mach-stm/include/mach/imx23-regs.h
@@ -36,6 +36,7 @@
 #define IMX_CCM_BASE		0x80040000
 #define IMX_I2C1_BASE		0x80058000
 #define IMX_SSP1_BASE		0x80010000
+#define IMX_FB_BASE		0x80030000
 #define IMX_SSP2_BASE		0x80034000
 
 #endif /* __ASM_ARCH_MX23_REGS_H */
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 7a89a3f..c69308e 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -20,4 +20,11 @@ config DRIVER_VIDEO_IMX_IPU
 	  Add support for the IPU framebuffer device found on
 	  i.MX31 and i.MX35 CPUs.
 
+config DRIVER_VIDEO_STM
+	bool "i.MX23/28 framebuffer driver"
+	depends on ARCH_STM
+	help
+	  Say 'Y' here to enable framebuffer and splash screen support for
+	  i.MX23 and i.MX28 based systems.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 179f0c4..a217a0b 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_VIDEO) += fb.o
 
+obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
new file mode 100644
index 0000000..f0abe4c
--- /dev/null
+++ b/drivers/video/stm.c
@@ -0,0 +1,540 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <jbe@pengutronix.de>
+ *
+ * This is based on code from:
+ * Author: Vitaly Wool <vital@embeddedalley.com>
+ *
+ * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <mach/fb.h>
+
+#define HW_LCDIF_CTRL 0x00
+# define CTRL_SFTRST (1 << 31)
+# define CTRL_CLKGATE (1 << 30)
+# define CTRL_BYPASS_COUNT (1 << 19)
+# define CTRL_VSYNC_MODE (1 << 18)
+# define CTRL_DOTCLK_MODE (1 << 17)
+# define CTRL_DATA_SELECT (1 << 16)
+# define SET_BUS_WIDTH(x) (((x) & 0x3) << 10)
+# define SET_WORD_LENGTH(x) (((x) & 0x3) << 8)
+# define GET_WORD_LENGTH(x) (((x) >> 8) & 0x3)
+# define CTRL_MASTER (1 << 5)
+# define CTRL_DF16 (1 << 3)
+# define CTRL_DF18 (1 << 2)
+# define CTRL_DF24 (1 << 1)
+# define CTRL_RUN (1 << 0)
+
+#define HW_LCDIF_CTRL1 0x10
+# define CTRL1_FIFO_CLEAR (1 << 21)
+# define SET_BYTE_PACKAGING(x) (((x) & 0xf) << 16)
+# define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
+
+#ifdef CONFIG_ARCH_IMX28
+# define HW_LCDIF_CTRL2 0x20
+# define HW_LCDIF_TRANSFER_COUNT 0x30
+#endif
+#ifdef CONFIG_ARCH_IMX23
+# define HW_LCDIF_TRANSFER_COUNT 0x20
+#endif
+# define SET_VCOUNT(x) (((x) & 0xffff) << 16)
+# define SET_HCOUNT(x) ((x) & 0xffff)
+
+#ifdef CONFIG_ARCH_IMX28
+# define HW_LCDIF_CUR_BUF 0x40
+# define HW_LCDIF_NEXT_BUF 0x50
+#endif
+#ifdef CONFIG_ARCH_IMX23
+# define HW_LCDIF_CUR_BUF 0x30
+# define HW_LCDIF_NEXT_BUF 0x40
+#endif
+
+#define HW_LCDIF_TIMING 0x60
+# define SET_CMD_HOLD(x) (((x) & 0xff) << 24)
+# define SET_CMD_SETUP(x) (((x) & 0xff) << 16)
+# define SET_DATA_HOLD(x) (((x) & 0xff) << 8)
+# define SET_DATA_SETUP(x) ((x) & 0xff)
+
+#define HW_LCDIF_VDCTRL0 0x70
+# define VDCTRL0_ENABLE_PRESENT (1 << 28)
+# define VDCTRL0_VSYNC_POL (1 << 27) /* 0 = low active, 1 = high active */
+# define VDCTRL0_HSYNC_POL (1 << 26) /* 0 = low active, 1 = high active */
+# define VDCTRL0_DOTCLK_POL (1 << 25) /* 0 = output@falling, capturing@rising edge */
+# define VDCTRL0_ENABLE_POL (1 << 24) /* 0 = low active, 1 = high active */
+# define VDCTRL0_VSYNC_PERIOD_UNIT (1 << 21)
+# define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT (1 << 20)
+# define VDCTRL0_HALF_LINE (1 << 19)
+# define VDCTRL0_HALF_LINE_MODE (1 << 18)
+# define SET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
+
+#define HW_LCDIF_VDCTRL1 0x80
+
+#define HW_LCDIF_VDCTRL2 0x90
+#ifdef CONFIG_ARCH_IMX28
+# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0x3fff) << 18)
+#endif
+#ifdef CONFIG_ARCH_IMX23
+# define SET_HSYNC_PULSE_WIDTH(x) (((x) & 0xff) << 24)
+#endif
+# define SET_HSYNC_PERIOD(x) ((x) & 0x3ffff)
+
+#define HW_LCDIF_VDCTRL3 0xa0
+# define VDCTRL3_MUX_SYNC_SIGNALS (1 << 29)
+# define VDCTRL3_VSYNC_ONLY (1 << 28)
+# define SET_HOR_WAIT_CNT(x) (((x) & 0xfff) << 16)
+# define SET_VERT_WAIT_CNT(x) ((x) & 0xffff)
+
+#define HW_LCDIF_VDCTRL4 0xb0
+#ifdef CONFIG_ARCH_IMX28
+# define SET_DOTCLK_DLY(x) (((x) & 0x7) << 29)
+#endif
+# define VDCTRL4_SYNC_SIGNALS_ON (1 << 18)
+# define SET_DOTCLK_H_VALID_DATA_CNT(x) ((x) & 0x3ffff)
+
+#define HW_LCDIF_DVICTRL0 0xc0
+#define HW_LCDIF_DVICTRL1 0xd0
+#define HW_LCDIF_DVICTRL2 0xe0
+#define HW_LCDIF_DVICTRL3 0xf0
+#define HW_LCDIF_DVICTRL4 0x100
+
+#ifdef CONFIG_ARCH_IMX28
+# define HW_LCDIF_DATA 0x180
+#endif
+#ifdef CONFIG_ARCH_IMX23
+# define HW_LCDIF_DATA 0x1b0
+#endif
+
+#ifdef CONFIG_ARCH_IMX28
+# define HW_LCDIF_DEBUG0 0x1d0
+#endif
+#ifdef CONFIG_ARCH_IMX23
+# define HW_LCDIF_DEBUG0 0x1f0
+#endif
+# define DEBUG_HSYNC (1 < 26)
+# define DEBUG_VSYNC (1 < 25)
+
+#define RED 0
+#define GREEN 1
+#define BLUE 2
+#define TRANSP 3
+
+struct imxfb_info {
+	void __iomem *base;
+	unsigned memory_size;
+	struct fb_info info;
+	struct device_d *hw_dev;
+	struct imx_fb_videomode *pdata;
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
+/* the RGB666 true colour mode */
+static const struct fb_bitfield def_rgb666[] = {
+	[RED] = {
+		.offset = 16,
+		.length = 6,
+	},
+	[GREEN] = {
+		.offset = 8,
+		.length = 6,
+	},
+	[BLUE] = {
+		.offset = 0,
+		.length = 6,
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
+static inline unsigned calc_line_length(unsigned ppl, unsigned bpp)
+{
+	if (bpp == 24)
+		bpp = 32;
+	return (ppl * bpp) >> 3;
+}
+
+static int stmfb_memory_mmgt(struct fb_info *fb_info, unsigned size)
+{
+	struct imxfb_info *fbi = fb_info->priv;
+
+	if (fbi->memory_size != 0) {
+		free(fb_info->screen_base);
+		fb_info->screen_base = NULL;
+		fbi->memory_size = 0;
+	}
+
+	if (fbi->memory_size == 0) {
+		fb_info->screen_base = xzalloc(size);
+		fbi->memory_size = size;
+	}
+
+	return 0;
+}
+
+static void stmfb_enable_controller(struct fb_info *fb_info)
+{
+	struct imxfb_info *fbi = fb_info->priv;
+	uint32_t reg, last_reg;
+	unsigned loop, edges;
+
+	/*
+	 * Sometimes some data is still present in the FIFO. This leads into
+	 * a correct but shifted picture. Clearing the FIFO helps
+	 */
+	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_SET);
+
+	/* if it was disabled, re-enable the mode again */
+	reg = readl(fbi->base + HW_LCDIF_CTRL);
+	reg |= CTRL_DOTCLK_MODE;
+	writel(reg, fbi->base + HW_LCDIF_CTRL);
+
+	/* enable the SYNC signals first, then the DMA engine */
+	reg = readl(fbi->base + HW_LCDIF_VDCTRL4);
+	reg |= VDCTRL4_SYNC_SIGNALS_ON;
+	writel(reg, fbi->base + HW_LCDIF_VDCTRL4);
+
+	/*
+	 * Give the attached LC display or monitor a chance to sync into
+	 * our signals.
+	 * Wait for at least 2 VSYNCs = four VSYNC edges
+	 */
+	edges = 4;
+
+	while (edges != 0) {
+		loop = 800;
+		last_reg = readl(fbi->base + HW_LCDIF_DEBUG0) & DEBUG_VSYNC;
+		do {
+			reg = readl(fbi->base + HW_LCDIF_DEBUG0) & DEBUG_VSYNC;
+			if (reg != last_reg)
+				break;
+			last_reg = reg;
+			loop--;
+		} while (loop != 0);
+		edges--;
+	}
+
+	/* stop FIFO reset */
+	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+	/* start the engine right now */
+	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + BIT_SET);
+}
+
+static void stmfb_disable_controller(struct fb_info *fb_info)
+{
+	struct imxfb_info *fbi = fb_info->priv;
+	unsigned loop;
+	uint32_t reg;
+
+	/*
+	 * Even if we disable the controller here, it will still continue
+	 * until its FIFOs are running out of data
+	 */
+	reg = readl(fbi->base + HW_LCDIF_CTRL);
+	reg &= ~CTRL_DOTCLK_MODE;
+	writel(reg, fbi->base + HW_LCDIF_CTRL);
+
+	loop = 1000;
+	while (loop) {
+		reg = readl(fbi->base + HW_LCDIF_CTRL);
+		if (!(reg & CTRL_RUN))
+			break;
+		loop--;
+	}
+
+	reg = readl(fbi->base + HW_LCDIF_VDCTRL4);
+	reg &= ~VDCTRL4_SYNC_SIGNALS_ON;
+	writel(reg, fbi->base + HW_LCDIF_VDCTRL4);
+}
+
+static int stmfb_activate_var(struct fb_info *fb_info)
+{
+	struct imxfb_info *fbi = fb_info->priv;
+	struct imx_fb_videomode *pdata = fbi->pdata;
+	struct fb_videomode *mode = fb_info->mode;
+	uint32_t reg;
+	int ret;
+	unsigned size;
+
+	/*
+	 * we need at least this amount of memory for the framebuffer
+	 */
+	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
+		mode->yres;
+
+	ret = stmfb_memory_mmgt(fb_info, size);
+	if (ret != 0) {
+		dev_err(fbi->hw_dev, "Cannot allocate framebuffer memory\n");
+		return ret;
+	}
+
+	/** @todo ensure HCLK is active at this point of time! */
+
+	size = imx_set_lcdifclk(PICOS2KHZ(mode->pixclock) * 1000);
+	if (size == 0) {
+		dev_dbg(fbi->hw_dev, "Unable to set a valid pixel clock\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * bring the controller out of reset and
+	 * configure it into DOTCLOCK mode
+	 */
+	reg = CTRL_BYPASS_COUNT |	/* always in DOTCLOCK mode */
+		CTRL_DOTCLK_MODE;
+	writel(reg, fbi->base + HW_LCDIF_CTRL);
+
+	/* master mode only */
+	reg |= CTRL_MASTER;
+
+	/*
+	 * Configure videomode and interface mode
+	 */
+	reg |= SET_BUS_WIDTH(pdata->ld_intf_width);
+	switch (fb_info->bits_per_pixel) {
+	case 8:
+		reg |= SET_WORD_LENGTH(1);
+		/** @todo refer manual page 2046 for 8 bpp modes */
+		dev_dbg(fbi->hw_dev, "8 bpp mode not supported yet\n");
+		break;
+	case 16:
+		pr_debug("Setting up an RGB565 mode\n");
+		reg |= SET_WORD_LENGTH(0);
+		reg &= ~CTRL_DF16; /* we assume RGB565 */
+		writel(SET_BYTE_PACKAGING(0xf), fbi->base + HW_LCDIF_CTRL1);
+		fb_info->red = def_rgb565[RED];
+		fb_info->green = def_rgb565[GREEN];
+		fb_info->blue = def_rgb565[BLUE];
+		fb_info->transp =  def_rgb565[TRANSP];
+		break;
+	case 24:
+	case 32:
+		pr_debug("Setting up an RGB888/666 mode\n");
+		reg |= SET_WORD_LENGTH(3);
+		switch (pdata->ld_intf_width) {
+		case STMLCDIF_8BIT:
+			dev_dbg(fbi->hw_dev,
+				"Unsupported LCD bus width mapping\n");
+			break;
+		case STMLCDIF_16BIT:
+		case STMLCDIF_18BIT:
+			/* 24 bit to 18 bit mapping
+			 * which means: ignore the upper 2 bits in
+			 * each colour component
+			 */
+			reg |= CTRL_DF24;
+			fb_info->red = def_rgb666[RED];
+			fb_info->green = def_rgb666[GREEN];
+			fb_info->blue = def_rgb666[BLUE];
+			fb_info->transp =  def_rgb666[TRANSP];
+			break;
+		case STMLCDIF_24BIT:
+			/* real 24 bit */
+			fb_info->red = def_rgb888[RED];
+			fb_info->green = def_rgb888[GREEN];
+			fb_info->blue = def_rgb888[BLUE];
+			fb_info->transp =  def_rgb888[TRANSP];
+			break;
+		}
+		/* do not use packed pixels = one pixel per word instead */
+		writel(SET_BYTE_PACKAGING(0x7), fbi->base + HW_LCDIF_CTRL1);
+		break;
+	default:
+		dev_dbg(fbi->hw_dev, "Unhandled colour depth of %u\n",
+			fb_info->bits_per_pixel);
+		return -EINVAL;
+	}
+	writel(reg, fbi->base + HW_LCDIF_CTRL);
+	pr_debug("Setting up CTRL to %08X\n", reg);
+
+	writel(SET_VCOUNT(mode->yres) |
+		SET_HCOUNT(mode->xres), fbi->base + HW_LCDIF_TRANSFER_COUNT);
+
+	reg = VDCTRL0_ENABLE_PRESENT |	/* always in DOTCLOCK mode */
+		VDCTRL0_VSYNC_PERIOD_UNIT |
+		VDCTRL0_VSYNC_PULSE_WIDTH_UNIT;
+	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
+		reg |= VDCTRL0_HSYNC_POL;
+	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
+		reg |= VDCTRL0_VSYNC_POL;
+	if (mode->sync & FB_SYNC_DE_HIGH_ACT)
+		reg |= VDCTRL0_ENABLE_POL;
+	if (mode->sync & FB_SYNC_CLK_INVERT)
+		reg |= VDCTRL0_DOTCLK_POL;
+
+	reg |= SET_VSYNC_PULSE_WIDTH(mode->vsync_len);
+	writel(reg, fbi->base + HW_LCDIF_VDCTRL0);
+	pr_debug("Setting up VDCTRL0 to %08X\n", reg);
+
+	/* frame length in lines */
+	writel(mode->upper_margin + mode->vsync_len + mode->lower_margin +
+			mode->yres,
+		fbi->base + HW_LCDIF_VDCTRL1);
+
+	/* line length in units of clocks or pixels */
+	writel(SET_HSYNC_PULSE_WIDTH(mode->hsync_len) |
+		SET_HSYNC_PERIOD(mode->left_margin + mode->hsync_len +
+			mode->right_margin + mode->xres),
+		fbi->base + HW_LCDIF_VDCTRL2);
+
+	writel(SET_HOR_WAIT_CNT(mode->left_margin + mode->hsync_len) |
+		SET_VERT_WAIT_CNT(mode->upper_margin + mode->vsync_len),
+		fbi->base + HW_LCDIF_VDCTRL3);
+
+	writel(
+#ifdef CONFIG_ARCH_IMX28
+		SET_DOTCLK_DLY(pdata->dotclk_delay) |
+#endif
+		SET_DOTCLK_H_VALID_DATA_CNT(mode->xres),
+		fbi->base + HW_LCDIF_VDCTRL4);
+
+	writel((uint32_t)fb_info->screen_base, fbi->base + HW_LCDIF_CUR_BUF);
+	writel((uint32_t)fb_info->screen_base, fbi->base + HW_LCDIF_NEXT_BUF);
+
+	return 0;
+}
+
+static void stmfb_info(struct device_d *hw_dev)
+{
+	struct imx_fb_videomode *pdata = hw_dev->platform_data;
+	unsigned u;
+
+	printf(" Supported video modes:\n");
+	for (u = 0; u < pdata->mode_cnt; u++)
+		printf("  - '%s': %u x %u\n", pdata->mode_list[u].name,
+			pdata->mode_list[u].xres, pdata->mode_list[u].yres);
+}
+
+/*
+ * There is only one video hardware instance available.
+ * It makes no sense to dynamically allocate this data
+ */
+static struct fb_ops imxfb_ops = {
+	.fb_activate_var = stmfb_activate_var,
+	.fb_enable = stmfb_enable_controller,
+	.fb_disable = stmfb_disable_controller,
+};
+
+static struct imxfb_info fbi = {
+	.info = {
+		.fbops = &imxfb_ops,
+	},
+};
+
+static int stmfb_probe(struct device_d *hw_dev)
+{
+	struct imx_fb_videomode *pdata = hw_dev->platform_data;
+	int ret;
+
+	/* just init */
+	fbi.info.priv = &fbi;
+
+	/* add runtime hardware info */
+	fbi.hw_dev = hw_dev;
+	fbi.base = (void *)hw_dev->map_base;
+	fbi.pdata = pdata;
+
+	/* add runtime video info */
+	fbi.info.mode_list = pdata->mode_list;
+	fbi.info.num_modes = pdata->mode_cnt;
+	fbi.info.mode = &fbi.info.mode_list[0];
+	fbi.info.xres = fbi.info.mode->xres;
+	fbi.info.yres = fbi.info.mode->yres;
+	fbi.info.bits_per_pixel = 16;
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
+static struct driver_d stmfb_driver = {
+	.name	= "stmfb",
+	.probe	= stmfb_probe,
+	.info	= stmfb_info,
+};
+
+static int stmfb_init(void)
+{
+	return register_driver(&stmfb_driver);
+}
+
+device_initcall(stmfb_init);
+
+/**
+ * @file
+ * @brief LCDIF driver for i.MX23 and i.MX28
+ *
+ * The LCDIF support four modes of operation
+ * - MPU interface (to drive smart displays) -> not supported yet
+ * - VSYNC interface (like MPU interface plus Vsync) -> not supported yet
+ * - Dotclock interface (to drive LC displays with RGB data and sync signals)
+ * - DVI (to drive ITU-R BT656)  -> not supported yet
+ *
+ * This driver depends on a correct setup of the pins used for this purpose
+ * (platform specific).
+ *
+ * For the developer: Don't forget to set the data bus width to the display
+ * in the imx_fb_videomode structure. You will else end up with ugly colours.
+ * If you fight against jitter you can vary the clock delay. This is a feature
+ * of the i.MX28 and you can vary it between 2 ns ... 8 ns in 2 ns steps. Give
+ * the required value in the imx_fb_videomode structure.
+ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
