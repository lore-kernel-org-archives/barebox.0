Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoqQA-0006JV-C2
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 08:06:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VoqPo-0000rY-8C
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:05:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VoqPo-0000Pn-6W
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:05:36 +0100
Date: Fri, 6 Dec 2013 09:05:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131206080535.GY24559@pengutronix.de>
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
Subject: v2013.12.0
To: barebox@lists.infradead.org

barebox-2013.12.0 - Saint Nicholas Day edition is out.

I hope you have all put your shoes out or hung your stockings...

Here's all what happened since the last release.

Sascha

----------------------------------------------------------------
Alexander Aring (4):
      mmci: remove include of mmci.h header
      scripts: fix kernel-install-target config
      common: add dependency !SANDBOX on target tools
      mmci: add missing depends on ARM_AMBA

Alexander Shiyan (5):
      USB: Check init/post_init errors
      ARM: i.MX51: Update DTS template
      ARM: i.MX5x: Make IIM driver kernel-compatible
      USB: i.MX: Make DT dr_mode & phy_type parameters kernel compatible
      USB: i.MX5x: Remove usage of MXC_EHCI_INTERNAL_PHY for OTG port

Andre Heider (18):
      ARM: rpi: fix tty device name in bootargs-base
      ARM: rpi: fix reading of the EMMC clock for CONFIG_MMU
      ARM: cache: restore cache functions from the PBL
      ARM: cache: do not crash when the MMU isn't yet setup
      common: add a macro to align an array on the stack
      ARM: bcm2835: cleanup clock registering
      ARM: bcm2835: register the clocksource driver earlier
      ARM: bcm2835: register the clocksource device earlier
      ARM: bcm2835: add a mailbox driver for VideoCore
      ARM: rpi: register a clkdev for the eMMC clock
      mci: bcm2835: use the registered device clkdev
      ARM: rpi: use the proper ARM memory size
      fb: add a line_length value to struct fb_info
      gui: convert graphic utils to respect line_length
      gui: convert the bmp renderer to respect line_length
      ARM: bcm2835: add missing mbox overscan response field
      video: add a BCM2835 framebuffer driver
      video: set up the kernel's simple framebuffer driver

Antony Pavlov (5):
      MIPS: qemu-malta: doc: drop broken mips.com link
      MIPS: qemu-malta: don't use BoardID address for executable code
      MIPS: qemu-malta: update qemu-malta.dox
      MIPS: qemu-malta: use YAMON-style GT64120 memory map
      MIPS: qemu-malta: doc: add gxemul documentation

Jan Weitzel (1):
      commands: of_node fix descripion

Jean-Christophe PLAGNIOL-VILLARD (4):
      mci: add max_req_size support
      add: mmci drivers
      vexpress: mmc support
      bcm2835: move mci register at board level

Lucas Stach (1):
      pinctrl: don't allow drivers to be selected by menuconfig user

Markus Pargmann (1):
      net: phy: Add micrel KSZ8031

Renaud Barbier (5):
      ppc: mpc85xx: mpc8544 support
      ppc: mpc85xx: define Ethernet port count
      ppc: mpc85xx: enable DDR driver
      ppc: DA923RC: add board support
      ppc: mpc85xx: build directives

Sascha Hauer (42):
      mci: bcm2835: Add detect callback support for hardware device
      ARM: rpi: Update defconfig
      ARM: rpi: add SD card environment support
      of: simplify phandle lookup
      ARM: i.MX6: Add spi aliases to devicetree
      mtd: raw: rename raw device
      mtd: Pass device_id to add_mtd_device
      mtd: m25p80: Allow to specify devicename via devicetree alias
      spi: Call spi_of_register_slaves from core
      spi: support dynamic bus ids
      spi: Get bus_num from devicetree
      kernel-install: Add missing error messages
      blspec: Push device_detect into blspec_scan_device
      blspec: rename _hwdevice functions to _devicename
      blspec: Allow to boot partitions
      blspec: Let scan functions return the number of entries found
      fs: Add function to get cdev by mountpath
      blspec: make cdev optional
      boot: Print boot entries in the order they are
      boot command: make more flexible
      blspec: Make error message more clear
      boot command: Add timeout support for menu
      of: Add a context pointer to fixup functions
      Merge branch 'for-next/bootspec'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/net'
      Merge branch 'for-next/of'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/spi'
      Merge branch 'for-next/usb'
      of: fdt: Fix fdt size_dt_struct
      of: fdt: reorder fdt_header initialization
      ARM: start: fix fdt inside valid memory check
      Fix endless loop in automount code
      ata: pata-imx: Add missing NULL entry in dt ids
      mtd: mtdraw: drop ioctl callback for mtdraw device
      ARM: i.MX external NAND boot: Add missing instruction cache invalidate
      Release v2013.12.0

