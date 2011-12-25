Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqc-000480-Px
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000h4-8u
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001LI-81
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:23 +0100
Message-Id: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Prepare to add more Samsung S3C CPUs to barebox
To: barebox@lists.infradead.org

This patch series makes the current Samsung S3C24XX CPU and platform support
more generic to be able to add Samsung's more recent S3C CPUs (S3C64XX for
example). Some drivers can be shared between members in the S3C family of
processors, so the drivers get a s3c in their names to reflect it. But some
parts stick to their processor. To avoid an ifdef hell, I moved these parts
into separte files.

Comments are welcome.

The following changes since commit c100eacc25c5b59a5d68f7b0590c295cb398e934:

  at91: add at91_udc resource (2011-12-23 18:15:29 +0100)

Juergen Beisert (14):
      MACH SAMSUNG: Rename the whole mach to add more CPUs in future
      MACH SAMSUNG/S3C: Do not compile S3C24xx's GPIO support unconditionally
      MACH SAMSUNG/S3C: Make it more generic for future updates
      MACH SAMSUNG/S3C: Use the correct CPU family name to reflect NAND driver's usage
      MACH SAMSUNG/S3C: Parts of the SDHC driver can be shared in the S3C CPU family
      MACH SAMSUNG/S3C: Reflect the CPU name the LCD driver is for
      MACH SAMSUNG/S3C: Separate S3C24XX clock management
      MACH SAMSUNG/S3C: Separate the clocksource for the S3C family
      MACH SAMSUNG/S3C: Rename register macros to reflect the MACH they are valid for
      MACH SAMSUNG/S3C: Re-work the S3C family timer driver
      MACH SAMSUNG/S3C: Prepare watchdog unit to be shared in the S3C family
      MACH SAMSUNG/S3C: Unify the UART driver for the S3C family of CPUs
      MACH SAMSUNG/S3C: Re-work the memory detection and handling
      MACH SAMSUNG/S3C: Re-work the GPIO handling for S3C24xx CPUs

 arch/arm/Kconfig                                   |    3 +-
 arch/arm/Makefile                                  |    2 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |   94 +++----
 arch/arm/boards/a9m2410/lowlevel_init.S            |    6 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |   64 +++--
 arch/arm/boards/a9m2440/a9m2440.c                  |   50 ++--
 arch/arm/boards/a9m2440/lowlevel_init.S            |   11 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    6 +-
 arch/arm/boards/mini2440/mini2440.c                |   30 +-
 arch/arm/mach-s3c24xx/Makefile                     |    2 -
 arch/arm/mach-s3c24xx/generic.c                    |  297 --------------------
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h |  177 ------------
 arch/arm/{mach-s3c24xx => mach-samsung}/Kconfig    |   17 +-
 arch/arm/mach-samsung/Makefile                     |    3 +
 arch/arm/mach-samsung/generic.c                    |  164 +++++++++++
 .../{mach-s3c24xx => mach-samsung}/gpio-s3c24x0.c  |   33 ++-
 .../include/mach/gpio.h                            |    7 +-
 .../include/mach/iomux-s3c24x0.h                   |    0
 arch/arm/mach-samsung/include/mach/s3c-busctl.h    |   32 ++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   31 ++
 .../include/mach/s3c-generic.h}                    |   15 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   69 +++++
 .../mci.h => mach-samsung/include/mach/s3c-mci.h}  |    0
 .../include/mach/s3c24xx-fb.h}                     |    0
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |   77 +++++
 .../include/mach/s3c24xx-nand.h}                   |    0
 .../{mach-s3c24xx => mach-samsung}/lowlevel-init.S |   10 +-
 arch/arm/mach-samsung/s3c-timer.c                  |  114 ++++++++
 arch/arm/mach-samsung/s3c24xx-clocks.c             |  140 +++++++++
 drivers/mci/s3c.c                                  |   16 +-
 drivers/mtd/nand/Kconfig                           |    4 +-
 drivers/mtd/nand/Makefile                          |    2 +-
 .../mtd/nand/{nand_s3c2410.c => nand_s3c24xx.c}    |   10 +-
 drivers/serial/Kconfig                             |   10 +-
 drivers/serial/Makefile                            |    2 +-
 drivers/serial/{serial_s3c24x0.c => serial_s3c.c}  |   72 +++--
 drivers/video/Kconfig                              |    2 +-
 drivers/video/Makefile                             |    2 +-
 drivers/video/{s3c.c => s3c24xx.c}                 |   10 +-
 39 files changed, 870 insertions(+), 714 deletions(-)
 delete mode 100644 arch/arm/mach-s3c24xx/Makefile
 delete mode 100644 arch/arm/mach-s3c24xx/generic.c
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
 rename arch/arm/{mach-s3c24xx => mach-samsung}/Kconfig (90%)
 create mode 100644 arch/arm/mach-samsung/Makefile
 create mode 100644 arch/arm/mach-samsung/generic.c
 rename arch/arm/{mach-s3c24xx => mach-samsung}/gpio-s3c24x0.c (84%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/gpio.h (74%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/iomux-s3c24x0.h (100%)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-busctl.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-clocks.h
 rename arch/arm/{mach-s3c24xx/include/mach/s3c24xx-generic.h => mach-samsung/include/mach/s3c-generic.h} (77%)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-iomap.h
 rename arch/arm/{mach-s3c24xx/include/mach/mci.h => mach-samsung/include/mach/s3c-mci.h} (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/fb.h => mach-samsung/include/mach/s3c24xx-fb.h} (100%)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
 rename arch/arm/{mach-s3c24xx/include/mach/s3c24x0-nand.h => mach-samsung/include/mach/s3c24xx-nand.h} (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/lowlevel-init.S (98%)
 create mode 100644 arch/arm/mach-samsung/s3c-timer.c
 create mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c
 rename drivers/mtd/nand/{nand_s3c2410.c => nand_s3c24xx.c} (99%)
 rename drivers/serial/{serial_s3c24x0.c => serial_s3c.c} (67%)
 rename drivers/video/{s3c.c => s3c24xx.c} (97%)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
