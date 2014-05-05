Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhEiA-0001NT-2A
 for barebox@lists.infradead.org; Mon, 05 May 2014 08:57:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WhEhk-00069S-Rz
 for barebox@lists.infradead.org; Mon, 05 May 2014 10:56:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WhEho-0008HQ-ME
 for barebox@lists.infradead.org; Mon, 05 May 2014 10:57:00 +0200
Date: Mon, 5 May 2014 10:57:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140505085700.GW5858@pengutronix.de>
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
Subject: v2014.05.0
To: barebox@lists.infradead.org

Hi All,

We have a new release for May. Some interesting things have happened
since the last release:

- We have initial support for TI DaVinci SoCs
- MIPS Atheros ar933x are now supported
- We have AT91 sama5d36 support
- A 'menutree' command has been introduced to create a menu
  from a directory structure.
- we have i.MX IPUv3 support
- video EDID parsing is now supported
- bootloader spec now tests if the devicetree specified in an entry is
  compatible with the current machine. This allows having different
  entries for different machines on the same medium without manually
  selecting the right one
- The common clock framework now supports parent rate change propagation
  just like the Linux Kernel.
- a barebox_update handler for i.MX6 Nand boot is available
- i.MX6 variscite VAR-SOM-MX6 is supported.

See below for a detailed list of patches that went into this release.

Sascha

----------------------------------------------------------------
Alexander Shiyan (3):
      ARM: i.MX27: dts: Separate barebox-specific DT changes
      drivers: treewide: Kill empty remove() implementations
      spi: i.MX: Fix direction for CS GPIOs

Antony Pavlov (30):
      import _AC and UL macros from linux kernel
      ARM: initial support for TI DaVinci SoCs
      ARM: davinci: add DEBUG_LL support
      ARM: davinci: add clocksource
      gpio: add driver for TI DaVinci SoCs
      ARM: dts: Add TI TMS320DM365 devicetree file
      ARM: davinci: add documentation
      ARM: davinci: add virt2real board support
      ARM: virt2real: add documentation
      ARM: davinci: add virt2real_defconfig
      clocksource: add dummy software-only clocksource
      MIPS: dts: rzx50: move jz4755 description to the separate file
      serial: ns16550: fix whitespaces
      serial: ns16550: make FCR setup value part of struct ns16550_priv
      serial: ns16550: add compatible entry for "ns16450"
      serial: ns16550: add compatible entry for "ingenic,jz4740-uart"
      MIPS: rzx50: drop console initialization in board code
      MIPS: mach-xburst: drop serial.c
      MIPS: boards: rename rzx50 -> ritmix-rzx50
      MIPS: lib: add BAREBOX_CLK_TABLE to linker script
      MIPS: ath79: add DEBUG_LL support for Atheros AR933x
      serial: add Atheros AR933x driver
      clk: add Atheros AR933x driver
      MIPS: ath79: ar9331: add devicetree files
      MIPS: ath79: add tplink-mr3020 board support
      MIPS: tplink-mr3020: add documentation
      MIPS: add tplink-mr3020_defconfig
      MIPS: rzx50: use short form for serial1 reference
      MIPS: qemu-malta: add CBUS UART support
      commands: loady: fix Y-Modem/G option name in help message

Bo Shen (1):
      ARM: at91: add sama5d36 SoC support

Christian Hemp (3):
      ARM: pfla02: add 4GB version
      ARM: pfla02: Add support for DualLite and Solo core
      ARM: pfla02: Set new ethernet phy tx timings

Dmitry Lavnikevich (5):
      mtd: Update internal API to support 64-bit device size
      mtd: Support for 4GB partitions
      ubi: Fix for creating ubi volumes with 64bit size
      nand: mxs: Check for up to 4 NAND chips
      nand: mxs: Fix for calculating ecc strength on some types of NAND fla=
sh

Du Huanpeng (1):
      MIPS: add Atheros ar933x family support

Eric B=E9nard (3):
      ARM: mx53-qsrb: enable USB host
      ARM: mx53-qsrb: enable sata
      ARM: mx53-qsb: update defconfig

Lucas Stach (9):
      arm: imx53: qsb: set hostname from board file
      ARM: dts: edmqmx6: add SPI SCLK pinmux
      ARM: at91: add missing break
      treewide: fix signedness mixups in printf format specifiers
      imx-image: don't leak file handle
      video: displaytimings: remove two broken error messages
      don't cast negative error codes to unsigned size_t
      commands: uimage: remove redundant error message
      ARM: boards: Makefile: fix whitespace

