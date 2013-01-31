Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0ski-000891-0A
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:56:34 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 029EEFFAFAC
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:11:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 12:54:55 +0100
Message-Id: <1359633302-19419-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130131115046.GA26329@game.jcrosoft.org>
References: <20130131115046.GA26329@game.jcrosoft.org>
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
Subject: [PATCH 1/8] atmel_lcdfb: factorise common code between lcdc and new
 hlcdc IP
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/Makefile                             |    2 +-
 drivers/video/atmel_lcdfb.c                        |  313 +++-----------------
 drivers/video/atmel_lcdfb.h                        |   37 +++
 .../video/{atmel_lcdfb.c => atmel_lcdfb_core.c}    |  259 ++--------------
 4 files changed, 102 insertions(+), 509 deletions(-)
 create mode 100644 drivers/video/atmel_lcdfb.h
 copy drivers/video/{atmel_lcdfb.c => atmel_lcdfb_core.c} (53%)

diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 1953307..724ef99 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,6 +1,6 @@
 obj-$(CONFIG_VIDEO) += fb.o
 
-obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o
+obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 3a49688..736b25e 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -25,50 +25,19 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
-#include <linux/clk.h>
-#include <fb.h>
-#include <video/atmel_lcdc.h>
 #include <mach/hardware.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <errno.h>
-#include <linux/err.h>
-#include <malloc.h>
 #include <asm/mmu.h>
 
-struct atmel_lcdfb_info {
-	struct fb_info		info;
-	void __iomem		*mmio;
-	struct device_d		*device;
-
-	unsigned int		guard_time;
-	unsigned int		smem_len;
-	struct clk		*bus_clk;
-	struct clk		*lcdc_clk;
-
-	struct atmel_lcdfb_platform_data *pdata;
-};
-
-#define lcdc_readl(sinfo, reg)		__raw_readl((sinfo)->mmio+(reg))
-#define lcdc_writel(sinfo, reg, val)	__raw_writel((val), (sinfo)->mmio+(reg))
+#include "atmel_lcdfb.h"
 
 /* configurable parameters */
 #define ATMEL_LCDC_CVAL_DEFAULT		0xc8
 #define ATMEL_LCDC_DMA_BURST_LEN	8	/* words */
 #define ATMEL_LCDC_FIFO_SIZE		512	/* words */
 
-static void atmel_lcdfb_start_clock(struct atmel_lcdfb_info *sinfo)
-{
-	clk_enable(sinfo->bus_clk);
-	clk_enable(sinfo->lcdc_clk);
-}
-
-static void atmel_lcdfb_stop_clock(struct atmel_lcdfb_info *sinfo)
-{
-	clk_disable(sinfo->bus_clk);
-	clk_disable(sinfo->lcdc_clk);
-}
-
 static unsigned long compute_hozval(unsigned long xres, unsigned long lcdcon2)
 {
 	unsigned long value;
@@ -94,7 +63,7 @@ static unsigned long compute_hozval(unsigned long xres, unsigned long lcdcon2)
 	return value;
 }
 
-static void atmel_lcdfb_stop_nowait(struct atmel_lcdfb_info *sinfo)
+static void atmel_lcdfb_stop(struct atmel_lcdfb_info *sinfo, u32 flags)
 {
 	/* Turn off the LCD controller and the DMA controller */
 	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
@@ -105,11 +74,9 @@ static void atmel_lcdfb_stop_nowait(struct atmel_lcdfb_info *sinfo)
 		mdelay(10);
 
 	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, 0);
-}
-
-static void atmel_lcdfb_stop(struct atmel_lcdfb_info *sinfo)
-{
-	atmel_lcdfb_stop_nowait(sinfo);
+	
+	if (flags & ATMEL_LCDC_STOP_NOWAIT)
+		return;
 
 	/* Wait for DMA engine to become idle... */
 	while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
@@ -126,31 +93,6 @@ static void atmel_lcdfb_start(struct atmel_lcdfb_info *sinfo)
 		| ATMEL_LCDC_PWR);
 }
 
