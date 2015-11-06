Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuieN-000299-BY
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 15:10:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Zuie0-00027p-AA
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:09:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1Zuie0-0001uE-2q
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:09:36 +0100
Date: Fri, 6 Nov 2015 16:09:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151106150936.GM8526@pengutronix.de>
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
Subject: v2015.11.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a November Release. Most of the stuff that went into this
release are fixes. Major thing worth noting this time is USB keyboard
support which allows us to control barebox without a serial console.
Thanks Peter for working on this. And thankyou everybody else working
on barebox :)

Have fun
 Sascha

----------------------------------------------------------------
Alexander Aring (1):
      amba: check if on remove callback

Antony Pavlov (16):
      usb: ehci: fix include/usb/usb.h:'struct usb_configuration' misuse
      mtd: spi-nor: add Spansion S25FL204K support
      endian: sync {big,little}_endian.h with linux-4.2
      logo: Kconfig: make BAREBOX_LOGO_* depend on BAREBOX_LOGO
      usb: storage: fix warning: no previous prototype for 'usb_stor_Bulk_c=
lear_endpt_stall'
      MIPS: mach-ath79: make ar71xx_regs.h assembler-tolerant
      MIPS: PBL: Add missing pieces for xz compressed PBL image
      MIPS: refactor SBL start.S code
      MIPS: ath79: use gpiolib
      gpio: add ath79-gpio driver for Atheros MIPS SoCs
      MIPS: dts: ar9331.dtsi: add gpio
      MIPS: dts: tplink-mr3020.dts: move aliases up
      MIPS: dts: tplink-mr3020.dts: enable gpio & leds
      MIPS: tplink-mr3020_defconfig: enable gpio & leds
      commands: ls: use 14 digits for filesize
      usb: core: drop unnecessary le16_to_cpu() conversion

Daniel Schultz (8):
      drivers: mci: Make two functions public
      include: mci: Add new ext. CSD field defines
      drivers: mci: Add mci_get_device_by_name function
      ARM: am33xx: Add barebox_update eMMC option
      ARM: am335x: Register eMMC MLO handler
      ARM: dts: Add include to strip am33xx clocks
      ARM: dts: Include strip file to Phytec am335x MLOs
      commands: Add MMC ext. CSD register tool

David S. Miller (1):
      endian: Always evaluate arguments

Edoardo Scaglia (1):
      at91sam9x5: fix ROM base address (bugfix for nand ECC)i

Enrico Jorns (3):
      mtd nand: added 'bits_per_cell' property
      mtd nand_denali: Add denali nand driver
      mtd denali: pass col argument to READID operation

Enrico Scholz (2):
      ARM: MMU: fixed dma_flush_range() call
      ARM: MMU: fixed calculation of number of PTEs

Eric B=E9nard (4):
      chipidea-imx: allow phymode configuration in pdata
      imx25: register usb-misc by default
      eukrea-cpuimx25: enable dfu sequence conditionaly
      eukrea-cpuimx25: update defconfig

Fabio Estevam (1):
      video: imx-hdmi: Remove unused 'regmap' structure

Florian Vallee (2):
      eukrea-cpuimx25: fix boot
      eukrea-cpuimx25: setup usb through chipidea-imx driver

Jan Remmet (1):
      ubiformat: remove dead code

Lucas Stach (6):
      video: vpl: depend on OFTREE
      video: imx-hdmi: depend on EDID support
      input: usb-kbd: depend on CONSOLE_FULL
      mtd: nand_denali: don't include arch header
      video: simple-panel: depend on OFDEVICE
      ARM: imx: clocksource: add new DT compatible

Markus Pargmann (1):
      usb: chipidea: Add udc unregister for device removal

Masahiro Yamada (1):
      console: use int rather than uint in printf() and friends

Peter Mamonov (9):
      usb: ehci-hcd: add OF bindings
      usb: ehci-hcd: use is_timeout_non_interruptible()
      ata: intf_platform_ide: add OF bindings
      common: clock: introduce mdelay_non_interruptible()
      usb: ehci-hcd: port periodic transactions implementation from the u-b=
oot
      usb: ehci-hcd: detect re-entrance
      usb: ehci-hcd: use mdelay_non_interruptible()
      input: port usb keyboard driver from the u-boot
      fs: Fix filesystem detection with full path

