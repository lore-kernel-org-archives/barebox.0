Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAi-0005Gp-FG
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:40 +0100
Message-Id: <1394807569-23620-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 20/29] video: introduce struct display_timings
To: barebox@lists.infradead.org

And use it inside struct fb_info. This struct has the advantage
that the supported modes can be passed around in a single pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/atmel_lcdfb_core.c |  4 ++--
 drivers/video/fb.c               | 20 +++++++++++---------
 drivers/video/imx-ipu-fb.c       |  4 ++--
 drivers/video/imx.c              |  6 +++---
 drivers/video/omap.c             |  4 ++--
 drivers/video/s3c24xx.c          |  4 ++--
 drivers/video/sdl.c              |  4 ++--
 drivers/video/stm.c              |  4 ++--
 include/fb.h                     | 16 ++++++++++++++--
 9 files changed, 40 insertions(+), 26 deletions(-)

diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index bed540d..4c912cc 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -269,8 +269,8 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	info = &sinfo->info;
 	info->priv = sinfo;
 	info->fbops = &atmel_lcdc_ops;
-	info->mode_list = pdata->mode_list;
-	info->num_modes = pdata->num_modes;
+	info->modes.modes = pdata->mode_list;
+	info->modes.num_modes = pdata->num_modes;
 	info->mode = &info->mode_list[0];
 	info->xres = info->mode->xres;
 	info->yres = info->mode->yres;
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index c36b9ad..e614d77 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -53,6 +53,7 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 		const char *val)
 {
 	struct fb_info *info = dev->priv;
+	struct display_timings *dt;
 	int mode, ret;
 
 	if (info->enabled != 0)
@@ -61,14 +62,15 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 	if (!val)
 		return dev_param_set_generic(dev, param, NULL);
 
-	for (mode = 0; mode < info->num_modes; mode++) {
-		if (!strcmp(info->mode_list[mode].name, val))
+	dt = &info->modes;
+	for (mode = 0; mode < dt->num_modes; mode++) {
+		if (!strcmp(dt->modes[mode].name, val))
 			break;
 	}
-	if (mode >= info->num_modes)
+	if (mode >= dt->num_modes)
 		return -EINVAL;
 
-	info->mode = &info->mode_list[mode];
+	info->mode = &dt->modes[mode];
 
 	info->xres = info->mode->xres;
 	info->yres = info->mode->yres;
@@ -105,13 +107,13 @@ static void fb_info(struct device_d *dev)
 	struct fb_info *info = dev->priv;
 	int i;
 
-	if (!info->num_modes)
+	if (!info->modes.num_modes)
 		return;
 
 	printf("available modes:\n");
 
-	for (i = 0; i < info->num_modes; i++) {
-		struct fb_videomode *mode = &info->mode_list[i];
+	for (i = 0; i < info->modes.num_modes; i++) {
+		struct fb_videomode *mode = &info->modes.modes[i];
 
 		printf("%-10s %dx%d@%d\n", mode->name,
 				mode->xres, mode->yres, mode->refresh);
@@ -155,10 +157,10 @@ int register_framebuffer(struct fb_info *info)
 	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
 			&info->p_enable, info);
 
-	if (info->num_modes && (info->mode_list != NULL) &&
+	if (info->modes.num_modes &&
 			(info->fbops->fb_activate_var != NULL)) {
 		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
-		dev_set_param(dev, "mode_name", info->mode_list[0].name);
+		dev_set_param(dev, "mode_name", info->modes.modes[0].name);
 	}
 
 	ret = devfs_create(&info->cdev);
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 7276647..0ee2b26 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1007,8 +1007,8 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->disable_fractional_divider = pdata->disable_fractional_divider;
 	info->priv = fbi;
 	info->fbops = &imxfb_ops;
-	info->num_modes = pdata->num_modes;
-	info->mode_list = pdata->mode;
+	info->modes.modes = pdata->mode;
+	info->modes.num_modes = pdata->num_modes;
 
 	imxfb_init_info(info, pdata->mode, pdata->bpp);
 
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 05c6105..1dd6511 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -294,7 +294,7 @@ static int imxfb_activate_var(struct fb_info *info)
 	u32 pcr;
 	int i;
 
-	for (i = 0; i < info->num_modes; i++) {
+	for (i = 0; i < info->modes.num_modes; i++) {
 		if (!strcmp(fbi->mode[i].mode.name, mode->name)) {
 			fbi->pcr = fbi->mode[i].pcr;
 			break;
@@ -551,8 +551,8 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->enable = pdata->enable;
 	fbi->dev = dev;
 	info->priv = fbi;
-	info->mode_list = mode_list;
-	info->num_modes = pdata->num_modes;
+	info->modes.modes = mode_list;
+	info->modes.num_modes = pdata->num_modes;
 	info->mode = &pdata->mode->mode;
 	info->xres = pdata->mode->mode.xres;
 	info->yres = pdata->mode->mode.yres;
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 487aca6..485cc75 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -467,8 +467,8 @@ static int omapfb_probe(struct device_d *dev)
 	for (i = 0; i < pdata->num_displays; ++i)
 		fbi->video_modes[i] = pdata->displays[i].mode;
 
-	info->mode_list = fbi->video_modes;
-	info->num_modes = pdata->num_displays;
+	info->modes.modes = fbi->video_modes;
+	info->modes.num_modes = pdata->num_displays;
 
 	info->priv = fbi;
 	info->fbops = &omapfb_ops;
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index c3e05c6..cf45376 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -376,8 +376,8 @@ static int s3cfb_probe(struct device_d *hw_dev)
 	hw_dev->priv = &fbi;
 
 	/* add runtime video info */
-	fbi.info.mode_list = pdata->mode_list;
-	fbi.info.num_modes = pdata->mode_cnt;
+	fbi.info.modes.modes = pdata->mode_list;
+	fbi.info.modes.num_modes = pdata->mode_cnt;
 	fbi.info.mode = &fbi.info.mode_list[1];
 	fbi.info.xres = fbi.info.mode->xres;
 	fbi.info.yres = fbi.info.mode->yres;
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 8dec5e5..a568340 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -37,8 +37,8 @@ static int sdlfb_probe(struct device_d *dev)
 		return -EIO;
 
 	fb = xzalloc(sizeof(*fb));
-	fb->mode_list = fb->mode = dev->platform_data;
-	fb->num_modes = 1;
+	fb->modes.modes = fb->mode = dev->platform_data;
+	fb->modes.num_modes = 1;
 	fb->bits_per_pixel = 4 << 3;
 	fb->xres = fb->mode->xres;
 	fb->yres = fb->mode->yres;
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index fdeaf9c..b20e552 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -499,8 +499,8 @@ static int stmfb_probe(struct device_d *hw_dev)
 	clk_enable(fbi.clk);
 
 	/* add runtime video info */
-	fbi.info.mode_list = pdata->mode_list;
-	fbi.info.num_modes = pdata->mode_cnt;
+	fbi.info.modes.modes = pdata->mode_list;
+	fbi.info.modes.num_modes = pdata->mode_cnt;
 	fbi.info.mode = &fbi.info.mode_list[0];
 	fbi.info.xres = fbi.info.mode->xres;
 	fbi.info.yres = fbi.info.mode->yres;
diff --git a/include/fb.h b/include/fb.h
index 22fa9b1..1cc352b 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -77,10 +77,22 @@ struct fb_ops {
 	int (*fb_activate_var)(struct fb_info *info);
 };
 
+/*
+ * This describes all timing settings a display provides.
+ * The native_mode is the default setting for this display.
+ * Drivers that can handle multiple videomodes should work with this struct and
+ * convert each entry to the desired end result.
+ */
+struct display_timings {
+	unsigned int native_mode;
+
+	unsigned int num_modes;
+	struct fb_videomode *modes;
+};
+
 struct fb_info {
 	struct fb_videomode *mode;
-	struct fb_videomode *mode_list;
-	unsigned num_modes;
+	struct display_timings modes;
 
 	struct fb_ops *fbops;
 	struct device_d dev;		/* This is this fb device */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
