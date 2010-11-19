Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJQR0-0001cE-Bx
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 12:51:28 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Nov 2010 13:50:58 +0100
Message-Id: <1290171063-28870-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
References: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/11] Adapt the existing imx-ipu fb driver to support runtime
	videomode selection
To: barebox@lists.infradead.org

Adapt the API to the new framebuffer videomode selection at runtime.

NOTE: Due to the lack of hardware, this is compile time tested only.

This is patch 4 of 4 to keep the repository bisectable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |    2 +-
 arch/arm/boards/pcm043/pcm043.c                 |    2 +-
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h     |   12 +-
 drivers/video/imx-ipu-fb.c                      |  217 +++++++++++++----------
 4 files changed, 125 insertions(+), 108 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 127bfb4..d2b8262 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -126,7 +126,7 @@ static struct fb_videomode CTP_CLAA070LC0ACW = {
 	.lower_margin	= 10,	/* whole frame should have 500 lines */
 	.hsync_len	= 1,	/* note: DE only display */
 	.vsync_len	= 1,	/* note: DE only display */
-	.sync		= FB_SYNC_CLK_IDLE_EN | FB_SYNC_OE_ACT_HIGH,
+	.sync		= FB_SYNC_CLK_IDLE_EN | FB_SYNC_DE_HIGH_ACT,
 	.vmode		= FB_VMODE_NONINTERLACED,
 	.flag		= 0,
 };
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 2191bc8..c504440 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -111,7 +111,7 @@ static struct fb_videomode pcm043_fb_mode = {
 	.lower_margin	= 40,
 	.hsync_len	= 96,
 	.vsync_len	= 1,
-	.sync		= FB_SYNC_VERT_HIGH_ACT | FB_SYNC_OE_ACT_HIGH,
+	.sync		= FB_SYNC_VERT_HIGH_ACT | FB_SYNC_DE_HIGH_ACT,
 	.vmode		= FB_VMODE_NONINTERLACED,
 	.flag		= 0,
 };
diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
index 8e1cc87..ce95243 100644
--- a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
+++ b/arch/arm/mach-imx/include/mach/imx-ipu-fb.h
@@ -12,20 +12,12 @@
 
 #include <fb.h>
 
