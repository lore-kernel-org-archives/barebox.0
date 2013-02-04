Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2NOq-0000e5-BP
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 14:52:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U2NOo-0005Wn-D5
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 15:51:58 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U2NOo-0001pz-Bx
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 15:51:58 +0100
Date: Mon, 4 Feb 2013 15:51:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130204145158.GL1906@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2013.02.0
To: barebox@lists.infradead.org


Hi All,

We have a february release. As usual, here's what happened since
the last release.

Sascha

----------------------------------------------------------------
Alexander Aring (5):
      meminfo: fix missing include
      memory: fix size address calculation
      meminfo: fix display of allocated addresses
      arm-mmu: remove semicolon in arm mmu.c
      mtd-core: fix compiler warning

Alexander Shiyan (3):
      x86: Add formal Kconfig parameter "X86_BOOTLOADER"
      ARM: OMAP: Remove unneeded dependencies for GPMC
      of: Fix of_find_node_by_path breakage

Antony Pavlov (4):
      MIPS: add pre-bootloader (pbl) image support
      MIPS: qemu-malta: add trivial pbl support
      MIPS: qemu-malta_defconfig: use pbl
      spi: fix compiler warning

Jan Luebbe (3):
      arm: omap: am33xx: add support for low level debug
      arm: beaglebone: add first-stage support for AM335x and board
      nand_write: initialize OOB buffer for each page

Jean-Christophe PLAGNIOL-VILLARD (57):
      gpiolib: add gpio_request and gpio_free support
      gpiolib: add command to dump the current gpio status
      at91: use gpio_is_valid to check gpio
      at91: use -EINVAL for invalid gpio
      at91: drop PIN_BASE offset for gpio
      at91: gpio: switch to device driver
      at91: gpio: switch to ops
      at91: switch to gpiolib
      mtd: atmel_nand: request and configure pio via gpiolib
      usb: at91_udc: request and configure vbus pin via gpiolib
      spi: atmel: request cs pin via gpiolib
      at91: factorise dbgu address
      at91sam9x5ek: switch heartbeat to d2 (pioD21)
      led-gpio: use gpio_request and gpio_free
      at91: enable clock via clock framework
      at91: factoryse PMC address as it's the same on every soc
      at91: pmc: drop AT91_BASE_SYS
      at91: introduce Kconfig to select the dbgu for lowlevel debug
      at91: sync with the kernel address base
      at91: at91sam9: provide its own clkdev for pit
      at91: PIT: switch to platform_driver
      at91: autodetect the soc one time at postcore_initcall
      at91: SMC: switch to platform_driver
      at91: wdt: drop AT91_SYS_BASE
      at91: introduce AT91SAM9_SMC and AT91SAM9_TIMER
      at91: drop AT91_BASE_PIOx for soc specific one for none boot code
      at91: add dump mux command
      w1: gpio: use int for gpio
      at91: sam9x5ek: use -EINVAL for invalid gpio on 1-wire
      at91sam9g45: fix i2c typos
      atmel_spi: fix spi cs gpio request loop
      qt1070: init default key code first
      graphic_utils/fb_open: fix fbsize
      Makefile: move cmd_check_file_size to Makefile.lib
      ohci: make it depends on !MMU
      ohci: only enable drivers if ohci is enabled
      atmel_mci: rename atmel_mci_host tp atmel_mci
      atmel_mci: rename atmel_mci_readl/writel to atmci_readl/writel
      atmel_mci: rename all function to start with atmci
      atmel_mci: use linux regs define
      atmel_mci: detect IP version
      atmel_mci: version 0x5xx of the IP have a different clk div
      atmel_mci: fix host init
      atmel_mci: rwproof is only needed up to IP version 0x200
      atmel_mci: on version 0x0 we need to reset the IP at each request
      atmel_mci: after a software timeout the IP need to be reset
      atmel_mci: support the SD highspeed since IP version 0x300
      atmel_mci: update the SD/SDIO Card Register at request time
      atmel_mci: drop board host caps
      atmel_mci: gpio: request and configure card detect
      gpio_keys: fix loop on buttons for request and configuration
      at91sam9261: fix max bare_init it's 156KiB
      at91sam9n12: fix wp_pin invalid value
      at91sam9x5ek: fix wp_pin and detect_pin pin invalid value
      at91rm9200: fix default TEXT_BASE to 15MiB
      at91rm9200ek: fix mem size
      omap3: fix debug_ll uart base

