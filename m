Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOa6e-0007vh-Vq
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 20:20:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 22:20:33 +0200
Message-Id: <1350505234-29464-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
References: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] sandbox: only test for sdl libs when sdl is enabled
To: barebox@lists.infradead.org

Otherwise we get the following warning when sdl is not installed
on the compile host:

Package sdl was not found in the pkg-config search path.
Perhaps you should add the directory containing `sdl.pc'
to the PKG_CONFIG_PATH environment variable
No package 'sdl' found

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/Makefile |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index c0aa8c6..596c8f8 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -39,10 +39,13 @@ archprepare: maketools
 
 PHONY += maketools
 
-SDL_LIBS-$(CONFIG_DRIVER_VIDEO_SDL) := $(shell pkg-config sdl --libs)
+ifeq ($(CONFIG_DRIVER_VIDEO_SDL),y)
+SDL_LIBS := $(shell pkg-config sdl --libs)
+endif
+
 cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
-	-lrt -lpthread $(SDL_LIBS-y)
+	-lrt -lpthread $(SDL_LIBS)
 
 common-y += $(BOARD) arch/sandbox/os/
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
