Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0UKT-0003P9-BL
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:56:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W0UJn-0005K8-2e
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 11:55:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1W0UJn-0001wP-0i
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 11:55:31 +0100
Date: Tue, 7 Jan 2014 11:55:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140107105530.GG6750@pengutronix.de>
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
Subject: v2014.01.0
To: barebox@lists.infradead.org

Hi All,

I wish you all a good start into the new year! Let's start it with a
fresh barebox release.

Sascha

----------------------------------------------------------------
Alexander Aring (2):
      barebox: remove double semicolons
      scripts: add kernel-install-target to gitignore

Alexander Shiyan (12):
      ARM: at91: Fix signed/unsigned arguments for printf
      Cleanup Kconfig files
      net/Kconfig: Remove non-existent ARCH_DAVINCI
      ARM: mxs: Fix signed/unsigned arguments for printf
      commands: nandtest: Fix signed/unsigned arguments for printf
      net: netx: Fix signed/unsigned arguments for printf
      gui: Fix signed/unsigned arguments for printf
      imx-usb-loader: Fix signed/unsigned arguments for printf
      scripts: Add fix_size & kernel-install to .gitignore
      Makefile: Align "DTB" string to others
      ARM: i.MX boards: Remove useless select
      ARM: i.MX boards: Remove duplicate dependency of ARCH_IMX21 for IMX_I=
IM

Antony Pavlov (5):
      gpio: unify gpio direction macros names with Linux kernel
      gpiolib: import gpio_request_array() from linux 3.7
      MIPS: add asm-offsets.h generation
      MIPS: import exception registers saving from linux kernel
      of: gpio: Fix Kconfig variables to depend on

Du Huanpeng (3):
      scripts: add arch/x86/lib/barebox.lds to gitignore
      Makefile: fix endless make when 'make barebox.s'
      mips asm/types.h: add #ifndef to fix compile error

Eric B=E9nard (2):
      atmel_nand: check gpio validity before using it
      nand_imx: fix read ONFI param on NFC v21

Jan Weitzel (4):
      net: cpsw: Fix gmii_sel config
      pcm051: ethernet and dts fixes
      ARM: OMAP: early call am33xx_register_ethaddr
      pinctrl: single: select CONFIG_PINCTRL

Lucas Stach (11):
      net/phy: add driver for atheros PHYs
      ARM: i.MX6: add initial support for SolidRun Cubox-i Carrier-1
      gpio: reduce noise when parsing DT
      tegra: fix fallout from relocatable code changes in PLLX init
      tegra: speed up system bus
      tegra: switch main CPU complex to PLLX early
      gpio: tegra: remove leftover debug code
      clk: tegra: add SDMMC clocks
      tegra: add SDMMC controller driver
      dts: tegra: add SDMMC nodes
      dts: tegra: activate SDMMC on Colibri T20

Michael Grzeschik (1):
      scripts: bareboxcrc32 as host and target userspacetool

Philipp Zabel (6):
      ARM i.MX6: sabrelite: switch to multiboard support
      ARM i.MX6: sabrelite: switch to multi image support
      ARM i.MX6: sabrelite: use &uart2 instead of hard-coding path
      ARM i.MX6: sabrelite: usb is probed from device tree
      ARM i.MX6: sabrelite: move flash partitions into device tree
      ARM i.MX6: sabrelite: register SPI flash barebox update handler

Renaud Barbier (2):
      ppc: mpc85xx: add fsl,mpic node frequency property
      ppc: DA923RC: update board initialisation

Robert Jarzmik (1):
      lib: libubigen math compile error fix

Rostislav Lisovy (3):
      ARM: dts: i.mx53: Internal keyboard controller + i2c pinmux
      ARM: i.mx53: Parse Reset GPIO pin in FEC driver from Devicetree
      ARM: i.mx53: Support for Voipac board with X53-DMM-668 module.

