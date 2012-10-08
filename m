Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLLUW-00048k-VY
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:08:02 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2970403wey.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:07:57 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Tue,  9 Oct 2012 00:07:36 +0200
Message-Id: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 0/5] BCM2835/Raspberry-Pi: add support
To: barebox@lists.infradead.org

Hi,
a new set of patches including all the modifications :)

Regards,

Carlo Caione (5):
  Add support for ARM1176
  Add support for BCM2835
  Add support for Raspberry-Pi
  Add support for BCM2835 clocksource
  Add support for GPIO (BCM2835/Raspberry-Pi)

 arch/arm/Kconfig                                   |   7 +
 arch/arm/Makefile                                  |   2 +
 arch/arm/boards/raspberry-pi/Makefile              |   1 +
 arch/arm/boards/raspberry-pi/config.h              |   4 +
 arch/arm/boards/raspberry-pi/env/config            |   1 +
 .../arm/boards/raspberry-pi/env/init/bootargs-base |   8 ++
 arch/arm/boards/raspberry-pi/env/init/hostname     |   8 ++
 arch/arm/boards/raspberry-pi/rpi.c                 |  58 ++++++++
 arch/arm/configs/rpi_defconfig                     |  42 ++++++
 arch/arm/cpu/Kconfig                               |   5 +
 arch/arm/mach-bcm2835/Kconfig                      |  22 +++
 arch/arm/mach-bcm2835/Makefile                     |   2 +
 arch/arm/mach-bcm2835/clock.c                      |  48 +++++++
 arch/arm/mach-bcm2835/core.c                       | 102 +++++++++++++
 arch/arm/mach-bcm2835/include/mach/clkdev.h        |   7 +
 arch/arm/mach-bcm2835/include/mach/clock.h         |   8 ++
 arch/arm/mach-bcm2835/include/mach/core.h          |  27 ++++
 arch/arm/mach-bcm2835/include/mach/gpio.h          |   1 +
 arch/arm/mach-bcm2835/include/mach/platform.h      |  53 +++++++
 arch/arm/mach-bcm2835/include/mach/wd.h            |  50 +++++++
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/bcm2835.c                      |  83 +++++++++++
 drivers/gpio/Kconfig                               |   3 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-bcm2835.c                        | 157 +++++++++++++++++++++
 26 files changed, 705 insertions(+)
 create mode 100644 arch/arm/boards/raspberry-pi/Makefile
 create mode 100644 arch/arm/boards/raspberry-pi/config.h
 create mode 100644 arch/arm/boards/raspberry-pi/env/config
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
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
