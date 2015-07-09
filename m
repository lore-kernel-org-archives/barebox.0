Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD70v-0001FE-Vf
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 08:17:03 +0000
Date: Thu, 9 Jul 2015 10:16:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150709081639.GL18700@pengutronix.de>
References: <1436346939-2306-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436346939-2306-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] WIP: video: implement quick-n-dirty framebuffer console
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2015 at 12:15:39PM +0300, Antony Pavlov wrote:
> This patch realizes very simple framebuffer console for barebox.
> Minimal ANSI/VT100 Escape Sequence parser is used to ignore color
> change commands (based on GNU screen parser).
> 
> THere are several ANSI/VT100 parsers:
> 
>   * GNU screen (git://git.savannah.gnu.org/screen.git);
>   * st - simple terminal (http://git.suckless.org/st);
>   * or even mutt (https://github.com/karelzak/mutt-kz).
> 

Here's my WIP state based on your patch. It's probably worth to create a
function that takes a bw bitmap and a color and which renders the bitmap
to the screen with the given color. Also it might be worth to separate
the ANSI/VT100 parser to be able to share it between the EFI console
and fbcon.

Sascha

From 59211105b2fdcdf6c1891edfa999d915ceba3bb3 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 9 Jul 2015 10:01:36 +0200
Subject: [PATCH] fbcon wip

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 172 ++++++++++++++++++++++++++++++++--------------
 lib/gui/graphic_utils.c   |  21 +++++-
 2 files changed, 140 insertions(+), 53 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 8ad4c2c..74592c5 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -15,6 +15,8 @@ enum state_t {
 	CSI,				/* Reading arguments in "CSI Pn ;...*/
 };
 
+u32 get_pixel(struct fb_info *info, u32 color);
+
 struct fbc_priv {
 	struct console_device cdev;
 	struct fb_info *fb;
@@ -25,49 +27,13 @@ struct fbc_priv {
 	unsigned int x, y; /* cursor position */
 
 	enum state_t state;
-};
-
-static struct image *char8x16_img(char *inbuf)
-{
-	struct image *img = calloc(1, sizeof(struct image));
-	int i;
-	uint32_t *p;
-
-	if (!img)
-		return ERR_PTR(-ENOMEM);
-
-	img->bits_per_pixel = 4 << 3;
-	img->data = calloc(1, sizeof(uint32_t) * VIDEO_FONT_WIDTH * VIDEO_FONT_HEIGHT);
-	img->height = VIDEO_FONT_HEIGHT;
-	img->width = VIDEO_FONT_WIDTH;
-
-	p = img->data;
-
-	for (i = 0; i < VIDEO_FONT_HEIGHT; i++) {
-		uint8_t t = inbuf[i];
-		int j;
 
-		for (j = 0; j < VIDEO_FONT_WIDTH; j++) {
-			if (t & 0x80) {
-				*p = 0xffffffff;
-			}
+	u32 color;
+	bool invert;
 
-			p++;
-			t <<= 1;
-		}
-	}
-
-	return img;
-}
-
-static void init_chars(struct image *chars[], int char_num)
-{
-	int i;
-
-	for (i = 0; i < char_num; i++) {
-		chars[i] = char8x16_img(&video_fontdata[i * VIDEO_FONT_HEIGHT]);
-	}
-}
+	int csipos;
+	u8 csi[20];
+};
 
 static int fbc_getc(struct console_device *cdev)
 {
@@ -82,39 +48,66 @@ static int fbc_tstc(struct console_device *cdev)
 static void drawchar(struct fbc_priv *priv, int x, int y, char c)
 {
 	void *buf;
+	int bpp = priv->fb->bits_per_pixel >> 3;
+	void *adr;
+	int i;
+	char *inbuf;
+	int line_length;
+	u32 color, bgcolor;
 
 	buf = gui_screen_redering_buffer(&priv->sc);
 
-	rgba_blend(priv->fb, priv->chars[(int)c],
-		buf, VIDEO_FONT_HEIGHT, VIDEO_FONT_WIDTH,
-		VIDEO_FONT_WIDTH * x, VIDEO_FONT_HEIGHT * y, 1);
+	inbuf = &video_fontdata[c * VIDEO_FONT_HEIGHT];
+
+	line_length = priv->fb->line_length;
+
+	color = priv->invert ? 0xff000000 : priv->color;
+	bgcolor = priv->invert ? priv->color : 0xff000000;
+
+	for (i = 0; i < VIDEO_FONT_HEIGHT; i++) {
+		uint8_t t = inbuf[i];
+		int j;
+
+		adr = buf + line_length * (y * VIDEO_FONT_HEIGHT + i) + x * VIDEO_FONT_WIDTH * bpp;
+
+		for (j = 0; j < VIDEO_FONT_WIDTH; j++) {
+			if (t & 0x80)
+				set_pixel(priv->fb, adr, color);
+			else
+				set_pixel(priv->fb, adr, bgcolor);
+
+			adr += priv->fb->bits_per_pixel >> 3;
+			t <<= 1;
+		}
+	}
 }
 
-/* FIXME */
-static void blankchar(struct fbc_priv *priv, int x, int y)
+void invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
+		int height);
+
+static void video_invertchar(struct fbc_priv *priv, int x, int y)
 {
 	void *buf;
 
 	buf = gui_screen_redering_buffer(&priv->sc);
 
-	rgba_blend(priv->fb, priv->chars[' '],
-		buf, VIDEO_FONT_HEIGHT, VIDEO_FONT_WIDTH,
-		VIDEO_FONT_WIDTH * x, VIDEO_FONT_HEIGHT * y, 0);
+	invert_area(priv->fb, buf, x * VIDEO_FONT_WIDTH, y * VIDEO_FONT_HEIGHT,
+			VIDEO_FONT_WIDTH, VIDEO_FONT_HEIGHT);
 }
 
 static void printchar(struct fbc_priv *priv, int c)
 {
+	video_invertchar(priv, priv->x, priv->y);
+
 	switch (c) {
 	case '\007': /* bell: ignore */
 		break;
 	case '\b':
 		if (priv->x > 0) {
 			priv->x--;
-			blankchar(priv, priv->x, priv->y);
 		} else if (priv->y > 0) {
 			priv->x = priv->cols;
 			priv->y--;
-			blankchar(priv, priv->x, priv->y);
 		}
 		break;
 	case '\n':
@@ -126,6 +119,10 @@ static void printchar(struct fbc_priv *priv, int c)
 		priv->x = 0;
 		break;
 
+	case '\t':
+		priv->x = (priv->x + 8) & ~0x3;
+		break;
+
 	default:
 		drawchar(priv, priv->x, priv->y, c);
 		screen_blit(&priv->sc);
@@ -150,9 +147,75 @@ static void printchar(struct fbc_priv *priv, int c)
 		priv->y = priv->rows;
 	}
 
+	video_invertchar(priv, priv->x, priv->y);
+
 	return;
 }
 
+static void fbc_parse_csi(struct fbc_priv *priv)
+{
+	int a, b = -1;
+	char *end;
+
+	a = simple_strtoul(priv->csi, &end, 10);
+	if (*end == ';')
+		b = simple_strtoul(end + 1, &end, 10);
+
+	if (*end == 'm' && b == -1) {
+		switch (a) {
+		case 0:
+			priv->color = 0xffffffff;
+			priv->invert = false;
+			break;
+		case 7:
+			priv->invert = true;
+			break;
+		}
+		return;
+	}
+
+	if (*end == 'J' && a == 2 && b == -1) {
+		void *buf = gui_screen_redering_buffer(&priv->sc);
+
+		memset(buf, 0, priv->fb->line_length * priv->fb->yres);
+
+		priv->x = 0;
+		priv->y = 0;
+		video_invertchar(priv, priv->x, priv->y);
+	}
+
+	if (*end == 'm' && a == 1) {
+		switch (b) {
+		case 32:
+			priv->color = get_pixel(priv->fb, 0xff00ff00);
+			break;
+		case 31:
+			priv->color = get_pixel(priv->fb, 0xffff0000);
+			break;
+		case 34:
+			priv->color = get_pixel(priv->fb, 0xff0000ff);
+			break;
+		case 36:
+			priv->color = get_pixel(priv->fb, 0xff54ffff);
+			break;
+		case 37:
+			priv->color = get_pixel(priv->fb, 0xffffffff);
+			break;
+		default:
+			break;
+		}
+		return;
+	}
+
+	if (*end == 'H') {
+		video_invertchar(priv, priv->x, priv->y);
+		priv->x = b - 1;
+		priv->y = a - 1;
+		video_invertchar(priv, priv->x, priv->y);
+		return;
+	}
+}
+
 static void fbc_putc(struct console_device *cdev, char c)
 {
 	struct fbc_priv *priv = container_of(cdev,
@@ -172,10 +235,14 @@ static void fbc_putc(struct console_device *cdev, char c)
 		switch (c) {
 		case '[':
 			priv->state = CSI;
+			priv->csipos = 0;
+			memset(priv->csi, 0, 6);
 			break;
 		}
 		break;
 	case CSI:
+		priv->csi[priv->csipos++] = c;
+
 		switch (c) {
 		case '0':
 		case '1':
@@ -191,6 +258,7 @@ static void fbc_putc(struct console_device *cdev, char c)
 		case ':':
 			break;
 		default:
+			fbc_parse_csi(priv);
 			priv->state = LIT;
 		}
 		break;
@@ -235,7 +303,7 @@ int register_fbconsole(struct fb_info *fb)
 	priv->fb = fb;
 	priv->x = 0;
 	priv->y = 0;
-	init_chars(priv->chars, VIDEO_FONT_CHARS);
+	priv->color = 0xff00ff00;
 
 	cdev = &priv->cdev;
 	cdev->dev = &fb->dev;
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 6465f8e..5f492c8 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -7,7 +7,7 @@
 #include <fs.h>
 #include <malloc.h>
 
-static u32 get_pixel(struct fb_info *info, u32 color)
+u32 get_pixel(struct fb_info *info, u32 color)
 {
 	u32 px;
 	u8 t = (color >> 24) & 0xff;
@@ -128,6 +128,25 @@ static u8 alpha_mux(int s, int d, int a)
 	return (d * a + s * (255 - a)) >> 8;
 }
 
+void invert_area(struct fb_info *info, void *buf, int startx, int starty, int width,
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
 void set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a)
 {
 	u32 px = 0x0;
-- 
2.1.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
