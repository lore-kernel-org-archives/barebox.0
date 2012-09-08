Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAPPO-0001HR-36
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 18:05:38 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 27203FF8B5D
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 20:13:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Sep 2012 20:05:38 +0200
Message-Id: <1347127542-11981-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/11] Introduce graphic utils
To: barebox@lists.infradead.org

to Factorise pixel rendering

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c        |   61 +---------------------------------
 include/graphic_utils.h  |   13 ++++++++
 include/image_renderer.h |   20 -----------
 lib/Makefile             |    1 +
 lib/bmp.c                |    5 +--
 lib/graphic_utils.c      |   83 ++++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 101 insertions(+), 82 deletions(-)
 create mode 100644 include/graphic_utils.h
 create mode 100644 lib/graphic_utils.c

diff --git a/commands/splash.c b/commands/splash.c
index 4bddc6c..f4b975b 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -8,66 +8,7 @@
 #include <fcntl.h>
 #include <fb.h>
 #include <image_renderer.h>
-
-static u32 get_pixel(struct fb_info *info, u32 color)
-{
-	u32 px;
-	u8 t = (color >> 24) & 0xff;
-	u8 r = (color >> 16) & 0xff;
-	u8 g = (color >> 8 ) & 0xff;
-	u8 b = (color >> 0 ) & 0xff;
-
-	if (info->grayscale) {
-		 px = (r | g | b) ? 0xffffffff : 0x0;
-		 return px;
-	}
-
-	px = (t >> (8 - info->transp.length)) << info->transp.offset |
-		 (r >> (8 - info->red.length)) << info->red.offset |
-		 (g >> (8 - info->green.length)) << info->green.offset |
-		 (b >> (8 - info->blue.length)) << info->blue.offset;
-
-	return px;
-}
-
-static void memsetw(void *s, u16 c, size_t n)
-{
-	size_t i;
-	u16* tmp = s;
-
-	for (i = 0; i < n; i++)
-		*tmp++ = c;
-}
-
-static void memsetl(void *s, u32 c, size_t n)
-{
-	size_t i;
-	u32* tmp = s;
-
-	for (i = 0; i < n; i++)
-		*tmp++ = c;
-}
-
-static void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
-{
-	u32 px;
-	u8 *screen = buf;
-
-	px = get_pixel(info, color);
-
-	switch (info->bits_per_pixel) {
-	case 8:
-		memset(screen, (uint8_t)px, size);
-		break;
-	case 16:
-		memsetw(screen, (uint16_t)px, size);
-		break;
-	case 32:
-	case 24:
-		memsetl(screen, px, size);
-		break;
-	}
-}
+#include <graphic_utils.h>
 
 static int do_splash(int argc, char *argv[])
 {
diff --git a/include/graphic_utils.h b/include/graphic_utils.h
new file mode 100644
index 0000000..6d555b2
--- /dev/null
+++ b/include/graphic_utils.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __GRAPHIC_UTILS_H__
+#define __GRAPHIC_UTILS_H__
+
+void set_rgb_pixel(struct fb_info *info, void *adr, int r, int g, int b);
+void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
+
+#endif /* __GRAPHIC_UTILS_H__ */
diff --git a/include/image_renderer.h b/include/image_renderer.h
index 8604a2a..31ef1c6 100644
--- a/include/image_renderer.h
+++ b/include/image_renderer.h
@@ -37,26 +37,6 @@ struct image_renderer {
 	struct list_head list;
 };
 
-static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b)
-{
-	u32 px;
-
-	px = (r >> (8 - info->red.length)) << info->red.offset |
-		(g >> (8 - info->green.length)) << info->green.offset |
-		(b >> (8 - info->blue.length)) << info->blue.offset;
-
-	switch (info->bits_per_pixel) {
-	case 8:
-		break;
-	case 16:
-		*(u16 *)adr = px;
-		break;
-	case 32:
-		*(u32 *)adr = px;
-		break;
-	}
-}
-
 #ifdef CONFIG_IMAGE_RENDERER
 int image_renderer_register(struct image_renderer *ir);
 void image_render_unregister(struct image_renderer *ir);
