Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJQQy-0001br-Uo
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 12:51:22 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Nov 2010 13:50:56 +0100
Message-Id: <1290171063-28870-5-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/11] Add verbose framebuffer device info
To: barebox@lists.infradead.org

This is patch 2 of 4 to keep the repository bisectable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/video/Kconfig |   10 ++++++++++
 drivers/video/fb.c    |   49 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+), 0 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 7a89a3f..b600444 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -5,6 +5,16 @@ menuconfig VIDEO
 
 if VIDEO
 
+comment "runtime options"
+
+config VIDEO_INFO_VERBOSE
+	bool "Verbose video info"
+	help
+	  Say 'y' here to be more verbose when running the 'devinfo' command
+	  on the framebuffer device.
+
+comment "drivers"
+
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
 	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 5806dbe..d1ba85a 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -162,6 +162,54 @@ static struct file_operations fb_ops = {
 	.ioctl	= fb_ioctl,
 };
 
+static void fb_info(struct device_d *fb_dev)
+{
+	struct fb_info *info = to_fb_info(fb_dev);
+
+	printf(" Video/Mode info:\n");
+	printf("  Video output %senabled\n", info->enabled != 0 ? "" : "not ");
+	printf(" Current video mode:\n");
+	if (info->active_mode != NULL) {
+		printf("  Name: %s\n", info->active_mode->name);
+#ifdef CONFIG_VIDEO_INFO_VERBOSE
+		if (info->active_mode->refresh == 0)
+			printf("  Refresh rate: undefined\n");
+		else
+			printf("  Refresh rate: %u Hz\n",
+					info->active_mode->refresh);
+		printf("  Horizontal active pixel: %u\n",
+					info->active_mode->xres);
+		printf("  Vertical active lines: %u\n",
+					info->active_mode->yres);
+		printf("  Pixel clock: %u kHz\n",
+					PICOS2KHZ(info->active_mode->pixclock));
+		printf("  Left/Right margin (pixel): %u/%u\n",
+			info->active_mode->left_margin,
+			info->active_mode->right_margin);
+		printf("  Upper/Lower margin (lines): %u/%u\n",
+			info->active_mode->upper_margin,
+			info->active_mode->lower_margin);
+		printf("  HSYNC length in pixel: %u, polarity: %s\n",
+			info->active_mode->hsync_len,
+			(info->active_mode->sync & FB_SYNC_HOR_HIGH_ACT) ?
+							"high" : "low");
+		printf("  VSYNC length in lines: %u, polarity: %s\n",
+			info->active_mode->vsync_len,
+			(info->active_mode->sync & FB_SYNC_VERT_HIGH_ACT) ?
+							"high" : "low");
+		printf("  Colour depth: %u bpp\n", info->bits_per_pixel);
+		printf("  Framebuffer size is: %u bytes\n", info->cdev.size);
+		/** @todo Add the remaining information from fb_videomode.
+		 * How valuable they are?
+		 */
+#endif
+	} else {
+		printf ("  No video mode selected yet\n");
+	}
+
+	fb_list_modes(info->host);
+}
+
 static int add_fb_parameter(struct fb_info *info)
 {
 	char cd[10];
@@ -216,6 +264,7 @@ static int fb_probe(struct device_d *fb_dev)
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