Sascha Hauer (28):
      i2c: fsl: Add bus recovery support
      clock: remove duplicate xdelay declarations
      introduce strerrorp
      of_fix_tree: warn instead of fail when a fixup fails
      video: ipuv3: Do not crash when no mode is found
      video: ipuv3: imx-ldb: remove unused variable
      video: ipuv3: imx-ldb: Support video modes in ldb node
      video: simple-panel: Add debug/error messages
      video: simple-panel: Add support for device tree provided nodes
      video: ipuv3: print error message when no modes are found
      video: backlight-pwm: Add error message
      video: backlight-pwm: Add regulator support
      ARM: i.MX: GuF Santaro: enable PWM
      ARM: i.MX: GuF Santaro: Fix panel support
      mci: core: Increase clock for SD highspeed mode
      Merge branch 'for-next/arm'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-ldb'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/usb'
      common/Makefile: Add missing dependency
      fcntl: Fix O_CREAT clashing with O_RWSIZE_8
      hush: Add missing initialize_context() in some places
      Release v2015.11.0

Sergey Koshechkin (1):
      login: make some locally used functions static

Stefan Christ (2):
      images: ignore *.imx-sram-img
      fs: syntax fix in ramfs.c

Vicente Bergas (5):
      archosg9: re-generate defconfigs with "make savedefconfig"
      archosg9: Use defaultenv-2-menu
      archosg9: add display
      detect_fs: use device instead of file
      xload: be more flexible when searching for second stage bootloader.

Wadim Egorov (2):
      ARM: dts: am335x-phytec-phycore-som: Disable mac node.
      ARM: am33xx: Enable ethernet node on NET boot

 Makefile                                           |    2 +-
 arch/arm/boards/archosg9/board.c                   |  111 +-
 arch/arm/boards/archosg9/env/bin/init              |   28 -
 arch/arm/boards/archosg9/env/init/automount        |   28 -
 arch/arm/boards/archosg9/env/init/automount2       |    7 +
 arch/arm/boards/archosg9/env/init/splash           |    5 +
 .../boards/archosg9/env/menu/11-boot-flash/action  |    4 +
 .../boards/archosg9/env/menu/11-boot-flash/title   |    1 +
 .../arm/boards/archosg9/env/menu/12-boot-sd/action |    4 +
 arch/arm/boards/archosg9/env/menu/12-boot-sd/title |    1 +
 .../boards/archosg9/env/menu/13-boot-usb/action    |    4 +
 .../arm/boards/archosg9/env/menu/13-boot-usb/title |    1 +
 arch/arm/boards/archosg9/env/menu/mainmenu         |   25 -
 arch/arm/boards/archosg9/mux.c                     |   20 +-
 arch/arm/boards/beaglebone/board.c                 |    4 +
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |   26 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   69 +-
 .../arm/boards/eukrea_cpuimx25/flash-header.imxcfg |    1 +
 arch/arm/configs/am335x_defconfig                  |    1 +
 arch/arm/configs/archosg9_defconfig                |   68 +-
 arch/arm/configs/archosg9_xload_defconfig          |    4 -
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   60 +-
 arch/arm/cpu/mmu.c                                 |    5 +-
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts     |    1 +
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts     |    5 +
 arch/arm/dts/am335x-phytec-phyflex-som-mlo.dts     |    1 +
 arch/arm/dts/am33xx-clocks-strip.dtsi              |   79 +
 arch/arm/dts/imx6q-guf-santaro.dts                 |    9 +-
 arch/arm/mach-at91/include/mach/at91sam9x5.h       |    2 +-
 arch/arm/mach-imx/clocksource.c                    |    3 +
 arch/arm/mach-imx/imx25.c                          |    1 +
 arch/arm/mach-omap/Kconfig                         |    7 +
 arch/arm/mach-omap/Makefile                        |    1 +
 arch/arm/mach-omap/am33xx_bbu_emmc.c               |   95 +
 arch/arm/mach-omap/am33xx_generic.c                |    3 +
 arch/arm/mach-omap/include/mach/bbu.h              |   18 +
 arch/arm/mach-omap/xload.c                         |    4 +-
 arch/mips/Kconfig                                  |    1 +
 arch/mips/boot/start.S                             |  108 +-
 arch/mips/configs/tplink-mr3020_defconfig          |   38 +-
 arch/mips/dts/ar9331.dtsi                          |   10 +
 arch/mips/dts/tplink-mr3020.dts                    |   43 +-
 arch/mips/lib/Makefile                             |    2 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |   21 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       |    5 +-
 arch/mips/pbl/.gitignore                           |    2 +
 arch/mips/pbl/Makefile                             |    1 +
 arch/mips/pbl/piggy.xzkern.S                       |    6 +
 commands/Kconfig                                   |   16 +
 commands/Makefile                                  |    1 +
 commands/ls.c                                      |    2 +-
 commands/mmc_extcsd.c                              | 2042 ++++++++++++++++=
