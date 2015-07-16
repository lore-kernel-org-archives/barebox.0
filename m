Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeR-0004Bs-Gq
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:45 +0200
Message-Id: <1437031912-24754-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] graphics_utils: add function to create pixel from rgb
 triplet
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/gui/graphic_utils.h |  1 +
 lib/gui/graphic_utils.c     | 32 ++++++++++++++++++++++++++------
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 136cac1..161f8d6 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -12,6 +12,7 @@
 #include <gui/gui.h>
 
 u32 gu_hex_to_pixel(struct fb_info *info, u32 color);
+u32 gu_rgb_to_pixel(struct fb_info *info, u8 r, u8 g, u8 b, u8 t);
 void gu_rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
 	int width, int startx, int starty, bool is_rgba);
 void gu_set_pixel(struct fb_info *info, void *adr, u32 px);
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 516e903..7302611 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -8,6 +8,31 @@
 #include <malloc.h>
 
 /**
+ * gu_get_pixel_rgb - convert a rgb triplet color to fb format
+ * @info: The framebuffer info to convert the pixel for
+ * @r: red component
+ * @g: green component
+ * @b: blue component
+ * @t: transparent component
+ *
+ * This converts a color to the format suitable for writing directly into
+ * the framebuffer.
+ *
+ * Return: The pixel suitable for the framebuffer
+ */
+u32 gu_rgb_to_pixel(struct fb_info *info, u8 r, u8 g, u8 b, u8 t)
+{
+	u32 px;
+
+	px = (t >> (8 - info->transp.length)) << info->transp.offset |
+		 (r >> (8 - info->red.length)) << info->red.offset |
+		 (g >> (8 - info->green.length)) << info->green.offset |
+		 (b >> (8 - info->blue.length)) << info->blue.offset;
+
+	return px;
+}
+
+/**
  * gu_hex_to_pixel - convert a 32bit color to fb format
  * @info: The framebuffer info to convert the pixel for
  * @color: The color in 0xttrrggbb format
@@ -30,12 +55,7 @@ u32 gu_hex_to_pixel(struct fb_info *info, u32 color)
 		 return px;
 	}
 
-	px = (t >> (8 - info->transp.length)) << info->transp.offset |
-		 (r >> (8 - info->red.length)) << info->red.offset |
-		 (g >> (8 - info->green.length)) << info->green.offset |
-		 (b >> (8 - info->blue.length)) << info->blue.offset;
-
-	return px;
+	return gu_rgb_to_pixel(info, r, g, b, t);
 }
 
 static void memsetw(void *s, u16 c, size_t n)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
