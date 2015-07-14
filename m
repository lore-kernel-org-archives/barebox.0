Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEwxT-0005Ct-Ml
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 09:57:04 +0000
Received: by lbbyj8 with SMTP id yj8so2988721lbb.0
 for <barebox@lists.infradead.org>; Tue, 14 Jul 2015 02:56:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Subject: [RFC v2] WIP: fbconsole: not so dirty font selection via param_enum
Date: Tue, 14 Jul 2015 12:56:34 +0300
Message-Id: <1436867794-15409-1-git-send-email-antonynpavlov@gmail.com>
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
To: barebox@lists.infradead.org

Alas I can't find any tab-complition for param_enum,
so addition 'fonts' command is introduced.

Usage example:
==============

    barebox@barebox sandbox:/ fonts
    VGA8x16
    MINI4x6
    barebox@barebox sandbox:/ fbconsole0.font=MINI4x6
    barebox@barebox sandbox:/ fbconsole0.active=o
    fb0: framebuffer console 160x80 activated
    barebox@barebox sandbox:/ fbconsole0.font=VGA8x16

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/fbconsole.c | 60 +++++++++++++++++++++++++++++++++++++++--------
 include/linux/font.h      | 11 ++++++---
 lib/fonts/fonts.c         | 39 ++++++++++++++++--------------
 3 files changed, 80 insertions(+), 30 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 36fd138..7df89ab 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -20,6 +20,10 @@ struct fbc_priv {
 	struct fb_info *fb;
 
 	struct screen *sc;
+
+	struct param_d *par_font;
+	int par_font_val;
+
 /* FIXME */
 #define VIDEO_FONT_CHARS 256
 	struct image *chars[VIDEO_FONT_CHARS];
@@ -47,6 +51,16 @@ static int fbc_tstc(struct console_device *cdev)
 	return 0;
 }
 
+static void cls(struct fbc_priv *priv)
+{
+	void *buf = gui_screen_render_buffer(priv->sc);
+
+	memset(buf, 0, priv->fb->line_length * priv->fb->yres);
+
+	priv->x = 0;
+	priv->y = 0;
+}
+
 static void drawchar(struct fbc_priv *priv, int x, int y, char c)
 {
 	void *buf;
@@ -173,12 +187,7 @@ static void fbc_parse_csi(struct fbc_priv *priv)
 	}
 
 	if (*end == 'J' && a == 2 && b == -1) {
-		void *buf = gui_screen_render_buffer(priv->sc);
-
-		memset(buf, 0, priv->fb->line_length * priv->fb->yres);
-
-		priv->x = 0;
-		priv->y = 0;
+		cls(priv);
 		video_invertchar(priv, priv->x, priv->y);
 	}
 
@@ -263,14 +272,13 @@ static void fbc_putc(struct console_device *cdev, char c)
 	}
 }
 
-static int fbc_set_active(struct console_device *cdev, unsigned flags)
+/* FIXME: name */
+static int setup_font(struct fbc_priv *priv)
 {
-	struct fbc_priv *priv = container_of(cdev,
-					struct fbc_priv, cdev);
 	struct fb_info *fb = priv->fb;
 	const struct font_desc *font;
 
-	font = find_font("MINI4x6");
+	font = find_font_enum(priv->par_font_val);
 	if (!font) {
 		return -ENOENT;
 	}
@@ -282,6 +290,20 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 	priv->rows = fb->yres / priv->font_height - 1;
 	priv->cols = fb->xres / priv->font_width - 1;
 
+	return 0;
+}
+
+static int fbc_set_active(struct console_device *cdev, unsigned flags)
+{
+	struct fbc_priv *priv = container_of(cdev,
+					struct fbc_priv, cdev);
+	struct fb_info *fb = priv->fb;
+	int ret;
+
+	ret = setup_font(priv);
+	if (ret)
+		return ret;
+
 	priv->sc = fb_create_screen(fb, 0);
 	if (IS_ERR(priv->sc))
 		return PTR_ERR(priv->sc);
@@ -296,6 +318,19 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 	return 0;
 }
 
+static int set_font(struct param_d *p, void *vpriv)
+{
+	struct fbc_priv *priv = vpriv;
+	struct console_device *cdev = &priv->cdev;
+
+	if (cdev->f_active & (CONSOLE_STDOUT | CONSOLE_STDERR)) {
+		cls(priv);
+		setup_font(priv);
+	}
+
+	return 0;
+}
+
 int register_fbconsole(struct fb_info *fb)
 {
 	struct fbc_priv *priv;
@@ -325,6 +360,11 @@ int register_fbconsole(struct fb_info *fb)
 		return ret;
 	}
 
+	priv->par_font_val = 0;
+	priv->par_font = add_param_font(&cdev->class_dev,
+			set_font, NULL,
+			&priv->par_font_val, priv);
+
 	pr_info("registered as %s%d\n", cdev->class_dev.name, cdev->class_dev.id);
 
 	return 0;
diff --git a/include/linux/font.h b/include/linux/font.h
index 24d6355..17693a0 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -11,6 +11,8 @@
 #ifndef _VIDEO_FONT_H
 #define _VIDEO_FONT_H
 
+#include <param.h>
+
 struct font_desc {
 	const char *name;
 	int width, height;
@@ -20,10 +22,13 @@ struct font_desc {
 extern const struct font_desc	font_vga_8x16,
 			font_mini_4x6;
 
-/* Find a font with a specific name */
-extern const struct font_desc *find_font(const char *name);
-
 /* Max. length for the name of a predefined font */
 #define MAX_FONT_NAME	32
 
+extern const struct font_desc *find_font_enum(int n);
+extern struct param_d *add_param_font(struct device_d *dev,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv);
+
 #endif /* _VIDEO_FONT_H */
diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index dbd1813..234885b 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -37,30 +37,35 @@ static const struct font_desc *fonts[] = {
 #error No fonts configured.
 #endif
 
+static char *font_names;
 
-/**
- *	find_font - find a font
- *	@name: string name of a font
- *
- *	Find a specified font with string name @name.
- *
- *	Returns %NULL if no font found, or a pointer to the
- *	specified font.
- *
- */
-const struct font_desc *find_font(const char *name)
+const struct font_desc *find_font_enum(int n)
+{
+	if (n > num_fonts)
+		return NULL;
+
+	return fonts[n];
+}
+
+struct param_d *add_param_font(struct device_d *dev,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv)
 {
 	unsigned int i;
 
-	for (i = 0; i < num_fonts; i++)
-		if (!strncmp(fonts[i]->name, name, MAX_FONT_NAME))
-			  return fonts[i];
+	if (!font_names) {
+		font_names = xmalloc(sizeof(char *) * num_fonts);
 
-	return NULL;
+		for (i = 0; i < num_fonts; i++)
+			((const char **)font_names)[i] = fonts[i]->name;
+	}
+
+	return dev_add_param_enum(dev, "font",
+			set, get, value,
+			(const char **)font_names, num_fonts, priv);
 }
 
-EXPORT_SYMBOL(find_font);
-
 MODULE_AUTHOR("James Simmons <jsimmons@users.sf.net>");
 MODULE_DESCRIPTION("Console Fonts");
 MODULE_LICENSE("GPL");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
