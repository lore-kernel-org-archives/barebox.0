Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7Pc3-0005Jn-F5
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 14:55:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2015 16:55:24 +0200
Message-Id: <1435071324-1872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bmp support: Use unaligned accessors
To: Barebox List <barebox@lists.infradead.org>

Some fields in the bmp header are unaligned. Use unaligned accessor
functions to acces them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/bmp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 6943a1c..d457c01 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -7,6 +7,7 @@
 #include <gui/graphic_utils.h>
 #include <init.h>
 #include <gui/image_renderer.h>
+#include <asm/unaligned.h>
 
 struct image *bmp_open(char *inbuf, int insize)
 {
@@ -19,9 +20,9 @@ struct image *bmp_open(char *inbuf, int insize)
 	}
 
 	img->data = inbuf;
-	img->height = le32_to_cpu(bmp->header.height);
-	img->width = le32_to_cpu(bmp->header.width);
-	img->bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
+	img->height = get_unaligned_le32(&bmp->header.height);
+	img->width = get_unaligned_le32(&bmp->header.width);
+	img->bits_per_pixel = get_unaligned_le16(&bmp->header.bit_count);
 
 	pr_debug("bmp: %d x %d  x %d data@0x%p\n", img->width, img->height,
 		 img->bits_per_pixel, img->data);
@@ -76,7 +77,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 		for (y = 0; y < height; y++) {
 			image = (char *)bmp +
-					le32_to_cpu(bmp->header.data_offset);
+					get_unaligned_le32(&bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
 			adr = buf + (y + starty) * sc->info.line_length +
 					startx * (sc->info.bits_per_pixel >> 3);
@@ -98,7 +99,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 
 		for (y = 0; y < height; y++) {
 			image = (char *)bmp +
-					le32_to_cpu(bmp->header.data_offset);
+					get_unaligned_le32(&bmp->header.data_offset);
 			image += (img->height - y - 1) * img->width * (bits_per_pixel >> 3);
 			adr = buf + (y + starty) * sc->info.line_length +
 					startx * (sc->info.bits_per_pixel >> 3);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
