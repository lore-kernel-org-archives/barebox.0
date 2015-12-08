Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6CAO-0003mH-FG
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 06:54:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1a6CA2-00021E-Rw
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 07:54:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1a6CA2-0000Hm-IC
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 07:54:06 +0100
Date: Tue, 8 Dec 2015 07:54:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151208065406.GN11966@pengutronix.de>
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
Subject: v2015.12.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

We have a release for December. It contains a lot of nice cleanups and
fixes.

One nice thing is that with this release the multiimage generation has
become more consistent. With multiimage support the barebox-flash-image
link will now point to a non existing file indicating we have multiimage
support and additionally a list of generated images is created under
barebox-flash-images. This should help distributions (and humans) to
pick the correct file.

For everything else see below.

Have a nice christmas time

Sascha

----------------------------------------------------------------
Aleksey Kuleshov (3):
      fbconsole: no need to copy extra line
      fb: satisfy semantics for shadowfb's alloc/free
      fb: alloc or free shadowfb whether fb enabled or disabled

Alexander Aring (2):
      loadb: add missing brackets in help
      checkpatch: fix left brace warning

Andrey Smirnov (10):
      freescale-mx6-sabresd: Add CONFIG_DEBUG_LL support
      memtest.c: Print iterations count if -i is 0
      arm: Disable unaligned accesses
      common/command.c: Replace magic number with appropriate constant
      common/parser.c: Do not conflate error reporting disciplines
      common/parser.c: Do not treat zero return code as error
      ARM: Add support for semihosting
      arm/cpu/start.c: Distil some common code in __start().
      arm/cpu: Avoid multiple definitions of barebox_arm_entry
      fs: smhfs: Fix return value of truncate()

Anton Bondarenko (4):
      embedsky-e9: cleanup and reorder DTS nodes
      net: phy: wait for link OK after successfull autonegotiation
      embedsky-e9: enable barebox_update command for booter update
      images: Embedsky E9: use image name like the rest of boards

Antony Pavlov (11):
      commands: add clk_get_rate command
      clock.h: include <types.h> under guard macro
      commands: clk_dump: use COMMAND_SUCCESS instead of 0 return code
      MIPS: ath79: add pbl_ar9331_ddr2_config macro
      MIPS: ath79: add pbl_ar9331_uart_enable macro
      MIPS: ath79: add debug_ll_ar9331_init macro
      MIPS: ath79: add black-swift board support
      MIPS: ath79: add black-swift_defconfig
      MIPS: ath79: add pbl_ar9331_ddr1_config macro
      MIPS: tplink-mr3020: add pbl low level init
      MIPS: tplink-mr3020_defconfig: enable pbl; make image shorter

Enrico Jorns (2):
      edit: handle write() call errors in save_file()
      edit: return error when save_file failed

Eric Nelson (2):
      imx6-mmdc: fix automatic power down enable in write level calibration
      imx6-mmdc: restore RALAT/WALAT in MMDC0, not MMDC1

Jan Remmet (1):
      net: eth: Remove ethaddr_param

Lucas Stach (5):
      ARM: l2x0: correct indentation
      ARM: l2x0: move outer cache flush on disable to user
      ARM: imx6: use l2x0 header for register definitions
      ARM: imx6: set shared attribute override bit in PL310
      ARM: imx6: add OF fixup to delete nonexistent CPU cores

Marek Vasut (1):
      imx6-mmdc: Fix MAPSR usage

Michael Grzeschik (1):
      ARM: i.MX6: add Technexion Wandboard support

Oleksij Rempel (1):
      MIPS: ath79: add pbl_ar9331_pll macro

Peter Mamonov (5):
      input: usb_kbd: skip poll on -EAGAIN error
      usb: core: return -EAGAIN on usb_* functions reentrance
      ata: disk_ata_drive: remove obsolete check for ID validity
      mips: c-r4k: detect secondary cache
      mips: cpuinfo: report secondary cache configuration

Robert Jarzmik (2):
      net: smc1111: fix ethernet mac setting
      ARM: pxa: pxa2xx use PSPR for resume address

