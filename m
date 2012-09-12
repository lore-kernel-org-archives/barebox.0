Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBnJr-0008H3-HW
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 13:49:33 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1AC35FF9E41
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:51:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 15:42:46 +0200
Message-Id: <1347457369-9215-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/11] graphic_utils: add rgba support
To: barebox@lists.infradead.org

this will allow to render rgba image with or without hw support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/graphic_utils.h |    3 ++
 lib/graphic_utils.c     |  102 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 105 insertions(+)

diff --git a/include/graphic_utils.h b/include/graphic_utils.h
index 4e5596f..9909b6c 100644
--- a/include/graphic_utils.h
+++ b/include/graphic_utils.h
@@ -7,8 +7,11 @@
 #ifndef __GRAPHIC_UTILS_H__
 #define __GRAPHIC_UTILS_H__
 
+void rgba_blend(struct fb_info *info, void *image, void* dest, int height,
+	int width, int startx, int starty, bool is_rgba);
 void set_pixel(struct fb_info *info, void *adr, u32 px);
 void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
+void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/graphic_utils.c b/lib/graphic_utils.c
index 672992c..a435bdd 100644
--- a/lib/graphic_utils.c
+++ b/lib/graphic_utils.c
@@ -62,6 +62,37 @@ void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
 	}
 }
 
+static void get_rgb_pixel(struct fb_info *info, void *adr, u8 *r ,u8 *g, u8 *b)
+{
+	u32 px;
+	u32 rmask, gmask, bmask;
+
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
+
+	*r = ((px & ~rmask) >> info->red.offset) << (8 - info->red.length);
+	*g = ((px & ~gmask) >> info->green.offset) << (8 - info->green.length);
+	*b = ((px & ~bmask) >> info->blue.offset) << (8 - info->blue.length);
+}
+
 void set_pixel(struct fb_info *info, void *adr, u32 px)
 {
 	switch (info->bits_per_pixel) {
@@ -87,3 +118,74 @@ void set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b)
 	set_pixel(info, adr, px);
 }
 
+static u8 alpha_mux(int s, int d, int a)
+{
+	return (d * a + s * (255 - a)) >> 8;
+}
+
+void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
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
+			u8 sr = 0;
+			u8 sg = 0;
+			u8 sb = 0;
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
