Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx9ZI-0007xk-8P
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 08:18:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2015 09:18:08 +0100
Message-Id: <1447402688-3852-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fbconsole: register fonts dynamically
To: Barebox List <barebox@lists.infradead.org>

Instead of having a fixed array of fonts register the fonts dynamically.
This allows easier adding of fonts to the tree since only one file per
font has to be added and no other files modified.

Currently we have to register the fonts very early before the first
framebuffer is registered. This is because of our limited
dev_add_param_enum() which wants to know the number of elements when
called, so we can't add elements once after we've called
dev_add_param_enum(). Maybe a dev_add_param_array() has to be created
whithout this limitation, but that's left for a future exercise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/font.h      |  7 +++---
 lib/fonts/font_7x14.c     |  9 ++++++-
 lib/fonts/font_8x16.c     | 10 ++++++--
 lib/fonts/font_mini_4x6.c |  9 ++++++-
 lib/fonts/fonts.c         | 61 +++++++++++++++++++++++++----------------------
 5 files changed, 59 insertions(+), 37 deletions(-)

diff --git a/include/linux/font.h b/include/linux/font.h
index 62b1879..f8b0e94 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -17,12 +17,9 @@ struct font_desc {
 	const char *name;
 	int width, height;
 	const void *data;
+	struct list_head list;
 };
 
-extern const struct font_desc	font_vga_8x16,
-			font_7x14,
-			font_mini_4x6;
-
 /* Max. length for the name of a predefined font */
 #define MAX_FONT_NAME	32
 
@@ -32,4 +29,6 @@ extern struct param_d *add_param_font(struct device_d *dev,
 		int (*get)(struct param_d *p, void *priv),
 		int *value, void *priv);
 
+int font_register(struct font_desc *font);
+
 #endif /* _VIDEO_FONT_H */
diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
index fe99871..384ba39 100644
--- a/lib/fonts/font_7x14.c
+++ b/lib/fonts/font_7x14.c
@@ -3,6 +3,7 @@
 /* by Jurriaan Kalkman 05-2005        */
 /**************************************/
 
+#include <init.h>
 #include <linux/font.h>
 
 #define FONTDATAMAX 3584
@@ -4108,9 +4109,15 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 };
 
 
-const struct font_desc font_7x14 = {
+static struct font_desc font_7x14 = {
 	.name	= "7x14",
 	.width	= 7,
 	.height	= 14,
 	.data	= fontdata_7x14,
 };
+
+static int font_7x14_register(void)
+{
+	return font_register(&font_7x14);
+}
+postcore_initcall(font_7x14_register);
diff --git a/lib/fonts/font_8x16.c b/lib/fonts/font_8x16.c
index 4717ead..c5c14fc 100644
--- a/lib/fonts/font_8x16.c
+++ b/lib/fonts/font_8x16.c
@@ -4,6 +4,7 @@
 /*                                            */
 /**********************************************/
 
+#include <init.h>
 #include <module.h>
 #include <linux/font.h>
 
@@ -4621,10 +4622,15 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 
 };
 
-const struct font_desc font_vga_8x16 = {
+static struct font_desc font_vga_8x16 = {
 	.name	= "VGA8x16",
 	.width	= 8,
 	.height	= 16,
 	.data	= fontdata_8x16,
 };
-EXPORT_SYMBOL(font_vga_8x16);
+
+static int font_vga_8x16_register(void)
+{
+	return font_register(&font_vga_8x16);
+}
+postcore_initcall(font_vga_8x16_register);
diff --git a/lib/fonts/font_mini_4x6.c b/lib/fonts/font_mini_4x6.c
index 3ecb4fb..4a1de13 100644
--- a/lib/fonts/font_mini_4x6.c
+++ b/lib/fonts/font_mini_4x6.c
@@ -39,6 +39,7 @@ __END__;
    MSBit to LSBit = left to right.
  */
 
+#include <init.h>
 #include <linux/font.h>
 
 #define FONTDATAMAX 1536
@@ -2147,9 +2148,15 @@ static const unsigned char fontdata_mini_4x6[FONTDATAMAX] = {
 	/*}*/
 };
 
-const struct font_desc font_mini_4x6 = {
+static struct font_desc font_mini_4x6 = {
 	.name	= "MINI4x6",
 	.width	= 4,
 	.height	= 6,
 	.data	= fontdata_mini_4x6,
 };
+
+static int font_mini_4x6_register(void)
+{
+	return font_register(&font_mini_4x6);
+}
+postcore_initcall(font_mini_4x6_register);
diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index 39efb61..d59d688 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -18,37 +18,32 @@
 #include <linux/string.h>
 #include <linux/font.h>
 
-#define NO_FONTS
-
-static const struct font_desc *fonts[] = {
-#ifdef CONFIG_FONT_8x16
-#undef NO_FONTS
-	&font_vga_8x16,
-#endif
-#ifdef CONFIG_FONT_7x14
-#undef NO_FONTS
-	&font_7x14,
-#endif
-#ifdef CONFIG_FONT_MINI_4x6
-#undef NO_FONTS
-	&font_mini_4x6,
-#endif
-};
-
-#define num_fonts ARRAY_SIZE(fonts)
-
-#ifdef NO_FONTS
-#error No fonts configured.
-#endif
-
 static char *font_names;
 
+static LIST_HEAD(fonts_list);
+
+int font_register(struct font_desc *font)
+{
+	if (font_names)
+		return -EBUSY;
+
+	list_add_tail(&font->list, &fonts_list);
+
+	return 0;
+}
+
 const struct font_desc *find_font_enum(int n)
 {
-	if (n > num_fonts)
-		return NULL;
+	struct font_desc *f;
+	int i = 0;
+
+	list_for_each_entry(f, &fonts_list, list) {
+		if (i == n)
+			return f;
+		i++;
+	}
 
-	return fonts[n];
+	return NULL;
 }
 
 struct param_d *add_param_font(struct device_d *dev,
@@ -56,13 +51,21 @@ struct param_d *add_param_font(struct device_d *dev,
 		int (*get)(struct param_d *p, void *priv),
 		int *value, void *priv)
 {
-	unsigned int i;
+	struct font_desc *f;
+	int num_fonts = 0;
+
+	list_for_each_entry(f, &fonts_list, list)
+		num_fonts++;
 
 	if (!font_names) {
+		int i = 0;
+
 		font_names = xmalloc(sizeof(char *) * num_fonts);
 
-		for (i = 0; i < num_fonts; i++)
-			((const char **)font_names)[i] = fonts[i]->name;
+		list_for_each_entry(f, &fonts_list, list) {
+			((const char **)font_names)[i] = f->name;
+			i++;
+		}
 	}
 
 	return dev_add_param_enum(dev, "font",
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
