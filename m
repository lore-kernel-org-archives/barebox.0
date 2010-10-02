Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P205K-0007WB-OH
	for barebox@lists.infradead.org; Sat, 02 Oct 2010 11:17:02 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1P204s-0004oq-Q3
	for barebox@lists.infradead.org; Sat, 02 Oct 2010 13:16:30 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1P204s-00010w-Ow
	for barebox@lists.infradead.org; Sat, 02 Oct 2010 13:16:30 +0200
Date: Sat, 2 Oct 2010 13:16:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101002111630.GC28242@pengutronix.de>
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
Subject: v2010.10.0
To: barebox@lists.infradead.org

Hi All,

Another month is over and we have a new release. It gets evident that
more and more patches come from !pengutronix. That's nice ;)

Have fun
 Sascha

The following changes since commit 3d5d2279c0c5d3a7e83f94d98434c1cf29e35311:

  Release v2010.09.0 (2010-08-30 20:47:59 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git master

Baruch Siach (12):
      arm: add support for the serial ATAG
      imx25: add support for UID read from eFuse
      mx25 3ds: set CPU UID
      imx25: fix UID endianess
      mw: fix help text
      imx: move IIM registers to their own header
      imx: driver for the IIM fusebox
      imx iim: add mac address support
      imx25: add chip specific IIM fusebox defines
      imx25: add iim platform code
      fec_imx: add support for IIM stored mac address
      iim/imx25: fix MAC and UID offsets

Jean-Christophe PLAGNIOL-VILLARD (34):
      initcall: add postconsole_initcall
      clock: Introduce clock framework from Linux
      at91: implement clock framework
      string: add strlcpy support
      arm: add common clkdev
      amba: add pl011
      arm: add Nomadik 8815 SoC support
      nand: driver for Nomadik 8815 SoC
      arm: add nhk8815 board support
      init.h: introduce fake define (__init & __initdata) to simplify the linux sync
      stddef: introduce true/false enum
      gitignore: ignore .orig and .patch files
      Kconfig: sync with linux kernel v2.6.36-rc1-168-ge36c886
      mmccpu: fix typo in AT91_MAIN_CLOCK
      dm9000: allow to specify that no srom is present
      at91: rename clocksource.c -> at91sam926x_time.c
      macb: introduce HAS_MACB configuration
      at91: remove non used and obsolete at91rm9200 code
      udpate fixdep.c to linux kernel v2.6.36-rc1-168-ge36c886
      Makefile: fix autoconf.h location
      xfuncs.h: include linux/types.h to avoid non decleration of size_t
      introduce pure_initcall
      introduce phys_addr_t and resource_size_t
      use resource_size_t for device resources
      net: rework the mii support
      add WARN_ON and WARN support
      move include/unaligned to include/linux/unaligned/
      at91: remove non-needed include of autoconf.h
      module: move EXPORT_SYMBOL_GPL define to module.h
      initcall: add postconsole_initcall
      Add Menu Framework
      Menu/cmd: add sub menu entry command support
      blackfin: remove duplicated PAGE_SIZE define
      imx/fb: struct imx_ipu_fb_platform_data remove const for mode

Marek Belisko (1):
      mach-s3c24xx: Fix compilation problem when make a9m2410 or a9m2440 defconfig

Michael Grzeschik (11):
      ehci: add remove function
      usb: add twl4030 phy support
      ehci: add omap support
      beagle: add usb support
      beagle: add bootparams and architecture
      omap nand: bugfix configure ecc order
      loadb: get console baudrate from class_dev not dev
      armlinux: bugfix add parameter name into inline function
      omap: nand remove unnecessary condition
      beagle: defconfig cleanup for v2010.08.0
      beagle: fix usb dependencies

Sascha Hauer (30):
      i2c: Add missing defines for omap
      arm omap: Add I2C driver
      add twl4030 support
      arm omap: Add gpio support
      arm omap: Add cpu_is_ macros
      beagle: Add missing pinmux for usb
      ehci: Make has_tt configurable via platform data
      ehci: set CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS to 16
      add beagle board defconfig
      Add missing include
      menu: initialize entries list in menu_alloc
      menu: Use strdup instead of malloc/strncpy
      menu: simplify menu_free with list_for_each_entry_safe
      menu: remove superfluous struct menu_entry member from struct menu
      menu: use list_for_each_entry where appropriate
      menu: use an initialized struct list as menu list
      menu: do not go to free if there's nothing to free
      menu: simplify usage for clients
      Merge branch 'next'
      vsprintf: fix wrong EXPORT_SYMBOL
      fec_mpc5200: Fix compilation
      rename __initdata to __early_initdata
      ep93xx net driver: Fix compilation
      netx eth: Fix compilation
      scb9328: Fix compilation
      twl4030: Fix compiler warnings
      guf-neso: Fix compiler warnings
      pcm043: Fix compiler warnings
      pcm038: Fix compiler warnings
      Release v2010.10.0

Wolfram Sang (1):
      i2c: fix wrong comment and symbol export for i2c_add_numbered_adapter()

 .gitignore                                         |    4 +
 Makefile                                           |    8 +-
 arch/arm/Kconfig                                   |   16 +-
 arch/arm/Makefile                                  |    5 +-
 arch/arm/boards/at91sam9260ek/config.h             |    2 +-
 arch/arm/boards/at91sam9263ek/config.h             |    2 +-
 arch/arm/boards/at91sam9263ek/init.c               |    3 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +
 arch/arm/boards/guf-neso/lowlevel.c                |    5 +-
 arch/arm/boards/mmccpu/config.h                    |    2 +-
 arch/arm/boards/mmccpu/init.c                      |    3 -
 arch/arm/boards/nhk8815/Makefile                   |    1 +
 arch/arm/boards/nhk8815/env/bin/_update            |   36 +
 arch/arm/boards/nhk8815/env/bin/boot               |   38 +
 arch/arm/boards/nhk8815/env/bin/init               |   28 +
 .../boards/nhk8815/env/bin/update_barebox_xmodem   |   19 +
 arch/arm/boards/nhk8815/env/bin/update_kernel      |    8 +
 arch/arm/boards/nhk8815/env/bin/update_root        |    8 +
 arch/arm/boards/nhk8815/env/config                 |   32 +
 arch/arm/boards/nhk8815/setup.c                    |  106 ++
 arch/arm/boards/omap/board-beagle.c                |   64 +
 arch/arm/boards/pcm038/lowlevel.c                  |    5 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    5 +-
 arch/arm/boards/pm9263/config.h                    |    2 +-
 arch/arm/boards/pm9263/init.c                      |    3 -
 arch/arm/boards/scb9328/scb9328.c                  |    1 +
 arch/arm/common/Kconfig                            |    2 +
 arch/arm/common/Makefile                           |    5 +
 arch/arm/common/clkdev.c                           |  160 ++
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    2 +-
 arch/arm/configs/edb93xx_defconfig                 |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/mmccpu_defconfig                  |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/netx_nxdb500_defconfig            |    2 +-
 arch/arm/configs/nhk8815_defconfig                 |  232 +++
 arch/arm/configs/omap3530_beagle_defconfig         |  257 +++
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pm9263_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/arm/include/asm/armlinux.h                    |    6 +-
 arch/arm/include/asm/clkdev.h                      |   30 +
 arch/arm/include/asm/unaligned.h                   |    6 +-
 arch/arm/lib/armlinux.c                            |   19 +
 arch/arm/mach-at91/Kconfig                         |    2 +
 arch/arm/mach-at91/Makefile                        |    6 +-
 arch/arm/mach-at91/at91sam9260.c                   |  207 +++
 arch/arm/mach-at91/at91sam9260_devices.c           |   18 +-
 arch/arm/mach-at91/at91sam9263.c                   |  217 +++
 arch/arm/mach-at91/at91sam9263_devices.c           |   13 +-
 .../{clocksource.c => at91sam926x_time.c}          |    0
 arch/arm/mach-at91/clock.c                         |  718 +++++++++
 arch/arm/mach-at91/clock.h                         |   31 +
 arch/arm/mach-at91/generic.h                       |   14 +
 arch/arm/mach-at91/gpio.c                          |    3 +
 arch/arm/mach-at91/include/mach/at91_dbgu.h        |   66 +
 arch/arm/mach-at91/include/mach/clk.h              |   39 -
 arch/arm/mach-at91/include/mach/cpu.h              |  158 ++
 arch/arm/mach-at91/include/mach/gpio.h             |    1 +
 arch/arm/mach-at91/lowlevel_init.S                 |    1 -
 arch/arm/mach-at91rm9200/Kconfig                   |   16 -
 arch/arm/mach-at91rm9200/include/mach/AT91RM9200.h |  762 ---------
 arch/arm/mach-at91rm9200/include/mach/hardware.h   |   78 -
 arch/arm/mach-imx/Kconfig                          |   18 +
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/iim.c                            |  311 ++++
 arch/arm/mach-imx/imx25.c                          |   62 +
 arch/arm/mach-imx/imx35.c                          |    1 +
 arch/arm/mach-imx/include/mach/generic.h           |    1 +
 arch/arm/mach-imx/include/mach/iim.h               |   57 +
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h        |    2 +-
 arch/arm/mach-imx/include/mach/imx25-regs.h        |    9 +
 arch/arm/mach-imx/include/mach/imx35-regs.h        |   18 -
 arch/arm/mach-nomadik/8815.c                       |   76 +
 arch/arm/mach-nomadik/Kconfig                      |   24 +
 arch/arm/mach-nomadik/Makefile                     |    3 +
 arch/arm/mach-nomadik/clock.c                      |   52 +
 arch/arm/mach-nomadik/clock.h                      |   14 +
 arch/arm/mach-nomadik/include/mach/board.h         |   28 +
 arch/arm/mach-nomadik/include/mach/clkdev.h        |    7 +
 arch/arm/mach-nomadik/include/mach/fsmc.h          |   28 +
 arch/arm/mach-nomadik/include/mach/hardware.h      |   91 ++
 arch/arm/mach-nomadik/include/mach/mtu.h           |   46 +
 arch/arm/mach-nomadik/include/mach/nand.h          |   16 +
 arch/arm/mach-nomadik/include/mach/timex.h         |    6 +
 arch/arm/mach-nomadik/reset.c                      |   36 +
 arch/arm/mach-nomadik/timer.c                      |   81 +
 arch/arm/mach-omap/Kconfig                         |   15 +-
 arch/arm/mach-omap/Makefile                        |    1 +
 arch/arm/mach-omap/gpio.c                          |  206 +++
 arch/arm/mach-omap/include/mach/cm-regbits-34xx.h  |  799 ++++++++++
 arch/arm/mach-omap/include/mach/ehci.h             |  109 ++
 arch/arm/mach-omap/include/mach/generic.h          |   19 +
 arch/arm/mach-omap/include/mach/gpio.h             |   92 ++
 arch/arm/mach-omap/include/mach/omap3-clock.h      |   11 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |    6 +
 arch/arm/mach-s3c24xx/Kconfig                      |    2 +
 arch/blackfin/configs/ipe337_defconfig             |    2 +-
 arch/blackfin/include/asm/page.h                   |    1 -
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |    2 +-
 arch/m68k/configs/phycore_mcf54xx_defconfig        |    2 +-
 arch/ppc/configs/pcm030_defconfig                  |    2 +-
 commands/Kconfig                                   |   10 +
 commands/Makefile                                  |    1 +
 commands/loadb.c                                   |    2 +-
 commands/mem.c                                     |    4 +-
 commands/menu.c                                    |  445 ++++++
 common/Kconfig                                     |   20 +
 common/Makefile                                    |    1 +
 common/console.c                                   |    4 +-
 common/menu.c                                      |  388 +++++
 drivers/i2c/Kconfig                                |    8 +
 drivers/i2c/Makefile                               |    2 +
 drivers/i2c/i2c-omap.c                             |  803 ++++++++++
 drivers/i2c/i2c.c                                  |   26 +-
 drivers/i2c/twl4030.c                              |  186 +++
 drivers/mtd/nand/Kconfig                           |    5 +
 drivers/mtd/nand/Makefile                          |    1 +
 drivers/mtd/nand/nand_omap_gpmc.c                  |   41 +-
 drivers/mtd/nand/nomadik_nand.c                    |  248 +++
 drivers/mtd/ubi/ubi-barebox.h                      |    1 -
 drivers/net/Kconfig                                |   23 +-
 drivers/net/Makefile                               |    2 +-
 drivers/net/at91_ether.c                           |   10 +-
 drivers/net/dm9000.c                               |   36 +-
 drivers/net/ep93xx.c                               |   45 +-
 drivers/net/ep93xx.h                               |    2 +-
 drivers/net/fec_imx.c                              |   37 +-
 drivers/net/fec_imx.h                              |    2 +-
 drivers/net/fec_mpc5200.c                          |   35 +-
 drivers/net/fec_mpc5200.h                          |    2 +-
 drivers/net/macb.c                                 |   44 +-
 drivers/net/{miiphy.c => miidev.c}                 |   96 +-
 drivers/net/netx_eth.c                             |   39 +-
 drivers/net/smc91111.c                             |   32 +-
 drivers/net/smc911x.c                              |   33 +-
 drivers/net/usb/Kconfig                            |    2 +-
 drivers/net/usb/asix.c                             |   26 +-
 drivers/net/usb/usbnet.c                           |    6 +-
 drivers/serial/Kconfig                             |    9 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/amba-pl011.c                        |  192 +++
 drivers/serial/atmel.c                             |   32 +-
 drivers/usb/host/Kconfig                           |    4 +
 drivers/usb/host/Makefile                          |    1 +
 drivers/usb/host/ehci-hcd.c                        |   21 +-
 drivers/usb/host/ehci-omap.c                       |  260 +++
 drivers/usb/host/ehci.h                            |    2 +-
 drivers/usb/otg/Kconfig                            |    3 +
 drivers/usb/otg/Makefile                           |    2 +
 drivers/usb/otg/twl4030.c                          |  199 +++
 include/asm-generic/barebox.lds.h                  |    3 +-
 include/common.h                                   |   25 +
 include/dm9000.h                                   |    1 +
 include/driver.h                                   |    5 +-
 include/i2c/i2c.h                                  |    2 +
 include/i2c/twl4030.h                              |  461 ++++++
 include/init.h                                     |   29 +-
 include/linux/amba/serial.h                        |  164 ++
 include/linux/clk.h                                |  158 ++
 include/{miiphy.h => linux/mii.h}                  |  132 ++-
 include/linux/stddef.h                             |    5 +
 include/linux/string.h                             |    3 +
 include/linux/types.h                              |    8 +
 include/{ => linux}/unaligned/access_ok.h          |    0
 include/{ => linux}/unaligned/be_byteshift.h       |    0
 include/{ => linux}/unaligned/be_memmove.h         |    0
 include/{ => linux}/unaligned/be_struct.h          |    0
 include/{ => linux}/unaligned/generic.h            |    0
 include/{ => linux}/unaligned/le_byteshift.h       |    0
 include/{ => linux}/unaligned/le_memmove.h         |    0
 include/{ => linux}/unaligned/le_struct.h          |    0
 include/{ => linux}/unaligned/memmove.h            |    0
 include/{ => linux}/unaligned/packed_struct.h      |    0
 include/menu.h                                     |   96 ++
 include/miidev.h                                   |   62 +
 include/module.h                                   |    4 +
 include/readkey.h                                  |    5 +
 include/reloc.h                                    |    4 +-
 include/stdio.h                                    |    1 +
 include/usb/ehci.h                                 |    2 +
 include/usb/twl4030.h                              |   28 +
 include/usb/usbnet.h                               |    4 +-
 include/xfuncs.h                                   |    2 +
 include/xyzModem.h                                 |    3 -
 lib/string.c                                       |   26 +
 lib/vsprintf.c                                     |   27 +-
 net/eth.c                                          |    2 +-
 scripts/basic/fixdep.c                             |   55 +-
 scripts/kconfig/.gitignore                         |    4 +
 scripts/kconfig/Makefile                           |  175 ++-
 scripts/kconfig/POTFILES.in                        |    7 +
 scripts/kconfig/check.sh                           |   14 +
 scripts/kconfig/conf.c                             |  439 +++---
 scripts/kconfig/confdata.c                         |  537 +++++--
 scripts/kconfig/expr.c                             |   65 +-
 scripts/kconfig/expr.h                             |  106 +-
 scripts/kconfig/gconf.c                            |  145 +--
 scripts/kconfig/gconf.glade                        |   30 +-
 scripts/kconfig/kxgettext.c                        |    8 +-
 scripts/kconfig/lex.zconf.c_shipped                |  127 ++-
 scripts/kconfig/lkc.h                              |   40 +-
 scripts/kconfig/lkc_proto.h                        |    9 +-
 scripts/kconfig/lxdialog/BIG.FAT.WARNING           |    2 +-
 scripts/kconfig/lxdialog/check-lxdialog.sh         |   20 +-
 scripts/kconfig/lxdialog/checklist.c               |   17 +-
 scripts/kconfig/lxdialog/dialog.h                  |   11 +-
 scripts/kconfig/lxdialog/inputbox.c                |   10 +-
 scripts/kconfig/lxdialog/menubox.c                 |   28 +-
 scripts/kconfig/lxdialog/textbox.c                 |    2 +-
 scripts/kconfig/lxdialog/util.c                    |   34 +-
 scripts/kconfig/lxdialog/yesno.c                   |    4 +-
 scripts/kconfig/mconf.c                            |  262 ++--
 scripts/kconfig/menu.c                             |  211 +++-
 scripts/kconfig/nconf.c                            | 1570 ++++++++++++++++++
 scripts/kconfig/nconf.gui.c                        |  617 ++++++++
 scripts/kconfig/nconf.h                            |   95 ++
 scripts/kconfig/qconf.cc                           |  255 ++--
 scripts/kconfig/qconf.h                            |   17 +-
 scripts/kconfig/streamline_config.pl               |  422 +++++
 scripts/kconfig/symbol.c                           |  501 +++++-
 scripts/kconfig/util.c                             |   44 +-
 scripts/kconfig/zconf.gperf                        |    6 +-
 scripts/kconfig/zconf.hash.c_shipped               |  225 ++--
 scripts/kconfig/zconf.l                            |   21 +-
 scripts/kconfig/zconf.tab.c_shipped                | 1665 +++++++++++---------
 scripts/kconfig/zconf.y                            |   62 +-
 237 files changed, 14928 insertions(+), 3360 deletions(-)
 create mode 100644 arch/arm/boards/nhk8815/Makefile
 create mode 100644 arch/arm/boards/nhk8815/config.h
 create mode 100644 arch/arm/boards/nhk8815/env/bin/_update
 create mode 100644 arch/arm/boards/nhk8815/env/bin/boot
 create mode 100644 arch/arm/boards/nhk8815/env/bin/init
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_kernel
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_root
 create mode 100644 arch/arm/boards/nhk8815/env/config
 create mode 100644 arch/arm/boards/nhk8815/setup.c
 create mode 100644 arch/arm/common/Kconfig
 create mode 100644 arch/arm/common/Makefile
 create mode 100644 arch/arm/common/clkdev.c
 create mode 100644 arch/arm/configs/nhk8815_defconfig
 create mode 100644 arch/arm/configs/omap3530_beagle_defconfig
 create mode 100644 arch/arm/include/asm/clkdev.h
 rename arch/arm/mach-at91/{clocksource.c => at91sam926x_time.c} (100%)
 create mode 100644 arch/arm/mach-at91/clock.c
 create mode 100644 arch/arm/mach-at91/clock.h
 create mode 100644 arch/arm/mach-at91/generic.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_dbgu.h
 delete mode 100644 arch/arm/mach-at91/include/mach/clk.h
 create mode 100644 arch/arm/mach-at91/include/mach/cpu.h
 delete mode 100644 arch/arm/mach-at91rm9200/Kconfig
 delete mode 100644 arch/arm/mach-at91rm9200/include/mach/AT91RM9200.h
 delete mode 100644 arch/arm/mach-at91rm9200/include/mach/hardware.h
 create mode 100644 arch/arm/mach-imx/iim.c
 create mode 100644 arch/arm/mach-imx/include/mach/iim.h
 create mode 100644 arch/arm/mach-nomadik/8815.c
 create mode 100644 arch/arm/mach-nomadik/Kconfig
 create mode 100644 arch/arm/mach-nomadik/Makefile
 create mode 100644 arch/arm/mach-nomadik/clock.c
 create mode 100644 arch/arm/mach-nomadik/clock.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/board.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/fsmc.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/hardware.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/mtu.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/nand.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/timex.h
 create mode 100644 arch/arm/mach-nomadik/reset.c
 create mode 100644 arch/arm/mach-nomadik/timer.c
 create mode 100644 arch/arm/mach-omap/gpio.c
 create mode 100644 arch/arm/mach-omap/include/mach/cm-regbits-34xx.h
 create mode 100644 arch/arm/mach-omap/include/mach/ehci.h
 create mode 100644 arch/arm/mach-omap/include/mach/generic.h
 create mode 100644 arch/arm/mach-omap/include/mach/gpio.h
 create mode 100644 commands/menu.c
 create mode 100644 common/menu.c
 create mode 100644 drivers/i2c/i2c-omap.c
 create mode 100644 drivers/i2c/twl4030.c
 create mode 100644 drivers/mtd/nand/nomadik_nand.c
 rename drivers/net/{miiphy.c => miidev.c} (59%)
 create mode 100644 drivers/serial/amba-pl011.c
 create mode 100644 drivers/usb/host/ehci-omap.c
 create mode 100644 drivers/usb/otg/twl4030.c
 create mode 100644 include/i2c/twl4030.h
 create mode 100644 include/linux/amba/serial.h
 create mode 100644 include/linux/clk.h
 rename include/{miiphy.h => linux/mii.h} (74%)
 rename include/{ => linux}/unaligned/access_ok.h (100%)
 rename include/{ => linux}/unaligned/be_byteshift.h (100%)
 rename include/{ => linux}/unaligned/be_memmove.h (100%)
 rename include/{ => linux}/unaligned/be_struct.h (100%)
 rename include/{ => linux}/unaligned/generic.h (100%)
 rename include/{ => linux}/unaligned/le_byteshift.h (100%)
 rename include/{ => linux}/unaligned/le_memmove.h (100%)
 rename include/{ => linux}/unaligned/le_struct.h (100%)
 rename include/{ => linux}/unaligned/memmove.h (100%)
 rename include/{ => linux}/unaligned/packed_struct.h (100%)
 create mode 100644 include/menu.h
 create mode 100644 include/miidev.h
 create mode 100644 include/usb/twl4030.h
 create mode 100755 scripts/kconfig/check.sh
 create mode 100644 scripts/kconfig/nconf.c
 create mode 100644 scripts/kconfig/nconf.gui.c
 create mode 100644 scripts/kconfig/nconf.h
 create mode 100644 scripts/kconfig/streamline_config.pl
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