Maxime Ripard (3):
      ARM: cfa10036: Add the AT24HC02 I2C EEPROM
      ARM: cfa10036: Retrieve the board variant from the AT24
      ARM: cfa10036: Use the board variant to load a different device tree

Sascha Hauer (67):
      ARM i.MX31 pcm037: rewrite lowlevel init code in C
      ARM i.MX31 pcm037: Switch to new environment
      ARM i.MX31: sync iomux with kernel
      ARM i.MX31 pcm037: add more iomux pins
      ARM i.MX31: Add mmc register convenience functions
      ARM i.MX31 pcm037: add mmc support
      USB ehci: Allow to register independently from device
      USB i.MX: Add chipidea driver support
      ARM i.MX27: Add USB device functions
      ARM i.MX51: Add USB device functions
      ARM i.MX31: Add USB device functions
      ARM i.MX pcm038: switch to chipidea support
      pcm038: Stop ongoing ULPI transfers before registering the transceiver
      ARM i.MX pcm038: Update defconfig for chipidea driver
      USB ULPI: Add missing ulpi_write function
      USB ULPI: Add more register/bit defines
      ata sff: set device pointer in ata port
      mci: Allow to specify device name
      mci i.MX esdhc: Allow to specify devicename from platformdata
      mfd mc13893: Add register defines
      ARM i.MX51: Add support for the Efika MX Smartbook
      ARM: Add defconfig for Efika MX smartbook
      Merge branch 'pu/usb' into for-next/imx
      USB ehci: Add powerup fixup for EfikaSB
      Merge branch 'pu/efikasb' into for-next/imx
      Arm Efika MX Smartbook: coding style fixes
      Merge branch 'pu/efikasb' into for-next/imx
      ARM omap: remove unused function
      ARM omap4: remove unused struct
      ARM omap4: Add missing assembly protection in header file
      ARM omap4: Add missing double include protection
      ARM omap: Make gpmc base runtime configurable
      ARM omap: Make timer base runtime configurable
      ARM omap4: make PRM defines SoC specific
      ARM omap3: make PRM defines SoC specific
      ARM omap: Use SoC specific defines for gpmc and timer base
      ARM omap: include individual SoC files
      ARM omap: Add device register convenience functions
      ARM omap3: Use device register functions in boards
      ARM omap4: Use device register functions in boards
      ARM omap hsmmc: Fix register offset
      ARM omap3: Add change OMAP_ prefix to OMAP3_ for registers
      mci omap_hsmmc: Fix whitespaces
      ARM omap / mci: Fix register offsets
      Merge branch 'for-next/at91'
      Merge branch 'for-next/gpio-request'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/ubi'
      fixup! commands: add ubiformat
      ARM am33xx: the hsmmc is a omap4 type mmc controller
      led: test for led->set callback before calling it
      ARM panda: do not set gpio direction of heartbeat LED
      Merge branch 'delivery/at91_fixes' of git://git.jcrosoft.org/barebox
      ARM i.MX25: Add missing device registration for the iomux
      ARM Ka-Ro TX25: fix running in SDRAM test
      ARM Ka-Ro TX25: fix compilation with external NAND boot enabled
      ARM v7: Fix register corruption in v7_mmu_cache_off
      ARM bcm2835: Fix noreturn function does return
      ARM: Fix reassigning symbols in defconfigs
      pbl string: Fix no previous prototype warnings
      Merge branch 'pu/build-warnings'
      ARM AT91 pm9263: Fix phy address
      Release v2013.02.0

Teresa G=E1mez (10):
      ARM OMAP AM33XX: create new ARCH for AM33xx
      ARM OMAP4: Add SRAM base define
      ARM OMAP4: Add EHCI base define
      ARM AM33XX: Add MMC Bases
      ARM AM33XX: Add mmc0 pin mux function
      ARM OMAP: Add SRAM and DRAM to device register functions
      ARM OMAP: Apply RAM device register functions to boards
      ARM OMAP: Add EHCI to device register functions
      ARM OMAP: Apply EHCI device register functions
      pcm051: Add inital support

