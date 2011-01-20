Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfr6t-0003zw-CN
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:30 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pfr6c-000150-0j
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 10:47:02 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pfr6b-0002QW-Vv
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 10:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 10:46:51 +0100
Message-Id: <1295516821-8988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX23 patches
To: barebox@lists.infradead.org

Hi all,

The following is the result of working on the Chumby. Not all patches
are strictly for the chumby, most notable is the renaming of mach-stm
to mach-mxs.

Sascha

The following changes since commit 1a0ddc54ef631a7f7d7ed1831bda09eb10bafbfd:

  imx: add reg definitions for imx25 and imx35 boot source. (2011-01-20 09:42:34 +0100)

are available in the git repository at:
  nowhere ..BRANCH.NOT.VERIFIED..

Sascha Hauer (10):
      USB ehci: Set to host mode on tt capable controllers
      i.MX23: Add USB (phy) support
      ARM Chumby: Add USB support
      ARM Chumby: Add MMU support
      i.MX23/28: Fix setting of lcd clock
      fb i.MX23/28: add platform data hook to enable backlight
      ARM chumby: enable backlight in platform data hook
      fb i.MX23/28: rename imx_fb_videomode to imx_fb_platformdata
      ARM: rename STM arch to mxs
      ARM chumby defconfig: update with new features

 arch/arm/Kconfig                                   |    6 +-
 arch/arm/Makefile                                  |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |   79 ++++++++++++++++-
 arch/arm/configs/chumbyone_defconfig               |   21 ++++-
 arch/arm/configs/imx23evk_defconfig                |    2 +-
 arch/arm/configs/tx28stk5_defconfig                |    2 +-
 arch/arm/{mach-stm => mach-mxs}/Kconfig            |    4 +-
 arch/arm/{mach-stm => mach-mxs}/Makefile           |    2 +-
 .../arm/{mach-stm => mach-mxs}/clocksource-imx23.c |    0
 .../arm/{mach-stm => mach-mxs}/clocksource-imx28.c |    0
 arch/arm/{mach-stm => mach-mxs}/imx.c              |    0
 arch/arm/{mach-stm => mach-mxs}/imx_lcd_clk.c      |    3 +-
 .../include/mach/clock-imx23.h                     |    0
 .../include/mach/clock-imx28.h                     |    0
 .../{mach-stm => mach-mxs}/include/mach/clock.h    |    0
 arch/arm/{mach-stm => mach-mxs}/include/mach/fb.h  |    4 +-
 .../{mach-stm => mach-mxs}/include/mach/generic.h  |    0
 .../arm/{mach-stm => mach-mxs}/include/mach/gpio.h |    0
 .../{mach-stm => mach-mxs}/include/mach/imx-regs.h |    0
 .../include/mach/imx23-regs.h                      |    4 +
 .../include/mach/imx28-regs.h                      |    0
 .../include/mach/iomux-imx23.h                     |    0
 .../include/mach/iomux-imx28.h                     |    0
 arch/arm/{mach-stm => mach-mxs}/include/mach/mci.h |    0
 arch/arm/mach-mxs/include/mach/usb.h               |    6 ++
 arch/arm/{mach-stm => mach-mxs}/iomux-imx.c        |    0
 arch/arm/{mach-stm => mach-mxs}/reset-imx.c        |    0
 arch/arm/{mach-stm => mach-mxs}/speed-imx23.c      |    0
 arch/arm/{mach-stm => mach-mxs}/speed-imx28.c      |    0
 arch/arm/mach-mxs/usb.c                            |   92 ++++++++++++++++++++
 drivers/mci/Kconfig                                |    2 +-
 drivers/net/fec_imx.c                              |    4 +-
 drivers/serial/Kconfig                             |    2 +-
 drivers/usb/host/ehci-hcd.c                        |    7 ++
 drivers/video/Kconfig                              |    2 +-
 drivers/video/stm.c                                |   18 +++--
 36 files changed, 236 insertions(+), 26 deletions(-)
 rename arch/arm/{mach-stm => mach-mxs}/Kconfig (95%)
 rename arch/arm/{mach-stm => mach-mxs}/Makefile (68%)
 rename arch/arm/{mach-stm => mach-mxs}/clocksource-imx23.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/clocksource-imx28.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/imx.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/imx_lcd_clk.c (98%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/clock-imx23.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/clock-imx28.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/clock.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/fb.h (94%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/generic.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/gpio.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/imx-regs.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/imx23-regs.h (90%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/imx28-regs.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/iomux-imx23.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/iomux-imx28.h (100%)
 rename arch/arm/{mach-stm => mach-mxs}/include/mach/mci.h (100%)
 create mode 100644 arch/arm/mach-mxs/include/mach/usb.h
 rename arch/arm/{mach-stm => mach-mxs}/iomux-imx.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/reset-imx.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/speed-imx23.c (100%)
 rename arch/arm/{mach-stm => mach-mxs}/speed-imx28.c (100%)
 create mode 100644 arch/arm/mach-mxs/usb.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
