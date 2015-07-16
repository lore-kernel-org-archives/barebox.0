Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeR-0004Bt-Gm
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:43 +0200
Message-Id: <1437031912-24754-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] graphics_utils: Add function to invert an area
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/gui/graphic_utils.h |  2 ++
 lib/gui/graphic_utils.c     | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index de7bb24..5c5c40a 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -20,5 +20,7 @@ void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
 int fb_open(const char * fbdev, struct screen *sc, bool offscreen);
 void fb_close(struct screen *sc);
 void gu_screen_blit(struct screen *sc);
+void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
+		int height);
 
 #endif /* __GRAPHIC_UTILS_H__ */
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index ae2e9ca..6d2540f 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -128,6 +128,25 @@ static u8 alpha_mux(int s, int d, int a)
 	return (d * a + s * (255 - a)) >> 8;
 }
 
+void gu_invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
+		int height)
+{
+	unsigned char *adr;
+	int x, y;
+	int line_length;
+	int bpp = info->bits_per_pixel >> 3;
+
+	line_length = info->line_length;
+
+	for (y = starty; y < starty + height; y++) {
+		adr = buf + line_length * y + startx * bpp;
+
+		for (x = 0; x < width * bpp; x++) {
+			*adr++ ^= 0xff;
+		}
+	}
+}
+
 void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 {
 	u32 px = 0x0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
