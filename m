Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCTJI-0006IK-KI
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 09:35:17 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1RCTJB-0000Ft-6L
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 11:35:05 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1RCTJB-00039Y-4z
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 11:35:05 +0200
Date: Sat, 8 Oct 2011 11:35:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111008093505.GG31404@pengutronix.de>
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
Subject: v2011.10.0
To: barebox@lists.infradead.org


Hi all,

v201.10.0 is out. Most notable change is the shiny new MIPS support.
Thanks Antony.

Sascha

Antony Pavlov (18):
      MIPS: initial commit: add empty but required header files
      MIPS: import libgcc-related files from linux-2.6.39
      MIPS: import header files
      MIPS: add common MIPS stuff
      MIPS: add documentation
      MIPS: add Malta machine support to barebox
      MIPS: add qemu malta board support to barebox
      MIPS: add qemu-malta documentation
      MIPS: add initial BCM47xx-based boards support
      MIPS: add initial D-Link DIR-320 wireless router support
      MIPS: add D-Link DIR-320 documentation
      MIPS: add draft cpuinfo command
      remove LOADS_BAUD_CHANGE from broken commands/loads.c
      commands/loads.c: make it compile again
      commands/loads.c: fix compiler's warning
      commands/loads.c: make do_* functions static
      commands/loads.c: fix whitespace errors & formatting
      usb.c: warning on USB_MAXINTERFACES overflow

Franck Jullien (2):
      nios2: Add Altera SPI master driver
      nor: Add SPI flash driver

Hubert Feurstein (2):
      at91: add spi clock connection id entries
      at91: add missing clkdev changes

Jean-Christophe PLAGNIOL-VILLARD (1):
      login: add timeout support

Juergen Kilb (1):
      Corrected ns16550 access at all omap based boards.

Paul Fertser (1):
      login: correct a typo in command description

Sascha Hauer (32):
      ARM: add missing volatile in get_cr()
      ARM mmu: fix arm_create_pte
      ARM mmu: use high vectors if possible
      ARM: remove unused exception
      ARM: exceptions: remove unnecessary function declarations
      ARM: remove unused irq enable/disable functions
      ARM: fix comments in interrupts.c
      ARM: some cleanup in interrupts.c
      Merge branch 'master' into next
      mci: embed mci_dev into mci_host instead of allocating it seperately
      net: make the ethernet device a child of the hardware device
      net mii: add a parent pointer to miidevs and set it to the hardware d=
evice
      console: make console device a child of the hardware device
      mci: parent fixups
      spi: make the spi devices children of the parent bus
      devinfo: beautify output
      Merge branch 'pu' into next
      put env_push_context into postcore_initcall
      ARM i.MX25/35: initialize barebox_loc earlier
      ARM i.MX51: set barebox_loc according to boot source
      ARM linux: support Linux images with CONFIG_AUTO_ZRELADDR
      put env_push_context into postcore_initcall
      ARM i.MX25/35: initialize barebox_loc earlier
      ARM i.MX51: set barebox_loc according to boot source
      Merge branch 'pu-env' into next
      ARM i.MX27: Add spi2 support
      ARM i.MX51: fix SD1/2 iomux pads
      ARM i.MX51: setup SD1/2 iomux pins
      Merge branch 'next'
      ARM nomadik: Add missing include
      sandbox: make asm/io.h nonempty
      Release v2011.10.0

Teresa G=E1mez (3):
      ARM pcm043: New NOR Flash CS0 values
      cfi_flash: support of u32 cmd
      cmd: CMD_UBI depends on UBI

Wolfram Sang (2):
      mci: mxs: fix 'use resources' conversion
      include: list: add include because we need NULL