Wolfram Sang (11):
      mtd: drop custom is_power_of_2()
      lib: misc: add 'iB' suffixes to strtoull_suffix
      lib: update size_human_readable to latest version
      ubi: consolidate ubi-media.h
      ubi: bump ubi-media.h to newest version
      devfs & mtd: add MEMERASE ioctl support
      mtd: utils: apply macros for message printouts
      lib: add libscan
      lib: add libubigen
      lib: add barebox version of libmtd
      commands: add ubiformat

 Makefile                                           |   13 +-
 arch/arm/Kconfig                                   |    2 +-
 arch/arm/Makefile                                  |    3 +
 arch/arm/boards/archosg9/board.c                   |   21 +-
 arch/arm/boards/at91rm9200ek/init.c                |    3 +-
 arch/arm/boards/at91sam9260ek/init.c               |    8 +-
 arch/arm/boards/at91sam9261ek/init.c               |    7 +-
 arch/arm/boards/at91sam9263ek/init.c               |    7 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    6 +-
 arch/arm/boards/at91sam9n12ek/init.c               |   11 +-
 arch/arm/boards/at91sam9x5ek/init.c                |   12 +-
 arch/arm/boards/beagle/board.c                     |   51 +-
 arch/arm/boards/beaglebone/Makefile                |    1 +
 arch/arm/boards/beaglebone/board.c                 |  357 +++++++++
 arch/arm/boards/beaglebone/config.h                |   17 +
 arch/arm/boards/beaglebone/env/boot/sd             |   11 +
 arch/arm/boards/beaglebone/env/config              |   21 +
 arch/arm/boards/crystalfontz-cfa10036/Makefile     |    2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   27 +
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    4 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |   96 +++
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.h   |   22 +
 arch/arm/boards/dss11/init.c                       |   13 +-
 arch/arm/boards/efika-mx-smartbook/Makefile        |    3 +
 arch/arm/boards/efika-mx-smartbook/board.c         |  510 +++++++++++++
 arch/arm/boards/efika-mx-smartbook/config.h        |   17 +
 arch/arm/boards/efika-mx-smartbook/dcd-data.h      |   56 ++
 .../boards/efika-mx-smartbook/env/bin/lvds_init    |   22 +
 .../boards/efika-mx-smartbook/env/boot/hd-internal |   17 +
 .../boards/efika-mx-smartbook/env/boot/mmc-left    |   19 +
 arch/arm/boards/efika-mx-smartbook/env/config      |   29 +
 .../boards/efika-mx-smartbook/env/init/automount   |   29 +
 .../boards/efika-mx-smartbook/env/init/bootsource  |   10 +
 .../efika-mx-smartbook/env/init/config-board       |    9 +
 .../efika-mx-smartbook/env/network/eth0-discover   |    4 +
 arch/arm/boards/efika-mx-smartbook/flash_header.c  |   29 +
 arch/arm/boards/karo-tx25/lowlevel.c               |    5 +-
 arch/arm/boards/mmccpu/init.c                      |    2 +-
 arch/arm/boards/omap343xdsp/board.c                |   47 +-
 arch/arm/boards/omap3evm/board.c                   |   55 +-
 arch/arm/boards/panda/board.c                      |   26 +-
 arch/arm/boards/pcm037/Makefile                    |    4 +-
 arch/arm/boards/pcm037/env/boot/nand-ubi           |   10 +
 arch/arm/boards/pcm037/env/config                  |   52 --
 arch/arm/boards/pcm037/env/init/config-board       |    7 +
 arch/arm/boards/pcm037/env/init/mtdparts-nand      |   11 +
 arch/arm/boards/pcm037/env/init/mtdparts-nor       |   11 +
 arch/arm/boards/pcm037/lowlevel.c                  |  162 ++++
 arch/arm/boards/pcm037/lowlevel_init.S             |  170 -----
 arch/arm/boards/pcm037/pcm037.c                    |   48 +-
 arch/arm/boards/pcm038/pcm970.c                    |   42 +-
 arch/arm/boards/pcm049/board.c                     |   24 +-
 arch/arm/boards/pcm051/Makefile                    |    1 +
 arch/arm/boards/pcm051/board.c                     |   64 ++
 arch/arm/boards/pcm051/config.h                    |   21 +
 arch/arm/boards/pcm051/env/boot/sd                 |   10 +
 arch/arm/boards/pcm051/env/config                  |   22 +
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |   59 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |   24 +-
 arch/arm/boards/pm9261/init.c                      |    7 +-
 arch/arm/boards/pm9263/init.c                      |    9 +-
 arch/arm/boards/pm9g45/init.c                      |    9 +-
 arch/arm/boards/qil-a9260/init.c                   |    7 +-
 arch/arm/boards/tny-a926x/init.c                   |    9 +-
 arch/arm/boards/usb-a926x/init.c                   |    8 +-
 arch/arm/configs/am335x_beaglebone_defconfig       |   54 ++
 .../configs/am335x_beaglebone_mlo_large_defconfig  |   55 ++
 .../configs/am335x_beaglebone_mlo_small_defconfig  |   31 +
 arch/arm/configs/at91sam9n12ek_defconfig           |    1 -
 arch/arm/configs/cfa10036_defconfig                |    3 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |  108 +++
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    1 -
 arch/arm/configs/pcm027_defconfig                  |    1 -
 arch/arm/configs/pcm037_defconfig                  |   32 +-
 arch/arm/configs/pcm038_defconfig                  |   10 +-
 arch/arm/configs/pcm051_defconfig                  |   56 ++
 arch/arm/cpu/cache-armv7.S                         |    2 +
 arch/arm/cpu/mmu.c                                 |    2 +-
 arch/arm/mach-at91/Kconfig                         |  121 ++-
 arch/arm/mach-at91/Makefile                        |   21 +-
 arch/arm/mach-at91/at91rm9200.c                    |   47 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |   10 +-
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |   18 +-
 arch/arm/mach-at91/at91sam9260.c                   |   36 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   14 +-
 arch/arm/mach-at91/at91sam9261.c                   |   38 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   14 +-
 arch/arm/mach-at91/at91sam9263.c                   |   47 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   16 +-
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   28 +-
 arch/arm/mach-at91/at91sam926x_time.c              |   68 +-
 arch/arm/mach-at91/at91sam9g45.c                   |   46 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   20 +-
 arch/arm/mach-at91/at91sam9n12.c                   |   42 +-
 arch/arm/mach-at91/at91sam9n12_devices.c           |   14 +-
 arch/arm/mach-at91/at91sam9x5.c                    |   42 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |   14 +-
 arch/arm/mach-at91/clock.c                         |   50 +-
 arch/arm/mach-at91/generic.h                       |   25 +
 arch/arm/mach-at91/gpio.c                          |  752 ++++++++++++++--=
