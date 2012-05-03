Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPvs3-0005Vr-NV
 for barebox@lists.infradead.org; Thu, 03 May 2012 13:15:01 +0000
Received: by lagy4 with SMTP id y4so1502173lag.36
 for <barebox@lists.infradead.org>; Thu, 03 May 2012 06:14:56 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Thu,  3 May 2012 19:14:00 +0600
Message-Id: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 0/4] Support Samsung S5PV210 CPU
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

This is a series of patches to add very minimal support
of Samsung S5PV210 CPU. This can be booted from another
bootloader. It also adds very minimal support for tiny210,
a low-cost S5PV210 board from FriendlyArm.

The full support (including NAND flash, DRAM initialization
and complete booting) is being debugged right now. It seems
to work. I'll post it later since it requires lot of code
cleanup.

Alexey Galakhov (4):
  Support most Samsung SoCs in S3C serial driver
  Fine split S3C arch dependencies from generic code
  Minimal S5PV210 + Tiny210 support (2nd stage only)
  S5PV210 iROM magic boot code

 arch/arm/Kconfig                                   |    6 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/a9m2410/a9m2410.c                  |   12 +-
 arch/arm/boards/a9m2410/config.h                   |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |   12 +-
 arch/arm/boards/a9m2440/config.h                   |    2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |    4 +-
 arch/arm/boards/mini2440/config.h                  |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |   12 +-
 arch/arm/boards/tiny210/Makefile                   |    1 +
 arch/arm/boards/tiny210/config.h                   |    1 +
 arch/arm/boards/tiny210/lowlevel.c                 |   31 +
 arch/arm/boards/tiny210/tiny210.c                  |  113 +++
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    4 +-
 arch/arm/configs/mini2440_defconfig                |    2 +-
 arch/arm/mach-samsung/Kconfig                      |   54 +-
 arch/arm/mach-samsung/Makefile                     |    7 +-
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
 arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h  |   49 ++
 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h  |  798 ++++++++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   25 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |   12 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   56 +-
 arch/arm/mach-samsung/include/mach/s3c-nand.h      |   54 ++
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |   77 --
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |   54 --
 arch/arm/mach-samsung/lowlevel-init.S              |  317 --------
 arch/arm/mach-samsung/lowlevel-s3c24x0.S           |  317 ++++++++
 arch/arm/mach-samsung/mem-s3c24x0.c                |  143 ++++
 arch/arm/mach-samsung/s3c24xx-clocks.c             |  140 ----
 arch/arm/mach-samsung/s5p-irom-boot.c              |   64 ++
 drivers/mtd/nand/Kconfig                           |    4 +-
 drivers/mtd/nand/Makefile                          |    2 +-
 drivers/mtd/nand/nand_s3c.c                        |  665 ++++++++++++++++
 drivers/mtd/nand/nand_s3c24xx.c                    |  665 ----------------
 drivers/serial/Kconfig                             |    2 +-
 drivers/serial/serial_s3c.c                        |   55 +-
 50 files changed, 2997 insertions(+), 1496 deletions(-)
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
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-nand.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
 delete mode 100644 arch/arm/mach-samsung/lowlevel-init.S
 create mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
 create mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
 delete mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c
 create mode 100644 arch/arm/mach-samsung/s5p-irom-boot.c
 create mode 100644 drivers/mtd/nand/nand_s3c.c
 delete mode 100644 drivers/mtd/nand/nand_s3c24xx.c

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
