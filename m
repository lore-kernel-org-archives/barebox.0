Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdev-0004Vl-7s
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:50 +0200
Message-Id: <1437031912-24754-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
References: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] fb: sdl: create graphics window on enabling
To: Barebox List <barebox@lists.infradead.org>

The framebuffer should be enabled on the fb_enable callback and disabled
in the fb_disable callback. In SDL context this means the grapics window
has to be created / destroyed in fb_enable / fb_disable.

With this change the framebuffer has to be enabled explicitly with
fb0.enable=1 like with other framebuffer driver aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/sdl.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index a568340..5e1dc8e 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -15,12 +15,21 @@
 
 static void sdlfb_enable(struct fb_info *info)
 {
+	int ret;
+
+	ret = sdl_open(info->xres, info->yres, info->bits_per_pixel,
+		     info->screen_base);
+	if (ret)
+		return;
+	sdl_get_bitfield_rgba(&info->red, &info->green, &info->blue, &info->transp);
+
 	sdl_start_timer();
 }
 
 static void sdlfb_disable(struct fb_info *info)
 {
 	sdl_stop_timer();
+	sdl_close();
 }
 
 static struct fb_ops sdlfb_ops = {
@@ -50,12 +59,6 @@ static int sdlfb_probe(struct device_d *dev)
 	fb->screen_base = xzalloc(fb->xres * fb->yres *
 				  fb->bits_per_pixel >> 3);
 
-	if (sdl_open(fb->xres, fb->yres, fb->bits_per_pixel,
-		     fb->screen_base))
-		goto err;
-
-	sdl_get_bitfield_rgba(&fb->red, &fb->green, &fb->blue, &fb->transp);
-
 	dev_dbg(dev, "red: length = %d, offset = %d\n",
 		fb->red.length, fb->red.offset);
 	dev_dbg(dev, "green: length = %d, offset = %d\n",
@@ -72,7 +75,6 @@ static int sdlfb_probe(struct device_d *dev)
 	if (!ret)
 		return 0;
 
-err:
 	kfree(fb->screen_base);
 	kfree(fb);
 	sdl_close();
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
