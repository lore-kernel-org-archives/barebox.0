Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHkeC-00035G-HY
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 04:29:17 +0000
Received: by mail-pf0-x241.google.com with SMTP id c74so624472pfb.0
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 21:28:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Jun 2016 21:27:56 -0700
Message-Id: <1467088079-476-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 1/4] GUI: Add a function to draw vertical/horizontal bars
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a function to draw solid vertical or horizontal bars.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since v2:

	- Negative coordinates now mean edge of the screen instead of
          being a bug.

 include/gui/graphic_utils.h |  3 +++
 lib/gui/graphic_utils.c     | 29 +++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 231b3a9..279fdf9 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -28,4 +28,7 @@ void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int
 void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
 		int height);
 
+void gu_fill_rectangle(struct screen *sc,
+		       int x1, int y1, int x2, int y2,
+		       u8 r, u8 g, u8 b, u8 a);
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 2fe9fa3..d3f5cce 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -336,3 +336,32 @@ void gu_screen_blit(struct screen *sc)
 	if (info->screen_base_shadow)
 		memcpy(info->screen_base, info->screen_base_shadow, sc->fbsize);
 }
+
+void gu_fill_rectangle(struct screen *sc,
+		       int x1, int y1, int x2, int y2,
+		       u8 r, u8 g, u8 b, u8 a)
+{
+	int y;
+	void *buf = gui_screen_render_buffer(sc);
+
+	x1 = max(0, x1);
+	y1 = max(0, y1);
+
+	x2 = (x2 < 0) ? sc->info->xres - 1 : x2;
+	y2 = (y2 < 0) ? sc->info->yres - 1 : y2;
+
+	if (x2 < x1)
+		swap(x1, x2);
+	if (y2 < y1)
+		swap(y1, y2);
+
+	for(y = y1; y <= y2; y++) {
+		int x;
+		unsigned char *pixel = buf + y * sc->info->line_length +
+			x1 * (sc->info->bits_per_pixel / 8);
+		for(x = x1; x <= x2; x++) {
+			gu_set_rgba_pixel(sc->info, pixel, r, g, b, a);
+			pixel += sc->info->bits_per_pixel / 8;
+		}
+	}
+}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
