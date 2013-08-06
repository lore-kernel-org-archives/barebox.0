Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6ays-0002sm-K7
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 06:42:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V6ayV-0007bF-Gs
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 08:42:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V6ayT-000098-En
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 08:42:29 +0200
Date: Tue, 6 Aug 2013 08:42:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130806064229.GY26614@pengutronix.de>
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
Subject: v2013.08.0
To: barebox@lists.infradead.org


Finally we have an August release!

Here are the patches that went in between this and the last release:

Sascha

----------------------------------------------------------------
Alexander Aring (5):
      common: fix codestyle in ALIGN macros
      common: add ALIGN_DOWN macro
      memtest: remove memtest command
      common: add memtest.c with mem_test routine
      commands: add new memtest command

Alexander Shiyan (7):
      ARM: ccmx51: Export available module GPIOs to barebox userspace
      ARM: ccmx51js: Add WP-pin definition for SDHC3
      ARM: ccmx51: Return error if module is not detected
      ARM: pcm038: Avoid warning if gadget support not compiled in
      ARM: ccmx51: Set PMIC SW1 voltage for i.MX51 less than TO3 only
      ARM: pcm038: Add setup for MC13783 IRQ pin
      commands: spi: Fix spi read procedure

Alexey Galakhov (1):
      friendlyarm-tiny210: do not restart barebox twice

Antony Pavlov (9):
      MAKEALL: fix typos
      MIPS: pbl: remove extra LONGSIZE definition
      MIPS: pbl: use generated label in ADR macro
      MIPS: pbl: remove extra copyrights
      MIPS: pbl: add mips_barebox_10h asm macro
      MIPS: mach-ar231x: enable DEBUG_LL
      MIPS: pbl: add nmon MIPS nano-monitor
      MIPS: qemu-malta: rework debug_ll.h
      MIPS: qemu-malta: add nmon

Christoph Fritz (3):
      omap-fb: add driver
      ARM omap-fb: add board helper code
      pcm049: Add platformcode for omap4 framebuffer

Hubert Feurstein (1):
      include/printk: fix level of pr_err and pr_warning

Jan Luebbe (2):
      arm: omap: am33xx: set up SPI devices
      nand_base: add missing newline

Jan Weitzel (2):
      omap4: set voltage according to mpu freq
      OMAP4 do not set TPS62361_REG_ADDR_SET0

Jean-Christophe PLAGNIOL-VILLARD (1):
      ARM: at91: animeo IP: fix partition table

Juergen Beisert (1):
      clk: MXS: Add is_enabled callback for clkref

Lucas Stach (7):
      clk: add clock lookup from devicetree
      tegra: change clocksource driver to be more lowlevel
      clk: allow to instanciate clk gate without registering it
      clk: allow to instanciate clk mux without registering it
      tegra: deduplicate clk defines
      tegra: add new clock framework driver
      tegra: add peripheral clocks

Masaki Muranaka (2):
      Remove ftstc(). It is declared but not implemented.
      Fix typo.

Oleksij Rempel (6):
      MIPS: pbl: add pbl_sleep macro
      MIPS: pbl: add pbl_probe_mem macro
      MIPS: mach-ar231x: add lowlevel init pbl macros
      MIPS: netgear-wg102: add pbl support
      MIPS: netgear-wg102: add debug_ll
      netgear-wg102: pbl, add extra check for mem config

Philipp Zabel (1):
      ARM: i.MX6: Fix usbmisc label in devicetree

Renaud Barbier (11):
      ppc: gianfar MDIO buses
      P2020RDB: update build configuration
      common: DDR2 SPD checksum.
      ppc asm: DDR headers
      ppc 8xxx: DDR headers
      ppc 8xxx: DIMM parameters calculation
      ppc 8xxx: DDR utility and memory options
      ppx 8xxx: DDR registers value calculation
      ppc 8xxx: core DDR driver functions
      ppc 85xx: early I2C support
      ppc ddr-8xxx: misplaced parenthesis

S. Fricke (1):
      ARM i.MX6: set imx6 silicon revision