Uwe Kleine-K=F6nig (2):
      blspec: fix documention of blspec_scan_directory's return code
      blspec: Fix another crash with menu disabled

Vicente Bergas (2):
      OMAP4: fix writel data/address swap regression
      OMAP4: fix omap4_bootsource regression

 Makefile                                           |   4 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c          |   4 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                  |   3 +-
 arch/arm/boards/highbank/init.c                    |   4 +-
 arch/arm/boards/mioa701/env/bin/barebox_update     |   8 +-
 arch/arm/boards/mioa701/env/bin/dps1_update        |   6 +-
 .../arm/boards/raspberry-pi/env/init/bootargs-base |   2 +-
 arch/arm/boards/raspberry-pi/rpi.c                 | 110 +++-
 arch/arm/boards/vexpress/init.c                    |   9 +-
 arch/arm/configs/rpi_defconfig                     |  45 +-
 arch/arm/cpu/cache.c                               |  18 +-
 arch/arm/cpu/start.c                               |   6 +-
 arch/arm/dts/imx51.dtsi                            | 710 ++++++++++++-----=
----
 arch/arm/dts/imx53.dtsi                            |   2 +-
 arch/arm/dts/imx6q-gk802.dts                       |   6 +-
 arch/arm/dts/imx6q-tqma6x.dts                      |   3 +-
 arch/arm/dts/imx6q.dtsi                            |   4 +
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi            |   8 +-
 arch/arm/dts/imx6qdl-mba6x.dtsi                    |   5 +-
 arch/arm/dts/imx6qdl.dtsi                          |   4 +
 arch/arm/mach-bcm2835/Makefile                     |   2 +-
 arch/arm/mach-bcm2835/core.c                       |  33 +-
 arch/arm/mach-bcm2835/include/mach/core.h          |  13 +
 arch/arm/mach-bcm2835/include/mach/mbox.h          | 421 ++++++++++++
 arch/arm/mach-bcm2835/mbox.c                       | 152 +++++
 arch/arm/mach-imx/external-nand-boot.c             |   3 +
 arch/arm/mach-imx/iim.c                            |   2 +-
 arch/arm/mach-omap/omap4_clock.c                   | 176 ++---
 arch/arm/mach-omap/omap4_generic.c                 |  10 +-
 arch/arm/mach-vexpress/devices.c                   |  12 +-
 arch/arm/mach-vexpress/include/mach/devices.h      |   5 +
 arch/arm/mach-vexpress/v2m.c                       |   1 +
 .../qemu-malta/include/board/board_pbl_start.h     |  65 ++
 arch/mips/boards/qemu-malta/qemu-malta.dox         |   9 +-
 arch/mips/dts/qemu-malta.dts                       |   4 +-
 arch/mips/include/asm/gt64120.h                    |  37 ++
 arch/mips/mach-malta/include/mach/hardware.h       |   2 +-
 arch/mips/mach-malta/include/mach/mach-gt64120.h   |  13 +
 arch/ppc/Makefile                                  |   1 +
 arch/ppc/boards/geip-da923rc/Makefile              |   7 +
 arch/ppc/boards/geip-da923rc/barebox.lds.S         | 155 +++++
 arch/ppc/boards/geip-da923rc/config.h              |  54 ++
 arch/ppc/boards/geip-da923rc/da923rc.c             | 212 ++++++
 arch/ppc/boards/geip-da923rc/ddr.c                 | 169 +++++
 arch/ppc/boards/geip-da923rc/env/bin/init          |   4 +
 arch/ppc/boards/geip-da923rc/env/config            |   4 +
 arch/ppc/boards/geip-da923rc/law.c                 |  24 +
 arch/ppc/boards/geip-da923rc/nand.c                |  94 +++
 arch/ppc/boards/geip-da923rc/product_data.c        |  66 ++
 arch/ppc/boards/geip-da923rc/product_data.h        |  62 ++
 arch/ppc/boards/geip-da923rc/tlb.c                 |  69 ++
 arch/ppc/configs/da923rc_defconfig                 |  57 ++
 arch/ppc/ddr-8xxx/Makefile                         |   2 +
 arch/ppc/include/asm/fsl_lbc.h                     |  12 +
 arch/ppc/include/asm/processor.h                   |   2 +
 arch/ppc/mach-mpc5xxx/cpu.c                        |   4 +-
 arch/ppc/mach-mpc85xx/Kconfig                      |  32 +-
 arch/ppc/mach-mpc85xx/Makefile                     |   3 +
 arch/ppc/mach-mpc85xx/cpu.c                        |   6 +-
 arch/ppc/mach-mpc85xx/cpuid.c                      |   2 +
 arch/ppc/mach-mpc85xx/eth-devices.c                |   2 +-
 arch/ppc/mach-mpc85xx/fdt.c                        |   4 +-
 arch/ppc/mach-mpc85xx/fsl_gpio.c                   |  47 ++
 arch/ppc/mach-mpc85xx/include/mach/clock.h         |   1 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   7 +
 arch/ppc/mach-mpc85xx/include/mach/gpio.h          |  17 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |  23 +
 arch/ppc/mach-mpc85xx/speed.c                      |  18 +
 commands/Kconfig                                   |   2 +-
 commands/boot.c                                    | 355 ++++++-----
 common/Kconfig                                     |   2 +
 common/blspec.c                                    | 109 ++--
 common/memory.c                                    |   4 +-
 common/oftree.c                                    |  12 +-
 drivers/ata/pata-imx.c                             |   2 +
 drivers/clocksource/bcm2835.c                      |   2 +-
 drivers/mci/Kconfig                                |   7 +
 drivers/mci/Makefile                               |   1 +
 drivers/mci/mci-bcm2835.c                          |  90 +--
 drivers/mci/mci-bcm2835.h                          |  48 --
 drivers/mci/mci-core.c                             |  38 +-
 drivers/mci/mmci.c                                 | 689 +++++++++++++++++=
