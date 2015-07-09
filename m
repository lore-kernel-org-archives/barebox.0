Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6gp-0007EX-NZ
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:56:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:55:51 +0200
Message-Id: <1436428552-19970-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] graphic_utils: Add a common namespace to functions
To: Barebox List <barebox@lists.infradead.org>

This adds a common namespace to the graphic functions. We use
gu_ for graphic_utils.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/splash.c           |  6 +++---
 include/gui/graphic_utils.h | 12 ++++++------
 lib/gui/bmp.c               |  4 ++--
 lib/gui/graphic_utils.c     | 22 +++++++++++-----------
 lib/gui/png.c               |  2 +-
 5 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 077c0e4..04562e3 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -61,19 +61,19 @@ static int do_splash(int argc, char *argv[])
 
 	if (sc.offscreenbuf) {
 		if (do_bg)
-			memset_pixel(&sc.info, sc.offscreenbuf, bg_color,
+			gu_memset_pixel(&sc.info, sc.offscreenbuf, bg_color,
 					sc.s.width * sc.s.height);
 		else
 			memcpy(sc.offscreenbuf, sc.fb, sc.fbsize);
 	} else if (do_bg) {
-		memset_pixel(&sc.info, sc.fb, bg_color, sc.s.width * sc.s.height);
+		gu_memset_pixel(&sc.info, sc.fb, bg_color, sc.s.width * sc.s.height);
 	}
 
 	ret = image_renderer_file(&sc, &s, image_file);
 	if (ret > 0)
 		ret = 0;
 
-	screen_blit(&sc);
+	gu_screen_blit(&sc);
 
 	fb_close(&sc);
 
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 33e0cbf..de7bb24 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -11,14 +11,14 @@
 #include <gui/image.h>
 #include <gui/gui.h>
 
-void rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
+void gu_rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
 	int width, int startx, int starty, bool is_rgba);
-void set_pixel(struct fb_info *info, void *adr, u32 px);
-void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
-void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
-void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
+void gu_set_pixel(struct fb_info *info, void *adr, u32 px);
+void gu_set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
+void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
+void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
 int fb_open(const char * fbdev, struct screen *sc, bool offscreen);
 void fb_close(struct screen *sc);
-void screen_blit(struct screen *sc);
+void gu_screen_blit(struct screen *sc);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index d457c01..2a0509d 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -86,7 +86,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 				pixel = *image;
 
-				set_rgb_pixel(&sc->info, adr, color_table[pixel].red,
+				gu_set_rgb_pixel(&sc->info, adr, color_table[pixel].red,
 						color_table[pixel].green,
 						color_table[pixel].blue);
 				adr += sc->info.bits_per_pixel >> 3;
@@ -108,7 +108,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 				pixel = image;
 
-				set_rgb_pixel(&sc->info, adr, pixel[2], pixel[1],
+				gu_set_rgb_pixel(&sc->info, adr, pixel[2], pixel[1],
 						pixel[0]);
 				adr += sc->info.bits_per_pixel >> 3;
 
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 6465f8e..ae2e9ca 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -46,7 +46,7 @@ static void memsetl(void *s, u32 c, size_t n)
 		*tmp++ = c;
 }
 
-void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
+void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
 {
 	u32 px;
 	u8 *screen = buf;
@@ -98,7 +98,7 @@ static void get_rgb_pixel(struct fb_info *info, void *adr, u8 *r ,u8 *g, u8 *b)
 	*b = ((px & ~bmask) >> info->blue.offset) << (8 - info->blue.length);
 }
 
-void set_pixel(struct fb_info *info, void *adr, u32 px)
+void gu_set_pixel(struct fb_info *info, void *adr, u32 px)
 {
 	switch (info->bits_per_pixel) {
 	case 8:
@@ -112,7 +112,7 @@ void set_pixel(struct fb_info *info, void *adr, u32 px)
 	}
 }
 
-void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b)
+void gu_set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b)
 {
 	u32 px;
 
@@ -120,7 +120,7 @@ void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b)
 		(g >> (8 - info->green.length)) << info->green.offset |
 		(b >> (8 - info->blue.length)) << info->blue.offset;
 
-	set_pixel(info, adr, px);
+	gu_set_pixel(info, adr, px);
 }
 
 static u8 alpha_mux(int s, int d, int a)
@@ -128,7 +128,7 @@ static u8 alpha_mux(int s, int d, int a)
 	return (d * a + s * (255 - a)) >> 8;
 }
 
-void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
+void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 {
 	u32 px = 0x0;
 
@@ -149,7 +149,7 @@ void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 			g = alpha_mux(sg, g, a);
 			b = alpha_mux(sb, b, a);
 
-			set_rgb_pixel(info, adr, r, g, b);
+			gu_set_rgb_pixel(info, adr, r, g, b);
 
 			return;
 		}
@@ -159,10 +159,10 @@ void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 		(g >> (8 - info->green.length)) << info->green.offset |
 		(b >> (8 - info->blue.length)) << info->blue.offset;
 
-	set_pixel(info, adr, px);
+	gu_set_pixel(info, adr, px);
 }
 
-void rgba_blend(struct fb_info *info, struct image *img, void* buf, int height,
+void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int height,
 	int width, int startx, int starty, bool is_rgba)
 {
 	unsigned char *adr;
@@ -185,10 +185,10 @@ void rgba_blend(struct fb_info *info, struct image *img, void* buf, int height,
 			uint8_t *pixel = image;
 
 			if (is_rgba)
-				set_rgba_pixel(info, adr, pixel[0], pixel[1],
+				gu_set_rgba_pixel(info, adr, pixel[0], pixel[1],
 						pixel[2], pixel[3]);
 			else
-				set_rgb_pixel(info, adr, pixel[0], pixel[1],
+				gu_set_rgb_pixel(info, adr, pixel[0], pixel[1],
 						pixel[2]);
 			adr += info->bits_per_pixel >> 3;
 			image += img_byte_per_pixel;
@@ -243,7 +243,7 @@ void fb_close(struct screen *sc)
 	close(sc->fd);
 }
 
-void screen_blit(struct screen *sc)
+void gu_screen_blit(struct screen *sc)
 {
 	if (!sc->offscreenbuf)
 		return;
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 2921ab3..10faf5c 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -67,7 +67,7 @@ static int png_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 	buf = gui_screen_redering_buffer(sc);
 
-	rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
+	gu_rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
 
 	return img->height;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
