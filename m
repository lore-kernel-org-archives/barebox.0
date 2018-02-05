Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eikak-0005sQ-Bh
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 17:30:07 +0000
Received: by mail-pg0-x242.google.com with SMTP id f6so2514909pgs.10
 for <barebox@lists.infradead.org>; Mon, 05 Feb 2018 09:29:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Feb 2018 09:29:32 -0800
Message-Id: <20180205172935.25232-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/4] 2d-primitives: Introduce gu_draw_text()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>

Add code to draw characters/string on a display.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/gui/2d-primitives.h | 12 ++++++++
 lib/gui/2d-primitives.c     | 67 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 79 insertions(+)

diff --git a/include/gui/2d-primitives.h b/include/gui/2d-primitives.h
index 06216bb03..f97c5eb61 100644
--- a/include/gui/2d-primitives.h
+++ b/include/gui/2d-primitives.h
@@ -2,6 +2,7 @@
 #define __2D_PRIMITIVES__
 
 #include <fb.h>
+#include <linux/font.h>
 
 void gu_draw_line(struct screen *sc,
 		  int x1, int y1, int x2, int y2,
@@ -12,4 +13,15 @@ void gu_draw_circle(struct screen *sc,
 		    int x0, int y0, int radius,
 		    u8 r, u8 g, u8 b, u8 a);
 
+#ifdef CONFIG_FONTS
+void gu_draw_text(struct screen *sc, const struct font_desc *font,
+                 int x, int y, const char *text,
+                 u8 fr, u8 fg, u8 fb, u8 fa,
+                 u8 br, u8 bg, u8 bb, u8 ba);
+#else
+static inline void gu_draw_text(struct screen *sc, const struct font_desc *font,
+				int x, int y, const char *text,
+				u8 fr, u8 fg, u8 fb, u8 fa,
+				u8 br, u8 bg, u8 bb, u8 ba) {}
+#endif
 #endif
diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
index 82e59d9a6..8cb316b4d 100644
--- a/lib/gui/2d-primitives.c
+++ b/lib/gui/2d-primitives.c
@@ -6,6 +6,8 @@
 #include <errno.h>
 #include <fs.h>
 #include <malloc.h>
+#include <linux/font.h>
+#include <linux/ctype.h>
 
 static void __illuminate(struct fb_info *info,
 			 int x, int y,
@@ -200,3 +202,68 @@ void gu_draw_circle(struct screen *sc,
 		 }
 	}
 }
+
+#ifdef CONFIG_FONTS
+static void gu_draw_char(struct screen *sc, const struct font_desc *font,
+			 int ch, int x0, int y0,
+			 u8 fr, u8 fg, u8 fb, u8 fa,
+			 u8 br, u8 bg, u8 bb, u8 ba)
+{
+       const u8 *bitmap = font->data + find_font_index(font, ch);
+       int x, y;
+
+       for (y = 0; y < font->height; y++) {
+               for (x = 0; x < font->width; x++) {
+		       const unsigned index  = y * font->width + x;
+		       const unsigned byte   = index / 8;
+		       const unsigned bit    = 8 - (index % 8);
+		       const bool foreground = bitmap[byte] & BIT(bit);
+
+		       const u8 r = (foreground) ? fr : br;
+		       const u8 g = (foreground) ? fg : bg;
+		       const u8 b = (foreground) ? fb : bb;
+		       const u8 a = (foreground) ? fa : ba;
+
+		       __illuminate(sc->info, x0 + x, y0 + y, r, g, b, a);
+               }
+       }
+}
+
+/**
+ * gu_draw_text - display text at (x0, y0)
+ *
+ * @sc: screen to draw on
+ * @font: font used to render the text
+ * @x0, @y0: coordinates of top left corner of the text "box"
+ * @text: text to render
+ * @fr, @fg, @fb, @fa: foreground color information
+ * @fr, @fg, @fb, @fa: background color information
+ *
+ * gu_draw_text() implements basic algorithm capable of rendering
+ * textual information to a frambuffer. Resulting text is produced to
+ * be a single line and no attempt to do wrapping/text layout is made.
+ */
+void gu_draw_text(struct screen *sc, const struct font_desc *font,
+		  int x0, int y0, const char *text,
+		  u8 fr, u8 fg, u8 fb, u8 fa,
+		  u8 br, u8 bg, u8 bb, u8 ba)
+{
+	char c;
+	int x = x0;
+	int y = y0;
+
+	BUG_ON(x0 < 0 || y0 < 0);
+
+	while ((c = *text++)) {
+		/*
+		 * Just skip all non-printable characters
+		 */
+		if (isprint(c)) {
+			gu_draw_char(sc, font, c, x, y,
+				     fr, fg, fb, fa, br, bg, bb, ba);
+			x += font->width;
+		}
+	}
+}
+#endif
+
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