Michael D. Burkey (1):
      Fix bug in export 64 bit unsigned environment variable.

Owen Kirby (1):
      Fix AT91 UDC driver on boards without vbus.

Renaud Barbier (7):
      ppc: add SoC support for Freescale P1022
      common: DDR3 SPD verification support
      ppc: mpc8xxx: add DDR3 support
      ppc: add Freescale P1022DS board support
      ppc: mpc85xx: add stashing support
      ppc: P1022DS: update Kconfig and Makefile
      ppc: P2020RDB: add environment partition support

Sascha Hauer (66):
      ARM: i.MX53: Rename sata clocks according to Linux dts
      boot command: honour global.boot.default also for -l and -m
      boot command: only create boot entries from scripts
      blspec: honor default/once entries again
      blspec: Check if an entry is compatible with the current machine
      ARM: pfla02: Drop unnecessary compilation of flash headers
      err.h: Add PTR_ERR_OR_ZERO from kernel
      ARM: dts: i.MX6: Add IPU aliases
      ARM: dts: i.MX6: Add HDMI nodes
      ARM: i.MX6: Add initial variscite VAR-SOM-MX6 CPU support
      ARM: dts: i.MX53: Fix IPU register size
      i2c: i.MX: move to earlier initcall
      i2c: implement of_find_i2c_adapter_by_node
      clk: implement clk_round_rate
      Add shell_expand function
      add menutree command
      defenv-2: replace menu with menutree
      clk: clk-mux: pass clk flags from initializers
      clk: clk-gate: pass flags to initializers
      clk: clk-fixed-factor: pass flags to initializers
      clk: clk-divider: pass flags to initializers
      clk: introduce CLK_SET_RATE_PARENT flag
      clk: clk-divider: sync with kernel code
      clk: let clk-divider handle the table based divider aswell
      clk: clk-fixed-factor: add set_rate/round_rate callbacks
      clk: Add parent round/set rate for mux and gate
      ARM: i.MX: introduce clk parent rate changes
      ARM: i.MX6: Add video clocks
      video: introduce struct display_timings
      video: rework mode_name parameter setting
      video: Add display timing from devicetree helper
      video: Add edid support
      ARM i.MX6q: Mark VPU and IPU AXI transfers as cacheable, increase IPU=
 priority
      video: Add kernel fourcc defines
      video: Add i.MX IPUv3 support
      video: i.MX IPUv3: Add lvds bridge support
      video: i.MX IPUv3: Add hdmi support
      ARM: update imx_v7_defconfig
      of: Add support for "stdout-path" property
      ARM: i.MX6: Add Nand boot bbu handler
      ARM: i.MX6 Phytec phyFLEX: Add Nand update support
      mtd: omap gpmc: Turn debug message into dev_dbg
      ARM: Phytec phyCORE i.MX35: Update defconfig
      param: Add dev_add_param_mac
      Merge branch 'for-next/imx-ipu-v3'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/boot'
      Merge branch 'for-next/davinci'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-phyflex'
      Merge branch 'for-next/menutree'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/ppc'
      fb: Fix use of unitialized variable
      unlink_recursive: return negative error value
      loadenv: ignore -ENOENT when removing /env
      saveenv: Properly detect write errors
      loadenv: detect truncated environment files
      of_gpio: return error if no device found
      devfs-core: return new cdev also for mtd partitions
      video: imx-ipu-v3: remove unneeded 'dmfc' check
      genenv: fix tempdir creation when target is a relative path
      mtd: nand-bb: use list_for_each_entry_safe
      mtd: nand-mxs: Return bitflips
      Release v2014.05.0

Silvio Fricke (1):
      make: fix searchpath of generated autoconf.h

