Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBnFx-0005xw-02
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 13:45:31 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2878BFF9E49
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:46:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 15:38:42 +0200
Message-Id: <1347457122-8526-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] sandbox: add sdl video support
To: barebox@lists.infradead.org

This will allow speed up the dev on framebuffer.

By default the resolution is VGA but this can be changed via cmdline.

We use a pthread to Flip the screen every 100ms as we can not detect when
barebox update it as barebox simpliy write in a buffer.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/Kconfig                           |    3 +
 arch/sandbox/Makefile                          |    6 +-
 arch/sandbox/board/board.c                     |   21 +++++
 arch/sandbox/mach-sandbox/include/mach/linux.h |   13 +++
 arch/sandbox/os/Makefile                       |    2 +
 arch/sandbox/os/common.c                       |   25 +++++-
 arch/sandbox/os/sdl.c                          |  108 ++++++++++++++++++++++++
 drivers/video/Kconfig                          |    4 +
 drivers/video/Makefile                         |    1 +
 drivers/video/sdl.c                            |  101 ++++++++++++++++++++++
 10 files changed, 279 insertions(+), 5 deletions(-)
 create mode 100644 arch/sandbox/os/sdl.c
 create mode 100644 drivers/video/sdl.c

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 10e6829..84fadda 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -1,3 +1,6 @@
+config SANDBOX
+	bool
+	default y
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 9fd18a2..c0aa8c6 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -9,8 +9,7 @@ lds-y   := $(BOARD)/barebox.lds
 
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
-
-CFLAGS += -Dmalloc=barebox_malloc \
+CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dfree=barebox_free -Drealloc=barebox_realloc \
 		-Dread=barebox_read -Dwrite=barebox_write \
 		-Dopen=barebox_open -Dclose=barebox_close \
@@ -40,9 +39,10 @@ archprepare: maketools
 
 PHONY += maketools
 
+SDL_LIBS-$(CONFIG_DRIVER_VIDEO_SDL) := $(shell pkg-config sdl --libs)
 cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
-	-lrt -lpthread
+	-lrt -lpthread $(SDL_LIBS-y)
 
 common-y += $(BOARD) arch/sandbox/os/
 
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 6bccd2c..71efcc4 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -26,16 +26,37 @@
 #include <mach/linux.h>
 #include <init.h>
 #include <errno.h>
+#include <fb.h>
+
+struct fb_videomode mode = {
+	.name = "sdl",	/* optional */
+	.xres = 640,
+	.yres = 480,
+};
 
 static struct device_d tap_device = {
 	.id	  = DEVICE_ID_DYNAMIC,
 	.name     = "tap",
 };
 
+static struct device_d sdl_device = {
+	.id	  = DEVICE_ID_DYNAMIC,
+	.name     = "sdlfb",
+	.platform_data = &mode,
+};
+
 static int devices_init(void)
 {
 	register_device(&tap_device);
 
+	if (sdl_xres)
+		mode.xres = sdl_xres;
+
+	if (sdl_yres)
+		mode.yres = sdl_yres;
+
+	register_device(&sdl_device);
+
 	return 0;
 }
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 5917fe9..81f4946 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -1,6 +1,8 @@
 #ifndef __ASM_ARCH_LINUX_H
 #define __ASM_ARCH_LINUX_H
 
+struct fb_bitfield;
+
 int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(char *dev);
 uint64_t linux_get_time(void);
@@ -20,4 +22,15 @@ struct linux_console_data {
 	unsigned int flags;
 };
 
+extern int sdl_xres;
+extern int sdl_yres;
+int sdl_init(void);
+void sdl_close(void);
+int sdl_open(int xres, int yres, int bpp, void* buf);
+void sdl_stop_timer(void);
+void sdl_start_timer(void);
+void sdl_get_bitfield_rgba(struct fb_bitfield *r, struct fb_bitfield *g,
+			    struct fb_bitfield *b, struct fb_bitfield *a);
+void sdl_setpixel(int x, int y, uint8_t r, uint8_t g, uint8_t b, uint8_t a);
+
 #endif /* __ASM_ARCH_LINUX_H */
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index dc211d9..2e65be5 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -13,3 +13,5 @@ NOSTDINC_FLAGS :=
 
 obj-y = common.o tap.o
 
+CFLAGS_sdl.o = $(shell pkg-config sdl --cflags)
+obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index e296574..15c9945 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -52,6 +52,9 @@
 #include <mach/linux.h>
 #include <mach/hostfile.h>
 
