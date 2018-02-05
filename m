Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eikal-0005sf-F4
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 17:30:08 +0000
Received: by mail-pg0-x243.google.com with SMTP id x25so6516302pge.3
 for <barebox@lists.infradead.org>; Mon, 05 Feb 2018 09:29:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Feb 2018 09:29:33 -0800
Message-Id: <20180205172935.25232-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180205172935.25232-1-andrew.smirnov@gmail.com>
References: <20180205172935.25232-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] gui: graphic_utils: Stub out fb_* functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Stub out fb_* functions so as to avoid having to #ifdef the code using
them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/gui/graphic_utils.h | 47 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 279fdf91d..d4bac6394 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -11,6 +11,8 @@
 #include <gui/image.h>
 #include <gui/gui.h>
 
+#ifdef CONFIG_IMAGE_RENDERER
+
 u32 gu_hex_to_pixel(struct fb_info *info, u32 color);
 u32 gu_rgb_to_pixel(struct fb_info *info, u8 r, u8 g, u8 b, u8 t);
 void gu_rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
@@ -31,4 +33,49 @@ void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
 void gu_fill_rectangle(struct screen *sc,
 		       int x1, int y1, int x2, int y2,
 		       u8 r, u8 g, u8 b, u8 a);
+#else
+
+static inline u32 gu_hex_to_pixel(struct fb_info *info, u32 color)
+{
+	return 0;
+}
+static inline u32 gu_rgb_to_pixel(struct fb_info *info, u8 r,
+				  u8 g, u8 b, u8 t)
+{
+	return 0;
+}
+static inline void gu_rgba_blend(struct fb_info *info, struct image *img,
+				 void* dest,int height,
+				 int width, int startx,
+				 int starty, bool is_rgba) {}
+static inline void gu_set_pixel(struct fb_info *info, void *adr, u32 px) {}
+static inline void gu_set_rgb_pixel(struct fb_info *info, void *adr,
+				    u8 r, u8 g, u8 b) {}
+static inline void gu_set_rgba_pixel(struct fb_info *info, void *adr,
+				     u8 r, u8 g, u8 b, u8 a) {}
+static inline void gu_memset_pixel(struct fb_info *info, void* buf,
+				   u32 color, size_t size) {}
+static inline struct screen *fb_create_screen(struct fb_info *info)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+
+static inline struct screen *fb_open(const char *fbdev)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+
+static inline void fb_close(struct screen *sc) {}
+static inline void gu_screen_blit(struct screen *sc) {}
+static inline void gu_invert_area(struct fb_info *info, void *buf, int startx,
+				  int starty, int width, int height) {}
+static inline void gu_screen_blit_area(struct screen *sc, int startx,
+				       int starty, int width,
+				       int height) {}
+static inline void gu_fill_rectangle(struct screen *sc, int x1, int y1,
+				     int x2, int y2, u8 r, u8 g, u8 b, u8 a) {}
+
+#endif
+
+
 #endif /* __GRAPHIC_UTILS_H__ */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
