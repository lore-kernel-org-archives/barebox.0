Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9L-0000pY-Uv
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:36 +0000
Received: by mail-ea0-f178.google.com with SMTP id a10so863211eae.37
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:14 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.12
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:13 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:00:59 +0100
Message-Id: <1383606064-30494-2-git-send-email-a.heider@gmail.com>
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 1/6] fb: add a line_length value to struct fb_info
To: barebox@lists.infradead.org

Add support for framebuffers with noncontiguous horizontal lines.

Video drivers can set this value if the hardware requires it.
In case a driver does not set it, the current value of
xres * (bpp / 8) is used instead.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 drivers/video/fb.c | 11 +++++++++--
 include/fb.h       |  1 +
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 420e4e3..0159994 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -72,12 +72,16 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 
 	info->xres = info->mode->xres;
 	info->yres = info->mode->yres;
+	info->line_length = 0;
 
 	ret = info->fbops->fb_activate_var(info);
 
+	if (!info->line_length)
+		info->line_length = info->xres * (info->bits_per_pixel >> 3);
+
 	if (!ret) {
 		dev->resource[0].start = (resource_size_t)info->screen_base;
-		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
+		info->cdev.size = info->line_length * info->yres;
 		dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
 		dev_param_set_generic(dev, param, val);
 	} else
@@ -122,9 +126,12 @@ int register_framebuffer(struct fb_info *info)
 
 	dev = &info->dev;
 
+	if (!info->line_length)
+		info->line_length = info->xres * (info->bits_per_pixel >> 3);
+
 	info->cdev.ops = &fb_ops;
 	info->cdev.name = asprintf("fb%d", id);
-	info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
+	info->cdev.size = info->line_length * info->yres;
 	info->cdev.dev = dev;
 	info->cdev.priv = info;
 	dev->resource = xzalloc(sizeof(struct resource));
diff --git a/include/fb.h b/include/fb.h
index df4ba8e..cf9ffa0 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -94,6 +94,7 @@ struct fb_info {
 	u32 xres;			/* visible resolution		*/
 	u32 yres;
 	u32 bits_per_pixel;		/* guess what			*/
+	u32 line_length;		/* length of a line in bytes	*/
 
 	u32 grayscale;			/* != 0 Graylevels instead of colors */
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
