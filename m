Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjTBw-0004CB-Nu
 for barebox@lists.infradead.org; Tue, 06 Oct 2015 14:26:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZjTBZ-0004Li-J1
 for barebox@lists.infradead.org; Tue, 06 Oct 2015 16:25:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1ZjTBY-0004am-Hp
 for barebox@lists.infradead.org; Tue, 06 Oct 2015 16:25:44 +0200
Date: Tue, 6 Oct 2015 16:25:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151006142544.GA7858@pengutronix.de>
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
Subject: v2015.10.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have an October release. No big changes included this time. What's
worth mentioning is the i2c recovery support. This needs driver support
to work and in several cases this must also be supported in the device
tree, but if you see nonworking i2c busses sometimes you should consider
implementing it.

As usual here follows the list of patches that went into this release.

Sascha

----------------------------------------------------------------
Alexander Shiyan (1):
      mci: mmci: Fix status flags check

Andrey Smirnov (2):
      lib: libfile: Do not ignore errors in close()
      i2c-imx: Fix memory leak in i2c_fsl_probe()

Christian Hemp (1):
      ARM: pfla02: Add module revison detection

Fabio Estevam (1):
      spi-nor: Align spi_nor_ids[] with kernel 4.1

Jan Luebbe (7):
      at24: support write-protect GPIO
      i2c: add bus recovery infrastructure
      i2c-omap: clear ARDY twice
      i2c-omap: add bus recovery support
      i2c: algo-bit: fix debug code
      i2c: algo-bit: check if the bus is busy
      i2c: gpio: add bus recovery support

Juergen Borleis (1):
      mfd: da9053: add da9053 watchdog and system restart driver

Kuo-Jung Su (2):
      usb: ehci: replace multiple use of le16_to_cpu(req->index) with varia=
ble
      usb: ehci: prevent bad PORTSC register access

Lucas Stach (13):
      video: ipu-fb: mark internally used functions as static
      ARM: imx6: select OFTREE
      video: MTL017: depend on I2C
      video: simple-panel: mode support depends on I2C and EDID
      video: backlight: add fallbacks for client functions
      video: fbcon: needs console support
      ARM: socfpga: select OFTREE and OFDEVICE
      mfd: da9053: remove references to nonexistent cdev member
      wd: add stub for of_get_watchdog_priority
      reset-source: add stub for of_get_reset_source_priority
      net: e1000: correct function signature of set_ethaddr
      ARM: add implementation for dma_alloc_writecombine for !CONFIG_MMU
      passwd: avoid NULL ptr usage

Peter Mamonov (2):
      usb: ehci-hcd: initialize ehci->qh_list[] with zeros
      ata: ide-sff: fix integer overflow in ata_wait_ready()

Philipp Zabel (4):
      ARM: pfla02: align with and include mainline DT
      ARM: pbab01: align with and include mainline DT
      ARM: pfla02: Add notice about the used environment partition
      mfd: da9063: add da9063 watchdog and system restart driver

Robert Jarzmik (2):
      mtd: nand: mrvl-nand: create initial empty bbt
      ARM: pxa: zylonite: convert to generic default environment

