Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGoR1-0006k3-2P
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 10:01:40 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id AE379FFB55F
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 12:07:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 11:59:04 +0200
Message-Id: <1348653544-27095-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] gui: blit the surface on demand
To: barebox@lists.infradead.org

Do not blit the surface everytime we write an image
As we want to able to render multiple image this will cause 1 blit per image;

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c           |    2 ++
 include/gui/graphic_utils.h |    1 +
 lib/gui/bmp.c               |    3 ---
 lib/gui/graphic_utils.c     |    8 ++++++++
 lib/gui/png.c               |    3 ---
 5 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 0292809..65dd530 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -68,6 +68,8 @@ static int do_splash(int argc, char *argv[])
 	if (image_renderer_file(&sc, &s, image_file) < 0)
 		ret = 1;
 
+	screen_blit(&sc);
+
 	fb_close(&sc);
 
 	return ret;
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 1a17790..33e0cbf 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -19,5 +19,6 @@ void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
 int fb_open(const char * fbdev, struct screen *sc, bool offscreen);
 void fb_close(struct screen *sc);
+void screen_blit(struct screen *sc);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index c880375..d576121 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -117,9 +117,6 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 	} else
 		printf("bmp: illegal bits per pixel value: %d\n", bits_per_pixel);
 
-	if (sc->offscreenbuf)
-		memcpy(sc->fb, sc->offscreenbuf, sc->fbsize);
-
 	return img->height;
 }
 
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 15a4109..3800ee2 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -242,3 +242,11 @@ void fb_close(struct screen *sc)
 	free(sc->offscreenbuf);
 	close(sc->fd);
 }
+
+void screen_blit(struct screen *sc)
+{
+	if (!sc->offscreenbuf)
+		return;
+
+	memcpy(sc->fb, sc->offscreenbuf, sc->fbsize);
+}
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 36b95f6..2921ab3 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -69,9 +69,6 @@ static int png_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 	rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
 
-	if (sc->offscreenbuf)
-		memcpy(sc->fb, sc->offscreenbuf, sc->fbsize);
-
 	return img->height;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