Sascha Hauer (150):
      mci: rename capabilities flags
      mci: Print more info
      net: Set mac-address property
      ata: move ATA_ID_ fields and functions to include/
      ata: ahci: only use lba48 on drives which support it
      ata: implement detect
      ata: ahci: Allow 'detect' on hardware device
      ata: i.MX sata: Add devicetree probe support
      mtd: Align erase_op to eraseblock boundaries
      mfd: stmpe: Add devicetree probe support
      ARM: i.MX6: Add sata device to devicetree
      ARM: i.MX6 RealQ7: switch to imximage
      ARM: i.MX6 DMO RealQ7: Switch to devicetree
      ARM: i.MX51: Use IIM for detecting silicon revision
      ARM: i.MX51: Make imx51_init_lowlevel callable from early init
      ARM: i.MX51 efikasb: call imx51_lowlevel_init from lowlevel init
      ARM: i.MX51: Adjust IPG_CLK_DIVR to 6:1
      ARM: i.MX: Make timer available earlier
      gpio: i.MX: initialize earlier
      ARM: i.MX51: Add USBH1 and USBH2 pinmux entries
      ARM: i.MX51: Add usbmisc devicetree node
      ARM: i.MX51: Add pata alias
      ata: ide: Allow to set the devicename
      ata: i.MX pata: Add devicetree probe support
      menu: Align entries
      Fix gotoXY argument order
      menu: Make action callback optional
      bootm: factor out code to make it usable from C
      read_file: Make it work on tftp servers which do not pass size
      clk: divider: Add onebased divider support
      clk: gate: Add inverted gate support
      clk: add prototype for clk_is_enabled
      ARM: MXS: Add MXS specific clk types
      ARM: MXS: add clk drivers
      ARM: MXS: remove board specific clock setups
      mci: mxs: Use dev_*
      net: fec: Use clk API unconditionally
      mci: mxs: use common clk API
      mtd: gpmi-nand: switch to clk support
      serial: auart: Use clk support
      serial: stm: Use clk support
      spi: mxs: Use clk support
      ARM: MXS: octotp: switch to clk support
      ARM: MXS: remove imx_enable_enetclk
      video: stm: switch to clk support
      ARM: MXS: remove old clock support
      mci: provide static inline function for mmc_host_is_spi
      mci: add mci_caps function
      mci: Use tran_speed field to fix highspeed MMC card clock
      ppc: remove strcasecmp/strncasecmp prototypes
      ata: ide: embed ata_ioports into struct ide_port and export it
      ata: pata-imx: implement detect callback for hardware device
      ata: Make 'already initialized' a debug message
      usb: rename USB devices to reflect bus structure
      usb: move scanned status into core
      usb: implement a usb_host_detect to scan individual USB hosts
      usb: ehci: implement detect callback
      detect command: Add -a option to detect all devices
      module: remove duplicate ALIGN and __ALIGN_MASK definition
      mtd: Fix size_t printf format specifier
      Makefile: make silent module build more silent
      kconfig: sync to linux v3.10-rc6
      remove unused debug Kconfig options
      ARM: scb9328: remove dead code
      ARM: imx27ads: remove dead code
      ARM: i.MX: rename initcall functions
      ARM: i.MX: centralize i.MX startup
      ARM: i.MX53: Add devicetree files
      ARM: Marvell boards: remove empty config.h files
      ARM: i.MX boards: remove empty config.h files
      ARM: i.MX53 LOCO: Switch to devicetree probing
      ARM: i.MX53: Do not register platform devices with devicetree probe
      add function to get boardinfo string
      ARM: i.MX: adopt cpu_is_* for multiple SoCs
      usb: ehci: Fixup efika hack for devicetree
      usb: i.MX chipidea: probe ULPI phys later
      ARM: i.MX51 efikasb: add flash environment support
      ARM: i.MX51 efikasb: Switch to devicetree probing
      ARM: i.MX: Make debug UART selectable from Kconfig
      startup: Add initcall tracing debug option
      imx-usb-loader: Add i.MX6 Solo/DualLite support
      pinctrl: imx-iomux-v3: Add imx6dl compatible entry
      usb: gadget: fsl: Fix registering from chipidea driver
      ARM: i.MX6: Add cputype detection
      mfd: mc34708: provide static inline wrapper
      driver: implement device_detect_by_name function
      ARM: i.MX51 efikasb: detect environment device
      ARM: i.MX51 babbage: detect environment device
      ARM: Allow to pass a devicetree via boarddata
      ARM: dts: Add .S files as secondary target
      ARM: split barebox_arm_head in two separate functions
      ARM: pbl: move linker script to lib
      ARM: build dtbs depending on CONFIG_OFTREE
      ARM: Add image end section
      imx-image: fix path to imx-image binary
      Merge branch 'for-next/ata'
      Merge branch 'for-next/bootm'
      Merge branch 'for-next/config-h'
      Merge branch 'for-next/debug'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-realq7'
      Merge branch 'for-next/imx53-oftree'
      Merge branch 'for-next/kconfig-update'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/memtest'
      Merge branch 'for-next/menu'
      Merge branch 'for-next/mfd'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Add multi images support
      ARM: i.MX: Add multi images support Makefile
      ARM: i.MX27 pcm038: switch to multi image
      Merge branch 'for-next/multi-image'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/of'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/usb'
      Merge branch 'for-next-manual/oftree-linux-sync'
      ARM: i.MX53 loco: Switch to imximage
      ARM: i.MX53 loco: Switch to multi image support
      ARM: dmo realq7: switch to multi image support
      ARM: i.MX51 babbage: switch to multi image support
      ARM: i.MX: use device_detect_by_name where applicable
      ARM: Turn most board directories into regular build directories
      ARM: i.MX: remove now unused ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
      ARM: i.MX: select SoC from board
      ARM: i.MX51 babbage: add board name to flash header file
      ARM: i.MX51 babbage: prepare for multiboard support
      ARM: i.MX51 babbage: Move over to multiboard
      ARM: i.MX53 loco: add board name to flash header file
      ARM: i.MX53 loco: prepare multiboard support
      ARM: i.MX53 loco: Move over to multiboard
      ARM: i.MX6 realq7: prepare multiboard support
      ARM: i.MX6 realq7: switch to multiboard
      ARM: i.MX51 efikasb: switch to multiboard support
      ARM: Add a imx_v7_defconfig
      Merge branch 'for-next-manual-rebase/multi-image'
      OF: base: fix inifinite looping in node iterators
      Revert "ARM: i.MX27 pcm038: switch to multi image"
      ARM: generate imx dcd.S files as *.dcd.S
      ARM: i.MX: Fix i.MX27 debug uart Kconfig entries
      ARM: mxs: make ssp gates parents of ssp dividers
      ARM: imx_v7_defconfig: remove board specific part from environment
      of: Use correct devicetree in of_print_cmdline
      of: net: Use correct devicetree in eth_of_fixup
      of: Use dts syntax when printing devicetrees
      ARM: bootm: Print Kernel commandline unconditionally
      Release v2013.08.0

