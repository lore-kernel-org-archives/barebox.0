Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhyM-0003AN-P7
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:39 +0200
Message-Id: <1438955141-8850-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] gui: implement blitting screen areas
To: Barebox List <barebox@lists.infradead.org>

So far we only supported blitting the whole screen from the shadow
fb to the framebuffer. Add a function to blit areas.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/splash.c           |  2 +-
 include/gui/graphic_utils.h |  2 ++
 lib/gui/graphic_utils.c     | 19 +++++++++++++++++++
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/commands/splash.c b/commands/splash.c
index dd4cfbe..15b296b 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -50,7 +50,7 @@ static int do_splash(int argc, char *argv[])
 	}
 	image_file = argv[optind];
 
-	sc = fb_open(fbdev, offscreen);
+	sc = fb_open(fbdev);
 	if (IS_ERR(sc)) {
 		perror("fd_open");
 		return PTR_ERR(sc);
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index ff4d9a0..231b3a9 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -25,5 +25,7 @@ void fb_close(struct screen *sc);
 void gu_screen_blit(struct screen *sc);
 void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
 		int height);
+void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
+		int height);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index b57b4a1..4c1885d 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -306,6 +306,25 @@ void fb_close(struct screen *sc)
 	free(sc);
 }
 
+void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
+		int height)
+{
+	struct fb_info *info = sc->info;
+	int bpp = info->bits_per_pixel >> 3;
+
+	if (info->screen_base_shadow) {
+		int y;
+		void *fb = info->screen_base + starty * sc->info->line_length + startx * bpp;
+		void *fboff = info->screen_base_shadow + starty * sc->info->line_length + startx * bpp;
+
+		for (y = starty; y < starty + height; y++) {
+			memcpy(fb, fboff, width * bpp);
+			fb += sc->info->line_length;
+			fboff += sc->info->line_length;
+		}
+	}
+}
+
 void gu_screen_blit(struct screen *sc)
 {
 	struct fb_info *info = sc->info;
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