shc@milas.spb.ru (1):
      I2C support to PCM-038 board

 Documentation/boards.dox                         |    6 +
 Makefile                                         |    2 +-
 arch/architecture.dox                            |    1 +
 arch/arm/boards/freescale-mx51-pdk/board.c       |   17 +
 arch/arm/boards/omap/board-beagle.c              |    1 +
 arch/arm/boards/omap/board-omap3evm.c            |    1 +
 arch/arm/boards/omap/board-sdp343x.c             |    1 +
 arch/arm/boards/panda/board.c                    |    1 +
 arch/arm/boards/pcm038/pcm038.c                  |   11 +
 arch/arm/boards/pcm043/pcm043.c                  |   10 +-
 arch/arm/boards/pcm049/board.c                   |    1 +
 arch/arm/cpu/exceptions.S                        |    5 -
 arch/arm/cpu/interrupts.c                        |  105 +--
 arch/arm/cpu/mmu.c                               |   39 +-
 arch/arm/cpu/start.c                             |    2 +-
 arch/arm/include/asm/system.h                    |    2 +-
 arch/arm/lib/bootz.c                             |   59 +-
 arch/arm/mach-at91/at91sam9260.c                 |    7 +
 arch/arm/mach-at91/at91sam9260_devices.c         |    1 -
 arch/arm/mach-at91/at91sam9261.c                 |    7 +
 arch/arm/mach-at91/at91sam9263.c                 |    2 +
 arch/arm/mach-at91/at91sam9g45.c                 |    5 +-
 arch/arm/mach-at91/at91sam9g45_devices.c         |    7 +-
 arch/arm/mach-imx/boot.c                         |    8 +-
 arch/arm/mach-imx/imx51.c                        |   87 ++
 arch/arm/mach-imx/include/mach/devices-imx27.h   |   10 +
 arch/arm/mach-imx/include/mach/imx27-regs.h      |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx51.h      |   28 +-
 arch/arm/mach-nomadik/8815.c                     |    1 +
 arch/mips/Kconfig                                |  227 ++++++
 arch/mips/Makefile                               |  105 +++
 arch/mips/boards/dlink-dir-320/Kconfig           |    6 +
 arch/mips/boards/dlink-dir-320/Makefile          |    1 +
 arch/mips/boards/dlink-dir-320/config.h          |   19 +
 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox |   38 +
 arch/mips/boards/dlink-dir-320/serial.c          |   43 +
 arch/mips/boards/qemu-malta/Kconfig              |    6 +
 arch/mips/boards/qemu-malta/Makefile             |    1 +
 arch/mips/boards/qemu-malta/config.h             |   19 +
 arch/mips/boards/qemu-malta/qemu-malta.dox       |   15 +
 arch/mips/boards/qemu-malta/serial.c             |   43 +
 arch/mips/boot/Makefile                          |    1 +
 arch/mips/boot/start.S                           |  143 ++++
 arch/mips/configs/dlink-dir-320_defconfig        |   58 ++
 arch/mips/configs/qemu-malta_defconfig           |   57 ++
 arch/mips/include/asm/asm.h                      |  409 ++++++++++
 arch/mips/include/asm/barebox.h                  |   24 +
 arch/mips/include/asm/bitops.h                   |   32 +
 arch/mips/include/asm/bitsperlong.h              |    8 +
 arch/mips/include/asm/byteorder.h                |   19 +
 arch/mips/include/asm/common.h                   |   29 +
 arch/mips/include/asm/elf.h                      |   52 ++
 arch/mips/include/asm/io.h                       |   74 ++
 arch/mips/include/asm/mipsregs.h                 |  948 ++++++++++++++++++=
