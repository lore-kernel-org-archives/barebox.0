Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6JBO-0004CU-Nj
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 20:18:59 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3F62720003
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 20:18:52 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 21:18:40 +0100
Message-Id: <20210131201846.3440477-2-ahmad@a3f.at>
In-Reply-To: <20210131201846.3440477-1-ahmad@a3f.at>
References: <20210131201846.3440477-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Subject: [PATCH 1/7] sandbox: migrate to SDL 2.0
To: barebox@lists.infradead.org

SDL 2.0 has been released more than 7 years ago and should be available
everywhere. Replace barebox's SDL 1.2 with SDL 2.0 instead:

 - better maintained

 - At least on Debian, you can't install x86_64 and i386 libsdl-dev at
   the same time, which makes a quick use of CONFIG_SANDBOX_LINUX_I386
   harder as the user needs to reinstall libraries. With SDL 2.0, it
   works

 - SDL 2.0 has easier audio API, which will be used in a later commit

 - Wayland support for sandbox video driver

Port to SDL 2.0 and as we touch everything anyway, rename the
sdl_ functions to start with sdl_video_ to differentiate from upcoming
sdl_sound_.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Kconfig                          |   3 +
 arch/sandbox/Makefile                         |   6 +-
 .../sandbox/mach-sandbox/include/mach/linux.h |  17 +-
 arch/sandbox/os/Makefile                      |   4 +-
 arch/sandbox/os/sdl.c                         | 146 ++++++++++--------
 drivers/video/Kconfig                         |   1 +
 drivers/video/sdl.c                           |  37 +++--
 7 files changed, 120 insertions(+), 94 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index d9fc0c947b02..deff7f56a025 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -43,3 +43,6 @@ config 64BIT
 
 config SANDBOX_LINUX_I386
 	bool "32-bit x86 barebox" if CC_HAS_LINUX_I386_SUPPORT
+
+config SDL
+	bool
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 17f9a298d773..ea594944e4eb 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -37,8 +37,8 @@ archprepare: maketools
 
 PHONY += maketools
 
-ifeq ($(CONFIG_DRIVER_VIDEO_SDL),y)
-SDL_LIBS := $(shell pkg-config sdl --libs)
+ifeq ($(CONFIG_SDL),y)
+SDL_LIBS := $(shell pkg-config sdl2 --libs)
 endif
 
 ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
@@ -64,7 +64,7 @@ endif
 BAREBOX_LDFLAGS += \
 	-Wl,-T,$(BAREBOX_LDS) \
 	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
