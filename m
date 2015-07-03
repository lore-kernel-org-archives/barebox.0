Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAss6-0002gV-EU
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 04:46:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZAqzs-0004GQ-OB
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 04:46:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1ZAsrk-0008MH-9e
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 06:46:20 +0200
Date: Fri, 3 Jul 2015 06:46:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150703044620.GE18700@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2015.07.0
To: Barebox List <barebox@lists.infradead.org>


We have a release for July. Much work has gone into the state framework
this time. If you haven't done already check it out here:
http://barebox.org/doc/latest/devicetree/bindings/barebox/barebox,state.html
It's a nice way to store variables in a very well defined way in small
EEPROMs and such.
Other than that the memory commands now support 64bit accesses and
memory dumps using the -q option.
Steffen has adopted the spi-nor framework from the kernel so we can now
support the qspi flashes on SoCFPGA.
For a detailed list of patches that went into this release see below.

Sascha

----------------------------------------------------------------
Alexander Richter (1):
      ubiformat: fix argument parser

Andrey Smirnov (23):
      i.MX: Move UART definitions into a separate file
      i.MX: serial: Add constants for UART clock divisor
      i.MX: serial: Add baud rate calculation convenience functions
      i.MX: serial: Add UART init functions for DEBUG_LL
      i.MX: serial: Convert PUTC_LL to use IOMEM
      i.MX: serial: Convert i.MX51 and i.MX6 to use 'imx*_uart_setup_ll'
      i.MX51: babbage: Implement CONFIG_DEBUG_LL
      i.MX: serial: Distil common clock ungating code
      Makefile.lib: Make 'check_file_size' more flexible
      i.MX: Add provisions to boot from IRAM
      imx-image: Correctly fill image size in prepended header
      bootstrap: Fix potential memory leak in 'read_image_head'
      bootstrap_read_devfs(): Check for errors from devfs_add_partition()
      bootstrap_read_devfs(): Close file after we are done with it
      bootstrap_read_devfs(): Fix potential memory leak
      bootstrap_read_devfs(): Check for errors from dev_add_bb_dev()
      bootstrap_read_devfs(): Remove all partitions upon function completion
      bootstrap: Warn if image size in BB header is zero
      common/memtest.c: Fix incorrect array boundary check
      common/memtest.c: Do not omit offset of 0 from tests
      common/memtest.c: Refactor mem_test() into three surbroutines
      common/memtest.c: Distil common error reporting code
      serial: i.MX: Write settings to a correct register

Antony Pavlov (10):
      net: dm9k: show only one phy on miibus
      net: dm9k: add device tree support
      net: dm9k: fix reset routine
      MIPS: img-ci20: enable dm9000 ethernet controller
      MIPS: img-ci20_defconfig: enable network stuff
      MIPS: bcm47xx: use PUTC_LL() from common debug_ll_ns16550.h header
      update dlink-dir-320_defconfig
      MIPS: asm/debug_ll_ns16550.h: use plain inline instead of __inline__
      PPC: asm/bitops.h: drop unused ext2* and minix* stuff
      .mailmap: add more Juergen Borleis' e-mail addresses

Fabio Estevam (1):
      mx53-qsb: Fix boot hang during reboot stress test

Hubert Feurstein (1):
      login: fix broken login command

Jan Luebbe (2):
      state: add some more error messages
      state: add support for uint8 variables

Juergen Borleis (1):
      Documentation: fix typo

Lucas Stach (2):
      PCI: rework BAR size calculation
      PCI: remove bogus host bridge setup skipping

Marc Kleine-Budde (26):
      state: documentation: add anchor so that state can be referenced later
      state: state_uint32_create: use %u to print unsigned variable
      state: state_new_from_fdt(): remove unused function
      fdt: of_unflatten_dtb(): remove left over "root" argument from inline=
 doc
      watchdog: add static inline no-ops if WD is disabled
      state: print name of property of size mismatch is detected
      state: print proper error message, if reg property is not found
      state: make state_release() non static
      state: add functionality to export state description
      state: backend: support phandle and of_path references
      crypto: digest: mark signature argument as const
      state: add fixup to copy state from barebox to kernel device tree
      habv4: habv4_get_status(): fix warning with no-op static inline funct=
ion
      arm/crypto: add generated sha256-core.S to gitignore
      state: mtd_get_meminfo: open path readonly instead of readwrite
      state: mtd_get_meminfo: make usage of mtd's meminfo compatible to lin=
