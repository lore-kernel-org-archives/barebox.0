Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NmjvB-0001uc-QP
	for barebox@lists.infradead.org; Wed, 03 Mar 2010 08:27:11 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Nmjv8-0000ND-Iv
	for barebox@lists.infradead.org; Wed, 03 Mar 2010 09:27:06 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Nmjv8-0002Nv-FP
	for barebox@lists.infradead.org; Wed, 03 Mar 2010 09:27:06 +0100
Date: Wed, 3 Mar 2010 09:27:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100303082706.GC19843@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox 2010.03.0 is out
To: barebox@lists.infradead.org

Hi All,

We have a new release! Most notable changes are x86 support and Cirrus ep93xx
support.

Download a tarball from the usual place:

http://barebox.org/download/barebox-2010.03.0.tar.bz2

Sascha


The following changes since commit dc6550ed3be2c47476ccaefdee2277b9360a8ed6:
  Sascha Hauer (1):
        v2010.02.0

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git ..BRANCH.NOT.VERIFIED..

Eric Benard (4):
      eukrea_cpuimx27 : update timings
      Add necessary clocks & defines to get I2C support for i.MX27
      I2C : add NS LP3972 PMIC support
      Eukrea CPUIMX27 : add I2C and LP3972 support

Juergen Beisert (16):
      Add a tool to activate barebox as a boot loader on x86 architectures
      Consider real and protected mode in the dump file
      Adding x86 usage documentation to the tree
      Adding required architecture header files
      Bring in the first x86 specific code
      Add some generic functions to make x86 work
      Add functions to be able to boot with BIOSs help
      Add a generic PC platform
      Bring in the time reference for the x86 platforms
      Start to add ATA support to barebox
      Add the main disk driver
      Add a low level disk drive access driver
      Add a special command to load and start a bzImage on x86
      Add the whole x86 architecture to the build system
      i.MX35: Fix pad control bit positions
      Fix compile time errors when DEBUG is defined

Marc Kleine-Budde (21):
      mc9sdz60: clean up driver interface
      mc13892: clean up driver interface
      i.MX35 3stack: adopt board to new mc13892 and mc9sdz60 driver interface
      i.MX35 3stack: clean up indention
      i.MX35 3stack: clean up indention of lowlevel_init
      i.MX35 3stack: increase env partition to hold splash image
      i.MX35 3stack: update environemnt to support jffs and ubi/ubifs
      i.MX35 3stack: update of defconfig
      smc91111: fix odering of mac address read from EEPROM
      cfi_flash: fix alignment problem
      arm/Kconfig: delete trailing whitespace
      arm/Kconfig: removed unused TAG options
      arm/Makefile: keep list of boards sorted
      arm/cpu/Makefile: cleanup: proper indention
      drivers/video/Makefile: cleanup proper indention
      start-arm: cleanup: proper indention
      i2c.h: fix typo in copyright
      ioreadsb: put the whole ioreadsb function into the .text.readsb section
      import recent include/linux/compiler*.h
      io.h: update definitions of __raw_{read,write}*
      common.h: add compile time check helper functions

Matthias Kaehlcke (15):
      ARM: Add support for EP93xx SoCs
      Add EP93xx ethernet driver
      Add support for EP9xx GPIOs
      Add PrimeCell PL010 serial driver
      Add support for EDB93xx boards
      ep93xx eth driver: Fix dump_xxx_queue() parameter list
      ep93xx eth driver: Reorder functions to eliminate need for prototypes
      ep93xx eth driver: Remove unnecessary parentheses in constant definitions
      ep93xx eth driver: dump_xxx() cleanup
      edb93xx: Enable UART1
      edb93xx: Avoid stack usage in early_udelay()
      EP93xx: Fix system controller register definitions
      edb93xx: Fix SDRAM initialization
      edb9302(a): Tweak PLL settings
      edb93xx: Fix SDRAM precharge

Peter Korsgaard (1):
      addpart: support @<offset>