Sebastian Hesselbarth (26):
      lib: string: import case-insensitive string compare
      OF: base: bail out early on missing matches for of_match_node
      OF: base: also update property length on of_property_write_u32
      OF: base: export of_alias_scan
      OF: base: convert strcmp to default string compare functions
      OF: base: sync of_find_property with linux OF API
      OF: base: sync of_find_node_by_path with linux OF API
      OF: base: rename of_node_disabled to of_device_is_available
      OF: base: import of_find_node_by_name from Linux OF API
      OF: base: import of_find_compatible_node from Linux OF API
      OF: base: import of_find_matching_node_and_match from Linux OF API
      OF: base: import of_find_node_with_property from Linux OF API
      OF: base: import parent/child functions from Linux OF API
      OF: base: import of_property_read_* helpers from Linux OF API
      OF: base: import of_parse_phandle from Linux OF API
      OF: base: import parse phandle functions from Linux OF API
      OF: base: introduce property write for bool, u8, u16, and u64
      OF: base: import property iterators from Linux OF API
      OF: base: remove of_tree_for_each_node from public API
      OF: base: remove of_find_child_by_name
      OF: base: convert and remove device_node_for_nach_child
      OF: base: cleanup base function include
      OF: base: add sanity checks to of_new/delete_property
      OF: base: use of_delete_property where applicable
      OF: base: fix iterator in of_get_next_available_child
      OF: base: initalize from node in of_find_node_with_property

