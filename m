Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAPPO-0001HS-5L
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 18:05:37 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 500EEFF8B69
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 20:13:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Sep 2012 20:05:39 +0200
Message-Id: <1347127542-11981-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/11] graphic_utils: add rgba support
To: barebox@lists.infradead.org

this will allow to render rgba image with or without hw support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/graphic_utils.h |    4 ++
 lib/graphic_utils.c     |  116 +++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 116 insertions(+), 4 deletions(-)

diff --git a/include/graphic_utils.h b/include/graphic_utils.h
index 6d555b2..7cb0b2f 100644
--- a/include/graphic_utils.h
+++ b/include/graphic_utils.h
@@ -7,7 +7,11 @@
 #ifndef __GRAPHIC_UTILS_H__
 #define __GRAPHIC_UTILS_H__
 
+void rgba_blend(struct fb_info *info, void *image, void* dest, int height,
+	int width, int startx, int starty, bool is_rgba);
+void set_pixel(struct fb_info *info, void *adr, u32 px);
 void set_rgb_pixel(struct fb_info *info, void *adr, int r, int g, int b);
+void set_rgba_pixel(struct fb_info *info, void *adr, int r, int g, int b, int a);
 void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/graphic_utils.c b/lib/graphic_utils.c
index 2e174d8..4d627b2 100644
--- a/lib/graphic_utils.c
+++ b/lib/graphic_utils.c
@@ -62,14 +62,39 @@ void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
 	}
 }
 
-void set_rgb_pixel(struct fb_info *info, void *adr, int r, int g, int b)
+static void get_rgb_pixel(struct fb_info *info, void *adr, int *r ,int *g, int *b)
 {
 	u32 px;
+	u32 rmask, gmask, bmask;
 
-	px = (r >> (8 - info->red.length)) << info->red.offset |
-		(g >> (8 - info->green.length)) << info->green.offset |
-		(b >> (8 - info->blue.length)) << info->blue.offset;
+	switch (info->bits_per_pixel) {
+	case 16:
+		px = *(u16 *)adr;
+		break;
+	case 32:
+		px = *(u32 *)adr;
+		break;
+	case 8:
+	default:
+		return;
+	}
+
+	rmask = (0xff >> (8 - info->blue.length)) << info->blue.offset |
+		(0xff >> (8 - info->green.length)) << info->green.offset;
+
+	gmask = (0xff >> (8 - info->red.length)) << info->red.offset |
+		(0xff >> (8 - info->blue.length)) << info->blue.offset;
+
+	bmask = (0xff >> (8 - info->red.length)) << info->red.offset |
+		(0xff >> (8 - info->green.length)) << info->green.offset;
 
+	*r = ((px & ~rmask) >> info->red.offset) << (8 - info->red.length);
+	*g = ((px & ~gmask) >> info->green.offset) << (8 - info->green.length);
+	*b = ((px & ~bmask) >> info->blue.offset) << (8 - info->blue.length);
+}
+
+void set_pixel(struct fb_info *info, void *adr, u32 px)
+{
 	switch (info->bits_per_pixel) {
 	case 8:
 		break;
@@ -81,3 +106,86 @@ void set_rgb_pixel(struct fb_info *info, void *adr, int r, int g, int b)
 		break;
 	}
 }
+
+void set_rgb_pixel(struct fb_info *info, void *adr, int r, int g, int b)
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
+static int alpha_mux(int s, int d, int a)
+{
+	return (d * a + s * (255 - a)) >> 8;
+}
+
+void set_rgba_pixel(struct fb_info *info, void *adr, int r, int g, int b, int a)
+{
+	u32 px = 0x0;
+
+	if (!a)
+		return;
+
+	if (a != 0xff) {
+		if (info->transp.length) {
+			px |= (a >> (8 - info->transp.length)) << info->transp.offset;
+		} else {
+			int sr = 0;
+			int sg = 0;
+			int sb = 0;
+
+			get_rgb_pixel(info, adr, &sr, &sg, &sb);
+
+			r = alpha_mux(sr, r, a);
+			g = alpha_mux(sg, g, a);
+			b = alpha_mux(sb, b, a);
+
+			set_rgb_pixel(info, adr, r, g, b);
+
+			return;
+		}
+	}
+
+	px |= (r >> (8 - info->red.length)) << info->red.offset |
+		(g >> (8 - info->green.length)) << info->green.offset |
+		(b >> (8 - info->blue.length)) << info->blue.offset;
+
+	set_pixel(info, adr, px);
+}
+
+void rgba_blend(struct fb_info *info, void *image, void* buf, int height,
+	int width, int startx, int starty, bool is_rgba)
+{
+	unsigned char *adr;
+	int x, y;
+	int xres;
+	int img_byte_per_pixel = 3;
+
+	if (is_rgba)
+		img_byte_per_pixel++;
+
+	xres = info->xres;
+
+	for (y = 0; y < height; y++) {
+		adr = buf + ((y + starty) * xres + startx) *
+				(info->bits_per_pixel >> 3);
+
+		for (x = 0; x < width; x++) {
+			char *pixel;
+
+			pixel = image;
+			if (is_rgba)
+				set_rgba_pixel(info, adr, pixel[0], pixel[1],
+						pixel[2], pixel[3]);
+			else
+				set_rgb_pixel(info, adr, pixel[0], pixel[1],
+						pixel[2]);
+			adr += info->bits_per_pixel >> 3;
+			image += img_byte_per_pixel;
+		}
+	}
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
