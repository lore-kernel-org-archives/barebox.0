Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIm-0003Fg-9E
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:43 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000U0-7E
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xH-5n
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:04:59 +0100
Message-Id: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Add support for runtime selection of video mode in barebox
To: barebox@lists.infradead.org

Currently barebox uses a fixed video mode setup. Everything is compiled in.
This change set adds the possibility to select a video mode according to a
connected display at runtime (but only for adapted graphic drivers). If more
than one video mode is supported by the platform, running the 'devinfo'
command on the graphic device shows the supported list of video modes.
After selecting the video mode, the output can be enabled.

Always the first listed video mode is selected by default, but graphic output
is still disabled. So, an init script can still change the mode.

My system comes with a VGA connector that supports more than one video mode.

At system start, the first video mode is selected, but no output happens:

barebox:/  devinfo fb0
 base  : 0x00000000
 size  : 0x00096000
 driver: none

 Parameters:
           enable = 0
        mode_name = VGA

To get the list of supported video modes, just 'ask' the driver:

barebox:/ devinfo stmfb0
base  : 0x80030000
size  : 0x00001000
driver: stmfb

 Supported video modes:
   - 'VGA': 640 x 480
   - 'ETV570': 640 x 480
   - 'SVGA': 800 x 600
   - 'XGA': 1024 x 768
   - 'SXGA': 1280 x 1024
no parameters available

To set a new mode, disable the output first (if already enabled) and change
the framebuffer's 'mode_name' parameter:

barebox:/ fb0.mode_name=SVGA

Then (re-)enable it:

barebox:/ fb0.enable=1

barebox:/ devinfo fb0
base  : 0x00000000
size  : 0x00096000
driver: none

Parameters:
          enable = 1
       mode_name = SVGA

Already existing graphic drivers are not touched.

The following changes since commit 97d6b6aac3f0f267afc2e0d8abe55b6e82860d6a:

  ARM tx28stk5_defconfig: update config (2010-12-14 15:22:55 +0100)

are available in the git repository at:
  http://git.pengutronix.de/git/jbe/for_barebox_next/ next_seperate_videomode

Juergen Beisert (10):
      Add more useful generic macros
      ARM Chumby: Fix memory index
      ARM Chumby: Fix unit of the clocks after the change to Hz
      ARM Chumby: Just fix some typos
      Fix default framebuffer 'enable' set
      Add the feature to change the video mode at runtime
      ARM STM/i.MX: Add a pixel clock calculation routine for i.MX23/i.MX28
      ARM STM/i.MX: Add video driver for i.MX23/i.MX28
      ARM KARO-TX28-STK5: Add a user for video graphics support on i.MX28
      ARM Chumby-Falconwing: Add a user for video graphics support on i.MX23

 arch/arm/boards/chumby_falconwing/falconwing.c |   99 +++--
 arch/arm/boards/karo-tx28/tx28-stk5.c          |  148 +++++++
 arch/arm/configs/chumbyone_defconfig           |    3 +
 arch/arm/configs/tx28stk5_defconfig            |    4 +
 arch/arm/mach-stm/Makefile                     |    1 +
 arch/arm/mach-stm/imx_lcd_clk.c                |  149 +++++++
 arch/arm/mach-stm/include/mach/clock-imx23.h   |    2 +
 arch/arm/mach-stm/include/mach/clock-imx28.h   |    2 +
 arch/arm/mach-stm/include/mach/fb.h            |   43 ++
 arch/arm/mach-stm/include/mach/imx23-regs.h    |    1 +
 drivers/video/Kconfig                          |    7 +
 drivers/video/Makefile                         |    1 +
 drivers/video/fb.c                             |   44 ++-
 drivers/video/stm.c                            |  540 ++++++++++++++++++++++++
 include/common.h                               |   10 +
 include/fb.h                                   |    3 +
 16 files changed, 1024 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/mach-stm/imx_lcd_clk.c
 create mode 100644 arch/arm/mach-stm/include/mach/fb.h
 create mode 100644 drivers/video/stm.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