Sascha Hauer (67):
      ARM: PXA: use generic gpio prototypes
      ARM: MMU: Fix order when flushing inner/outer cache
      video: imx-hdmi: sync with kernel
      video: ipuv3: Adjust videomode to IPU limitations
      implement dma_alloc_writecombine
      fb: imx-ipu-v3: Use writecombine memory for fb
      ARM: boards: include gpio.h instead of mach/gpio.h
      ARM: l2x0: Implement L310 support
      ARM: l2x0: Flush cache before disabling it
      ARM: l2x0: Add some informational debug messages
      ARM: i.MX6: Enable l2 cache
      gpio: Drop asm-generic/gpio.h
      splash command: depend on CONFIG_VIDEO
      video: fbconsole: do not enter when we are already in fbconsole
      fb: return original fb_info in FBIOGET_SCREENINFO
      fb: Add shadowfb support
      splash command: simplify offscreen rendering
      gui: Use fb provided shadowfb for offscreen rendering
      gui: implement blitting screen areas
      fb: fbconsole: print cursor after clearing the screen
      fb: fbconsole: Add missing blits
      ARM: socfpga: Configure console from device tree
      serial: ns16550: Set linux_console_name
      param_enum: Make name strings const
      param_enum: protect against invalid values
      watchdog: imxwd: remove remove callback
      mtd: m25p80: make it possible to use large blocks if desired
      restart: replace reset_cpu with registered restart handlers
      watchdog: Allow multiple watchdogs
      watchdog: Give watchdogs a name
      reset-source: Use globalvar_add_simple_enum
      reset-source: Allow different priorities
      login: rework login mechanism
      login: cleanup password code
      login: check return value of digest_alloc
      crypto: fix selecting of digests
      login: explain PASSWORD_DEFAULT option
      reset-source: Add some debugging aids
      mtd: spi-nor: mostly drop lock/unlock code
      watchdog: Fix static inline ops
      boot command: Allow to enable watchdog
      commands: ubiformat: Document -y option
      spi: i.MX: use start mode control bit
      spi: i.MX: create SoC specific transfer functions
      spi: i.MX: optimize transfers for ECSPI v2.3
      cdev: Add function to find cdev by device_node
      of_path: Allow pointing directly to the partition
      ARM: dts: directly point to partitions in the barebox,environment bin=
ding
      Merge branch 'for-next/arm-l2x0'
      Merge branch 'for-next/fb'
      Merge branch 'for-next/fb-imx-ipu-v3'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/login'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/of_path'
      Merge branch 'for-next/param'
      Merge branch 'for-next/restart'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/usb'
      of_fix_tree: Print error message
      of_fix_tree: do not fail when fixup fails
      state: write names in enum32 variables to oftree again
      state: check return value of of_property_count_strings
      Revert "spi: i.MX: optimize transfers for ECSPI v2.3"
      Release v2015.10.0

Steffen Trumtrar (5):
      ARM: dts: remove most of socfpga barebox-specific dt code
      clk: socfpga: fix dt binding support
      gpio: dw: fix copy&paste variable name
      gpio: dw: implement new bindings
      clk: socfpga: don't register fixed clocks

Uwe Kleine-K=F6nig (1):
      video: imx: assert that image buffer doesn't cross a 4 MiB boundary

Wadim Egorov (1):
      net: dhcp: Fix CONFIG variable name

 .../bindings/barebox/barebox,environment.rst       |   5 +-
 Documentation/devicetree/bindings/mtd/m25p80.rst   |  10 +
 Makefile                                           |   2 +-
 arch/arm/Kconfig                                   |   2 +
 arch/arm/boards/phytec-phycore-pxa270/board.c      |   2 +-
 arch/arm/boards/phytec-phyflex-imx6/board.c        |  31 +-
 arch/arm/boards/zylonite/board.c                   |   3 +
 arch/arm/boards/zylonite/env/bin/init              |  25 -
 arch/arm/boards/zylonite/env/bin/mtd_env_override  |   4 -
 arch/arm/boards/zylonite/env/boot/nand-ubi         |   5 +
 arch/arm/boards/zylonite/env/config                |   6 -
 arch/arm/boards/zylonite/env/init/mtdparts-nand    |  11 +
 arch/arm/boards/zylonite/env/nv/hostname           |   1 +
 .../arm/boards/zylonite/env/nv/linux.bootargs.base |   1 +
 .../boards/zylonite/env/nv/linux.bootargs.console  |   1 +
 arch/arm/configs/socfpga_defconfig                 |   2 +-
 arch/arm/configs/zylonite310_defconfig             |  12 +-
 arch/arm/cpu/cache-l2x0.c                          |  48 +-
 arch/arm/cpu/cache.c                               |   2 +
 arch/arm/cpu/cpu.c                                 |   3 +-
 arch/arm/cpu/mmu.c                                 |  22 +-
 arch/arm/dts/imx27-phytec-phycore-rdk.dts          |   8 +-
 arch/arm/dts/imx51-babbage.dts                     |   4 +-
 arch/arm/dts/imx53-qsb-common.dtsi                 |   4 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts             |   4 +-
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi             |   4 -
 arch/arm/dts/imx6q-phytec-pbab01.dts               |   4 -
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi             |   8 +-
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              |   4 -
 arch/arm/dts/imx6q-sabresd.dts                     |   2 +-
 arch/arm/dts/imx6q-var-custom.dts                  |   2 +-
 arch/arm/dts/imx6q-var-som.dtsi                    |   2 +-
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi            |  16 +-
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi            | 137 +----
 arch/arm/dts/imx6qdl-sabresd.dtsi                  |   2 +-
 arch/arm/dts/imx6s-riotboard.dts                   |   4 +-
 arch/arm/dts/socfpga.dtsi                          | 659 +----------------=
