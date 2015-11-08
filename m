Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x22b.google.com ([2607:f8b0:4003:c06::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvGTc-0004Qb-8J
 for barebox@lists.infradead.org; Sun, 08 Nov 2015 03:17:09 +0000
Received: by oiww189 with SMTP id w189so60940639oiw.3
 for <barebox@lists.infradead.org>; Sat, 07 Nov 2015 19:16:47 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sat,  7 Nov 2015 19:16:16 -0800
Message-Id: <1446952576-2228-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] fbconsole: move font variable into struct font_desc
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

replace font related variables with a struct pointer,
font_desc.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 drivers/video/fbconsole.c | 36 +++++++++++++++++-------------------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b10503e..60f3c48 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -22,8 +22,8 @@ struct fbc_priv {
 	struct param_d *par_font;
 	int par_font_val;
 
-	int font_width, font_height;
-	const u8 *fontdata;
+	const struct font_desc *font;
+
 	unsigned int cols, rows;
 	unsigned int x, y; /* cursor position */
 
@@ -97,7 +97,7 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
 
 	buf = gui_screen_render_buffer(priv->sc);
 
-	inbuf = &priv->fontdata[c * priv->font_height];
+	inbuf = &priv->font->data[c * priv->font->height];
 
 	line_length = priv->fb->line_length;
 
@@ -113,13 +113,13 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
 	rgb = &colors[bgcolor];
 	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
 
-	for (i = 0; i < priv->font_height; i++) {
+	for (i = 0; i < priv->font->height; i++) {
 		uint8_t t = inbuf[i];
 		int j;
 
-		adr = buf + line_length * (y * priv->font_height + i) + x * priv->font_width * bpp;
+		adr = buf + line_length * (y * priv->font->height + i) + x * priv->font->width * bpp;
 
-		for (j = 0; j < priv->font_width; j++) {
+		for (j = 0; j < priv->font->width; j++) {
 			if (t & 0x80)
 				gu_set_pixel(priv->fb, adr, color);
 			else
@@ -137,10 +137,10 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 
 	buf = gui_screen_render_buffer(priv->sc);
 
-	gu_invert_area(priv->fb, buf, x * priv->font_width, y * priv->font_height,
-			priv->font_width, priv->font_height);
-	gu_screen_blit_area(priv->sc, x * priv->font_width, y * priv->font_height,
-			priv->font_width, priv->font_height);
+	gu_invert_area(priv->fb, buf, x * priv->font->width, y * priv->font->height,
+			priv->font->width, priv->font->height);
+	gu_screen_blit_area(priv->sc, x * priv->font->width, y * priv->font->height,
+			priv->font->width, priv->font->height);
 }
 
 static void printchar(struct fbc_priv *priv, int c)
@@ -174,9 +174,9 @@ static void printchar(struct fbc_priv *priv, int c)
 	default:
 		drawchar(priv, priv->x, priv->y, c);
 
-		gu_screen_blit_area(priv->sc, priv->x * priv->font_width,
-				priv->y * priv->font_height,
-				priv->font_width, priv->font_height);
+		gu_screen_blit_area(priv->sc, priv->x * priv->font->width,
+				priv->y * priv->font->height,
+				priv->font->width, priv->font->height);
 
 		priv->x++;
 		if (priv->x > priv->cols) {
@@ -188,7 +188,7 @@ static void printchar(struct fbc_priv *priv, int c)
 	if (priv->y > priv->rows) {
 		void *buf;
 		u32 line_length = priv->fb->line_length;
-		int line_height = line_length * priv->font_height;
+		int line_height = line_length * priv->font->height;
 
 		buf = gui_screen_render_buffer(priv->sc);
 
@@ -355,12 +355,10 @@ static int setup_font(struct fbc_priv *priv)
 		return -ENOENT;
 	}
 
-	priv->font_width = font->width;
-	priv->font_height = font->height;
-	priv->fontdata = font->data;
+	priv->font = font;
 
-	priv->rows = fb->yres / priv->font_height - 1;
-	priv->cols = fb->xres / priv->font_width - 1;
+	priv->rows = fb->yres / priv->font->height - 1;
+	priv->cols = fb->xres / priv->font->width - 1;
 
 	return 0;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
