Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-x22a.google.com ([2607:f8b0:4003:c01::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvkB7-00066Q-6v
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 11:00:02 +0000
Received: by obbza9 with SMTP id za9so137388851obb.1
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 02:59:40 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Mon,  9 Nov 2015 02:59:09 -0800
Message-Id: <1447066749-14155-1-git-send-email-u74147@gmail.com>
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

add custom font and charset support. useful for
non ascii chars, e.g. Chinese and others.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 drivers/video/fbconsole.c   |  5 +++--
 include/linux/font.h        | 11 ++++++++++-
 lib/fonts/Kconfig           |  5 +++++
 lib/fonts/Makefile          |  1 +
 lib/fonts/font_7x14.c       |  1 +
 lib/fonts/font_8x16.c       |  1 +
 lib/fonts/font_custom_16x.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
 lib/fonts/font_mini_4x6.c   |  1 +
 lib/fonts/fonts.c           | 32 ++++++++++++++++++++++++++++++++
 9 files changed, 98 insertions(+), 3 deletions(-)
 create mode 100644 lib/fonts/font_custom_16x.c

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 60f3c48..7fd4047 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
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
 
-	inbuf = &priv->font->data[c * priv->font->height];
+	i = find_font_index(priv->font, c);
+	inbuf = priv->font->data + i;
 
 	line_length = priv->fb->line_length;
 
diff --git a/include/linux/font.h b/include/linux/font.h
index 62b1879..d7fb415 100644
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
 
+extern int find_font_index(const struct font_desc *font, int ch);
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
index 0000000..103dbe8
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
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
+	0x80, 0x01,	/*O______________O*/
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
index 39efb61..6bc2af1 100644
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
+	&font_custom_16x,
+#endif
 };
 
 #define num_fonts ARRAY_SIZE(fonts)
@@ -51,6 +59,30 @@ const struct font_desc *find_font_enum(int n)
 	return fonts[n];
 }
 
+int find_font_index(const struct font_desc *font, int ch)
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
