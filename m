Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeR-0004Bx-Gl
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:51 +0200
Message-Id: <1437031912-24754-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] graphics_utils: Let fb_open allocate the screen
To: Barebox List <barebox@lists.infradead.org>

Allocate the screen dynamically in fb_open. This opens the way to create
a fb_create_screen function which takes a struct fb_info * instead of a
filename. This is suitable for the framebuffer console which already has
a struct fb_info *.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/splash.c           | 27 ++++++++--------
 include/gui/graphic_utils.h |  3 +-
 include/gui/gui.h           |  2 +-
 lib/gui/bmp.c               | 16 +++++-----
 lib/gui/graphic_utils.c     | 78 ++++++++++++++++++++++++++++++---------------
 lib/gui/png.c               |  2 +-
 6 files changed, 77 insertions(+), 51 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 04562e3..90f0a0c 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -10,9 +10,9 @@
 static int do_splash(int argc, char *argv[])
 {
 	struct surface s;
-	struct screen sc;
+	struct screen *sc;
 	int ret = 0;
-	int opt, fd;
+	int opt;
 	char *fbdev = "/dev/fb0";
 	char *image_file;
 	int offscreen = 0;
@@ -20,7 +20,6 @@ static int do_splash(int argc, char *argv[])
 	bool do_bg = false;
 
 	memset(&s, 0, sizeof(s));
-	memset(&sc, 0, sizeof(sc));
 
 	s.x = -1;
 	s.y = -1;
@@ -53,29 +52,29 @@ static int do_splash(int argc, char *argv[])
 	}
 	image_file = argv[optind];
 
