Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBnJt-00063Y-Ea
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 13:49:34 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id F2AF3FF9D8B
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:51:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 15:42:44 +0200
Message-Id: <1347457369-9215-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/11] splash/bmp: switch to image_renderer
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig              |    1 +
 commands/splash.c             |   10 ++---
 lib/Kconfig                   |    1 +
 lib/Makefile                  |    4 +-
 lib/bmp.c                     |   91 +++++++++++++++++++++++++----------------
 {include => lib}/bmp_layout.h |    0
 6 files changed, 65 insertions(+), 42 deletions(-)
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
diff --git a/lib/Makefile b/lib/Makefile
index 237daf1..0756135 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -34,5 +34,5 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
-obj-$(CONFIG_BMP)	+= bmp.o graphic_utils.o
-obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o
+obj-$(CONFIG_BMP)	+= bmp.o
+obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
diff --git a/lib/bmp.c b/lib/bmp.c
index ece03e3..f5c1961 100644
--- a/lib/bmp.c
+++ b/lib/bmp.c
@@ -1,55 +1,68 @@
 #include <common.h>
-#include <fs.h>
 #include <errno.h>
 #include <malloc.h>
 #include <fb.h>
-#include <bmp_layout.h>
+#include "bmp_layout.h"
 #include <asm/byteorder.h>
 #include <graphic_utils.h>
+#include <init.h>
+#include <image_renderer.h>
 
-int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
-		    int startx, int starty, int xres, int yres, void* offscreenbuf)
+struct image *bmp_open(char *inbuf, int insize)
 {
-	struct bmp_image *bmp;
-	int sw, sh, width, height;
-	int bits_per_pixel, fbsize;
-	int bmpsize;
-	int ret = 0;
-	void *adr, *buf;
-	char *image;
+	struct image *img = calloc(1, sizeof(struct image));
+	struct bmp_image *bmp = (struct bmp_image*)inbuf;
 
-	bmp = read_file(bmpfile, &bmpsize);
-	if (!bmp) {
-		printf("unable to read %s\n", bmpfile);
-		return -ENOMEM;
+	if (!img) {
+		free(bmp);
+		return ERR_PTR(-ENOMEM);
 	}
 
-	if (bmp->header.signature[0] != 'B' ||
-	      bmp->header.signature[1] != 'M') {
-		printf("No valid bmp file\n");
-		ret = -EINVAL;
-		goto err;
-	}
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
+}
 
-	sw = le32_to_cpu(bmp->header.width);
-	sh = le32_to_cpu(bmp->header.height);
+static int bmp_renderer(struct fb_info *info, struct image *img, void* fb,
+		int startx, int starty, void* offscreenbuf)
+{
+	struct bmp_image *bmp = img->data;
+	int width, height;
+	int bits_per_pixel, fbsize;
+	void *adr, *buf;
+	char *image;
+	int xres, yres;
+
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
@@ -61,7 +74,7 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 		for (y = 0; y < height; y++) {
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
-			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
+			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
 			adr = buf + ((y + starty) * xres + startx) *
 					(info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
@@ -83,7 +96,7 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
 		for (y = 0; y < height; y++) {
 			image = (char *)bmp +
 					le32_to_cpu(bmp->header.data_offset);
-			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
+			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
 			adr = buf + ((y + starty) * xres + startx) *
 					(info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
@@ -104,10 +117,18 @@ int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
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