ux
      state: backend_raw: remove hard coded limit of two copies
      state: backend_raw: rename struct state_backend_raw::step -> stride
      state: backend_raw: properly align write and erase size
      state: backend_raw: factor out state_backend_raw_file_get_size() into=
 separate function
      state: backend_raw: rename backend_raw_write_one() -> backend_raw_sav=
e_one()
      state: backend_raw: add sanity check of data_len during load
      state: backend_raw: update documentation of struct state_backend_raw =
members
      state: Documentation: add newly implemented "uint8" types.
      state: Documentation: the backend properties are not optional (anymor=
e)
      state: Documentation: fix dts code example

Markus Pargmann (1):
      imx6: lowlevel_init: Fix workaround for new i.MX6s chips

Masahiro Yamada (1):
      Abolish cpu_read* and cpu_write* accessors

Renaud Barbier (1):
      memtest: skip memory region smaller than one page

Robert Schwebel (1):
      Documentation: booting linux: improve doc text

Sascha Hauer (70):
      mci: imx-esdhc: Use IS_ENABLED() instead of #ifdef
      mci: imx-esdhc: Check for errors in esdhc_pio_read_write
      mci: imx-esdhc: Replace printf with dev_*
      dts: update to v4.1-rc3
      startup: introduce postenvironment_initcall
      console: use regular malloc for log messages
      xfuncs: remove debugging output
      i2c: Use correct format specifier
      mem: Fix memcpy_sz variable types
      mtd: Fix function prototype
      mtd: nand: Fix format specifier
      dma: Use generic place for dma_addr_t typedef
      drop __BITS_PER_LONG
      tlsf malloc: enable 64bit support on 64bit architectures
      memory_display: Use consistent types
      memory_display: Add 64bit support
      fs: Add O_RWSIZE_8
      mem commands: suppport parsing 'q' option
      md command: Add 64bit support
      memcmp command: Add 64bit support
      memcpy command: Add 64bit support
      memset command: Add 64bit support
      mm command: Add 64bit support
      mw command: Add 64bit support
      introduce bitsperlong.h for remaining architectures
      introduce generic posix_types.h
      remove unused nlink_t
      ARM: use generic posix_types.h
      blackfin: use generic posix_types.h
      x86: use generic posix_types.h
      openrisc: use generic posix_types.h
      mips: use generic posix_types.h
      ppc: use generic posix_types.h
      sandbox: use generic posix_types.h
      efi: use generic posix_types.h
      nios2: use generic posix_types.h
      crc16: Make buffer argument const
      console: Add functions to get/set active state of console
      console: Add functions to get/set baudrate
      console: Add console_get_by_name
      console: When switching baudrate print console name
      usb: gadget: serial: Use console_set_active to activate console
      loadxy: Use console_get_by_name
      loadxy: use console_get_baudrate
      loadx: ignore -c option
      loadxy: use console_set_baudrate
      loadb: use console_get_baudrate
      loadb: Use console_set_baudrate
      loadb: ignore -c option
      Merge branch 'for-next/am33xx'
      Merge branch 'for-next/console'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mem64'
      Merge branch 'for-next/memtest'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/posix_types'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/spi-nor'
      Merge branch 'for-next/state'
      clk: of: fix clk_of_table generation
      scripts: Add mxs-usb-loader to .gitignore
      Documentation: imx: Fix underline length
      devinfo: fix return value
      bmp support: Use unaligned accessors
      mtd: m25p80: Fix Kconfig dependencies
      ARM: start: Fix code reordering problem
      Release v2015.07.0

Steffen Trumtrar (10):
      scripts: update socfpga_sequencer importer to Quartus 15.0
      ARM: socfpga: update sdram calibration to 15.0
      mtd: spi-nor: add SPI-NOR framework
      mtd: spi-nor: add cadence quadspi driver
      ARM: dts: socfpga: add qspi node
      ARM: socfpga: socdk add qspi flash
      ARM: socfpga: socrates: add qspi flash
      ARM: socfpga: sockit: add qspi flash
      ARM: socfpga: xload: support qspi bootsource
      mtd: m25p80: use the SPI nor framework

Uwe Kleine-K=F6nig (1):
      of: add a function to remove an of_fixup

