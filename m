Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdeR-0004Br-Gn
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:32:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:31:40 +0200
Message-Id: <1437031912-24754-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Framebuffer console patches
To: Barebox List <barebox@lists.infradead.org>

This is the current state of the framebuffer console patches that
went back and forth between Antony and me.

The framebuffer console has different compile and runtime selectable
fonts, color support and supports enough escape sequences to show the
console and the editor properly.

Thank you Antony for starting this and for your effort. Framebuffer console
support has been on my wishlist for quite some time now.

Sascha

----------------------------------------------------------------
Antony Pavlov (3):
      import lib/fonts framework from linux kernel
      lib/fonts: add "MINI4x6" font
      video: implement framebuffer console

Sascha Hauer (9):
      graphic_utils: Add a common namespace to functions
      gui: Fix typo in function name
      graphics_utils: Add function to invert an area
      graphics_utils: Export get_pixel
      graphics_utils: add function to create pixel from rgb triplet
      fonts: Add 7x14 font
      fb: Add fb_enable/disable functions
      fb: sdl: create graphics window on enabling
      graphics_utils: Let fb_open allocate the screen

 Documentation/user/framebuffer.rst |    8 +
 commands/splash.c                  |   27 +-
 drivers/video/Kconfig              |    6 +
 drivers/video/Makefile             |    1 +
 drivers/video/fb.c                 |   32 +-
 drivers/video/fbconsole.c          |  439 ++++
 drivers/video/sdl.c                |   16 +-
 include/fb.h                       |    5 +
 include/gui/graphic_utils.h        |   19 +-
 include/gui/gui.h                  |    4 +-
 include/linux/font.h               |   34 +
 lib/Kconfig                        |    2 +
 lib/Makefile                       |    1 +
 lib/fonts/Kconfig                  |   29 +
 lib/fonts/Makefile                 |   11 +
 lib/fonts/font_7x14.c              | 4116 ++++++++++++++++++++++++++++++++
 lib/fonts/font_8x16.c              | 4630 ++++++++++++++++++++++++++++++++++++
 lib/fonts/font_mini_4x6.c          | 2155 +++++++++++++++++
 lib/fonts/fonts.c                  |   75 +
 lib/gui/bmp.c                      |   18 +-
 lib/gui/graphic_utils.c            |  165 +-
 lib/gui/png.c                      |    4 +-
 22 files changed, 11706 insertions(+), 91 deletions(-)
 create mode 100644 drivers/video/fbconsole.c
 create mode 100644 include/linux/font.h
 create mode 100644 lib/fonts/Kconfig
 create mode 100644 lib/fonts/Makefile
 create mode 100644 lib/fonts/font_7x14.c
 create mode 100644 lib/fonts/font_8x16.c
 create mode 100644 lib/fonts/font_mini_4x6.c
 create mode 100644 lib/fonts/fonts.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
