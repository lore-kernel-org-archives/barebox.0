Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwmUk-0003rP-1T
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 08:45:07 +0000
Received: by mail-lf0-x244.google.com with SMTP id x23so1042457lfi.1
 for <barebox@lists.infradead.org>; Wed, 19 Oct 2016 01:44:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 19 Oct 2016 11:44:37 +0300
Message-Id: <20161019084437.7533-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] sandbox: eliminate sdl_init()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/mach-sandbox/include/mach/linux.h | 1 -
 arch/sandbox/os/sdl.c                          | 7 +------
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 1e53f69..1f11ed4 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -30,7 +30,6 @@ struct linux_console_data {
 
 extern int sdl_xres;
 extern int sdl_yres;
-int sdl_init(void);
 void sdl_close(void);
 int sdl_open(int xres, int yres, int bpp, void* buf);
 void sdl_stop_timer(void);
diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index ec538e9..9a35279 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -23,11 +23,6 @@ static SDL_Surface *real_screen;
 static void *buffer = NULL;
 pthread_t th;
 
-int sdl_init(void)
-{
-	return SDL_Init(SDL_INIT_VIDEO | SDL_INIT_NOPARACHUTE);
-}
-
 static void sdl_copy_buffer(SDL_Surface *screen)
 {
 	if (SDL_MUSTLOCK(screen)) {
@@ -84,7 +79,7 @@ int sdl_open(int xres, int yres, int bpp, void* buf)
 {
 	int flags = SDL_HWSURFACE | SDL_ASYNCBLIT | SDL_HWACCEL;
 
-	if (sdl_init() < 0) {
+	if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_NOPARACHUTE) < 0) {
 		printf("Could not initialize SDL: %s.\n", SDL_GetError());
 		return -1;
 	}
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