Wadim Egorov (6):
      ARM: dts: Add an am33xx include file for MLO size reduction
      ARM: dts: Add am33xx-strip.dtsi to PHYTEC MLOs
      bootsource: Add NET bootsource
      net: dhcp: Split dhcp funcionality & add dhcp command
      ARM: am33xx: Add network boot
      scripts/omap_signGP: Fix image size in GP header

 .mailmap                                           |    5 +
 Documentation/boards/imx.rst                       |   27 +
 Documentation/boards/socfpga.rst                   |   56 +-
 .../devicetree/bindings/barebox/barebox,state.rst  |   23 +-
 Documentation/user/booting-linux.rst               |   13 +-
 Documentation/user/usb.rst                         |    2 +-
 Makefile                                           |    4 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c          |   18 +-
 arch/arm/boards/embest-riotboard/lowlevel.c        |   16 +-
 arch/arm/boards/freescale-mx51-babbage/Makefile    |    3 +
 arch/arm/boards/freescale-mx51-babbage/board.c     |   60 +
 .../flash-header-common.imxcfg                     |   58 +
 .../flash-header-imx51-babbage-xload.imxcfg        |    3 +
 .../flash-header-imx51-babbage.imxcfg              |   60 +-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  |   61 +
 .../flash-header-imx53-loco.imxcfg                 |    3 +-
 .../arm/boards/freescale-mx6sx-sabresdb/lowlevel.c |   20 +-
 arch/arm/boards/guf-santaro/lowlevel.c             |   19 +-
 arch/arm/boards/karo-tx6x/lowlevel.c               |   21 +-
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     |   21 +-
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |   21 +-
 arch/arm/boards/tqma6x/lowlevel.c                  |   18 +-
 arch/arm/boards/variscite-mx6/lowlevel.c           |   21 +-
 arch/arm/configs/imx_v7-xload_defconfig            |   52 +
 arch/arm/cpu/start.c                               |    2 +
 arch/arm/crypto/.gitignore                         |    1 +
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts     |    1 +
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts     |    1 +
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts     |    1 +
 arch/arm/dts/am33xx-strip.dtsi                     |   48 +
 arch/arm/dts/socfpga.dtsi                          |   14 +
 arch/arm/dts/socfpga_cyclone5_socdk.dts            |   20 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts           |   20 +
 arch/arm/dts/socfpga_cyclone5_socrates.dts         |   20 +
 arch/arm/include/asm/bitsperlong.h                 |    1 +
 arch/arm/include/asm/posix_types.h                 |   79 +-
 arch/arm/include/asm/types.h                       |    7 +-
 arch/arm/mach-imx/Kconfig                          |   15 +
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/imx6.c                           |   48 +-
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |    5 +-
 arch/arm/mach-imx/include/mach/debug_ll.h          |   77 +-
 arch/arm/mach-imx/xload.c                          |   52 +
 arch/arm/mach-omap/Kconfig                         |    9 +
 arch/arm/mach-omap/am33xx_generic.c                |    3 +
 arch/arm/mach-omap/xload.c                         |   51 +
 arch/arm/mach-socfpga/include/mach/generic.h       |    5 +
 arch/arm/mach-socfpga/include/mach/sequencer.c     |  293 +----
 arch/arm/mach-socfpga/include/mach/sequencer.h     |    2 +
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h  |    2 +
 arch/arm/mach-socfpga/xload.c                      |   58 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h        |    4 +-
 arch/arm/pbl/Makefile                              |    2 +-
 arch/blackfin/include/asm/posix_types.h            |   86 +-
 arch/blackfin/include/asm/types.h                  |    6 +-
 arch/efi/include/asm/bitsperlong.h                 |   10 +
 arch/efi/include/asm/posix_types.h                 |   94 +-
 arch/efi/include/asm/types.h                       |   10 +-
 arch/mips/Kconfig                                  |    1 +
 arch/mips/configs/dlink-dir-320_defconfig          |    3 +-
 arch/mips/configs/img-ci20_defconfig               |   11 +-
 arch/mips/dts/img-ci20.dts                         |   15 +
 arch/mips/include/asm/bitsperlong.h                |    4 +-
 arch/mips/include/asm/debug_ll_ns16550.h           |    2 +-
 arch/mips/include/asm/posix_types.h                |  130 +--
 arch/mips/include/asm/types.h                      |   12 -
 arch/mips/mach-ath79/include/mach/debug_ll.h       |    4 +-
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h     |   14 +-
 arch/mips/mach-xburst/Kconfig                      |    1 +
 arch/mips/pbl/Makefile                             |    2 +-
 arch/nios2/include/asm/posix_types.h               |   78 +-
 arch/nios2/include/asm/types.h                     |    3 -
 arch/openrisc/include/asm/bitsperlong.h            |    1 +
 arch/openrisc/include/asm/posix_types.h            |   72 +-
 arch/openrisc/include/asm/types.h                  |    6 +-
 arch/ppc/include/asm/bitops.h                      |   63 -
 arch/ppc/include/asm/bitsperlong.h                 |    1 +
 arch/ppc/include/asm/posix_types.h                 |  109 +-
 arch/ppc/include/asm/types.h                       |    5 +-
 arch/sandbox/include/asm/bitsperlong.h             |   10 +
 arch/sandbox/include/asm/posix_types.h             |   94 +-
 arch/sandbox/include/asm/types.h                   |    6 +-
 arch/x86/include/asm/bitsperlong.h                 |    1 +
 arch/x86/include/asm/posix_types.h                 |   45 +-
 arch/x86/include/asm/types.h                       |    2 +-
 commands/Kconfig                                   |    1 +
 commands/Makefile                                  |    1 +
 commands/devinfo.c                                 |    7 +-
 commands/dhcp.c                                    |   78 ++
 commands/loadb.c                                   |   39 +-
 commands/loadxy.c                                  |   81 +-
 commands/login.c                                   |    2 +-
 commands/md.c                                      |    3 +-
 commands/mem.c                                     |    3 +
 commands/memcmp.c                                  |    3 +-
 commands/memcpy.c                                  |    3 +-
 commands/memset.c                                  |    3 +-
 commands/memtest.c                                 |   12 +-
 commands/mm.c                                      |   20 +-
 commands/mw.c                                      |   10 +-
 commands/ubiformat.c                               |    2 +-
 common/Kconfig                                     |    3 +
 common/bootsource.c                                |    1 +
 common/console.c                                   |  126 +-
 common/console_common.c                            |   27 +-
 common/memory_display.c                            |   42 +-
 common/memtest.c                                   |  176 +--
 common/oftree.c                                    |   19 +
 common/startup.c                                   |   28 +-
 common/state.c                                     |  402 +++++--
 common/tlsfbits.h                                  |    6 +-
 crypto/crc16.c                                     |    2 +-
 crypto/digest.c                                    |   10 +-
 drivers/i2c/i2c.c                                  |    2 +-
 drivers/mci/imx-esdhc.c                            |  141 ++-
 drivers/misc/state.c                               |   72 +-
 drivers/mtd/Kconfig                                |    1 +
 drivers/mtd/Makefile                               |    1 +
 drivers/mtd/core.c                                 |    2 +-
 drivers/mtd/devices/Kconfig                        |    1 +
 drivers/mtd/devices/m25p80.c                       |  999 +++-------------
 drivers/mtd/nand/nand-bb.c                         |    4 +-
 drivers/mtd/nor/cfi_flash.h                        |   12 +-
 drivers/mtd/spi-nor/Kconfig                        |   15 +
 drivers/mtd/spi-nor/Makefile                       |    2 +
 drivers/mtd/spi-nor/cadence-quadspi.c              | 1211 ++++++++++++++++=
