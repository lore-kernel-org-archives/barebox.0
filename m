Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAPPL-0001GX-Kr
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 18:05:30 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0FF48FF8B52
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 20:13:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Sep 2012 20:05:36 +0200
Message-Id: <1347127542-11981-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/11] splash/bmp: switch to image_renderer
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig              |    1 +
 commands/splash.c             |   10 ++--
 lib/Kconfig                   |    1 +
 lib/bmp.c                     |  103 +++++++++++++++++++++--------------------
 {include => lib}/bmp_layout.h |    0
 5 files changed, 59 insertions(+), 56 deletions(-)
 rename {include => lib}/bmp_layout.h (100%)

diff --git a/commands/Kconfig b/commands/Kconfig
index 9107a3e..97993c1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -538,6 +538,7 @@ config CMD_LSMOD
 config CMD_SPLASH
 	bool
 	depends on VIDEO
+	select IMAGE_RENDERER
 	select BMP
 	prompt "splash"
 	help
diff --git a/commands/splash.c b/commands/splash.c
index ad73778..88a6cf1 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -7,7 +7,7 @@
 #include <getopt.h>
 #include <fcntl.h>
 #include <fb.h>
-#include <bmp_layout.h>
+#include <image_renderer.h>
 
 static int do_splash(int argc, char *argv[])
 {
@@ -15,7 +15,7 @@ static int do_splash(int argc, char *argv[])
 	char *fbdev = "/dev/fb0";
 	void *fb;
 	struct fb_info info;
-	char *bmpfile;
+	char *image_file;
 	int startx = -1, starty = -1;
 	int xres, yres;
 	int offscreen = 0;
@@ -40,7 +40,7 @@ static int do_splash(int argc, char *argv[])
 		printf("no filename given\n");
 		return 1;
 	}
-	bmpfile = argv[optind];
+	image_file = argv[optind];
 
 	fd = open(fbdev, O_RDWR);
 	if (fd < 0) {
@@ -75,8 +75,8 @@ static int do_splash(int argc, char *argv[])
 			memcpy(offscreenbuf, fb, fbsize);
 	}
 
-	if (bmp_render_file(&info, bmpfile, fb, startx, starty, xres, yres,
-			    offscreenbuf) < 0)
+	if (image_renderer_file(&info, image_file, fb, startx, starty,
+				offscreenbuf) < 0)
 		ret = 1;
 
 	if (offscreenbuf)
diff --git a/lib/Kconfig b/lib/Kconfig
index be3ea1c..417c81e 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -45,5 +45,6 @@ config IMAGE_RENDERER
 
 config BMP
 	bool
+	depends on IMAGE_RENDERER
 
 endmenu
diff --git a/lib/bmp.c b/lib/bmp.c
index 776d3b3..8dd141b 100644
--- a/lib/bmp.c
+++ b/lib/bmp.c
@@ -1,74 +1,67 @@
 #include <common.h>
-#include <fs.h>
 #include <errno.h>
 #include <malloc.h>
 #include <fb.h>
-#include <bmp_layout.h>
+#include "bmp_layout.h"
 #include <asm/byteorder.h>
+#include <init.h>
+#include <image_renderer.h>
 
-static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b)
+struct image *bmp_open(char *inbuf, int insize)
 {
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
+	struct image *img = calloc(1, sizeof(struct image));
+	struct bmp_image *bmp = (struct bmp_image*)inbuf;
+
+	if (!img) {
+		free(bmp);
+		return ERR_PTR(-ENOMEM);
 	}
+
+	img->data = inbuf;
+	img->height = le32_to_cpu(bmp->header.height);;
+	img->width = le32_to_cpu(bmp->header.width);;
+	img->bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
+
+	pr_debug("bmp: %d x %d  x %d data@0x%p\n", img->width, img->height,
+		 img->bit_per_pixel, img->data);
+
+	return img;
+}
+
+void bmp_close(struct image *img)
+{
+	free(img->data);
 }
 
-int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
-		    int startx, int starty, int xres, int yres, void* offscreenbuf)
+static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
+		int startx, int starty, void* offscreenbuf)
 {
-	struct bmp_image *bmp;
-	int sw, sh, width, height;
+	struct bmp_image *bmp = img->data;
+	int width, height;
 	int bits_per_pixel, fbsize;
-	int bmpsize;
-	int ret = 0;
 	void *adr, *buf;
 	char *image;
+	int xres, yres;
 
-	bmp = read_file(bmpfile, &bmpsize);
-	if (!bmp) {
-		printf("unable to read %s\n", bmpfile);
-		return -ENOMEM;
-	}
-
-	if (bmp->header.signature[0] != 'B' ||
-	      bmp->header.signature[1] != 'M') {
-		printf("No valid bmp file\n");
-		ret = -EINVAL;
-		goto err;
-	}
-
-	sw = le32_to_cpu(bmp->header.width);
-	sh = le32_to_cpu(bmp->header.height);
+	xres = info->xres;
+	yres = info->yres;
 
 	if (startx < 0) {
-		startx = (xres - sw) / 2;
+		startx = (xres - img->width) / 2;
 		if (startx < 0)
 			startx = 0;
 	}
 
 	if (starty < 0) {
-		starty = (yres - sh) / 2;
+		starty = (yres - img->height) / 2;
 		if (starty < 0)
 			starty = 0;
 	}
 
-	width = min(sw, xres - startx);
-	height = min(sh, yres - starty);
+	width = min(img->width, xres - startx);
+	height = min(img->height, yres - starty);
 
-	bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
+	bits_per_pixel = img->bits_per_pixel;
 	fbsize = xres * yres * (info->bits_per_pixel >> 3);
 
 	buf = offscreenbuf ? offscreenbuf : fb;
@@ -80,7 +73,7 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 		for (y = 0; y < height; y++) {
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
-			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
+			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
 			adr = buf + ((y + starty) * xres + startx) *
 					(info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
@@ -102,7 +95,7 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 		for (y = 0; y < height; y++) {
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
-			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
+			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
 			adr = buf + ((y + starty) * xres + startx) *
 					(info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
@@ -123,10 +116,18 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 	if (offscreenbuf)
 		memcpy(fb, offscreenbuf, fbsize);
 
-	free(bmp);
-	return sh;
+	return img->height;
+}
+
+static struct image_renderer bmp = {
+	.type = filetype_bmp,
+	.open = bmp_open,
+	.close = bmp_close,
+	.renderer = bmp_renderer,
+};
 
-err:
-	free(bmp);
-	return ret;
+static int bmp_init(void)
+{
+	return image_renderer_register(&bmp);
 }
+fs_initcall(bmp_init);
diff --git a/include/bmp_layout.h b/lib/bmp_layout.h
similarity index 100%
rename from include/bmp_layout.h
rename to lib/bmp_layout.h
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