++++
 commands/ubiformat.c                               |    7 +-
 common/Makefile                                    |    1 +
 common/blspec.c                                    |    2 +-
 common/clock.c                                     |    9 +
 common/console_common.c                            |    6 +-
 common/filetype.c                                  |   37 +
 common/hush.c                                      |    6 +
 common/password.c                                  |    9 +-
 drivers/amba/bus.c                                 |    3 +-
 drivers/ata/intf_platform_ide.c                    |   30 +-
 drivers/gpio/Makefile                              |    1 +
 drivers/gpio/gpio-ath79.c                          |  156 ++
 drivers/i2c/busses/i2c-imx.c                       |   67 +-
 drivers/input/Kconfig                              |    8 +
 drivers/input/Makefile                             |    1 +
 drivers/input/usb_kbd.c                            |  420 ++++
 drivers/mci/mci-core.c                             |   25 +-
 drivers/mtd/nand/Kconfig                           |   26 +
 drivers/mtd/nand/Makefile                          |    3 +
 drivers/mtd/nand/denali.h                          |  499 +++++
 drivers/mtd/nand/nand_base.c                       |    2 +
 drivers/mtd/nand/nand_denali.c                     | 1558 +++++++++++++++
 drivers/mtd/nand/nand_denali_dt.c                  |  100 +
 drivers/mtd/spi-nor/spi-nor.c                      |    1 +
 drivers/usb/core/usb.c                             |   10 +-
 drivers/usb/gadget/fsl_udc.c                       |   13 +
 drivers/usb/host/ehci-hcd.c                        |  474 ++++-
 drivers/usb/host/ehci.h                            |   15 +-
 drivers/usb/imx/chipidea-imx.c                     |    8 +
 drivers/usb/imx/imx-usb-phy.c                      |    2 +-
 drivers/usb/storage/transport.c                    |    2 +-
 drivers/video/Kconfig                              |    3 +
 drivers/video/backlight-pwm.c                      |   17 +-
 drivers/video/imx-ipu-v3/Kconfig                   |    1 +
 drivers/video/imx-ipu-v3/imx-hdmi.c                |    1 -
 drivers/video/imx-ipu-v3/imx-ldb.c                 |   68 +-
 drivers/video/imx-ipu-v3/ipufb.c                   |    9 +-
 drivers/video/simple-panel.c                       |   36 +-
 fs/fs.c                                            |    6 +-
 fs/ramfs.c                                         |    2 +-
 fs/ubifs/ubifs.c                                   |    2 +-
 images/.gitignore                                  |    1 +
 include/clock.h                                    |    4 +-
 include/common.h                                   |    5 +-
 include/errno.h                                    |    6 +
 include/fcntl.h                                    |   12 +-
 include/filetype.h                                 |    1 +
 include/linux/byteorder/big_endian.h               |  130 +-
 include/linux/byteorder/little_endian.h            |  130 +-
 include/linux/mtd/nand.h                           |   12 +
 include/mci.h                                      |  106 +
 include/usb/chipidea-imx.h                         |    3 +
 include/usb/fsl_usb2.h                             |    1 +
 lib/logo/Kconfig                                   |    4 +
 106 files changed, 6516 insertions(+), 551 deletions(-)
 delete mode 100644 arch/arm/boards/archosg9/env/bin/init
 delete mode 100644 arch/arm/boards/archosg9/env/init/automount
 create mode 100644 arch/arm/boards/archosg9/env/init/automount2
 create mode 100644 arch/arm/boards/archosg9/env/init/splash
 create mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/title
 create mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/title
 create mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/title
 delete mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu
 create mode 100644 arch/arm/dts/am33xx-clocks-strip.dtsi
 create mode 100644 arch/arm/mach-omap/am33xx_bbu_emmc.c
 create mode 100644 arch/mips/pbl/piggy.xzkern.S
 create mode 100644 commands/mmc_extcsd.c
 create mode 100644 drivers/gpio/gpio-ath79.c
 create mode 100644 drivers/input/usb_kbd.c
 create mode 100644 drivers/mtd/nand/denali.h
 create mode 100644 drivers/mtd/nand/nand_denali.c
 create mode 100644 drivers/mtd/nand/nand_denali_dt.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