++++
 drivers/mtd/spi-nor/spi-nor.c                      | 1148 ++++++++++++++++=
+++
 drivers/net/dm9k.c                                 |  138 ++-
 drivers/of/fdt.c                                   |    1 -
 drivers/pci/pci.c                                  |   44 +-
 drivers/serial/serial_ar933x.c                     |    4 +-
 drivers/serial/serial_imx.c                        |  116 +-
 drivers/spi/ath79_spi.c                            |    4 +-
 drivers/usb/gadget/u_serial.c                      |    3 +-
 dts/Bindings/arm/omap/l3-noc.txt                   |    1 +
 dts/Bindings/dma/fsl-mxs-dma.txt                   |    2 +-
 dts/Bindings/rtc/abracon,abx80x.txt                |   30 +
 dts/src/arm/am437x-sk-evm.dts                      |    4 +-
 dts/src/arm/am57xx-beagle-x15.dts                  |   11 +-
 dts/src/arm/armada-xp-openblocks-ax3-4.dts         |    4 +
 dts/src/arm/dra7.dtsi                              |   10 +-
 dts/src/arm/exynos4412-odroid-common.dtsi          |    3 +
 dts/src/arm/exynos5250-snow.dts                    |    1 +
 dts/src/arm/exynos5420-trip-points.dtsi            |    2 +-
 dts/src/arm/exynos5420.dtsi                        |    1 +
 dts/src/arm/exynos5440-trip-points.dtsi            |    2 +-
 dts/src/arm/imx23-olinuxino.dts                    |    4 +-
 dts/src/arm/imx25.dtsi                             |    1 +
 dts/src/arm/imx28.dtsi                             |    2 +-
 dts/src/arm/imx6qdl-phytec-pfla02.dtsi             |    2 +
 dts/src/arm/imx6qdl-sabreauto.dtsi                 |    1 -
 dts/src/arm/omap3-n900.dts                         |    4 +
 dts/src/arm/omap3.dtsi                             |    2 +
 dts/src/arm/omap5.dtsi                             |    2 +-
 dts/src/arm/r8a7791-koelsch.dts                    |    2 +-
 dts/src/arm/ste-dbx5x0.dtsi                        |   17 -
 dts/src/arm/ste-href.dtsi                          |   15 +
 dts/src/arm/ste-snowball.dts                       |   13 +
 fs/fs.c                                            |   16 +-
 images/Makefile.imx                                |   20 +-
 include/asm-generic/barebox.lds.h                  |    7 +-
 include/asm-generic/bitsperlong.h                  |   22 -
 include/asm-generic/posix_types.h                  |   90 ++
 include/asm-generic/swab.h                         |    2 +-
 include/bootsource.h                               |    1 +
 include/console.h                                  |    8 +
 include/crc.h                                      |    2 +-
 include/dhcp.h                                     |   25 +
 include/digest.h                                   |   10 +-
 include/fcntl.h                                    |    3 +-
 include/habv4.h                                    |    2 +-
 include/init.h                                     |    2 +
 include/io.h                                       |    8 -
 include/linux/clk.h                                |    2 +-
 include/linux/mod_devicetable.h                    |    7 +
 include/linux/mtd/spi-nor.h                        |  204 ++++
 include/linux/types.h                              |    8 +-
 include/of.h                                       |    1 +
 include/platform_data/cadence_qspi.h               |    9 +
 include/serial/imx-uart.h                          |  128 +++
 include/state.h                                    |    9 +-
 include/watchdog.h                                 |   17 +
 lib/bootstrap/devfs.c                              |   59 +-
 lib/gui/bmp.c                                      |   11 +-
 lib/xfuncs.c                                       |    4 -
 net/Kconfig                                        |    4 +
 net/Makefile                                       |    2 +-
 net/dhcp.c                                         |  165 ++-
 scripts/.gitignore                                 |    1 +
 scripts/Makefile.lib                               |    6 +-
 scripts/coccinelle/misc/altera_sequencer.cocci     |    3 +-
 scripts/imx/Makefile                               |    2 +
 scripts/imx/imx-image.c                            |   11 +-
 scripts/omap_signGP.c                              |    7 +
 scripts/socfpga_get_sequencer                      |    8 +
 scripts/socfpga_sequencer_defines_defaults         |    4 +
 196 files changed, 5358 insertions(+), 3047 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-com=