---
 arch/arm/mach-at91/include/mach/at91_dbgu.h        |   26 +-
 arch/arm/mach-at91/include/mach/at91_pit.h         |    8 +-
 arch/arm/mach-at91/include/mach/at91_pmc.h         |   48 +-
 arch/arm/mach-at91/include/mach/at91_wdt.h         |    6 +-
 arch/arm/mach-at91/include/mach/at91rm9200.h       |   22 +-
 arch/arm/mach-at91/include/mach/at91sam9260.h      |   37 +-
 arch/arm/mach-at91/include/mach/at91sam9261.h      |   34 +-
 arch/arm/mach-at91/include/mach/at91sam9263.h      |   52 +-
 arch/arm/mach-at91/include/mach/at91sam9_smc.h     |   50 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h      |   44 +-
 arch/arm/mach-at91/include/mach/at91sam9n12.h      |   43 +-
 arch/arm/mach-at91/include/mach/at91sam9x5.h       |   43 +-
 arch/arm/mach-at91/include/mach/board.h            |   13 +-
 arch/arm/mach-at91/include/mach/cpu.h              |  190 +++--
 arch/arm/mach-at91/include/mach/debug_ll.h         |    6 +-
 arch/arm/mach-at91/include/mach/gpio.h             |  402 +++++-----
 arch/arm/mach-at91/include/mach/hardware.h         |    8 +
 arch/arm/mach-at91/include/mach/sam9_smc.h         |   33 -
 arch/arm/mach-at91/sam9_smc.c                      |  146 +++-
 arch/arm/mach-at91/setup.c                         |  226 ++++++
 arch/arm/mach-at91/soc.h                           |   66 ++
 arch/arm/mach-bcm2835/core.c                       |    2 +
 arch/arm/mach-imx/Kconfig                          |    9 +
 arch/arm/mach-imx/devices.c                        |    5 +
 arch/arm/mach-imx/imx25.c                          |    1 +
 arch/arm/mach-imx/imx27.c                          |    1 +
 arch/arm/mach-imx/imx31.c                          |    1 +
 arch/arm/mach-imx/imx51.c                          |    1 +
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   15 +
 arch/arm/mach-imx/include/mach/devices-imx31.h     |   25 +
 arch/arm/mach-imx/include/mach/devices-imx51.h     |   15 +
 arch/arm/mach-imx/include/mach/devices.h           |    2 +
 arch/arm/mach-imx/include/mach/esdhc.h             |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx31.h        |  253 ++++++-
 arch/arm/mach-imx/iomux-v2.c                       |   12 +-
 arch/arm/mach-mxs/Kconfig                          |    3 +
 arch/arm/mach-omap/Kconfig                         |   33 +-
 arch/arm/mach-omap/Makefile                        |    4 +-
 arch/arm/mach-omap/am33xx_clock.c                  |  289 ++++++++
 arch/arm/mach-omap/am33xx_generic.c                |   97 +++
 arch/arm/mach-omap/am33xx_mux.c                    |  511 +++++++++++++
 arch/arm/mach-omap/devices-gpmc-nand.c             |    3 +-
 arch/arm/mach-omap/dmtimer0.c                      |   89 +++
 arch/arm/mach-omap/gpmc.c                          |   26 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h     |  194 +++++
 arch/arm/mach-omap/include/mach/am33xx-devices.h   |   33 +
 arch/arm/mach-omap/include/mach/am33xx-mux.h       |   23 +
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |  166 +++++
 arch/arm/mach-omap/include/mach/clocks.h           |    7 -
 arch/arm/mach-omap/include/mach/control.h          |    4 +-
 arch/arm/mach-omap/include/mach/debug_ll.h         |    9 +-
 arch/arm/mach-omap/include/mach/devices.h          |   14 +
 arch/arm/mach-omap/include/mach/gpmc.h             |    4 +-
 arch/arm/mach-omap/include/mach/omap3-clock.h      |    4 +-
 arch/arm/mach-omap/include/mach/omap3-devices.h    |   69 +-
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |  142 ++--
 arch/arm/mach-omap/include/mach/omap3-smx.h        |   16 +-
 arch/arm/mach-omap/include/mach/omap4-clock.h      |    6 +-
 arch/arm/mach-omap/include/mach/omap4-devices.h    |   87 +++
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |   42 +-
 arch/arm/mach-omap/include/mach/sdrc.h             |    2 +-
 arch/arm/mach-omap/include/mach/silicon.h          |   33 -
 arch/arm/mach-omap/include/mach/sys_info.h         |    1 -
 arch/arm/mach-omap/include/mach/timers.h           |    4 -
 arch/arm/mach-omap/include/mach/wdt.h              |    4 +-
 arch/arm/mach-omap/include/mach/xload.h            |    1 +
 arch/arm/mach-omap/omap3_clock.c                   |  249 ++++---
 arch/arm/mach-omap/omap3_core.S                    |    2 +-
 arch/arm/mach-omap/omap3_generic.c                 |   60 +-
 arch/arm/mach-omap/omap4_clock.c                   |    3 +-
 arch/arm/mach-omap/omap4_generic.c                 |    6 +-
 arch/arm/mach-omap/omap_devices.c                  |   32 +
 arch/arm/mach-omap/s32k_clksource.c                |   18 +-
 arch/arm/mach-omap/xload.c                         |    2 +
 arch/mips/Makefile                                 |   18 +
 .../qemu-malta/include/board/board_pbl_start.h     |   34 +
 arch/mips/boot/Makefile                            |    2 +
 arch/mips/boot/main_entry-pbl.c                    |   87 +++
 arch/mips/boot/start-pbl.S                         |   46 ++
 arch/mips/configs/qemu-malta_defconfig             |    1 +
 arch/mips/include/asm/pbl_macros.h                 |  135 ++++
 arch/mips/mach-malta/Kconfig                       |    2 +
 arch/mips/pbl/.gitignore                           |    6 +
 arch/mips/pbl/Makefile                             |   40 +
 arch/mips/pbl/piggy.gzip.S                         |    6 +
 arch/mips/pbl/piggy.lzo.S                          |    6 +
 arch/mips/pbl/zbarebox.lds.S                       |   57 ++
 arch/x86/Kconfig                                   |    3 +
 commands/Kconfig                                   |    8 +
 commands/Makefile                                  |    1 +
 commands/ubi.c                                     |    2 +-
 commands/ubiformat.c                               |  784 ++++++++++++++++=
