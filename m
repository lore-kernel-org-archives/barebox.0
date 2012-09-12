Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBnJq-00062o-4C
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 13:49:31 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 15B53FF9C59
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:51:02 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 15:42:41 +0200
Message-Id: <1347457369-9215-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347457369-9215-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912132443.GQ31207@game.jcrosoft.org>
 <1347457369-9215-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/11] Introduce graphic utils
To: barebox@lists.infradead.org

to Factorise pixel rendering

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/graphic_utils.h |   14 ++++++++
 lib/Makefile            |    2 +-
 lib/bmp.c               |   25 ++-----------
 lib/graphic_utils.c     |   89 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 107 insertions(+), 23 deletions(-)
 create mode 100644 include/graphic_utils.h
 create mode 100644 lib/graphic_utils.c

diff --git a/include/graphic_utils.h b/include/graphic_utils.h
new file mode 100644
index 0000000..4e5596f
--- /dev/null
+++ b/include/graphic_utils.h
@@ -0,0 +1,14 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __GRAPHIC_UTILS_H__
+#define __GRAPHIC_UTILS_H__
+
+void set_pixel(struct fb_info *info, void *adr, u32 px);
+void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
+void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
+
+#endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/Makefile b/lib/Makefile
index df4b5e5..997ba10 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -34,4 +34,4 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
-obj-$(CONFIG_BMP)	+= bmp.o
+obj-$(CONFIG_BMP)	+= bmp.o graphic_utils.o
diff --git a/lib/bmp.c b/lib/bmp.c
index 776d3b3..ece03e3 100644
--- a/lib/bmp.c
+++ b/lib/bmp.c
@@ -5,26 +5,7 @@
 #include <fb.h>
 #include <bmp_layout.h>
 #include <asm/byteorder.h>
-
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
+#include <graphic_utils.h>
 
 int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 		    int startx, int starty, int xres, int yres, void* offscreenbuf)
@@ -88,7 +69,7 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 
 				pixel = *image;
 
-				set_pixel(info, adr, color_table[pixel].red,
+				set_rgb_pixel(info, adr, color_table[pixel].red,
 						color_table[pixel].green,
 						color_table[pixel].blue);
 				adr += info->bits_per_pixel >> 3;
@@ -110,7 +91,7 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 
 				pixel = image;
 
-				set_pixel(info, adr, pixel[2], pixel[1],
+				set_rgb_pixel(info, adr, pixel[2], pixel[1],
 						pixel[0]);
 				adr += info->bits_per_pixel >> 3;
 
diff --git a/lib/graphic_utils.c b/lib/graphic_utils.c
new file mode 100644
index 0000000..672992c
--- /dev/null
+++ b/lib/graphic_utils.c
@@ -0,0 +1,89 @@
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
+void set_pixel(struct fb_info *info, void *adr, u32 px)
+{
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
+
+void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b)
+{
+	u32 px;
+
+	px = (r >> (8 - info->red.length)) << info->red.offset |
+		(g >> (8 - info->green.length)) << info->green.offset |
+		(b >> (8 - info->blue.length)) << info->blue.offset;
+
+	set_pixel(info, adr, px);
+}
+
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