-static void atmel_lcdc_power_controller(struct fb_info *fb_info, int i)
-{
-	struct atmel_lcdfb_info *sinfo = fb_info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
-
-	if (pdata->atmel_lcdfb_power_control)
-		pdata->atmel_lcdfb_power_control(1);
-}
-
-/**
- * @param fb_info Framebuffer information
- */
-static void atmel_lcdc_enable_controller(struct fb_info *fb_info)
-{
-	atmel_lcdc_power_controller(fb_info, 1);
-}
-
-/**
- * @param fb_info Framebuffer information
- */
-static void atmel_lcdc_disable_controller(struct fb_info *fb_info)
-{
-	atmel_lcdc_power_controller(fb_info, 0);
-}
-
 static void atmel_lcdfb_update_dma(struct fb_info *info)
 {
 	struct atmel_lcdfb_info *sinfo = info->priv;
@@ -164,29 +106,39 @@ static void atmel_lcdfb_update_dma(struct fb_info *info)
 	lcdc_writel(sinfo, ATMEL_LCDC_DMABADDR1, dma_addr);
 }
 
-static void atmel_lcdfb_set_par(struct fb_info *info)
+static void atmel_lcdfb_limit_screeninfo(struct fb_videomode *mode)
+{
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
+}
+
+static void atmel_lcdfb_setup_core(struct fb_info *info)
 {
 	struct atmel_lcdfb_info *sinfo = info->priv;
 	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
 	struct fb_videomode *mode = info->mode;
 	unsigned long clk_value_khz;
-	unsigned long value;
 	unsigned long pix_factor = 2;
 	unsigned long hozval_linesz;
-
-	atmel_lcdfb_stop(sinfo);
-
-	/* Re-initialize the DMA engine... */
-	dev_dbg(&info->dev, "  * update DMA engine\n");
-	atmel_lcdfb_update_dma(info);
+	unsigned long value;
 
 	/* ...set frame size and burst length = 8 words (?) */
 	value = (mode->yres * mode->xres * info->bits_per_pixel) / 32;
 	value |= ((ATMEL_LCDC_DMA_BURST_LEN - 1) << ATMEL_LCDC_BLENGTH_OFFSET);
 	lcdc_writel(sinfo, ATMEL_LCDC_DMAFRMCFG, value);
 
-	/* Now, the LCDC core... */
-
 	/* Set pixel clock */
 	if (cpu_is_at91sam9g45() && !cpu_is_at91sam9g45es())
 		pix_factor = 1;
@@ -271,228 +223,31 @@ static void atmel_lcdfb_set_par(struct fb_info *info)
 	/* ...wait for DMA engine to become idle... */
 	while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
 		mdelay(10);
-
-	atmel_lcdfb_start(sinfo);
-
-	dev_dbg(&info->dev, "  * DONE\n");
 }
 
