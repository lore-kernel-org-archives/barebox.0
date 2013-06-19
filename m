Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22a.google.com ([2a00:1450:4008:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpElr-0005zM-4D
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:33:45 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so2274600bkc.29
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:33:21 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Wed, 19 Jun 2013 11:33:15 +0200
Message-ID: <1371634395.4111.54.camel@mars>
Mime-Version: 1.0
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
Subject: [PATCH 1/2] omap-fb: add driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>

This patch adds omap display controller support. Currently only
OMAP4 DSS is supported.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/video/Kconfig  |    8 +
 drivers/video/Makefile |    1 +
 drivers/video/omap.c   |  524 ++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/video/omap.h   |  187 +++++++++++++++++
 4 files changed, 720 insertions(+)
 create mode 100644 drivers/video/omap.c
 create mode 100644 drivers/video/omap.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 6d6b08f..0639d9c 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -45,6 +45,14 @@ config DRIVER_VIDEO_S3C24XX
 	help
 	  Add support for the S3C244x LCD controller.
 
+config DRIVER_VIDEO_OMAP
+	bool "OMAP framebuffer driver"
+	depends on ARCH_OMAP4
+	help
+	  Add support for OMAP Display Controller. Currently this
+	  driver only supports OMAP4 SoCs in DISPC parallel mode on
+	  LCD2 (MIPI DPI).
+
 if DRIVER_VIDEO_S3C24XX
 
 config DRIVER_VIDEO_S3C_VERBOSE
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 7429141..67169d1 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
+obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
new file mode 100644
index 0000000..487aca6
--- /dev/null
+++ b/drivers/video/omap.c
@@ -0,0 +1,524 @@
+/*
+ * TI Omap Frame Buffer device driver
+ *
+ * Copyright (C) 2013 Christoph Fritz <chf.fritz@googlemail.com>
+ *   Based on work by Enrico Scholz, sponsored by Phytec
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+
+#include <driver.h>
+#include <fb.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <init.h>
+#include <stdio.h>
+#include <io.h>
+#include <common.h>
+#include <malloc.h>
+#include <common.h>
+#include <clock.h>
+
+#include <mach/omap4-silicon.h>
+#include <mach/omap-fb.h>
+
+#include <asm/mmu.h>
+
+#include "omap.h"
+
+struct omapfb_device {
+	struct fb_info info;
+	struct device_d *dev;
+
+	struct omapfb_display const *cur_display;
+
+	struct omapfb_display const *displays;
+	size_t num_displays;
+
+	void __iomem *dss;
+	void __iomem *dispc;
+
+	struct {
+		void __iomem *addr;
+		size_t size;
+	} prealloc_screen;
+
+	struct {
+		uint32_t dispc_control;
+		uint32_t dispc_pol_freq;
+	} shadow;
+
+	struct {
+		unsigned int dss_clk_hz;
+		unsigned int lckd;
+		unsigned int pckd;
+	} divisor;
+	size_t dma_size;
+	void (*enable_fn)(int);
+
+	struct fb_videomode	video_modes[];
+};
+
+static inline struct omapfb_device *to_omapfb(const struct fb_info *info)
+{
+	return container_of(info, struct omapfb_device, info);
+}
+
+static void omapfb_enable(struct fb_info *info)
+{
+	struct omapfb_device *fbi = to_omapfb(info);
+
+	dev_dbg(fbi->dev, "%s\n", __func__);
+
+	if (!fbi->cur_display) {
+		dev_err(fbi->dev, "no valid mode set\n");
+		return;
+	}
+
+	if (fbi->enable_fn)
+		fbi->enable_fn(1);
+
+	udelay(fbi->cur_display->power_on_delay * 1000u);
+
+	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) |
+		DSS_DISPC_CONTROL_LCDENABLE |
+		DSS_DISPC_CONTROL_LCDENABLESIGNAL, O4_DISPC_CONTROL2);
+
+	o4_dispc_write(o4_dispc_read(O4_DISPC_VID1_ATTRIBUTES) |
+		DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE, O4_DISPC_VID1_ATTRIBUTES);
+
+	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) |
+		DSS_DISPC_CONTROL_GOLCD, O4_DISPC_CONTROL2);
+}
+
+static void omapfb_disable(struct fb_info *info)
+{
+	struct omapfb_device *fbi = to_omapfb(info);
+
+	dev_dbg(fbi->dev, "%s\n", __func__);
+
+	if (!fbi->cur_display) {
+		dev_err(fbi->dev, "no valid mode set\n");
+		return;
+	}
+
+	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) &
+		~(DSS_DISPC_CONTROL_LCDENABLE |
+		DSS_DISPC_CONTROL_LCDENABLESIGNAL), O4_DISPC_CONTROL2);
+
+	o4_dispc_write(o4_dispc_read(O4_DISPC_VID1_ATTRIBUTES) &
+		~(DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE),
+		O4_DISPC_VID1_ATTRIBUTES);
+
+	if (fbi->prealloc_screen.addr == NULL) {
+		/* free frame buffer; but only when screen is not
+		* preallocated */
+		if (info->screen_base)
+			dma_free_coherent(info->screen_base, fbi->dma_size);
+	}
+
+	info->screen_base = NULL;
+
+	udelay(fbi->cur_display->power_off_delay * 1000u);
+
+	if (fbi->enable_fn)
+		fbi->enable_fn(0);
+}
+
+static void omapfb_calc_divisor(struct omapfb_device *fbi,
+			struct fb_videomode const *mode)
+{
+	unsigned int l, k, t, b;
+
+	b = UINT_MAX;
+	for (l = 1; l < 256; l++) {
+		for (k = 1; k < 256; k++) {
+			t = abs(mode->pixclock * 100 -
+				(fbi->divisor.dss_clk_hz / l / k));
+			if (t <= b) {
+				b = t;
+				fbi->divisor.lckd = l;
+				fbi->divisor.pckd = k;
+			}
+		}
+	}
+}
+
+static unsigned int omapfb_calc_format(struct fb_info const *info)
+{
+	struct omapfb_device *fbi = to_omapfb(info);
+
+	switch (info->bits_per_pixel) {
+	case 24:
+		return 9;
+	case 32:
+		return 0x8; /* xRGB24-8888 (32-bit container) */
+	default:
+		dev_err(fbi->dev, "%s: unsupported bpp %d\n", __func__,
+			info->bits_per_pixel);
+		return 0;
+	}
+}
+
+struct omapfb_colors {
+	struct fb_bitfield	red;
+	struct fb_bitfield	green;
+	struct fb_bitfield	blue;
+	struct fb_bitfield	transp;
+};
+
+static struct omapfb_colors const omapfb_col[] = {
+	[0] = {
+		.red	= { .length = 0, .offset = 0 },
+	},
+	[1] = {
+		.blue	= { .length = 8, .offset = 0 },
+		.green	= { .length = 8, .offset = 8 },
+		.red	= { .length = 8, .offset = 16 },
+	},
+	[2] = {
+		.blue	= { .length = 8, .offset = 0 },
+		.green	= { .length = 8, .offset = 8 },
+		.red	= { .length = 8, .offset = 16 },
+		.transp	= { .length = 8, .offset = 24 },
+	},
+};
+
+static void omapfb_fill_shadow(struct omapfb_device *fbi,
+				struct omapfb_display const *display)
+{
+	fbi->shadow.dispc_control = 0;
+	fbi->shadow.dispc_pol_freq = 0;
+
+	fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_STNTFT;
+
+	switch (display->config & OMAP_DSS_LCD_DATALINES_msk) {
+	case OMAP_DSS_LCD_DATALINES_12:
+		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_12;
+		break;
+	case OMAP_DSS_LCD_DATALINES_16:
+		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_16;
+		break;
+	case OMAP_DSS_LCD_DATALINES_18:
+		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_18;
+		break;
+	case OMAP_DSS_LCD_DATALINES_24:
+		fbi->shadow.dispc_control |= DSS_DISPC_CONTROL_TFTDATALINES_24;
+		break;
+	}
+
+	if (display->config & OMAP_DSS_LCD_IPC)
+		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IPC;
+
+	if (display->config & OMAP_DSS_LCD_IVS)
+		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IVS;
+
+	if (display->config & OMAP_DSS_LCD_IHS)
+		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IHS;
+
+	if (display->config & OMAP_DSS_LCD_IEO)
+		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_IEO;
+
+	if (display->config & OMAP_DSS_LCD_RF)
+		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_RF;
+
+	if (display->config & OMAP_DSS_LCD_ONOFF)
+		fbi->shadow.dispc_pol_freq |= DSS_DISPC_POL_FREQ_ONOFF;
+}
+
+static int omapfb_find_display_by_name(struct omapfb_device *fbi,
+		const char *name)
+{
+	int i;
+
+	for (i = 0; i < fbi->num_displays; ++i) {
+		if (strcmp(name, fbi->displays[i].mode.name) == 0)
+			return i;
+	}
+	return -ENXIO;
+}
+
+static int omapfb_activate_var(struct fb_info *info)
+{
+	struct omapfb_device *fbi = to_omapfb(info);
+	struct fb_videomode const *mode = info->mode;
+	size_t size = mode->xres * mode->yres * (info->bits_per_pixel / 8);
+	int rc;
+	unsigned int fmt = omapfb_calc_format(info);
+	struct omapfb_colors const *cols;
+	struct omapfb_display const *new_display = NULL;
+
+	rc = omapfb_find_display_by_name(fbi, mode->name);
+	if (rc < 0) {
+		dev_err(fbi->dev, "no display found for this mode '%s'\n",
+			mode->name);
+		goto out;
+	}
+	new_display = &fbi->displays[rc];
+
+	/*Free old screen buf*/
+	if (!fbi->prealloc_screen.addr && info->screen_base)
+		dma_free_coherent(info->screen_base, fbi->dma_size);
+
+	fbi->dma_size = PAGE_ALIGN(size);
+
+	if (!fbi->prealloc_screen.addr) {
+		/* case 1: no preallocated screen */
+		info->screen_base = dma_alloc_coherent(size);
+	} else if (fbi->prealloc_screen.size < fbi->dma_size) {
+		/* case 2: preallocated screen, but too small */
+		dev_err(fbi->dev,
+			"allocated framebuffer too small (%zu < %zu)\n",
+			fbi->prealloc_screen.size, fbi->dma_size);
+		rc = -ENOMEM;
+		goto out;
+	} else {
+		/* case 3: preallocated screen */
+		info->screen_base = fbi->prealloc_screen.addr;
+	}
+
+	omapfb_fill_shadow(fbi, new_display);
+
+	omapfb_calc_divisor(fbi, mode);
+
+	switch (info->bits_per_pixel) {
+	case 24:
+		cols = &omapfb_col[1];
+		break;
+	case 32:
+		cols = &omapfb_col[2];
+		break;
+	default:
+		cols = &omapfb_col[0];
+	}
+
+	info->red = cols->red;
+	info->green = cols->green;
+	info->blue = cols->blue;
+	info->transp = cols->transp;
+
+	o4_dispc_write(fbi->shadow.dispc_control, O4_DISPC_CONTROL2);
+
+	o4_dispc_write(fbi->shadow.dispc_pol_freq, O4_DISPC_POL_FREQ2);
+
+	o4_dispc_write(DSS_DISPC_TIMING_H_HSW(mode->hsync_len - 1) |
+		DSS_DISPC_TIMING_H_HFP(mode->right_margin - 1) |
+		DSS_DISPC_TIMING_H_HBP(mode->left_margin - 1),
+		O4_DISPC_TIMING_H2);
+
+	o4_dispc_write(DSS_DISPC_TIMING_V_VSW(mode->vsync_len - 1) |
+		DSS_DISPC_TIMING_V_VFP(mode->lower_margin) |
+		DSS_DISPC_TIMING_V_VBP(mode->upper_margin), O4_DISPC_TIMING_V2);
+
+	o4_dispc_write(DSS_DISPC_DIVISOR_ENABLE | DSS_DISPC_DIVISOR_LCD(1),
+		O4_DISPC_DIVISOR);
+
+	o4_dispc_write(DSS_DISPC_DIVISOR2_LCD(fbi->divisor.lckd) |
+		DSS_DISPC_DIVISOR2_PCD(fbi->divisor.pckd), O4_DISPC_DIVISOR2);
+
+	o4_dispc_write(DSS_DISPC_SIZE_LCD_PPL(mode->xres - 1) |
+		DSS_DISPC_SIZE_LCD_LPP(mode->yres - 1), O4_DISPC_SIZE_LCD2);
+
+	o4_dispc_write(0x0000ff00, O4_DISPC_DEFAULT_COLOR2);
+
+	/* we use VID1 */
+	o4_dispc_write((uintptr_t)info->screen_base, O4_DISPC_VID1_BA0);
+	o4_dispc_write((uintptr_t)info->screen_base, O4_DISPC_VID1_BA1);
+
+	o4_dispc_write(DSS_DISPC_VIDn_POSITION_VIDPOSX(0) |
+		DSS_DISPC_VIDn_POSITION_VIDPOSY(0), O4_DISPC_VID1_POSITION);
+	o4_dispc_write(DSS_DISPC_VIDn_SIZE_VIDSIZEX(mode->xres - 1) |
+		DSS_DISPC_VIDn_SIZE_VIDSIZEY(mode->yres - 1),
+		O4_DISPC_VID1_SIZE);
+	o4_dispc_write(DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEX(mode->xres - 1) |
+		DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEY(mode->yres - 1),
+		O4_DISPC_VID1_PICTURE_SIZE);
+	o4_dispc_write(1, O4_DISPC_VID1_ROW_INC);
+	o4_dispc_write(1, O4_DISPC_VID1_PIXEL_INC);
+
+	o4_dispc_write(0xfff, O4_DISPC_VID1_PRELOAD);
+
+	o4_dispc_write(DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(fmt) |
+		DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 |
+		DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE |
+		DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD,
+		O4_DISPC_VID1_ATTRIBUTES);
+
+	rc = wait_on_timeout(OFB_TIMEOUT,
+		!(o4_dispc_read(O4_DISPC_CONTROL2) &
+		DSS_DISPC_CONTROL_GOLCD));
+
+	if (rc) {
+		dev_err(fbi->dev, "timeout: dispc golcd\n");
+		goto out;
+	}
+
+	o4_dispc_write(o4_dispc_read(O4_DISPC_CONTROL2) |
+		DSS_DISPC_CONTROL_GOLCD, O4_DISPC_CONTROL2);
+
+	fbi->cur_display = new_display;
+	info->xres = mode->xres;
+	info->yres = mode->yres;
+
+	rc = 0;
+
+out:
+	return rc;
+}
+
+static int omapfb_reset(struct omapfb_device const *fbi)
+{
+	uint32_t v = o4_dispc_read(O4_DISPC_CONTROL2);
+	int rc;
+
+	/* step 1: stop the LCD controller */
+	if (v & DSS_DISPC_CONTROL_LCDENABLE) {
+		o4_dispc_write(v & ~DSS_DISPC_CONTROL_LCDENABLE,
+			O4_DISPC_CONTROL2);
+
+		o4_dispc_write(DSS_DISPC_IRQSTATUS_FRAMEDONE2,
+			O4_DISPC_IRQSTATUS);
+
+		rc = wait_on_timeout(OFB_TIMEOUT,
+			((o4_dispc_read(O4_DISPC_IRQSTATUS) &
+			DSS_DISPC_IRQSTATUS_FRAMEDONE) != 0));
+
+		if (rc) {
+			dev_err(fbi->dev, "timeout: irqstatus framedone\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	/* step 2: wait for reset done status */
+	rc = wait_on_timeout(OFB_TIMEOUT,
+		(o4_dss_read(O4_DSS_SYSSTATUS) &
+		DSS_DSS_SYSSTATUS_RESETDONE));
+
+	if (rc) {
+		dev_err(fbi->dev, "timeout: sysstatus resetdone\n");
+		return -ETIMEDOUT;
+	}
+
+	/* DSS_CTL: set to reset value */
+	o4_dss_write(0, O4_DSS_CTRL);
+
+	return 0;
+}
+
+static struct fb_ops omapfb_ops = {
+	.fb_enable		= omapfb_enable,
+	.fb_disable		= omapfb_disable,
+	.fb_activate_var	= omapfb_activate_var,
+};
+
+static int omapfb_probe(struct device_d *dev)
+{
+	struct omapfb_platform_data const *pdata = dev->platform_data;
+	struct omapfb_device *fbi;
+	struct fb_info *info;
+	int rc;
+	size_t i;
+
+	fbi = xzalloc(sizeof *fbi +
+		pdata->num_displays * sizeof fbi->video_modes[0]);
+	info = &fbi->info;
+
+	fbi->dev = dev;
+
+	/* CM_DSS_CLKSTCTRL (TRM: 935) trigger SW_WKUP */
+	__raw_writel(0x2, 0x4a009100); /* TODO: move this to clockmanagement */
+
+	fbi->dss   = dev_request_mem_region_by_name(dev, "omap4_dss");
+	fbi->dispc = dev_request_mem_region_by_name(dev, "omap4_dispc");
+
+	if (!fbi->dss || !fbi->dispc) {
+		dev_err(dev, "Insufficient register description\n");
+		rc = -EINVAL;
+		goto out;
+	}
+
+	dev_info(dev, "HW-Revision 0x%04x 0x%04x\n",
+		o4_dss_read(O4_DISPC_REVISION),
+		o4_dss_read(O4_DSS_REVISION));
+
+	if (!pdata->dss_clk_hz | !pdata->displays | !pdata->num_displays |
+		!pdata->bpp) {
+		dev_err(dev, "Insufficient omapfb_platform_data\n");
+		rc = -EINVAL;
+		goto out;
+	}
+
+	fbi->enable_fn    = pdata->enable;
+	fbi->displays     = pdata->displays;
+	fbi->num_displays = pdata->num_displays;
+	fbi->divisor.dss_clk_hz = pdata->dss_clk_hz;
+
+	for (i = 0; i < pdata->num_displays; ++i)
+		fbi->video_modes[i] = pdata->displays[i].mode;
+
+	info->mode_list = fbi->video_modes;
+	info->num_modes = pdata->num_displays;
+
+	info->priv = fbi;
+	info->fbops = &omapfb_ops;
+	info->bits_per_pixel = pdata->bpp;
+
+	if (pdata->screen) {
+		if (!IS_ALIGNED(pdata->screen->start, PAGE_SIZE) ||
+			!IS_ALIGNED(resource_size(pdata->screen), PAGE_SIZE)) {
+			dev_err(dev, "screen resource not aligned\n");
+			rc = -EINVAL;
+			goto out;
+		}
+		fbi->prealloc_screen.addr =
+				(void __iomem *)pdata->screen->start;
+		fbi->prealloc_screen.size = resource_size(pdata->screen);
+		remap_range(fbi->prealloc_screen.addr,
+			fbi->prealloc_screen.size,
+			mmu_get_pte_uncached_flags());
+	}
+
+	rc = omapfb_reset(fbi);
+	if (rc < 0) {
+		dev_err(dev, "failed to reset: %d\n", rc);
+		goto out;
+	}
+
+	rc = register_framebuffer(info);
+	if (rc < 0) {
+		dev_err(dev, "failed to register framebuffer: %d\n", rc);
+		goto out;
+	}
+
+	rc = 0;
+	dev_info(dev, "registered\n");
+
+out:
+	if (rc < 0)
+		free(fbi);
+
+	return rc;
+}
+
+static struct driver_d omapfb_driver = {
+	.name	= "omap_fb",
+	.probe	= omapfb_probe,
+};
+
+static int omapfb_init(void)
+{
+	return platform_driver_register(&omapfb_driver);
+}
+
+device_initcall(omapfb_init);
diff --git a/drivers/video/omap.h b/drivers/video/omap.h
new file mode 100644
index 0000000..ac9e1ce
--- /dev/null
+++ b/drivers/video/omap.h
@@ -0,0 +1,187 @@
+/*
+ * TI Omap4 Frame Buffer device driver
+ *
+ * Copyright (C) 2013 Christoph Fritz <chf.fritz@googlemail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+
+#ifndef H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H
+#define H_BAREBOX_DRIVER_VIDEO_OMAP4_REGS_H
+
+#include <types.h>
+#include <common.h>
+
+#define OFB_TIMEOUT	(128 * USECOND)
+
+#define _ofb_read(io, reg)		__raw_readl((io)+(reg))
+#define _ofb_write(val, io, reg)	__raw_writel((val), (io)+(reg))
+
+/* TRM: 10.1.3.2 DSS Registers */
+#define O4_DSS_REVISION	0x0
+#define O4_DSS_SYSSTATUS	0x14
+#define O4_DSS_CTRL		0x40
+#define O4_DSS_STATUS		0x5c
+
+#define o4_dss_read(reg)		_ofb_read(fbi->dss, reg)
+#define o4_dss_write(val, reg)		_ofb_write(val, fbi->dss, reg)
+
+/* TRM: 10.2.7.3 Display Controller Registers */
+#define O4_DISPC_REVISION		0x0
+#define O4_DISPC_IRQSTATUS		0x18
+#define O4_DISPC_VID1_BA0		0xbc
+#define O4_DISPC_VID1_BA1		0xc0
+#define O4_DISPC_VID1_POSITION		0xc4
+#define O4_DISPC_VID1_SIZE		0xc8
+#define O4_DISPC_VID1_ATTRIBUTES	0xcc
+#define O4_DISPC_VID1_ROW_INC		0xd8
+#define O4_DISPC_VID1_PIXEL_INC	0xdc
+#define O4_DISPC_VID1_PICTURE_SIZE	0xe4
+#define O4_DISPC_VID1_PRELOAD		0x230
+#define O4_DISPC_CONTROL2		0x238
+#define O4_DISPC_DEFAULT_COLOR2	0x3ac
+#define O4_DISPC_SIZE_LCD2		0x3cc
+#define O4_DISPC_TIMING_H2		0x400
+#define O4_DISPC_TIMING_V2		0x404
+#define O4_DISPC_POL_FREQ2		0x408
+#define O4_DISPC_DIVISOR2		0x40c
+#define O4_DISPC_DIVISOR		0x804
+
+#define o4_dispc_read(reg)		_ofb_read(fbi->dispc, reg)
+#define o4_dispc_write(val, reg)	_ofb_write(val, fbi->dispc, reg)
+
+#define DSS_DISPC_VIDn_POSITION_VIDPOSX(_x)		((_x) << 0)
+#define DSS_DISPC_VIDn_POSITION_VIDPOSY(_y)		((_y) << 16)
+
+#define DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEX(_x)	((_x) << 0)
+#define DSS_DISPC_VIDn_PICTURE_SIZE_VIDORGSIZEY(_y)	((_y) << 16)
+
+#define DSS_DISPC_VIDn_SIZE_VIDSIZEX(_x)		((_x) << 0)
+#define DSS_DISPC_VIDn_SIZE_VIDSIZEY(_y)		((_y) << 16)
+
+#define DSS_DISPC_SIZE_LCD_PPL(_x)			((_x) << 0)
+#define DSS_DISPC_SIZE_LCD_LPP(_y)			((_y) << 16)
+
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDENABLE		(1u << 0)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(_fmt)	((_fmt) << 1)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB12	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(4u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB16	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(5u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB16	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(6u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB16o	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(7u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_xRGB24u	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(8u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGB24p	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(9u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_YUV2	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(10u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_UYVY	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(11u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_ARGB32	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(12u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_RGBA32	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(13u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT_xRGB32	\
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(14u)
+
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(_b)	((_b) << 14)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_2x128 \
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(0u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_4x128 \
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(1u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 \
+	DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE(2u)
+
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDCHANNELOUT	(1u << 16)
+#define DSS_DISPC_VIDn_ATTRIBUTES_SELFREFRESHAUTO	(1u << 17)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDFIFOPRELOAD	(1u << 19)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDVERTICALTAPS	(1u << 21)
+#define DSS_DISPC_VIDn_ATTRIBUTES_DOUBLESTRIDE		(1u << 22)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDARBITRATION	(1u << 23)
+#define DSS_DISPC_VIDn_ATTRIBUTES_VIDSELFREFRESH	(1u << 24)
+#define DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE		(1u << 25)
+
+#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(_b)  ((_b) << 30)
+#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_PRIMARY_LCD \
+	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(0u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD \
+	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(1u)
+#define DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_WRITEBACK_MEM \
+	DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2(3u)
+
+#define DSS_DISPC_CONTROL_LCDENABLE			(1u << 0)
+#define DSS_DISPC_CONTROL_TVENABLE			(1u << 1)
+#define DSS_DISPC_CONTROL_MONOCOLOR			(1u << 2)
+#define DSS_DISPC_CONTROL_STNTFT			(1u << 3)
+#define DSS_DISPC_CONTROL_M8B				(1u << 4)
+#define DSS_DISPC_CONTROL_GOLCD			(1u << 5)
+#define DSS_DISPC_CONTROL_GOTV				(1u << 6)
+#define DSS_DISPC_CONTROL_STDITHERENABLE		(1u << 7)
+
+#define DSS_DISPC_CONTROL_TFTDATALINES(_l)		((_l) << 8)
+#define DSS_DISPC_CONTROL_TFTDATALINES_12 \
+	DSS_DISPC_CONTROL_TFTDATALINES(0u)
+#define DSS_DISPC_CONTROL_TFTDATALINES_16 \
+	DSS_DISPC_CONTROL_TFTDATALINES(1u)
+#define DSS_DISPC_CONTROL_TFTDATALINES_18 \
+	DSS_DISPC_CONTROL_TFTDATALINES(2u)
+#define DSS_DISPC_CONTROL_TFTDATALINES_24 \
+	DSS_DISPC_CONTROL_TFTDATALINES(3u)
+
+#define DSS_DISPC_CONTROL_STALLMODE			(1u << 11)
+#define DSS_DISPC_CONTROL_OVERLAYOPTIMIZATION		(1u << 12)
+#define DSS_DISPC_CONTROL_GPIN0			(1u << 13) /* ro */
+#define DSS_DISPC_CONTROL_GPIN1			(1u << 14) /* ro */
+#define DSS_DISPC_CONTROL_GPOUT0			(1u << 15)
+#define DSS_DISPC_CONTROL_GPOUT1			(1u << 16)
+#define DSS_DISPC_CONTROL_HT(_ht)			((_ht) << 17)
+#define DSS_DISPC_CONTROL_TDMENABLE			(1u << 20)
+#define DSS_DISPC_CONTROL_TDMPARALLELMODE(_pm)		((_pm) << 21)
+#define DSS_DISPC_CONTROL_TDMCYCLEFORMAT(_cf)		((_cf) << 23)
+#define DSS_DISPC_CONTROL_TDMUNUSEDBITS(_ub)		((_ub) << 25)
+#define DSS_DISPC_CONTROL_PCKFREEENABLE		(1u << 27)
+#define DSS_DISPC_CONTROL_LCDENABLESIGNAL		(1u << 28)
+#define DSS_DISPC_CONTROL_LCDENABLEPOL			(1u << 29)
+#define DSS_DISPC_CONTROL_SPATIALTEMPD(_df)		((_df) << 30)
+
+#define DSS_DISPC_POL_FREQ_IVS				(1u << 12)
+#define DSS_DISPC_POL_FREQ_IHS				(1u << 13)
+#define DSS_DISPC_POL_FREQ_IPC				(1u << 14)
+#define DSS_DISPC_POL_FREQ_IEO				(1u << 15)
+#define DSS_DISPC_POL_FREQ_RF				(1u << 16)
+#define DSS_DISPC_POL_FREQ_ONOFF			(1u << 17)
+
+#define DSS_DISPC_TIMING_H_HSW(_hsw)			((_hsw) << 0)
+#define DSS_DISPC_TIMING_H_HFP(_hfp)			((_hfp) << 8)
+#define DSS_DISPC_TIMING_H_HBP(_hbp)			((_hbp) << 20)
+
+#define DSS_DISPC_TIMING_V_VSW(_vsw)			((_vsw) << 0)
+#define DSS_DISPC_TIMING_V_VFP(_vfp)			((_vfp) << 8)
+#define DSS_DISPC_TIMING_V_VBP(_vbp)			((_vbp) << 20)
+
+#define DSS_DISPC_DIVISOR_ENABLE			(1u << 0)
+#define DSS_DISPC_DIVISOR_LCD(_lcd)			((_lcd) << 16)
+
+#define DSS_DISPC_DIVISOR2_PCD(_pcd)			((_pcd) << 0)
+#define DSS_DISPC_DIVISOR2_LCD(_lcd)			((_lcd) << 16)
+
+#define DSS_DISPC_IRQSTATUS_FRAMEDONE			(1u << 0)
+#define DSS_DISPC_IRQSTATUS_FRAMEDONE2			(1u << 22)
+
+#define DSS_DSS_SYSSTATUS_RESETDONE			(1u << 0)
+
+#endif	/* H_BAREBOX_DRIVER_VIDEO_O4_REGS_H */
-- 
1.7.10.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
