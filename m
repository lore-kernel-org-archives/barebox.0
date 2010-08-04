Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000VU-9a
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:30 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:04 +0200
Message-Id: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 00/13] OMAP/Beagleboard ehci support
To: barebox@lists.infradead.org

Hi all,

this patchseries adds ehci support for the beagleboard, which includes
i2c-omap, twl4030 phy and ehci-omap support.

Michael Grzeschik (4):
  ehci: add remove function
  usb: add twl4030 phy support
  ehci: add omap support
  beagle: add usb support

Sascha Hauer (9):
  i2c: Add missing defines for omap
  arm omap: Add I2C driver
  add twl4030 support
  arm omap: Add gpio support
  arm omap: Add cpu_is_ macros
  beagle: Add missing pinmux for usb
  ehci: Make has_tt configurable via platform data
  ehci: set CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS to 16
  add beagle board defconfig

 arch/arm/boards/omap/Kconfig                      |    2 +
 arch/arm/boards/omap/board-beagle.c               |   58 ++
 arch/arm/configs/omap3530_beagle_defconfig        |  257 +++++++
 arch/arm/mach-omap/Kconfig                        |   15 +-
 arch/arm/mach-omap/Makefile                       |    1 +
 arch/arm/mach-omap/gpio.c                         |  206 ++++++
 arch/arm/mach-omap/include/mach/cm-regbits-34xx.h |  799 ++++++++++++++++++++
 arch/arm/mach-omap/include/mach/ehci.h            |  109 +++
 arch/arm/mach-omap/include/mach/generic.h         |   19 +
 arch/arm/mach-omap/include/mach/gpio.h            |   92 +++
 arch/arm/mach-omap/include/mach/omap3-clock.h     |   11 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h   |    6 +
 drivers/i2c/Kconfig                               |    8 +
 drivers/i2c/Makefile                              |    2 +
 drivers/i2c/i2c-omap.c                            |  803 +++++++++++++++++++++
 drivers/i2c/twl4030.c                             |  186 +++++
 drivers/usb/host/Kconfig                          |    4 +
 drivers/usb/host/Makefile                         |    1 +
 drivers/usb/host/ehci-hcd.c                       |   21 +-
 drivers/usb/host/ehci-omap.c                      |  260 +++++++
 drivers/usb/host/ehci.h                           |    2 +-
 drivers/usb/otg/Kconfig                           |    3 +
 drivers/usb/otg/Makefile                          |    2 +
 drivers/usb/otg/twl4030.c                         |  199 +++++
 include/i2c/i2c.h                                 |    2 +
 include/i2c/twl4030.h                             |  461 ++++++++++++
 include/usb/ehci.h                                |    2 +
 include/usb/twl4030.h                             |   28 +
 28 files changed, 3550 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/configs/omap3530_beagle_defconfig
 create mode 100644 arch/arm/mach-omap/gpio.c
 create mode 100644 arch/arm/mach-omap/include/mach/cm-regbits-34xx.h
 create mode 100644 arch/arm/mach-omap/include/mach/ehci.h
 create mode 100644 arch/arm/mach-omap/include/mach/generic.h
 create mode 100644 arch/arm/mach-omap/include/mach/gpio.h
 create mode 100644 drivers/i2c/i2c-omap.c
 create mode 100644 drivers/i2c/twl4030.c
 create mode 100644 drivers/usb/host/ehci-omap.c
 create mode 100644 drivers/usb/otg/twl4030.c
 create mode 100644 include/i2c/twl4030.h
 create mode 100644 include/usb/twl4030.h

cheers,
Michael

--
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
