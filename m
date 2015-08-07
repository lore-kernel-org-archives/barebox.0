Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZNhyK-0008Rs-Nz
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:38 +0200
Message-Id: <1438955141-8850-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
References: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] gui: Use fb provided shadowfb for offscreen rendering
To: Barebox List <barebox@lists.infradead.org>

The fb core now has builtin support for offscreen rendering, use
this and drop offscreen handling in the gui code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/splash.c           |  4 ----
 drivers/video/fbconsole.c   |  2 +-
 include/gui/graphic_utils.h |  4 ++--
 include/gui/gui.h           |  6 +-----
 lib/gui/graphic_utils.c     | 24 +++++++-----------------
 5 files changed, 11 insertions(+), 29 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 29e30ae..dd4cfbe 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -15,7 +15,6 @@ static int do_splash(int argc, char *argv[])
 	int opt;
 	char *fbdev = "/dev/fb0";
 	char *image_file;
-	int offscreen = 0;
 	u32 bg_color = 0x00000000;
 	bool do_bg = false;
 	void *buf;
@@ -42,8 +41,6 @@ static int do_splash(int argc, char *argv[])
 		case 'y':
 			s.y = simple_strtoul(optarg, NULL, 0);
 			break;
-		case 'o':
-			offscreen = 1;
 		}
 	}
 
@@ -86,7 +83,6 @@ BAREBOX_CMD_HELP_OPT ("-f FB\t",    "framebuffer device (default /dev/fb0)")
 BAREBOX_CMD_HELP_OPT ("-x XOFFS", "x offset (default center)")
 BAREBOX_CMD_HELP_OPT ("-y YOFFS", "y offset (default center)")
 BAREBOX_CMD_HELP_OPT ("-b COLOR", "background color in 0xttrrggbb")
-BAREBOX_CMD_HELP_OPT ("-o\t",       "render offscreen")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(splash)
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b798307..8805b55 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -376,7 +376,7 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 	if (ret)
 		return ret;
 
-	priv->sc = fb_create_screen(fb, 0);
+	priv->sc = fb_create_screen(fb);
 	if (IS_ERR(priv->sc))
 		return PTR_ERR(priv->sc);
 
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index ab8c3fc..ff4d9a0 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -19,8 +19,8 @@ void gu_set_pixel(struct fb_info *info, void *adr, u32 px);
 void gu_set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
 void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
-struct screen *fb_create_screen(struct fb_info *info, bool offscreen);
-struct screen *fb_open(const char *fbdev, bool offscreen);
+struct screen *fb_create_screen(struct fb_info *info);
+struct screen *fb_open(const char *fbdev);
 void fb_close(struct screen *sc);
 void gu_screen_blit(struct screen *sc);
 void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
diff --git a/include/gui/gui.h b/include/gui/gui.h
index 03e60aa..133149b 100644
--- a/include/gui/gui.h
+++ b/include/gui/gui.h
@@ -23,16 +23,12 @@ struct screen {
 	struct surface s;
 
 	void *fb;
-	void *offscreenbuf;
 	int fbsize;
 };
 
 static inline void *gui_screen_render_buffer(struct screen *sc)
 {
-	if (sc->offscreenbuf)
-		return sc->offscreenbuf;
-	return sc->fb;
+	return fb_get_screen_base(sc->info);
 }
 
-
 #endif /* __GUI_H__ */
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index f928ee1..b57b4a1 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -245,7 +245,7 @@ void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int heigh
 	}
 }
 
-struct screen *fb_create_screen(struct fb_info *info, bool offscreen)
+struct screen *fb_create_screen(struct fb_info *info)
 {
 	struct screen *sc;
 
@@ -257,19 +257,12 @@ struct screen *fb_create_screen(struct fb_info *info, bool offscreen)
 	sc->s.height = info->yres;
 	sc->fbsize = info->line_length * sc->s.height;
 	sc->fb = info->screen_base;
-
-	if (offscreen) {
-		/*
-		 * Don't fail if malloc fails, just continue rendering directly
-		 * on the framebuffer
-		 */
-		sc->offscreenbuf = malloc(sc->fbsize);
-	}
+	sc->info = info;
 
 	return sc;
 }
 
-struct screen *fb_open(const char * fbdev, bool offscreen)
+struct screen *fb_open(const char * fbdev)
 {
 	int fd, ret;
 	struct fb_info *info;
@@ -286,7 +279,7 @@ struct screen *fb_open(const char * fbdev, bool offscreen)
 		goto failed_screeninfo;
 	}
 
-	sc = fb_create_screen(info, offscreen);
+	sc = fb_create_screen(info);
 	if (IS_ERR(sc)) {
 		ret = PTR_ERR(sc);
 		goto failed_create;
@@ -298,7 +291,6 @@ struct screen *fb_open(const char * fbdev, bool offscreen)
 	return sc;
 
 failed_create:
-	free(sc->offscreenbuf);
 	free(sc);
 failed_screeninfo:
 	close(fd);
@@ -308,8 +300,6 @@ failed_screeninfo:
 
 void fb_close(struct screen *sc)
 {
-	free(sc->offscreenbuf);
-
 	if (sc->fd > 0)
 		close(sc->fd);
 
@@ -318,8 +308,8 @@ void fb_close(struct screen *sc)
 
 void gu_screen_blit(struct screen *sc)
 {
-	if (!sc->offscreenbuf)
-		return;
+	struct fb_info *info = sc->info;
 
-	memcpy(sc->fb, sc->offscreenbuf, sc->fbsize);
+	if (info->screen_base_shadow)
+		memcpy(info->screen_base, info->screen_base_shadow, sc->fbsize);
 }
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
