Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMQg6-0002d8-3K
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 21:52:26 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1262420wgb.18
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 14:52:24 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Thu, 11 Oct 2012 23:52:06 +0200
Message-Id: <1349992331-22987-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 0/5] BCM2835/RPi support
To: barebox@lists.infradead.org

Hi again,
new patches, hopefully I have integrated every modifications suggested in the
comments. Thank you for your effort and understanding.

Best,

Carlo Caione (5):
  BCM2835: clocksource driver
  BCM2835: add gpio driver
  ARM1176: add support
  BCM2835: add support
  Raspberry-Pi: add support

 arch/arm/Kconfig                                   |   8 +
 arch/arm/Makefile                                  |   2 +
 arch/arm/boards/raspberry-pi/Kconfig               |  10 ++
 arch/arm/boards/raspberry-pi/Makefile              |   1 +
 arch/arm/boards/raspberry-pi/config.h              |   4 +
 .../arm/boards/raspberry-pi/env/init/bootargs-base |   8 +
 arch/arm/boards/raspberry-pi/env/init/hostname     |   8 +
 arch/arm/boards/raspberry-pi/rpi.c                 |  58 +++++++
 arch/arm/configs/rpi_defconfig                     |  40 +++++
 arch/arm/cpu/Kconfig                               |   5 +
 arch/arm/mach-bcm2835/Kconfig                      |  14 ++
 arch/arm/mach-bcm2835/Makefile                     |   2 +
 arch/arm/mach-bcm2835/clock.c                      |  39 +++++
 arch/arm/mach-bcm2835/core.c                       | 102 +++++++++++++
 arch/arm/mach-bcm2835/include/mach/clkdev.h        |   7 +
 arch/arm/mach-bcm2835/include/mach/clock.h         |   8 +
 arch/arm/mach-bcm2835/include/mach/core.h          |  27 ++++
 arch/arm/mach-bcm2835/include/mach/gpio.h          |   1 +
 arch/arm/mach-bcm2835/include/mach/platform.h      |  53 +++++++
 arch/arm/mach-bcm2835/include/mach/wd.h            |  50 +++++++
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/bcm2835.c                      |  92 ++++++++++++
 drivers/gpio/Kconfig                               |   4 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-bcm2835.c                        | 166 +++++++++++++++++++++
 26 files changed, 715 insertions(+)
 create mode 100644 arch/arm/boards/raspberry-pi/Kconfig
 create mode 100644 arch/arm/boards/raspberry-pi/Makefile
 create mode 100644 arch/arm/boards/raspberry-pi/config.h
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
 create mode 100644 arch/arm/configs/rpi_defconfig
 create mode 100644 arch/arm/mach-bcm2835/Kconfig
 create mode 100644 arch/arm/mach-bcm2835/Makefile
 create mode 100644 arch/arm/mach-bcm2835/clock.c
 create mode 100644 arch/arm/mach-bcm2835/core.c
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clock.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/wd.h
 create mode 100644 drivers/clocksource/bcm2835.c
 create mode 100644 drivers/gpio/gpio-bcm2835.c

-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
