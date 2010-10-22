Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Ks6-000298-Fv
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:53:39 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 18:53:19 +0200
Message-Id: <1287766405-1646-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/11] Add verbose framebuffer device info
To: barebox@lists.infradead.org

This is patch 3 of 7 to keep the repository bisectable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/video/Kconfig |    6 ++++++
 drivers/video/fb.c    |   40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 46 insertions(+), 0 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index e6ecfc8..f96accc 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -26,6 +26,12 @@ config VIDEO_DELAY_INIT
           This entry adds the "mode" parameter to the video device, to setup
           the desired videomode prior enabling it at runtime.
 
+config VIDEO_INFO_VERBOSE
+	bool "verbose video info"
+	help
+	  Say 'y' here to be more verbose when running the 'devinfo' command
+	  on the framebuffer device.
+
 comment "drivers"
 
 config DRIVER_VIDEO_IMX
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ca3a4cd..15d993d 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -172,6 +172,45 @@ static struct file_operations fb_ops = {
 	.ioctl	= fb_ioctl,
 };
 
+static void fb_info(struct device_d *fb_dev)
+{
+	struct cdev *cdev = fb_dev->priv;
+	struct fb_info *info = cdev->priv;
+
+	printf(" Video/Mode info:\n");
+#ifdef CONFIG_VIDEO_DELAY_ENABLING
+	printf("  Video output %senabled\n", info->enabled != 0 ? "" : "not ");
+#endif
+	printf(" Current video mode:\n");
+	if (info->active_mode != NULL) {
+		printf("  Name: %s\n", info->active_mode->name);
+#ifdef CONFIG_VIDEO_INFO_VERBOSE
+		if (info->active_mode->refresh == 0)
+			printf("  Refresh rate: undefined\n");
+		else
+			printf("  Refresh rate: %u Hz\n",  info->active_mode->refresh);
+		printf("  Horizontal active pixel: %u\n", info->active_mode->xres);
+		printf("  Vertical active lines: %u\n", info->active_mode->yres);
+		printf("  Pixel clock: %u kHz\n", PICOS2KHZ(info->active_mode->pixclock));
+		printf("  Left/Right margin (pixel): %u/%u\n", info->active_mode->left_margin,
+			info->active_mode->right_margin);
+		printf("  Upper/Lower margin (lines): %u/%u\n", info->active_mode->upper_margin,
+			info->active_mode->lower_margin);
+		printf("  HSYNC length in pixel: %u, polarity: %s\n", info->active_mode->hsync_len,
+			(info->active_mode->sync & FB_SYNC_HOR_HIGH_ACT) ? "high" : "low");
+		printf("  VSYNC length in lines: %u, polarity: %s\n", info->active_mode->vsync_len,
+			(info->active_mode->sync & FB_SYNC_VERT_HIGH_ACT) ? "high" : "low");
+		printf("  Colour depth: %u bpp\n", info->bits_per_pixel);
+		printf("  Framebuffer size is: %u bytes\n", cdev->size);
+		/* TODO add the remaining information from fb_videomode. How valuable are they? */
+#endif
+	} else {
+		printf ("  No video mode selected yet\n");
+	}
+
+	fb_list_modes(fb_dev->platform_data);
+}
+
 static int add_fb_parameter(struct device_d *fb_dev)
 {
 #ifdef CONFIG_VIDEO_DELAY_INIT
@@ -250,6 +289,7 @@ static int fb_probe(struct device_d *fb_dev)
 static struct driver_d fb_driver = {
 	.name	= "framebuffer",
 	.probe	= fb_probe,
+	.info	= fb_info,
 };
 
 static int framebuffer_init(void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
