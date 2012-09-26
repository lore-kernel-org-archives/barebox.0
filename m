Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGoQy-0006jw-1z
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 10:01:36 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E2D86FFB26D
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 12:07:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 11:59:01 +0200
Message-Id: <1348653544-27095-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348653544-27095-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120926095650.GG31983@game.jcrosoft.org>
 <1348653544-27095-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] graphic_utils: pass image so we can draw only the visible
 part of the image
To: barebox@lists.infradead.org

This is needed if the image is bigger than the screen.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/gui/graphic_utils.h |    5 ++++-
 lib/gui/graphic_utils.c     |    7 ++++---
 lib/gui/png.c               |    2 +-
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 9909b6c..4690e51 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -7,7 +7,10 @@
 #ifndef __GRAPHIC_UTILS_H__
 #define __GRAPHIC_UTILS_H__
 
-void rgba_blend(struct fb_info *info, void *image, void* dest, int height,
+#include <fb.h>
+#include <gui/image.h>
+
+void rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
 	int width, int startx, int starty, bool is_rgba);
 void set_pixel(struct fb_info *info, void *adr, u32 px);
 void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index bf42103..06f811c 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -157,13 +157,14 @@ void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 	set_pixel(info, adr, px);
 }
 
-void rgba_blend(struct fb_info *info, void *image, void* buf, int height,
+void rgba_blend(struct fb_info *info, struct image *img, void* buf, int height,
 	int width, int startx, int starty, bool is_rgba)
 {
 	unsigned char *adr;
 	int x, y;
 	int xres;
 	int img_byte_per_pixel = 3;
+	void *image;
 
 	if (is_rgba)
 		img_byte_per_pixel++;
@@ -173,11 +174,11 @@ void rgba_blend(struct fb_info *info, void *image, void* buf, int height,
 	for (y = 0; y < height; y++) {
 		adr = buf + ((y + starty) * xres + startx) *
 				(info->bits_per_pixel >> 3);
+		image = img->data + (y * img->width *img_byte_per_pixel);
 
 		for (x = 0; x < width; x++) {
-			char *pixel;
+			uint8_t *pixel = image;
 
-			pixel = image;
 			if (is_rgba)
 				set_rgba_pixel(info, adr, pixel[0], pixel[1],
 						pixel[2], pixel[3]);
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 5d77c8c..1e9efd5 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -63,7 +63,7 @@ static int png_renderer(struct fb_info *info, struct image *img, void* fb,
 
 	buf = offscreenbuf ? offscreenbuf : fb;
 
-	rgba_blend(info, img->data, buf, height, width, startx, starty, true);
+	rgba_blend(info, img, buf, height, width, startx, starty, true);
 
 	if (offscreenbuf) {
 		int fbsize;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