Vicente Bergas (1):
      OMAP4_USBboot: Change output text formatting

 Documentation/boards.dox                           |    4 +-
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |    7 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/Makefile                           |    4 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |    1 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    3 +-
 arch/arm/boards/freescale-mx21-ads/imx21ads.c      |    1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |    1 -
 arch/arm/boards/freescale-mx35-3ds/3stack.c        |    1 -
 arch/arm/boards/freescale-mx53-qsb/board.c         |    2 +
 .../arm/boards/freescale-mx53-qsb/env/config-board |    1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    1 -
 arch/arm/boards/guf-cupid/board.c                  |    3 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |    5 -
 arch/arm/boards/phytec-phycore-imx35/pcm043.c      |    4 +-
 arch/arm/boards/phytec-phyflex-imx6/Makefile       |    3 -
 arch/arm/boards/phytec-phyflex-imx6/board.c        |   29 +-
 .../flash-header-phytec-pfla02-1gib.imxcfg         |    2 +-
 .../flash-header-phytec-pfla02-2gib.imxcfg         |    2 +-
 .../flash-header-phytec-pfla02-4gib.imxcfg         |    6 +
 .../flash-header-phytec-pfla02.h                   |    2 +-
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |    6 +
 .../flash-header-phytec-pfla02dl.h                 |   95 ++
 .../flash-header-phytec-pfla02s-512mb.imxcfg       |    6 +
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |   47 +
 arch/arm/boards/variscite-mx6/Makefile             |    3 +
 arch/arm/boards/variscite-mx6/board.c              |  135 ++
 .../variscite-mx6/flash-header-variscite.imxcfg    |   86 ++
 arch/arm/boards/variscite-mx6/lowlevel.c           |   74 ++
 arch/arm/boards/virt2real/Makefile                 |    1 +
 arch/arm/boards/virt2real/board.c                  |   27 +
 arch/arm/boards/virt2real/lowlevel.c               |   34 +
 arch/arm/boards/virt2real/virt2real.dox            |   41 +
 arch/arm/configs/freescale-mx53-qsb_defconfig      |   31 +-
 arch/arm/configs/imx_v7_defconfig                  |   26 +-
 arch/arm/configs/phytec-phycore-imx35_defconfig    |   13 +-
 arch/arm/configs/virt2real_defconfig               |   49 +
 arch/arm/dts/Makefile                              |   11 +-
 arch/arm/dts/dm365.dtsi                            |   28 +
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts     |   38 +
 arch/arm/dts/imx27-phytec-phycard-s-rdk.dts        |   39 +-
 ...d-s-som.dts =3D> imx27-phytec-phycard-s-som.dtsi} |   91 +-
 arch/arm/dts/imx27-pingrp.h                        |  151 ---
 arch/arm/dts/imx27.dtsi                            |   59 +-
 arch/arm/dts/imx53-qsb-common.dtsi                 |    4 +
 arch/arm/dts/imx53.dtsi                            |    6 +-
 arch/arm/dts/imx6dl-phytec-pbab01.dts              |   29 +
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi             |   41 +
 arch/arm/dts/imx6q-dmo-edmqmx6.dts                 |    1 +
 arch/arm/dts/imx6q-phytec-pbab01.dts               |   23 +-
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              |  207 +---
 arch/arm/dts/imx6q-var-custom.dts                  |  149 +++
 arch/arm/dts/imx6q-var-som.dtsi                    |   99 ++
 arch/arm/dts/imx6q.dtsi                            |    5 +
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi            |   43 +
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi            |  171 +++
 arch/arm/dts/imx6qdl.dtsi                          |   12 +
 arch/arm/dts/imx6s-phytec-pbab01.dts               |   25 +
 arch/arm/dts/imx6s-phytec-pfla02.dtsi              |   22 +
 arch/arm/dts/virt2real.dts                         |   35 +
 arch/arm/include/asm/memory.h                      |    7 +
 arch/arm/mach-arm.dox                              |    2 +
 arch/arm/mach-at91/include/mach/cpu.h              |    5 +-
 arch/arm/mach-at91/sama5d3.c                       |    6 +-
 arch/arm/mach-at91/setup.c                         |    4 +
 arch/arm/mach-clps711x/clock.c                     |    4 +-
 arch/arm/mach-davinci/Kconfig                      |   16 +
 arch/arm/mach-davinci/Makefile                     |    1 +
 arch/arm/mach-davinci/include/mach/debug_ll.h      |   42 +
 arch/arm/mach-davinci/include/mach/hardware.h      |   29 +
 arch/arm/mach-davinci/include/mach/serial.h        |   20 +
 arch/arm/mach-davinci/include/mach/time.h          |   20 +
 arch/arm/mach-davinci/mach-davinci.dox             |    7 +
 arch/arm/mach-davinci/time.c                       |  209 ++++
 arch/arm/mach-imx/Kconfig                          |   14 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/clk-imx6.c                       |  155 ++-
 arch/arm/mach-imx/clk.h                            |   22 +-
 arch/arm/mach-imx/imx-bbu-internal.c               |    4 +-
 arch/arm/mach-imx/imx6-bbu-nand.c                  |  497 ++++++++
 arch/arm/mach-imx/imx6.c                           |   19 +
 arch/arm/mach-imx/include/mach/bbu.h               |    6 +
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    3 +
 arch/arm/mach-zynq/clk-zynq7000.c                  |    8 +-
 arch/mips/Kconfig                                  |   14 +
 arch/mips/Makefile                                 |    5 +-
 arch/mips/boards/ritmix-rzx50/Makefile             |    1 +
 .../include/board/board_pbl_start.h                |    0
 .../include/board/debug_ll.h                       |    0
 .../rzx50.dox =3D> ritmix-rzx50/ritmix-rzx50.dox}    |    2 +-
 arch/mips/boards/{rzx50 =3D> ritmix-rzx50}/serial.c  |    9 +-
 arch/mips/boards/rzx50/Makefile                    |    1 -
 arch/mips/boards/tplink-mr3020/Makefile            |    1 +
 arch/mips/boards/tplink-mr3020/board.c             |   27 +
 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox   |   64 +
 .../{rzx50_defconfig =3D> ritmix-rzx50_defconfig}    |    0
 arch/mips/configs/tplink-mr3020_defconfig          |   29 +
 arch/mips/dts/ar9331.dtsi                          |   26 +
 arch/mips/dts/include/dt-bindings                  |    1 +
 arch/mips/dts/jz4755.dtsi                          |   35 +
 arch/mips/dts/qemu-malta.dts                       |    8 +
 arch/mips/dts/rzx50.dts                            |    6 +-
 arch/mips/dts/tplink-mr3020.dts                    |   16 +
 arch/mips/lib/barebox.lds.S                        |    2 +
 arch/mips/mach-ath79/Kconfig                       |   15 +
 arch/mips/mach-ath79/Makefile                      |    1 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |   64 +
 arch/mips/mach-ath79/include/mach/ath79.h          |   33 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       |   56 +
 arch/mips/mach-ath79/reset.c                       |   32 +
 arch/mips/mach-malta/include/mach/hardware.h       |    3 +
 arch/mips/mach-xburst/Makefile                     |    1 -
 arch/mips/mach-xburst/mach-xburst.dox              |    2 +-
 arch/mips/mach-xburst/serial.c                     |   60 -
 arch/ppc/Makefile                                  |    1 +
 arch/ppc/boards/freescale-p1022ds/Makefile         |    5 +
 arch/ppc/boards/freescale-p1022ds/config.h         |   55 +
 arch/ppc/boards/freescale-p1022ds/ddr.c            |  126 ++
 arch/ppc/boards/freescale-p1022ds/env/bin/init     |    2 +
 arch/ppc/boards/freescale-p1022ds/env/config       |    2 +
 arch/ppc/boards/freescale-p1022ds/ics307_clk.c     |   46 +
 arch/ppc/boards/freescale-p1022ds/law.c            |   27 +
 arch/ppc/boards/freescale-p1022ds/p1022ds.c        |  181 +++
 arch/ppc/boards/freescale-p1022ds/p1022ds.h        |   14 +
 arch/ppc/boards/freescale-p1022ds/tlb.c            |   59 +
 arch/ppc/boards/freescale-p2020rdb/config.h        |    2 -
 arch/ppc/boards/freescale-p2020rdb/env/bin/init    |    2 +
 arch/ppc/boards/freescale-p2020rdb/env/config      |    2 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |    9 +-
 arch/ppc/boards/geip-da923rc/config.h              |    1 -
 arch/ppc/configs/p1022ds_defconfig                 |   53 +
 arch/ppc/configs/p2020rdb_defconfig                |   21 +-
 arch/ppc/cpu-85xx/start.S                          |    2 +-
 arch/ppc/ddr-8xxx/Makefile                         |    4 +-
 arch/ppc/ddr-8xxx/common_timing_params.h           |    2 +
 arch/ppc/ddr-8xxx/ctrl_regs.c                      |  429 ++++++-
 arch/ppc/ddr-8xxx/ddr.h                            |   15 +-
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c               |    9 +-
 arch/ppc/ddr-8xxx/ddr3_dimm_params.c               |  193 +++
 .../ppc/ddr-8xxx/{ddr2_setctrl.c =3D> ddr_setctrl.c} |   44 +-
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c          |  103 +-
 arch/ppc/ddr-8xxx/main.c                           |   12 +-
 arch/ppc/ddr-8xxx/options.c                        |   58 +-
 arch/ppc/include/asm/fsl_ddr_dimm_params.h         |    9 +
 arch/ppc/include/asm/fsl_ddr_sdram.h               |   33 +-
 arch/ppc/include/asm/fsl_lbc.h                     |    3 +
 arch/ppc/include/asm/processor.h                   |    1 +
 arch/ppc/mach-mpc85xx/Kconfig                      |   36 +-
 arch/ppc/mach-mpc85xx/cpuid.c                      |    1 +
 arch/ppc/mach-mpc85xx/fdt.c                        |    8 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |    9 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   34 +-
 commands/Kconfig                                   |    8 +
 commands/Makefile                                  |    1 +
 commands/boot.c                                    |  121 +-
 commands/loadenv.c                                 |    2 +-
 commands/loadxy.c                                  |    2 +-
 commands/menutree.c                                |   60 +
 commands/nandtest.c                                |    4 +-
 commands/partition.c                               |   15 +-
 commands/time.c                                    |    2 +-
 commands/ubi.c                                     |    4 +-
 commands/uimage.c                                  |    7 +-
 common/Kconfig                                     |    5 +-
 common/Makefile                                    |    1 +
 common/blspec.c                                    |   81 +-
 common/ddr_spd.c                                   |   24 +
 common/env.c                                       |    2 +-
 common/environment.c                               |   51 +-
 common/hush.c                                      |   33 +
 common/menutree.c                                  |  181 +++
 common/tlsf_malloc.c                               |    2 +-
 common/uimage.c                                    |    6 +-
 .../defaultenv-2-menu/menu/00-boot-default/action  |    5 +
 .../defaultenv-2-menu/menu/00-boot-default/title   |    1 +
 .../defaultenv-2-menu/menu/10-boot-all/action      |    3 +
 .../defaultenv-2-menu/menu/10-boot-all/net/action  |    5 +
 .../defaultenv-2-menu/menu/10-boot-all/net/title   |    1 +
 .../defaultenv-2-menu/menu/10-boot-all/title       |    1 +
 .../menu/20-settings/config/action                 |    5 +
 .../menu/20-settings/config/title                  |    1 +
 .../menu/20-settings/network/action                |    3 +
 .../menu/20-settings/network/title                 |    1 +
 .../defaultenv-2-menu/menu/20-settings/title       |    1 +
 .../defaultenv-2-menu/menu/30-saveenv/action       |    8 +
 defaultenv/defaultenv-2-menu/menu/30-saveenv/title |    1 +
 defaultenv/defaultenv-2-menu/menu/40-shell/action  |    5 +
 defaultenv/defaultenv-2-menu/menu/40-shell/title   |    1 +
 defaultenv/defaultenv-2-menu/menu/50-reset/action  |    3 +
 defaultenv/defaultenv-2-menu/menu/50-reset/title   |    1 +
 .../defaultenv-2-menu/menu/boot-entries-collect    |   13 -
 .../defaultenv-2-menu/menu/boot-entries-edit       |   20 -
 .../defaultenv-2-menu/menu/boot-entries-remove     |   18 -
 .../defaultenv-2-menu/menu/boot-menu-add-entry     |    5 -
 .../menu/boot-menu-new-boot-entry                  |   21 -
 .../defaultenv-2-menu/menu/init-entries-collect    |    9 -
 .../defaultenv-2-menu/menu/init-entries-edit       |   20 -
 .../defaultenv-2-menu/menu/init-menu-add-entry     |    3 -
 defaultenv/defaultenv-2-menu/menu/mainmenu         |   20 +-
 defaultenv/defaultenv-2-menu/menu/settings         |   21 -
 defaultenv/defaultenv-2-menu/menu/title            |    1 +
 drivers/clk/Makefile                               |    3 +-
 drivers/clk/clk-ar933x.c                           |  175 +++
 drivers/clk/clk-divider-table.c                    |  119 --
 drivers/clk/clk-divider.c                          |  234 +++-
 drivers/clk/clk-fixed-factor.c                     |   33 +-
 drivers/clk/clk-gate.c                             |   13 +-
 drivers/clk/clk-mux.c                              |   10 +-
 drivers/clk/clk.c                                  |   32 +-
 drivers/clk/mvebu/common.c                         |    4 +-
 drivers/clk/mxs/clk-imx28.c                        |    2 +-
 drivers/clk/mxs/clk.h                              |    6 +-
 drivers/clk/tegra/clk-periph.c                     |    4 +-
 drivers/clk/tegra/clk-tegra20.c                    |    2 +-
 drivers/clocksource/Kconfig                        |   23 +
 drivers/clocksource/Makefile                       |    1 +
 drivers/clocksource/dummy.c                        |   56 +
 drivers/gpio/Kconfig                               |    7 +
 drivers/gpio/Makefile                              |    1 +
 drivers/gpio/gpio-davinci.c                        |  211 ++++
 drivers/i2c/busses/i2c-imx.c                       |    2 +-
 drivers/i2c/i2c.c                                  |   11 +
 drivers/misc/jtag.c                                |    2 +-
 drivers/mtd/core.c                                 |    2 +-
 drivers/mtd/devices/m25p80.c                       |    5 +-
 drivers/mtd/devices/mtd_dataflash.c                |    2 +-
 drivers/mtd/mtdoob.c                               |    2 +-
 drivers/mtd/mtdraw.c                               |    2 +-
 drivers/mtd/nand/nand-bb.c                         |    4 +-
 drivers/mtd/nand/nand_mxs.c                        |   37 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    2 +-
 drivers/mtd/partition.c                            |    4 +-
 drivers/mtd/ubi/cdev.c                             |    2 +-
 drivers/net/ar231x.c                               |    6 -
 drivers/net/at91_ether.c                           |    5 -
 drivers/net/designware.c                           |    5 -
 drivers/of/base.c                                  |    7 +-
 drivers/of/of_gpio.c                               |    6 +-
 drivers/serial/Kconfig                             |    7 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/serial_ar933x.c                     |  204 +++
 drivers/serial/serial_ar933x.h                     |   69 ++
 drivers/serial/serial_ns16550.c                    |   51 +-
 drivers/spi/imx_spi.c                              |    4 +-
 drivers/usb/core/usb.c                             |    4 +-
 drivers/usb/gadget/at91_udc.c                      |   18 +-
 drivers/video/Kconfig                              |    8 +
 drivers/video/Makefile                             |    3 +
 drivers/video/atmel_lcdfb_core.c                   |    6 +-
 drivers/video/edid.c                               |  909 ++++++++++++++
 drivers/video/edid.h                               |  138 +++
 drivers/video/fb.c                                 |  126 +-
 drivers/video/imx-ipu-fb.c                         |    9 +-
 drivers/video/imx-ipu-v3/Kconfig                   |   14 +
 drivers/video/imx-ipu-v3/Makefile                  |    5 +
 drivers/video/imx-ipu-v3/imx-hdmi.c                | 1297 ++++++++++++++++=