Sascha Hauer (39):
      Revert "usb: ehci-hcd: use mdelay_non_interruptible()"
      Revert "usb: ehci-hcd: detect re-entrance"
      usb: ehci-hcd: Use regular mdelay()
      fs: devfs: Allow mounting only on /dev/
      fs: devfs: Allow mount path in cdev_open
      filetype: Use cdev_open
      fs: pass path directly to cdev_open
      logo: Makefile: remove debug output
      scripts/kwbimage: Move configfile opening to the function that reads =
it
      scripts/kwbimage: Make BINARY files relative to config file
      ARM: mvebu: Lenovo IX4 300D: Fix pblb generation
      of_dump: Add option to print node names only
      memtest: move request/release regions to common/
      ARM: Eltec-hypercam: Add missing dcdofd in flash header
      ARM: Allow compressed dtb binaries
      ARM: i.MX6dl: dts: include arm/imx6dl.dtsi from board files
      video: ipuv3: Silence VPL message
      rework remap_range
      memtest: split tests in separate functions
      memtest: Make output more compact
      memtest: Make comments single line when appropriate
      memtest: move ctrlc check / progress showing into separate function
      memtest: move error handling to end of function
      memtest: By default only test biggest region
      memtest: Make cached/uncached test configurable
      Merge branch 'for-next/arm'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/memtest'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/net'
      Merge branch 'for-next/usb'
      ARM: calculate compressed dtb len correctly
      pbl: console: Use console_putc to output the carriage return
      ARM: Fix bug in remap_range
      mtd: core: initialize *retlen in mtd_write()
      Revert "memtest: move error handling to end of function"
      Release v2015.12.0

Sebastian Hesselbarth (2):
      clk: mvebu: Add corediv clock driver for Armada 370/XP
      net: mvneta: add Armada XP compatible

Teresa Remmet (2):
      dts: phyFLEX-AM335x: Disable second ethernet interface
      ARM: am335x_defconfig: Enable SMSC phy driver

Trent Piepho (5):
      net: eth: Refactor OF tree fixup of one node into new function
      net: eth: Fixup OF tree with registered MAC addresses too
      Make list of flash images and fix link all single image cases
      mci: Print versions with micro levels correctly
      omap socfpga: Switch in flash env loading to use different config

Uwe Kleine-K=F6nig (1):
      usb: mx25: fix bit position of "Host power mask"

 Documentation/filesystems/smhfs.rst                |  57 ++++
 Makefile                                           |   7 +-
 arch/arm/Kconfig                                   |  14 +
 arch/arm/Makefile                                  |   7 +
 arch/arm/boards/Makefile                           |   1 +
 .../flash-header-eltec-hipercam.imxcfg             |   1 +
 arch/arm/boards/embedsky-e9/board.c                |   8 +
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  22 ++
 arch/arm/boards/globalscale-mirabox/kwbimage.cfg   |   2 +-
 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg       |   2 +-
 arch/arm/boards/lubbock/lowlevel.c                 |   2 +-
 arch/arm/boards/mainstone/lowlevel.c               |   2 +-
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg  |   2 +-
 .../boards/plathome-openblocks-ax3/kwbimage.cfg    |   2 +-
 arch/arm/boards/technexion-wandboard/Makefile      |   3 +
 arch/arm/boards/technexion-wandboard/board.c       |  78 +++++
 .../boards/technexion-wandboard/env/boot/mmc2.1    |   3 +
 .../technexion-wandboard/env/init/bootsource       |   7 +
 .../flash-header-technexion-wandboard.imxcfg       |   3 +
 arch/arm/boards/technexion-wandboard/lowlevel.c    | 356 +++++++++++++++++=