+int sdl_xres;
+int sdl_yres;
+
 static struct termios term_orig, term_vi;
 static char erase_char;	/* the users erase character */
 
@@ -278,10 +281,12 @@ static struct option long_options[] = {
 	{"env",    1, 0, 'e'},
 	{"stdout", 1, 0, 'O'},
 	{"stdin",  1, 0, 'I'},
+	{"xres",  1, 0, 'x'},
+	{"yres",  1, 0, 'y'},
 	{0, 0, 0, 0},
 };
 
-static const char optstring[] = "hm:i:e:O:I:";
+static const char optstring[] = "hm:i:e:O:I:x:y:";
 
 int main(int argc, char *argv[])
 {
@@ -331,6 +336,12 @@ int main(int argc, char *argv[])
 
 			barebox_register_console("cin", fd, -1);
 			break;
+		case 'x':
+			sdl_xres = strtoul(optarg, NULL, 0);
+			break;
+		case 'y':
+			sdl_yres = strtoul(optarg, NULL, 0);
+			break;
 		default:
 			exit(1);
 		}
@@ -409,7 +420,9 @@ static void print_usage(const char *prgname)
 "  -O, --stdout=<file>  Register a file as a console capable of doing stdout.\n"
 "                       <file> can be a regular file or a FIFO.\n"
 "  -I, --stdin=<file>   Register a file as a console capable of doing stdin.\n"
-"                       <file> can be a regular file or a FIFO.\n",
+"                       <file> can be a regular file or a FIFO.\n"
+"  -x, --xres=<res>     SDL width.\n"
+"  -y, --yres=<res>     SDL height.\n",
 	prgname
 	);
 }
@@ -449,6 +462,14 @@ static void print_usage(const char *prgname)
  * Register \<file\> as a console capable of doing stdin. \<file\> can be a regular
  * file or a fifo.
  *
+ * -x, --xres \<res\>
+ *
+ * Specify SDL width
+ *
+ * -y, --yres \<res\>
+ *
+ * Specify SDL height
+ *
  * @section simu_dbg How to debug barebox simulator
  *
  */
diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
new file mode 100644
index 0000000..62bbc44
--- /dev/null
+++ b/arch/sandbox/os/sdl.c
@@ -0,0 +1,108 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#include <stdio.h>
+#include <SDL.h>
+#include <time.h>
+#include <signal.h>
+#include <mach/linux.h>
+#include <unistd.h>
+#include <pthread.h>
+
+struct fb_bitfield {
+	uint32_t offset;			/* beginning of bitfield	*/
+	uint32_t length;			/* length of bitfield		*/
+	uint32_t msb_right;			/* != 0 : Most significant bit is */ 
+					/* right */ 
+};
+
+static SDL_Surface *real_screen;
+static void *buffer = NULL;
+pthread_t th;
+
+int sdl_init(void)
+{
+	return SDL_Init(SDL_INIT_VIDEO | SDL_INIT_NOPARACHUTE);
+}
+
+static void sdl_copy_buffer(SDL_Surface *screen)
+{
+	if (SDL_MUSTLOCK(screen)) {
+		if (SDL_LockSurface(screen) < 0)
+			return;
+	}
+
+	memcpy(screen->pixels, buffer, screen->pitch * screen->h); 
+
+	if(SDL_MUSTLOCK(screen))
+		SDL_UnlockSurface(screen);
+}
+
+static void *threadStart(void *ptr)
+{
+	while (1) {
+		usleep(1000 * 100);
+
+		sdl_copy_buffer(real_screen);
+		SDL_Flip(real_screen);
+	}
+
+	return 0;
+}
+
+void sdl_start_timer(void)
+{
+	pthread_attr_t attr;
+	pthread_attr_init(&attr);
+	pthread_create(&th, &attr, threadStart, NULL);
+}
+
+void sdl_stop_timer(void)
+{
+	pthread_cancel(th);
+}
+
+void sdl_get_bitfield_rgba(struct fb_bitfield *r, struct fb_bitfield *g,
+			    struct fb_bitfield *b, struct fb_bitfield *a)
+{
+	SDL_Surface *screen = real_screen;
+
+	r->length = 8 - screen->format->Rloss;
+	r->offset = screen->format->Rshift;
+	g->length = 8 - screen->format->Gloss;
+	g->offset = screen->format->Gshift;
+	b->length = 8 - screen->format->Bloss;
+	b->offset = screen->format->Bshift;
+	a->length = 8 - screen->format->Aloss;
+	a->offset = screen->format->Ashift;
+}
+
+int sdl_open(int xres, int yres, int bpp, void* buf)
+{
+	int flags = SDL_HWSURFACE | SDL_ASYNCBLIT | SDL_HWACCEL;
+
+	if (sdl_init() < 0) {
+		printf("Could not initialize SDL: %s.\n", SDL_GetError());
+		return -1;
+	}
+
+	real_screen = SDL_SetVideoMode(xres, yres, bpp, flags);
+	if (!real_screen) {
+		sdl_close();
+		fprintf(stderr, "Couldn't create renderer: %s\n", SDL_GetError());
+		return -1;
+	}
+
+	buffer = buf;
+
+	return 0;
+}
+
+void sdl_close(void)
+{
+	sdl_stop_timer();
+	SDL_Quit();
+}
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 519cdbf..4aa92c5 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -44,6 +44,10 @@ config DRIVER_VIDEO_S3C_VERBOSE
 
 endif
 