-static int atmel_lcdfb_check_var(struct fb_info *info)
+static void atmel_lcdfb_init_contrast(struct atmel_lcdfb_info *sinfo)
 {
-	struct device_d *dev = &info->dev;
-	struct atmel_lcdfb_info *sinfo = info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
-	struct fb_videomode *mode = info->mode;
-	unsigned long clk_value_khz;
-
-	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
-
-	dev_dbg(dev, "%s:\n", __func__);
-
-	if (!(mode->pixclock && info->bits_per_pixel)) {
-		dev_err(dev, "needed value not specified\n");
-		return -EINVAL;
-	}
-
-	dev_dbg(dev, "  resolution: %ux%u\n", mode->xres, mode->yres);
-	dev_dbg(dev, "  pixclk:     %lu KHz\n", PICOS2KHZ(mode->pixclock));
-	dev_dbg(dev, "  bpp:        %u\n", info->bits_per_pixel);
-	dev_dbg(dev, "  clk:        %lu KHz\n", clk_value_khz);
-
-	if (PICOS2KHZ(mode->pixclock) > clk_value_khz) {
-		dev_err(dev, "%lu KHz pixel clock is too fast\n", PICOS2KHZ(mode->pixclock));
-		return -EINVAL;
-	}
-
-	/* Saturate vertical and horizontal timings at maximum values */
-	mode->vsync_len = min_t(u32, mode->vsync_len,
-			(ATMEL_LCDC_VPW >> ATMEL_LCDC_VPW_OFFSET) + 1);
-	mode->upper_margin = min_t(u32, mode->upper_margin,
-			ATMEL_LCDC_VBP >> ATMEL_LCDC_VBP_OFFSET);
-	mode->lower_margin = min_t(u32, mode->lower_margin,
-			ATMEL_LCDC_VFP);
-	mode->right_margin = min_t(u32, mode->right_margin,
-			(ATMEL_LCDC_HFP >> ATMEL_LCDC_HFP_OFFSET) + 1);
-	mode->hsync_len = min_t(u32, mode->hsync_len,
-			(ATMEL_LCDC_HPW >> ATMEL_LCDC_HPW_OFFSET) + 1);
-	mode->left_margin = min_t(u32, mode->left_margin,
-			ATMEL_LCDC_HBP + 1);
-
-	/* Some parameters can't be zero */
-	mode->vsync_len = max_t(u32, mode->vsync_len, 1);
-	mode->right_margin = max_t(u32, mode->right_margin, 1);
-	mode->hsync_len = max_t(u32, mode->hsync_len, 1);
-	mode->left_margin = max_t(u32, mode->left_margin, 1);
-
-	switch (info->bits_per_pixel) {
-	case 1:
-	case 2:
-	case 4:
-	case 8:
-		info->red.offset = info->green.offset = info->blue.offset = 0;
-		info->red.length = info->green.length = info->blue.length
-			= info->bits_per_pixel;
-		break;
-	case 16:
-		/* Older SOCs use IBGR:555 rather than BGR:565. */
-		if (pdata->have_intensity_bit)
-			info->green.length = 5;
-		else
-			info->green.length = 6;
-		if (pdata->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
-			/* RGB:5X5 mode */
-			info->red.offset = info->green.length + 5;
-			info->blue.offset = 0;
-		} else {
-			/* BGR:5X5 mode */
-			info->red.offset = 0;
-			info->blue.offset = info->green.length + 5;
-		}
-		info->green.offset = 5;
-		info->red.length = info->blue.length = 5;
-		break;
-	case 32:
-		info->transp.offset = 24;
-		info->transp.length = 8;
-		/* fall through */
-	case 24:
-		if (pdata->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
-			/* RGB:888 mode */
-			info->red.offset = 16;
-			info->blue.offset = 0;
-		} else {
-			/* BGR:888 mode */
-			info->red.offset = 0;
-			info->blue.offset = 16;
-		}
-		info->green.offset = 8;
-		info->red.length = info->green.length = info->blue.length = 8;
-		break;
-	default:
-		dev_err(dev, "color depth %d not supported\n",
-					info->bits_per_pixel);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
-{
-	struct fb_info *info = &sinfo->info;
-	struct fb_videomode *mode = info->mode;
-	unsigned int smem_len;
-
-	free(info->screen_base);
-
-	smem_len = (mode->xres * mode->yres
-		    * ((info->bits_per_pixel + 7) / 8));
-	smem_len = max(smem_len, sinfo->smem_len);
-
-	info->screen_base = dma_alloc_coherent(smem_len);
-
-	if (!info->screen_base)
-		return -ENOMEM;
-
-	memset(info->screen_base, 0, smem_len);
-
-	return 0;
-}
-
-/**
- * Prepare the video hardware for a specified video mode
- * @param fb_info Framebuffer information
- * @param mode The video mode description to initialize
- * @return 0 on success
- */
-static int atmel_lcdc_activate_var(struct fb_info *info)
-{
-	struct atmel_lcdfb_info *sinfo = info->priv;
 	unsigned long value;
-	int ret;
-
-	ret = atmel_lcdfb_alloc_video_memory(sinfo);
-	if (ret)
-		return ret;
 
-	atmel_lcdfb_set_par(info);
-
-	/* Set contrast */
 	value = ATMEL_LCDC_PS_DIV8 |
 		ATMEL_LCDC_POL_POSITIVE |
 		ATMEL_LCDC_ENA_PWMENABLE;
 	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_CTR, value);
 	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_VAL, ATMEL_LCDC_CVAL_DEFAULT);
-
-	return atmel_lcdfb_check_var(info);
 }
 