Teresa G=E1mez (9):
      ARM: OMAP: AM33xx: Add muxing function for spi0
      omap3_spi: Remove CS check in driver
      omap3_spi: Set the correct CS number for AM33xx
      ARM: OMAP: pcm051: Add spi flash support
      ARM: AM33xx: pcm051: Add network support
      i2c-omap: cleanup cpu_is functions
      ARM: AM33xx: Add i2c support for AM33xx
      ARM: OMAP: pcm051: Add i2c0 and at24 eeprom support
      i2c-omap: Remove cpu_is functions completely

 .gitignore                                         |    2 +
 MAKEALL                                            |    4 +-
 Makefile                                           |   16 +-
 arch/arm/Kconfig                                   |    3 +
 arch/arm/Makefile                                  |   88 +-
 arch/arm/boards/Makefile                           |   68 +
 arch/arm/boards/animeo_ip/env/config               |    4 +-
 arch/arm/boards/archosg9/lowlevel.c                |    3 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c          |   10 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                  |   39 +-
 arch/arm/boards/ccxmx51/ccxmx51js.c                |   15 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |    5 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |    7 +-
 arch/arm/boards/dmo-mx6-realq7/Makefile            |    4 +-
 arch/arm/boards/dmo-mx6-realq7/board.c             |  323 +--
 arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg |    3 +
 arch/arm/boards/dmo-mx6-realq7/flash_header.c      |   40 -
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |   12 +-
 arch/arm/boards/efika-mx-smartbook/Makefile        |    5 +-
 arch/arm/boards/efika-mx-smartbook/board.c         |  333 +--
 arch/arm/boards/efika-mx-smartbook/dcd-data.h      |   56 -
 .../flash-header-imx51-genesi-efikasb.imxcfg       |   57 +
 arch/arm/boards/efika-mx-smartbook/flash_header.c  |   29 -
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |   17 +-
 arch/arm/boards/eukrea_cpuimx25/config.h           |   23 -
 arch/arm/boards/eukrea_cpuimx35/config.h           |   19 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |    5 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    4 +-
 arch/arm/boards/freescale-mx25-3-stack/config.h    |   27 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   11 +-
 arch/arm/boards/freescale-mx35-3-stack/config.h    |   24 -
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   21 +-
 ...er.imxcfg =3D> flash-header-imx51-babbage.imxcfg} |    0
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |   14 +-
 arch/arm/boards/freescale-mx53-loco/Makefile       |    4 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |  208 +-
 arch/arm/boards/freescale-mx53-loco/dcd-data.h     |   54 -
 .../flash-header-imx53-loco.imxcfg                 |   54 +
 arch/arm/boards/freescale-mx53-loco/flash_header.c |   52 -
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |   14 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    2 +-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |   31 +-
 arch/arm/boards/globalscale-guruplug/config.h      |    4 -
 arch/arm/boards/globalscale-mirabox/config.h       |    4 -
 arch/arm/boards/highbank/init.c                    |   20 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |    8 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |   67 +-
 arch/arm/boards/karo-tx25/config.h                 |   27 -
 arch/arm/boards/karo-tx28/tx28-stk5.c              |    8 +-
 arch/arm/boards/marvell-armada-xp-gp/config.h      |    4 -
 arch/arm/boards/panda/lowlevel.c                   |    7 +-
 arch/arm/boards/pcm037/config.h                    |   31 -
 arch/arm/boards/pcm037/pcm037.c                    |    4 +-
 arch/arm/boards/pcm038/pcm038.c                    |   18 +-
 arch/arm/boards/pcm043/config.h                    |   27 -
 arch/arm/boards/pcm043/pcm043.c                    |    4 +-
 arch/arm/boards/pcm049/board.c                     |  188 ++
 arch/arm/boards/pcm049/env/bin/init_board          |   23 +
 arch/arm/boards/pcm049/env/config                  |   18 +-
 arch/arm/boards/pcm049/lowlevel.c                  |    8 +-
 arch/arm/boards/pcm049/mux.c                       |   60 +-
 arch/arm/boards/pcm051/board.c                     |   87 +
 arch/arm/boards/pcm051/env/boot/spi-nor            |   12 +
 arch/arm/boards/pcm051/env/init/mtdparts-nor       |   12 +
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |    9 +-
 arch/arm/boards/plathome-openblocks-ax3/config.h   |    4 -
 arch/arm/boards/scb9328/config.h                   |   26 -
 arch/arm/boards/scb9328/lowlevel_init.S            |   51 -
 arch/arm/boards/tqma53/board.c                     |    2 +-
 arch/arm/configs/dmo-realq7_defconfig              |    7 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |   14 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    1 +
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    1 +
 arch/arm/configs/freescale-mx6-arm2_defconfig      |    1 +
 arch/arm/configs/freescale_mx51_babbage_defconfig  |    6 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |   13 +-
 arch/arm/configs/imx_v7_defconfig                  |  130 ++
 arch/arm/configs/mx21ads_defconfig                 |    1 +
 arch/arm/configs/pcm037_defconfig                  |    1 +
 arch/arm/configs/pcm049_defconfig                  |    5 +
 arch/arm/configs/pcm051_defconfig                  |   12 +-
 arch/arm/cpu/Makefile                              |    6 +-
 arch/arm/cpu/dtb.c                                 |   22 +-
 arch/arm/cpu/start-images.c                        |   49 +
 arch/arm/cpu/start.c                               |   20 +
 arch/arm/cpu/uncompress.c                          |  108 +
 arch/arm/dts/Makefile                              |   13 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts             |  328 +++
 arch/arm/dts/imx51.dtsi                            |   49 +
 arch/arm/dts/imx53-pinfunc.h                       | 1189 ++++++++++
 arch/arm/dts/imx53-qsb.dts                         |  314 +++
 arch/arm/dts/imx53.dtsi                            | 1092 +++++++++
 arch/arm/dts/imx6q-dmo-realq7.dts                  |  354 +++
 arch/arm/dts/imx6qdl.dtsi                          |   12 +-
 arch/arm/include/asm/barebox-arm-head.h            |   14 +-
 arch/arm/include/asm/barebox-arm.h                 |    6 +
 arch/arm/lib/bootm.c                               |    3 +-
 arch/arm/{pbl/zbarebox.lds.S =3D> lib/pbl.lds.S}     |    9 +-
 arch/arm/lib/runtime-offset.S                      |    3 +
 arch/arm/mach-imx/Kconfig                          |  226 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/clk-imx1.c                       |    2 +-
 arch/arm/mach-imx/clk-imx21.c                      |    2 +-
 arch/arm/mach-imx/clk-imx25.c                      |    2 +-
 arch/arm/mach-imx/clk-imx27.c                      |    2 +-
 arch/arm/mach-imx/clk-imx31.c                      |    2 +-
 arch/arm/mach-imx/clk-imx35.c                      |    2 +-
 arch/arm/mach-imx/clk-imx5.c                       |    4 +-
 arch/arm/mach-imx/clk-imx6.c                       |    2 +-
 arch/arm/mach-imx/clocksource.c                    |    2 +-
 arch/arm/mach-imx/imx.c                            |   91 +
 arch/arm/mach-imx/imx1.c                           |   12 +-
 arch/arm/mach-imx/imx21.c                          |    9 +-
 arch/arm/mach-imx/imx25.c                          |    8 +-
 arch/arm/mach-imx/imx27.c                          |    9 +-
 arch/arm/mach-imx/imx31.c                          |    9 +-
 arch/arm/mach-imx/imx35.c                          |   14 +-
 arch/arm/mach-imx/imx51.c                          |   41 +-
 arch/arm/mach-imx/imx53.c                          |    8 +-
 arch/arm/mach-imx/imx6.c                           |   50 +-
 arch/arm/mach-imx/include/mach/debug_ll.h          |   31 +-
 arch/arm/mach-imx/include/mach/esdhc.h             |    2 +-
 arch/arm/mach-imx/include/mach/generic.h           |  122 +-
 arch/arm/mach-imx/include/mach/imx6.h              |   31 +
 arch/arm/mach-mxs/Makefile                         |    5 +-
 arch/arm/mach-mxs/imx.c                            |   16 -
 arch/arm/mach-mxs/imx_lcd_clk.c                    |  150 --
 arch/arm/mach-mxs/include/mach/clock-imx23.h       |   30 -
 arch/arm/mach-mxs/include/mach/clock-imx28.h       |   33 -
 arch/arm/mach-mxs/include/mach/clock.h             |    7 -
 arch/arm/mach-mxs/ocotp.c                          |   13 +-
 arch/arm/mach-mxs/soc-imx23.c                      |    9 +
 arch/arm/mach-mxs/soc-imx28.c                      |    9 +
 arch/arm/mach-mxs/speed-imx23.c                    |  315 ---
 arch/arm/mach-mxs/speed-imx28.c                    |  432 ----
 arch/arm/mach-omap/Makefile                        |    2 +-
 arch/arm/mach-omap/am33xx_mux.c                    |    5 +
 arch/arm/mach-omap/include/mach/am33xx-devices.h   |   34 +
 arch/arm/mach-omap/include/mach/am33xx-mux.h       |    1 +
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |    9 +
 arch/arm/mach-omap/include/mach/devices.h          |    2 -
 arch/arm/mach-omap/include/mach/generic.h          |    6 +
 arch/arm/mach-omap/include/mach/omap-fb.h          |   47 +
 arch/arm/mach-omap/include/mach/omap3-devices.h    |    9 +-
 arch/arm/mach-omap/include/mach/omap4-devices.h    |   12 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |    3 +-
 arch/arm/mach-omap/omap4_generic.c                 |   95 +-
 arch/arm/mach-omap/omap_devices.c                  |    6 -
 arch/arm/mach-omap/omap_fb.c                       |   34 +
 arch/arm/mach-tegra/Makefile                       |    1 -
 arch/arm/mach-tegra/include/mach/lowlevel.h        |   23 +
 arch/arm/mach-tegra/include/mach/tegra20-car.h     |  175 +-
 arch/arm/mach-tegra/tegra20-car.c                  |  120 -
 arch/arm/mach-tegra/tegra20-timer.c                |   16 +-
 arch/arm/mach-tegra/tegra_avp_init.c               |    6 +-
 arch/arm/pbl/Makefile                              |    5 +-
 arch/mips/Kconfig                                  |   47 +
 .../netgear-wg102/include/board/board_pbl_start.h  |   77 +
 .../boards/netgear-wg102/include/board/debug_ll.h  |   33 +
 .../qemu-malta/include/board/board_pbl_start.h     |    3 +
 .../boards/qemu-malta/include/board/debug_ll.h     |   27 +
 arch/mips/boards/qemu-malta/init.c                 |    2 +-
 arch/mips/boot/start-pbl.S                         |    1 -
 arch/mips/include/asm/debug_ll_ns16550.h           |  100 +-
 arch/mips/include/asm/pbl_macros.h                 |   44 +-
 arch/mips/include/asm/pbl_nmon.h                   |  270 +++
 arch/mips/mach-ar231x/Kconfig                      |    2 +
 arch/mips/mach-ar231x/include/mach/debug_ll.h      |   27 +
 arch/mips/mach-ar231x/include/mach/pbl_macros.h    |  177 ++
 arch/mips/mach-malta/Kconfig                       |    1 +
 arch/mips/mach-malta/include/mach/debug_ll.h       |    9 +-
 arch/mips/mach-malta/include/mach/hardware.h       |    4 +-
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |   13 +-
 arch/ppc/configs/p2020rdb_defconfig                |    4 +-
 arch/ppc/ddr-8xxx/common_timing_params.h           |   44 +
 arch/ppc/ddr-8xxx/ctrl_regs.c                      |  425 ++++
 arch/ppc/ddr-8xxx/ddr.h                            |  105 +
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c               |  303 +++
 arch/ppc/ddr-8xxx/ddr2_setctrl.c                   |   58 +
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c          |  214 ++
 arch/ppc/ddr-8xxx/main.c                           |  238 ++
 arch/ppc/ddr-8xxx/options.c                        |  111 +
 arch/ppc/ddr-8xxx/util.c                           |  100 +
 arch/ppc/include/asm/fsl_ddr_dimm_params.h         |   60 +
 arch/ppc/include/asm/fsl_ddr_sdram.h               |  131 +-
 arch/ppc/include/asm/string.h                      |    2 -
 arch/ppc/mach-mpc5xxx/cpu.c                        |    4 +-
 arch/ppc/mach-mpc85xx/eth-devices.c                |   44 +-
 arch/ppc/mach-mpc85xx/fsl_i2c.c                    |  253 ++
 .../mach-mpc85xx/include/mach/fsl_i2c.h}           |   20 +-
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h       |    4 +
 commands/Kconfig                                   |   18 +-
 commands/Makefile                                  |    2 +-
 commands/bootm.c                                   |  281 +--
 commands/detect.c                                  |   17 +-
 commands/memtest.c                                 |  492 ++--
 commands/of_node.c                                 |    2 +-
 commands/of_property.c                             |   12 +-
 commands/oftree.c                                  |   11 +-
 commands/partition.c                               |    4 -
 commands/spi.c                                     |    2 +-
 commands/usb.c                                     |   10 +-
 common/Kconfig                                     |  111 +-
 common/Makefile                                    |    3 +
 common/bootm.c                                     |  303 +++
 common/ddr_spd.c                                   |   39 +
 common/memtest.c                                   |  313 +++
 common/menu.c                                      |   15 +-
 common/misc.c                                      |   17 +
 common/module.c                                    |    3 -
 common/oftree.c                                    |    2 +-
 common/startup.c                                   |    4 +
 common/version.c                                   |   10 +-
 drivers/ata/ahci.c                                 |   35 +-
 drivers/ata/disk_ata_drive.c                       |   92 +-
 drivers/ata/ide-sff.c                              |   59 +-
 drivers/ata/intf_platform_ide.c                    |   14 +-
 drivers/ata/pata-imx.c                             |   37 +-
 drivers/ata/sata-imx.c                             |   13 +
 drivers/base/driver.c                              |   10 +
 drivers/clk/Kconfig                                |    5 +
 drivers/clk/Makefile                               |    3 +
 drivers/clk/clk-divider.c                          |   44 +-
 drivers/clk/clk-gate.c                             |   68 +-
 drivers/clk/clk-mux.c                              |   29 +-
 drivers/clk/clk.c                                  |   99 +-
 drivers/clk/clkdev.c                               |   74 +
 drivers/clk/mxs/Makefile                           |    5 +
 drivers/clk/mxs/clk-div.c                          |  112 +
 drivers/clk/mxs/clk-frac.c                         |  136 ++
 drivers/clk/mxs/clk-imx23.c                        |  156 ++
 drivers/clk/mxs/clk-imx28.c                        |  195 ++
 drivers/clk/mxs/clk-lcdif.c                        |   75 +
 drivers/clk/mxs/clk-pll.c                          |  117 +
 drivers/clk/mxs/clk-ref.c                          |  164 ++
 drivers/clk/mxs/clk.h                              |   52 +
 drivers/clk/tegra/Makefile                         |    7 +
 drivers/clk/tegra/clk-divider.c                    |  201 ++
 drivers/clk/tegra/clk-periph.c                     |  202 ++
 drivers/clk/tegra/clk-pll-out.c                    |  139 ++
 drivers/clk/tegra/clk-pll.c                        |  451 ++++
 drivers/clk/tegra/clk-tegra20.c                    |  354 +++
 drivers/clk/tegra/clk.c                            |   57 +
 drivers/clk/tegra/clk.h                            |  150 ++
 drivers/gpio/gpio-imx.c                            |    2 +-
 drivers/i2c/busses/i2c-omap.c                      |  238 +-
 drivers/i2c/i2c.c                                  |    2 +-
 drivers/mci/atmel_mci.c                            |    6 +-
 drivers/mci/imx-esdhc.c                            |    4 +-
 drivers/mci/imx.c                                  |    2 +-
 drivers/mci/mci-bcm2835.c                          |    3 +-
 drivers/mci/mci-core.c                             |   83 +-
 drivers/mci/mxs.c                                  |   93 +-
 drivers/mci/omap_hsmmc.c                           |    3 +-
 drivers/mci/pxamci.c                               |    2 +-
 drivers/mfd/stmpe-i2c.c                            |   32 +-
 drivers/mtd/core.c                                 |   50 +-
 drivers/mtd/nand/nand_base.c                       |    2 +-
 drivers/mtd/nand/nand_mxs.c                        |   11 +-
 drivers/net/fec_imx.c                              |   31 +-
 drivers/net/gianfar.c                              |  146 +-
 drivers/net/gianfar.h                              |   13 +-
 drivers/net/smc91111.c                             |    4 -
 drivers/net/smc911x.c                              |    4 -
 drivers/of/Kconfig                                 |    1 +
 drivers/of/base.c                                  | 1262 +++++++---
 drivers/of/fdt.c                                   |   14 +-
 drivers/of/gpio.c                                  |    9 +-
 drivers/of/of_net.c                                |    6 +-
 drivers/of/partition.c                             |    2 +-
 drivers/pinctrl/imx-iomux-v3.c                     |    2 +
 drivers/pinctrl/pinctrl.c                          |    4 +-
 drivers/serial/serial_auart.c                      |    8 +-
 drivers/serial/stm-serial.c                        |    8 +-
 drivers/spi/Kconfig                                |    2 +-
 drivers/spi/mxs_spi.c                              |    6 +-
 drivers/spi/omap3_spi.c                            |   23 +-
 drivers/spi/spi.c                                  |   12 +-
 drivers/usb/core/usb.c                             |   47 +-
 drivers/usb/gadget/fsl_udc.c                       |   10 +-
 drivers/usb/host/ehci-hcd.c                        |   20 +-
 drivers/usb/imx/chipidea-imx.c                     |   43 +-
 drivers/video/Kconfig                              |    8 +
 drivers/video/Makefile                             |    1 +
 drivers/video/omap.c                               |  524 +++++
 drivers/video/omap.h                               |  187 ++
 drivers/video/stm.c                                |    9 +-
 fs/fs.c                                            |   18 +
 fs/tftp.c                                          |    5 +-
 images/Makefile                                    |  124 +
 images/Makefile.imx                                |   37 +
 include/asm-generic/sections.h                     |    1 +
 include/ata_drive.h                                |   53 +-
 include/boot.h                                     |    8 +
 include/common.h                                   |    7 +-
 include/ddr_spd.h                                  |  135 ++
 include/driver.h                                   |    1 +
 include/fs.h                                       |    2 +
 include/linux/clk.h                                |   59 +
 include/linux/string.h                             |    9 +
 include/mci.h                                      |   27 +-
 include/memtest.h                                  |   14 +
 include/mfd/mc34708.h                              |    9 +-
 include/net.h                                      |    1 +
 include/of.h                                       |  616 ++++-
 include/printk.h                                   |    4 +-
 include/readkey.h                                  |    2 +-
 include/stdio.h                                    |    3 +-
 include/usb/usb.h                                  |    5 +-
 lib/process_escape_sequence.c                      |    2 +-
 lib/string.c                                       |   60 +
 net/eth.c                                          |   54 +
 pbl/Kconfig                                        |   16 +
 scripts/Makefile.lib                               |    4 +-
 scripts/imx/imx-usb-loader.c                       |    9 +-
 scripts/kconfig/.gitignore                         |    2 -
 scripts/kconfig/Makefile                           |   69 +-
 scripts/kconfig/check.sh                           |    2 +-
 scripts/kconfig/conf.c                             |   66 +-
 scripts/kconfig/confdata.c                         |  188 +-
 scripts/kconfig/expr.c                             |   10 +-
 scripts/kconfig/expr.h                             |   11 +
 scripts/kconfig/gconf.c                            |   13 +-
 scripts/kconfig/kconfig_load.c                     |   35 -
 scripts/kconfig/lex.zconf.c_shipped                | 2430 ----------------=
