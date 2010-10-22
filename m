Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT5-0006Ht-0I
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:26 +0200
Message-Id: <1287753331-7696-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] fb: i.MX IPU: move fb_info initialization to a single
	function
To: barebox@lists.infradead.org

The bitfield information was only added to fb_info when the
framebuffer actually was enabled. That made it impossible to
call 'bmp' before enabling the display.
So, move all fb_info init to a single place and make it a function
to better allow for multiple displays later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c |   63 ++++++++++++++++++++++++-------------------
 1 files changed, 35 insertions(+), 28 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 399af75..08036aa 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -729,7 +729,6 @@ static void sdc_enable_channel(struct ipu_fb_info *fbi, void *fbmem)
 static int mx3fb_set_par(struct fb_info *info)
 {
 	struct ipu_fb_info *fbi = info->priv;
-	struct imx_ipu_fb_rgb *rgb;
 	struct fb_videomode *mode = info->mode;
 	int ret;
 
@@ -740,29 +739,6 @@ static int mx3fb_set_par(struct fb_info *info)
 	reg_write(fbi, (mode->left_margin << 16) | mode->upper_margin,
 			SDC_BG_POS);
 
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
-
-
 	return 0;
 }
 
@@ -853,6 +829,39 @@ static struct fb_ops imxfb_ops = {
 	.fb_disable = ipu_fb_disable,
 };
 
+static void imxfb_init_info(struct fb_info *info, struct fb_videomode *mode,
+		int bpp)
+{
+	struct imx_ipu_fb_rgb *rgb;
+
+	info->mode = mode;
+	info->xres = mode->xres;
+	info->yres = mode->yres;
+	info->bits_per_pixel = bpp;
+
+	switch (info->bits_per_pixel) {
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
+	info->red    = rgb->red;
+	info->green  = rgb->green;
+	info->blue   = rgb->blue;
+	info->transp = rgb->transp;
+}
+
 static int imxfb_probe(struct device_d *dev)
 {
 	struct ipu_fb_info *fbi;
@@ -869,13 +878,11 @@ static int imxfb_probe(struct device_d *dev)
 	fbi->regs = (void *)dev->map_base;
 	fbi->dev = dev;
 	info->priv = fbi;
-	info->mode = pdata->mode;
-	info->xres = pdata->mode->xres;
-	info->yres = pdata->mode->yres;
-	info->bits_per_pixel = pdata->bpp;
 	info->fbops = &imxfb_ops;
 	fbi->enable = pdata->enable;
 
+	imxfb_init_info(info, pdata->mode, pdata->bpp);
+
 	dev_info(dev, "i.MX Framebuffer driver\n");
 
 	/*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
