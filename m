Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIe-0003Ek-Rt
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:27 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:05 +0100
Message-Id: <1292857509-13881-7-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/10] Add the feature to change the video mode at runtime
To: barebox@lists.infradead.org

This patch add the possibility to change the video mode at barebox's runtime
if the graphics driver in use supports it.

Signed-off-by: <jbe@pengutronix.de>
---
 drivers/video/fb.c |   35 +++++++++++++++++++++++++++++++++++
 include/fb.h       |    3 +++
 2 files changed, 38 insertions(+), 0 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index bef4147..aad0e1f 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -56,6 +56,35 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
+static int fb_setup_mode(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	struct fb_info *info = dev->priv;
+	int mode, ret;
+
+	if (info->enabled != 0)
+		return -EPERM;
+
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
+
+	for (mode = 0; mode < info->num_modes; mode++) {
+		if (!strcmp(info->mode_list[mode].name, val))
+			break;
+	}
+	if (mode >= info->num_modes)
+		return -EINVAL;
+
+	info->mode = &info->mode_list[mode];
+
+	ret = info->fbops->fb_activate_var(info);
+
+	if (ret == 0)
+		dev_param_set_generic(dev, param, val);
+
+	return ret;
+}
+
 static struct file_operations fb_ops = {
 	.read	= mem_read,
 	.write	= mem_write,
@@ -87,6 +116,12 @@ int register_framebuffer(struct fb_info *info)
 	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
 	dev_set_param(dev, "enable", "0");
 
+	if (info->num_modes && (info->mode_list != NULL) &&
+			(info->fbops->fb_activate_var != NULL)) {
+		dev_add_param(dev, "mode_name", fb_setup_mode, NULL, 0);
+		dev_set_param(dev, "mode_name", info->mode_list[0].name);
+	}
+
 	devfs_create(&info->cdev);
 
 	return 0;
diff --git a/include/fb.h b/include/fb.h
index 379f931..41deb8c 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -73,10 +73,13 @@ struct fb_ops {
 			    unsigned blue, unsigned transp, struct fb_info *info);
 	void (*fb_enable)(struct fb_info *info);
 	void (*fb_disable)(struct fb_info *info);
+	int (*fb_activate_var)(struct fb_info *info);
 };
 
 struct fb_info {
 	struct fb_videomode *mode;
+	struct fb_videomode *mode_list;
+	unsigned num_modes;
 
 	struct fb_ops *fbops;
 	struct device_d dev;		/* This is this fb device */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