+++
 drivers/mci/mmci.h                                 | 167 +++++
 drivers/mtd/core.c                                 |  10 +-
 drivers/mtd/devices/docg3.c                        |   2 +-
 drivers/mtd/devices/m25p80.c                       |  23 +-
 drivers/mtd/devices/mtd_dataflash.c                |   2 +-
 drivers/mtd/mtdraw.c                               |   3 +-
 drivers/mtd/nand/nand_base.c                       |   2 +-
 drivers/mtd/nor/cfi_flash.c                        |   2 +-
 drivers/net/phy/micrel.c                           |   9 +
 drivers/of/base.c                                  |  11 +-
 drivers/of/fdt.c                                   |   5 +-
 drivers/pinctrl/Kconfig                            |  12 +-
 drivers/spi/imx_spi.c                              |   2 -
 drivers/spi/mvebu_spi.c                            |   3 -
 drivers/spi/spi.c                                  |  21 +-
 drivers/usb/core/of.c                              |   4 +-
 drivers/usb/host/ehci-hcd.c                        |  12 +-
 drivers/usb/imx/imx-usb-misc.c                     |   3 -
 drivers/video/Kconfig                              |  13 +
 drivers/video/Makefile                             |   2 +
 drivers/video/bcm2835.c                            | 136 ++++
 drivers/video/fb.c                                 |  18 +-
 drivers/video/simplefb.c                           | 167 +++++
 fs/fs.c                                            |  15 +
 include/blspec.h                                   |   7 +-
 include/common.h                                   |  11 +
 include/fb.h                                       |   8 +
 include/fs.h                                       |   2 +
 include/linux/amba/mmci.h                          |  42 ++
 include/linux/micrel_phy.h                         |   1 +
 include/linux/mtd/mtd.h                            |   2 +-
 include/mci.h                                      |   1 +
 include/of.h                                       |   3 +-
 include/spi/spi.h                                  |   2 -
 lib/gui/bmp.c                                      |   8 +-
 lib/gui/graphic_utils.c                            |  10 +-
 net/eth.c                                          |   4 +-
 scripts/Makefile                                   |   2 +-
 120 files changed, 4292 insertions(+), 897 deletions(-)
 create mode 100644 arch/arm/mach-bcm2835/include/mach/mbox.h
 create mode 100644 arch/arm/mach-bcm2835/mbox.c
 create mode 100644 arch/mips/include/asm/gt64120.h
 create mode 100644 arch/mips/mach-malta/include/mach/mach-gt64120.h
 create mode 100644 arch/ppc/boards/geip-da923rc/Makefile
 create mode 100644 arch/ppc/boards/geip-da923rc/barebox.lds.S
 create mode 100644 arch/ppc/boards/geip-da923rc/config.h
 create mode 100644 arch/ppc/boards/geip-da923rc/da923rc.c
 create mode 100644 arch/ppc/boards/geip-da923rc/ddr.c
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/init
 create mode 100644 arch/ppc/boards/geip-da923rc/env/config
 create mode 100644 arch/ppc/boards/geip-da923rc/law.c
 create mode 100644 arch/ppc/boards/geip-da923rc/nand.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.h
 create mode 100644 arch/ppc/boards/geip-da923rc/tlb.c
 create mode 100644 arch/ppc/configs/da923rc_defconfig
 create mode 100644 arch/ppc/ddr-8xxx/Makefile
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_gpio.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gpio.h
 create mode 100644 drivers/mci/mmci.c
 create mode 100644 drivers/mci/mmci.h
 create mode 100644 drivers/video/bcm2835.c
 create mode 100644 drivers/video/simplefb.c
 create mode 100644 include/linux/amba/mmci.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