mon.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx51-babbage/flash-header-imx=
51-babbage-xload.imxcfg
 create mode 100644 arch/arm/configs/imx_v7-xload_defconfig
 create mode 100644 arch/arm/crypto/.gitignore
 create mode 100644 arch/arm/dts/am33xx-strip.dtsi
 create mode 100644 arch/arm/include/asm/bitsperlong.h
 create mode 100644 arch/arm/mach-imx/xload.c
 create mode 100644 arch/efi/include/asm/bitsperlong.h
 create mode 100644 arch/openrisc/include/asm/bitsperlong.h
 create mode 100644 arch/ppc/include/asm/bitsperlong.h
 create mode 100644 arch/sandbox/include/asm/bitsperlong.h
 create mode 100644 arch/x86/include/asm/bitsperlong.h
 create mode 100644 commands/dhcp.c
 create mode 100644 drivers/mtd/spi-nor/Kconfig
 create mode 100644 drivers/mtd/spi-nor/Makefile
 create mode 100644 drivers/mtd/spi-nor/cadence-quadspi.c
 create mode 100644 drivers/mtd/spi-nor/spi-nor.c
 create mode 100644 dts/Bindings/rtc/abracon,abx80x.txt
 create mode 100644 include/asm-generic/posix_types.h
 create mode 100644 include/dhcp.h
 create mode 100644 include/linux/mtd/spi-nor.h
 create mode 100644 include/platform_data/cadence_qspi.h
 create mode 100644 include/serial/imx-uart.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