++++
 drivers/video/imx-ipu-v3/imx-hdmi.h                | 1032 ++++++++++++++++
 drivers/video/imx-ipu-v3/imx-ipu-v3.h              |  344 ++++++
 drivers/video/imx-ipu-v3/imx-ldb.c                 |  310 +++++
 drivers/video/imx-ipu-v3/ipu-common.c              |  836 +++++++++++++
 drivers/video/imx-ipu-v3/ipu-dc.c                  |  392 ++++++
 drivers/video/imx-ipu-v3/ipu-di.c                  |  762 ++++++++++++
 drivers/video/imx-ipu-v3/ipu-dmfc.c                |  394 ++++++
 drivers/video/imx-ipu-v3/ipu-dp.c                  |  313 +++++
 drivers/video/imx-ipu-v3/ipu-prv.h                 |  204 +++
 drivers/video/imx-ipu-v3/ipufb.c                   |  353 ++++++
 drivers/video/imx-ipu-v3/ipuv3-plane.c             |  239 ++++
 drivers/video/imx-ipu-v3/ipuv3-plane.h             |   51 +
 drivers/video/imx.c                                |   11 +-
 drivers/video/of_display_timing.c                  |  234 ++++
 drivers/video/omap.c                               |    4 +-
 drivers/video/pxa.c                                |    5 -
 drivers/video/s3c24xx.c                            |    6 +-
 drivers/video/sdl.c                                |    4 +-
 drivers/video/stm.c                                |    6 +-
 fs/devfs-core.c                                    |    2 +-
 images/Makefile.imx                                |   23 +
 include/blspec.h                                   |   10 +-
 include/common.h                                   |    9 +
 include/ddr_spd.h                                  |  116 ++
 include/dt-bindings/clock/ar933x-clk.h             |   22 +
 include/fb.h                                       |   44 +-
 include/i2c/i2c.h                                  |    1 +
 include/image.h                                    |    2 +-
 include/linux/clk.h                                |   31 +-
 include/linux/const.h                              |   27 +
 include/linux/err.h                                |    8 +
 include/linux/mtd/mtd-abi.h                        |   12 +-
 include/linux/mtd/mtd.h                            |   15 +-
 include/menu.h                                     |    2 +
 include/mfd/imx6q-iomuxc-gpr.h                     |   18 +
 include/param.h                                    |   13 +
 include/video/fourcc.h                             |  261 ++++
 lib/display_options.c                              |    2 +-
 lib/gui/picopng.c                                  |    2 +-
 lib/libmtd.c                                       |   10 +-
 lib/parameter.c                                    |   87 ++
 lib/unlink-recursive.c                             |    2 +-
 net/eth.c                                          |   14 +-
 scripts/Makefile.lib                               |    2 +-
 scripts/genenv                                     |   21 +-
 scripts/imx/imx-image.c                            |   10 +-
 scripts/kallsyms.c                                 |    6 +-
 scripts/kwbimage.c                                 |    2 +-
 scripts/omap4_usbboot/omap4_usbboot.c              |   17 +-
 306 files changed, 15009 insertions(+), 1282 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec=