Sascha Hauer (100):
      treewide: Add missing includes
      eeprom: at24: Enable OF partition parsing
      ARM: Phytec pfla02: Add I2C EEPROM to devicetree
      ARM: remove asm/hardware.h
      hush: fix exit on syntax error behaviour
      hush: refactor readline call
      readline: remove unused variable
      hush: refactor get_user_input()
      hush: refactor file_get()
      hush: rename __promptme to interrupt
      consolidate syntax() and syntax_err()
      hush: Be more informative on syntax error
      hush: use standard ARRAY_SIZE
      hush: refactor reserved_word()
      serial: ns16550: Add device ids for omap
      ARM: OMAP: select SoC variant from boards
      ARM: OMAP: Add SoC prefix to running_in_* functions
      ARM: OMAP: select correct reset_cpu function at runtime
      ARM: OMAP: Make cpu_is_* macros runtime if necessary
      ARM: dtb: create dt-bindings link
      dt-bindings: Add gpio header file
      dt-bindings: Add omap/am33xx pinctrl header file
      images: socfpga: Do not pollute Make variable namespace
      ARM: Add am33xx SoC dtsi file
      ARM: am335x: Add reg-shift property to uarts
      ARM: dts: AM33xx: Add gpio aliases
      ARM: am33xx: Add am33xx_ prefix to SoC specific functions
      ARM: OMAP: Make debug_ll UART Kconfig selectable
      pinctrl: Add pinctrl-single driver
      spi: omap: encode register offset into device_id
      spi: omap: Add devicetree probe support
      i2c: omap: Add devicetree support
      net: cpsw: inline slave_data
      ARM: OMAP: centralize omap startup
      Make: introduce obj-pbl-y
      ARM: am33xx: compile SoC files for pbl aswell
      ARM: OMAP: let UART selection depend on its only user
      of: gpio: Add Kconfig variable to depend on
      net: phy: Fix get_phy_device return value
      ARM: dts: am33xx: Add mmc aliases
      mmc: omap: name mmc device after devicetree alias
      common Kconfig: Add missing depends on
      common Kconfig: disable unused options for SHELL_NONE
      pinctrl: Add functions to select pinctrl from device_node
      cpsw: Add devicetree probe support
      net: cpsw: move eth_device into slave
      net: cpsw: drop for_each_slave
      net: cpsw: attach slave to edev->priv
      net: cpsw: straighten error path
      gpio: omap: move to drivers/gpio/
      omap: gpmc: some refactoring
      gpio: omap: Add devicetree probe support
      mtd: omap gpmc: Use dev_add_param_enum
      string: Add (x)memdup
      device: Add functions to add resources
      bus: Add omap gpmc driver
      mmc: omap: Add devicetree support
      ARM: imx: karo tx25: Add config file for imx-image
      scripts: imx-image: Add i.MX25 support
      ARM: Karo TX25: Enable debug uart early
      Merge branch 'for-next/clk'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/hush'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/omap-devicetree-prepare'
      Merge branch 'for-next/omap-drivers'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/tegra'
      Merge branch 'for-next/x86'
      ARM: Make multi images startup process simpler
      ARM: Make ENTRY_FUNCTION more robust
      ARM: Add base am335x-phytec-phycore devicetree file
      ARM: am335x phytec phyCORE: Switch to devicetree probe support
      ARM: am33xx Phytec phyCORE: initialize debug UART
      ARM: am33xx Phytec phyCORE: Switch to multiimage support
      ARM: am33xx Phytec phyCORE: update defconfig
      ARM: dts: Add am33xx beaglebone(black) dts files
      ARM: am33xx: beaglebone: remove mlo_large_defconfig
      ARM: beaglebone: Add memory to devicetrees
      ARM: beaglebone: Switch to devicetree and multiimage
      ARM: am335x Phytec phyCORE: Move partition descriptions to devicetree
      ARM: OMAP: Safe boot info in fixed SRAM address
      ARM: am335x Phytec phyCORE: configure environment from devicetree
      ARM: beaglebone: configure console from devicetree
      ARM: OMAP: introduce multiboard support and move am33xx boards to it
      ARM: OMAP: consolidate am335x mlo defconfigs
      Merge branch 'work/am335x'
      ARM: solidrun-carrier-1: Fix wrong ENTRY_FUNCTION
      ARM: i.MX: bbu external nand: Fix uninitialized variable
      net: dm9k: Fix resource sizes in add_dm9000_device
      net: dm9k: bail out when resources can't be claimed
      mtd: nand_imx: remove trailing whitespaces
      mtd: fix wrong return values in cdev read
      mtd: fix mtd_read return value
      mtd: Add subpagesize to mtd_info_user
      Merge branch 'pu/mtd'
      Release v2014.01.0