-	fd = fb_open(fbdev, &sc, offscreen);
-	if (fd < 0) {
+	sc = fb_open(fbdev, offscreen);
+	if (IS_ERR(sc)) {
 		perror("fd_open");
-		return fd;
+		return PTR_ERR(sc);
 	}
 
-	if (sc.offscreenbuf) {
+	if (sc->offscreenbuf) {
 		if (do_bg)
-			gu_memset_pixel(&sc.info, sc.offscreenbuf, bg_color,
-					sc.s.width * sc.s.height);
+			gu_memset_pixel(sc->info, sc->offscreenbuf, bg_color,
+					sc->s.width * sc->s.height);
 		else
-			memcpy(sc.offscreenbuf, sc.fb, sc.fbsize);
+			memcpy(sc->offscreenbuf, sc->fb, sc->fbsize);
 	} else if (do_bg) {
-		gu_memset_pixel(&sc.info, sc.fb, bg_color, sc.s.width * sc.s.height);
+		gu_memset_pixel(sc->info, sc->fb, bg_color, sc->s.width * sc->s.height);
 	}
 
-	ret = image_renderer_file(&sc, &s, image_file);
+	ret = image_renderer_file(sc, &s, image_file);
 	if (ret > 0)
 		ret = 0;
 
-	gu_screen_blit(&sc);
+	gu_screen_blit(sc);
 
-	fb_close(&sc);
+	fb_close(sc);
 
 	return ret;
 }
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 161f8d6..ab8c3fc 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -19,7 +19,8 @@ void gu_set_pixel(struct fb_info *info, void *adr, u32 px);
 void gu_set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
 void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
-int fb_open(const char * fbdev, struct screen *sc, bool offscreen);
+struct screen *fb_create_screen(struct fb_info *info, bool offscreen);
+struct screen *fb_open(const char *fbdev, bool offscreen);
 void fb_close(struct screen *sc);
 void gu_screen_blit(struct screen *sc);
 void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
diff --git a/include/gui/gui.h b/include/gui/gui.h
index 59ff590..03e60aa 100644
--- a/include/gui/gui.h
+++ b/include/gui/gui.h
@@ -18,7 +18,7 @@ struct surface {
 
 struct screen {
 	int fd;
-	struct fb_info info;
+	struct fb_info *info;
 
 	struct surface s;
 
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 892b759..143aa28 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -79,17 +79,17 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			image = (char *)bmp +
 					get_unaligned_le32(&bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + (y + starty) * sc->info.line_length +
-					startx * (sc->info.bits_per_pixel >> 3);
+			adr = buf + (y + starty) * sc->info->line_length +
+					startx * (sc->info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				int pixel;
 
 				pixel = *image;
 
-				gu_set_rgb_pixel(&sc->info, adr, color_table[pixel].red,
+				gu_set_rgb_pixel(sc->info, adr, color_table[pixel].red,
 						color_table[pixel].green,
 						color_table[pixel].blue);
-				adr += sc->info.bits_per_pixel >> 3;
+				adr += sc->info->bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
 			}
@@ -101,16 +101,16 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			image = (char *)bmp +
 					get_unaligned_le32(&bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + (y + starty) * sc->info.line_length +
-					startx * (sc->info.bits_per_pixel >> 3);
+			adr = buf + (y + starty) * sc->info->line_length +
+					startx * (sc->info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				char *pixel;
 
 				pixel = image;
 
-				gu_set_rgb_pixel(&sc->info, adr, pixel[2], pixel[1],
+				gu_set_rgb_pixel(sc->info, adr, pixel[2], pixel[1],
 						pixel[0]);
-				adr += sc->info.bits_per_pixel >> 3;
+				adr += sc->info->bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
 			}
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 7302611..47003a0 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -245,51 +245,77 @@ void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int heigh
 	}
 }
 
-int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
+struct screen *fb_create_screen(struct fb_info *info, bool offscreen)
 {
-	int ret;
+	struct screen *sc;
 
-	sc->fd = open(fbdev, O_RDWR);
-	if (sc->fd < 0)
-		return sc->fd;
-
-	sc->fb = memmap(sc->fd, PROT_READ | PROT_WRITE);
-	if (sc->fb == (void *)-1) {
-		ret = -ENOMEM;
-		goto failed_memmap;
-	}
-
-	ret = ioctl(sc->fd, FBIOGET_SCREENINFO, &sc->info);
-	if (ret) {
-		goto failed_memmap;
-	}
+	sc = xzalloc(sizeof(*sc));
 
 	sc->s.x = 0;
 	sc->s.y = 0;
-	sc->s.width = sc->info.xres;
-	sc->s.height = sc->info.yres;
-	sc->fbsize = sc->info.line_length * sc->s.height;
+	sc->s.width = info->xres;
+	sc->s.height = info->yres;
+	sc->fbsize = info->line_length * sc->s.height;
+	sc->fb = info->screen_base;
 
 	if (offscreen) {
-		/* Don't fail if malloc fails, just continue rendering directly
+		/*
+		 * Don't fail if malloc fails, just continue rendering directly
 		 * on the framebuffer
 		 */
 		sc->offscreenbuf = malloc(sc->fbsize);
 	}
 
-	return sc->fd;
+	return sc;
+}
 
-failed_memmap:
-	sc->fb = NULL;
-	close(sc->fd);
+struct screen *fb_open(const char * fbdev, bool offscreen)
+{
+	int fd, ret;
+	struct fb_info *info;
+	struct screen *sc;
+
+	fd = open(fbdev, O_RDWR);
+	if (fd < 0)
+		return ERR_PTR(fd);
+
+	info = xzalloc(sizeof(*info));
 
-	return ret;
+	ret = ioctl(fd, FBIOGET_SCREENINFO, info);
+	if (ret) {
+		goto failed_screeninfo;
+	}
+
+	sc = fb_create_screen(info, offscreen);
+	if (IS_ERR(sc)) {
+		ret = PTR_ERR(sc);
+		goto failed_create;
+	}
+
+	sc->fd = fd;
+	sc->info = info;
+
+	return sc;
+
+failed_create:
+	free(sc->offscreenbuf);
+	free(sc);
+failed_screeninfo:
+	close(fd);
+
+	return ERR_PTR(ret);
 }
 
 void fb_close(struct screen *sc)
 {
 	free(sc->offscreenbuf);
-	close(sc->fd);
+
+	if (sc->fd > 0) {
+		close(sc->fd);
+		free(sc->info);
+	}
+
+	free(sc);
 }
 
 void gu_screen_blit(struct screen *sc)
diff --git a/lib/gui/png.c b/lib/gui/png.c
index e72786e..6bf997c 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -67,7 +67,7 @@ static int png_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 	buf = gui_screen_render_buffer(sc);
 
-	gu_rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
+	gu_rgba_blend(sc->info, img, buf, height, width, startx, starty, true);
 
 	return img->height;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
