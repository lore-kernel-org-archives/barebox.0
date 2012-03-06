Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4r5C-0004er-FZ
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 09:53:28 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1S4r4x-0007gE-Lc
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 10:53:11 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1S4r4x-0002KP-KX
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 10:53:11 +0100
Date: Tue, 6 Mar 2012 10:53:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120306095311.GI3852@pengutronix.de>
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
Subject: v2012.03.0
To: barebox@lists.infradead.org


We have a release for march. Here are the changes since the last
release.


Sascha

The following changes since commit 1943a1c1014e4beca3ab970008248ff7c041da76:

  Release v2012.02.0 (2012-02-06 12:55:01 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git tags/v2012.03.0

for you to fetch changes up to 8bf69241883f46a2722a93d5198480d893a5c820:

  Release v2012.03.0 (2012-03-06 10:08:09 +0100)

----------------------------------------------------------------
Release v2012.03.0

----------------------------------------------------------------
Antony Pavlov (4):
      ns16550: support for UART with broken FIFO
      ns16550: make ns16550_serial_init_port() shorter
      ns16550: write zero to ier only once
      ns16550: fix ier selection

Asen Chavdarov Dimov (1):
      Typo fix in pm9261 init file

Jan Weitzel (1):
      fix gpmc_nand_probe without param support

Jason Kridner (1):
      USB: Remove __attribute__ ((packed)) for struct ehci_hccr and ehci_hc=
or

Jean-Christophe PLAGNIOL-VILLARD (29):
      serial: drop non used at91rm9200 driver
      at91: 9260 and 9g20 add support of join SRAM Memory Mapping
      mci_spi: specify hw_dev
      at91sam9260/9g20ek: add dfu and usb serial support
      at91sam9260/9g20ek: add led support
      at91: add spi device ressources
      at91: add default spi chipselect ressources
      dummy_malloc: add calloc support
      environment: export_/getenv_ull as inline ifndef CONFIG_ENVIRONMENT_V=
ARIABLES
      at91: add Calao TNY-A9260/TNY-A9263/TNY-A9G20
      banner: add config to disable it
      uncompress: add config to disable it
      filetype: add config to disable it
      kconfig: sync to linux 3.2-rc4
      param: add config to disable it
      driver: switch driver_d name to const char*
      at91sam9/lowlevel_init: allow to select the smc chipselect
      CMD_UNCOMPRESS: select UNCOMPRESS
      omap3: move platform lowlevel init to mach-omap
      beagle: move to arch/arm/boards/beagle
      omap3evm: move to arch/arm/boards/omap3evm
      omap343xdsp: move to arch/arm/boards/omap343xdsp
      devfs-code: fix warning
      atmel_nand: disable hardware ecc if not enable
      add config to check if the size of barebox exceed the target size
      calao/boards: specify BAREBOX_MAX_IMAGE_SIZE to 256KiB
      Revert "mtd omap nand: fix driver without CONFIG_PARAMETER"
      introduce barebox_bare_init_size to known the bare_init size and chec=
k it
      at91: specify the bare_init max size for each soc

Juergen Kilb (4):
      ARM pca-a-l1: call omap3_core_init from board code
      ARM pca-a-l1: delete platform.S
      ARM pca-a-l1: fix board_init
      ARM pca-a-l1: should depend on ARCH_OMAP3

Marc Kleine-Budde (5):
      net/nfs: increase timeout to 15 seconds
      show_progress: fix progress bar for files > 32 MiB
      defaultenv: update: add nfs support
      ARM: mx3/mx35_3ds: add missing nand device
      ARM: mx3/mx35_3ds: increase kernel partition size to 4 MiB

Robert P. J. Day (7):
      Add ARCH_OMAP[34] dependencies to Kconfig file
      DOC: Grammar and typo fixes in first_steps.dox.
      DOC: Some grammar and spelling fixes for barebox-main.dox.
      Add CONFIG_MCI_STARTUP=3Dy to BeagleBoard defconfig.
      Remove apparently superfluous Kconfig variable HAS_OMAP_NAND
      Correct Kconfig comment for MCI_OMAP_HSMMC to include OMAP3.
      Add comment explaining what cortex_a9_rev() is doing.

Roman Fietze (1):
      ARM i.MX freescale-mx35-3-stack: support 256 MiB RAM

Sanjeev Premi (6):
      ARM omap3evm: Allow building first stage bootloader
      ARM omap3evm: Enable HSMMC device
      ARM omap: Set IFT target as MLO
      Select CMD_LOADENV with DEFAULT_ENVIRONMENT
      omap3evm: Remove inclusion of non-existent header
      omap3evm: Setup ATAGs for Linux boot

Sascha Hauer (28):
      Merge branch 'master' into next
      Merge branch 'pu/jean-codesize' into next
      ARM omap3: remove OMAP3_COPY_CLOCK_SRAM
      ARM omap3 beagle xload: Move stack to SRAM
      ARM omap3: move board_init to pure_initcall
      ARM omap3: call a_init from board code
      ARM omap3 clock: move pll tables to C code
      ARM omap3: remove vector setup from lowlevel code
      ARM omap3: reimplement setup_auxcr in pure asm
      ARM cache-armv7: Add additional ISB
      mtd omap nand: fix driver without CONFIG_PARAMETER
      ARM omap3: make omap3_core.S thumb safe
      ARM pca-a-l1: fix board_init
      console: remove unused function prototypes
      kfifo: change kfifo_init to work with a preallocated fifo
      console: make it work without malloc
      ARM: panic on div 0
      initcalls: do not hang if an initcall fails
      startup: use regular debug statements in initcall debugging
      Add dump_stack function
      Merge branch 'pu/debug' into next
      ARM: Add missing ifdef around dump_stack()
      ARM omap pandaboard: update defconfig
      Merge branch 'next'
      ARM omap343xdsp: remove nonexistent include
      ARM: Fix oftree booting
      uimage: Fix error message
      Release v2012.03.0

Teresa G=E1mez (5):
      imx-ipu-fb: Add support for multiple video modes
      video imx-ipu-fb: add num_modes to imx3 boards
      imx-ipu-fb: Fix offset for IPU Clock.
      imx-ipu-fb: Add overlay support
      ARM pcm043: Add overlay support

Wolfram Sang (5):
      net: fec_imx: small cleanups
      net: fec_imx: refactor R_CNTRL setup
      net: fec_imx: enable payload length check and pause frames
      net: miidev: factor out miidev_get_status()
      net: fec_imx: configure FEC for 10Mbit when necessary

 Documentation/barebox-main.dox                     |   16 +-
 Documentation/first_steps.dox                      |    8 +-
 Makefile                                           |   16 +-
 arch/arm/Makefile                                  |   14 +-
 arch/arm/boards/at91sam9260ek/env/bin/init_board   |   41 +-
 arch/arm/boards/at91sam9260ek/init.c               |   34 +
 arch/arm/boards/at91sam9263ek/config.h             |    9 +-
 arch/arm/boards/beagle/Makefile                    |    1 +
 .../boards/{omap/board-beagle.c =3D> beagle/board.c} |    8 +-
 arch/arm/boards/{omap =3D> beagle}/config.h          |   22 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    1 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    4 +-
 arch/arm/boards/freescale-mx35-3-stack/env/config  |    5 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |   26 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   17 +-
 arch/arm/boards/guf-cupid/board.c                  |    1 +
 arch/arm/boards/mmccpu/config.h                    |   25 +-
 arch/arm/boards/omap/Makefile                      |   26 -
 arch/arm/boards/omap/env/bin/init                  |    1 -
 arch/arm/boards/omap/platform.S                    |   65 -
 arch/arm/boards/omap343xdsp/Makefile               |    1 +
 .../{omap/board-sdp343x.c =3D> omap343xdsp/board.c}  |    9 +-
 .../boards/{omap/board.h =3D> omap343xdsp/config.h}  |   22 +-
 arch/arm/boards/omap3evm/Makefile                  |    1 +
 .../{omap/board-omap3evm.c =3D> omap3evm/board.c}    |   18 +-
 arch/arm/boards/omap3evm/config.h                  |   21 +
 arch/arm/boards/pcm043/pcm043.c                    |   80 +-
 arch/arm/boards/phycard-a-l1/Makefile              |    1 -
 arch/arm/boards/phycard-a-l1/lowlevel.c            |   39 -
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    9 +-
 arch/arm/boards/phycard-a-l1/platform.S            |   65 -
 arch/arm/boards/pm9261/config.h                    |    9 +-
 arch/arm/boards/pm9261/init.c                      |    2 +-
 arch/arm/boards/pm9263/config.h                    |    9 +-
 arch/arm/boards/tny-a926x/Makefile                 |    1 +
 arch/arm/boards/tny-a926x/config.h                 |    6 +
 arch/arm/boards/tny-a926x/env/bin/init_board       |   11 +
 arch/arm/boards/tny-a926x/env/config               |   36 +
 arch/arm/boards/tny-a926x/init.c                   |  245 ++
 arch/arm/configs/at91sam9260ek_defconfig           |   20 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |   20 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    1 +
 arch/arm/configs/omap3530_beagle_xload_defconfig   |    4 +-
 arch/arm/configs/panda_defconfig                   |   18 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/phycard_a_l1_defconfig            |    1 -
 arch/arm/configs/tny_a9260_defconfig               |   71 +
 arch/arm/configs/tny_a9263_defconfig               |   71 +
 arch/arm/configs/tny_a9g20_defconfig               |   71 +
 arch/arm/configs/usb_a9260_defconfig               |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig        |    1 +
 arch/arm/configs/usb_a9263_defconfig               |    1 +
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    1 +
 arch/arm/configs/usb_a9g20_defconfig               |    1 +
 arch/arm/cpu/cache-armv7.S                         |    1 +
 arch/arm/cpu/interrupts.c                          |    7 +
 arch/arm/include/asm/barebox.h                     |   39 +-
 arch/arm/lib/armlinux.c                            |    1 +
 arch/arm/lib/barebox.lds.S                         |    3 +
 arch/arm/lib/div0.c                                |    2 +-
 arch/arm/mach-at91/Kconfig                         |   31 +
 arch/arm/mach-at91/at91rm9200_devices.c            |   44 +
 arch/arm/mach-at91/at91sam9260_devices.c           |   74 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   62 +
 arch/arm/mach-at91/at91sam9263_devices.c           |   63 +
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |    8 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   39 +-
 arch/arm/mach-at91/include/mach/at91sam9260.h      |    4 +
 arch/arm/mach-imx/Kconfig                          |   10 -
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h        |    2 +
 arch/arm/mach-omap/Kconfig                         |   26 +-
 arch/arm/mach-omap/Makefile                        |    4 +-
 arch/arm/mach-omap/auxcr.S                         |   33 +
 arch/arm/mach-omap/include/mach/omap3-clock.h      |   10 -
 arch/arm/mach-omap/include/mach/silicon.h          |    4 +-
 arch/arm/mach-omap/omap3_clock.c                   |  212 +-
 arch/arm/mach-omap/omap3_clock_core.S              |  426 ----
 arch/arm/mach-omap/omap3_core.S                    |   64 +-
 arch/arm/mach-omap/omap3_generic.c                 |   22 +-
 arch/arm/mach-omap/omap4_generic.c                 |    1 +
 arch/mips/lib/barebox.lds.S                        |    3 +
 arch/nios2/cpu/barebox.lds.S                       |    3 +
 arch/x86/lib/barebox.lds.S                         |    3 +
 commands/Kconfig                                   |    4 +
 commands/bootm.c                                   |    2 +-
 common/Kconfig                                     |   26 +
 common/Makefile                                    |    4 +-
 common/console.c                                   |   49 +-
 common/dummy_malloc.c                              |   12 +
 common/startup.c                                   |   10 +-
 defaultenv/bin/_update                             |   11 +-
 defaultenv/bin/_update_help                        |   10 +-
 defaultenv/bin/update                              |    2 +-
 drivers/mci/Kconfig                                |    4 +-
 drivers/mci/mci_spi.c                              |    1 +
 drivers/mtd/core.c                                 |   18 +-
 drivers/mtd/nand/atmel_nand.c                      |    6 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    3 +
 drivers/net/fec_imx.c                              |   44 +-
 drivers/net/fec_imx.h                              |   14 -
 drivers/net/miidev.c                               |   65 +-
 drivers/serial/serial_at91rm9200.c                 |  110 -
 drivers/serial/serial_ns16550.c                    |   29 +-
 drivers/usb/host/ehci.h                            |    4 +-
 drivers/video/Kconfig                              |    4 +
 drivers/video/imx-ipu-fb.c                         |  169 ++-
 fs/devfs-core.c                                    |    3 +-
 include/asm-generic/barebox.lds.h                  |   15 +
 include/asm-generic/sections.h                     |    3 +
 include/common.h                                   |   13 +
 include/console.h                                  |   13 -
 include/driver.h                                   |    2 +-
 include/environment.h                              |   10 +-
 include/kfifo.h                                    |    2 +-
 include/linux/kconfig.h                            |   32 +
 include/miidev.h                                   |    5 +
 include/ns16550.h                                  |    2 +
 include/param.h                                    |   53 +
 include/usb/usb.h                                  |    2 +-
 lib/Kconfig                                        |    9 +
 lib/Makefile                                       |    4 +-
 lib/kfifo.c                                        |   23 +-
 lib/lzo/Kconfig                                    |    2 +-
 lib/show_progress.c                                |    8 +-
 lib/vsprintf.c                                     |    2 +
 net/nfs.c                                          |    2 +-
 scripts/kconfig/Makefile                           |  113 +-
 scripts/kconfig/conf.c                             |   50 +-
 scripts/kconfig/confdata.c                         |  334 ++-
 scripts/kconfig/expr.c                             |   13 +-
 scripts/kconfig/expr.h                             |    7 -
 scripts/kconfig/gconf.c                            |   50 +-
 scripts/kconfig/kxgettext.c                        |    1 -
 scripts/kconfig/lkc.h                              |   18 +-
 scripts/kconfig/lkc_proto.h                        |    1 +
 scripts/kconfig/lxdialog/BIG.FAT.WARNING           |    2 +-
 scripts/kconfig/lxdialog/textbox.c                 |    3 +-
 scripts/kconfig/mconf.c                            |   86 +-
 scripts/kconfig/menu.c                             |   18 +-
 scripts/kconfig/nconf.c                            |   67 +-
 scripts/kconfig/nconf.gui.c                        |   59 +-
 scripts/kconfig/nconf.h                            |    2 +-
 scripts/kconfig/qconf.cc                           |   22 +-
 scripts/kconfig/qconf.h                            |    2 +-
 scripts/kconfig/streamline_config.pl               |   38 +-
 scripts/kconfig/symbol.c                           |   47 +-
 scripts/kconfig/util.c                             |    2 +
 scripts/kconfig/zconf.gperf                        |    2 +-
 scripts/kconfig/zconf.hash.c_shipped               |  273 ++-
 scripts/kconfig/zconf.l                            |   44 +-
 scripts/kconfig/zconf.lex.c                        | 2420 ++++++++++++++++=
++++
 scripts/kconfig/zconf.lex.c_shipped                | 2420 ++++++++++++++++=
++++
 scripts/kconfig/zconf.tab.c_shipped                |   69 +-
 scripts/kconfig/zconf.y                            |   19 +-
 154 files changed, 7463 insertions(+), 1935 deletions(-)
 create mode 100644 arch/arm/boards/beagle/Makefile
 rename arch/arm/boards/{omap/board-beagle.c =3D> beagle/board.c} (98%)
 rename arch/arm/boards/{omap =3D> beagle}/config.h (55%)
 delete mode 100644 arch/arm/boards/omap/Makefile
 delete mode 100644 arch/arm/boards/omap/env/bin/init
 delete mode 100644 arch/arm/boards/omap/platform.S
 create mode 100644 arch/arm/boards/omap343xdsp/Makefile
 rename arch/arm/boards/{omap/board-sdp343x.c =3D> omap343xdsp/board.c} (99=
%)
 rename arch/arm/boards/{omap/board.h =3D> omap343xdsp/config.h} (55%)
 create mode 100644 arch/arm/boards/omap3evm/Makefile
 rename arch/arm/boards/{omap/board-omap3evm.c =3D> omap3evm/board.c} (94%)
 create mode 100644 arch/arm/boards/omap3evm/config.h
 delete mode 100644 arch/arm/boards/phycard-a-l1/lowlevel.c
 delete mode 100644 arch/arm/boards/phycard-a-l1/platform.S
 create mode 100644 arch/arm/boards/tny-a926x/Makefile
 create mode 100644 arch/arm/boards/tny-a926x/config.h
 create mode 100644 arch/arm/boards/tny-a926x/env/bin/init_board
 create mode 100644 arch/arm/boards/tny-a926x/env/config
 create mode 100644 arch/arm/boards/tny-a926x/init.c
 create mode 100644 arch/arm/configs/tny_a9260_defconfig
 create mode 100644 arch/arm/configs/tny_a9263_defconfig
 create mode 100644 arch/arm/configs/tny_a9g20_defconfig
 create mode 100644 arch/arm/mach-omap/auxcr.S
 delete mode 100644 arch/arm/mach-omap/omap3_clock_core.S
 delete mode 100644 drivers/serial/serial_at91rm9200.c
 create mode 100644 include/linux/kconfig.h
 create mode 100644 scripts/kconfig/zconf.lex.c
 create mode 100644 scripts/kconfig/zconf.lex.c_shipped
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