Sebastian Hesselbarth (11):
      led: trigger: disable LEDs with trigger before installing it
      gpiolib: add get_direction callback
      gpiolib: make gpiolib command more verbose
      gpio: dw: add get_direction callback
      asm-generic: add macro for BAREBOX_CLK_TABLE
      ARM: lib: add BAREBOX_CLK_TABLE to linker script
      clk: add of_clk_init and CLK_OF_DECLARE macro
      OF: parse OF clock providers after populate
      clk: fixed: add DT init function
      scripts: kwboot: fix missing soh initialization
      scripts: kwbimage: fix mis-sized payload

Steffen Trumtrar (2):
      ARM: socfgpa: update sequencer
      ARM: socfgpa: sockit: update sequencer_defines

Thomas Petazzoni (2):
      scripts/setupmbr: fix documentation
      arch/x86: fix link with recent gcc

Uwe Kleine-K=F6nig (4):
      partitions: dos: improve guess of disk size
      partitions: dos: don't open code get_unaligned_le32
      partitions: dos: parse extended partition
      mci: mxs: support overwriting the device name via platform data

 Makefile                                           |  10 +-
 arch/arm/boards/Makefile                           |   2 +
 arch/arm/boards/animeo_ip/init.c                   |   2 +-
 arch/arm/boards/at91rm9200ek/init.c                |   2 +-
 arch/arm/boards/at91sam9261ek/init.c               |   2 +-
 arch/arm/boards/at91sam9263ek/init.c               |   2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |   2 +-
 arch/arm/boards/at91sam9m10ihd/init.c              |   2 +-
 arch/arm/boards/at91sam9n12ek/init.c               |   2 +-
 arch/arm/boards/at91sam9x5ek/init.c                |   2 +-
 arch/arm/boards/beagle/lowlevel.c                  |   2 +-
 arch/arm/boards/beaglebone/beaglebone.h            |   2 +
 arch/arm/boards/beaglebone/board.c                 | 125 +---
 arch/arm/boards/beaglebone/lowlevel.c              |  73 +-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |   8 +-
 arch/arm/boards/dmo-mx6-realq7/board.c             |   1 +
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |   4 +-
 arch/arm/boards/dss11/init.c                       |   2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |   6 +-
 arch/arm/boards/efika-mx-smartbook/board.c         |   1 +
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |   4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   1 +
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |   4 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |   1 +
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |   4 +-
 arch/arm/boards/freescale-mx53-vmx53/Makefile      |   3 +
 arch/arm/boards/freescale-mx53-vmx53/board.c       |  57 ++
 .../boards/freescale-mx53-vmx53/env/config-board   |   7 +
 .../flash-header-imx53-vmx53.imxcfg                |  54 ++
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |  17 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |   4 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  23 +-
 .../flash-header-mx6-sabrelite.imxcfg              | 106 +++
 .../boards/freescale-mx6-sabrelite/flash_header.c  | 178 -----
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |  11 +-
 arch/arm/boards/gk802/board.c                      |   1 +
 arch/arm/boards/gk802/lowlevel.c                   |   4 +-
 arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg |  23 +
 arch/arm/boards/karo-tx25/lowlevel.c               |  23 +
 arch/arm/boards/mmccpu/init.c                      |   2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             |   2 +-
 arch/arm/boards/omap3evm/lowlevel.c                |   2 +-
 arch/arm/boards/pcm051/Makefile                    |   2 +-
 arch/arm/boards/pcm051/board.c                     | 164 +----
 arch/arm/boards/pcm051/env/init/mtdparts-nand      |  11 -
 arch/arm/boards/pcm051/env/init/mtdparts-nor       |  12 -
 arch/arm/boards/pcm051/lowlevel.c                  |  46 +-
 arch/arm/boards/pcm051/mux.c                       |  65 --
 arch/arm/boards/pcm051/mux.h                       |   4 -
 arch/arm/boards/phycard-a-l1/lowlevel.c            |   2 +-
 arch/arm/boards/phytec-pfla02/lowlevel.c           |   8 +-
 arch/arm/boards/pm9261/init.c                      |   2 +-
 arch/arm/boards/pm9263/init.c                      |   2 +-
 arch/arm/boards/pm9g45/init.c                      |   2 +-
 arch/arm/boards/qil-a926x/init.c                   |   2 +-
 arch/arm/boards/sama5d3xek/init.c                  |   2 +-
 arch/arm/boards/solidrun-carrier-1/Makefile        |   3 +
 arch/arm/boards/solidrun-carrier-1/board.c         |  89 +++
 .../flash-header-solidrun-carrier-1.imxcfg         |  79 ++
 arch/arm/boards/solidrun-carrier-1/lowlevel.c      |  18 +
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   4 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |   8 +-
 arch/arm/boards/terasic-sockit/sequencer_defines.h |   6 +-
 arch/arm/boards/tny-a926x/init.c                   |   2 +-
 arch/arm/boards/toradex-colibri-t20-iris/entry.c   |   4 +-
 arch/arm/boards/toshiba-ac100/entry.c              |   4 +-
 arch/arm/boards/tqma6x/board.c                     |   1 +
 arch/arm/boards/tqma6x/lowlevel.c                  |   8 +-
 arch/arm/boards/usb-a926x/init.c                   |   2 +-
 arch/arm/configs/am335x_beaglebone_defconfig       |   8 +-
 .../configs/am335x_beaglebone_mlo_large_defconfig  |  55 --
 .../configs/am335x_beaglebone_mlo_small_defconfig  |  29 -
 .../{pcm051_mlo_defconfig =3D> am335x_mlo_defconfig} |  27 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |   4 +-
 arch/arm/configs/imx_v7_defconfig                  |   2 +
 arch/arm/configs/pcm051_defconfig                  |  34 +-
 arch/arm/configs/tegra_v7_defconfig                |   2 +
 arch/arm/cpu/Makefile                              |   2 +-
 arch/arm/cpu/start-images.c                        |  49 --
 arch/arm/cpu/start.c                               |   1 +
 arch/arm/cpu/uncompress.c                          |   9 +-
 arch/arm/dts/Makefile                              |  15 +-
 arch/arm/dts/am335x-bone-common.dtsi               | 300 ++++++++
 arch/arm/dts/am335x-bone.dts                       |  39 +
 arch/arm/dts/am335x-boneblack.dts                  |  88 +++
 arch/arm/dts/am335x-phytec-phycore.dts             | 320 ++++++++
 arch/arm/dts/am33xx.dtsi                           | 809 +++++++++++++++++=
