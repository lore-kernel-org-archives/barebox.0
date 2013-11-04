Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9N-0000pZ-OP
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:38 +0000
Received: by mail-ee0-f46.google.com with SMTP id b57so1047532eek.5
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:15 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.14
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:15 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:01:00 +0100
Message-Id: <1383606064-30494-3-git-send-email-a.heider@gmail.com>
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 2/6] gui: convert graphic utils to respect line_length
To: barebox@lists.infradead.org

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 lib/gui/graphic_utils.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 95687df..300c525 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -167,18 +167,18 @@ void rgba_blend(struct fb_info *info, struct image *img, void* buf, int height,
 {
 	unsigned char *adr;
 	int x, y;
-	int xres;
+	int line_length;
 	int img_byte_per_pixel = 3;
 	void *image;
 
 	if (is_rgba)
 		img_byte_per_pixel++;
 
-	xres = info->xres;
+	line_length = info->line_length;
 
 	for (y = 0; y < height; y++) {
-		adr = buf + ((y + starty) * xres + startx) *
-				(info->bits_per_pixel >> 3);
+		adr = buf + (y + starty) * line_length +
+				startx * (info->bits_per_pixel >> 3);
 		image = img->data + (y * img->width *img_byte_per_pixel);
 
 		for (x = 0; x < width; x++) {
@@ -219,7 +219,7 @@ int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
 	sc->s.y = 0;
 	sc->s.width = sc->info.xres;
 	sc->s.height = sc->info.yres;
-	sc->fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
+	sc->fbsize = sc->info.line_length * sc->s.height;
 
 	if (offscreen) {
 		/* Don't fail if malloc fails, just continue rendering directly
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
