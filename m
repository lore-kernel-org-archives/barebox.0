Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9VCm-00078M-L7
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 06:04:47 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6EBCCFF8C3D
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 08:12:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  6 Sep 2012 08:04:51 +0200
Message-Id: <1346911500-12902-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/12] bmp: split bmp rending in lib/bmp.c
To: barebox@lists.infradead.org

So we can add other format support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig     |    1 +
 commands/splash.c    |  124 +++++------------------------------------------
 include/bmp_layout.h |   11 +++++
 lib/Kconfig          |    3 ++
 lib/Makefile         |    1 +
 lib/bmp.c            |  132 ++++++++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 159 insertions(+), 113 deletions(-)
 create mode 100644 lib/bmp.c

diff --git a/commands/Kconfig b/commands/Kconfig
index c4623fa..9107a3e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -538,6 +538,7 @@ config CMD_LSMOD
 config CMD_SPLASH
 	bool
 	depends on VIDEO
+	select BMP
 	prompt "splash"
 	help
 	  show bmp files on framebuffer devices
diff --git a/commands/splash.c b/commands/splash.c
index 6526b20..ad73778 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -8,43 +8,18 @@
 #include <fcntl.h>
 #include <fb.h>
 #include <bmp_layout.h>
-#include <asm/byteorder.h>
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
 
 static int do_splash(int argc, char *argv[])
 {
 	int ret, opt, fd;
 	char *fbdev = "/dev/fb0";
-	void *fb, *offscreenbuf = NULL;
+	void *fb;
 	struct fb_info info;
-	struct bmp_image *bmp;
 	char *bmpfile;
-	int bmpsize;
-	char *image;
-	int sw, sh, width, height, startx = -1, starty = -1;
-	int bits_per_pixel, fbsize;
+	int startx = -1, starty = -1;
 	int xres, yres;
 	int offscreen = 0;
-	void *adr, *buf;
+	void *offscreenbuf = NULL;
 
 	while((opt = getopt(argc, argv, "f:x:y:o")) > 0) {
 		switch(opt) {
@@ -88,105 +63,28 @@ static int do_splash(int argc, char *argv[])
 	xres = info.xres;
 	yres = info.yres;
 
-	bmp = read_file(bmpfile, &bmpsize);
-	if (!bmp) {
-		printf("unable to read %s\n", bmpfile);
-		goto failed_memmap;
-	}
-
-	if (bmp->header.signature[0] != 'B' ||
-	      bmp->header.signature[1] != 'M') {
-		printf("No valid bmp file\n");
-	}
-
-	sw = le32_to_cpu(bmp->header.width);
-	sh = le32_to_cpu(bmp->header.height);
-
-	if (startx < 0) {
-		startx = (xres - sw) / 2;
-		if (startx < 0)
-			startx = 0;
-	}
-
-	if (starty < 0) {
-		starty = (yres - sh) / 2;
-		if (starty < 0)
-			starty = 0;
-	}
-
-	width = min(sw, xres - startx);
-	height = min(sh, yres - starty);
-
-	bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
-	fbsize = xres * yres * (info.bits_per_pixel >> 3);
-
 	if (offscreen) {
+		int fbsize;
 		/* Don't fail if malloc fails, just continue rendering directly
 		 * on the framebuffer
 		 */
+
+		fbsize = xres * yres * (info.bits_per_pixel >> 3);
 		offscreenbuf = malloc(fbsize);
 		if (offscreenbuf)
 			memcpy(offscreenbuf, fb, fbsize);
 	}
 
-	buf = offscreenbuf ? offscreenbuf : fb;
-
-	if (bits_per_pixel == 8) {
-		int x, y;
-		struct bmp_color_table_entry *color_table = bmp->color_table;
-
-		for (y = 0; y < height; y++) {
-			image = (char *)bmp +
-					le32_to_cpu(bmp->header.data_offset);
-			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * xres + startx) *
-					(info.bits_per_pixel >> 3);
-			for (x = 0; x < width; x++) {
-				int pixel;
+	if (bmp_render_file(&info, bmpfile, fb, startx, starty, xres, yres,
+			    offscreenbuf) < 0)
+		ret = 1;
 
-				pixel = *image;
-
-				set_pixel(&info, adr, color_table[pixel].red,
-						color_table[pixel].green,
-						color_table[pixel].blue);
-				adr += info.bits_per_pixel >> 3;
-
-				image += bits_per_pixel >> 3;
-			}
-		}
-	} else if (bits_per_pixel == 24) {
-		int x, y;
-
-		for (y = 0; y < height; y++) {
-			image = (char *)bmp +
-					le32_to_cpu(bmp->header.data_offset);
-			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
-			adr = buf + ((y + starty) * xres + startx) *
-					(info.bits_per_pixel >> 3);
-			for (x = 0; x < width; x++) {
-				char *pixel;
-
-				pixel = image;
-
-				set_pixel(&info, adr, pixel[2], pixel[1],
-						pixel[0]);
-				adr += info.bits_per_pixel >> 3;
-
-				image += bits_per_pixel >> 3;
-			}
-		}
-	} else
-		printf("bmp: illegal bits per pixel value: %d\n", bits_per_pixel);
-
-	if (offscreenbuf) {
-		memcpy(fb, offscreenbuf, fbsize);
+	if (offscreenbuf)
 		free(offscreenbuf);
-	}
 
-	free(bmp);
 	close(fd);
 
-	return 0;
+	return ret;
 
 failed_memmap:
 	close(fd);
diff --git a/include/bmp_layout.h b/include/bmp_layout.h
index 63c5564..b5472dd 100644
--- a/include/bmp_layout.h
+++ b/include/bmp_layout.h
@@ -74,4 +74,15 @@ struct bmp_image {
 #define BMP_BI_RLE8	1
 #define BMP_BI_RLE4	2
 
+#ifdef CONFIG_BMP
+int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
+		    int startx, int starty, int xres, int yres, void* offscreenbuf);
+#else
+static inline int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
+		    int startx, int starty, int xres, int yres, void* offscreenbuf)
+{
+	return -ENOSYS;
+}
+#endif
+
 #endif							/* _BMP_H_ */
diff --git a/lib/Kconfig b/lib/Kconfig
index 32634df..93e360b 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -38,4 +38,7 @@ config BITREV
 config QSORT
 	bool
 
+config BMP
+	bool
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 4e6b1ee..df4b5e5 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -34,3 +34,4 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
+obj-$(CONFIG_BMP)	+= bmp.o
diff --git a/lib/bmp.c b/lib/bmp.c
new file mode 100644
index 0000000..776d3b3
--- /dev/null
+++ b/lib/bmp.c
@@ -0,0 +1,132 @@
+#include <common.h>
+#include <fs.h>
+#include <errno.h>
+#include <malloc.h>
+#include <fb.h>
+#include <bmp_layout.h>
+#include <asm/byteorder.h>
+
+static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b)
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
+
+int bmp_render_file(struct fb_info *info, const char* bmpfile, void* fb,
+		    int startx, int starty, int xres, int yres, void* offscreenbuf)
+{
+	struct bmp_image *bmp;
+	int sw, sh, width, height;
+	int bits_per_pixel, fbsize;
+	int bmpsize;
+	int ret = 0;
+	void *adr, *buf;
+	char *image;
+
+	bmp = read_file(bmpfile, &bmpsize);
+	if (!bmp) {
+		printf("unable to read %s\n", bmpfile);
+		return -ENOMEM;
+	}
+
+	if (bmp->header.signature[0] != 'B' ||
+	      bmp->header.signature[1] != 'M') {
+		printf("No valid bmp file\n");
+		ret = -EINVAL;
+		goto err;
+	}
+
+	sw = le32_to_cpu(bmp->header.width);
+	sh = le32_to_cpu(bmp->header.height);
+
+	if (startx < 0) {
+		startx = (xres - sw) / 2;
+		if (startx < 0)
+			startx = 0;
+	}
+
+	if (starty < 0) {
+		starty = (yres - sh) / 2;
+		if (starty < 0)
+			starty = 0;
+	}
+
+	width = min(sw, xres - startx);
+	height = min(sh, yres - starty);
+
+	bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
+	fbsize = xres * yres * (info->bits_per_pixel >> 3);
+
+	buf = offscreenbuf ? offscreenbuf : fb;
+
+	if (bits_per_pixel == 8) {
+		int x, y;
+		struct bmp_color_table_entry *color_table = bmp->color_table;
+
+		for (y = 0; y < height; y++) {
+			image = (char *)bmp +
+					le32_to_cpu(bmp->header.data_offset);
+			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
+			adr = buf + ((y + starty) * xres + startx) *
+					(info->bits_per_pixel >> 3);
+			for (x = 0; x < width; x++) {
+				int pixel;
+
+				pixel = *image;
+
+				set_pixel(info, adr, color_table[pixel].red,
+						color_table[pixel].green,
+						color_table[pixel].blue);
+				adr += info->bits_per_pixel >> 3;
+
+				image += bits_per_pixel >> 3;
+			}
+		}
+	} else if (bits_per_pixel == 24) {
+		int x, y;
+
+		for (y = 0; y < height; y++) {
+			image = (char *)bmp +
+					le32_to_cpu(bmp->header.data_offset);
+			image += (sh - y - 1) * sw * (bits_per_pixel >> 3);
+			adr = buf + ((y + starty) * xres + startx) *
+					(info->bits_per_pixel >> 3);
+			for (x = 0; x < width; x++) {
+				char *pixel;
+
+				pixel = image;
+
+				set_pixel(info, adr, pixel[2], pixel[1],
+						pixel[0]);
+				adr += info->bits_per_pixel >> 3;
+
+				image += bits_per_pixel >> 3;
+			}
+		}
+	} else
+		printf("bmp: illegal bits per pixel value: %d\n", bits_per_pixel);
+
+	if (offscreenbuf)
+		memcpy(fb, offscreenbuf, fbsize);
+
+	free(bmp);
+	return sh;
+
+err:
+	free(bmp);
+	return ret;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