-pfla02-4gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec=
-pfla02dl-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec=
-pfla02dl.h
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec=
-pfla02s-512mb.imxcfg
 create mode 100644 arch/arm/boards/variscite-mx6/Makefile
 create mode 100644 arch/arm/boards/variscite-mx6/board.c
 create mode 100644 arch/arm/boards/variscite-mx6/flash-header-variscite.im=
xcfg
 create mode 100644 arch/arm/boards/variscite-mx6/lowlevel.c
 create mode 100644 arch/arm/boards/virt2real/Makefile
 create mode 100644 arch/arm/boards/virt2real/board.c
 create mode 100644 arch/arm/boards/virt2real/lowlevel.c
 create mode 100644 arch/arm/boards/virt2real/virt2real.dox
 create mode 100644 arch/arm/configs/virt2real_defconfig
 create mode 100644 arch/arm/dts/dm365.dtsi
 create mode 100644 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
 rename arch/arm/dts/{imx27-phytec-phycard-s-som.dts =3D> imx27-phytec-phyc=
ard-s-som.dtsi} (55%)
 delete mode 100644 arch/arm/dts/imx27-pingrp.h
 create mode 100644 arch/arm/dts/imx6dl-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6dl-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/imx6q-var-custom.dts
 create mode 100644 arch/arm/dts/imx6q-var-som.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/imx6s-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6s-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/virt2real.dts
 create mode 100644 arch/arm/mach-davinci/Kconfig
 create mode 100644 arch/arm/mach-davinci/Makefile
 create mode 100644 arch/arm/mach-davinci/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-davinci/include/mach/hardware.h
 create mode 100644 arch/arm/mach-davinci/include/mach/serial.h
 create mode 100644 arch/arm/mach-davinci/include/mach/time.h
 create mode 100644 arch/arm/mach-davinci/mach-davinci.dox
 create mode 100644 arch/arm/mach-davinci/time.c
 create mode 100644 arch/arm/mach-imx/imx6-bbu-nand.c
 create mode 100644 arch/mips/boards/ritmix-rzx50/Makefile
 rename arch/mips/boards/{rzx50 =3D> ritmix-rzx50}/include/board/board_pbl_=
