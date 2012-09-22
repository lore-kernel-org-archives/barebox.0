Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFUS8-00081O-0n
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 18:29:22 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5EE5CFF9FA9
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 20:35:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 20:26:44 +0200
Message-Id: <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120922175346.GX26553@game.jcrosoft.org>
References: <20120922175346.GX26553@game.jcrosoft.org>
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
Subject: [PATCH 1/5] video: add atmel lcdc frambuffer support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

This IP is present on the at91sam9 until the sam9g45, on the sam9x5 we use a
new IP.

This driver is based on the linux one.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/include/mach/board.h |    4 +
 drivers/video/Kconfig                   |    4 +
 drivers/video/Makefile                  |    1 +
 drivers/video/atmel_lcdfb.c             |  480 +++++++++++++++++++++++++++++++
 include/video/atmel_lcdc.h              |  211 ++++++++++++++
 5 files changed, 700 insertions(+)
 create mode 100644 drivers/video/atmel_lcdfb.c
 create mode 100644 include/video/atmel_lcdc.h

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 670c73d..dccc37a 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -23,6 +23,8 @@
 #include <net.h>
 #include <spi/spi.h>
 #include <linux/mtd/mtd.h>
+#include <fb.h>
+#include <video/atmel_lcdc.h>
 
  /* USB Host */
 struct at91_usbh_data {
@@ -154,4 +156,6 @@ struct at91_spi_platform_data {
 };
 
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata);
+
+void __init at91_add_device_lcdc(struct atmel_lcdfb_info *data);
 #endif
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 519cdbf..38dbb7a 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -5,6 +5,10 @@ menuconfig VIDEO
 
 if VIDEO
 
+config DRIVER_VIDEO_ATMEL
+	bool "Atmel LCDC framebuffer driver"
+	depends on ARCH_AT91
+
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
 	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 913c78d..dcadcf6 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
+obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
new file mode 100644
index 0000000..cdd3c37
--- /dev/null
+++ b/drivers/video/atmel_lcdfb.c
@@ -0,0 +1,480 @@
+/*
+ * Driver for AT91/AT32 LCD Controller
+ *
+ * Copyright (C) 2007 Atmel Corporation
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <fb.h>
+#include <video/atmel_lcdc.h>
+#include <mach/hardware.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <malloc.h>
+#include <asm/mmu.h>
+
+#define lcdc_readl(sinfo, reg)		__raw_readl((sinfo)->mmio+(reg))
+#define lcdc_writel(sinfo, reg, val)	__raw_writel((val), (sinfo)->mmio+(reg))
+
+/* configurable parameters */
+#define ATMEL_LCDC_CVAL_DEFAULT		0xc8
+#define ATMEL_LCDC_DMA_BURST_LEN	8	/* words */
+#define ATMEL_LCDC_FIFO_SIZE		512	/* words */
+
+static void atmel_lcdfb_start_clock(struct atmel_lcdfb_info *sinfo)
+{
+	clk_enable(sinfo->bus_clk);
+	clk_enable(sinfo->lcdc_clk);
+}
+
+static void atmel_lcdfb_stop_clock(struct atmel_lcdfb_info *sinfo)
+{
+	clk_disable(sinfo->bus_clk);
+	clk_disable(sinfo->lcdc_clk);
+}
+
+static unsigned long compute_hozval(unsigned long xres, unsigned long lcdcon2)
+{
+	unsigned long value;
+
+	if (!(cpu_is_at91sam9261() || cpu_is_at91sam9g10()
+		|| cpu_is_at32ap7000()))
+		return xres;
+
+	value = xres;
+	if ((lcdcon2 & ATMEL_LCDC_DISTYPE) != ATMEL_LCDC_DISTYPE_TFT) {
+		/* STN display */
+		if ((lcdcon2 & ATMEL_LCDC_DISTYPE) == ATMEL_LCDC_DISTYPE_STNCOLOR)
+			value *= 3;
+
+		if ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_4
+		   || ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_8
+		      && (lcdcon2 & ATMEL_LCDC_SCANMOD) == ATMEL_LCDC_SCANMOD_DUAL ))
+			value = DIV_ROUND_UP(value, 4);
+		else
+			value = DIV_ROUND_UP(value, 8);
+	}
+
+	return value;
+}
+
+static void atmel_lcdfb_stop_nowait(struct atmel_lcdfb_info *sinfo)
+{
+	/* Turn off the LCD controller and the DMA controller */
+	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
+			sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET);
+
+	/* Wait for the LCDC core to become idle */
+	while (lcdc_readl(sinfo, ATMEL_LCDC_PWRCON) & ATMEL_LCDC_BUSY)
+		mdelay(10);
+
+	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, 0);
+}
+
+static void atmel_lcdfb_stop(struct atmel_lcdfb_info *sinfo)
+{
+	atmel_lcdfb_stop_nowait(sinfo);
+
+	/* Wait for DMA engine to become idle... */
+	while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
+		mdelay(10);
+}
+
+static void atmel_lcdfb_start(struct atmel_lcdfb_info *sinfo)
+{
+	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, sinfo->default_dmacon);
+	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
+		(sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
+		| ATMEL_LCDC_PWR);
+}
+
+/**
+ * @param fb_info Framebuffer information
+ */
+static void atmel_lcdc_enable_controller(struct fb_info *fb_info)
+{
+	struct atmel_lcdfb_info *sinfo = fb_info->priv;
+
+	if (sinfo->atmel_lcdfb_power_control)
+		sinfo->atmel_lcdfb_power_control(1);
+}
+
+/**
+ * @param fb_info Framebuffer information
+ */
+static void atmel_lcdc_disable_controller(struct fb_info *fb_info)
+{
+	struct atmel_lcdfb_info *sinfo = fb_info->priv;
+
+	if (sinfo->atmel_lcdfb_power_control)
+		sinfo->atmel_lcdfb_power_control(0);
+}
+
+static void atmel_lcdfb_update_dma(struct fb_info *info)
+{
+	struct atmel_lcdfb_info *sinfo = info->priv;
+	unsigned long dma_addr;
+
+	dma_addr = (unsigned long)info->screen_base;
+
+	dma_addr &= ~3UL;
+
+	/* Set framebuffer DMA base address and pixel offset */
+	lcdc_writel(sinfo, ATMEL_LCDC_DMABADDR1, dma_addr);
+}
+
+static void atmel_lcdfb_set_par(struct fb_info *info)
+{
+	struct atmel_lcdfb_info *sinfo = info->priv;
+	struct fb_videomode *mode = info->mode;
+	unsigned long clk_value_khz;
+	unsigned long value;
+	unsigned long pix_factor = 2;
+	unsigned long hozval_linesz;
+
+	atmel_lcdfb_stop(sinfo);
+
+	/* Re-initialize the DMA engine... */
+	dev_dbg(&info->dev, "  * update DMA engine\n");
+	atmel_lcdfb_update_dma(info);
+
+	/* ...set frame size and burst length = 8 words (?) */
+	value = (mode->yres * mode->xres * info->bits_per_pixel) / 32;
+	value |= ((ATMEL_LCDC_DMA_BURST_LEN - 1) << ATMEL_LCDC_BLENGTH_OFFSET);
+	lcdc_writel(sinfo, ATMEL_LCDC_DMAFRMCFG, value);
+
+	/* Now, the LCDC core... */
+
+	/* Set pixel clock */
+	if (cpu_is_at91sam9g45() && !cpu_is_at91sam9g45es())
+		pix_factor = 1;
+
+	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
+
+	value = DIV_ROUND_UP(clk_value_khz, PICOS2KHZ(mode->pixclock));
+
+	if (value < pix_factor) {
+		dev_notice(&info->dev, "Bypassing pixel clock divider\n");
+		lcdc_writel(sinfo, ATMEL_LCDC_LCDCON1, ATMEL_LCDC_BYPASS);
+	} else {
+		value = (value / pix_factor) - 1;
+		dev_dbg(&info->dev, "  * programming CLKVAL = 0x%08lx\n",
+				value);
+		lcdc_writel(sinfo, ATMEL_LCDC_LCDCON1,
+				value << ATMEL_LCDC_CLKVAL_OFFSET);
+		mode->pixclock =
+			KHZ2PICOS(clk_value_khz / (pix_factor * (value + 1)));
+		dev_dbg(&info->dev, "  updated pixclk:     %lu KHz\n",
+					PICOS2KHZ(mode->pixclock));
+	}
+
+	/* Initialize control register 2 */
+	value = sinfo->default_lcdcon2;
+
+	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
+		value |= ATMEL_LCDC_INVLINE_INVERTED;
+	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
+		value |= ATMEL_LCDC_INVFRAME_INVERTED;
+
+	switch (info->bits_per_pixel) {
+		case 1:	value |= ATMEL_LCDC_PIXELSIZE_1; break;
+		case 2: value |= ATMEL_LCDC_PIXELSIZE_2; break;
+		case 4: value |= ATMEL_LCDC_PIXELSIZE_4; break;
+		case 8: value |= ATMEL_LCDC_PIXELSIZE_8; break;
+		case 15: /* fall through */
+		case 16: value |= ATMEL_LCDC_PIXELSIZE_16; break;
+		case 24: value |= ATMEL_LCDC_PIXELSIZE_24; break;
+		case 32: value |= ATMEL_LCDC_PIXELSIZE_32; break;
+		default: BUG(); break;
+	}
+	dev_dbg(&info->dev, "  * LCDCON2 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCON2, value);
+
+	/* Vertical timing */
+	value = (mode->vsync_len - 1) << ATMEL_LCDC_VPW_OFFSET;
+	value |= mode->upper_margin << ATMEL_LCDC_VBP_OFFSET;
+	value |= mode->lower_margin;
+	dev_dbg(&info->dev, "  * LCDTIM1 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_TIM1, value);
+
+	/* Horizontal timing */
+	value = (mode->right_margin - 1) << ATMEL_LCDC_HFP_OFFSET;
+	value |= (mode->hsync_len - 1) << ATMEL_LCDC_HPW_OFFSET;
+	value |= (mode->left_margin - 1);
+	dev_dbg(&info->dev, "  * LCDTIM2 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_TIM2, value);
+
+	/* Horizontal value (aka line size) */
+	hozval_linesz = compute_hozval(mode->xres,
+					lcdc_readl(sinfo, ATMEL_LCDC_LCDCON2));
+
+	/* Display size */
+	value = (hozval_linesz - 1) << ATMEL_LCDC_HOZVAL_OFFSET;
+	value |= mode->yres - 1;
+	dev_dbg(&info->dev, "  * LCDFRMCFG = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDFRMCFG, value);
+
+	/* FIFO Threshold: Use formula from data sheet */
+	value = ATMEL_LCDC_FIFO_SIZE - (2 * ATMEL_LCDC_DMA_BURST_LEN + 3);
+	lcdc_writel(sinfo, ATMEL_LCDC_FIFO, value);
+
+	/* Toggle LCD_MODE every frame */
+	lcdc_writel(sinfo, ATMEL_LCDC_MVAL, 0);
+
+	/* Disable all interrupts */
+	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0UL);
+
+	/* Enable FIFO & DMA errors */
+	lcdc_writel(sinfo, ATMEL_LCDC_IER, ATMEL_LCDC_UFLWI | ATMEL_LCDC_OWRI | ATMEL_LCDC_MERI);
+
+	/* ...wait for DMA engine to become idle... */
+	while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
+		mdelay(10);
+
+	atmel_lcdfb_start(sinfo);
+
+	dev_dbg(&info->dev, "  * DONE\n");
+}
+
+static int atmel_lcdfb_check_var(struct fb_info *info)
+{
+	struct device_d *dev = &info->dev;
+	struct atmel_lcdfb_info *sinfo = info->priv;
+	struct fb_videomode *mode = info->mode;
+	unsigned long clk_value_khz;
+
+	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
+
+	dev_dbg(dev, "%s:\n", __func__);
+
+	if (!(mode->pixclock && info->bits_per_pixel)) {
+		dev_err(dev, "needed value not specified\n");
+		return -EINVAL;
+	}
+
+	dev_dbg(dev, "  resolution: %ux%u\n", mode->xres, mode->yres);
+	dev_dbg(dev, "  pixclk:     %lu KHz\n", PICOS2KHZ(mode->pixclock));
+	dev_dbg(dev, "  bpp:        %u\n", info->bits_per_pixel);
+	dev_dbg(dev, "  clk:        %lu KHz\n", clk_value_khz);
+
+	if (PICOS2KHZ(mode->pixclock) > clk_value_khz) {
+		dev_err(dev, "%lu KHz pixel clock is too fast\n", PICOS2KHZ(mode->pixclock));
+		return -EINVAL;
+	}
+
+	/* Saturate vertical and horizontal timings at maximum values */
+	mode->vsync_len = min_t(u32, mode->vsync_len,
+			(ATMEL_LCDC_VPW >> ATMEL_LCDC_VPW_OFFSET) + 1);
+	mode->upper_margin = min_t(u32, mode->upper_margin,
+			ATMEL_LCDC_VBP >> ATMEL_LCDC_VBP_OFFSET);
+	mode->lower_margin = min_t(u32, mode->lower_margin,
+			ATMEL_LCDC_VFP);
+	mode->right_margin = min_t(u32, mode->right_margin,
+			(ATMEL_LCDC_HFP >> ATMEL_LCDC_HFP_OFFSET) + 1);
+	mode->hsync_len = min_t(u32, mode->hsync_len,
+			(ATMEL_LCDC_HPW >> ATMEL_LCDC_HPW_OFFSET) + 1);
+	mode->left_margin = min_t(u32, mode->left_margin,
+			ATMEL_LCDC_HBP + 1);
+
+	/* Some parameters can't be zero */
+	mode->vsync_len = max_t(u32, mode->vsync_len, 1);
+	mode->right_margin = max_t(u32, mode->right_margin, 1);
+	mode->hsync_len = max_t(u32, mode->hsync_len, 1);
+	mode->left_margin = max_t(u32, mode->left_margin, 1);
+
+	switch (info->bits_per_pixel) {
+	case 1:
+	case 2:
+	case 4:
+	case 8:
+		info->red.offset = info->green.offset = info->blue.offset = 0;
+		info->red.length = info->green.length = info->blue.length
+			= info->bits_per_pixel;
+		break;
+	case 16:
+		if (sinfo->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
+			/* RGB:565 mode */
+			info->red.offset = 11;
+			info->blue.offset = 0;
+		} else {
+			/* BGR:565 mode */
+			info->red.offset = 0;
+			info->blue.offset = 11;
+		}
+		info->green.offset = 5;
+		info->green.length = 6;
+		info->red.length = info->blue.length = 5;
+		break;
+	case 32:
+		info->transp.offset = 24;
+		info->transp.length = 8;
+		/* fall through */
+	case 24:
+		if (sinfo->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
+			/* RGB:888 mode */
+			info->red.offset = 16;
+			info->blue.offset = 0;
+		} else {
+			/* BGR:888 mode */
+			info->red.offset = 0;
+			info->blue.offset = 16;
+		}
+		info->green.offset = 8;
+		info->red.length = info->green.length = info->blue.length = 8;
+		break;
+	default:
+		dev_err(dev, "color depth %d not supported\n",
+					info->bits_per_pixel);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
+{
+	struct fb_info *info = sinfo->info;
+	struct fb_videomode *mode = info->mode;
+	unsigned int smem_len;
+
+	free(info->screen_base);
+
+	smem_len = (mode->xres * mode->yres
+		    * ((info->bits_per_pixel + 7) / 8));
+	smem_len = max(smem_len, sinfo->smem_len);
+
+	info->screen_base = dma_alloc_coherent(smem_len);
+
+	if (!info->screen_base)
+		return -ENOMEM;
+
+	memset(info->screen_base, 0, smem_len);
+
+	return 0;
+}
+
+/**
+ * Prepare the video hardware for a specified video mode
+ * @param fb_info Framebuffer information
+ * @param mode The video mode description to initialize
+ * @return 0 on success
+ */
+static int atmel_lcdc_activate_var(struct fb_info *info)
+{
+	struct atmel_lcdfb_info *sinfo = info->priv;
+	unsigned long value;
+	int ret;
+
+	ret = atmel_lcdfb_alloc_video_memory(sinfo);
+	if (ret)
+		return ret;
+
+	atmel_lcdfb_set_par(info);
+
+	/* Set contrast */
+	value = ATMEL_LCDC_PS_DIV8 |
+		ATMEL_LCDC_POL_POSITIVE |
+		ATMEL_LCDC_ENA_PWMENABLE;
+	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_CTR, value);
+	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_VAL, ATMEL_LCDC_CVAL_DEFAULT);
+
+	return atmel_lcdfb_check_var(info);
+}
+
+/*
+ * There is only one video hardware instance available.
+ * It makes no sense to dynamically allocate this data
+ */
+static struct fb_ops atmel_lcdc_ops = {
+	.fb_activate_var = atmel_lcdc_activate_var,
+	.fb_enable = atmel_lcdc_enable_controller,
+	.fb_disable = atmel_lcdc_disable_controller,
+};
+
+static int atmel_lcdc_probe(struct device_d *hw_dev)
+{
+	struct atmel_lcdfb_info *sinfo = hw_dev->platform_data;
+	int ret = 0;
+	struct fb_info *info;
+
+	if (!sinfo)
+		return -ENODEV;
+
+	sinfo->mmio = dev_request_mem_region(hw_dev, 0);
+
+	/* just init */
+	info = xzalloc(sizeof(struct fb_info));
+	sinfo->info = info;
+	info->priv = sinfo;
+	info->fbops = &atmel_lcdc_ops;
+	info->mode_list = sinfo->mode_list;
+	info->num_modes = sinfo->num_modes;
+	info->mode = &info->mode_list[0];
+	info->xres = info->mode->xres;
+	info->yres = info->mode->yres;
+	info->bits_per_pixel = sinfo->default_bpp;
+
+	/* Enable LCDC Clocks */
+	sinfo->bus_clk = clk_get(hw_dev, "hck1");
+	if (IS_ERR(sinfo->bus_clk)) {
+		ret = PTR_ERR(sinfo->bus_clk);
+		goto err;
+	}
+	sinfo->lcdc_clk = clk_get(hw_dev, "lcdc_clk");
+	if (IS_ERR(sinfo->lcdc_clk)) {
+		ret = PTR_ERR(sinfo->lcdc_clk);
+		goto put_bus_clk;
+	}
+
+	atmel_lcdfb_start_clock(sinfo);
+
+	ret = register_framebuffer(info);
+	if (ret != 0) {
+		dev_err(hw_dev, "Failed to register framebuffer\n");
+		goto stop_clk;
+	}
+
+	return ret;
+
+stop_clk:
+	atmel_lcdfb_stop_clock(sinfo);
+	clk_put(sinfo->lcdc_clk);
+put_bus_clk:
+	clk_put(sinfo->bus_clk);
+err:
+	return ret;
+}
+
+static struct driver_d atmel_lcdc_driver = {
+	.name	= "atmel_lcdfb",
+	.probe	= atmel_lcdc_probe,
+};
+
+static int atmel_lcdc_init(void)
+{
+	return register_driver(&atmel_lcdc_driver);
+}
+device_initcall(atmel_lcdc_init);
diff --git a/include/video/atmel_lcdc.h b/include/video/atmel_lcdc.h
new file mode 100644
index 0000000..1b3005f
--- /dev/null
+++ b/include/video/atmel_lcdc.h
@@ -0,0 +1,211 @@
+/*
+ *  Header file for AT91/AT32 LCD Controller
+ *
+ *  Data structure and register user interface
+ *
+ *  Copyright (C) 2007 Atmel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#ifndef __ATMEL_LCDC_H__
+#define __ATMEL_LCDC_H__
+
+/* Way LCD wires are connected to the chip:
+ * Some Atmel chips use BGR color mode (instead of standard RGB)
+ * A swapped wiring onboard can bring to RGB mode.
+ */
+#define ATMEL_LCDC_WIRING_BGR	0
+#define ATMEL_LCDC_WIRING_RGB	1
+#define ATMEL_LCDC_WIRING_RGB555	2
+
+
+ /* LCD Controller info data structure, stored in device platform_data */
+struct atmel_lcdfb_info {
+	struct fb_info		*info;
+	void __iomem		*mmio;
+	struct device_d		*device;
+
+	unsigned int		guard_time;
+	unsigned int		smem_len;
+	struct clk		*bus_clk;
+	struct clk		*lcdc_clk;
+
+	bool			lcdcon_is_backlight;
+	bool			lcdcon_pol_negative;
+	u8			saved_lcdcon;
+
+	u8			default_bpp;
+	u8			lcd_wiring_mode;
+	unsigned int		default_lcdcon2;
+	unsigned int		default_dmacon;
+	void (*atmel_lcdfb_power_control)(int on);
+	struct fb_videomode	*mode_list;
+	unsigned		num_modes;
+	u32			pseudo_palette[16];
+};
+
+#define ATMEL_LCDC_DMABADDR1	0x00
+#define ATMEL_LCDC_DMABADDR2	0x04
+#define ATMEL_LCDC_DMAFRMPT1	0x08
+#define ATMEL_LCDC_DMAFRMPT2	0x0c
+#define ATMEL_LCDC_DMAFRMADD1	0x10
+#define ATMEL_LCDC_DMAFRMADD2	0x14
+
+#define ATMEL_LCDC_DMAFRMCFG	0x18
+#define	ATMEL_LCDC_FRSIZE	(0x7fffff <<  0)
+#define	ATMEL_LCDC_BLENGTH_OFFSET	24
+#define	ATMEL_LCDC_BLENGTH	(0x7f     << ATMEL_LCDC_BLENGTH_OFFSET)
+
+#define ATMEL_LCDC_DMACON	0x1c
+#define	ATMEL_LCDC_DMAEN	(0x1 << 0)
+#define	ATMEL_LCDC_DMARST	(0x1 << 1)
+#define	ATMEL_LCDC_DMABUSY	(0x1 << 2)
+#define		ATMEL_LCDC_DMAUPDT	(0x1 << 3)
+#define		ATMEL_LCDC_DMA2DEN	(0x1 << 4)
+
+#define ATMEL_LCDC_DMA2DCFG	0x20
+#define		ATMEL_LCDC_ADDRINC_OFFSET	0
+#define		ATMEL_LCDC_ADDRINC		(0xffff)
+#define		ATMEL_LCDC_PIXELOFF_OFFSET	24
+#define		ATMEL_LCDC_PIXELOFF		(0x1f << 24)
+
+#define ATMEL_LCDC_LCDCON1	0x0800
+#define	ATMEL_LCDC_BYPASS	(1     <<  0)
+#define	ATMEL_LCDC_CLKVAL_OFFSET	12
+#define	ATMEL_LCDC_CLKVAL	(0x1ff << ATMEL_LCDC_CLKVAL_OFFSET)
+#define	ATMEL_LCDC_LINCNT	(0x7ff << 21)
+
+#define ATMEL_LCDC_LCDCON2	0x0804
+#define	ATMEL_LCDC_DISTYPE	(3 << 0)
+#define		ATMEL_LCDC_DISTYPE_STNMONO	(0 << 0)
+#define		ATMEL_LCDC_DISTYPE_STNCOLOR	(1 << 0)
+#define		ATMEL_LCDC_DISTYPE_TFT		(2 << 0)
+#define	ATMEL_LCDC_SCANMOD	(1 << 2)
+#define		ATMEL_LCDC_SCANMOD_SINGLE	(0 << 2)
+#define		ATMEL_LCDC_SCANMOD_DUAL		(1 << 2)
+#define	ATMEL_LCDC_IFWIDTH	(3 << 3)
+#define		ATMEL_LCDC_IFWIDTH_4		(0 << 3)
+#define		ATMEL_LCDC_IFWIDTH_8		(1 << 3)
+#define		ATMEL_LCDC_IFWIDTH_16		(2 << 3)
+#define	ATMEL_LCDC_PIXELSIZE	(7 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_1		(0 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_2		(1 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_4		(2 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_8		(3 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_16		(4 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_24		(5 << 5)
+#define		ATMEL_LCDC_PIXELSIZE_32		(6 << 5)
+#define	ATMEL_LCDC_INVVD	(1 << 8)
+#define		ATMEL_LCDC_INVVD_NORMAL		(0 << 8)
+#define		ATMEL_LCDC_INVVD_INVERTED	(1 << 8)
+#define	ATMEL_LCDC_INVFRAME	(1 << 9 )
+#define		ATMEL_LCDC_INVFRAME_NORMAL	(0 << 9)
+#define		ATMEL_LCDC_INVFRAME_INVERTED	(1 << 9)
+#define	ATMEL_LCDC_INVLINE	(1 << 10)
+#define		ATMEL_LCDC_INVLINE_NORMAL	(0 << 10)
+#define		ATMEL_LCDC_INVLINE_INVERTED	(1 << 10)
+#define	ATMEL_LCDC_INVCLK	(1 << 11)
+#define		ATMEL_LCDC_INVCLK_NORMAL	(0 << 11)
+#define		ATMEL_LCDC_INVCLK_INVERTED	(1 << 11)
+#define	ATMEL_LCDC_INVDVAL	(1 << 12)
+#define		ATMEL_LCDC_INVDVAL_NORMAL	(0 << 12)
+#define		ATMEL_LCDC_INVDVAL_INVERTED	(1 << 12)
+#define	ATMEL_LCDC_CLKMOD	(1 << 15)
+#define		ATMEL_LCDC_CLKMOD_ACTIVEDISPLAY	(0 << 15)
+#define		ATMEL_LCDC_CLKMOD_ALWAYSACTIVE	(1 << 15)
+#define	ATMEL_LCDC_MEMOR	(1 << 31)
+#define		ATMEL_LCDC_MEMOR_BIG		(0 << 31)
+#define		ATMEL_LCDC_MEMOR_LITTLE		(1 << 31)
+
+#define ATMEL_LCDC_TIM1		0x0808
+#define	ATMEL_LCDC_VFP		(0xffU <<  0)
+#define	ATMEL_LCDC_VBP_OFFSET		8
+#define	ATMEL_LCDC_VBP		(0xffU <<  ATMEL_LCDC_VBP_OFFSET)
+#define	ATMEL_LCDC_VPW_OFFSET		16
+#define	ATMEL_LCDC_VPW		(0x3fU << ATMEL_LCDC_VPW_OFFSET)
+#define	ATMEL_LCDC_VHDLY_OFFSET		24
+#define	ATMEL_LCDC_VHDLY	(0xfU  << ATMEL_LCDC_VHDLY_OFFSET)
+
+#define ATMEL_LCDC_TIM2		0x080c
+#define	ATMEL_LCDC_HBP		(0xffU  <<  0)
+#define	ATMEL_LCDC_HPW_OFFSET		8
+#define	ATMEL_LCDC_HPW		(0x3fU  <<  ATMEL_LCDC_HPW_OFFSET)
+#define	ATMEL_LCDC_HFP_OFFSET		21
+#define	ATMEL_LCDC_HFP		(0x7ffU << ATMEL_LCDC_HFP_OFFSET)
+
+#define ATMEL_LCDC_LCDFRMCFG	0x0810
+#define	ATMEL_LCDC_LINEVAL	(0x7ff <<  0)
+#define	ATMEL_LCDC_HOZVAL_OFFSET	21
+#define	ATMEL_LCDC_HOZVAL	(0x7ff << ATMEL_LCDC_HOZVAL_OFFSET)
+
+#define ATMEL_LCDC_FIFO		0x0814
+#define	ATMEL_LCDC_FIFOTH	(0xffff)
+
+#define ATMEL_LCDC_MVAL		0x0818
+
+#define ATMEL_LCDC_DP1_2	0x081c
+#define ATMEL_LCDC_DP4_7	0x0820
+#define ATMEL_LCDC_DP3_5	0x0824
+#define ATMEL_LCDC_DP2_3	0x0828
+#define ATMEL_LCDC_DP5_7	0x082c
+#define ATMEL_LCDC_DP3_4	0x0830
+#define ATMEL_LCDC_DP4_5	0x0834
+#define ATMEL_LCDC_DP6_7	0x0838
+#define	ATMEL_LCDC_DP1_2_VAL	(0xff)
+#define	ATMEL_LCDC_DP4_7_VAL	(0xfffffff)
+#define	ATMEL_LCDC_DP3_5_VAL	(0xfffff)
+#define	ATMEL_LCDC_DP2_3_VAL	(0xfff)
+#define	ATMEL_LCDC_DP5_7_VAL	(0xfffffff)
+#define	ATMEL_LCDC_DP3_4_VAL	(0xffff)
+#define	ATMEL_LCDC_DP4_5_VAL	(0xfffff)
+#define	ATMEL_LCDC_DP6_7_VAL	(0xfffffff)
+
+#define ATMEL_LCDC_PWRCON	0x083c
+#define	ATMEL_LCDC_PWR		(1    <<  0)
+#define	ATMEL_LCDC_GUARDT_OFFSET	1
+#define	ATMEL_LCDC_GUARDT	(0x7f <<  ATMEL_LCDC_GUARDT_OFFSET)
+#define	ATMEL_LCDC_BUSY		(1    << 31)
+
+#define ATMEL_LCDC_CONTRAST_CTR	0x0840
+#define	ATMEL_LCDC_PS		(3 << 0)
+#define		ATMEL_LCDC_PS_DIV1		(0 << 0)
+#define		ATMEL_LCDC_PS_DIV2		(1 << 0)
+#define		ATMEL_LCDC_PS_DIV4		(2 << 0)
+#define		ATMEL_LCDC_PS_DIV8		(3 << 0)
+#define	ATMEL_LCDC_POL		(1 << 2)
+#define		ATMEL_LCDC_POL_NEGATIVE		(0 << 2)
+#define		ATMEL_LCDC_POL_POSITIVE		(1 << 2)
+#define	ATMEL_LCDC_ENA		(1 << 3)
+#define		ATMEL_LCDC_ENA_PWMDISABLE	(0 << 3)
+#define		ATMEL_LCDC_ENA_PWMENABLE	(1 << 3)
+
+#define ATMEL_LCDC_CONTRAST_VAL	0x0844
+#define	ATMEL_LCDC_CVAL	(0xff)
+
+#define ATMEL_LCDC_IER		0x0848
+#define ATMEL_LCDC_IDR		0x084c
+#define ATMEL_LCDC_IMR		0x0850
+#define ATMEL_LCDC_ISR		0x0854
+#define ATMEL_LCDC_ICR		0x0858
+#define	ATMEL_LCDC_LNI		(1 << 0)
+#define	ATMEL_LCDC_LSTLNI	(1 << 1)
+#define	ATMEL_LCDC_EOFI		(1 << 2)
+#define	ATMEL_LCDC_UFLWI	(1 << 4)
+#define	ATMEL_LCDC_OWRI		(1 << 5)
+#define	ATMEL_LCDC_MERI		(1 << 6)
+
+#define ATMEL_LCDC_LUT(n)	(0x0c00 + ((n)*4))
+
+#endif /* __ATMEL_LCDC_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