diff --git a/lib/Makefile b/lib/Makefile
index 8fbae8a..96b7c56 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -35,4 +35,5 @@ obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-$(CONFIG_BMP)	+= bmp.o
+obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
 obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o
diff --git a/lib/bmp.c b/lib/bmp.c
index 8dd141b..fec9975 100644
--- a/lib/bmp.c
+++ b/lib/bmp.c
@@ -6,6 +6,7 @@
 #include <asm/byteorder.h>
 #include <init.h>
 #include <image_renderer.h>
+#include <graphic_utils.h>
 
 struct image *bmp_open(char *inbuf, int insize)
 {
@@ -81,7 +82,7 @@ static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
 
 				pixel = *image;
 
-				set_pixel(info, adr, color_table[pixel].red,
+				set_rgb_pixel(info, adr, color_table[pixel].red,
 						color_table[pixel].green,
 						color_table[pixel].blue);
 				adr += info->bits_per_pixel >> 3;
@@ -103,7 +104,7 @@ static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
 
 				pixel = image;
 
-				set_pixel(info, adr, pixel[2], pixel[1],
+				set_rgb_pixel(info, adr, pixel[2], pixel[1],
 						pixel[0]);
 				adr += info->bits_per_pixel >> 3;
 
diff --git a/lib/graphic_utils.c b/lib/graphic_utils.c
new file mode 100644
index 0000000..2e174d8
--- /dev/null
+++ b/lib/graphic_utils.c
@@ -0,0 +1,83 @@
+#include <common.h>
+#include <fb.h>
+#include <graphic_utils.h>
+
+static u32 get_pixel(struct fb_info *info, u32 color)
+{
+	u32 px;
+	u8 t = (color >> 24) & 0xff;
+	u8 r = (color >> 16) & 0xff;
+	u8 g = (color >> 8 ) & 0xff;
+	u8 b = (color >> 0 ) & 0xff;
+
+	if (info->grayscale) {
+		 px = (r | g | b) ? 0xffffffff : 0x0;
+		 return px;
+	}
+
+	px = (t >> (8 - info->transp.length)) << info->transp.offset |
+		 (r >> (8 - info->red.length)) << info->red.offset |
+		 (g >> (8 - info->green.length)) << info->green.offset |
+		 (b >> (8 - info->blue.length)) << info->blue.offset;
+
+	return px;
+}
+
+static void memsetw(void *s, u16 c, size_t n)
+{
+	size_t i;
+	u16* tmp = s;
+
+	for (i = 0; i < n; i++)
+		*tmp++ = c;
+}
+
+static void memsetl(void *s, u32 c, size_t n)
+{
+	size_t i;
+	u32* tmp = s;
+
+	for (i = 0; i < n; i++)
+		*tmp++ = c;
+}
+
+void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
+{
+	u32 px;
+	u8 *screen = buf;
+
+	px = get_pixel(info, color);
+
+	switch (info->bits_per_pixel) {
+	case 8:
+		memset(screen, (uint8_t)px, size);
+		break;
+	case 16:
+		memsetw(screen, (uint16_t)px, size);
+		break;
+	case 32:
+	case 24:
+		memsetl(screen, px, size);
+		break;
+	}
+}
+
+void set_rgb_pixel(struct fb_info *info, void *adr, int r, int g, int b)
+{
+	u32 px;
+
+	px = (r >> (8 - info->red.length)) << info->red.offset |
+		(g >> (8 - info->green.length)) << info->green.offset |
+		(b >> (8 - info->blue.length)) << info->blue.offset;
+
+	switch (info->bits_per_pixel) {
+	case 8:
+		break;
+	case 16:
+		*(u16 *)adr = px;
+		break;
+	case 32:
+		*(u32 *)adr = px;
+		break;
+	}
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