----
 scripts/kconfig/list.h                             |  131 ++
 scripts/kconfig/lkc.h                              |   14 +-
 scripts/kconfig/lkc_proto.h                        |    6 +-
 scripts/kconfig/lxdialog/check-lxdialog.sh         |   15 +-
 scripts/kconfig/lxdialog/checklist.c               |    4 +
 scripts/kconfig/lxdialog/dialog.h                  |   21 +-
 scripts/kconfig/lxdialog/inputbox.c                |  125 +-
 scripts/kconfig/lxdialog/menubox.c                 |   33 +-
 scripts/kconfig/lxdialog/textbox.c                 |  178 +-
 scripts/kconfig/lxdialog/util.c                    |   56 +-
 scripts/kconfig/lxdialog/yesno.c                   |    4 +
 scripts/kconfig/mconf.c                            |  270 ++-
 scripts/kconfig/menu.c                             |  103 +-
 scripts/kconfig/merge_config.sh                    |  150 ++
 scripts/kconfig/nconf.c                            |  348 +--
 scripts/kconfig/nconf.gui.c                        |   10 +-
 scripts/kconfig/qconf.cc                           |    1 +
 scripts/kconfig/streamline_config.pl               |  293 ++-
 scripts/kconfig/symbol.c                           |   21 +-
 scripts/kconfig/util.c                             |   23 +-
 scripts/kconfig/zconf.l                            |    8 +-
 scripts/kconfig/zconf.lex.c_shipped                |    8 +-
 scripts/kconfig/zconf.tab.c_shipped                |   13 +-
 350 files changed, 17512 insertions(+), 7701 deletions(-)
 create mode 100644 arch/arm/boards/Makefile
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/dmo-mx6-realq7/flash_header.c
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/dcd-data.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/flash-header-imx51-g=
enesi-efikasb.imxcfg
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/flash_header.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/config.h
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/config.h
 delete mode 100644 arch/arm/boards/freescale-mx25-3-stack/config.h
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/config.h
 rename arch/arm/boards/freescale-mx51-pdk/{flash-header.imxcfg =3D> flash-=
header-imx51-babbage.imxcfg} (100%)
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx53-loco/flash-header-imx53-=
loco.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/flash_header.c
 delete mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 delete mode 100644 arch/arm/boards/globalscale-mirabox/config.h
 delete mode 100644 arch/arm/boards/karo-tx25/config.h
 delete mode 100644 arch/arm/boards/marvell-armada-xp-gp/config.h
 delete mode 100644 arch/arm/boards/pcm037/config.h
 delete mode 100644 arch/arm/boards/pcm043/config.h
 create mode 100644 arch/arm/boards/pcm049/env/bin/init_board
 create mode 100644 arch/arm/boards/pcm051/env/boot/spi-nor
 create mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/plathome-openblocks-ax3/config.h
 delete mode 100644 arch/arm/boards/scb9328/config.h
 create mode 100644 arch/arm/configs/imx_v7_defconfig
 create mode 100644 arch/arm/cpu/start-images.c
 create mode 100644 arch/arm/cpu/uncompress.c
 create mode 100644 arch/arm/dts/imx51-genesi-efika-sb.dts
 create mode 100644 arch/arm/dts/imx53-pinfunc.h
 create mode 100644 arch/arm/dts/imx53-qsb.dts
 create mode 100644 arch/arm/dts/imx53.dtsi
 create mode 100644 arch/arm/dts/imx6q-dmo-realq7.dts
 rename arch/arm/{pbl/zbarebox.lds.S =3D> lib/pbl.lds.S} (93%)
 delete mode 100644 arch/arm/mach-mxs/imx_lcd_clk.c
 delete mode 100644 arch/arm/mach-mxs/include/mach/clock-imx23.h
 delete mode 100644 arch/arm/mach-mxs/include/mach/clock-imx28.h
 delete mode 100644 arch/arm/mach-mxs/speed-imx23.c
 delete mode 100644 arch/arm/mach-mxs/speed-imx28.c
 create mode 100644 arch/arm/mach-omap/include/mach/omap-fb.h
 create mode 100644 arch/arm/mach-omap/omap_fb.c
 delete mode 100644 arch/arm/mach-tegra/tegra20-car.c
 create mode 100644 arch/mips/boards/netgear-wg102/include/board/board_pbl_=
