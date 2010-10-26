Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAhl0-0007ll-VW
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 11:32:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 26 Oct 2010 13:31:42 +0200
Message-Id: <1288092708-5187-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/12] Adapt the existing imx fb driver to support runtime
	videomode selection
To: barebox@lists.infradead.org

Adapt the API to the new framebuffer videomode selection at runtime. If the new
feature is not used, there is no visible change at runtime for platforms using
this driver.

NOTE: Due to the lack of hardware, this is compile time tested only.

This is patch 4 of 7 to keep the repository bisectable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imxfb.h |    1 +
 drivers/video/imx.c                    |  211 ++++++++++++++++++--------------
 2 files changed, 120 insertions(+), 92 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/arch/arm/mach-imx/include/mach/imxfb.h
index 7baa244..c536119 100644
--- a/arch/arm/mach-imx/include/mach/imxfb.h
+++ b/arch/arm/mach-imx/include/mach/imxfb.h
@@ -60,6 +60,7 @@ struct imx_fb_videomode {
  */
 struct imx_fb_platform_data {
 	struct imx_fb_videomode *mode;
+	unsigned mode_cnt;	/**< number of entries in 'mode' */
 
 	u_int		cmap_greyscale:1,
 			cmap_inverse:1,
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 6ccd77e..07438e5 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -137,6 +137,7 @@ struct imxfb_rgb {
 };
 
 struct imxfb_info {
+	struct fb_host		fb_host;	/**< myself */
 	void __iomem		*regs;
 
 	u_int			pcr;
@@ -147,16 +148,15 @@ struct imxfb_info {
 				cmap_static:1,
 				unused:30;
 
-	struct imx_fb_videomode *mode;
-
-	struct fb_info		info;
-	struct device_d		*dev;
-
 	void			(*enable)(int enable);
 
-	struct fb_info		overlay;
+	struct fb_host		fb_overlay;
 };
 
+#define fb_overlay_to_imxfb_info(x) (container_of((struct fb_host*)(x->host), struct imxfb_info, fb_overlay))
+#define fb_overlay_dev_to_imxfb_info(x) (container_of((struct fb_host*)(x->platform_data), struct imxfb_info, fb_overlay))
+#define fb_info_to_imxfb_info(x) ((struct imxfb_info*)((x)->host))
+
 #define IMX_NAME	"IMX"
 
 /*
@@ -204,11 +204,10 @@ static inline u_int chan_to_field(u_int chan, struct fb_bitfield *bf)
 	return chan << bf->offset;
 }
 
-
-static int imxfb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
-		   u_int trans, struct fb_info *info)
+static int imxfb_setcolreg(struct fb_info *info, u_int regno, u_int red,
+			u_int green, u_int blue, u_int trans)
 {
-	struct imxfb_info *fbi = info->priv;
+	struct imxfb_info *fbi = fb_info_to_imxfb_info(info);
 	int ret = 1;
 	u32 val;
 
@@ -247,7 +246,7 @@ static int imxfb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
 
 static void imxfb_enable_controller(struct fb_info *info)
 {
-	struct imxfb_info *fbi = info->priv;
+	struct imxfb_info *fbi = fb_info_to_imxfb_info(info);
 
 	writel(RMCR_LCDC_EN, fbi->regs + LCDC_RMCR);
 #ifdef CONFIG_ARCH_IMX21
@@ -269,7 +268,7 @@ static void imxfb_enable_controller(struct fb_info *info)
 
 static void imxfb_disable_controller(struct fb_info *info)
 {
-	struct imxfb_info *fbi = info->priv;
+	struct imxfb_info *fbi = fb_info_to_imxfb_info(info);
 
 	if (fbi->enable)
 		fbi->enable(0);
@@ -295,14 +294,35 @@ static void imxfb_disable_controller(struct fb_info *info)
  *	Configures LCD Controller based on entries in var parameter.  Settings are
  *	only written to the controller if changes were made.
  */
-static int imxfb_activate_var(struct fb_info *info)
+static int imxfb_initialize_mode(struct fb_info *info, const struct fb_videomode *mode)
 {
-	struct fb_videomode *mode = info->mode;
 	struct imxfb_rgb *rgb;
 	unsigned long lcd_clk;
 	unsigned long long tmp;
-	struct imxfb_info *fbi = info->priv;
+	struct imxfb_info *fbi = fb_info_to_imxfb_info(info);
 	u32 pcr;
+	unsigned size;
+
+	/*
+	 * we need at least this amount of memory for the framebuffer
+	 */
+	size = mode->xres * mode->yres * (info->bits_per_pixel >> 3);
+	if (info->fb_dev->size != 0) {
+		if (size > info->fb_dev->size) {
+			pr_err("Cannot initialize video mode '%s': Its too large. "
+				"Required bytes are %u, available only %u\n",
+				mode->name, size, info->fb_dev->size);
+			return -EINVAL;
+		}
+	} else
+		info->fb_dev->size = size;
+
+	/*
+	 * if no framebuffer memory was specified yet, allocate one,
+	 * and allocate more memory, on user request
+	 */
+	if (info->fb_dev->map_base == 0U /* FIXME should be 'NULL'*/)
+		info->fb_dev->map_base = (unsigned long)xzalloc(info->fb_dev->size);
 
 	/* physical screen start address	    */
 	writel(VPW_VPW(mode->xres * info->bits_per_pixel / 8 / 4),
@@ -318,13 +338,13 @@ static int imxfb_activate_var(struct fb_info *info)
 		VCR_V_WAIT_2(mode->upper_margin),
 		fbi->regs + LCDC_VCR);
 
-	writel(SIZE_XMAX(info->xres) | SIZE_YMAX(info->yres),
+	writel(SIZE_XMAX(mode->xres) | SIZE_YMAX(mode->yres),
 			fbi->regs + LCDC_SIZE);
 
 	writel(fbi->pwmr, fbi->regs + LCDC_PWMR);
 	writel(fbi->lscr1, fbi->regs + LCDC_LSCR1);
 	writel(fbi->dmacr, fbi->regs + LCDC_DMACR);
-	writel((unsigned long)fbi->info.screen_base, fbi->regs + LCDC_SSA);
+	writel((uint32_t)info->fb_dev->map_base, fbi->regs + LCDC_SSA);
 
 	/* panning offset 0 (0 pixel offset)        */
 	writel(0x0, fbi->regs + LCDC_POS);
@@ -386,16 +406,10 @@ static int imxfb_activate_var(struct fb_info *info)
 	return 0;
 }
 
-static struct fb_ops imxfb_ops = {
-	.fb_setcolreg	= imxfb_setcolreg,
-	.fb_enable	= imxfb_enable_controller,
-	.fb_disable	= imxfb_disable_controller,
-};
-
 #ifdef CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY
 static void imxfb_overlay_enable_controller(struct fb_info *overlay)
 {
-	struct imxfb_info *fbi = overlay->priv;
+	struct imxfb_info *fbi = fb_overlay_to_imxfb_info(overlay);
 	unsigned int tmp;
 
 	tmp = readl(fbi->regs + LCDC_LGWCR);
@@ -405,7 +419,7 @@ static void imxfb_overlay_enable_controller(struct fb_info *overlay)
 
 static void imxfb_overlay_disable_controller(struct fb_info *overlay)
 {
-	struct imxfb_info *fbi = overlay->priv;
+	struct imxfb_info *fbi = fb_overlay_to_imxfb_info(overlay);
 	unsigned int tmp;
 
 	tmp = readl(fbi->regs + LCDC_LGWCR);
@@ -413,23 +427,16 @@ static void imxfb_overlay_disable_controller(struct fb_info *overlay)
 	writel(tmp , fbi->regs + LCDC_LGWCR);
 }
 
-static int imxfb_overlay_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
-		   u_int trans, struct fb_info *info)
+static int imxfb_overlay_setcolreg(struct fb_info *overlay, u_int regno,
+		u_int red, u_int green, u_int blue, u_int trans)
 {
 	return 0;
 }
 
-static struct fb_ops imxfb_overlay_ops = {
-	.fb_setcolreg	= imxfb_overlay_setcolreg,
-	.fb_enable	= imxfb_overlay_enable_controller,
-	.fb_disable	= imxfb_overlay_disable_controller,
-};
-
 static int imxfb_alpha_set(struct device_d *dev, struct param_d *param,
 		const char *val)
 {
-	struct fb_info *overlay = dev->priv;
-	struct imxfb_info *fbi = overlay->priv;
+	struct imxfb_info *fbi = fb_overlay_dev_to_imxfb_info(dev);
 	int alpha;
 	char alphastr[16];
 	unsigned int tmp;
@@ -452,32 +459,35 @@ static int imxfb_alpha_set(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
-static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
+static int imxfb_overlay_mode(struct fb_info *overlay, const struct fb_videomode *mode)
 {
-	struct fb_info *overlay;
+	struct imxfb_info *fbi = fb_overlay_to_imxfb_info(overlay);
 	struct imxfb_rgb *rgb;
-	int ret;
-
-	overlay = &fbi->overlay;
-
-	overlay->priv = fbi;
-	overlay->mode = fbi->info.mode;
-	overlay->xres = fbi->info.xres;
-	overlay->yres = fbi->info.yres;
-	overlay->bits_per_pixel = fbi->info.bits_per_pixel;
-	overlay->fbops = &imxfb_overlay_ops;
-
-	if (fb)
-		overlay->screen_base = fb;
-	else
-		overlay->screen_base = xzalloc(overlay->xres * overlay->yres *
-			(overlay->bits_per_pixel >> 3));
-
-	writel((unsigned long)overlay->screen_base, fbi->regs + LCDC_LGWSAR);
-	writel(SIZE_XMAX(overlay->xres) | SIZE_YMAX(overlay->yres),
-			fbi->regs + LCDC_LGWSR);
-	writel(VPW_VPW(overlay->xres * overlay->bits_per_pixel / 8 / 4),
-		fbi->regs + LCDC_LGWVPWR);
+	unsigned size;
+
+	/* we need at least this amount of memory for the framebuffer */
+	size = mode->xres * mode->yres * (overlay->bits_per_pixel >> 3);
+
+	if (overlay->fb_dev->size != 0) {
+		if (size > overlay->fb_dev->size) {
+			pr_err("Cannot initialize video mode '%s': Its too large. "
+				"Required bytes are %u, available only %u\n",
+				mode->name, size, overlay->fb_dev->size);
+			return -EINVAL;
+		}
+	} else
+		overlay->fb_dev->size = size;
+
+	/*
+	 * if no framebuffer memory was specified yet, allocate one,
+	 * and allocate more memory, on user request
+	 */
+	if (overlay->fb_dev->map_base == 0U /* FIXME should be 'NULL'*/)
+		overlay->fb_dev->map_base = (unsigned long)xzalloc(overlay->fb_dev->size);
+
+	writel((uint32_t)overlay->fb_dev->map_base, fbi->regs + LCDC_LGWSAR);
+	writel(SIZE_XMAX(mode->xres) | SIZE_YMAX(mode->yres), fbi->regs + LCDC_LGWSR);
+	writel(VPW_VPW(mode->xres * overlay->bits_per_pixel / 8 / 4), fbi->regs + LCDC_LGWVPWR);
 	writel(0, fbi->regs + LCDC_LGWPR);
 	writel(LGWCR_GWAV(0x0), fbi->regs + LCDC_LGWCR);
 
@@ -506,14 +516,36 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
 	overlay->blue   = rgb->blue;
 	overlay->transp = rgb->transp;
 
-	ret = register_framebuffer(overlay);
-	if (ret < 0) {
-		dev_err(fbi->dev, "failed to register framebuffer\n");
-		return ret;
+	return 0;
+}
+
+static int imxfb_register_overlay(struct imxfb_info *fbi, struct device_d *hw_dev,
+				struct imx_fb_platform_data *pdata)
+{
+	struct fb_host *overlay;
+	struct device_d *overlay_dev;
+
+	overlay = &fbi->fb_overlay;
+
+	/* add runtime hardware info */
+	overlay->hw_dev = hw_dev;	/* same as the master device */
+	overlay->fb_mode = imxfb_overlay_mode;
+	overlay->fb_enable = imxfb_overlay_enable_controller;
+	overlay->fb_disable = imxfb_overlay_disable_controller;
+	overlay->fb_setcolreg = imxfb_overlay_setcolreg;
+
+	/* add runtime video info */
+	overlay->mode = pdata->mode->mode;
+	overlay->mode_cnt = 1;	/* no choice */
+
+	overlay_dev = register_framebuffer(overlay, pdata->framebuffer_ovl, 0);
+	if (overlay_dev == NULL) {
+		dev_err(hw_dev, "failed to register overlay framebuffer\n");
+		return -EINVAL;
 	}
 
-	dev_add_param(&overlay->dev, "alpha", imxfb_alpha_set, NULL, 0);
-	dev_set_param(&overlay->dev, "alpha", "0");
+	dev_add_param(overlay_dev, "alpha", imxfb_alpha_set, NULL, 0);
+	dev_set_param(overlay_dev, "alpha", "0");
 
 	return 0;
 }
@@ -522,13 +554,13 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
 static int imxfb_probe(struct device_d *dev)
 {
 	struct imxfb_info *fbi;
-	struct fb_info *info;
+	struct device_d *fb_dev;
 	struct imx_fb_platform_data *pdata = dev->platform_data;
-	int ret;
 
 	if (!pdata)
 		return -ENODEV;
 
+	/* TODO should be done when enabling the video output */
 #ifdef CONFIG_ARCH_IMX21
 	PCCR0 &= ~(PCCR0_PERCLK3_EN | PCCR0_HCLK_LCDC_EN);
 #endif
@@ -544,40 +576,35 @@ static int imxfb_probe(struct device_d *dev)
 #endif
 
 	fbi = xzalloc(sizeof(*fbi));
-	info = &fbi->info;
 
-	fbi->mode = pdata->mode;
-	fbi->regs = (void *)dev->map_base;
+	/* add runtime hardware info */
+	fbi->fb_host.hw_dev = dev;
+	fbi->fb_host.fb_mode = imxfb_initialize_mode;
+	fbi->fb_host.fb_enable = imxfb_enable_controller;
+	fbi->fb_host.fb_disable = imxfb_disable_controller;
+	fbi->fb_host.fb_setcolreg = imxfb_setcolreg;
+
+	fbi->regs = (void*)dev->map_base;
 	fbi->pcr = pdata->mode->pcr;
 	fbi->pwmr = pdata->pwmr;
 	fbi->lscr1 = pdata->lscr1;
 	fbi->dmacr = pdata->dmacr;
 	fbi->enable = pdata->enable;
-	fbi->dev = dev;
-	info->priv = fbi;
-	info->mode = pdata->mode->mode;
-	info->xres = pdata->mode->mode->xres;
-	info->yres = pdata->mode->mode->yres;
-	info->bits_per_pixel = pdata->mode->bpp;
-	info->fbops = &imxfb_ops;
-
-	dev_info(dev, "i.MX Framebuffer driver\n");
-
-	if (pdata->framebuffer)
-		fbi->info.screen_base = pdata->framebuffer;
-	else
-		fbi->info.screen_base = xzalloc(info->xres * info->yres *
-			(info->bits_per_pixel >> 3));
-
-	imxfb_activate_var(&fbi->info);
-
-	ret = register_framebuffer(&fbi->info);
-	if (ret < 0) {
+
+	/* add runtime video info */
+	fbi->fb_host.mode = pdata->mode->mode;
+	/* to be backward compatible */
+	fbi->fb_host.mode_cnt = pdata->mode_cnt == 0 ? 1 : pdata->mode_cnt;
+	fbi->fb_host.bits_per_pixel = 16;	/* RGB565, the default */
+
+	fb_dev = register_framebuffer(&fbi->fb_host, pdata->framebuffer, 0);
+	if (dev == NULL) {
 		dev_err(dev, "failed to register framebuffer\n");
-		return ret;
+		return -EINVAL;
 	}
+
 #ifdef CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY
-	imxfb_register_overlay(fbi, pdata->framebuffer_ovl);
+	imxfb_register_overlay(fbi, fb_dev, pdata);
 #endif
 	return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