start.h (100%)
 rename arch/mips/boards/{rzx50 =3D> ritmix-rzx50}/include/board/debug_ll.h=
 (100%)
 rename arch/mips/boards/{rzx50/rzx50.dox =3D> ritmix-rzx50/ritmix-rzx50.do=
x} (96%)
 rename arch/mips/boards/{rzx50 =3D> ritmix-rzx50}/serial.c (76%)
 delete mode 100644 arch/mips/boards/rzx50/Makefile
 create mode 100644 arch/mips/boards/tplink-mr3020/Makefile
 create mode 100644 arch/mips/boards/tplink-mr3020/board.c
 create mode 100644 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
 rename arch/mips/configs/{rzx50_defconfig =3D> ritmix-rzx50_defconfig} (10=
0%)
 create mode 100644 arch/mips/configs/tplink-mr3020_defconfig
 create mode 100644 arch/mips/dts/ar9331.dtsi
 create mode 120000 arch/mips/dts/include/dt-bindings
 create mode 100644 arch/mips/dts/jz4755.dtsi
 create mode 100644 arch/mips/dts/tplink-mr3020.dts
 create mode 100644 arch/mips/mach-ath79/Kconfig
 create mode 100644 arch/mips/mach-ath79/Makefile
 create mode 100644 arch/mips/mach-ath79/include/mach/ar71xx_regs.h
 create mode 100644 arch/mips/mach-ath79/include/mach/ath79.h
 create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-ath79/reset.c
 delete mode 100644 arch/mips/mach-xburst/serial.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/Makefile
 create mode 100644 arch/ppc/boards/freescale-p1022ds/config.h
 create mode 100644 arch/ppc/boards/freescale-p1022ds/ddr.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p1022ds/env/config
 create mode 100644 arch/ppc/boards/freescale-p1022ds/ics307_clk.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/law.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/p1022ds.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/p1022ds.h
 create mode 100644 arch/ppc/boards/freescale-p1022ds/tlb.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config
 create mode 100644 arch/ppc/configs/p1022ds_defconfig
 create mode 100644 arch/ppc/ddr-8xxx/ddr3_dimm_params.c
 rename arch/ppc/ddr-8xxx/{ddr2_setctrl.c =3D> ddr_setctrl.c} (53%)
 create mode 100644 commands/menutree.c
 create mode 100644 common/menutree.c
 create mode 100644 defaultenv/defaultenv-2-menu/menu/00-boot-default/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/00-boot-default/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/net/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/net/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/config/ac=
