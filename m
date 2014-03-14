Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WOTAp-0003AU-Ds
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:41 +0100
Message-Id: <1394807569-23620-22-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/29] video: rework mode_name parameter setting
To: barebox@lists.infradead.org

We have dev_add_param_enum() now, so use it for the mode_name
setting. Also drop the special case for single mode framebuffers,
just add the mode_name parameter for this case aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 107 ++++++++++++++++++++++++++++++++++++-----------------
 include/fb.h       |   2 +
 2 files changed, 76 insertions(+), 33 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index e614d77..d7a3d3c 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -49,34 +49,42 @@ static int fb_enable_set(struct param_d *param, void *priv)
 	return 0;
 }
 
-static int fb_setup_mode(struct device_d *dev, struct param_d *param,
-		const char *val)
+static struct fb_videomode *fb_num_to_mode(struct fb_info *info, int num)
 {
-	struct fb_info *info = dev->priv;
-	struct display_timings *dt;
-	int mode, ret;
+	int num_modes;
+
+	num_modes = info->modes.num_modes;
+
+	if (num >= num_modes)
+		return NULL;
+
+	return &info->modes.modes[num];
+}
+
+static int fb_setup_mode(struct fb_info *info)
+{
+	struct device_d *dev = &info->dev;
+	int ret;
+	struct fb_videomode *mode;
 
 	if (info->enabled != 0)
 		return -EPERM;
 
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
-
-	dt = &info->modes;
-	for (mode = 0; mode < dt->num_modes; mode++) {
-		if (!strcmp(dt->modes[mode].name, val))
-			break;
-	}
-	if (mode >= dt->num_modes)
+	mode = fb_num_to_mode(info, info->current_mode);
+	if (!mode)
 		return -EINVAL;
 
-	info->mode = &dt->modes[mode];
+	info->mode = mode;
 
 	info->xres = info->mode->xres;
 	info->yres = info->mode->yres;
 	info->line_length = 0;
 
-	ret = info->fbops->fb_activate_var(info);
+	if (info->fbops->fb_activate_var) {
+		ret = info->fbops->fb_activate_var(info);
+		if (ret)
+			return ret;
+	}
 
 	if (!info->line_length)
 		info->line_length = info->xres * (info->bits_per_pixel >> 3);
@@ -87,13 +95,24 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 		dev->resource[0].start = (resource_size_t)info->screen_base;
 		info->cdev.size = info->line_length * info->yres;
 		dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
-		dev_param_set_generic(dev, param, val);
 	} else
 		info->cdev.size = 0;
 
 	return ret;
 }
 
+static int fb_set_modename(struct param_d *param, void *priv)
+{
+	struct fb_info *info = priv;
+	int ret;
+
+	ret = fb_setup_mode(info);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static struct file_operations fb_ops = {
 	.read	= mem_read,
 	.write	= mem_write,
@@ -102,22 +121,27 @@ static struct file_operations fb_ops = {
 	.ioctl	= fb_ioctl,
 };
 
-static void fb_info(struct device_d *dev)
+static void fb_print_mode(struct fb_videomode *mode)
+{
+	printf("%-20s %dx%d@%d\n", mode->name,
+			mode->xres, mode->yres, mode->refresh);
+}
+
+static void fb_print_modes(struct display_timings *modes)
 {
-	struct fb_info *info = dev->priv;
 	int i;
 
-	if (!info->modes.num_modes)
-		return;
+	for (i = 0; i < modes->num_modes; i++)
+		fb_print_mode(&modes->modes[i]);
+}
+
+static void fb_info(struct device_d *dev)
+{
+	struct fb_info *info = dev->priv;
 
 	printf("available modes:\n");
 
-	for (i = 0; i < info->modes.num_modes; i++) {
-		struct fb_videomode *mode = &info->modes.modes[i];
-
-		printf("%-10s %dx%d@%d\n", mode->name,
-				mode->xres, mode->yres, mode->refresh);
-	}
+	fb_print_modes(&info->modes);
 
 	printf("\n");
 }
@@ -126,10 +150,20 @@ int register_framebuffer(struct fb_info *info)
 {
 	int id = get_free_deviceid("fb");
 	struct device_d *dev;
-	int ret;
+	int ret, num_modes, i;
+	const char **names;
 
 	dev = &info->dev;
 
+	/*
+	 * If info->mode is set at this point it's the only mode
+	 * the fb supports. move it over to the modes list.
+	 */
+	if (info->mode) {
+		info->modes.modes = info->mode;
+		info->modes.num_modes = 1;
+	}
+
 	if (!info->line_length)
 		info->line_length = info->xres * (info->bits_per_pixel >> 3);
 
@@ -157,11 +191,18 @@ int register_framebuffer(struct fb_info *info)
 	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
 			&info->p_enable, info);
 
-	if (info->modes.num_modes &&
-			(info->fbops->fb_activate_var != NULL)) {
-		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
-		dev_set_param(dev, "mode_name", info->modes.modes[0].name);
-	}
+	num_modes = info->modes.num_modes;
+
+	names = xzalloc(sizeof(char *) * num_modes);
+
+	for (i = 0; i < info->modes.num_modes; i++)
+		names[i] = info->modes.modes[i].name;
+
+	dev_add_param_enum(dev, "mode_name", fb_set_modename, NULL, &info->current_mode, names, num_modes, info);
+
+	info->mode = fb_num_to_mode(info, 0);
+
+	fb_setup_mode(info);
 
 	ret = devfs_create(&info->cdev);
 	if (ret)
diff --git a/include/fb.h b/include/fb.h
index 1cc352b..91d3fe4 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -94,6 +94,8 @@ struct fb_info {
 	struct fb_videomode *mode;
 	struct display_timings modes;
 
+	int current_mode;
+
 	struct fb_ops *fbops;
 	struct device_d dev;		/* This is this fb device */
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