-/*
- * There is only one video hardware instance available.
- * It makes no sense to dynamically allocate this data
- */
-static struct fb_ops atmel_lcdc_ops = {
-	.fb_activate_var = atmel_lcdc_activate_var,
-	.fb_enable = atmel_lcdc_enable_controller,
-	.fb_disable = atmel_lcdc_disable_controller,
+struct atmel_lcdfb_devdata atmel_lcdfb_data = {
+	.start = atmel_lcdfb_start,
+	.stop = atmel_lcdfb_stop,
+	.update_dma = atmel_lcdfb_update_dma,
+	.setup_core = atmel_lcdfb_setup_core, 
+	.init_contrast = atmel_lcdfb_init_contrast,
+	.limit_screeninfo = atmel_lcdfb_limit_screeninfo,
 };
 
 static int atmel_lcdc_probe(struct device_d *dev)
 {
-	struct atmel_lcdfb_info *sinfo;
-	struct atmel_lcdfb_platform_data *pdata = dev->platform_data;
-	int ret = 0;
-	struct fb_info *info;
-
-	if (!pdata) {
-		dev_err(dev, "missing platform_data\n");
-		return -EINVAL;
-	}
-
-	sinfo = xzalloc(sizeof(*sinfo));
-	sinfo->pdata = pdata;
-	sinfo->mmio = dev_request_mem_region(dev, 0);
-
-	/* just init */
-	info = &sinfo->info;
-	info->priv = sinfo;
-	info->fbops = &atmel_lcdc_ops;
-	info->mode_list = pdata->mode_list;
-	info->num_modes = pdata->num_modes;
-	info->mode = &info->mode_list[0];
-	info->xres = info->mode->xres;
-	info->yres = info->mode->yres;
-	info->bits_per_pixel = pdata->default_bpp;
-
-	/* Enable LCDC Clocks */
-	sinfo->bus_clk = clk_get(dev, "hck1");
-	if (IS_ERR(sinfo->bus_clk)) {
-		ret = PTR_ERR(sinfo->bus_clk);
-		goto err;
-	}
-	sinfo->lcdc_clk = clk_get(dev, "lcdc_clk");
-	if (IS_ERR(sinfo->lcdc_clk)) {
-		ret = PTR_ERR(sinfo->lcdc_clk);
-		goto put_bus_clk;
-	}
-
-	atmel_lcdfb_start_clock(sinfo);
-
-	ret = register_framebuffer(info);
-	if (ret != 0) {
-		dev_err(dev, "Failed to register framebuffer\n");
-		goto stop_clk;
-	}
-
-	return ret;
-
-stop_clk:
-	atmel_lcdfb_stop_clock(sinfo);
-	clk_put(sinfo->lcdc_clk);
-put_bus_clk:
-	clk_put(sinfo->bus_clk);
-err:
-	return ret;
+	return atmel_lcdc_register(dev, &atmel_lcdfb_data);
 }
 
 static struct driver_d atmel_lcdc_driver = {
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
new file mode 100644
index 0000000..6c53dd4
--- /dev/null
+++ b/drivers/video/atmel_lcdfb.h
@@ -0,0 +1,37 @@
+
+#include <fb.h>
+#include <video/atmel_lcdc.h>
+
+struct atmel_lcdfb_info;
+
+struct atmel_lcdfb_devdata {
+	void (*start)(struct atmel_lcdfb_info *sinfo);
+	void (*stop)(struct atmel_lcdfb_info *sinfo, u32 flags);
+	void (*update_dma)(struct fb_info *info);
+	void (*setup_core)(struct fb_info *info);
+	void (*init_contrast)(struct atmel_lcdfb_info *sinfo);
+	void (*limit_screeninfo)(struct fb_videomode *mode);
+	int fbinfo_flags;
+	int dma_desc_size;
+};
+
+struct atmel_lcdfb_info {
+	struct fb_info		info;
+	void __iomem		*mmio;
+	struct device_d		*device;
+
+	unsigned int		guard_time;
+	unsigned int		smem_len;
+	struct clk		*bus_clk;
+	struct clk		*lcdc_clk;
+
+	struct atmel_lcdfb_platform_data *pdata;
+	struct atmel_lcdfb_devdata *dev_data;
+};
+
+#define lcdc_readl(sinfo, reg)		__raw_readl((sinfo)->mmio+(reg))
+#define lcdc_writel(sinfo, reg, val)	__raw_writel((val), (sinfo)->mmio+(reg))
+
+#define ATMEL_LCDC_STOP_NOWAIT (1 << 0)
+
+int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data);
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb_core.c
similarity index 53%
copy from drivers/video/atmel_lcdfb.c
copy to drivers/video/atmel_lcdfb_core.c
index 3a49688..528bcd8 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -24,38 +24,12 @@
 
 #include <common.h>
 #include <io.h>
-#include <init.h>
-#include <linux/clk.h>
-#include <fb.h>
-#include <video/atmel_lcdc.h>
-#include <mach/hardware.h>
-#include <mach/io.h>
-#include <mach/cpu.h>
-#include <errno.h>
 #include <linux/err.h>
+#include <linux/clk.h>
 #include <malloc.h>
 #include <asm/mmu.h>
 
-struct atmel_lcdfb_info {
-	struct fb_info		info;
-	void __iomem		*mmio;
-	struct device_d		*device;
-
-	unsigned int		guard_time;
-	unsigned int		smem_len;
-	struct clk		*bus_clk;
-	struct clk		*lcdc_clk;
-
-	struct atmel_lcdfb_platform_data *pdata;
-};
-
-#define lcdc_readl(sinfo, reg)		__raw_readl((sinfo)->mmio+(reg))
-#define lcdc_writel(sinfo, reg, val)	__raw_writel((val), (sinfo)->mmio+(reg))
-
-/* configurable parameters */
-#define ATMEL_LCDC_CVAL_DEFAULT		0xc8
-#define ATMEL_LCDC_DMA_BURST_LEN	8	/* words */
-#define ATMEL_LCDC_FIFO_SIZE		512	/* words */
+#include "atmel_lcdfb.h"
 
 static void atmel_lcdfb_start_clock(struct atmel_lcdfb_info *sinfo)
 {
@@ -69,63 +43,6 @@ static void atmel_lcdfb_stop_clock(struct atmel_lcdfb_info *sinfo)
 	clk_disable(sinfo->lcdc_clk);
 }
 
-static unsigned long compute_hozval(unsigned long xres, unsigned long lcdcon2)
-{
-	unsigned long value;
-
-	if (!(cpu_is_at91sam9261() || cpu_is_at91sam9g10()
-		|| cpu_is_at32ap7000()))
-		return xres;
-
-	value = xres;
-	if ((lcdcon2 & ATMEL_LCDC_DISTYPE) != ATMEL_LCDC_DISTYPE_TFT) {
-		/* STN display */
-		if ((lcdcon2 & ATMEL_LCDC_DISTYPE) == ATMEL_LCDC_DISTYPE_STNCOLOR)
-			value *= 3;
-
-		if ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_4
-		   || ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_8
-		      && (lcdcon2 & ATMEL_LCDC_SCANMOD) == ATMEL_LCDC_SCANMOD_DUAL ))
-			value = DIV_ROUND_UP(value, 4);
-		else
-			value = DIV_ROUND_UP(value, 8);
-	}
-
-	return value;
-}
-
-static void atmel_lcdfb_stop_nowait(struct atmel_lcdfb_info *sinfo)
-{
-	/* Turn off the LCD controller and the DMA controller */
-	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
-			sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET);
-
-	/* Wait for the LCDC core to become idle */
-	while (lcdc_readl(sinfo, ATMEL_LCDC_PWRCON) & ATMEL_LCDC_BUSY)
-		mdelay(10);
-
-	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, 0);
-}
-
-static void atmel_lcdfb_stop(struct atmel_lcdfb_info *sinfo)
-{
-	atmel_lcdfb_stop_nowait(sinfo);
-
-	/* Wait for DMA engine to become idle... */
-	while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
-		mdelay(10);
-}
-
-static void atmel_lcdfb_start(struct atmel_lcdfb_info *sinfo)
-{
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
-
-	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, pdata->default_dmacon);
-	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
-		(pdata->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
-		| ATMEL_LCDC_PWR);
-}
-
 static void atmel_lcdc_power_controller(struct fb_info *fb_info, int i)
 {
 	struct atmel_lcdfb_info *sinfo = fb_info->priv;
@@ -151,131 +68,6 @@ static void atmel_lcdc_disable_controller(struct fb_info *fb_info)
 	atmel_lcdc_power_controller(fb_info, 0);
 }
 
