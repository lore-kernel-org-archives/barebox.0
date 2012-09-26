Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGoQz-0006k1-7F
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 10:01:39 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 695FEFFB176
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 12:07:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 11:59:02 +0200
Message-Id: <1348653544-27095-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] gui: introduce screen and surface to factorize and
 simplify code
To: barebox@lists.infradead.org

Instead of passing hundreds of parameter, just pass the right structure.

struct screen represent the screen with a without double buffering.
struct surface represent the part of the screen we want to render.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c            |   42 +++++++++++++++++------------------
 include/gui/graphic_utils.h  |    2 ++
 include/gui/gui.h            |   36 ++++++++++++++++++++++++++++++
 include/gui/image_renderer.h |   16 +++++---------
 lib/gui/bmp.c                |   50 +++++++++++++++++++++++-------------------
 lib/gui/image_renderer.c     |    5 ++---
 lib/gui/png.c                |   34 +++++++++++++++-------------
 7 files changed, 113 insertions(+), 72 deletions(-)
 create mode 100644 include/gui/gui.h

diff --git a/commands/splash.c b/commands/splash.c
index 615b1cb..009c5a0 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -12,17 +12,20 @@
 
 static int do_splash(int argc, char *argv[])
 {
+	struct surface s;
+	struct screen sc;
 	int ret, opt, fd;
 	char *fbdev = "/dev/fb0";
-	void *fb;
 	struct fb_info info;
 	char *image_file;
-	int startx = -1, starty = -1;
-	int xres, yres;
 	int offscreen = 0;
 	u32 bg_color = 0x00000000;
 	bool do_bg = false;
-	void *offscreenbuf = NULL;
+
+	s.x = -1;
+	s.y = -1;
+	s.width = -1;
+	s.height = -1;
 
 	while((opt = getopt(argc, argv, "f:x:y:ob:")) > 0) {
 		switch(opt) {
@@ -34,10 +37,10 @@ static int do_splash(int argc, char *argv[])
 			do_bg = true;
 			break;
 		case 'x':
-			startx = simple_strtoul(optarg, NULL, 0);
+			s.x = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'y':
-			starty = simple_strtoul(optarg, NULL, 0);
+			s.y = simple_strtoul(optarg, NULL, 0);
 		case 'o':
 			offscreen = 1;
 		}
@@ -55,8 +58,8 @@ static int do_splash(int argc, char *argv[])
 		return 1;
 	}
 
-	fb = memmap(fd, PROT_READ | PROT_WRITE);
-	if (fb == (void *)-1) {
+	sc.fb = memmap(fd, PROT_READ | PROT_WRITE);
+	if (sc.fb == (void *)-1) {
 		perror("memmap");
 		goto failed_memmap;
 	}
@@ -67,33 +70,30 @@ static int do_splash(int argc, char *argv[])
 		goto failed_memmap;
 	}
 
-	xres = info.xres;
-	yres = info.yres;
-
 	if (offscreen) {
 		int fbsize;
 		/* Don't fail if malloc fails, just continue rendering directly
 		 * on the framebuffer
 		 */
 
-		fbsize = xres * yres * (info.bits_per_pixel >> 3);
-		offscreenbuf = malloc(fbsize);
-		if (offscreenbuf) {
+		fbsize = sc.s.x * sc.s.x * (sc.info.bits_per_pixel >> 3);
+		sc.offscreenbuf = malloc(fbsize);
+		if (sc.offscreenbuf) {
 			if (do_bg)
-				memset_pixel(&info, offscreenbuf, bg_color, xres * yres);
+				memset_pixel(&info, sc.offscreenbuf, bg_color,
+						sc.s.width * sc.s.height);
 			else
-				memcpy(offscreenbuf, fb, fbsize);
+				memcpy(sc.offscreenbuf, sc.fb, fbsize);
 		}
 	} else if (do_bg) {
-		memset_pixel(&info, fb, bg_color, xres * yres);
+		memset_pixel(&info, sc.fb, bg_color, sc.s.width * sc.s.height);
 	}
 
-	if (image_renderer_file(&info, image_file, fb, startx, starty,
-				offscreenbuf) < 0)
+	if (image_renderer_file(&sc, &s, image_file) < 0)
 		ret = 1;
 
-	if (offscreenbuf)
-		free(offscreenbuf);
+	if (sc.offscreenbuf)
+		free(sc.offscreenbuf);
 
 	close(fd);
 
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 4690e51..4cfb8e8 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -9,6 +9,7 @@
 
 #include <fb.h>
 #include <gui/image.h>
+#include <gui/gui.h>
 
 void rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
 	int width, int startx, int starty, bool is_rgba);
@@ -16,5 +17,6 @@ void set_pixel(struct fb_info *info, void *adr, u32 px);
 void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
 void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
+int fb_open(const char * fbdev, struct screen *sc);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/include/gui/gui.h b/include/gui/gui.h
new file mode 100644
index 0000000..2f792f1
--- /dev/null
+++ b/include/gui/gui.h
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __GUI_H__
+#define __GUI_H__
+
+#include <fb.h>
+
+struct surface {
+	int x;
+	int y;
+	int width;
+	int height;
+};
+
+struct screen {
+	struct fb_info info;
+
+	struct surface s;
+
+	void *fb;
+	void *offscreenbuf;
+};
+
+static inline void* gui_screen_redering_buffer(struct screen *sc)
+{
+	if (sc->offscreenbuf)
+		return sc->offscreenbuf;
+	return sc->fb;
+}
+
+
+#endif /* __GUI_H__ */
diff --git a/include/gui/image_renderer.h b/include/gui/image_renderer.h
index 5ee9969..e0b1eae 100644
--- a/include/gui/image_renderer.h
+++ b/include/gui/image_renderer.h
@@ -13,13 +13,13 @@
 #include <linux/err.h>
 #include <fb.h>
 #include <gui/image.h>
+#include <gui/gui.h>
 
 struct image_renderer {
 	enum filetype type;
 	struct image *(*open)(char *data, int size);
 	void (*close)(struct image *img);
-	int (*renderer)(struct fb_info *info, struct image *img, void* fb,
-		int startx, int starty, void* offscreenbuf);
+	int (*renderer)(struct screen *sc, struct surface *s, struct image *img);
 
 	/*
 	 * do not free the data read from the file
@@ -34,8 +34,7 @@ struct image_renderer {
 int image_renderer_register(struct image_renderer *ir);
 void image_render_unregister(struct image_renderer *ir);
 
-int image_renderer_image(struct fb_info *info, struct image *img, void* fb,
-	    int startx, int starty, void* offscreenbuf);
+int image_renderer_image(struct screen *sc, struct surface *s, struct image *img);
 
 struct image *image_renderer_open(const char* file);
 void image_renderer_close(struct image *img);
@@ -54,12 +53,10 @@ static inline struct image *image_renderer_open(const char* file)
 
 static inline void image_renderer_close(struct image *img) {}
 
-int image_renderer_image(struct fb_info *info, struct image *img, void* fb,
-	    int startx, int starty, void* offscreenbuf);
+int image_renderer_image(struct surface *s, struct image *img);
 #endif
 
-static inline int image_renderer_file(struct fb_info *info, const char* file, void* fb,
-		    int startx, int starty, void* offscreenbuf)
+static inline int image_renderer_file(struct screen *sc, struct surface *s, const char* file)
 {
 	struct image* img = image_renderer_open(file);
 	int ret;
@@ -67,8 +64,7 @@ static inline int image_renderer_file(struct fb_info *info, const char* file, vo
 	if (IS_ERR(img))
 		return PTR_ERR(img);
 
-	ret = image_renderer_image(info, img, fb, startx, starty,
-				offscreenbuf);
+	ret = image_renderer_image(sc, s, img);
 
 	image_renderer_close(img);
 
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 86591ed..63902ef 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -34,38 +34,42 @@ void bmp_close(struct image *img)
 	free(img->data);
 }
 
-static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
-		int startx, int starty, void* offscreenbuf)
+static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 {
 	struct bmp_image *bmp = img->data;
-	int width, height;
 	int bits_per_pixel, fbsize;
 	void *adr, *buf;
 	char *image;
-	int xres, yres;
+	int width = s->width;
+	int height = s->height;
+	int startx = s->x;
+	int starty = s->y;
 
-	xres = info->xres;
-	yres = info->yres;
+	if (s->width < 0)
+		width = img->width;
+
+	if (s->height < 0)
+		height = img->height;
 
 	if (startx < 0) {
-		startx = (xres - img->width) / 2;
+		startx = (sc->s.width - width) / 2;
 		if (startx < 0)
 			startx = 0;
 	}
 
 	if (starty < 0) {
-		starty = (yres - img->height) / 2;
+		starty = (sc->s.height - height) / 2;
 		if (starty < 0)
 			starty = 0;
 	}
 
-	width = min(img->width, xres - startx);
-	height = min(img->height, yres - starty);
+	width = min(width, sc->s.width - startx);
+	height = min(height, sc->s.height - starty);
 
-	bits_per_pixel = img->bits_per_pixel;
-	fbsize = xres * yres * (info->bits_per_pixel >> 3);
+	buf = gui_screen_redering_buffer(sc);
 
-	buf = offscreenbuf ? offscreenbuf : fb;
+	bits_per_pixel = img->bits_per_pixel;
+	fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
 
 	if (bits_per_pixel == 8) {
 		int x, y;
@@ -75,17 +79,17 @@ static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * xres + startx) *
-					(info->bits_per_pixel >> 3);
+			adr = buf + ((y + starty) * sc->s.width + startx) *
+					(sc->info.bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				int pixel;
 
 				pixel = *image;
 
-				set_rgb_pixel(info, adr, color_table[pixel].red,
+				set_rgb_pixel(&sc->info, adr, color_table[pixel].red,
 						color_table[pixel].green,
 						color_table[pixel].blue);
-				adr += info->bits_per_pixel >> 3;
+				adr += sc->info.bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
 			}
@@ -97,16 +101,16 @@ static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * xres + startx) *
-					(info->bits_per_pixel >> 3);
+			adr = buf + ((y + starty) * sc->s.width + startx) *
+					(sc->info.bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
 				char *pixel;
 
 				pixel = image;
 
-				set_rgb_pixel(info, adr, pixel[2], pixel[1],
+				set_rgb_pixel(&sc->info, adr, pixel[2], pixel[1],
 						pixel[0]);
-				adr += info->bits_per_pixel >> 3;
+				adr += sc->info.bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
 			}
@@ -114,8 +118,8 @@ static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
 	} else
 		printf("bmp: illegal bits per pixel value: %d\n", bits_per_pixel);
 
-	if (offscreenbuf)
-		memcpy(fb, offscreenbuf, fbsize);
+	if (sc->offscreenbuf)
+		memcpy(sc->fb, sc->offscreenbuf, fbsize);
 
 	return img->height;
 }
diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
index 99e4335..41dc43b 100644
--- a/lib/gui/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -71,10 +71,9 @@ void image_renderer_close(struct image *img)
 	free(img);
 }
 
-int image_renderer_image(struct fb_info *info, struct image *img, void* fb,
-	    int startx, int starty, void* offscreenbuf)
+int image_renderer_image(struct screen *sc, struct surface *s, struct image *img)
 {
-	return img->ir->renderer(info, img, fb, startx, starty, offscreenbuf);
+	return img->ir->renderer(sc, s, img);
 }
 
 int image_renderer_register(struct image_renderer *ir)
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 1e9efd5..3845d7e 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -36,40 +36,44 @@ void png_uncompress_exit(void)
 	}
 }
 
-static int png_renderer(struct fb_info *info, struct image *img, void* fb,
-		int startx, int starty, void* offscreenbuf)
+static int png_renderer(struct screen *sc, struct surface *s, struct image *img)
 {
-	int width, height;
 	void *buf;
-	int xres, yres;
+	int width = s->width;
+	int height = s->height;
+	int startx = s->x;
+	int starty = s->y;
 
-	xres = info->xres;
-	yres = info->yres;
+	if (s->width < 0)
+		width = img->width;
+
+	if (s->height < 0)
+		height = img->height;
 
 	if (startx < 0) {
-		startx = (xres - img->width) / 2;
+		startx = (sc->s.width - width) / 2;
 		if (startx < 0)
 			startx = 0;
 	}
 
 	if (starty < 0) {
-		starty = (yres - img->height) / 2;
+		starty = (sc->s.height - height) / 2;
 		if (starty < 0)
 			starty = 0;
 	}
 
-	width = min(img->width, xres - startx);
-	height = min(img->height, yres - starty);
+	width = min(width, sc->s.width - startx);
+	height = min(height, sc->s.height - starty);
 
-	buf = offscreenbuf ? offscreenbuf : fb;
+	buf = gui_screen_redering_buffer(sc);
 
-	rgba_blend(info, img, buf, height, width, startx, starty, true);
+	rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
 
-	if (offscreenbuf) {
+	if (sc->offscreenbuf) {
 		int fbsize;
 
-		fbsize = xres * yres * (info->bits_per_pixel >> 3);
-		memcpy(fb, offscreenbuf, fbsize);
+		fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
+		memcpy(sc->fb, sc->offscreenbuf, fbsize);
 	}
 
 	return img->height;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
