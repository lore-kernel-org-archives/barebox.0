Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zt9wX-0007WE-Tk
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 07:54:19 +0000
Received: by lbjm5 with SMTP id m5so82334053lbj.3
 for <barebox@lists.infradead.org>; Sun, 01 Nov 2015 23:53:55 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Mon,  2 Nov 2015 15:53:38 +0800
Message-Id: <1446450818-19106-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] lib: font: fbconsole: add custom font support
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

this patch enable you to add new char support. with customer char
set(no need to be full char set), font size.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 drivers/video/fbconsole.c   | 39 +++++++++++++++++++--------------------
 include/linux/font.h        | 11 ++++++++++-
 lib/fonts/Kconfig           |  5 +++++
 lib/fonts/Makefile          |  2 ++
 lib/fonts/font_7x14.c       |  1 +
 lib/fonts/font_8x16.c       |  1 +
 lib/fonts/font_custom_16x.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
 lib/fonts/font_mini_4x6.c   |  1 +
 lib/fonts/fonts.c           | 38 +++++++++++++++++++++++++++++++++++---
 9 files changed, 118 insertions(+), 24 deletions(-)
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
index 62b1879..117484e 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -12,20 +12,29 @@
 #define _VIDEO_FONT_H
 
 #include <param.h>
+#include <wchar.h>
 
+struct font_index {
+	wchar_t wc;	/* code of the char. */
+	short index;	/* offset of the char in the bitmap. */
+};
 struct font_desc {
 	const char *name;
 	int width, height;
+	struct font_index *index;
 	const void *data;
+	int num_chars;
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
index b7d4765..7de5c76 100644
--- a/lib/fonts/Makefile
+++ b/lib/fonts/Makefile
@@ -5,7 +5,9 @@ font-objs := fonts.o
 font-objs-$(CONFIG_FONT_8x16)      += font_8x16.o
 font-objs-$(CONFIG_FONT_7x14)      += font_7x14.o
 font-objs-$(CONFIG_FONT_MINI_4x6)  += font_mini_4x6.o
+font-objs-$(CONFIG_FONT_CUSTOM_16X)+= font_custom_16x.o
 
 font-objs += $(font-objs-y)
 
 obj-$(CONFIG_FONTS)         += font.o
+
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
index 0000000..b83387d
--- /dev/null
+++ b/lib/fonts/font_custom_16x.c
@@ -0,0 +1,44 @@
+/*
+ * by Du Huanpeng <u74147@gmail.com>
+ */
+
+#include <linux/font.h>
+#include <common.h>
+
+/* place real font data here or set fontdata_custom_16x points to
+ * the address of font data and also setup the index.
+ */
+
+static const unsigned char fontdata_custom_16x[] = {
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
+};
+
+static struct font_index fontdata_custom_16x_index[] = {
+	{ 0x0000, 0x0000 },
+};
+
+const struct font_desc font_custom_16x = {
+	.name	= "CUSTOM-16x",
+	.width	= 16,
+	.height	= 16,
+	.data	= fontdata_custom_16x,
+	.index	= fontdata_custom_16x_index,
+	.num_chars = ARRAY_SIZE(fontdata_custom_16x_index),
+
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
index 5a9d3f1..0b2e2ee 100644
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
@@ -23,15 +27,19 @@
 static const struct font_desc *fonts[] = {
 #ifdef CONFIG_FONT_8x16
 #undef NO_FONTS
-    &font_vga_8x16,
+	&font_vga_8x16,
 #endif
 #ifdef CONFIG_FONT_7x14
 #undef NO_FONTS
-    &font_7x14,
+	&font_7x14,
 #endif
 #ifdef CONFIG_FONT_MINI_4x6
 #undef NO_FONTS
-    &font_mini_4x6,
+	&font_mini_4x6,
+#endif
+#ifdef CONFIG_FONT_CUSTOM_16X
+#undef NO_FONTS
+	&font_custom_16x,
 #endif
 };
 
@@ -51,6 +59,30 @@ const struct font_desc *find_font_enum(int n)
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
+	} else {
+		/*
+		* FIXME: use binary search instead!
+		*/
+		index = font->num_chars - 1;
+
+		while (index && font->index[index].wc != ch)
+			index--;
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
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