-static void atmel_lcdfb_update_dma(struct fb_info *info)
-{
-	struct atmel_lcdfb_info *sinfo = info->priv;
-	unsigned long dma_addr;
-
-	dma_addr = (unsigned long)info->screen_base;
-
-	dma_addr &= ~3UL;
-
-	/* Set framebuffer DMA base address and pixel offset */
-	lcdc_writel(sinfo, ATMEL_LCDC_DMABADDR1, dma_addr);
-}
-
-static void atmel_lcdfb_set_par(struct fb_info *info)
-{
-	struct atmel_lcdfb_info *sinfo = info->priv;
-	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
-	struct fb_videomode *mode = info->mode;
-	unsigned long clk_value_khz;
-	unsigned long value;
-	unsigned long pix_factor = 2;
-	unsigned long hozval_linesz;
-
-	atmel_lcdfb_stop(sinfo);
-
-	/* Re-initialize the DMA engine... */
-	dev_dbg(&info->dev, "  * update DMA engine\n");
-	atmel_lcdfb_update_dma(info);
-
-	/* ...set frame size and burst length = 8 words (?) */
-	value = (mode->yres * mode->xres * info->bits_per_pixel) / 32;
-	value |= ((ATMEL_LCDC_DMA_BURST_LEN - 1) << ATMEL_LCDC_BLENGTH_OFFSET);
-	lcdc_writel(sinfo, ATMEL_LCDC_DMAFRMCFG, value);
-
-	/* Now, the LCDC core... */
-
-	/* Set pixel clock */
-	if (cpu_is_at91sam9g45() && !cpu_is_at91sam9g45es())
-		pix_factor = 1;
-
-	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
-
-	value = DIV_ROUND_UP(clk_value_khz, PICOS2KHZ(mode->pixclock));
-
-	if (value < pix_factor) {
-		dev_notice(&info->dev, "Bypassing pixel clock divider\n");
-		lcdc_writel(sinfo, ATMEL_LCDC_LCDCON1, ATMEL_LCDC_BYPASS);
-	} else {
-		value = (value / pix_factor) - 1;
-		dev_dbg(&info->dev, "  * programming CLKVAL = 0x%08lx\n",
-				value);
-		lcdc_writel(sinfo, ATMEL_LCDC_LCDCON1,
-				value << ATMEL_LCDC_CLKVAL_OFFSET);
-		mode->pixclock =
-			KHZ2PICOS(clk_value_khz / (pix_factor * (value + 1)));
-		dev_dbg(&info->dev, "  updated pixclk:     %lu KHz\n",
-					PICOS2KHZ(mode->pixclock));
-	}
-
-	/* Initialize control register 2 */
-	value = pdata->default_lcdcon2;
-
-	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
-		value |= ATMEL_LCDC_INVLINE_INVERTED;
-	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
-		value |= ATMEL_LCDC_INVFRAME_INVERTED;
-
-	switch (info->bits_per_pixel) {
-		case 1:	value |= ATMEL_LCDC_PIXELSIZE_1; break;
-		case 2: value |= ATMEL_LCDC_PIXELSIZE_2; break;
-		case 4: value |= ATMEL_LCDC_PIXELSIZE_4; break;
-		case 8: value |= ATMEL_LCDC_PIXELSIZE_8; break;
-		case 16: value |= ATMEL_LCDC_PIXELSIZE_16; break;
-		case 24: value |= ATMEL_LCDC_PIXELSIZE_24; break;
-		case 32: value |= ATMEL_LCDC_PIXELSIZE_32; break;
-		default: BUG(); break;
-	}
-	dev_dbg(&info->dev, "  * LCDCON2 = %08lx\n", value);
-	lcdc_writel(sinfo, ATMEL_LCDC_LCDCON2, value);
-
-	/* Vertical timing */
-	value = (mode->vsync_len - 1) << ATMEL_LCDC_VPW_OFFSET;
-	value |= mode->upper_margin << ATMEL_LCDC_VBP_OFFSET;
-	value |= mode->lower_margin;
-	dev_dbg(&info->dev, "  * LCDTIM1 = %08lx\n", value);
-	lcdc_writel(sinfo, ATMEL_LCDC_TIM1, value);
-
-	/* Horizontal timing */
-	value = (mode->right_margin - 1) << ATMEL_LCDC_HFP_OFFSET;
-	value |= (mode->hsync_len - 1) << ATMEL_LCDC_HPW_OFFSET;
-	value |= (mode->left_margin - 1);
-	dev_dbg(&info->dev, "  * LCDTIM2 = %08lx\n", value);
-	lcdc_writel(sinfo, ATMEL_LCDC_TIM2, value);
-
-	/* Horizontal value (aka line size) */
-	hozval_linesz = compute_hozval(mode->xres,
-					lcdc_readl(sinfo, ATMEL_LCDC_LCDCON2));
-
-	/* Display size */
-	value = (hozval_linesz - 1) << ATMEL_LCDC_HOZVAL_OFFSET;
-	value |= mode->yres - 1;
-	dev_dbg(&info->dev, "  * LCDFRMCFG = %08lx\n", value);
-	lcdc_writel(sinfo, ATMEL_LCDC_LCDFRMCFG, value);
-
-	/* FIFO Threshold: Use formula from data sheet */
-	value = ATMEL_LCDC_FIFO_SIZE - (2 * ATMEL_LCDC_DMA_BURST_LEN + 3);
-	lcdc_writel(sinfo, ATMEL_LCDC_FIFO, value);
-
-	/* Toggle LCD_MODE every frame */
-	lcdc_writel(sinfo, ATMEL_LCDC_MVAL, 0);
-
-	/* Disable all interrupts */
-	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0UL);
-
-	/* Enable FIFO & DMA errors */
-	lcdc_writel(sinfo, ATMEL_LCDC_IER, ATMEL_LCDC_UFLWI | ATMEL_LCDC_OWRI | ATMEL_LCDC_MERI);
-
-	/* ...wait for DMA engine to become idle... */
-	while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
-		mdelay(10);
-
-	atmel_lcdfb_start(sinfo);
-
-	dev_dbg(&info->dev, "  * DONE\n");
-}
 
 static int atmel_lcdfb_check_var(struct fb_info *info)
 {
@@ -305,6 +97,9 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 	}
 
 	/* Saturate vertical and horizontal timings at maximum values */