++++
 arch/arm/dts/imx53-voipac-bsb.dts                  | 135 ++++
 arch/arm/dts/imx53-voipac-dmm-668.dtsi             | 204 ++++++
 arch/arm/dts/imx53.dtsi                            |  15 +
 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts          | 116 +++
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              |  11 +
 arch/arm/dts/imx6q-sabrelite.dts                   |  23 +-
 arch/arm/dts/imx6qdl-microsom-ar8035.dtsi          |  58 ++
 arch/arm/dts/imx6qdl-microsom.dtsi                 |  84 +++
 arch/arm/dts/include/dt-bindings                   |   1 +
 arch/arm/dts/tegra20-colibri-iris.dts              |   5 +
 arch/arm/dts/tegra20-colibri.dtsi                  |   4 +
 arch/arm/dts/tegra20.dtsi                          |  32 +
 arch/arm/dts/tps65217.dtsi                         |  56 ++
 arch/arm/include/asm/barebox-arm.h                 |  16 +-
 arch/arm/include/asm/hardware.h                    |  18 -
 arch/arm/lib/barebox.lds.S                         |   2 +
 arch/arm/mach-at91/Kconfig                         |   1 -
 arch/arm/mach-at91/at91rm9200.c                    |   2 +-
 arch/arm/mach-at91/at91sam9260.c                   |   2 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   2 +-
 arch/arm/mach-at91/at91sam9261.c                   |   2 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   2 +-
 arch/arm/mach-at91/at91sam9263.c                   |   2 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   2 +-
 arch/arm/mach-at91/at91sam926x_time.c              |   2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   2 +-
 arch/arm/mach-at91/at91sam9n12.c                   |   2 +-
 arch/arm/mach-at91/at91sam9n12_devices.c           |   2 +-
 arch/arm/mach-at91/at91sam9x5.c                    |   2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |   2 +-
 arch/arm/mach-at91/gpio.c                          |   4 +-
 arch/arm/mach-at91/sama5d3.c                       |   2 +-
 arch/arm/mach-at91/sama5d3_devices.c               |   2 +-
 arch/arm/mach-imx/Kconfig                          |  30 +-
 arch/arm/mach-imx/clk-imx5.c                       |   1 +
 arch/arm/mach-imx/clk-imx6.c                       |   1 +
 arch/arm/mach-imx/clocksource.c                    |   1 +
 arch/arm/mach-imx/esdctl.c                         |   1 +
 arch/arm/mach-imx/iim.c                            |   2 +-
 arch/arm/mach-imx/imx-bbu-external-nand.c          |   2 +-
 arch/arm/mach-imx/imx-bbu-internal.c               |   3 +-
 arch/arm/mach-imx/imx.c                            |   1 +
 arch/arm/mach-imx/include/mach/bbu.h               |   1 +
 arch/arm/mach-imx/ocotp.c                          |   1 +
 arch/arm/mach-mxs/bcb.c                            |   8 +-
 arch/arm/mach-mxs/include/mach/mci.h               |   1 +
 arch/arm/mach-mxs/iomux-imx.c                      |   2 +-
 arch/arm/mach-nomadik/8815.c                       |   2 +-
 arch/arm/mach-omap/Kconfig                         |  66 +-
 arch/arm/mach-omap/Makefile                        |   7 +-
 arch/arm/mach-omap/am33xx_clock.c                  |   4 +-
 arch/arm/mach-omap/am33xx_generic.c                |  29 +-
 arch/arm/mach-omap/gpmc.c                          |  44 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h     |   4 +-
 arch/arm/mach-omap/include/mach/am33xx-devices.h   |   2 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h   |  12 +-
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |   1 +
 arch/arm/mach-omap/include/mach/debug_ll.h         |  71 +-
 arch/arm/mach-omap/include/mach/generic.h          |  42 +-
 arch/arm/mach-omap/include/mach/gpmc_nand.h        |   3 +
 arch/arm/mach-omap/include/mach/omap3-generic.h    |  12 +-
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |   1 +
 arch/arm/mach-omap/include/mach/omap4-generic.h    |   7 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |   3 +-
 arch/arm/mach-omap/include/mach/sys_info.h         |   4 -
 arch/arm/mach-omap/omap3_clock.c                   |   9 +-
 arch/arm/mach-omap/omap3_generic.c                 |  31 +-
 arch/arm/mach-omap/omap4_generic.c                 |  22 +-
 arch/arm/mach-omap/omap_bootinfo.S                 |  25 -
 arch/arm/mach-omap/omap_devices.c                  |   4 +-
 arch/arm/mach-omap/omap_generic.c                  |  90 ++-
 arch/arm/mach-socfpga/include/mach/sequencer.c     |  59 +-
 arch/arm/mach-tegra/include/mach/tegra20-car.h     |  44 ++
 arch/arm/mach-tegra/tegra_avp_init.c               |   2 +
 arch/arm/mach-tegra/tegra_maincomplex_init.c       |   9 +
 arch/mips/Makefile                                 |  43 ++
 arch/mips/include/asm/asm-offsets.h                |   1 +
 arch/mips/include/asm/ptrace.h                     |  35 +
 arch/mips/include/asm/stackframe.h                 | 105 +++
 arch/mips/include/asm/types.h                      |   4 +
 arch/mips/lib/asm-offsets.c                        |  61 ++
 arch/mips/lib/genex.S                              |   2 +
 arch/mips/lib/traps.c                              |  46 +-
 arch/ppc/boards/geip-da923rc/da923rc.c             |   4 +-
 arch/ppc/mach-mpc85xx/Kconfig                      |   8 +-
 arch/ppc/mach-mpc85xx/fdt.c                        |   5 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   3 +
 arch/x86/Makefile                                  |   3 +-
 arch/x86/lib/.gitignore                            |   1 +
 commands/crc.c                                     |  63 +-
 commands/detect.c                                  |   1 +
 commands/filetype.c                                |   2 +-
 commands/loadenv.c                                 |   1 +
 commands/nandtest.c                                |   4 +-
 common/Kconfig                                     |  54 +-
 common/console.c                                   |   1 +
 common/globalvar.c                                 |   1 +
 common/hush.c                                      | 188 ++---
 common/memory_display.c                            |   1 +
 common/memtest.c                                   |   1 +
 common/misc.c                                      |   1 +
 common/partitions/dos.c                            |  92 ++-
 common/startup.c                                   |   1 +
 crypto/crc32.c                                     |  60 ++
 drivers/ata/ahci.c                                 |   3 +-
 drivers/ata/ide-sff.c                              |   1 +
 drivers/ata/pata-imx.c                             |   1 +
 drivers/ata/sata-imx.c                             |   1 +
 drivers/base/bus.c                                 |   1 +
 drivers/base/driver.c                              |   1 +
 drivers/base/platform.c                            |   1 +
 drivers/base/resource.c                            |  66 +-
 drivers/bus/Kconfig                                |   6 +
 drivers/bus/Makefile                               |   1 +
 drivers/bus/omap-gpmc.c                            | 523 +++++++++++++
 drivers/clk/clk-fixed.c                            |  23 +
 drivers/clk/clk.c                                  |  37 +
 drivers/clk/tegra/clk-tegra20.c                    |  25 +
 drivers/eeprom/at24.c                              |   2 +
 drivers/gpio/Kconfig                               |   3 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-dw.c                             |   9 +
 drivers/gpio/gpio-imx.c                            |   1 +
 .../mach-omap/gpio.c =3D> drivers/gpio/gpio-omap.c   |  39 +-
 drivers/gpio/gpio-tegra.c                          |   2 -
 drivers/gpio/gpiolib.c                             |  90 ++-
 drivers/i2c/busses/i2c-imx.c                       |   1 +
 drivers/i2c/busses/i2c-omap.c                      |  28 +-
 drivers/i2c/i2c.c                                  |   1 +
 drivers/led/led-gpio.c                             |   4 +-
 drivers/mci/Kconfig                                |   7 +
 drivers/mci/Makefile                               |   1 +
 drivers/mci/imx-esdhc.c                            |   1 +
 drivers/mci/mci-core.c                             |   3 +-
 drivers/mci/mxs.c                                  |   1 +
 drivers/mci/omap_hsmmc.c                           |  19 +
 drivers/mci/tegra-sdmmc.c                          | 464 ++++++++++++
 drivers/mfd/mc13xxx.c                              |   1 +
 drivers/mfd/stmpe-i2c.c                            |   1 +
 drivers/mtd/core.c                                 |  26 +-
 drivers/mtd/devices/m25p80.c                       |   1 +
 drivers/mtd/devices/mtd_dataflash.c                |   1 +
 drivers/mtd/nand/atmel_nand.c                      |   4 +-
 drivers/mtd/nand/nand_imx.c                        |  28 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |  36 +-
 drivers/net/Kconfig                                |   2 +-
 drivers/net/altera_tse.c                           |   2 +-
 drivers/net/cpsw.c                                 | 282 +++++--
 drivers/net/dm9k.c                                 |   4 +
 drivers/net/fec_imx.c                              |  17 +
 drivers/net/netx_eth.c                             |   2 +-
 drivers/net/phy/Kconfig                            |   5 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/at803x.c                           | 121 +++
 drivers/net/phy/mdio_bus.c                         |   2 +-
 drivers/net/phy/phy.c                              |   8 +-
 drivers/of/Kconfig                                 |   5 +
 drivers/of/Makefile                                |   2 +-
 drivers/of/base.c                                  |   1 +
 drivers/of/of_gpio.c                               |   2 +-
 drivers/pinctrl/Kconfig                            |   4 +
 drivers/pinctrl/Makefile                           |   1 +
 drivers/pinctrl/imx-iomux-v3.c                     |   1 +
 drivers/pinctrl/pinctrl-single.c                   | 166 +++++
 drivers/pinctrl/pinctrl.c                          |  26 +-
 drivers/serial/serial_imx.c                        |   1 +
 drivers/serial/serial_ns16550.c                    |  62 +-
 drivers/serial/serial_ns16550.h                    |   4 -
 drivers/spi/imx_spi.c                              |   1 +
 drivers/spi/omap3_spi.c                            |  51 +-
 drivers/spi/omap3_spi.h                            |   6 +-
 drivers/usb/gadget/dfu.c                           |   2 +-
 drivers/usb/imx/chipidea-imx.c                     |   2 +
 drivers/usb/imx/imx-usb-misc.c                     |   2 +
 drivers/usb/imx/imx-usb-phy.c                      |   2 +
 drivers/watchdog/imxwd.c                           |   1 +
 fs/devfs-core.c                                    |   1 +
 images/Makefile                                    |  15 +-
 images/Makefile.am33xx                             |  30 +
 images/Makefile.imx                                |  15 +
 images/Makefile.socfpga                            |  12 +-
 include/asm-generic/barebox.lds.h                  |   9 +-
 include/common.h                                   |   2 +
 include/driver.h                                   |   9 +
 include/dt-bindings/gpio/gpio.h                    |  15 +
 include/dt-bindings/pinctrl/am33xx.h               |  42 ++
 include/dt-bindings/pinctrl/omap.h                 |  53 ++
 include/gpio.h                                     |  43 ++
 include/linux/clk.h                                |  14 +
 include/linux/kbuild.h                             |  15 +
 include/linux/mtd/mtd-abi.h                        |   1 +
 include/linux/mtd/mtd.h                            |   1 +
 include/mci.h                                      |   2 +-
 include/of_gpio.h                                  |   6 +-
 include/pinctrl.h                                  |  12 +
 include/string.h                                   |   2 +
 include/xfuncs.h                                   |   1 +
 lib/gui/bmp.c                                      |   4 +-
 lib/gui/png_pico.c                                 |   2 +-
 lib/libmtd.c                                       |   2 +-
 lib/libubigen.c                                    |   3 +-
 lib/math.c                                         |   1 +
 lib/readline.c                                     |   3 +-
 lib/string.c                                       |  14 +
 lib/unlink-recursive.c                             |   1 +
 lib/xfuncs.c                                       |  10 +
 net/dns.c                                          |   2 +-
 net/eth.c                                          |   1 +
 net/net.c                                          |   2 +-
 scripts/.gitignore                                 |   5 +
 scripts/Makefile                                   |   2 +
 scripts/Makefile.lib                               |   5 +-
 scripts/bareboxcrc32.c                             |  60 ++
 scripts/bareboxenv.c                               |  19 -
 scripts/compiler.h                                 |  25 +
 scripts/imx/imx-image.c                            |   1 +
 scripts/imx/imx-usb-loader.c                       |  15 +-
 scripts/kwbimage.c                                 |  16 +-
 scripts/kwboot.c                                   |   1 +
 scripts/setupmbr/setupmbr.c                        |   4 +-
 307 files changed, 6667 insertions(+), 1483 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config-board
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53=
-vmx53.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx=
6-sabrelite.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
 delete mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/pcm051/mux.c
 delete mode 100644 arch/arm/boards/pcm051/mux.h
 create mode 100644 arch/arm/boards/solidrun-carrier-1/Makefile
 create mode 100644 arch/arm/boards/solidrun-carrier-1/board.c
 create mode 100644 arch/arm/boards/solidrun-carrier-1/flash-header-solidru=
