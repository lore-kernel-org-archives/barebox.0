Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGoQy-0006jm-1y
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 10:01:38 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A73B8FFB56E
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 12:07:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 11:59:00 +0200
Message-Id: <1348653544-27095-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348653544-27095-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120926095650.GG31983@game.jcrosoft.org>
 <1348653544-27095-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/6] gui: move gui file to include/gui and lib/gui
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig                   |   23 +++++++++++++--------
 commands/splash.c                  |    4 ++--
 drivers/video/sdl.c                |    2 +-
 include/{ => gui}/graphic_utils.h  |    0
 include/gui/image.h                |   20 ++++++++++++++++++
 include/{ => gui}/image_renderer.h |    9 +--------
 lib/Kconfig                        |   36 +--------------------------------
 lib/Makefile                       |    6 +-----
 lib/gui/Kconfig                    |   39 ++++++++++++++++++++++++++++++++++++
 lib/gui/Makefile                   |    5 +++++
 lib/{ => gui}/bmp.c                |    4 ++--
 lib/{ => gui}/bmp_layout.h         |    0
 lib/{ => gui}/graphic_utils.c      |    2 +-
 lib/{ => gui}/image_renderer.c     |    2 +-
 lib/{ => gui}/lodepng.c            |    0
 lib/{ => gui}/lodepng.h            |    0
 lib/{ => gui}/picopng.c            |    0
 lib/{ => gui}/picopng.h            |    0
 lib/{ => gui}/png.c                |    4 ++--
 lib/{ => gui}/png.h                |    0
 lib/{ => gui}/png_lode.c           |    4 ++--
 lib/{ => gui}/png_pico.c           |    4 ++--
 22 files changed, 95 insertions(+), 69 deletions(-)
 rename include/{ => gui}/graphic_utils.h (100%)
 create mode 100644 include/gui/image.h
 rename include/{ => gui}/image_renderer.h (94%)
 create mode 100644 lib/gui/Kconfig
 create mode 100644 lib/gui/Makefile
 rename lib/{ => gui}/bmp.c (97%)
 rename lib/{ => gui}/bmp_layout.h (100%)
 rename lib/{ => gui}/graphic_utils.c (99%)
 rename lib/{ => gui}/image_renderer.c (98%)
 rename lib/{ => gui}/lodepng.c (100%)
 rename lib/{ => gui}/lodepng.h (100%)
 rename lib/{ => gui}/picopng.c (100%)
 rename lib/{ => gui}/picopng.h (100%)
 rename lib/{ => gui}/png.c (96%)
 rename lib/{ => gui}/png.h (100%)
 rename lib/{ => gui}/png_lode.c (96%)
 rename lib/{ => gui}/png_pico.c (96%)

diff --git a/commands/Kconfig b/commands/Kconfig
index 930a9b1..17fa6c9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -486,6 +486,21 @@ config CMD_MTEST_ALTERNATIVE
 
 endmenu
 
+menu "video command                  "
+
+if VIDEO
+
+config CMD_SPLASH
+	bool
+	select IMAGE_RENDERER
+	prompt "splash"
+	help
+	  show bmp files on framebuffer devices
+
+endif
+
+endmenu
+
 config CMD_TIMEOUT
 	tristate
 	prompt "timeout"
@@ -549,14 +564,6 @@ config CMD_LSMOD
 	depends on MODULES
 	prompt "lsmod"
 
-config CMD_SPLASH
-	bool
-	depends on VIDEO
-	select IMAGE_RENDERER
-	prompt "splash"
-	help
-	  show bmp files on framebuffer devices
-
 config CMD_GPIO
 	bool
 	depends on GENERIC_GPIO
diff --git a/commands/splash.c b/commands/splash.c
index f40e3e1..615b1cb 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -7,8 +7,8 @@
 #include <getopt.h>
 #include <fcntl.h>
 #include <fb.h>