+config DRIVER_VIDEO_SDL
+	bool "SDL framebuffer driver"
+	depends on SANDBOX
+
 config DRIVER_VIDEO_PXA
 	bool "PXA27x framebuffer driver"
 	depends on ARCH_PXA27X
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 913c78d..77f6682 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
+obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
new file mode 100644
index 0000000..ed083d7
--- /dev/null
+++ b/drivers/video/sdl.c
@@ -0,0 +1,101 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <mach/linux.h>
+#include <fb.h>
+#include <errno.h>
+#include <graphic_utils.h>
+
+static void sdlfb_enable(struct fb_info *info)
+{
+	sdl_start_timer();
+}
+
+static void sdlfb_disable(struct fb_info *info)
+{
+	sdl_stop_timer();
+}
+
+static struct fb_ops sdlfb_ops = {
+	.fb_enable	= sdlfb_enable,
+	.fb_disable	= sdlfb_disable,
+};
+
+static int sdlfb_probe(struct device_d *dev)
+{
+	struct fb_info *fb;
+	int ret = -EIO;
+
+	if (!dev->platform_data)
+		return -EIO;
+
+	fb = xzalloc(sizeof(*fb));
+	fb->mode_list = fb->mode = dev->platform_data;
+	fb->num_modes = 1;
+	fb->bits_per_pixel = 4 << 3;
+	fb->xres = fb->mode->xres;
+	fb->yres = fb->mode->yres;
+
+	fb->priv = fb;
+	fb->fbops = &sdlfb_ops,
+
+	fb->dev.parent = dev;
+	fb->screen_base = xzalloc(fb->xres * fb->yres *
+				  fb->bits_per_pixel >> 3);
+
+	if (sdl_open(fb->xres, fb->yres, fb->bits_per_pixel,
+		     fb->screen_base))
+		goto err;
+
+	sdl_get_bitfield_rgba(&fb->red, &fb->green, &fb->blue, &fb->transp);
+
+	dev_dbg(dev, "red: length = %d, offset = %d\n",
+		fb->red.length, fb->red.offset);
+	dev_dbg(dev, "green: length = %d, offset = %d\n",
+		fb->green.length, fb->green.offset);
+	dev_dbg(dev, "blue: length = %d, offset = %d\n",
+		fb->blue.length, fb->blue.offset);
+	dev_dbg(dev, "transp: length = %d, offset = %d\n",
+		fb->transp.length, fb->transp.offset);
+
+	/* add runtime hardware info */
+	dev->priv = fb;
+
+	ret = register_framebuffer(fb);
+	if (!ret)
+		return 0;
+
+err:
+	kfree(fb->screen_base);
+	kfree(fb);
+	sdl_close();
+	return ret;
+}
+
+static void sdlfb_remove(struct device_d *dev)
+{
+	struct fb_info *fb = dev->priv;
+
+	kfree(fb->screen_base);
+	kfree(fb);
+	sdl_close();
+}
+
+static struct driver_d sdlfb_driver = {
+	.name	= "sdlfb",
+	.probe	= sdlfb_probe,
+	.remove	= sdlfb_remove,
+};
+
+static int sdlfb_init(void)
+{
+	return register_driver(&sdlfb_driver);
+}
+device_initcall(sdlfb_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
