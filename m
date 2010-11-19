Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJQQx-0001bi-S8
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 12:51:22 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Nov 2010 13:50:55 +0100
Message-Id: <1290171063-28870-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/11] Bring in dynamic videomode selection at runtime
To: barebox@lists.infradead.org

This patch mostly rewrites all parts of /drivers/video/fb.c. As it changes
the API to the drivers, it must be done in one step to keep the repository
bisectable. But to do it in one step makes the patches itself unreadable.

So, I decided to do it in a few steps, only for the review. All patches marked
with a "patch n of m" should be merged, prior the final commit onto the
repository.

This step brings in the required function for dynamic videomode selection at
runtime.

This is patch 1 of 4 to keep the repository bisectable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/video/fb.c |  201 +++++++++++++++++++++++++++++++++++++++++++++-------
 include/fb.h       |   31 ++++----
 2 files changed, 192 insertions(+), 40 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ab2c5eb..5806dbe 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -1,3 +1,4 @@
+#include <init.h>
 #include <common.h>
 #include <fb.h>
 #include <errno.h>
@@ -5,9 +6,14 @@
 #include <getopt.h>
 #include <fcntl.h>
 #include <fs.h>
+#include <malloc.h>
+#include <xfuncs.h>
+
+#define to_fb_info(x) (container_of(x, struct fb_info, fb_dev))
 
 static int fb_ioctl(struct cdev* cdev, int req, void *data)
 {
+	struct fb_host *host = cdev->dev->platform_data;
 	struct fb_info *info = cdev->priv;
 
 	switch (req) {
@@ -15,10 +21,10 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 		memcpy(data, info, sizeof(*info));
 		break;
 	case FBIO_ENABLE:
-		info->fbops->fb_enable(info);
+		host->fb_enable(cdev->priv);
 		break;
 	case FBIO_DISABLE:
-		info->fbops->fb_disable(info);
+		host->fb_disable(cdev->priv);
 		break;
 	default:
 		return -ENOSYS;
@@ -27,15 +33,47 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
-static int fb_enable_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int fb_check_if_already_initialized(struct device_d *fb_dev)
+{
+	struct fb_info *info = to_fb_info(fb_dev);
+
+	if (info->enabled) {
+		dev_err(&info->fb_dev, "Video output is active. Cannot change "
+			"until disabled\n");
+		return -EPERM;
+	}
+
+	return 0;
+}
+
+static int fb_cdepth_set(struct device_d *fb_dev, struct param_d *param, const char *val)
 {
-	struct fb_info *info = dev->priv;
+	struct fb_info *info = to_fb_info(fb_dev);
+	unsigned cdepth;
+	int rc;
+
+	rc = fb_check_if_already_initialized(fb_dev);
+	if (rc != 0)
+		return rc;
+
+	cdepth = simple_strtoul(val, NULL, 0);
+	if (cdepth != 0)
+		info->bits_per_pixel = cdepth;
+	else
+		return -EINVAL;
+
+	return dev_param_set_generic(fb_dev, param, val);
+}
+
+static int fb_enable_set(struct device_d *fb_dev, struct param_d *param, const char *val)
+{
+	struct fb_info *info = to_fb_info(fb_dev);
+	struct fb_host *host = info->host;
 	int enable;
 	char *new;
 
 	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
+		return dev_param_set_generic(fb_dev, param, NULL);
 
 	enable = simple_strtoul(val, NULL, 0);
 
@@ -43,20 +81,79 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 		return 0;
 
 	if (enable) {
-		info->fbops->fb_enable(info);
+		host->fb_enable(info);
 		new = "1";
 	} else {
-		info->fbops->fb_disable(info);
+		host->fb_disable(info);
 		new = "0";
 	}
 
-	dev_param_set_generic(dev, param, new);
-
 	info->enabled = !!enable;
 
+	return dev_param_set_generic(fb_dev, param, new);
+}
+
+static void fb_list_modes(struct fb_host *host)
+{
+	unsigned u;
+
+	printf(" Supported video mode(s):\n");
+	for (u = 0; u < host->mode_cnt; u++)
+		printf("  '%s'\n", host->mode[u].name);
+}
+
+static int fb_activate_mode(struct device_d *fb_dev, const struct fb_videomode *mode)
+{
+	struct fb_info *info = to_fb_info(fb_dev);
+	struct fb_host *host = info->host;
+	int rc;
+
+	rc = host->fb_mode(info, mode);
+	if (rc != 0)
+		return rc;
+
+	info->active_mode = mode;
+	/*
+	 * At this point of time we know the remaining information we need
+	 * for the cdev and fb_info structure.
+	 */
+	info->cdev.size = fb_dev->size;
+	info->xres = mode->xres;
+	info->yres = mode->yres;
+
 	return 0;
 }
 
+static int fb_mode_set(struct device_d *fb_dev, struct param_d *param, const char *name)
+{
+	struct fb_host *host = fb_dev->platform_data;
+	unsigned u;
+	int rc;
+
+	pr_debug("%s called\n", __func__);
+
+	rc = fb_check_if_already_initialized(fb_dev);
+	if (rc != 0)
+		return rc;
+
+	/* Search for the requested video mode by name */
+	for (u = 0; u < host->mode_cnt; u++) {
+		if (!strcmp(host->mode[u].name, name))
+			break;
+	}
+	if (u >= host->mode_cnt) {
+		fb_list_modes(host);	/* no mode with 'name' found */
+		return -ENODEV;
+	} else {
+		rc = fb_activate_mode(fb_dev, &host->mode[u]);
+	}
+
+	if (rc == 0)
+		dev_param_set_generic(fb_dev, param, name);
+
+	return rc;
+}
+
 static struct file_operations fb_ops = {
 	.read	= mem_read,
 	.write	= mem_write,
@@ -65,31 +162,85 @@ static struct file_operations fb_ops = {
 	.ioctl	= fb_ioctl,
 };
 
-int register_framebuffer(struct fb_info *info)
+static int add_fb_parameter(struct fb_info *info)
+{
+	char cd[10];
+
+	/** @todo provide base address parameter for the user. Useful? */
+
+	dev_add_param(&info->fb_dev, "cdepth", fb_cdepth_set, NULL, 0);
+	if (info->bits_per_pixel == 0) {
+		dev_set_param(&info->fb_dev, "cdepth", "16");
+		info->bits_per_pixel = 16;
+	} else {
+		sprintf(cd, "%u", info->bits_per_pixel);
+		dev_set_param(&info->fb_dev, "cdepth", cd);
+	}
+
+	/* default is 'none' */
+	dev_add_param(&info->fb_dev, "mode", fb_mode_set, NULL, 0);
+
+	/* default is '0' for 'no output enabled' */
+	dev_add_param(&info->fb_dev, "enable", fb_enable_set, NULL, 0);
+
+	return 0;
+}
+
+static int fb_probe(struct device_d *fb_dev)
 {
 	int id = get_free_deviceid("fb");
-	struct device_d *dev;
+	struct fb_info *info = to_fb_info(fb_dev);
+	struct fb_host *host = info->host;
+
+	fb_dev->priv = &info->cdev;	/* pointer forward */
+	info->cdev.dev = fb_dev;	/* pointer backward */
+	info->cdev.priv = info;         /* pointer backward */
 
 	info->cdev.ops = &fb_ops;
 	info->cdev.name = asprintf("fb%d", id);
-	info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
-	info->cdev.dev = &info->dev;
-	info->cdev.priv = info;
-	info->cdev.dev->map_base = (unsigned long)info->screen_base;
-	info->cdev.dev->size = info->cdev.size;
 
-	dev = &info->dev;
-	dev->priv = info;
-	dev->id = id;
+	info->host = host;
 
-	sprintf(dev->name, "fb");
+	/* setup defaults */
+	if (host->bits_per_pixel != 0)
+		info->bits_per_pixel = host->bits_per_pixel;
+	else
+		info->bits_per_pixel = 16;
 
-	register_device(&info->dev);
-	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
-	dev_set_param(dev, "enable", "0");
+	add_fb_parameter(info);
 
 	devfs_create(&info->cdev);
-
 	return 0;
 }
 
+static struct driver_d fb_driver = {
+	.name	= "framebuffer",
+	.probe	= fb_probe,
+};
+
+static int framebuffer_init(void)
+{
+	return register_driver(&fb_driver);
+}
+
+device_initcall(framebuffer_init);
+
+struct device_d *register_framebuffer(struct fb_host *host)
+{
+	struct fb_info *fb_info;
+	int rc;
+
+	fb_info = xzalloc(sizeof(struct fb_info));
+
+	strcpy(fb_info->fb_dev.name, fb_driver.name);
+	fb_info->host = fb_info->fb_dev.platform_data = (void*)host;
+
+	rc = register_device(&fb_info->fb_dev);
+	if (rc != 0) {
+		pr_debug("Cannot register framebuffer device\n");
+		free(fb_info);
+		return NULL;
+	}
+
+	return &fb_info->fb_dev;
+}
diff --git a/include/fb.h b/include/fb.h
index 218b244..36b2a74 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -77,25 +77,26 @@ struct fb_bitfield {
 
 struct fb_info;
 
-struct fb_ops {
-	/* set color register */
-	int (*fb_setcolreg)(unsigned regno, unsigned red, unsigned green,
-			    unsigned blue, unsigned transp, struct fb_info *info);
-	void (*fb_enable)(struct fb_info *info);
-	void (*fb_disable)(struct fb_info *info);
-};
-
-struct fb_info {
-	struct fb_videomode *mode;
+struct fb_host {
+	const struct fb_videomode *mode;
+	unsigned mode_cnt;
 
-	struct fb_ops *fbops;
-	struct device_d dev;		/* This is this fb device */
+	struct device_d *hw_dev;
 
-	void *screen_base;
+	/* callbacks into the video hardware driver */
+	int (*fb_setcolreg)(struct fb_info*, unsigned, unsigned, unsigned, unsigned, unsigned);
+	int (*fb_mode)(struct fb_info*, const struct fb_videomode*);
+	void (*fb_enable)(struct fb_info*);
+	void (*fb_disable)(struct fb_info*);
 
-	void *priv;
+	unsigned bits_per_pixel;
+};
 
+struct fb_info {
+	struct fb_host *host;
+	struct device_d fb_dev;
 	struct cdev cdev;
+	const struct fb_videomode *active_mode;
 
 	u32 xres;			/* visible resolution		*/
 	u32 yres;
@@ -111,7 +112,7 @@ struct fb_info {
 	int enabled;
 };
 
-int register_framebuffer(struct fb_info *info);
+struct device_d *register_framebuffer(struct fb_host*);
 
 #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)
 #define	FBIO_ENABLE		_IO('F', 2)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