-#include <image_renderer.h>
-#include <graphic_utils.h>
+#include <gui/image_renderer.h>
+#include <gui/graphic_utils.h>
 
 static int do_splash(int argc, char *argv[])
 {
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index ed083d7..d50aed9 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -11,7 +11,7 @@
 #include <mach/linux.h>
 #include <fb.h>
 #include <errno.h>
-#include <graphic_utils.h>
+#include <gui/graphic_utils.h>
 
 static void sdlfb_enable(struct fb_info *info)
 {
diff --git a/include/graphic_utils.h b/include/gui/graphic_utils.h
similarity index 100%
rename from include/graphic_utils.h
rename to include/gui/graphic_utils.h
diff --git a/include/gui/image.h b/include/gui/image.h
new file mode 100644
index 0000000..ea423b2
--- /dev/null
+++ b/include/gui/image.h
@@ -0,0 +1,20 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __GUI_IMAGE_H__
+#define __GUI_IMAGE_H__
+
+struct image_renderer;
+
+struct image {
+	void *data;
+	struct image_renderer *ir;
+	int height;
+	int width;
+	int bits_per_pixel;
+};
+
+#endif /* __IMAGE_RENDERER_H__ */
diff --git a/include/image_renderer.h b/include/gui/image_renderer.h
similarity index 94%
rename from include/image_renderer.h
rename to include/gui/image_renderer.h
index 0b686e1..5ee9969 100644
--- a/include/image_renderer.h
+++ b/include/gui/image_renderer.h
@@ -12,14 +12,7 @@
 #include <errno.h>
 #include <linux/err.h>
 #include <fb.h>
-
-struct image {
-	void *data;
-	struct image_renderer *ir;
-	int height;
-	int width;
-	int bits_per_pixel;
-};
+#include <gui/image.h>
 
 struct image_renderer {
 	enum filetype type;
diff --git a/lib/Kconfig b/lib/Kconfig
index 8b73733..9882d2d 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -38,40 +38,6 @@ config BITREV
 config QSORT
 	bool
 
-config IMAGE_RENDERER
-	bool
-	depends on VIDEO
-	select FILETYPE
-
-if IMAGE_RENDERER
-
-config BMP
-	bool "bmp"
-
-config PNG
-	bool "png"
-	select ZLIB
-
-if PNG
-
-choice
-	prompt "PNG Lib"
-
-config LODEPNG
-	bool "lodePNG"
-	help
-	  This PNG library supports most PNG formats.
-
-config PICOPNG
-	bool "picoPNG"
-	help
-	  This PNG library only supports RGBA PNG8 but is much smaller
-	  in binary size than lodepng.
-
-endchoice
-
-endif
-
-endif
+source lib/gui/Kconfig
 
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 7bce0e5..41e6a0f 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -34,8 +34,4 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
-obj-$(CONFIG_BMP)	+= bmp.o
-obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
-obj-$(CONFIG_PNG)	+= png.o
-obj-$(CONFIG_LODEPNG)	+= png_lode.o lodepng.o
-obj-$(CONFIG_PICOPNG)	+= png_pico.o picopng.o
+obj-y			+= gui/
diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
new file mode 100644
index 0000000..8fd12fb
--- /dev/null
+++ b/lib/gui/Kconfig
@@ -0,0 +1,39 @@
+menu "Library gui routines           "
+
+config IMAGE_RENDERER
+	bool
+	depends on VIDEO
+	select FILETYPE
+
+if IMAGE_RENDERER
+
+config BMP
+	bool "bmp"
+
+config PNG
+	bool "png"
+	select ZLIB
+
+if PNG
+
+choice
+	prompt "PNG Lib"
+
+config LODEPNG
+	bool "lodePNG"
+	help
+	  This PNG library supports most PNG formats.
+
+config PICOPNG
+	bool "picoPNG"
+	help
+	  This PNG library only supports RGBA PNG8 but is much smaller
+	  in binary size than lodepng.
+
+endchoice
+
+endif
+
+endif
+
+endmenu
diff --git a/lib/gui/Makefile b/lib/gui/Makefile
new file mode 100644
index 0000000..d4b26c4
--- /dev/null
+++ b/lib/gui/Makefile
@@ -0,0 +1,5 @@
+obj-$(CONFIG_BMP)	+= bmp.o
+obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
+obj-$(CONFIG_PNG)	+= png.o
+obj-$(CONFIG_LODEPNG)	+= png_lode.o lodepng.o
+obj-$(CONFIG_PICOPNG)	+= png_pico.o picopng.o
diff --git a/lib/bmp.c b/lib/gui/bmp.c
similarity index 97%
rename from lib/bmp.c
rename to lib/gui/bmp.c
index f5c1961..86591ed 100644
--- a/lib/bmp.c
+++ b/lib/gui/bmp.c
@@ -4,9 +4,9 @@
 #include <fb.h>
 #include "bmp_layout.h"
 #include <asm/byteorder.h>
-#include <graphic_utils.h>
+#include <gui/graphic_utils.h>
 #include <init.h>
-#include <image_renderer.h>
+#include <gui/image_renderer.h>
 
 struct image *bmp_open(char *inbuf, int insize)
 {
diff --git a/lib/bmp_layout.h b/lib/gui/bmp_layout.h
similarity index 100%
rename from lib/bmp_layout.h
rename to lib/gui/bmp_layout.h
diff --git a/lib/graphic_utils.c b/lib/gui/graphic_utils.c
similarity index 99%
rename from lib/graphic_utils.c
rename to lib/gui/graphic_utils.c
index a435bdd..bf42103 100644
--- a/lib/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <fb.h>
-#include <graphic_utils.h>
+#include <gui/graphic_utils.h>
 
 static u32 get_pixel(struct fb_info *info, u32 color)
 {
diff --git a/lib/image_renderer.c b/lib/gui/image_renderer.c
similarity index 98%
rename from lib/image_renderer.c
rename to lib/gui/image_renderer.c
index fff35bd..99e4335 100644
--- a/lib/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -6,7 +6,7 @@
 
 #include <common.h>
 #include <fb.h>
-#include <image_renderer.h>
+#include <gui/image_renderer.h>
 #include <errno.h>
 #include <fs.h>
 #include <malloc.h>
diff --git a/lib/lodepng.c b/lib/gui/lodepng.c
similarity index 100%
rename from lib/lodepng.c
rename to lib/gui/lodepng.c
diff --git a/lib/lodepng.h b/lib/gui/lodepng.h
similarity index 100%
rename from lib/lodepng.h
rename to lib/gui/lodepng.h
diff --git a/lib/picopng.c b/lib/gui/picopng.c
similarity index 100%
rename from lib/picopng.c
rename to lib/gui/picopng.c
diff --git a/lib/picopng.h b/lib/gui/picopng.h
similarity index 100%
rename from lib/picopng.h
rename to lib/gui/picopng.h
diff --git a/lib/png.c b/lib/gui/png.c
similarity index 96%
rename from lib/png.c
rename to lib/gui/png.c
index f71fc6a..5d77c8c 100644
--- a/lib/png.c
+++ b/lib/gui/png.c
@@ -4,8 +4,8 @@
 #include <fb.h>
 #include <asm/byteorder.h>
 #include <init.h>
-#include <image_renderer.h>
-#include <graphic_utils.h>
+#include <gui/image_renderer.h>
+#include <gui/graphic_utils.h>
 #include <linux/zlib.h>
 
 #include "png.h"
diff --git a/lib/png.h b/lib/gui/png.h
similarity index 100%
rename from lib/png.h
rename to lib/gui/png.h
diff --git a/lib/png_lode.c b/lib/gui/png_lode.c
similarity index 96%
rename from lib/png_lode.c
rename to lib/gui/png_lode.c
index 4b57f6a..477704d 100644
--- a/lib/png_lode.c
+++ b/lib/gui/png_lode.c
@@ -4,8 +4,8 @@
 #include <fb.h>
 #include <asm/byteorder.h>
 #include <init.h>
-#include <image_renderer.h>
-#include <graphic_utils.h>
+#include <gui/image_renderer.h>
+#include <gui/graphic_utils.h>
 #include <linux/zlib.h>
 
 #include "lodepng.h"
diff --git a/lib/png_pico.c b/lib/gui/png_pico.c
similarity index 96%
rename from lib/png_pico.c
rename to lib/gui/png_pico.c
index a0127f7..393a732 100644
--- a/lib/png_pico.c
+++ b/lib/gui/png_pico.c
@@ -4,8 +4,8 @@
 #include <fb.h>
 #include <asm/byteorder.h>
 #include <init.h>
-#include <image_renderer.h>
-#include <graphic_utils.h>
+#include <gui/image_renderer.h>
+#include <gui/graphic_utils.h>
 #include <linux/zlib.h>
 
 #include "picopng.h"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
