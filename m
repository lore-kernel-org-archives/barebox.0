Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdf5-0004ek-7u
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:42 +0200
Message-Id: <1437031912-24754-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] gui: Fix typo in function name
To: Barebox List <barebox@lists.infradead.org>

It's a render buffer, not a redering buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/gui/gui.h | 2 +-
 lib/gui/bmp.c     | 2 +-
 lib/gui/png.c     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/gui/gui.h b/include/gui/gui.h
index 829d156..59ff590 100644
--- a/include/gui/gui.h
+++ b/include/gui/gui.h
@@ -27,7 +27,7 @@ struct screen {
 	int fbsize;
 };
 
-static inline void* gui_screen_redering_buffer(struct screen *sc)
+static inline void *gui_screen_render_buffer(struct screen *sc)
 {
 	if (sc->offscreenbuf)
 		return sc->offscreenbuf;
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 2a0509d..892b759 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -67,7 +67,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 	width = min(width, sc->s.width - startx);
 	height = min(height, sc->s.height - starty);
 
-	buf = gui_screen_redering_buffer(sc);
+	buf = gui_screen_render_buffer(sc);
 
 	bits_per_pixel = img->bits_per_pixel;
 
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 10faf5c..e72786e 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -65,7 +65,7 @@ static int png_renderer(struct screen *sc, struct surface *s, struct image *img)
 	width = min(width, sc->s.width - startx);
 	height = min(height, sc->s.height - starty);
 
-	buf = gui_screen_redering_buffer(sc);
+	buf = gui_screen_render_buffer(sc);
 
 	gu_rgba_blend(&sc->info, img, buf, height, width, startx, starty, true);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