Sascha Hauer (18):
      Merge branch 'for-sha-mx35-3-stack-updates' of ssh://git.pengutronix.de/git/mkl/barebox into next
      remove unused cdp code
      remove obsolete comment
      Merge branch 'next'
      Use cache functions from kernel
      remove unused NETCONSOLE stuff
      remove unused file common/flash.c
      Move tftp/nfs specific code to net/*
      remove typedef cmd_tbl_t and replace it with struct command
      pcm043: initialize cpufreq to 532MHz
      replace ET_DEBUG with pr_debug
      put only once used function inline
      add armv6 support to the konfig system
      i.MX: select armv6 for i.MX31/35
      Merge branch 'pu'
      remove outdated MAINTAINERS file
      pcm038: initialize PLLs from internal RAM
      barebox-2010.03.0

 Documentation/boards.dox                           |   10 +-
 Documentation/commands.dox                         |    2 +-
 Documentation/developers_manual.dox                |    1 +
 Documentation/users_manual.dox                     |    1 +
 Doxyfile                                           |    3 +-
 MAINTAINERS                                        |  589 ----------------
 Makefile                                           |   25 +-
 arch/architecture.dox                              |    1 +
 arch/arm/Kconfig                                   |   25 +-
 arch/arm/Makefile                                  |   11 +-
 arch/arm/configs/edb93xx_defconfig                 |  236 +++++++
 arch/arm/configs/freescale_mx35_3stack_defconfig   |   67 +-
 arch/arm/cpu/Kconfig                               |    8 +
 arch/arm/cpu/Makefile                              |    9 +-
 arch/arm/cpu/cache-armv4.S                         |  137 ++++
 arch/arm/cpu/cache-armv6.S                         |  131 ++++
 arch/arm/cpu/cache-armv7.S                         |  185 +++++
 arch/arm/cpu/cpu.c                                 |    2 +-
 arch/arm/cpu/cpuinfo.c                             |    2 +-
 arch/arm/cpu/mmu.c                                 |   29 +-
 arch/arm/cpu/start-arm.S                           |   12 +-
 arch/arm/include/asm/io.h                          |   12 +-
 arch/arm/lib/armlinux.c                            |    4 +-
 arch/arm/lib/barebox.lds.S                         |    5 +
 arch/arm/lib/io-readsb.S                           |    4 +-
 arch/arm/mach-ep93xx/Kconfig                       |  438 ++++++++++++
 arch/arm/mach-ep93xx/Makefile                      |    3 +
 arch/arm/mach-ep93xx/clocksource.c                 |   96 +++
 arch/arm/mach-ep93xx/gpio.c                        |  136 ++++
 arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h    |  601 +++++++++++++++++
 arch/arm/mach-ep93xx/include/mach/gpio.h           |   29 +
 arch/arm/mach-ep93xx/led.c                         |   62 ++
 arch/arm/mach-ep93xx/led.h                         |   26 +
 arch/arm/mach-ep93xx/lowlevel_init.S               |   64 ++
 arch/arm/mach-imx/Kconfig                          |    2 +
 arch/arm/mach-imx/clko.c                           |    2 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |    1 +
 arch/arm/mach-imx/include/mach/iomux-v3.h          |   30 +-
 arch/arm/mach-imx/speed-imx27.c                    |    5 +
 arch/arm/mach-imx/speed.c                          |    2 +-
 arch/arm/mach-netx/generic.c                       |    2 +-
 arch/ppc/mach-mpc5xxx/interrupts.c                 |    2 +-
 arch/x86/Kconfig                                   |   67 ++
 arch/x86/Makefile                                  |   50 ++
 arch/x86/boot/Kconfig                              |   20 +
 arch/x86/boot/Makefile                             |   13 +
 arch/x86/boot/a20.c                                |  170 +++++
 arch/x86/boot/bioscall.S                           |   99 +++
 arch/x86/boot/boot.h                               |  193 ++++++
 arch/x86/boot/boot_hdisk.S                         |  176 +++++
 arch/x86/boot/boot_main.S                          |   58 ++
 arch/x86/boot/main_entry.c                         |   44 ++
 arch/x86/boot/pmjump.S                             |   89 +++
 arch/x86/boot/prepare_uboot.c                      |   86 +++
 arch/x86/boot/regs.c                               |   34 +
 arch/x86/boot/tty.c                                |   45 ++
 arch/x86/configs/generic_defconfig                 |  186 +++++
 arch/x86/include/asm/barebox.h                     |   21 +
 arch/x86/include/asm/barebox.lds.h                 |  113 ++++
 arch/x86/include/asm/bitops.h                      |   32 +
 arch/x86/include/asm/byteorder.h                   |   30 +
 arch/x86/include/asm/common.h                      |   29 +
 arch/x86/include/asm/elf.h                         |   30 +
 arch/x86/include/asm/io.h                          |   73 ++
 arch/x86/include/asm/modes.h                       |   65 ++
 arch/x86/include/asm/module.h                      |   37 +
 arch/x86/include/asm/posix_types.h                 |   49 ++
 arch/x86/include/asm/segment.h                     |   43 ++
 arch/x86/include/asm/string.h                      |   31 +
 arch/x86/include/asm/syslib.h                      |   33 +
 arch/x86/include/asm/types.h                       |   44 ++
 arch/x86/lib/Makefile                              |    9 +
 arch/x86/lib/barebox.lds.S                         |  194 ++++++
 arch/x86/lib/bios_disk.S                           |   77 +++
 arch/x86/lib/gdt.c                                 |   55 ++
 arch/x86/lib/linux_start.S                         |   75 ++
 arch/x86/lib/memory.c                              |   67 ++
 arch/x86/lib/memory16.S                            |   73 ++
 arch/x86/lib/traveler.S                            |  183 +++++
 arch/x86/mach-i386/Kconfig                         |   29 +
 arch/x86/mach-i386/Makefile                        |    5 +
 arch/x86/mach-i386/generic.c                       |   38 +
 arch/x86/mach-i386/pit_timer.c                     |   71 ++
 arch/x86/mach-i386/reset.c                         |   34 +
 arch/x86/mach-x86.dox                              |  128 ++++
 board/edb93xx/Makefile                             |    2 +
 board/edb93xx/config.h                             |    4 +
 board/edb93xx/early_udelay.h                       |   34 +
 board/edb93xx/edb93xx.c                            |  180 +++++
 board/edb93xx/edb93xx.dox                          |  108 +++
 board/edb93xx/edb93xx.h                            |   48 ++
 board/edb93xx/env/bin/boot                         |   48 ++
 board/edb93xx/env/bin/flash_partition              |   22 +
 board/edb93xx/env/bin/init                         |   19 +
 board/edb93xx/env/bin/set_nor_parts                |    3 +
 board/edb93xx/env/bin/update_kernel                |   16 +
 board/edb93xx/env/bin/update_rootfs                |   16 +
 board/edb93xx/env/config                           |   16 +
 board/edb93xx/flash_cfg.c                          |   38 +
 board/edb93xx/pll_cfg.c                            |   58 ++
 board/edb93xx/pll_cfg.h                            |   72 ++
 board/edb93xx/sdram_cfg.c                          |  141 ++++
 board/edb93xx/sdram_cfg.h                          |  145 ++++
 board/eukrea_cpuimx27/eukrea_cpuimx27.c            |   41 +-
 board/eukrea_cpuimx27/lowlevel_init.S              |    4 +-
 board/freescale-mx35-3-stack/3stack.c              |  113 ++--
 board/freescale-mx35-3-stack/env/bin/_update       |    5 +-
 board/freescale-mx35-3-stack/env/bin/boot          |   50 +-
 board/freescale-mx35-3-stack/env/bin/init          |   15 +-
 board/freescale-mx35-3-stack/env/bin/update_kernel |    2 +-
 .../env/bin/{update_root => update_rootfs}         |    8 +-
 board/freescale-mx35-3-stack/env/config            |   41 +-
 board/freescale-mx35-3-stack/lowlevel_init.S       |  340 +++++-----
 board/ipe337/cmd_alternate.c                       |    2 +-
 board/pcm038/Makefile                              |    2 +-
 board/pcm038/pcm038.c                              |   50 +--
 board/pcm038/pll_init.S                            |   48 ++
 board/pcm043/lowlevel_init.S                       |    2 +-
 board/pcm043/pcm043.c                              |    2 +-
 board/x86_generic/Makefile                         |    1 +
 board/x86_generic/config.h                         |   21 +
 board/x86_generic/env/bin/boot                     |   37 +
 board/x86_generic/env/bin/init                     |   15 +
 board/x86_generic/env/config                       |   31 +
 board/x86_generic/generic_pc.c                     |  140 ++++
 commands/Kconfig                                   |    8 +
 commands/Makefile                                  |    1 +
 commands/bmp.c                                     |    2 +-
 commands/bootm.c                                   |    6 +-
 commands/cat.c                                     |    2 +-
 commands/cd.c                                      |    2 +-
 commands/clear.c                                   |    2 +-
 commands/cp.c                                      |    2 +-
 commands/crc.c                                     |    2 +-
 commands/dfu.c                                     |    2 +-
 commands/echo.c                                    |    2 +-
 commands/edit.c                                    |    2 +-
 commands/exec.c                                    |    2 +-
 commands/export.c                                  |    2 +-
 commands/false.c                                   |    2 +-
 commands/flash.c                                   |    4 +-
 commands/go.c                                      |    2 +-
 commands/gpio.c                                    |    8 +-
 commands/help.c                                    |    2 +-
 commands/insmod.c                                  |    2 +-
 commands/linux16.c                                 |  363 ++++++++++
 commands/loadb.c                                   |    2 +-
 commands/loadenv.c                                 |    2 +-
 commands/loads.c                                   |    4 +-
 commands/ls.c                                      |    2 +-
 commands/lsmod.c                                   |    2 +-
 commands/mem.c                                     |   10 +-
 commands/meminfo.c                                 |    2 +-
 commands/memtest.c                                 |    2 +-
 commands/mkdir.c                                   |    2 +-
 commands/mount.c                                   |    2 +-
 commands/nand.c                                    |    2 +-
 commands/net.c                                     |  160 +-----
 commands/partition.c                               |   41 +-
 commands/printenv.c                                |    2 +-
 commands/pwd.c                                     |    2 +-
 commands/readline.c                                |    2 +-
 commands/reginfo.c                                 |    2 +-
 commands/reset.c                                   |    2 +-
 commands/rm.c                                      |    2 +-
 commands/rmdir.c                                   |    2 +-
 commands/saveenv.c                                 |    2 +-
 commands/setenv.c                                  |    2 +-
 commands/sleep.c                                   |    2 +-
 commands/test.c                                    |    2 +-
 commands/timeout.c                                 |    2 +-
 commands/true.c                                    |    2 +-
 commands/umount.c                                  |    2 +-
 commands/version.c                                 |    2 +-
 common/command.c                                   |   26 +-
 common/complete.c                                  |    2 +-
 common/flash.c                                     |   73 --
 common/hush.c                                      |    6 +-
 common/module.c                                    |    4 +-
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/ata/Kconfig                                |   26 +
 drivers/ata/Makefile                               |    7 +
 drivers/ata/bios.c                                 |  291 ++++++++
 drivers/ata/disk_drive.c                           |  346 ++++++++++
 drivers/i2c/Kconfig                                |    3 +
 drivers/i2c/Makefile                               |    1 +
 drivers/i2c/lp3972.c                               |  110 +++
 drivers/i2c/mc13892.c                              |   91 ++-
 drivers/i2c/mc9sdz60.c                             |   84 ++-
 drivers/nand/nand_imx.c                            |    2 +-
 drivers/nand/nand_s3c2410.c                        |    2 +-
 drivers/net/Kconfig                                |    5 +
 drivers/net/Makefile                               |    1 +
 drivers/net/ep93xx.c                               |  672 +++++++++++++++++++
 drivers/net/ep93xx.h                               |  147 ++++
 drivers/net/smc91111.c                             |   23 +-
 drivers/nor/cfi_flash.c                            |   10 +-
 drivers/serial/Kconfig                             |    7 +
 drivers/serial/Makefile                            |    2 +-
 drivers/serial/serial_pl010.c                      |  172 +++++
 drivers/serial/serial_pl010.h                      |  100 +++
 drivers/usb/gadget/u_serial.c                      |    2 +-
 drivers/usb/usb.c                                  |    2 +-
 drivers/video/Makefile                             |    5 +-
 drivers/video/imx-ipu-fb.c                         |    4 +-
 include/ata.h                                      |   39 ++
 include/command.h                                  |   25 +-
 include/common.h                                   |   32 +-
 include/i2c/i2c.h                                  |    2 +-
 include/i2c/lp3972.h                               |    7 +
 include/i2c/mc13892.h                              |   90 +++-
 include/i2c/mc9sdz60.h                             |   61 ++-
 include/linux/compiler-gcc.h                       |   30 +-
 include/linux/compiler-gcc3.h                      |   11 +-
 include/linux/compiler-gcc4.h                      |   32 +-
 include/linux/compiler.h                           |  124 ++++-
 include/net.h                                      |    8 -
 lib/driver.c                                       |    2 +-
 net/dhcp.c                                         |    2 +-
 net/net.c                                          |   98 +--
 net/nfs.c                                          |   56 ++-
 net/ping.c                                         |    6 +-
 net/tftp.c                                         |   74 ++-
 scripts/Makefile                                   |    4 +-
 scripts/setupmbr/Makefile                          |    4 +
 scripts/setupmbr/arch.h                            |   55 ++
 scripts/setupmbr/setupmbr.c                        |  705 ++++++++++++++++++++
 228 files changed, 10782 insertions(+), 1546 deletions(-)
 delete mode 100644 MAINTAINERS
 create mode 100644 arch/arm/configs/edb93xx_defconfig
 create mode 100644 arch/arm/cpu/cache-armv4.S
 create mode 100644 arch/arm/cpu/cache-armv6.S
 create mode 100644 arch/arm/cpu/cache-armv7.S
 create mode 100644 arch/arm/mach-ep93xx/Kconfig
 create mode 100644 arch/arm/mach-ep93xx/Makefile
 create mode 100644 arch/arm/mach-ep93xx/clocksource.c
 create mode 100644 arch/arm/mach-ep93xx/gpio.c
 create mode 100644 arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
 create mode 100644 arch/arm/mach-ep93xx/include/mach/gpio.h
 create mode 100644 arch/arm/mach-ep93xx/led.c
 create mode 100644 arch/arm/mach-ep93xx/led.h
 create mode 100644 arch/arm/mach-ep93xx/lowlevel_init.S
 create mode 100644 arch/x86/Kconfig
 create mode 100644 arch/x86/Makefile
 create mode 100644 arch/x86/boot/Kconfig
 create mode 100644 arch/x86/boot/Makefile
 create mode 100644 arch/x86/boot/a20.c
 create mode 100644 arch/x86/boot/bioscall.S
 create mode 100644 arch/x86/boot/boot.h
 create mode 100644 arch/x86/boot/boot_hdisk.S
 create mode 100644 arch/x86/boot/boot_main.S
 create mode 100644 arch/x86/boot/main_entry.c
 create mode 100644 arch/x86/boot/pmjump.S
 create mode 100644 arch/x86/boot/prepare_uboot.c
 create mode 100644 arch/x86/boot/regs.c
 create mode 100644 arch/x86/boot/tty.c
 create mode 100644 arch/x86/configs/generic_defconfig
 create mode 100644 arch/x86/include/asm/barebox.h
 create mode 100644 arch/x86/include/asm/barebox.lds.h
 create mode 100644 arch/x86/include/asm/bitops.h
 create mode 100644 arch/x86/include/asm/byteorder.h
 create mode 100644 arch/x86/include/asm/common.h
 create mode 100644 arch/x86/include/asm/elf.h
 create mode 100644 arch/x86/include/asm/io.h
 create mode 100644 arch/x86/include/asm/modes.h
 create mode 100644 arch/x86/include/asm/module.h
 create mode 100644 arch/x86/include/asm/posix_types.h
 create mode 100644 arch/x86/include/asm/segment.h
 create mode 100644 arch/x86/include/asm/string.h
 create mode 100644 arch/x86/include/asm/syslib.h
 create mode 100644 arch/x86/include/asm/types.h
 create mode 100644 arch/x86/lib/Makefile
 create mode 100644 arch/x86/lib/barebox.lds.S
 create mode 100644 arch/x86/lib/bios_disk.S
 create mode 100644 arch/x86/lib/gdt.c
 create mode 100644 arch/x86/lib/linux_start.S
 create mode 100644 arch/x86/lib/memory.c
 create mode 100644 arch/x86/lib/memory16.S
 create mode 100644 arch/x86/lib/traveler.S
 create mode 100644 arch/x86/mach-i386/Kconfig
 create mode 100644 arch/x86/mach-i386/Makefile
 create mode 100644 arch/x86/mach-i386/generic.c
 create mode 100644 arch/x86/mach-i386/pit_timer.c
 create mode 100644 arch/x86/mach-i386/reset.c
 create mode 100644 arch/x86/mach-x86.dox
 create mode 100644 board/edb93xx/Makefile
 create mode 100644 board/edb93xx/config.h
 create mode 100644 board/edb93xx/early_udelay.h
 create mode 100644 board/edb93xx/edb93xx.c
 create mode 100644 board/edb93xx/edb93xx.dox
 create mode 100644 board/edb93xx/edb93xx.h
 create mode 100644 board/edb93xx/env/bin/boot
 create mode 100644 board/edb93xx/env/bin/flash_partition
 create mode 100644 board/edb93xx/env/bin/init
 create mode 100644 board/edb93xx/env/bin/set_nor_parts
 create mode 100644 board/edb93xx/env/bin/update_kernel
 create mode 100644 board/edb93xx/env/bin/update_rootfs
 create mode 100644 board/edb93xx/env/config
 create mode 100644 board/edb93xx/flash_cfg.c
 create mode 100644 board/edb93xx/pll_cfg.c
 create mode 100644 board/edb93xx/pll_cfg.h
 create mode 100644 board/edb93xx/sdram_cfg.c
 create mode 100644 board/edb93xx/sdram_cfg.h
 rename board/freescale-mx35-3-stack/env/bin/{update_root => update_rootfs} (68%)
 create mode 100644 board/pcm038/pll_init.S
 create mode 100644 board/x86_generic/Makefile
 create mode 100644 board/x86_generic/config.h
 create mode 100644 board/x86_generic/env/bin/boot
 create mode 100644 board/x86_generic/env/bin/init
 create mode 100644 board/x86_generic/env/config
 create mode 100644 board/x86_generic/generic_pc.c
 create mode 100644 commands/linux16.c
 delete mode 100644 common/flash.c
 create mode 100644 drivers/ata/Kconfig
 create mode 100644 drivers/ata/Makefile
 create mode 100644 drivers/ata/bios.c
 create mode 100644 drivers/ata/disk_drive.c
 create mode 100644 drivers/i2c/lp3972.c
 create mode 100644 drivers/net/ep93xx.c
 create mode 100644 drivers/net/ep93xx.h
 create mode 100644 drivers/serial/serial_pl010.c
 create mode 100644 drivers/serial/serial_pl010.h
 create mode 100644 include/ata.h
 create mode 100644 include/i2c/lp3972.h
 create mode 100644 scripts/setupmbr/Makefile
 create mode 100644 scripts/setupmbr/arch.h
 create mode 100644 scripts/setupmbr/setupmbr.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