-	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS) \
+	-lrt $(SDL_LIBS) $(FTDI1_LIBS) \
 	$(SANITIZER_LIBS)
 
 cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index b26bfc24a291..c636a9af9cd2 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -38,13 +38,16 @@ struct linux_console_data {
 
 extern int sdl_xres;
 extern int sdl_yres;
-void sdl_close(void);
-int sdl_open(int xres, int yres, int bpp, void* buf);
-void sdl_stop_timer(void);
-void sdl_start_timer(void);
-void sdl_get_bitfield_rgba(struct fb_bitfield *r, struct fb_bitfield *g,
-			    struct fb_bitfield *b, struct fb_bitfield *a);
-void sdl_setpixel(int x, int y, uint8_t r, uint8_t g, uint8_t b, uint8_t a);
+struct sdl_fb_info {
+	void *screen_base;
+	int xres;
+	int yres;
+	int bpp;
+	int rmask, gmask, bmask, amask;
+};
+int sdl_video_open(const struct sdl_fb_info *);
+void sdl_video_pause(void);
+void sdl_video_close(void);
 
 struct ft2232_bitbang;
 struct ft2232_bitbang *barebox_libftdi1_open(int vendor_id, int device_id,
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 15d688bfdd1b..575b1a213050 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -17,8 +17,8 @@ endif
 obj-y = common.o tap.o
 obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
 
-CFLAGS_sdl.o = $(shell pkg-config sdl --cflags)
-obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
+CFLAGS_sdl.o = $(shell pkg-config sdl2 --cflags)
+obj-$(CONFIG_SDL) += sdl.o
 
 CFLAGS_ftdi.o = $(shell pkg-config libftdi1 --cflags)
 obj-$(CONFIG_GPIO_LIBFTDI1) += ftdi.o
diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index 9a35279eb79e..623e24cf0b26 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -1,103 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * GPL v2
+ * Copyright (c) 2021 Ahmad Fatoum
  */
 
 #include <stdio.h>
+#include <stdbool.h>
 #include <SDL.h>
-#include <time.h>
-#include <signal.h>
 #include <mach/linux.h>
-#include <unistd.h>
-#include <pthread.h>
 
-struct fb_bitfield {
-	uint32_t offset;			/* beginning of bitfield	*/
-	uint32_t length;			/* length of bitfield		*/
-	uint32_t msb_right;			/* != 0 : Most significant bit is */
-					/* right */
-};
+static void sdl_perror(const char *what)
+{
+	printf("SDL: Could not %s: %s.\n", what, SDL_GetError());
+}
 
-static SDL_Surface *real_screen;
-static void *buffer = NULL;
-pthread_t th;
+static struct sdl_fb_info info;
+static SDL_atomic_t shutdown;
+SDL_Window *window;
 
-static void sdl_copy_buffer(SDL_Surface *screen)
+static int scanout(void *ptr)
 {
-	if (SDL_MUSTLOCK(screen)) {
-		if (SDL_LockSurface(screen) < 0)
-			return;
+	SDL_Renderer *renderer;
+	SDL_Surface *surface;
+	SDL_Texture *texture;
+	void *buf = info.screen_base;
+	int ret = -1;
+
+	renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
+	if (!renderer) {
+		sdl_perror("create renderer");
+		return -1;
 	}
 
-	memcpy(screen->pixels, buffer, screen->pitch * screen->h);
+	surface = SDL_CreateRGBSurface(0, info.xres, info.yres, info.bpp,
+				       info.rmask, info.gmask, info.bmask, info.amask);
+	if (!surface) {
+		sdl_perror("create surface");
+		goto destroy_renderer;
+	}
 
-	if(SDL_MUSTLOCK(screen))
-		SDL_UnlockSurface(screen);
-}
+	texture = SDL_CreateTextureFromSurface(renderer, surface);
+	if (!texture) {
+		sdl_perror("create texture");
+		goto free_surface;
+	}
 
-static void *threadStart(void *ptr)
-{
-	while (1) {
-		usleep(1000 * 100);
+	while (!SDL_AtomicGet(&shutdown)) {
+		SDL_Delay(100);
 
-		sdl_copy_buffer(real_screen);
-		SDL_Flip(real_screen);
+		SDL_UpdateTexture(texture, NULL, buf, surface->pitch);
+		SDL_RenderClear(renderer);
+		SDL_RenderCopy(renderer, texture, NULL, NULL);
+		SDL_RenderPresent(renderer);
 	}
 
-	return 0;
-}
+	ret = 0;
 
-void sdl_start_timer(void)
-{
-	pthread_attr_t attr;
-	pthread_attr_init(&attr);
-	pthread_create(&th, &attr, threadStart, NULL);
-}
+	SDL_DestroyTexture(texture);
+free_surface:
+	SDL_FreeSurface(surface);
+destroy_renderer:
+	SDL_DestroyRenderer(renderer);
 
-void sdl_stop_timer(void)
-{
-	pthread_cancel(th);
+	return ret;
 }
 
-void sdl_get_bitfield_rgba(struct fb_bitfield *r, struct fb_bitfield *g,
-			    struct fb_bitfield *b, struct fb_bitfield *a)
+static SDL_Thread *thread;
+
+void sdl_video_close(void)
 {
-	SDL_Surface *screen = real_screen;
-
-	r->length = 8 - screen->format->Rloss;
-	r->offset = screen->format->Rshift;
-	g->length = 8 - screen->format->Gloss;
-	g->offset = screen->format->Gshift;
-	b->length = 8 - screen->format->Bloss;
-	b->offset = screen->format->Bshift;
-	a->length = 8 - screen->format->Aloss;
-	a->offset = screen->format->Ashift;
+	SDL_AtomicSet(&shutdown, true); /* implies full memory barrier */
+	SDL_WaitThread(thread, NULL);
+	SDL_AtomicSet(&shutdown, false);
+	SDL_DestroyWindow(window);
+	SDL_QuitSubSystem(SDL_INIT_VIDEO);
 }
 
-int sdl_open(int xres, int yres, int bpp, void* buf)
+int sdl_video_open(const struct sdl_fb_info *_info)
 {
-	int flags = SDL_HWSURFACE | SDL_ASYNCBLIT | SDL_HWACCEL;
+	info = *_info;
 
-	if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_NOPARACHUTE) < 0) {
-		printf("Could not initialize SDL: %s.\n", SDL_GetError());
+	if (SDL_InitSubSystem(SDL_INIT_VIDEO) < 0) {
+		sdl_perror("initialize SDL Video");
 		return -1;
 	}
 
-	real_screen = SDL_SetVideoMode(xres, yres, bpp, flags);
-	if (!real_screen) {
-		sdl_close();
-		fprintf(stderr, "Couldn't create renderer: %s\n", SDL_GetError());
-		return -1;
+	window = SDL_CreateWindow("barebox", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
+				  info.xres, info.yres, 0);
+	if (!window) {
+		sdl_perror("create window");
+		goto quit_subsystem;
 	}
 
-	buffer = buf;
+	/* All scanout needs to happen in the same thread, because not all
+	 * graphic backends are thread-safe. The window is created in the main
+	 * thread though to work around libEGL crashing with SDL_VIDEODRIVER=wayland
+	 */
+
+	thread = SDL_CreateThread(scanout, "video-scanout", NULL);
+	if (!thread) {
+		sdl_perror("start scanout thread");
+		goto destroy_window;
+	}
 
 	return 0;
-}
 
-void sdl_close(void)
-{
-	sdl_stop_timer();
-	SDL_Quit();
+destroy_window:
+	SDL_DestroyWindow(window);
+quit_subsystem:
+	SDL_QuitSubSystem(SDL_INIT_VIDEO);
+
+	return -1;
 }
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 9ec6ea4248c1..b6d468c63c03 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -82,6 +82,7 @@ endif
 config DRIVER_VIDEO_SDL
 	bool "SDL framebuffer driver"
 	depends on SANDBOX
+	select SDL
 
 config DRIVER_VIDEO_PXA
 	bool "PXA27x framebuffer driver"
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 9811b2cf128e..e9debc51b1e9 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -13,23 +13,25 @@
 #include <errno.h>
 #include <gui/graphic_utils.h>
 
+#define to_mask(color) GENMASK(color.length - 1, color.offset)
+
 static void sdlfb_enable(struct fb_info *info)
 {
-	int ret;
-
-	ret = sdl_open(info->xres, info->yres, info->bits_per_pixel,
-		     info->screen_base);
-	if (ret)
-		return;
-	sdl_get_bitfield_rgba(&info->red, &info->green, &info->blue, &info->transp);
-
-	sdl_start_timer();
+	struct sdl_fb_info sdl_info = {
+		.screen_base = info->screen_base,
+		.xres = info->xres, .yres = info->yres, .bpp = info->bits_per_pixel,
+		.rmask = to_mask(info->red),
+		.gmask = to_mask(info->green),
+		.bmask = to_mask(info->blue),
+		.amask = to_mask(info->transp),
+	};
+
+	sdl_video_open(&sdl_info);
 }
 
 static void sdlfb_disable(struct fb_info *info)
 {
-	sdl_stop_timer();
-	sdl_close();
+	sdl_video_close();
 }
 
 static struct fb_ops sdlfb_ops = {
@@ -48,10 +50,19 @@ static int sdlfb_probe(struct device_d *dev)
 	fb = xzalloc(sizeof(*fb));
 	fb->modes.modes = fb->mode = dev->platform_data;
 	fb->modes.num_modes = 1;
-	fb->bits_per_pixel = 4 << 3;
 	fb->xres = fb->mode->xres;
 	fb->yres = fb->mode->yres;
 
+	fb->bits_per_pixel = 32;
+	fb->transp.length = 8;
+	fb->red.length = 8;
+	fb->green.length = 8;
+	fb->blue.length = 8;
+	fb->transp.offset = 24;
+	fb->red.offset = 16;
+	fb->green.offset = 8;
+	fb->blue.offset = 0;
+
 	fb->priv = fb;
 	fb->fbops = &sdlfb_ops;
 
@@ -68,7 +79,6 @@ static int sdlfb_probe(struct device_d *dev)
 
 	kfree(fb->screen_base);
 	kfree(fb);
-	sdl_close();
 	return ret;
 }
 
@@ -78,7 +88,6 @@ static void sdlfb_remove(struct device_d *dev)
 
 	kfree(fb->screen_base);
 	kfree(fb);
-	sdl_close();
 }
 
 static struct driver_d sdlfb_driver = {
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