tion
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/config/ti=
tle
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/network/a=
ction
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/network/t=
itle
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/30-saveenv/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/30-saveenv/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/40-shell/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/40-shell/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/50-reset/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/50-reset/title
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-collect
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-edit
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-remove
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-en=
try
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-entries-collect
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-entries-edit
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/settings
 create mode 100644 defaultenv/defaultenv-2-menu/menu/title
 create mode 100644 drivers/clk/clk-ar933x.c
 delete mode 100644 drivers/clk/clk-divider-table.c
 create mode 100644 drivers/clocksource/dummy.c
 create mode 100644 drivers/gpio/gpio-davinci.c
 create mode 100644 drivers/serial/serial_ar933x.c
 create mode 100644 drivers/serial/serial_ar933x.h
 create mode 100644 drivers/video/edid.c
 create mode 100644 drivers/video/edid.h
 create mode 100644 drivers/video/imx-ipu-v3/Kconfig
 create mode 100644 drivers/video/imx-ipu-v3/Makefile
 create mode 100644 drivers/video/imx-ipu-v3/imx-hdmi.c
 create mode 100644 drivers/video/imx-ipu-v3/imx-hdmi.h
 create mode 100644 drivers/video/imx-ipu-v3/imx-ipu-v3.h
 create mode 100644 drivers/video/imx-ipu-v3/imx-ldb.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-common.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-dc.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-di.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-dmfc.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-dp.c
 create mode 100644 drivers/video/imx-ipu-v3/ipu-prv.h
 create mode 100644 drivers/video/imx-ipu-v3/ipufb.c
 create mode 100644 drivers/video/imx-ipu-v3/ipuv3-plane.c
 create mode 100644 drivers/video/imx-ipu-v3/ipuv3-plane.h
 create mode 100644 drivers/video/of_display_timing.c
 create mode 100644 include/dt-bindings/clock/ar933x-clk.h
 create mode 100644 include/linux/const.h
 create mode 100644 include/video/fourcc.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