+	if (sinfo->dev_data->limit_screeninfo)
+		sinfo->dev_data->limit_screeninfo(mode);
+
 	mode->vsync_len = min_t(u32, mode->vsync_len,
 			(ATMEL_LCDC_VPW >> ATMEL_LCDC_VPW_OFFSET) + 1);
 	mode->upper_margin = min_t(u32, mode->upper_margin,
@@ -377,6 +172,26 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 	return 0;
 }
 
+static void atmel_lcdfb_set_par(struct fb_info *info)
+{
+	struct atmel_lcdfb_info *sinfo = info->priv;
+
+	if (sinfo->dev_data->stop)
+		sinfo->dev_data->stop(sinfo, ATMEL_LCDC_STOP_NOWAIT);
+
+	/* Re-initialize the DMA engine... */
+	dev_dbg(&info->dev, "  * update DMA engine\n");
+	sinfo->dev_data->update_dma(info);
+
+	/* Now, the LCDC core... */
+	sinfo->dev_data->setup_core(info);
+
+	if (sinfo->dev_data->start)
+		sinfo->dev_data->start(sinfo);
+
+	dev_dbg(&info->dev, "  * DONE\n");
+}
+
 static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
 {
 	struct fb_info *info = &sinfo->info;
@@ -408,7 +223,6 @@ static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
 static int atmel_lcdc_activate_var(struct fb_info *info)
 {
 	struct atmel_lcdfb_info *sinfo = info->priv;
-	unsigned long value;
 	int ret;
 
 	ret = atmel_lcdfb_alloc_video_memory(sinfo);
@@ -417,12 +231,8 @@ static int atmel_lcdc_activate_var(struct fb_info *info)
 
 	atmel_lcdfb_set_par(info);
 
-	/* Set contrast */
-	value = ATMEL_LCDC_PS_DIV8 |
-		ATMEL_LCDC_POL_POSITIVE |
-		ATMEL_LCDC_ENA_PWMENABLE;
-	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_CTR, value);
-	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_VAL, ATMEL_LCDC_CVAL_DEFAULT);
+	if (sinfo->dev_data->init_contrast)
+		sinfo->dev_data->init_contrast(sinfo);
 
 	return atmel_lcdfb_check_var(info);
 }
@@ -437,7 +247,7 @@ static struct fb_ops atmel_lcdc_ops = {
 	.fb_disable = atmel_lcdc_disable_controller,
 };
 
-static int atmel_lcdc_probe(struct device_d *dev)
+int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 {
 	struct atmel_lcdfb_info *sinfo;
 	struct atmel_lcdfb_platform_data *pdata = dev->platform_data;
@@ -453,6 +263,8 @@ static int atmel_lcdc_probe(struct device_d *dev)
 	sinfo->pdata = pdata;
 	sinfo->mmio = dev_request_mem_region(dev, 0);
 
+	sinfo->dev_data = data;
+
 	/* just init */
 	info = &sinfo->info;
 	info->priv = sinfo;
@@ -494,14 +306,3 @@ put_bus_clk:
 err:
 	return ret;
 }
-
-static struct driver_d atmel_lcdc_driver = {
-	.name	= "atmel_lcdfb",
-	.probe	= atmel_lcdc_probe,
-};
-
-static int atmel_lcdc_init(void)
-{
-	return platform_driver_register(&atmel_lcdc_driver);
-}
-device_initcall(atmel_lcdc_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