++++
 common/meminfo.c                                   |    7 +-
 common/memory.c                                    |    4 +-
 drivers/ata/ide-sff.c                              |    1 +
 drivers/gpio/gpio.c                                |  126 +++-
 drivers/input/gpio_keys.c                          |    2 +-
 drivers/input/qt1070.c                             |    3 +-
 drivers/led/core.c                                 |    3 +
 drivers/led/led-gpio.c                             |   67 +-
 drivers/mci/Kconfig                                |    2 +-
 drivers/mci/at91_mci.h                             |  121 ---
 drivers/mci/atmel-mci-regs.h                       |  166 +++++
 drivers/mci/atmel_mci.c                            |  391 ++++++----
 drivers/mci/imx-esdhc.c                            |    3 +
 drivers/mci/mci-core.c                             |   10 +-
 drivers/mci/omap_hsmmc.c                           |   45 +-
 drivers/mtd/core.c                                 |   70 +-
 drivers/mtd/nand/atmel_nand.c                      |   55 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    1 -
 drivers/mtd/nand/nand_write.c                      |   10 +-
 drivers/mtd/ubi/ubi-barebox.h                      |    5 +-
 drivers/mtd/ubi/ubi-media.h                        |  369 ---------
 drivers/mtd/ubi/ubi.h                              |    3 +-
 drivers/of/base.c                                  |    4 +-
 drivers/spi/atmel_spi.c                            |    8 +
 drivers/usb/Kconfig                                |    2 +
 drivers/usb/Makefile                               |    1 +
 drivers/usb/gadget/at91_udc.c                      |   11 +-
 drivers/usb/host/Kconfig                           |    5 +
 drivers/usb/host/ehci-hcd.c                        |   70 +-
 drivers/usb/host/ehci-omap.c                       |   76 +-
 drivers/usb/imx/Kconfig                            |   15 +
 drivers/usb/imx/Makefile                           |    1 +
 drivers/usb/imx/chipidea-imx.c                     |   91 +++
 drivers/usb/imx/imx-usb-misc.c                     |  410 ++++++++++
 drivers/usb/otg/ulpi.c                             |   33 +-
 fs/devfs-core.c                                    |    3 +-
 include/common.h                                   |    2 +-
 include/gpio.h                                     |    7 +
 include/linux/w1-gpio.h                            |    4 +-
 include/mci.h                                      |    1 +
 include/mfd/mc13892.h                              |  217 ++++++
 include/mtd/libmtd.h                               |  149 ++++
 include/mtd/libscan.h                              |  101 +++
 include/mtd/libubigen.h                            |  182 +++++
 include/{ =3D> mtd}/ubi-media.h                      |   18 +-
 include/mtd/utils.h                                |   47 ++
 include/spi/spi.h                                  |    2 +
 include/usb/chipidea-imx.h                         |   46 ++
 include/usb/ehci.h                                 |   17 +-
 include/usb/ulpi.h                                 |   43 +-
 lib/Kconfig                                        |    9 +
 lib/Makefile                                       |    3 +
 lib/display_options.c                              |   47 +-
 lib/gui/graphic_utils.c                            |    2 +-
 lib/libmtd.c                                       |  368 +++++++++
 lib/libscan.c                                      |  219 ++++++
 lib/libubigen.c                                    |  312 ++++++++
 lib/misc.c                                         |    5 +-
 pbl/string.c                                       |   10 +-
 scripts/Makefile.lib                               |   11 +
 252 files changed, 10908 insertions(+), 2718 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/Makefile
 create mode 100644 arch/arm/boards/beaglebone/board.c
 create mode 100644 arch/arm/boards/beaglebone/config.h
 create mode 100644 arch/arm/boards/beaglebone/env/boot/sd
 create mode 100644 arch/arm/boards/beaglebone/env/config
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/hwdetect.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/Makefile
 create mode 100644 arch/arm/boards/efika-mx-smartbook/board.c
 create mode 100644 arch/arm/boards/efika-mx-smartbook/config.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/dcd-data.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/config
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/automount
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/bootsource
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/config-board
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/network/eth0-dis=
cover
 create mode 100644 arch/arm/boards/efika-mx-smartbook/flash_header.c
 create mode 100644 arch/arm/boards/pcm037/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/pcm037/env/config
 create mode 100644 arch/arm/boards/pcm037/env/init/config-board
 create mode 100644 arch/arm/boards/pcm037/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm037/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/pcm037/lowlevel.c
 delete mode 100644 arch/arm/boards/pcm037/lowlevel_init.S
 create mode 100644 arch/arm/boards/pcm051/Makefile
 create mode 100644 arch/arm/boards/pcm051/board.c
 create mode 100644 arch/arm/boards/pcm051/config.h
 create mode 100644 arch/arm/boards/pcm051/env/boot/sd
 create mode 100644 arch/arm/boards/pcm051/env/config
 create mode 100644 arch/arm/configs/am335x_beaglebone_defconfig
 create mode 100644 arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
 create mode 100644 arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
 create mode 100644 arch/arm/configs/efika-mx-smartbook_defconfig
 create mode 100644 arch/arm/configs/pcm051_defconfig
 delete mode 100644 arch/arm/mach-at91/include/mach/sam9_smc.h
 create mode 100644 arch/arm/mach-at91/setup.c
 create mode 100644 arch/arm/mach-at91/soc.h
 create mode 100644 arch/arm/mach-omap/am33xx_clock.c
 create mode 100644 arch/arm/mach-omap/am33xx_generic.c
 create mode 100644 arch/arm/mach-omap/am33xx_mux.c
 create mode 100644 arch/arm/mach-omap/dmtimer0.c
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-clock.h
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-devices.h
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-mux.h
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-silicon.h
 create mode 100644 arch/arm/mach-omap/include/mach/devices.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-devices.h
 delete mode 100644 arch/arm/mach-omap/include/mach/silicon.h
 create mode 100644 arch/arm/mach-omap/omap_devices.c
 create mode 100644 arch/mips/boards/qemu-malta/include/board/board_pbl_sta=