start.h
 create mode 100644 arch/mips/boards/netgear-wg102/include/board/debug_ll.h
 create mode 100644 arch/mips/boards/qemu-malta/include/board/debug_ll.h
 create mode 100644 arch/mips/include/asm/pbl_nmon.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/pbl_macros.h
 create mode 100644 arch/ppc/ddr-8xxx/common_timing_params.h
 create mode 100644 arch/ppc/ddr-8xxx/ctrl_regs.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr.h
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_setctrl.c
 create mode 100644 arch/ppc/ddr-8xxx/lc_common_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/main.c
 create mode 100644 arch/ppc/ddr-8xxx/options.c
 create mode 100644 arch/ppc/ddr-8xxx/util.c
 create mode 100644 arch/ppc/include/asm/fsl_ddr_dimm_params.h
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_i2c.c
 rename arch/{arm/boards/guf-cupid/config.h =3D> ppc/mach-mpc85xx/include/m=
ach/fsl_i2c.h} (67%)
 create mode 100644 common/bootm.c
 create mode 100644 common/ddr_spd.c
 create mode 100644 common/memtest.c
 create mode 100644 drivers/clk/mxs/Makefile
 create mode 100644 drivers/clk/mxs/clk-div.c
 create mode 100644 drivers/clk/mxs/clk-frac.c
 create mode 100644 drivers/clk/mxs/clk-imx23.c
 create mode 100644 drivers/clk/mxs/clk-imx28.c
 create mode 100644 drivers/clk/mxs/clk-lcdif.c
 create mode 100644 drivers/clk/mxs/clk-pll.c
 create mode 100644 drivers/clk/mxs/clk-ref.c
 create mode 100644 drivers/clk/mxs/clk.h
 create mode 100644 drivers/clk/tegra/Makefile
 create mode 100644 drivers/clk/tegra/clk-divider.c
 create mode 100644 drivers/clk/tegra/clk-periph.c
 create mode 100644 drivers/clk/tegra/clk-pll-out.c
 create mode 100644 drivers/clk/tegra/clk-pll.c
 create mode 100644 drivers/clk/tegra/clk-tegra20.c
 create mode 100644 drivers/clk/tegra/clk.c
 create mode 100644 drivers/clk/tegra/clk.h
 create mode 100644 drivers/video/omap.c
 create mode 100644 drivers/video/omap.h
 create mode 100644 images/Makefile
 create mode 100644 images/Makefile.imx
 create mode 100644 include/ddr_spd.h
 create mode 100644 include/memtest.h
 delete mode 100644 scripts/kconfig/kconfig_load.c
 delete mode 100644 scripts/kconfig/lex.zconf.c_shipped
 create mode 100644 scripts/kconfig/list.h
 create mode 100755 scripts/kconfig/merge_config.sh
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
