Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zpsim-0001E9-5J
 for barebox@lists.infradead.org; Sat, 24 Oct 2015 06:54:34 +0000
Received: by lfbn126 with SMTP id n126so69244221lfb.2
 for <barebox@lists.infradead.org>; Fri, 23 Oct 2015 23:54:08 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Sat, 24 Oct 2015 10:02:55 +0300
Message-Id: <1445670175-23909-1-git-send-email-u74147@gmail.com>
In-Reply-To: <u74147@gmail.com>
References: <u74147@gmail.com>
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
Subject: [PATCH] lib:font:fbconsole: add custom font support for review
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 drivers/video/fbconsole.c   |  39 +++++----
 include/linux/font.h        |  10 ++-
 lib/fonts/Kconfig           |   5 ++
 lib/fonts/Makefile          |   1 +
 lib/fonts/font_7x14.c       |   1 +
 lib/fonts/font_8x16.c       |   1 +
 lib/fonts/font_custom_16x.c | 204 ++++++++++++++++++++++++++++++++++++++++++++
 lib/fonts/font_mini_4x6.c   |   1 +
 lib/fonts/fonts.c           |  33 +++++++
 9 files changed, 274 insertions(+), 21 deletions(-)
 create mode 100644 lib/fonts/font_custom_16x.c

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b10503e..dad45c3 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -22,8 +22,8 @@ struct fbc_priv {
 	struct param_d *par_font;
 	int par_font_val;
 
-	int font_width, font_height;
-	const u8 *fontdata;
+	struct font_desc font;
+
 	unsigned int cols, rows;
 	unsigned int x, y; /* cursor position */
 
@@ -84,7 +84,7 @@ static struct rgb colors[] = {
 	{ 255, 255, 255 },
 };
 
-static void drawchar(struct fbc_priv *priv, int x, int y, char c)
+static void drawchar(struct fbc_priv *priv, int x, int y, int c)
 {
 	void *buf;
 	int bpp = priv->fb->bits_per_pixel >> 3;
@@ -97,7 +97,8 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
 
 	buf = gui_screen_render_buffer(priv->sc);
 
-	inbuf = &priv->fontdata[c * priv->font_height];
+	i = find_font_index(&priv->font, c);
+	inbuf = priv->font.data + i;
 
 	line_length = priv->fb->line_length;
 
@@ -113,13 +114,13 @@ static void drawchar(struct fbc_priv *priv, int x, int y, char c)
 	rgb = &colors[bgcolor];
 	bgcolor = gu_rgb_to_pixel(priv->fb, rgb->r, rgb->g, rgb->b, 0xff);
 
-	for (i = 0; i < priv->font_height; i++) {
+	for (i = 0; i < priv->font.height; i++) {
 		uint8_t t = inbuf[i];
 		int j;
 
-		adr = buf + line_length * (y * priv->font_height + i) + x * priv->font_width * bpp;
+		adr = buf + line_length * (y * priv->font.height + i) + x * priv->font.width * bpp;
 
-		for (j = 0; j < priv->font_width; j++) {
+		for (j = 0; j < priv->font.width; j++) {
 			if (t & 0x80)
 				gu_set_pixel(priv->fb, adr, color);
 			else
@@ -137,10 +138,10 @@ static void video_invertchar(struct fbc_priv *priv, int x, int y)
 
 	buf = gui_screen_render_buffer(priv->sc);
 
-	gu_invert_area(priv->fb, buf, x * priv->font_width, y * priv->font_height,
-			priv->font_width, priv->font_height);
-	gu_screen_blit_area(priv->sc, x * priv->font_width, y * priv->font_height,
-			priv->font_width, priv->font_height);
+	gu_invert_area(priv->fb, buf, x * priv->font.width, y * priv->font.height,
+			priv->font.width, priv->font.height);
+	gu_screen_blit_area(priv->sc, x * priv->font.width, y * priv->font.height,
+			priv->font.width, priv->font.height);
 }
 
 static void printchar(struct fbc_priv *priv, int c)
@@ -174,9 +175,9 @@ static void printchar(struct fbc_priv *priv, int c)
 	default:
 		drawchar(priv, priv->x, priv->y, c);
 
-		gu_screen_blit_area(priv->sc, priv->x * priv->font_width,
-				priv->y * priv->font_height,
-				priv->font_width, priv->font_height);
+		gu_screen_blit_area(priv->sc, priv->x * priv->font.width,
+				priv->y * priv->font.height,
+				priv->font.width, priv->font.height);
 
 		priv->x++;
 		if (priv->x > priv->cols) {
@@ -188,7 +189,7 @@ static void printchar(struct fbc_priv *priv, int c)
 	if (priv->y > priv->rows) {
 		void *buf;
 		u32 line_length = priv->fb->line_length;
-		int line_height = line_length * priv->font_height;
+		int line_height = line_length * priv->font.height;
 
 		buf = gui_screen_render_buffer(priv->sc);
 
@@ -355,12 +356,10 @@ static int setup_font(struct fbc_priv *priv)
 		return -ENOENT;
 	}
 
-	priv->font_width = font->width;
-	priv->font_height = font->height;
-	priv->fontdata = font->data;
+	priv->font = *font;
 
-	priv->rows = fb->yres / priv->font_height - 1;
-	priv->cols = fb->xres / priv->font_width - 1;
+	priv->rows = fb->yres / priv->font.height - 1;
+	priv->cols = fb->xres / priv->font.width - 1;
 
 	return 0;
 }
diff --git a/include/linux/font.h b/include/linux/font.h
index 62b1879..14af0d9 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -12,20 +12,28 @@
 #define _VIDEO_FONT_H
 
 #include <param.h>
+#include <wchar.h>
 
+struct font_index {
+	wchar_t wc;
+	short index;
+};
 struct font_desc {
 	const char *name;
 	int width, height;
+	struct font_index *index;
 	const void *data;
 };
 
 extern const struct font_desc	font_vga_8x16,
 			font_7x14,
-			font_mini_4x6;
+			font_mini_4x6,
+			font_custom_16x;
 
 /* Max. length for the name of a predefined font */
 #define MAX_FONT_NAME	32
 
+extern int find_font_index(struct font_desc *font, int ch);
 extern const struct font_desc *find_font_enum(int n);
 extern struct param_d *add_param_font(struct device_d *dev,
 		int (*set)(struct param_d *p, void *priv),
diff --git a/lib/fonts/Kconfig b/lib/fonts/Kconfig
index 715d5e5..d23b283 100644
--- a/lib/fonts/Kconfig
+++ b/lib/fonts/Kconfig
@@ -20,6 +20,11 @@ config FONT_7x14
 config FONT_MINI_4x6
 	bool "Mini 4x6 font"
 
+config FONT_CUSTOM_16X
+	bool "Custom 16x16 font"
+	help
+	  This font is useful for Chinese and other non ascii chars.
+
 config FONT_AUTOSELECT
 	def_bool y
 	depends on !FONT_MINI_4x6
diff --git a/lib/fonts/Makefile b/lib/fonts/Makefile
index b7d4765..98245b3 100644
--- a/lib/fonts/Makefile
+++ b/lib/fonts/Makefile
@@ -5,6 +5,7 @@ font-objs := fonts.o
 font-objs-$(CONFIG_FONT_8x16)      += font_8x16.o
 font-objs-$(CONFIG_FONT_7x14)      += font_7x14.o
 font-objs-$(CONFIG_FONT_MINI_4x6)  += font_mini_4x6.o
+font-objs-$(CONFIG_FONT_CUSTOM_16X)+= font_custom_16x.o
 
 font-objs += $(font-objs-y)
 
diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
index fe99871..60cb57e 100644
--- a/lib/fonts/font_7x14.c
+++ b/lib/fonts/font_7x14.c
@@ -4113,4 +4113,5 @@ const struct font_desc font_7x14 = {
 	.width	= 7,
 	.height	= 14,
 	.data	= fontdata_7x14,
+	.index	= NULL,
 };
diff --git a/lib/fonts/font_8x16.c b/lib/fonts/font_8x16.c
index 4717ead..0ba2921 100644
--- a/lib/fonts/font_8x16.c
+++ b/lib/fonts/font_8x16.c
@@ -4626,5 +4626,6 @@ const struct font_desc font_vga_8x16 = {
 	.width	= 8,
 	.height	= 16,
 	.data	= fontdata_8x16,
+	.index	= NULL,
 };
 EXPORT_SYMBOL(font_vga_8x16);
diff --git a/lib/fonts/font_custom_16x.c b/lib/fonts/font_custom_16x.c
new file mode 100644
index 0000000..7ad5a78
--- /dev/null
+++ b/lib/fonts/font_custom_16x.c
@@ -0,0 +1,204 @@
+/* we have only ten chars, add more if needed.
+ * the first char alway means, not supported char.
+ *
+ * Du Huanpeng <u74147@gmail.com>
+ *
+ */
+
+#include <linux/font.h>
+
+#define FONTDATAMAX 320
+
+static const unsigned char fontdata_custom_16x[FONTDATAMAX] = {
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0x80, 0x01,	/*O              O*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+
+	0x00, 0x00,	/*________________*/
+	0x0F, 0x7E,	/*____OOOO_OOOOOO_*/
+	0xE9, 0x04,	/*OOO_O__O_____O__*/
+	0xA9, 0x04,	/*O_O_O__O_____O__*/
+	0xAA, 0x04,	/*O_O_O_O______O__*/
+	0xAA, 0x74,	/*O_O_O_O__OOO_O__*/
+	0xAC, 0x54,	/*O_O_OO___O_O_O__*/
+	0xAA, 0x54,	/*O_O_O_O__O_O_O__*/
+	0xAA, 0x54,	/*O_O_O_O__O_O_O__*/
+	0xA9, 0x54,	/*O_O_O__O_O_O_O__*/
+	0xE9, 0x74,	/*OOO_O__O_OOO_O__*/
+	0xAD, 0x54,	/*O_O_OO_O_O_O_O__*/
+	0x0A, 0x04,	/*____O_O______O__*/
+	0x08, 0x04,	/*____O________O__*/
+	0x08, 0x14,	/*____O______O_O__*/
+	0x08, 0x08,	/*____O_______O___*/
+
+	0x00, 0x04,	/*_____________O__*/
+	0x7D, 0xFE,	/*_OOOOO_OOOOOOOO_*/
+	0x44, 0x08,	/*_O___O______O___*/
+	0x48, 0x08,	/*_O__O_______O___*/
+	0x49, 0xE8,	/*_O__O__OOOO_O___*/
+	0x51, 0x28,	/*_O_O___O__O_O___*/
+	0x49, 0x28,	/*_O__O__O__O_O___*/
+	0x49, 0x28,	/*_O__O__O__O_O___*/
+	0x45, 0x28,	/*_O___O_O__O_O___*/
+	0x45, 0x28,	/*_O___O_O__O_O___*/
+	0x45, 0xE8,	/*_O___O_OOOO_O___*/
+	0x69, 0x28,	/*_OO_O__O__O_O___*/
+	0x50, 0x08,	/*_O_O________O___*/
+	0x40, 0x08,	/*_O__________O___*/
+	0x40, 0x28,	/*_O________O_O___*/
+	0x40, 0x10,	/*_O_________O____*/
+
+	0x20, 0x40,	/*__O______O______*/
+	0x20, 0x40,	/*__O______O______*/
+	0x20, 0x90,	/*__O_____O__O____*/
+	0x21, 0x08,	/*__O____O____O___*/
+	0x23, 0xFC,	/*__O___OOOOOOOO__*/
+	0xF8, 0x04,	/*OOOOO________O__*/
+	0x21, 0x00,	/*__O____O________*/
+	0x21, 0xF8,	/*__O____OOOOOO___*/
+	0x22, 0x40,	/*__O___O__O______*/
+	0x20, 0x44,	/*__O______O___O__*/
+	0x27, 0xFE,	/*__O__OOOOOOOOOO_*/
+	0x38, 0x40,	/*__OOO____O______*/
+	0xE0, 0xA0,	/*OOO_____O_O_____*/
+	0x40, 0x90,	/*_O______O__O____*/
+	0x01, 0x0E,	/*_______O____OOO_*/
+	0x06, 0x04,	/*_____OO______O__*/
+
+	0x20, 0x40,	/*__O______O______*/
+	0x20, 0x40,	/*__O______O______*/
+	0x20, 0x90,	/*__O_____O__O____*/
+	0x21, 0x08,	/*__O____O____O___*/
+	0xFB, 0xFC,	/*OOOOO_OOOOOOOO__*/
+	0x20, 0x04,	/*__O__________O__*/
+	0x21, 0x00,	/*__O____O________*/
+	0x21, 0xF8,	/*__O____OOOOOO___*/
+	0x2A, 0x40,	/*__O_O_O__O______*/
+	0x30, 0x44,	/*__OO_____O___O__*/
+	0xE7, 0xFE,	/*OOO__OOOOOOOOOO_*/
+	0x20, 0x40,	/*__O______O______*/
+	0x20, 0xA0,	/*__O_____O_O_____*/
+	0x20, 0x90,	/*__O_____O__O____*/
+	0xA1, 0x0E,	/*O_O____O____OOO_*/
+	0x46, 0x04,	/*_O___OO______O__*/
+
+	0x00, 0x90,	/*________O__O____*/
+	0x00, 0x90,	/*________O__O____*/
+	0x00, 0x90,	/*________O__O____*/
+	0x7B, 0xFE,	/*_OOOO_OOOOOOOOO_*/
+	0x48, 0x90,	/*_O__O___O__O____*/
+	0x48, 0x90,	/*_O__O___O__O____*/
+	0x48, 0x00,	/*_O__O___________*/
+	0x49, 0x08,	/*_O__O__O____O___*/
+	0x48, 0x90,	/*_O__O___O__O____*/
+	0x48, 0x90,	/*_O__O___O__O____*/
+	0x78, 0x60,	/*_OOOO____OO_____*/
+	0x40, 0x40,	/*_O_______O______*/
+	0x00, 0xA0,	/*________O_O_____*/
+	0x01, 0x10,	/*_______O___O____*/
+	0x02, 0x0E,	/*______O_____OOO_*/
+	0x04, 0x04,	/*_____O_______O__*/
+
+	0x00, 0x40,	/*_________O______*/
+	0x00, 0x40,	/*_________O______*/
+	0x00, 0x90,	/*________O__O____*/
+	0x79, 0x08,	/*_OOOO__O____O___*/
+	0x4B, 0xFC,	/*_O__O_OOOOOOOO__*/
+	0x48, 0x04,	/*_O__O________O__*/
+	0x49, 0x00,	/*_O__O__O________*/
+	0x49, 0xF8,	/*_O__O__OOOOOO___*/
+	0x4A, 0x40,	/*_O__O_O__O______*/
+	0x48, 0x44,	/*_O__O____O___O__*/
+	0x4F, 0xFE,	/*_O__OOOOOOOOOOO_*/
+	0x78, 0x40,	/*_OOOO____O______*/
+	0x40, 0xA0,	/*_O______O_O_____*/
+	0x00, 0x90,	/*________O__O____*/
+	0x01, 0x0E,	/*_______O____OOO_*/
+	0x06, 0x04,	/*_____OO______O__*/
+
+	0x02, 0x00,	/*______O_________*/
+	0x01, 0x04,	/*_______O_____O__*/
+	0xFF, 0xFE,	/*OOOOOOOOOOOOOOO_*/
+	0x00, 0x00,	/*________________*/
+	0x00, 0x10,	/*___________O____*/
+	0x1F, 0xF8,	/*___OOOOOOOOOO___*/
+	0x10, 0x10,	/*___O_______O____*/
+	0x10, 0x10,	/*___O_______O____*/
+	0x1F, 0xF0,	/*___OOOOOOOOO____*/
+	0x03, 0x08,	/*______OO____O___*/
+	0x04, 0x90,	/*_____O__O__O____*/
+	0x0C, 0x60,	/*____OO___OO_____*/
+	0x14, 0x30,	/*___O_O____OO____*/
+	0x25, 0x0E,	/*__O__O_O____OOO_*/
+	0xC6, 0x04,	/*OO___OO______O__*/
+	0x04, 0x00,	/*_____O__________*/
+
+	0x10, 0x20,	/*___O______O_____*/
+	0x10, 0x20,	/*___O______O_____*/
+	0x21, 0x24,	/*__O____O__O__O__*/
+	0x7D, 0x24,	/*_OOOOO_O__O__O__*/
+	0x45, 0xFC,	/*_O___O_OOOOOOO__*/
+	0x44, 0x00,	/*_O___O__________*/
+	0x45, 0xFC,	/*_O___O_OOOOOOO__*/
+	0x7C, 0x00,	/*_OOOOO__________*/
+	0x45, 0xFC,	/*_O___O_OOOOOOO__*/
+	0x45, 0x04,	/*_O___O_O_____O__*/
+	0x45, 0xFC,	/*_O___O_OOOOOOO__*/
+	0x44, 0x00,	/*_O___O__________*/
+	0x7C, 0x84,	/*_OOOOO__O____O__*/
+	0x44, 0x48,	/*_O___O___O__O___*/
+	0x01, 0xFE,	/*_______OOOOOOOO_*/
+	0x00, 0x00,	/*________________*/
+
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
+};
+
+const struct font_index fontdata_custom_16x_index[] = {
+	{ 0x0000, 0x0000 },
+	{ 0x54C0, 0x00E0 },
+	{ 0x54CE, 0x00A0 },
+	{ 0x554A, 0x0020 },
+	{ 0x57C3, 0x0060 },
+	{ 0x5509, 0x00C0 },
+	{ 0x6328, 0x0080 },
+	{ 0x769A, 0x0100 },
+	{ 0x963F, 0x0040 },
+	{ 0xFFFF, 0x0120 },
+};
+
+const struct font_desc font_custom_16x = {
+	.name	= "CUSTOM-16x",
+	.width	= 16,
+	.height	= 16,
+	.data	= fontdata_custom_16x,
+	.index	= NULL,
+};
+
diff --git a/lib/fonts/font_mini_4x6.c b/lib/fonts/font_mini_4x6.c
index 3ecb4fb..733d20a 100644
--- a/lib/fonts/font_mini_4x6.c
+++ b/lib/fonts/font_mini_4x6.c
@@ -2152,4 +2152,5 @@ const struct font_desc font_mini_4x6 = {
 	.width	= 4,
 	.height	= 6,
 	.data	= fontdata_mini_4x6,
+	.index	= NULL,
 };
diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index 5a9d3f1..8d4df71 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -7,6 +7,10 @@
  *	2001 - Documented with DocBook
  *	- Brad Douglas <brad@neruo.com>
  *
+ *	2015 - Add custom font supports
+ *	- Du Huanpeng <u74147@gmail.com>
+ *
+ *
  * This file is subject to the terms and conditions of the GNU General Public
  * License.  See the file COPYING in the main directory of this archive
  * for more details.
@@ -33,6 +37,10 @@ static const struct font_desc *fonts[] = {
 #undef NO_FONTS
     &font_mini_4x6,
 #endif
+#ifdef CONFIG_FONT_CUSTOM_16X
+#undef NO_FONTS
+    &font_custom_16x,
+#endif
 };
 
 #define num_fonts ARRAY_SIZE(fonts)
@@ -51,6 +59,31 @@ const struct font_desc *find_font_enum(int n)
 	return fonts[n];
 }
 
+int find_font_index(struct font_desc *font, int ch)
+{
+	int index;
+	if (font->index == NULL) {
+		index  = font->width + 7;
+		index /= 8;
+		index *= font->height;
+		index *= ch;
+	}
+	else {
+		/*
+		* FIXME:
+		* 1. use binary search instead!
+		* 2. how many chars in this font?
+		*/
+		index = 10 - 1;
+		while (index && font->index[index].wc != ch) index--;
+
+		/* return 0 if not found. */
+		index = font->index->index;
+	}
+
+	return index;
+}
+
 struct param_d *add_param_font(struct device_d *dev,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