++++
 arch/arm/configs/am335x_defconfig                  |   2 +-
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/cpu/Makefile                              |   4 +-
 arch/arm/cpu/cache-l2x0.c                          |   6 +-
 arch/arm/cpu/cpu.c                                 |   4 +-
 arch/arm/cpu/entry.c                               |  38 +++
 arch/arm/cpu/entry.h                               |  18 ++
 arch/arm/cpu/mmu.c                                 |  42 ++-
 arch/arm/cpu/start-pbl.c                           |  29 +-
 arch/arm/cpu/start.c                               | 131 +++++---
 arch/arm/cpu/uncompress.c                          |  16 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi        |   5 +-
 arch/arm/dts/imx6dl-cm-fx6.dts                     |   1 +
 arch/arm/dts/imx6dl-dfi-fs700-m60-6s.dts           |   1 +
 arch/arm/dts/imx6dl-eltec-hipercam.dts             |   1 +
 arch/arm/dts/imx6dl-nitrogen6x.dts                 |   1 +
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi             |   1 +
 arch/arm/dts/imx6dl-sabrelite.dts                  |   1 +
 arch/arm/dts/imx6dl-tqma6s.dtsi                    |   1 +
 arch/arm/dts/imx6dl-wandboard.dts                  |  37 +++
 arch/arm/dts/imx6dl.dtsi                           |   1 -
 arch/arm/dts/imx6q-embedsky-e9.dtsi                |  78 ++---
 arch/arm/dts/imx6q-wandboard.dts                   |  37 +++
 arch/arm/dts/imx6s-phytec-pfla02.dtsi              |   1 +
 arch/arm/dts/imx6s-riotboard.dts                   |   1 +
 arch/arm/include/asm/barebox-arm.h                 |   9 +
 arch/arm/include/asm/mmu.h                         |  23 +-
 arch/arm/include/asm/semihosting.h                 |  19 ++
 arch/arm/lib/Makefile                              |   1 +
 arch/arm/lib/semihosting-trap.S                    |  28 ++
 arch/arm/lib/semihosting.c                         | 227 +++++++++++++
 arch/arm/mach-imx/Kconfig                          |   5 +
 arch/arm/mach-imx/imx6-mmdc.c                      |   8 +-
 arch/arm/mach-imx/imx6.c                           |  59 +++-
 arch/arm/mach-omap/omap_generic.c                  |  10 +-
 arch/arm/mach-socfpga/generic.c                    |  10 +-
 arch/blackfin/include/asm/mmu.h                    |  14 +-
 arch/mips/Makefile                                 |   1 +
 arch/mips/boards/black-swift/Makefile              |   1 +
 arch/mips/boards/black-swift/board.c               |  27 ++
 .../black-swift/include/board/board_pbl_start.h    |  41 +++
 .../tplink-mr3020/include/board/board_pbl_start.h  |   6 +
 arch/mips/configs/black-swift_defconfig            |  46 +++
 arch/mips/configs/tplink-mr3020_defconfig          |   3 +
 arch/mips/dts/black-swift.dts                      |  34 ++
 arch/mips/include/asm/mmu.h                        |  14 +-
 arch/mips/include/asm/pbl_macros.h                 |  32 ++
 arch/mips/lib/c-r4k.c                              |  31 ++
 arch/mips/lib/cpu-probe.c                          |   2 -
 arch/mips/lib/cpuinfo.c                            |  11 +-
 arch/mips/mach-ath79/Kconfig                       |   6 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  24 ++
 arch/mips/mach-ath79/include/mach/debug_ll.h       |  29 ++
 arch/mips/mach-ath79/include/mach/pbl_macros.h     | 182 +++++++++++
 arch/nios2/include/asm/mmu.h                       |  14 +-
 arch/openrisc/include/asm/mmu.h                    |  14 +-
 arch/ppc/cpu-85xx/mmu.c                            |  26 +-
 arch/ppc/include/asm/mmu.h                         |  24 +-
 arch/sandbox/include/asm/mmu.h                     |  14 +-
 arch/x86/include/asm/mmu.h                         |  14 +-
 commands/clk.c                                     |  59 +++-
 commands/edit.c                                    |  20 +-
 commands/loadb.c                                   |   4 +-
 commands/memtest.c                                 | 210 +++++-------
 commands/of_dump.c                                 |  21 +-
 common/command.c                                   |   2 +-
 common/filetype.c                                  |   4 +-
 common/memtest.c                                   | 236 +++++++++-----
 common/parser.c                                    |  18 +-
 drivers/ata/disk_ata_drive.c                       |  17 -
 drivers/clk/mvebu/Makefile                         |   4 +-
 drivers/clk/mvebu/corediv.c                        | 262 +++++++++++++++
 drivers/input/usb_kbd.c                            |   7 +-
 drivers/mci/mci-core.c                             |   9 +-
 drivers/mtd/core.c                                 |   2 +
 drivers/net/mvneta.c                               |   1 +
 drivers/net/phy/phy.c                              |  13 +-
 drivers/net/smc91111.c                             |   2 +-
 drivers/usb/core/usb.c                             |  40 ++-
 drivers/usb/host/ehci-hcd.c                        |  52 +--
 drivers/usb/imx/imx-usb-misc.c                     |   2 +-
 drivers/video/fb.c                                 |  15 +-
 drivers/video/fbconsole.c                          |   3 +-
 drivers/video/imx-ipu-fb.c                         |   5 +-
 drivers/video/imx-ipu-v3/ipufb.c                   |   2 +-
 drivers/video/omap.c                               |   5 +-
 drivers/video/stm.c                                |   5 +-
 fs/Kconfig                                         |   9 +
 fs/Makefile                                        |   1 +
 fs/devfs-core.c                                    |   6 +-
 fs/devfs.c                                         |   7 +
 fs/fs.c                                            |   9 +-
 fs/smhfs.c                                         | 178 +++++++++++
 images/Makefile                                    |  18 +-
 images/Makefile.imx                                |   9 +-
 images/Makefile.mvebu                              |   2 +-
 include/clock.h                                    |   3 +-
 include/memtest.h                                  |   8 +-
 include/mmu.h                                      |  41 +++
 include/net.h                                      |   1 -
 include/usb/usb.h                                  |   1 +
 lib/logo/Makefile                                  |   1 -
 net/eth.c                                          |  76 +++--
 pbl/console.c                                      |   2 +-
 scripts/checkpatch.pl                              |   8 +-
 scripts/gen-dtb-s                                  |  19 ++
 scripts/kwbimage.c                                 |  51 +--
 128 files changed, 2805 insertions(+), 712 deletions(-)
 create mode 100644 Documentation/filesystems/smhfs.rst
 create mode 100644 arch/arm/boards/technexion-wandboard/Makefile
 create mode 100644 arch/arm/boards/technexion-wandboard/board.c
 create mode 100644 arch/arm/boards/technexion-wandboard/env/boot/mmc2.1
 create mode 100644 arch/arm/boards/technexion-wandboard/env/init/bootsource
 create mode 100644 arch/arm/boards/technexion-wandboard/flash-header-techn=
exion-wandboard.imxcfg
 create mode 100644 arch/arm/boards/technexion-wandboard/lowlevel.c
 create mode 100644 arch/arm/cpu/entry.c
 create mode 100644 arch/arm/cpu/entry.h
 create mode 100644 arch/arm/dts/imx6dl-wandboard.dts
 create mode 100644 arch/arm/dts/imx6q-wandboard.dts
 create mode 100644 arch/arm/include/asm/semihosting.h
 create mode 100644 arch/arm/lib/semihosting-trap.S
 create mode 100644 arch/arm/lib/semihosting.c
 create mode 100644 arch/mips/boards/black-swift/Makefile
 create mode 100644 arch/mips/boards/black-swift/board.c
 create mode 100644 arch/mips/boards/black-swift/include/board/board_pbl_st=
art.h
 create mode 100644 arch/mips/configs/black-swift_defconfig
 create mode 100644 arch/mips/dts/black-swift.dts
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_macros.h
 create mode 100644 drivers/clk/mvebu/corediv.c
 create mode 100644 fs/smhfs.c
 create mode 100644 include/mmu.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
