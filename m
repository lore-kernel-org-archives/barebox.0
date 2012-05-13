Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6E-0003ZT-Vi
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:40:35 +0000
Received: by lbbgg6 with SMTP id gg6so3492790lbb.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:40:33 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:39:57 +0600
Message-Id: <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
In-Reply-To: <20120513090917.GX27341@pengutronix.de>
References: <20120513090917.GX27341@pengutronix.de>
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
Subject: [PATCH 0/9] Minimal S5PV210 support
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

This is minimal working Samsung S5PV210 CPU support and very minimal
example Tiny210 board support. No working MMC or NAND drivers yet.

It is able to start from MMC using iROM, can blink LEDs and has working
command-line. It has working DRAM and clock initialization. Also there
is BL1 file cooker.

The checksummed image is named barebox.s5p and should be dd-ed
from 1st 512-byte sector of an MMC card.

TODO: add S5P NAND driver, add MMC driver.
TODO: get rid of iROM booting.
TODO: support USB and DM9000 in Tiny210.

Alexey Galakhov (9):
  Support most Samsung SoCs in S3C serial driver
  Fine split S3C arch dependencies from generic code
  Minimal S5PV210 + Tiny210 support (2nd stage only)
  S5PV210 iROM magic boot code
  S5P DRAM support
  S5P lowlevel clock init
  Revert "S5PV210 iROM magic boot code"
  S5P iROM boot support - improved
  S5P boot header and image generator

 .gitignore                                         |    2 +
 arch/arm/Kconfig                                   |    6 +
 arch/arm/Makefile                                  |    8 +
 arch/arm/boards/a9m2410/a9m2410.c                  |   10 +-
 arch/arm/boards/a9m2410/config.h                   |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |   10 +-
 arch/arm/boards/a9m2440/config.h                   |    2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |    4 +-
 arch/arm/boards/mini2440/config.h                  |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |   10 +-
 arch/arm/boards/tiny210/Makefile                   |    1 +
 arch/arm/boards/tiny210/config.h                   |   23 +
 arch/arm/boards/tiny210/lowlevel.c                 |   58 ++
 arch/arm/boards/tiny210/tiny210.c                  |  113 +++
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    4 +-
 arch/arm/configs/mini2440_defconfig                |    2 +-
 arch/arm/mach-samsung/Kconfig                      |   63 +-
 arch/arm/mach-samsung/Makefile                     |    8 +-
 arch/arm/mach-samsung/clocks-s3c24x0.c             |  157 ++++
 arch/arm/mach-samsung/clocks-s5pcxx.c              |   98 +++
 arch/arm/mach-samsung/generic.c                    |  112 ---
 arch/arm/mach-samsung/gpio-s3c24x0.c               |    2 +-
 arch/arm/mach-samsung/gpio-s5pcxx.c                |  123 +++
 .../arm/mach-samsung/include/mach/clocks-s3c24x0.h |   24 +
 arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h |   55 ++
 arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h  |   77 ++
 arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
 arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h |   69 ++
 arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h  |   52 ++
 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h  |  798 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/nand-s3c24x0.h  |   54 ++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   25 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |   13 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   56 +-
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |   77 --
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |   54 --
 arch/arm/mach-samsung/include/mach/s5pcxx-irom.h   |   32 +
 arch/arm/mach-samsung/lowlevel-init.S              |  317 --------
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |  317 ++++++++
 arch/arm/mach-samsung/lowlevel-s5pcxx.c            |   61 ++
 arch/arm/mach-samsung/mem-s3c24x0.c                |  143 ++++
 arch/arm/mach-samsung/mem-s5pcxx.c                 |  260 +++++++
 arch/arm/mach-samsung/s3c24xx-clocks.c             |  140 ----
 arch/arm/mach-samsung/s5p-irom-boot.c              |   59 ++
 drivers/mtd/nand/nand_s3c24xx.c                    |   16 +-
 drivers/serial/Kconfig                             |    2 +-
 drivers/serial/serial_s3c.c                        |   55 +-
 scripts/Makefile                                   |    1 +
 scripts/s5p_cksum.c                                |  140 ++++
 53 files changed, 2896 insertions(+), 832 deletions(-)
 create mode 100644 arch/arm/boards/tiny210/Makefile
 create mode 100644 arch/arm/boards/tiny210/config.h
 create mode 100644 arch/arm/boards/tiny210/lowlevel.c
 create mode 100644 arch/arm/boards/tiny210/tiny210.c
 create mode 100644 arch/arm/mach-samsung/clocks-s3c24x0.c
 create mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/include/mach/clocks-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/gpio-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomap-s3c24x0.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/nand-s3c24x0.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-irom.h
 delete mode 100644 arch/arm/mach-samsung/lowlevel-init.S
 create mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
 create mode 100644 arch/arm/mach-samsung/lowlevel-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
 create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
 delete mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c
 create mode 100644 arch/arm/mach-samsung/s5p-irom-boot.c
 create mode 100644 scripts/s5p_cksum.c

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
