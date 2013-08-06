Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6hjV-0006tn-2y
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:55:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:55:05 +0200
Message-Id: <1375797305-5176-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fb: make fb device a pure device
To: barebox@lists.infradead.org

Makes the code simpler and makes the framebuffer layer independent
of initcalls.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 98 +++++++++++++++++++-----------------------------------
 1 file changed, 35 insertions(+), 63 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index a4a8b00..420e4e3 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <malloc.h>
 #include <fb.h>
 #include <errno.h>
 #include <command.h>
@@ -93,10 +94,31 @@ static struct file_operations fb_ops = {
 	.ioctl	= fb_ioctl,
 };
 
+static void fb_info(struct device_d *dev)
+{
+	struct fb_info *info = dev->priv;
+	int i;
+
+	if (!info->num_modes)
+		return;
+
+	printf("available modes:\n");
+
+	for (i = 0; i < info->num_modes; i++) {
+		struct fb_videomode *mode = &info->mode_list[i];
+
+		printf("%-10s %dx%d@%d\n", mode->name,
+				mode->xres, mode->yres, mode->refresh);
+	}
+
+	printf("\n");
+}
+
 int register_framebuffer(struct fb_info *info)
 {
 	int id = get_free_deviceid("fb");
 	struct device_d *dev;
+	int ret;
 
 	dev = &info->dev;
 
@@ -113,47 +135,13 @@ int register_framebuffer(struct fb_info *info)
 
 	dev->priv = info;
 	dev->id = id;
+	dev->info = fb_info;
 
 	sprintf(dev->name, "fb");
 
-	info->dev.bus = &fb_bus;
-	register_device(&info->dev);
-
-	return 0;
-}
-
-static void fb_info(struct device_d *dev)
-{
-	struct fb_info *info = dev->priv;
-	int i;
-
-	if (!info->num_modes)
-		return;
-
-	printf("available modes:\n");
-
-	for (i = 0; i < info->num_modes; i++) {
-		struct fb_videomode *mode = &info->mode_list[i];
-
-		printf("%-10s %dx%d@%d\n", mode->name,
-				mode->xres, mode->yres, mode->refresh);
-	}
-
-	printf("\n");
-}
-
-static struct driver_d fb_driver = {
-	.name  = "fb",
-};
-
-static int fb_match(struct device_d *dev, struct driver_d *drv)
-{
-	return 0;
-}
-
-static int fb_probe(struct device_d *dev)
-{
-	struct fb_info *info = dev->priv;
+	ret = register_device(&info->dev);
+	if (ret)
+		goto err_free;
 
 	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
 			&info->p_enable, info);
@@ -164,32 +152,16 @@ static int fb_probe(struct device_d *dev)
 		dev_set_param(dev, "mode_name", info->mode_list[0].name);
 	}
 
-	dev->info = fb_info;
-
-	return devfs_create(&info->cdev);
-}
-
-static void fb_remove(struct device_d *dev)
-{
-}
+	ret = devfs_create(&info->cdev);
+	if (ret)
+		goto err_unregister;
 
-struct bus_type fb_bus = {
-	.name = "fb",
-	.match = fb_match,
-	.probe = fb_probe,
-	.remove = fb_remove,
-};
+	return 0;
 
-static int fb_bus_init(void)
-{
-	return bus_register(&fb_bus);
-}
-pure_initcall(fb_bus_init);
+err_unregister:
+	unregister_device(&info->dev);
+err_free:
+	free(dev->resource);
 
-static int fb_init_driver(void)
-{
-	fb_driver.bus = &fb_bus;
-	register_driver(&fb_driver);
-	return 0;
+	return ret;
 }
-device_initcall(fb_init_driver);
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
