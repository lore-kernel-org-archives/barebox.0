Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEkLB-0005pG-7o
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 20:28:42 +0000
Received: by lbbzr7 with SMTP id zr7so8784615lbb.1
 for <barebox@lists.infradead.org>; Mon, 13 Jul 2015 13:28:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 13 Jul 2015 23:28:09 +0300
Message-Id: <1436819289-9752-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] WIP: fbconsole: very dirty font selection via param_enum
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
 drivers/video/fbconsole.c | 55 +++++++++++++++++++++++++++++++++++++++++------
 include/linux/font.h      |  8 +++++++
 lib/fonts/fonts.c         | 44 +++++++++++++++++++++++++++++++++++++
 3 files changed, 100 insertions(+), 7 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 36fd138..43a73d9 100644
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
 
@@ -270,7 +279,7 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 	struct fb_info *fb = priv->fb;
 	const struct font_desc *font;
 
-	font = find_font("MINI4x6");
+	font = find_font(font_by_param_value(priv->par_font_val));
 	if (!font) {
 		return -ENOENT;
 	}
@@ -296,6 +305,33 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 	return 0;
 }
 
+static int set_font(struct param_d *p, void *vpriv)
+{
+	struct fbc_priv *priv = vpriv;
+	struct console_device *cdev = &priv->cdev;
+
+	if (cdev->f_active & CONSOLE_STDOUT) {
+		struct fb_info *fb = priv->fb;
+		const struct font_desc *font;
+
+		cls(priv);
+
+		font = find_font(font_by_param_value(priv->par_font_val));
+
+		/* FIXME: code duplication */
+		priv->font_width = font->width;
+		priv->font_height = font->height;
+		priv->fontdata = font->data;
+
+		priv->rows = fb->yres / priv->font_height - 1;
+		priv->cols = fb->xres / priv->font_width - 1;
+
+		priv->state = LIT;
+	}
+
+	return 0;
+}
+
 int register_fbconsole(struct fb_info *fb)
 {
 	struct fbc_priv *priv;
@@ -325,6 +361,11 @@ int register_fbconsole(struct fb_info *fb)
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
index 24d6355..4171c5c 100644
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
@@ -26,4 +28,10 @@ extern const struct font_desc *find_font(const char *name);
 /* Max. length for the name of a predefined font */
 #define MAX_FONT_NAME	32
 
+extern struct param_d *add_param_font(struct device_d *dev,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv);
+extern char *font_by_param_value(int value);
+
 #endif /* _VIDEO_FONT_H */
diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index dbd1813..528ee3c 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -61,6 +61,50 @@ const struct font_desc *find_font(const char *name)
 
 EXPORT_SYMBOL(find_font);
 
+static char *font_names;
+
+char *font_by_param_value(int value)
+{
+	return ((char **)font_names)[value];
+}
+
+struct param_d *add_param_font(struct device_d *dev,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv)
+{
+	unsigned int i;
+	int t = num_fonts;
+
+	font_names = xmalloc(sizeof(char *) * t);
+
+	for (i = 0; i < num_fonts; i++)
+		((const char **)font_names)[i] = fonts[i]->name;
+
+	return dev_add_param_enum(dev, "font",
+			set, get, value,
+			(const char **)font_names, num_fonts, priv);
+}
+
 MODULE_AUTHOR("James Simmons <jsimmons@users.sf.net>");
 MODULE_DESCRIPTION("Console Fonts");
 MODULE_LICENSE("GPL");
+
+#include <common.h>
+#include <command.h>
+
+static int do_fonts(int argc, char *argv[])
+{
+	unsigned int i;
+
+	for (i = 0; i < num_fonts; i++)
+		printf("%s\n", fonts[i]->name);
+
+	return COMMAND_SUCCESS;
+}
+
+BAREBOX_CMD_START(fonts)
+	.cmd		= do_fonts,
+	BAREBOX_CMD_DESC("show framebuffer console compiled-in fonts list")
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
