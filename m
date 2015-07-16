Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeW-0004GG-7w
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:44 +0200
Message-Id: <1437031912-24754-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] graphics_utils: Export get_pixel
To: Barebox List <barebox@lists.infradead.org>

get_pixel converts a 32bit trgb color into framebuffer format. This
is useful for other code aswell, so export it.
Other functions in the graphics utils code use the name get/set_pixel
aswell, but instead of converting data they get a pixel from the framebuffer
or set a pixel on the framebuffer. To separate from these rename the
function to gu_hex_to_pixel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/gui/graphic_utils.h |  1 +
 lib/gui/graphic_utils.c     | 14 ++++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 5c5c40a..136cac1 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -11,6 +11,7 @@
 #include <gui/image.h>
 #include <gui/gui.h>
 
+u32 gu_hex_to_pixel(struct fb_info *info, u32 color);
 void gu_rgba_blend(struct fb_info *info, struct image *img, void* dest, int height,
 	int width, int startx, int starty, bool is_rgba);
 void gu_set_pixel(struct fb_info *info, void *adr, u32 px);
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 6d2540f..516e903 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -7,7 +7,17 @@
 #include <fs.h>
 #include <malloc.h>
 
-static u32 get_pixel(struct fb_info *info, u32 color)
+/**
+ * gu_hex_to_pixel - convert a 32bit color to fb format
+ * @info: The framebuffer info to convert the pixel for
+ * @color: The color in 0xttrrggbb format
+ *
+ * This converts a color in 0xttrrggbb format to the format
+ * suitable for writing directly into the framebuffer.
+ *
+ * Return: The pixel suitable for the framebuffer
+ */
+u32 gu_hex_to_pixel(struct fb_info *info, u32 color)
 {
 	u32 px;
 	u8 t = (color >> 24) & 0xff;
@@ -51,7 +61,7 @@ void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
 	u32 px;
 	u8 *screen = buf;
 
-	px = get_pixel(info, color);
+	px = gu_hex_to_pixel(info, color);
 
 	switch (info->bits_per_pixel) {
 	case 8:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
