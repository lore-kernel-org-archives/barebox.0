Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4zJm-00062j-Mb
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 18:41:03 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  6 Mar 2012 19:41:22 +0100
Message-Id: <1331059282-10824-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] bmp: honor alpha channel bits
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Some displays might use RGBA formats. The 'A' component must be set
there to make image opaque.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 commands/bmp.c |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/commands/bmp.c b/commands/bmp.c
index 644a977..2be6fe0 100644
--- a/commands/bmp.c
+++ b/commands/bmp.c
@@ -10,13 +10,14 @@
 #include <bmp_layout.h>
 #include <asm/byteorder.h>
 
-static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b)
+static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b, int a)
 {
 	u32 px;
 
 	px = (r >> (8 - info->red.length)) << info->red.offset |
 		(g >> (8 - info->green.length)) << info->green.offset |
-		(b >> (8 - info->blue.length)) << info->blue.offset;
+		(b >> (8 - info->blue.length)) << info->blue.offset |
+		(a >> (8 - info->transp.length)) << info->transp.offset;
 
 	switch (info->bits_per_pixel) {
 	case 8:
@@ -148,7 +149,7 @@ static int do_bmp(struct command *cmdtp, int argc, char *argv[])
 
 				set_pixel(&info, adr, color_table[pixel].red,
 						color_table[pixel].green,
-						color_table[pixel].blue);
+						color_table[pixel].blue, 255);
 				adr += info.bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
@@ -169,7 +170,7 @@ static int do_bmp(struct command *cmdtp, int argc, char *argv[])
 				pixel = image;
 
 				set_pixel(&info, adr, pixel[2], pixel[1],
-						pixel[0]);
+						pixel[0], 255);
 				adr += info.bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
-- 
1.7.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
