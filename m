Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAhkz-0007lR-L5
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 11:32:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 26 Oct 2010 13:31:40 +0200
Message-Id: <1288092708-5187-5-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/12] Remove the old videomode functions
To: barebox@lists.infradead.org

Remove the old functions from the framebuffer framework. This patch is kept
separate for review only. Should be merged with the previous one patch
prior commit.

This is patch 2 of 7 to keep the repository bisectable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/video/fb.c |   67 ++-------------------------------------------------
 include/fb.h       |   40 -------------------------------
 2 files changed, 3 insertions(+), 104 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index c3c4761..428ad34 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -11,6 +11,7 @@
 
 static int fb_ioctl(struct cdev* cdev, int req, void *data)
 {
+	struct fb_host *host = cdev->dev->platform_data;
 	struct fb_info *info = cdev->priv;
 
 	switch (req) {
@@ -18,10 +19,10 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 		memcpy(data, info, sizeof(*info));
 		break;
 	case FBIO_ENABLE:
-		info->fbops->fb_enable(info);
+		(host->fb_enable)(cdev->priv);
 		break;
 	case FBIO_DISABLE:
-		info->fbops->fb_disable(info);
+		(host->fb_disable)(cdev->priv);
 		break;
 	default:
 		return -ENOSYS;
@@ -30,37 +31,6 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
-static int fb_enable_set(struct device_d *dev, struct param_d *param,
-		const char *val)
-{
-	struct fb_info *info = dev->priv;
-	int enable;
-	char *new;
-
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
-
-	enable = simple_strtoul(val, NULL, 0);
-
-	if (info->enabled == !!enable)
-		return 0;
-
-	if (enable) {
-		info->fbops->fb_enable(info);
-		new = "1";
-	} else {
-		info->fbops->fb_disable(info);
-		new = "0";
-	}
-
-	dev_param_set_generic(dev, param, new);
-
-	info->enabled = !!enable;
-
-	return 0;
-}
-
-#if 0
 #ifdef CONFIG_VIDEO_DELAY_INIT
 static int fb_check_if_already_initialized(struct device_d *fb_dev)
 {
@@ -191,7 +161,6 @@ static int fb_mode_set(struct device_d *fb_dev, struct param_d *param, const cha
 	return rc;
 }
 #endif
-#endif
 
 static struct file_operations fb_ops = {
 	.read	= mem_read,
@@ -201,7 +170,6 @@ static struct file_operations fb_ops = {
 	.ioctl	= fb_ioctl,
 };
 
-#if 0
 static int add_fb_parameter(struct device_d *fb_dev)
 {
 #ifdef CONFIG_VIDEO_DELAY_INIT
@@ -306,32 +274,3 @@ struct device_d *register_framebuffer(struct fb_host *host, void *base, unsigned
 
 	return fb_dev;
 }
-#endif
-
-int register_framebuffer(struct fb_info *info)
-{
-	int id = get_free_deviceid("fb");
-	struct device_d *dev;
-
-	info->cdev.ops = &fb_ops;
-	info->cdev.name = asprintf("fb%d", id);
-	info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
-	info->cdev.dev = &info->dev;
-	info->cdev.priv = info;
-	info->cdev.dev->map_base = (unsigned long)info->screen_base;
-	info->cdev.dev->size = info->cdev.size;
-
-	dev = &info->dev;
-	dev->priv = info;
-
-	sprintf(dev->name, "fb");
-
-	register_device(&info->dev);
-	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
-	dev_set_param(dev, "enable", "0");
-
-	devfs_create(&info->cdev);
-
-	return 0;
-}
-
diff --git a/include/fb.h b/include/fb.h
index 96edc24..c94c1d0 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -77,15 +77,6 @@ struct fb_bitfield {
 
 struct fb_info;
 
-struct fb_ops {
-	/* set color register */
-	int (*fb_setcolreg)(unsigned regno, unsigned red, unsigned green,
-			    unsigned blue, unsigned transp, struct fb_info *info);
-	void (*fb_enable)(struct fb_info *info);
-	void (*fb_disable)(struct fb_info *info);
-};
-
-#if 0
 struct fb_host {
 	const struct fb_videomode *mode;
 	unsigned mode_cnt;
@@ -117,41 +108,10 @@ struct fb_info {
 	struct fb_bitfield blue;
 	struct fb_bitfield transp;	/* transparency			*/
 
-#ifdef CONFIG_VIDEO_DELAY_ENABLING
 	int enabled;
-#endif
 };
 
 struct device_d *register_framebuffer(struct fb_host*, void*, unsigned);
-#endif
-
-struct fb_info {
-	struct fb_videomode *mode;
-
-	struct fb_ops *fbops;
-	struct device_d dev;		/* This is this fb device */
-
-	void *screen_base;
-
-	void *priv;
-
-	struct cdev cdev;
-
-	u32 xres;			/* visible resolution		*/
-	u32 yres;
-	u32 bits_per_pixel;		/* guess what			*/
-
-	u32 grayscale;			/* != 0 Graylevels instead of colors */
-
-	struct fb_bitfield red;		/* bitfield in fb mem if true color, */
-	struct fb_bitfield green;	/* else only length is significant */
-	struct fb_bitfield blue;
-	struct fb_bitfield transp;	/* transparency			*/
-
-	int enabled;
-};
-
-int register_framebuffer(struct fb_info *info);
 
 #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)
 #define	FBIO_ENABLE		_IO('F', 2)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
