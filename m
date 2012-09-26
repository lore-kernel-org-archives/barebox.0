Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGoR1-0006k2-2O
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 10:01:41 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A465CFFB52A
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 12:07:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 11:59:03 +0200
Message-Id: <1348653544-27095-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] graphic_utils: introduce common fb_open/close
To: barebox@lists.infradead.org

To open, memmap, get the fb_info and if needed allocate the offscreen buffer

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c           |   50 ++++++++---------------------------------
 include/gui/graphic_utils.h |    3 ++-
 include/gui/gui.h           |    2 ++
 lib/gui/bmp.c               |    5 ++---
 lib/gui/graphic_utils.c     |   52 +++++++++++++++++++++++++++++++++++++++++++
 lib/gui/png.c               |    8 ++-----
 6 files changed, 69 insertions(+), 51 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 009c5a0..0292809 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -1,11 +1,8 @@
 #include <common.h>
 #include <command.h>
-#include <fs.h>
-#include <linux/stat.h>
 #include <errno.h>
 #include <malloc.h>
 #include <getopt.h>
-#include <fcntl.h>
 #include <fb.h>
 #include <gui/image_renderer.h>
 #include <gui/graphic_utils.h>
@@ -52,39 +49,18 @@ static int do_splash(int argc, char *argv[])
 	}
 	image_file = argv[optind];
 
-	fd = open(fbdev, O_RDWR);
+	fd = fb_open(fbdev, &sc, offscreen);
 	if (fd < 0) {
-		perror("open");
+		perror("fd_open");
 		return 1;
 	}
 
-	sc.fb = memmap(fd, PROT_READ | PROT_WRITE);
-	if (sc.fb == (void *)-1) {
-		perror("memmap");
-		goto failed_memmap;
-	}
-
-	ret = ioctl(fd, FBIOGET_SCREENINFO, &info);
-	if (ret) {
-		perror("ioctl");
-		goto failed_memmap;
-	}
-
-	if (offscreen) {
-		int fbsize;
-		/* Don't fail if malloc fails, just continue rendering directly
-		 * on the framebuffer
-		 */
-
-		fbsize = sc.s.x * sc.s.x * (sc.info.bits_per_pixel >> 3);
-		sc.offscreenbuf = malloc(fbsize);
-		if (sc.offscreenbuf) {
-			if (do_bg)
-				memset_pixel(&info, sc.offscreenbuf, bg_color,
-						sc.s.width * sc.s.height);
-			else
-				memcpy(sc.offscreenbuf, sc.fb, fbsize);
-		}
+	if (sc.offscreenbuf) {
+		if (do_bg)
+			memset_pixel(&info, sc.offscreenbuf, bg_color,
+					sc.s.width * sc.s.height);
+		else
+			memcpy(sc.offscreenbuf, sc.fb, sc.fbsize);
 	} else if (do_bg) {
 		memset_pixel(&info, sc.fb, bg_color, sc.s.width * sc.s.height);
 	}
@@ -92,17 +68,9 @@ static int do_splash(int argc, char *argv[])
 	if (image_renderer_file(&sc, &s, image_file) < 0)
 		ret = 1;
 
-	if (sc.offscreenbuf)
-		free(sc.offscreenbuf);
-
-	close(fd);
+	fb_close(&sc);
 
 	return ret;
-
-failed_memmap:
-	close(fd);
-
-	return 1;
 }
 
 BAREBOX_CMD_HELP_START(splash)
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 4cfb8e8..1a17790 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -17,6 +17,7 @@ void set_pixel(struct fb_info *info, void *adr, u32 px);
 void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
 void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
-int fb_open(const char * fbdev, struct screen *sc);
+int fb_open(const char * fbdev, struct screen *sc, bool offscreen);
+void fb_close(struct screen *sc);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/include/gui/gui.h b/include/gui/gui.h
index 2f792f1..829d156 100644
--- a/include/gui/gui.h
+++ b/include/gui/gui.h
@@ -17,12 +17,14 @@ struct surface {
 };
 
 struct screen {
+	int fd;
 	struct fb_info info;
 
 	struct surface s;
 
 	void *fb;
 	void *offscreenbuf;
+	int fbsize;
 };
 
 static inline void* gui_screen_redering_buffer(struct screen *sc)
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 63902ef..c880375 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -37,7 +37,7 @@ void bmp_close(struct image *img)
 static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 {
 	struct bmp_image *bmp = img->data;
-	int bits_per_pixel, fbsize;
+	int bits_per_pixel;
 	void *adr, *buf;
 	char *image;
 	int width = s->width;
@@ -69,7 +69,6 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 	buf = gui_screen_redering_buffer(sc);
 
 	bits_per_pixel = img->bits_per_pixel;
-	fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
 
 	if (bits_per_pixel == 8) {
 		int x, y;
@@ -119,7 +118,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 		printf("bmp: illegal bits per pixel value: %d\n", bits_per_pixel);
 
 	if (sc->offscreenbuf)
-		memcpy(sc->fb, sc->offscreenbuf, fbsize);
+		memcpy(sc->fb, sc->offscreenbuf, sc->fbsize);
 
 	return img->height;
 }
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 06f811c..15a4109 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -1,6 +1,11 @@
 #include <common.h>
 #include <fb.h>
 #include <gui/graphic_utils.h>
+#include <linux/stat.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <fs.h>
+#include <malloc.h>
 
 static u32 get_pixel(struct fb_info *info, u32 color)
 {
@@ -190,3 +195,50 @@ void rgba_blend(struct fb_info *info, struct image *img, void* buf, int height,
 		}
 	}
 }
+
+int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
+{
+	int ret;
+
+	sc->fd = open(fbdev, O_RDWR);
+	if (sc->fd < 0)
+		return sc->fd;
+
+	sc->fb = memmap(sc->fd, PROT_READ | PROT_WRITE);
+	if (sc->fb == (void *)-1) {
+		ret = -ENOMEM;
+		goto failed_memmap;
+	}
+
+	ret = ioctl(sc->fd, FBIOGET_SCREENINFO, &sc->info);
+	if (ret) {
+		goto failed_memmap;
+	}
+
+	sc->s.x = 0;
+	sc->s.y = 0;
+	sc->s.width = sc->info.xres;
+	sc->s.height = sc->info.yres;
+	sc->fbsize = sc->s.x * sc->s.x * (sc->info.bits_per_pixel >> 3);
+
+	if (offscreen) {
+		/* Don't fail if malloc fails, just continue rendering directly
+		 * on the framebuffer
+		 */
+		sc->offscreenbuf = malloc(sc->fbsize);
+	}
+
+	return sc->fd;
+
+failed_memmap:
+	sc->fb = NULL;
+	close(sc->fd);
+
+	return ret;
+}
+
+void fb_close(struct screen *sc)
+{
+	free(sc->offscreenbuf);
+	close(sc->fd);
+}
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 3845d7e..36b95f6 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -69,12 +69,8 @@ static int png_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 	rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
 
-	if (sc->offscreenbuf) {
-		int fbsize;
-
-		fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
-		memcpy(sc->fb, sc->offscreenbuf, fbsize);
-	}
+	if (sc->offscreenbuf)
+		memcpy(sc->fb, sc->offscreenbuf, sc->fbsize);
 
 	return img->height;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
