Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJHC-0001Ry-CL
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:40 +0100
Message-Id: <1387381362-7780-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] video: Add screen_size field
To: barebox@lists.infradead.org

barebox does not need the screen size directly, but we pass the
framebuffer to Linux via simnplefb it is desirable to pass the
full size of the framebuffer. Default to calculated values from
the screen resolution.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 2 ++
 include/fb.h       | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 4263027..c36b9ad 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -78,6 +78,8 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 
 	if (!info->line_length)
 		info->line_length = info->xres * (info->bits_per_pixel >> 3);
+	if (!info->screen_size)
+		info->screen_size = info->line_length * info->yres;
 
 	if (!ret) {
 		dev->resource[0].start = (resource_size_t)info->screen_base;
diff --git a/include/fb.h b/include/fb.h
index 98d5a03..22fa9b1 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -86,6 +86,7 @@ struct fb_info {
 	struct device_d dev;		/* This is this fb device */
 
 	void *screen_base;
+	unsigned long screen_size;
 
 	void *priv;
 
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
