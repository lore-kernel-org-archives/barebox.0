Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAMLE-0001J6-ER
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 18:34:53 +0000
Received: by mail-wm0-x236.google.com with SMTP id l126so23222130wml.0
 for <barebox@lists.infradead.org>; Sat, 19 Dec 2015 10:34:30 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 19 Dec 2015 19:33:57 +0100
Message-Id: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 0/7] bcm283x: add support for raspberry pi 2
To: barebox@lists.infradead.org
Cc: dthompson@nexusisp.com, carlo.caione@gmail.com

This patch series contains at first small cleanups which I detected by
supporting/testing raspberry pi 2 and initial support for rpi2.

It introduced the mach-bcm283x which contains bcm2835 and bcm2836, because
these are mostly the same. I didn't rename everything from bcm2835 to
bcm283x, what I changed are the Kconfig entries only.

The complete mach-bcm283x doesn't support devicetree handling which may
be the next step. Also there is still no support for dwc2 usb.

- Alex

Alexander Aring (7):
  memtest: fix missing arguments in help string
  led: add missing includes
  arm: bcm2835: fix indentation
  bcm2835: introduce mach-bcm283x
  bcm283x: mbox: align to cachesize
  rpi: sync revision detection with u-boot
  arm: bcm283x: add rpi2 support

 arch/arm/Kconfig                                   |  23 +-
 arch/arm/Makefile                                  |   2 +-
 arch/arm/boards/Makefile                           |   2 +-
 arch/arm/boards/raspberry-pi/Makefile              |   2 +
 arch/arm/boards/raspberry-pi/rpi-common.c          | 294 +++++++++++++++++++++
 arch/arm/boards/raspberry-pi/rpi.c                 | 277 +------------------
 arch/arm/boards/raspberry-pi/rpi.h                 |  28 ++
 arch/arm/boards/raspberry-pi/rpi2.c                |  21 ++
 arch/arm/configs/rpi2_defconfig                    |  72 +++++
 arch/arm/configs/rpi_defconfig                     |  70 ++---
 arch/arm/mach-bcm2835/Kconfig                      |  15 --
 arch/arm/mach-bcm283x/Kconfig                      |  25 ++
 arch/arm/{mach-bcm2835 => mach-bcm283x}/Makefile   |   0
 arch/arm/{mach-bcm2835 => mach-bcm283x}/core.c     |   0
 .../include/mach/core.h                            |   2 +-
 .../include/mach/debug_ll.h                        |   0
 .../include/mach/mbox.h                            |   9 +-
 .../include/mach/platform.h                        |   9 +
 .../include/mach/wd.h                              |   0
 arch/arm/{mach-bcm2835 => mach-bcm283x}/mbox.c     |   0
 commands/memtest.c                                 |   2 +-
 drivers/clocksource/Kconfig                        |   4 +-
 drivers/clocksource/Makefile                       |   2 +-
 drivers/gpio/Kconfig                               |   6 +-
 drivers/gpio/Makefile                              |   2 +-
 drivers/mci/Kconfig                                |   6 +-
 drivers/mci/Makefile                               |   2 +-
 drivers/regulator/Kconfig                          |   4 +-
 drivers/regulator/Makefile                         |   2 +-
 drivers/video/Kconfig                              |   8 +-
 drivers/video/Makefile                             |   2 +-
 include/led.h                                      |   3 +
 32 files changed, 543 insertions(+), 351 deletions(-)
 create mode 100644 arch/arm/boards/raspberry-pi/rpi-common.c
 create mode 100644 arch/arm/boards/raspberry-pi/rpi.h
 create mode 100644 arch/arm/boards/raspberry-pi/rpi2.c
 create mode 100644 arch/arm/configs/rpi2_defconfig
 delete mode 100644 arch/arm/mach-bcm2835/Kconfig
 create mode 100644 arch/arm/mach-bcm283x/Kconfig
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/Makefile (100%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/core.c (100%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/include/mach/core.h (97%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/include/mach/debug_ll.h (100%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/include/mach/mbox.h (98%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/include/mach/platform.h (90%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/include/mach/wd.h (100%)
 rename arch/arm/{mach-bcm2835 => mach-bcm283x}/mbox.c (100%)

-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