rt.h
 create mode 100644 arch/mips/boot/main_entry-pbl.c
 create mode 100644 arch/mips/boot/start-pbl.S
 create mode 100644 arch/mips/include/asm/pbl_macros.h
 create mode 100644 arch/mips/pbl/.gitignore
 create mode 100644 arch/mips/pbl/Makefile
 create mode 100644 arch/mips/pbl/piggy.gzip.S
 create mode 100644 arch/mips/pbl/piggy.lzo.S
 create mode 100644 arch/mips/pbl/zbarebox.lds.S
 create mode 100644 commands/ubiformat.c
 delete mode 100644 drivers/mci/at91_mci.h
 create mode 100644 drivers/mci/atmel-mci-regs.h
 delete mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 drivers/usb/imx/Kconfig
 create mode 100644 drivers/usb/imx/Makefile
 create mode 100644 drivers/usb/imx/chipidea-imx.c
 create mode 100644 drivers/usb/imx/imx-usb-misc.c
 create mode 100644 include/mfd/mc13892.h
 create mode 100644 include/mtd/libmtd.h
 create mode 100644 include/mtd/libscan.h
 create mode 100644 include/mtd/libubigen.h
 rename include/{ =3D> mtd}/ubi-media.h (96%)
 create mode 100644 include/mtd/utils.h
 create mode 100644 include/usb/chipidea-imx.h
 create mode 100644 lib/libmtd.c
 create mode 100644 lib/libscan.c
 create mode 100644 lib/libubigen.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