-/* Proprietary FB_SYNC_ flags */
-#define FB_SYNC_OE_ACT_HIGH	0x80000000
-#define FB_SYNC_CLK_INVERT	0x40000000
-#define FB_SYNC_DATA_INVERT	0x20000000
-#define FB_SYNC_CLK_IDLE_EN	0x10000000
-#define FB_SYNC_SHARP_MODE	0x08000000
-#define FB_SYNC_SWAP_RGB	0x04000000
-#define FB_SYNC_CLK_SEL_EN	0x02000000
-
 /*
- * struct mx3fb_platform_data - mx3fb platform data
+ * struct imx_ipu_fb_platform_data - imx-ipu-fb's platform data
  */
 struct imx_ipu_fb_platform_data {
 	struct fb_videomode	*mode;
+	unsigned mode_cnt;	/**< number of entries in 'mode' */
 	unsigned char		bpp;
 	void __iomem		*framebuffer;
 	/** hook to enable backlight and stuff */
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index c38082d..866d711 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -34,12 +34,12 @@
 #include <mach/clock.h>
 
 struct ipu_fb_info {
+	struct  fb_host		fb_host;	/**< myself */
 	void __iomem		*regs;
 
 	void			(*enable)(int enable);
 
-	struct fb_info		info;
-	struct device_d		*dev;
+	const struct fb_videomode *mode;	/**< requested videomodue */
 };
 
 /* IPU DMA Controller channel definitions. */
@@ -413,29 +413,30 @@ static inline void reg_write(struct ipu_fb_info *fbi, u32 value,
 	writel(value, fbi->regs + reg);
 }
 
+#define fb_info_to_imxfb_info(x) ((struct ipu_fb_info*)((x)->host))
+
 /*
  * sdc_init_panel() - initialize a synchronous LCD panel.
- * @width:		width of panel in pixels.
- * @height:		height of panel in pixels.
- * @pixel_fmt:		pixel format of buffer as FOURCC ASCII code.
+ * @param info The framebuffer to work on
+ * @param pixel_fmt pixel format of buffer as FOURCC ASCII code.
  * @return:		0 on success or negative error code on failure.
  */
-static int sdc_init_panel(struct fb_info *info, enum pixel_fmt pixel_fmt)
+static int sdc_init_panel(struct fb_info *fb_info, enum pixel_fmt pixel_fmt)
 {
-	struct ipu_fb_info *fbi = info->priv;
-	struct fb_videomode *mode = info->mode;
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
+	const struct fb_videomode *mode = fbi->mode;
 	u32 reg, old_conf, div;
 	enum ipu_panel panel = IPU_PANEL_TFT;
 	unsigned long pixel_clk;
 
 	/* Init panel size and blanking periods */
 	reg = ((mode->hsync_len - 1) << 26) |
-		((info->xres + mode->left_margin + mode->right_margin +
+		((mode->xres + mode->left_margin + mode->right_margin +
 		  mode->hsync_len - 1) << 16);
 	reg_write(fbi, reg, SDC_HOR_CONF);
 
 	reg = ((mode->vsync_len - 1) << 26) | SDC_V_SYNC_WIDTH_L |
-		((info->yres + mode->upper_margin + mode->lower_margin +
+		((mode->yres + mode->upper_margin + mode->lower_margin +
 		  mode->vsync_len - 1) << 16);
 	reg_write(fbi, reg, SDC_VER_CONF);
 
@@ -448,7 +449,7 @@ static int sdc_init_panel(struct fb_info *info, enum pixel_fmt pixel_fmt)
 		old_conf |= DI_D3_CLK_POL;
 	if (mode->sync & FB_SYNC_DATA_INVERT)
 		old_conf |= DI_D3_DATA_POL;
-	if (mode->sync & FB_SYNC_OE_ACT_HIGH)
+	if (mode->sync & FB_SYNC_DE_HIGH_ACT)
 		old_conf |= DI_D3_DRDY_SHARP_POL;
 	reg_write(fbi, old_conf, DI_DISP_SIG_POL);
 
@@ -483,12 +484,12 @@ static int sdc_init_panel(struct fb_info *info, enum pixel_fmt pixel_fmt)
 	div = imx_get_lcdclk() * 16 / pixel_clk;
 
 	if (div < 0x40) {	/* Divider less than 4 */
-		dev_dbg(&info->dev,
+		dev_dbg(fbi->fb_host.hw_dev,
 			"InitPanel() - Pixel clock divider less than 4\n");
 		div = 0x40;
 	}
 
-	dev_dbg(&info->dev, "pixel clk = %u, divider %u.%u\n",
+	dev_dbg(fbi->fb_host.hw_dev, "pixel clk = %u, divider %u.%u\n",
 		pixel_clk, div >> 4, (div & 7) * 125);
 
 	/*
@@ -588,19 +589,20 @@ static u32 dma_param_addr(enum ipu_channel channel)
 	return 0x10000 | (channel << 4);
 }
 
-static void ipu_init_channel_buffer(struct ipu_fb_info *fbi,
+static void ipu_init_channel_buffer(struct fb_info *fb_info,
 		enum ipu_channel channel, void *fbmem)
 {
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
 	union chan_param_mem params = {};
 	u32 reg;
 	u32 stride_bytes;
 
-	stride_bytes = fbi->info.xres * ((fbi->info.bits_per_pixel + 7) / 8);
+	stride_bytes = fbi->mode->xres * ((fb_info->bits_per_pixel + 7) / 8);
 	stride_bytes = (stride_bytes + 3) & ~3;
 
 	/* Build parameter memory data for DMA channel */
-	ipu_ch_param_set_size(&params, bpp_to_pixfmt(fbi->info.bits_per_pixel),
-			      fbi->info.xres, fbi->info.yres, stride_bytes);
+	ipu_ch_param_set_size(&params, bpp_to_pixfmt(fb_info->bits_per_pixel),
+			      fbi->mode->xres, fbi->mode->yres, stride_bytes);
 	ipu_ch_param_set_buffer(&params, fbmem, NULL);
 	params.pp.bam = 0;
 	/* Some channels (rotation) have restriction on burst length */
@@ -622,9 +624,10 @@ static void ipu_init_channel_buffer(struct ipu_fb_info *fbi,
 	reg_write(fbi, reg, IPU_CHA_DB_MODE_SEL);
 }
 
-static void ipu_channel_set_priority(struct ipu_fb_info *fbi,
+static void ipu_channel_set_priority(struct fb_info *fb_info,
 		enum ipu_channel channel, int prio)
 {
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
 	u32 reg;
 
 	reg = reg_read(fbi, IDMAC_CHA_PRI);
@@ -639,11 +642,13 @@ static void ipu_channel_set_priority(struct ipu_fb_info *fbi,
 
 /*
  * ipu_enable_channel() - enable an IPU channel.
+ * @param fb_info The framebuffer to work on
  * @channel:	channel ID.
  * @return:	0 on success or negative error code on failure.
  */
-static int ipu_enable_channel(struct ipu_fb_info *fbi, enum ipu_channel channel)
+static int ipu_enable_channel(struct fb_info *fb_info, enum ipu_channel channel)
 {
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
 	u32 reg;
 
 	/* Reset to buffer 0 */
@@ -651,7 +656,7 @@ static int ipu_enable_channel(struct ipu_fb_info *fbi, enum ipu_channel channel)
 
 	switch (channel) {
 	case IDMAC_SDC_0:
-		ipu_channel_set_priority(fbi, channel, 1);
+		ipu_channel_set_priority(fb_info, channel, 1);
 		break;
 	default:
 		break;
@@ -663,9 +668,10 @@ static int ipu_enable_channel(struct ipu_fb_info *fbi, enum ipu_channel channel)
 	return 0;
 }
 
-static int ipu_update_channel_buffer(struct ipu_fb_info *fbi,
+static int ipu_update_channel_buffer(struct fb_info *fb_info,
 		enum ipu_channel channel, void *buf)
 {
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
 	u32 reg;
 
 	reg = reg_read(fbi, IPU_CHA_BUF0_RDY);
@@ -679,16 +685,17 @@ static int ipu_update_channel_buffer(struct ipu_fb_info *fbi,
 	return 0;
 }
 
-static int idmac_tx_submit(struct ipu_fb_info *fbi, enum ipu_channel channel,
+static int idmac_tx_submit(struct fb_info *fb_info, enum ipu_channel channel,
 		void *buf)
 {
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
 	int ret;
 
-	ipu_init_channel_buffer(fbi, channel, buf);
+	ipu_init_channel_buffer(fb_info, channel, buf);
 
 
 	/* ipu_idmac.c::ipu_submit_channel_buffers() */
-	ret = ipu_update_channel_buffer(fbi, channel, buf);
+	ret = ipu_update_channel_buffer(fb_info, channel, buf);
 	if (ret < 0)
 		return ret;
 
@@ -697,16 +704,17 @@ static int idmac_tx_submit(struct ipu_fb_info *fbi, enum ipu_channel channel,
 	reg_write(fbi, 1UL << channel, IPU_CHA_BUF0_RDY);
 
 
-	ret = ipu_enable_channel(fbi, channel);
+	ret = ipu_enable_channel(fb_info, channel);
 	return ret;
 }
 
-static void sdc_enable_channel(struct ipu_fb_info *fbi, void *fbmem)
+static void sdc_enable_channel(struct fb_info *fb_info, void *fbmem)
 {
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
 	int ret;
 	u32 reg;
 
-	ret = idmac_tx_submit(fbi, IDMAC_SDC_0, fbmem);
+	ret = idmac_tx_submit(fb_info, IDMAC_SDC_0, fbmem);
 
 	/* mx3fb.c::sdc_fb_init() */
 	if (ret >= 0) {
@@ -722,11 +730,75 @@ static void sdc_enable_channel(struct ipu_fb_info *fbi, void *fbmem)
 	mdelay(2);
 }
 
+static void imxfb_init_info(struct fb_info *fb_info,
+					const struct fb_videomode *mode)
+{
+	struct imx_ipu_fb_rgb *rgb;
+
+	fb_info->xres = mode->xres;
+	fb_info->yres = mode->yres;
+
+	switch (fb_info->bits_per_pixel) {
+	case 32:
+		rgb = &def_rgb_32;
+		break;
+	case 24:
+		rgb = &def_rgb_24;
+		break;
+	case 16:
+	default:
+		rgb = &def_rgb_16;
+		break;
+	}
+
+	/*
+	 * Copy the RGB parameters for this display
+	 * from the machine specific parameters.
+	 */
+	fb_info->red    = rgb->red;
+	fb_info->green  = rgb->green;
+	fb_info->blue   = rgb->blue;
+	fb_info->transp = rgb->transp;
+}
+
+static void imxfb_memory_mmgt(struct fb_info *fb_info, unsigned size)
+{
+	if ((fb_info->fb_dev.size < size) && (fb_info->fb_dev.size != 0)) {
+		free((void*)fb_info->fb_dev.map_base);
+		fb_info->fb_dev.map_base = 0;
+		fb_info->fb_dev.size = 0;
+	}
+	if (fb_info->fb_dev.size == 0) {
+		fb_info->fb_dev.map_base = (resource_size_t)xzalloc(size);
+		fb_info->fb_dev.size = size;
+	}
+}
+
+static int ipu_fb_initialize_mode(struct fb_info *fb_info,
+					const struct fb_videomode *mode)
+{
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
+	unsigned size;
+
+	/*
+	 * we need at least this amount of memory for the framebuffer
+	 */
+	size = mode->xres * mode->yres * (fb_info->bits_per_pixel >> 3);
+
+	imxfb_memory_mmgt(fb_info, size);
+
+	fbi->mode = mode;
+
+	imxfb_init_info(fb_info, mode);
+
+	return 0;
+}
+
 /* References in this function refer to respective Linux kernel sources */
-static void ipu_fb_enable(struct fb_info *info)
+static void ipu_fb_enable(struct fb_info *fb_info)
 {
-	struct ipu_fb_info *fbi = info->priv;
-	struct fb_videomode *mode = info->mode;
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(fb_info);
+	const struct fb_videomode *mode = fbi->mode;
 	u32 reg;
 
 	/* pcm037.c::mxc_board_init() */
@@ -779,12 +851,12 @@ static void ipu_fb_enable(struct fb_info *info)
 		~(SDC_COM_GWSEL | SDC_COM_KEY_COLOR_G);
 	reg_write(fbi, reg, SDC_COM_CONF);
 
-	sdc_init_panel(info, IPU_PIX_FMT_RGB666);
+	sdc_init_panel(fb_info, IPU_PIX_FMT_RGB666);
 
 	reg_write(fbi, (mode->left_margin << 16) | mode->upper_margin,
 			SDC_BG_POS);
 
-	sdc_enable_channel(fbi, info->screen_base);
+	sdc_enable_channel(fb_info, (void*)fb_info->fb_dev.map_base);
 
 	/*
 	 * Linux driver calls sdc_set_brightness() here again,
@@ -796,7 +868,7 @@ static void ipu_fb_enable(struct fb_info *info)
 
 static void ipu_fb_disable(struct fb_info *info)
 {
-	struct ipu_fb_info *fbi = info->priv;
+	struct ipu_fb_info *fbi = fb_info_to_imxfb_info(info);
 	u32 reg;
 
 	if (fbi->enable)
@@ -807,85 +879,38 @@ static void ipu_fb_disable(struct fb_info *info)
 	reg_write(fbi, reg, SDC_COM_CONF);
 }
 
-static struct fb_ops imxfb_ops = {
-	.fb_enable = ipu_fb_enable,
-	.fb_disable = ipu_fb_disable,
-};
-
-static void imxfb_init_info(struct fb_info *info, struct fb_videomode *mode,
-		int bpp)
-{
-	struct imx_ipu_fb_rgb *rgb;
-
-	info->mode = mode;
-	info->xres = mode->xres;
-	info->yres = mode->yres;
-	info->bits_per_pixel = bpp;
-
-	switch (info->bits_per_pixel) {
-	case 32:
-		rgb = &def_rgb_32;
-		break;
-	case 24:
-		rgb = &def_rgb_24;
-		break;
-	case 16:
-	default:
-		rgb = &def_rgb_16;
-		break;
-	}
-
-	/*
-	 * Copy the RGB parameters for this display
-	 * from the machine specific parameters.
-	 */
-	info->red    = rgb->red;
-	info->green  = rgb->green;
-	info->blue   = rgb->blue;
-	info->transp = rgb->transp;
-}
-
 static int imxfb_probe(struct device_d *dev)
 {
 	struct ipu_fb_info *fbi;
-	struct fb_info *info;
+	struct device_d *fb_dev;
 	const struct imx_ipu_fb_platform_data *pdata = dev->platform_data;
-	int ret;
 
 	if (!pdata)
 		return -ENODEV;
 
 	fbi = xzalloc(sizeof(*fbi));
-	info = &fbi->info;
+
+	/* add runtime hardware info */
+	fbi->fb_host.hw_dev = dev;
+	fbi->fb_host.fb_mode = ipu_fb_initialize_mode;
+	fbi->fb_host.fb_enable = ipu_fb_enable;
+	fbi->fb_host.fb_disable = ipu_fb_disable;
+	fbi->fb_host.fb_setcolreg = NULL;
 
 	fbi->regs = (void *)dev->map_base;
-	fbi->dev = dev;
-	info->priv = fbi;
-	info->fbops = &imxfb_ops;
-	fbi->enable = pdata->enable;
 
-	imxfb_init_info(info, pdata->mode, pdata->bpp);
+	/* add runtime video info */
+	fbi->fb_host.mode = pdata->mode;
+	/* to be backward compatible */
+	fbi->fb_host.mode_cnt = pdata->mode_cnt == 0 ? 1 : pdata->mode_cnt;
+	fbi->fb_host.bits_per_pixel = pdata->bpp;
 
 	dev_info(dev, "i.MX Framebuffer driver\n");
 
-	/*
-	 * Use a given frambuffer or reserve some
-	 * memory for screen usage
-	 */
-	fbi->info.screen_base = pdata->framebuffer;
-	if (fbi->info.screen_base == NULL) {
-		fbi->info.screen_base = malloc(info->xres * info->yres *
-					       (info->bits_per_pixel >> 3));
-		if (!fbi->info.screen_base)
-			return -ENOMEM;
-	}
-
-	sdc_enable_channel(fbi, info->screen_base);
-
-	ret = register_framebuffer(&fbi->info);
-	if (ret < 0) {
+	fb_dev = register_framebuffer(&fbi->fb_host);
+	if (fb_dev == NULL) {
 		dev_err(dev, "failed to register framebuffer\n");
-		return ret;
+		return -EINVAL;
 	}
 
 	return 0;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