----
 arch/arm/dts/socfpga_cyclone5.dtsi                 |  78 ---
 arch/arm/dts/socfpga_cyclone5_socdk.dts            |  43 +-
 arch/arm/dts/socfpga_cyclone5_sockit.dts           |  43 +-
 arch/arm/dts/socfpga_cyclone5_socrates.dts         |  33 +-
 arch/arm/include/asm/dma.h                         |   5 +
 arch/arm/include/asm/gpio.h                        |  10 -
 arch/arm/include/asm/mmu.h                         |   1 +
 arch/arm/lib/bootm.c                               |   7 +-
 arch/arm/mach-at91/at91rm9200_time.c               |  14 +-
 arch/arm/mach-at91/at91sam9_reset.S                |   4 +-
 arch/arm/mach-at91/at91sam9g45_reset.S             |   4 +-
 arch/arm/mach-at91/bootstrap.c                     |   3 +-
 arch/arm/mach-at91/include/mach/gpio.h             |   2 -
 arch/arm/mach-at91/setup.c                         |   9 +
 arch/arm/mach-bcm2835/core.c                       |  21 +-
 arch/arm/mach-clps711x/reset.c                     |  12 +-
 arch/arm/mach-davinci/time.c                       |  14 +-
 arch/arm/mach-digic/Makefile                       |   2 +-
 arch/arm/mach-digic/core.c                         |  25 -
 arch/arm/mach-ep93xx/clocksource.c                 |  19 +-
 arch/arm/mach-ep93xx/include/mach/gpio.h           |   1 -
 arch/arm/mach-highbank/reset.c                     |  14 +-
 arch/arm/mach-imx/Kconfig                          |   3 +
 arch/arm/mach-imx/imx6.c                           |  35 ++
 arch/arm/mach-mvebu/armada-370-xp.c                |   9 +-
 arch/arm/mach-mvebu/common.c                       |  13 -
 arch/arm/mach-mvebu/dove.c                         |   9 +-
 arch/arm/mach-mvebu/include/mach/common.h          |   1 -
 arch/arm/mach-mvebu/kirkwood.c                     |   9 +-
 arch/arm/mach-mxs/include/mach/gpio.h              |  21 -
 arch/arm/mach-mxs/soc-imx23.c                      |   8 +-
 arch/arm/mach-mxs/soc-imx28.c                      |   9 +-
 arch/arm/mach-netx/generic.c                       |  23 +-
 arch/arm/mach-nomadik/reset.c                      |  15 +-
 arch/arm/mach-omap/am33xx_generic.c                |   7 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h   |   2 -
 arch/arm/mach-omap/include/mach/omap3-generic.h    |   2 -
 arch/arm/mach-omap/include/mach/omap4-generic.h    |   2 -
 arch/arm/mach-omap/omap3_generic.c                 |   8 +-
 arch/arm/mach-omap/omap4_generic.c                 |   7 +-
 arch/arm/mach-omap/omap_generic.c                  |  11 -
 arch/arm/mach-pxa/common.c                         |  14 +-
 arch/arm/mach-pxa/gpio.c                           |  32 +
 arch/arm/mach-pxa/include/plat/gpio.h              |  32 -
 arch/arm/mach-rockchip/core.c                      |  16 +-
 arch/arm/mach-samsung/generic.c                    |  15 +-
 arch/arm/mach-samsung/gpio-s3c24x0.c               |   2 +-
 arch/arm/mach-samsung/include/mach/gpio.h          |  18 -
 arch/arm/mach-socfpga/reset-manager.c              |  14 +-
 arch/arm/mach-tegra/tegra20-pmc.c                  |   9 +-
 arch/arm/mach-uemd/Makefile                        |   2 +-
 arch/arm/mach-uemd/reset.c                         |  24 -
 arch/arm/mach-versatile/core.c                     |   7 +-
 arch/arm/mach-vexpress/reset.c                     |  15 +-
 arch/arm/mach-zynq/zynq.c                          |  24 +-
 arch/blackfin/lib/cpu.c                            |  13 +-
 arch/blackfin/lib/traps.c                          |   5 +-
 arch/efi/efi/efi.c                                 |  13 +-
 arch/mips/include/asm/gpio.h                       |   6 -
 arch/mips/lib/bootm.c                              |   3 +-
 arch/mips/mach-ar231x/ar231x_reset.c               |   8 +-
 arch/mips/mach-ath79/reset.c                       |  15 +-
 arch/mips/mach-bcm47xx/reset.c                     |  16 +-
 arch/mips/mach-loongson/loongson1_reset.c          |  15 +-
 arch/mips/mach-malta/reset.c                       |  16 +-
 arch/nios2/cpu/cpu.c                               |  12 +-
 arch/openrisc/cpu/cpu.c                            |  11 +-
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c      |   2 +-
 arch/ppc/boards/geip-da923rc/da923rc.c             |   1 +
 arch/ppc/lib/ppclinux.c                            |   3 +-
 arch/ppc/mach-mpc5xxx/cpu.c                        |  11 +-
 arch/ppc/mach-mpc85xx/cpu.c                        |  14 +-
 arch/ppc/mach-mpc85xx/include/mach/gpio.h          |   2 -
 arch/sandbox/board/Makefile                        |   1 +
 arch/sandbox/board/restart.c                       |  17 +
 arch/sandbox/mach-sandbox/include/mach/linux.h     |   1 +
 arch/sandbox/os/common.c                           |   6 +-
 arch/x86/mach-i386/Makefile                        |   2 -
 arch/x86/mach-i386/reset.c                         |  30 -
 commands/Kconfig                                   |  13 +-
 commands/boot.c                                    |  26 +-
 commands/login.c                                   |  70 +--
 commands/menutree.c                                |   3 +
 commands/reset.c                                   |   3 +-
 commands/splash.c                                  |  21 +-
 commands/ubiformat.c                               |   1 +
 common/Kconfig                                     |  16 +-
 common/Makefile                                    |   1 +
 common/console.c                                   |   6 -
 common/console_common.c                            |  27 -
 common/console_simple.c                            |   6 -
 common/hush.c                                      |   3 +
 common/misc.c                                      |   3 +-
 common/oftree.c                                    |   3 +-
 common/parser.c                                    |   3 +
 common/password.c                                  | 124 ++--
 common/reset_source.c                              |  31 +-
 common/restart.c                                   | 112 ++++
 common/startup.c                                   |   7 +-
 common/state.c                                     |  18 +-
 crypto/Kconfig                                     |   2 +-
 defaultenv/defaultenv-2-base/bin/init              |  18 -
 drivers/ata/ide-sff.c                              |   2 +-
 drivers/clk/socfpga.c                              |  86 +--
 drivers/eeprom/at24.c                              |  38 ++
 drivers/gpio/gpio-dw.c                             |  85 ++-
 drivers/i2c/algos/i2c-algo-bit.c                   |  44 +-
 drivers/i2c/busses/i2c-gpio.c                      |  10 +
 drivers/i2c/busses/i2c-imx.c                       |  12 +-
 drivers/i2c/busses/i2c-omap.c                      |  88 ++-
 drivers/i2c/i2c.c                                  | 130 ++++
 drivers/mci/mmci.c                                 |  18 +-
 drivers/mfd/Kconfig                                |  11 +
 drivers/mfd/Makefile                               |   2 +
 drivers/mfd/da9053.c                               | 307 ++++++++++
 drivers/mfd/da9063.c                               | 169 ++++++
 drivers/mtd/devices/m25p80.c                       |   6 +-
 drivers/mtd/nand/nand_mrvl_nfc.c                   |   5 +-
 drivers/mtd/spi-nor/cadence-quadspi.c              |   2 +-
 drivers/mtd/spi-nor/spi-nor.c                      | 100 +---
 drivers/net/e1000.c                                |   2 +-
 drivers/of/of_path.c                               |  14 +-
 drivers/of/partition.c                             |   4 +-
 drivers/serial/serial_ns16550.c                    |   2 +
 drivers/spi/imx_spi.c                              |  53 +-
 drivers/usb/gadget/f_fastboot.c                    |   3 +-
 drivers/usb/host/ehci-hcd.c                        |  40 +-
 drivers/video/Kconfig                              |   2 +
 drivers/video/fb.c                                 |  51 +-
 drivers/video/fbconsole.c                          |  18 +-
 drivers/video/imx-ipu-fb.c                         |   6 +-
 drivers/video/imx-ipu-v3/imx-hdmi.c                | 380 +++++++-----
 drivers/video/imx-ipu-v3/imx-hdmi.h                |   3 +-
 drivers/video/imx-ipu-v3/ipufb.c                   |  32 +-
 drivers/video/imx.c                                |  49 +-
 drivers/video/simple-panel.c                       |   3 +-
 drivers/watchdog/davinci_wdt.c                     |   1 +
 drivers/watchdog/im28wd.c                          |   1 +
 drivers/watchdog/imxwd.c                           |  35 +-
 drivers/watchdog/jz4740.c                          |  37 +-
 drivers/watchdog/wd_core.c                         |  70 ++-
 fs/devfs-core.c                                    |  13 +
 include/asm-generic/gpio.h                         |   9 -
 include/common.h                                   |   1 -
 include/console.h                                  |   3 -
 include/dma.h                                      |   1 +
 include/driver.h                                   |   2 +
 include/fb.h                                       |   3 +
 include/globalvar.h                                |   4 +-
 include/gpio.h                                     |  23 +-
 include/gui/graphic_utils.h                        |   6 +-
 include/gui/gui.h                                  |   6 +-
 include/i2c/i2c.h                                  |  45 ++
 include/linux/mtd/spi-nor.h                        |   4 +-
 include/param.h                                    |   4 +-
 include/password.h                                 |  22 +-
 include/reset_source.h                             |  18 +-
 include/restart.h                                  |  21 +
 include/spi/imx-spi.h                              |   1 +
 include/video/backlight.h                          |  17 +
 include/watchdog.h                                 |  16 +-
 lib/gui/graphic_utils.c                            |  49 +-
 lib/libfile.c                                      |   6 +-
 lib/parameter.c                                    |  12 +-
 net/dhcp.c                                         |   2 +-
 202 files changed, 2709 insertions(+), 2084 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/m25p80.rst
 delete mode 100644 arch/arm/boards/zylonite/env/bin/init
 delete mode 100644 arch/arm/boards/zylonite/env/bin/mtd_env_override
 create mode 100644 arch/arm/boards/zylonite/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/zylonite/env/config
 create mode 100644 arch/arm/boards/zylonite/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/zylonite/env/nv/hostname
 create mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/dts/socfpga_cyclone5.dtsi
 delete mode 100644 arch/arm/include/asm/gpio.h
 delete mode 100644 arch/arm/mach-digic/core.c
 delete mode 100644 arch/arm/mach-ep93xx/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-mxs/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-uemd/reset.c
 delete mode 100644 arch/mips/include/asm/gpio.h
 create mode 100644 arch/sandbox/board/restart.c
 delete mode 100644 arch/x86/mach-i386/reset.c
 create mode 100644 common/restart.c
 create mode 100644 drivers/mfd/da9053.c
 create mode 100644 drivers/mfd/da9063.c
 delete mode 100644 include/asm-generic/gpio.h
 create mode 100644 include/restart.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