n-carrier-1.imxcfg
 create mode 100644 arch/arm/boards/solidrun-carrier-1/lowlevel.c
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
 rename arch/arm/configs/{pcm051_mlo_defconfig =3D> am335x_mlo_defconfig} (=
54%)
 delete mode 100644 arch/arm/cpu/start-images.c
 create mode 100644 arch/arm/dts/am335x-bone-common.dtsi
 create mode 100644 arch/arm/dts/am335x-bone.dts
 create mode 100644 arch/arm/dts/am335x-boneblack.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phycore.dts
 create mode 100644 arch/arm/dts/am33xx.dtsi
 create mode 100644 arch/arm/dts/imx53-voipac-bsb.dts
 create mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi
 create mode 100644 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
 create mode 100644 arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-microsom.dtsi
 create mode 120000 arch/arm/dts/include/dt-bindings
 create mode 100644 arch/arm/dts/tps65217.dtsi
 delete mode 100644 arch/arm/include/asm/hardware.h
 delete mode 100644 arch/arm/mach-omap/omap_bootinfo.S
 create mode 100644 arch/mips/include/asm/asm-offsets.h
 create mode 100644 arch/mips/include/asm/ptrace.h
 create mode 100644 arch/mips/include/asm/stackframe.h
 create mode 100644 arch/mips/lib/asm-offsets.c
 create mode 100644 arch/x86/lib/.gitignore
 create mode 100644 drivers/bus/omap-gpmc.c
 rename arch/arm/mach-omap/gpio.c =3D> drivers/gpio/gpio-omap.c (81%)
 create mode 100644 drivers/mci/tegra-sdmmc.c
 create mode 100644 drivers/net/phy/at803x.c
 create mode 100644 drivers/pinctrl/pinctrl-single.c
 create mode 100644 images/Makefile.am33xx
 create mode 100644 include/dt-bindings/gpio/gpio.h
 create mode 100644 include/dt-bindings/pinctrl/am33xx.h
 create mode 100644 include/dt-bindings/pinctrl/omap.h
 create mode 100644 include/linux/kbuild.h
 create mode 100644 scripts/bareboxcrc32.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