++++
 arch/mips/include/asm/module.h                   |   24 +
 arch/mips/include/asm/posix_types.h              |  144 ++++
 arch/mips/include/asm/regdef.h                   |  100 +++
 arch/mips/include/asm/sections.h                 |    1 +
 arch/mips/include/asm/sgidefs.h                  |   44 +
 arch/mips/include/asm/string.h                   |   31 +
 arch/mips/include/asm/swab.h                     |   59 ++
 arch/mips/include/asm/types.h                    |   59 ++
 arch/mips/include/asm/unaligned.h                |   28 +
 arch/mips/lib/.gitignore                         |    1 +
 arch/mips/lib/Makefile                           |    8 +
 arch/mips/lib/ashldi3.c                          |   28 +
 arch/mips/lib/ashrdi3.c                          |   30 +
 arch/mips/lib/barebox.lds.S                      |   76 ++
 arch/mips/lib/cpuinfo.c                          |   38 +
 arch/mips/lib/csrc-r4k.c                         |   48 ++
 arch/mips/lib/libgcc.h                           |   25 +
 arch/mips/lib/lshrdi3.c                          |   28 +
 arch/mips/lib/memory.c                           |   32 +
 arch/mips/mach-bcm47xx/Kconfig                   |   17 +
 arch/mips/mach-bcm47xx/Makefile                  |    1 +
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h   |   40 +
 arch/mips/mach-bcm47xx/include/mach/hardware.h   |   32 +
 arch/mips/mach-bcm47xx/mach-bcm47xx.dox          |    7 +
 arch/mips/mach-bcm47xx/reset.c                   |   36 +
 arch/mips/mach-malta/Kconfig                     |   17 +
 arch/mips/mach-malta/Makefile                    |    1 +
 arch/mips/mach-malta/include/mach/debug_ll.h     |   40 +
 arch/mips/mach-malta/include/mach/hardware.h     |   32 +
 arch/mips/mach-malta/mach-malta.dox              |    7 +
 arch/mips/mach-malta/reset.c                     |   36 +
 arch/mips/mach-mips.dox                          |   61 ++
 arch/nios2/include/asm/spi.h                     |   21 +
 arch/sandbox/include/asm/io.h                    |    1 +
 commands/Kconfig                                 |    3 +-
 commands/Makefile                                |    1 -
 commands/loads.c                                 |  294 ++-----
 commands/login.c                                 |   26 +-
 commands/passwd.c                                |    4 +-
 common/Makefile                                  |    1 +
 common/console.c                                 |    2 +
 common/env.c                                     |    2 +-
 common/password.c                                |   87 ++-
 drivers/base/driver.c                            |   27 +-
 drivers/mci/atmel_mci.c                          |    1 +
 drivers/mci/imx-esdhc.c                          |    1 +
 drivers/mci/imx.c                                |    1 +
 drivers/mci/mci-core.c                           |    9 +-
 drivers/mci/mxs.c                                |    2 +-
 drivers/mci/omap_hsmmc.c                         |    1 +
 drivers/net/altera_tse.c                         |    2 +
 drivers/net/at91_ether.c                         |    1 +
 drivers/net/cs8900.c                             |    1 +
 drivers/net/dm9000.c                             |    2 +
 drivers/net/ep93xx.c                             |    2 +
 drivers/net/fec_imx.c                            |    2 +
 drivers/net/fec_mpc5200.c                        |    2 +
 drivers/net/macb.c                               |    2 +
 drivers/net/miidev.c                             |    2 +
 drivers/net/netx_eth.c                           |    2 +
 drivers/net/smc91111.c                           |    2 +
 drivers/net/smc911x.c                            |    2 +
 drivers/net/usb/asix.c                           |    1 +
 drivers/net/usb/smsc95xx.c                       |    1 +
 drivers/net/usb/usbnet.c                         |    1 +
 drivers/nor/Kconfig                              |   41 +-
 drivers/nor/Makefile                             |    1 +
 drivers/nor/cfi_flash.c                          |   35 +-
 drivers/nor/cfi_flash.h                          |   11 +-
 drivers/nor/cfi_flash_amd.c                      |    8 +-
 drivers/nor/cfi_flash_intel.c                    |    2 +-
 drivers/nor/m25p80.c                             |  818 +++++++++++++++++++
 drivers/nor/m25p80.h                             |   90 ++
 drivers/spi/Kconfig                              |    5 +
 drivers/spi/Makefile                             |    1 +
 drivers/spi/altera_spi.c                         |  227 ++++++
 drivers/spi/spi.c                                |    1 +
 drivers/usb/core/usb.c                           |   10 +
 include/asm-generic/int-ll64.h                   |   78 ++
 include/linux/list.h                             |    2 +
 include/mci.h                                    |    1 +
 include/miidev.h                                 |    1 +
 include/net.h                                    |    1 +
 include/password.h                               |    2 +-
 include/spi/flash.h                              |   30 +
 net/eth.c                                        |    4 +
 140 files changed, 5377 insertions(+), 437 deletions(-)
 create mode 100644 arch/mips/Kconfig
 create mode 100644 arch/mips/Makefile
 create mode 100644 arch/mips/boards/dlink-dir-320/Kconfig
 create mode 100644 arch/mips/boards/dlink-dir-320/Makefile
 create mode 100644 arch/mips/boards/dlink-dir-320/config.h
 create mode 100644 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
 create mode 100644 arch/mips/boards/dlink-dir-320/serial.c
 create mode 100644 arch/mips/boards/qemu-malta/Kconfig
 create mode 100644 arch/mips/boards/qemu-malta/Makefile
 create mode 100644 arch/mips/boards/qemu-malta/config.h
 create mode 100644 arch/mips/boards/qemu-malta/qemu-malta.dox
 create mode 100644 arch/mips/boards/qemu-malta/serial.c
 create mode 100644 arch/mips/boot/Makefile
 create mode 100644 arch/mips/boot/start.S
 create mode 100644 arch/mips/configs/dlink-dir-320_defconfig
 create mode 100644 arch/mips/configs/qemu-malta_defconfig
 create mode 100644 arch/mips/include/asm/asm.h
 create mode 100644 arch/mips/include/asm/barebox.h
 create mode 100644 arch/mips/include/asm/bitops.h
 create mode 100644 arch/mips/include/asm/bitsperlong.h
 create mode 100644 arch/mips/include/asm/byteorder.h
 create mode 100644 arch/mips/include/asm/common.h
 create mode 100644 arch/mips/include/asm/elf.h
 create mode 100644 arch/mips/include/asm/io.h
 create mode 100644 arch/mips/include/asm/mipsregs.h
 create mode 100644 arch/mips/include/asm/module.h
 create mode 100644 arch/mips/include/asm/posix_types.h
 create mode 100644 arch/mips/include/asm/regdef.h
 create mode 100644 arch/mips/include/asm/sections.h
 create mode 100644 arch/mips/include/asm/sgidefs.h
 create mode 100644 arch/mips/include/asm/string.h
 create mode 100644 arch/mips/include/asm/swab.h
 create mode 100644 arch/mips/include/asm/types.h
 create mode 100644 arch/mips/include/asm/unaligned.h
 create mode 100644 arch/mips/lib/.gitignore
 create mode 100644 arch/mips/lib/Makefile
 create mode 100644 arch/mips/lib/ashldi3.c
 create mode 100644 arch/mips/lib/ashrdi3.c
 create mode 100644 arch/mips/lib/barebox.lds.S
 create mode 100644 arch/mips/lib/cpuinfo.c
 create mode 100644 arch/mips/lib/csrc-r4k.c
 create mode 100644 arch/mips/lib/libgcc.h
 create mode 100644 arch/mips/lib/lshrdi3.c
 create mode 100644 arch/mips/lib/memory.c
 create mode 100644 arch/mips/mach-bcm47xx/Kconfig
 create mode 100644 arch/mips/mach-bcm47xx/Makefile
 create mode 100644 arch/mips/mach-bcm47xx/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-bcm47xx/include/mach/hardware.h
 create mode 100644 arch/mips/mach-bcm47xx/mach-bcm47xx.dox
 create mode 100644 arch/mips/mach-bcm47xx/reset.c
 create mode 100644 arch/mips/mach-malta/Kconfig
 create mode 100644 arch/mips/mach-malta/Makefile
 create mode 100644 arch/mips/mach-malta/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-malta/include/mach/hardware.h
 create mode 100644 arch/mips/mach-malta/mach-malta.dox
 create mode 100644 arch/mips/mach-malta/reset.c
 create mode 100644 arch/mips/mach-mips.dox
 create mode 100644 arch/nios2/include/asm/spi.h
 create mode 100644 drivers/nor/m25p80.c
 create mode 100644 drivers/nor/m25p80.h
 create mode 100644 drivers/spi/altera_spi.c
 create mode 100644 include/asm-generic/int-ll64.h
 create mode 100644 include/spi/flash.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
