Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu1Ec-0000Tg-Ad
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 14:07:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Uu1EE-00022x-MN
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 16:06:46 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Uu1EE-0004GU-LN
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 16:06:46 +0200
Date: Tue, 2 Jul 2013 16:06:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130702140646.GF516@pengutronix.de>
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
Subject: v2013.07.0 and v2013.06.1
To: barebox@lists.infradead.org

Hi All,

We have a new monthly release and a new stable release.

A lot has happened since the last release, most notably beginning
Marvell support. Thanks Thomas and Sebastian and of course all other
people working on barebox.

Sascha

----------------------------------------------------------------
Alexander Shiyan (7):
      GPIO: Add gpio_to_desc helper
      ARM: OMAP MCI: Move TWL6030 power initialization into OMAP directory
      MCI: Sort Makefile entries
      ARM: PCM970: Add definition for SPI CS1
      ARM: pcm038: Add support for USB OTG device
      ARM: Using unsigned specifiers for unsigned arguments for printf
      ARM: pcm038: Fix partition size definitions

Antony Pavlov (19):
      MIPS: xburst: use common serial code
      MIPS: rzx50: switch to common mach-xburst serial code
      ppc: boards: add barebox.lds to .gitignore
      of: separate out "generic" memory bank adding
      MIPS: add initial device tree support
      MIPS: qemu-malta: add device tree support
      MIPS: qemu-malta_defconfig: enable OF support
      MIPS: rzx50: add trivial board_pbl_start
      MIPS: XBurst: enable pbl support
      MIPS: rzx50: enable pbl in defconfig
      MIPS: asm/mipsregs.h: remove unused stuff
      MIPS: XBurst: use mach-specific debug_ll setup
      MIPS: pbl: add low-level debug asm macros for ns16550
      MIPS: rzx50: prepare for new debug_ll
      MIPS: malta: prepare for new debug_ll
      MIPS: unify ns16550 debug_ll support code
      MIPS: rzx50: pbl: use debug_ll
      MIPS: rzx50_defconfig: use UART1 for low-level debug
      clk: fix warning: no previous prototype for 'clk_is_enabled'

Brian Lilly (1):
      ARM: cfa10036: Add more board ID for boot time detection

Gregory Hermant (1):
      at91: add Calao QIL-A9G20

Jan Luebbe (2):
      arm: am33xx: add pinmux and clock config for UART2
      arm: am33xx: add pinmux config for RMII2

Jan Weitzel (6):
      pcm049: clean up
      twl6030: Set WR_S for VMMC
      OMAP4: Use default clock source for mcbsp
      OMAP4: fix omap4_bootsource regression
      ubiformat: check file size
      nand_base: fix chipsize for multi LUN nands

Juergen Beisert (1):
      MXS/i.MX23: add boot source detection

Lucas Stach (4):
      tegra20: add pinctrl driver
      tegra: paz00: import pinconfig from Linux
      tegra20: add generic board and Colibri T20 on Iris
      Revert "usb: chipidea-imx: Fix usb initialization"

Markus Niebel (3):
      ARM: i.MX53: tqma53: fix board name in Kconfig
      ARM: i.MX53: tqma53: move RAM setting to submenu
      ARM: i.MX53: tqma53: update flash_header

Masaki Muranaka (2):
      Enables to build bootm command on generic_x86.
      Remove a redundant line.

Oleksij Rempel (5):
      cfi_flash: add shift option for some cfi memory chips
      cfi_flash: size_ratio should not be 0
      MIPS: add Atheros ar531x family support
      net: add ar231x-eth support
      MIPS: ar231x: add netgear-wg102

Philipp Zabel (1):
      ARM i.MX6: Fix bootsource detection

Renaud Barbier (2):
      ppc io.h: fix indentation
      ppc: update I/O accessors

Sascha Hauer (103):
      ARM: dtb: Add $(obj)/$(BUILTIN_DTB).dtb.S as secondary target
      ARM: build dtbs during build process using extra-y
      scripts: fixdep: update from v3.10-rc1
      kbuild: always run gcc -E on *.dts, remove cmd_dtc_cpp
      of: When checking for existing devices also check resource end
      of: Call of_add_memory from of_probe
      of: Add of_match_node function
      of: populate devices based on "simple-bus" property
      i2c: Add missing result check
      i2c: remove dead code
      i2c: Add support for dynamic i2c bus numbers
      pinctrl: imx-iomux-v3: only register pinctrl when device node is avai=
lable
      spi: improve devicetree support
      mtd: dataflash: Add devicetree probing support
      net: Add of_register_ethaddr
      net: fec: Add imx25 compatible property
      treewide: Fix typo seperate -> separate
      Merge branch 'for-next/of' into for-next/imx-oftree
      Merge branch 'for-next/of-misc' into for-next/imx-oftree
      ARM: i.MX: remove unused .mac_addr_base in iim
      ARM: i.MX: iim: Add devicetree probe support
      ARM: i.MX51: Add devicetree files
      ARM: i.MX51: Add IIM devicetree node
      ARM: i.MX51: Fixup fec pads in dts
      of: provide NULL of_get_root_node for \!CONFIG_OFTREE
      ARM: i.MX51: skip devices register when devicetree is present
      ARM: i.MX51 babbage: Add spi-cs-high property to pmic
      ARM: i.MX51 babbage: provide MAC adress in devicetree
      ARM: i.MX51 babbage: Add phy reset gpio to dts
      ARM: i.MX51 babbage: switch to devicetree
      param: Add info function
      param: Add helpers to provide an enum parameter
      ARM: Makefile: Make sure to clean boarddirs
      ARM: i.MX51: Add aliases for MMC controllers
      net: fec_imx: default phy address to -1 for dt probe
      cfi: remove unused field from struct flash_info
      cfi: Add dev * to flash_info and switch to dev_*
      cfi: make hardware device parent of mtd device
      mtd: call mtd_erase with complete area if possible
      mci: imx-esdhc: factor out common sdhci registers
      mci i.MX esdhc: Fix clock divider calculation
      mci: Add support for MMC boot partitions
      driver: Attach info callback to device, not to driver
      mci: make mci device a pure device
      mci: embed mci device into struct mci
      mci: set name of mci device to same name as the filename
      of: Add of_alias_get function
      mci: imx-esdhc: allow to specify devicename via OF alias
      ARM: i.MX51: PLL errata workaround
      usb: Add devicetree helpers
      of: do not scan aliases when no root node present
      scripts: Add imx-usb-loader tool
      ARM: i.MX51 babbage: switch to imx-image
      of: Also print disabled nodes
      of: remove unused define
      bootm: make sure to print fixed oftree
      bootm: print Kernel commandline in verbose mode
      treewide include/: Add missing includes
      mtd: m25p80: add devicetree support
      ARM: i.MX6: Fix CCM compatible node
      ARM: i.MX6: skip devices register when devicetree is present
      ARM: i.MX6: Add devicetree files
      ARM: i.MX6: add imx31 compatible entry for GPT
      ARM: i.MX6: Add usdhc aliases
      ARM: i.MX6 sabrelite: switch to devicetree probing
      ARM: i.MX6 sabresd: Switch to devicetree probing
      block: remove unused read_start and read_done ops
      block: rename file operation functions
      block: implement block_read/block_write functions
      devices: add detect mechanism
      mci: implement detect driver callback
      mci fsl-esdhc: implement detect driver callback
      of: Add of_modalias_node function
      i2c: Add devicetree support
      i2c: fsl: Add devicetree probe support
      usb: i.MX chipidea: Add devicetree support
      usb: i.MX chipidea: Add overcurrent disable flag for i.MX6
      bootm: Print internal devicetree information without verbose
      mci: Add devicetree helper function
      mci: i.MX esdhc: get additional parameters from devicetree
      Merge branch 'for-next/misc'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      partitions: Add missing depends on BLOCK
      partition: DOS: Add parameter for the NT disk Signature
      Merge branch 'for-next/block'
      Merge branch 'for-next/cfi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-oftree'
      Merge branch 'for-next/marvell'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/of'
      Merge branch 'for-next/of-i2c'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/tegra'
      Merge branch 'for-next/usb-chipidea'
      usb: ulpi: Try more often to detect a phy
      partitions: dos: fix memory leak in nt disk signature
      ARM: Marvell boards: Fix out of tree compilation
      Release v2013.07.0

Sebastian Hesselbarth (9):
      gitignore: add kwb binary images to gitignore file
      scripts: kwbimage: add references to Marvell Dove SoC
      scripts: kwboot: add support for Marvell Dove
      arm: initial support for Marvell Dove SoCs
      arm: add basic support for SolidRun CuBox
      arm: mach-mvebu: rename Armada 370/XP core code
      arm: mvebu: add more visible SoC separators to Kconfig
      arm: mvebu: introduce common lowlevel and early init
      clocksource: fix Marvell timer read-back value

Teresa G=E1mez (1):
      pcm049: add 1GB RAM support

Thomas Petazzoni (17):
      scripts: new kwbimage manipulation tool for Marvell SoC boot images
      scripts: add kwboot tool
      arm: initial support for Marvell Armada 370/XP SoCs
      arm: integrate kwbimage in the image generation
      arm: add basic support for Armada XP OpenBlocks AX3 platform
      arm: add basic support for the Armada 370 Mirabox platform
      arm: add basic support for the Armada XP GP platform
      scripts/kwbimage: add a new function image_count_options()
      scripts/kwbimage: add a few sanity checks
      scripts/kwbimage: make the v0 image creation more flexible
      scripts/kwbimage: simplify the v1 image creation
      scripts/kwbimage: make image_boot_mode_id() return -1 on failure
      scripts/kwbimage: add support for NAND ECC and page size header fields
      arm: mvebu: add Feroceon CPU type
      arm: mvebu: initial support for Marvell Kirkwood SoCs
      arm: mvebu: add basic support for Globalscale Guruplug board
      arm: mvebu: remove useless lines in kwbimage.cfg for CuBox

wilhelm (1):
      Added sd driver for bcm2835 (Raspberry PI)

 .gitignore                                         |    2 +
 Documentation/devicetree/bindings/README           |    6 +
 .../devicetree/bindings/misc/fsl,imx-iim.txt       |   20 +
 Makefile                                           |    4 +-
 arch/arm/Kconfig                                   |    7 +
 arch/arm/Makefile                                  |  234 +--
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |   16 +
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |  106 +-
 arch/arm/boards/freescale-mx51-pdk/dcd-data.h      |   60 -
 .../boards/freescale-mx51-pdk/flash-header.imxcfg  |   59 +
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   29 -
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  156 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  143 +-
 arch/arm/boards/globalscale-guruplug/Makefile      |    1 +
 arch/arm/boards/globalscale-guruplug/board.c       |   17 +
 arch/arm/boards/globalscale-guruplug/config.h      |    4 +
 arch/arm/boards/globalscale-guruplug/kwbimage.cfg  |   27 +
 arch/arm/boards/globalscale-mirabox/Makefile       |    1 +
 arch/arm/boards/globalscale-mirabox/board.c        |   17 +
 arch/arm/boards/globalscale-mirabox/config.h       |    4 +
 arch/arm/boards/globalscale-mirabox/kwbimage.cfg   |    5 +
 arch/arm/boards/marvell-armada-xp-gp/Makefile      |    1 +
 arch/arm/boards/marvell-armada-xp-gp/board.c       |   17 +
 arch/arm/boards/marvell-armada-xp-gp/config.h      |    4 +
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg  |    3 +
 arch/arm/boards/pcm038/pcm038.c                    |   48 +-
 arch/arm/boards/pcm049/board.c                     |    4 +
 arch/arm/boards/pcm049/lowlevel.c                  |   31 +-
 arch/arm/boards/plathome-openblocks-ax3/Makefile   |    1 +
 arch/arm/boards/plathome-openblocks-ax3/board.c    |   17 +
 arch/arm/boards/plathome-openblocks-ax3/config.h   |    4 +
 .../boards/plathome-openblocks-ax3/kwbimage.cfg    |    3 +
 arch/arm/boards/{qil-a9260 =3D> qil-a926x}/Makefile  |    0
 arch/arm/boards/{qil-a9260 =3D> qil-a926x}/config.h  |    0
 .../{qil-a9260 =3D> qil-a926x}/env/bin/init_board    |    0
 .../arm/boards/{qil-a9260 =3D> qil-a926x}/env/config |    3 +-
 arch/arm/boards/{qil-a9260 =3D> qil-a926x}/init.c    |   35 +-
 .../boards/{qil-a9260 =3D> qil-a926x}/qil-a9260.dox  |    0
 arch/arm/boards/solidrun-cubox/Makefile            |    1 +
 arch/arm/boards/solidrun-cubox/board.c             |   17 +
 arch/arm/boards/solidrun-cubox/config.h            |    4 +
 arch/arm/boards/solidrun-cubox/kwbimage.cfg        |   37 +
 arch/arm/boards/tqma53/flash_header.c              |    9 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |   28 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   16 +-
 arch/arm/configs/globalscale_guruplug_defconfig    |    6 +
 arch/arm/configs/globalscale_mirabox_defconfig     |    8 +
 arch/arm/configs/marvell_armada_xp_gp_defconfig    |   10 +
 arch/arm/configs/plathome_openblocks_ax3_defconfig |    9 +
 arch/arm/configs/qil_a9260_128mib_defconfig        |   14 +-
 arch/arm/configs/qil_a9260_defconfig               |   14 +-
 arch/arm/configs/qil_a9g20_128mib_defconfig        |   77 +
 arch/arm/configs/qil_a9g20_defconfig               |   76 +
 arch/arm/configs/solidrun_cubox_defconfig          |    9 +
 arch/arm/configs/tegra20_colibri_iris_defconfig    |   24 +
 arch/arm/cpu/Kconfig                               |    8 +
 arch/arm/cpu/cpuinfo.c                             |    2 +-
 arch/arm/dts/Makefile                              |   11 +-
 arch/arm/dts/imx51-babbage.dts                     |  307 ++++
 arch/arm/dts/imx51-pinfunc.h                       |  773 ++++++++++
 arch/arm/dts/imx51.dtsi                            |  723 ++++++++++
 arch/arm/dts/imx6q-pinfunc.h                       | 1041 ++++++++++++++
 arch/arm/dts/imx6q-sabrelite.dts                   |  174 +++
 arch/arm/dts/imx6q-sabresd.dts                     |   43 +
 arch/arm/dts/imx6q.dtsi                            |  358 +++++
 arch/arm/dts/imx6qdl-sabresd.dtsi                  |   87 ++
 arch/arm/dts/imx6qdl.dtsi                          |  840 +++++++++++
 arch/arm/dts/tegra20-colibri-iris.dts              |   32 +
 arch/arm/dts/tegra20-colibri.dtsi                  |  190 +++
 arch/arm/dts/tegra20-paz00.dts                     |  216 +++
 arch/arm/dts/tegra20.dtsi                          |    8 +
 arch/arm/lib/bootm.c                               |    6 +-
 arch/arm/lib/module.c                              |    6 +-
 arch/arm/mach-at91/Kconfig                         |   12 +-
 arch/arm/mach-bcm2835/core.c                       |    1 +
 arch/arm/mach-imx/Kconfig                          |   45 +-
 arch/arm/mach-imx/boot.c                           |   26 +-
 arch/arm/mach-imx/clk-imx6.c                       |    2 +-
 arch/arm/mach-imx/iim.c                            |   64 +-
 arch/arm/mach-imx/imx25.c                          |    6 +-
 arch/arm/mach-imx/imx51.c                          |   58 +-
 arch/arm/mach-imx/imx6.c                           |    3 +
 arch/arm/mach-imx/include/mach/devices-imx1.h      |    1 +
 arch/arm/mach-imx/include/mach/devices-imx21.h     |    1 +
 arch/arm/mach-imx/include/mach/devices-imx25.h     |    1 +
 arch/arm/mach-imx/include/mach/devices-imx27.h     |    1 +
 arch/arm/mach-imx/include/mach/devices-imx35.h     |    1 +
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    3 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |    1 +
 arch/arm/mach-imx/include/mach/devices-imx6.h      |    1 +
 arch/arm/mach-imx/include/mach/generic.h           |    3 +
 arch/arm/mach-imx/include/mach/iim.h               |    4 -
 arch/arm/mach-imx/include/mach/imx5.h              |    1 +
 arch/arm/mach-imx/include/mach/iomux-v1.h          |    2 +
 arch/arm/mach-imx/include/mach/weim.h              |    2 +
 arch/arm/mach-mvebu/Kconfig                        |  124 ++
 arch/arm/mach-mvebu/Makefile                       |    6 +
 arch/arm/mach-mvebu/armada-370-xp.c                |  121 ++
 arch/arm/mach-mvebu/common.c                       |   57 +
 arch/arm/mach-mvebu/dove.c                         |  145 ++
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   47 +
 arch/arm/mach-mvebu/include/mach/common.h          |   23 +
 arch/arm/mach-mvebu/include/mach/debug_ll.h        |   43 +
 arch/arm/mach-mvebu/include/mach/dove-regs.h       |   62 +
 arch/arm/mach-mvebu/include/mach/dove.h            |   23 +
 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h   |   50 +
 arch/arm/mach-mvebu/include/mach/kirkwood.h        |   22 +
 arch/arm/mach-mvebu/include/mach/lowlevel.h        |   23 +
 arch/arm/mach-mvebu/include/mach/mvebu.h           |   22 +
 arch/arm/mach-mvebu/kirkwood.c                     |  107 ++
 arch/arm/mach-mvebu/lowlevel.c                     |   28 +
 arch/arm/mach-mxs/imx.c                            |   44 +-
 arch/arm/mach-omap/Kconfig                         |   12 +
 arch/arm/mach-omap/am33xx_clock.c                  |    8 +
 arch/arm/mach-omap/am33xx_mux.c                    |   35 +
 arch/arm/mach-omap/include/mach/am33xx-clock.h     |    3 +
 arch/arm/mach-omap/include/mach/am33xx-mux.h       |    3 +
 arch/arm/mach-omap/omap4_clock.c                   |    6 +-
 arch/arm/mach-omap/omap4_generic.c                 |    4 +-
 arch/arm/mach-omap/omap4_twl6030_mmc.c             |   19 +-
 arch/arm/mach-tegra/Kconfig                        |   13 +
 arch/mips/Kconfig                                  |   19 +
 arch/mips/Makefile                                 |   15 +
 arch/mips/boards/netgear-wg102/Kconfig             |    6 +
 arch/mips/boards/netgear-wg102/Makefile            |    1 +
 arch/mips/boards/netgear-wg102/ram.c               |   11 +
 arch/mips/boards/qemu-malta/init.c                 |   11 -
 .../boards/rzx50/include/board/board_pbl_start.h   |   40 +
 arch/mips/boards/rzx50/include/board/debug_ll.h    |    5 +-
 arch/mips/boards/rzx50/serial.c                    |   37 +-
 arch/mips/boot/Makefile                            |    2 +
 arch/mips/boot/dtb.c                               |   61 +
 arch/mips/configs/qemu-malta_defconfig             |   17 +-
 arch/mips/configs/rzx50_defconfig                  |    4 +
 arch/mips/dts/Makefile                             |   10 +
 arch/mips/dts/qemu-malta.dts                       |   12 +
 arch/mips/dts/skeleton.dtsi                        |   13 +
 arch/mips/include/asm/debug_ll_ns16550.h           |  115 ++
 arch/mips/include/asm/mipsregs.h                   |    8 -
 arch/mips/include/debug_ll_ns16550.h               |   37 -
 arch/mips/lib/barebox.lds.S                        |    2 +
 arch/mips/mach-ar231x/Kconfig                      |   17 +
 arch/mips/mach-ar231x/Makefile                     |    3 +
 arch/mips/mach-ar231x/ar231x.c                     |  195 +++
 arch/mips/mach-ar231x/ar231x_reset.c               |   73 +
 arch/mips/mach-ar231x/board.c                      |  188 +++
 arch/mips/mach-ar231x/include/mach/ar2312_regs.h   |  302 ++++
 .../mach-ar231x/include/mach/ar231x_platform.h     |  104 ++
 arch/mips/mach-malta/include/mach/debug_ll.h       |    2 +-
 arch/mips/mach-malta/include/mach/hardware.h       |    1 +
 arch/mips/mach-xburst/Kconfig                      |   18 +
 arch/mips/mach-xburst/Makefile                     |    1 +
 arch/mips/mach-xburst/include/mach/debug_ll.h      |    2 +-
 .../mach-xburst/include/mach/debug_ll_jz4750d.h    |   41 +
 arch/mips/mach-xburst/include/mach/devices.h       |    8 +
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h  |    2 +
 arch/mips/mach-xburst/serial.c                     |   60 +
 arch/ppc/boards/.gitignore                         |    1 +
 arch/ppc/include/asm/io.h                          |   71 +-
 arch/sandbox/board/hostfile.c                      |    5 +-
 commands/Kconfig                                   |    9 +
 commands/Makefile                                  |    1 +
 commands/bootm.c                                   |    6 +-
 commands/detect.c                                  |   77 +
 commands/echo.c                                    |    1 -
 commands/ubiformat.c                               |    5 +
 common/block.c                                     |   38 +-
 common/globalvar.c                                 |    4 +-
 common/hush.c                                      |    2 +-
 common/oftree.c                                    |   21 +-
 common/partitions.c                                |    2 +-
 common/partitions/Kconfig                          |    1 +
 common/partitions/dos.c                            |   90 ++
 common/partitions/efi.c                            |    4 +-
 drivers/ata/ahci.c                                 |    2 +-
 drivers/ata/sata-imx.c                             |    2 +-
 drivers/base/driver.c                              |   33 +-
 drivers/clk/clk.c                                  |    2 +-
 drivers/clocksource/Kconfig                        |    8 +
 drivers/clocksource/Makefile                       |    2 +
 drivers/clocksource/mvebu.c                        |   90 ++
 drivers/clocksource/orion.c                        |   76 +
 drivers/gpio/gpiolib.c                             |   95 +-
 drivers/i2c/busses/i2c-imx.c                       |   10 +
 drivers/i2c/i2c.c                                  |   73 +-
 drivers/mci/Kconfig                                |    7 +
 drivers/mci/Makefile                               |   20 +-
 drivers/mci/atmel_mci.c                            |    8 +-
 drivers/mci/imx-esdhc.c                            |  251 ++--
 drivers/mci/imx-esdhc.h                            |   89 --
 drivers/mci/imx.c                                  |    2 +-
 drivers/mci/mci-bcm2835.c                          |  591 ++++++++
 drivers/mci/mci-bcm2835.h                          |   73 +
 drivers/mci/mci-core.c                             |  465 ++++--
 drivers/mci/mxs.c                                  |   14 +-
 drivers/mci/s3c.c                                  |    8 +-
 drivers/mci/sdhci.h                                |   89 ++
 drivers/mci/twl6030.c                              |   29 -
 drivers/misc/jtag.c                                |   40 +-
 drivers/mtd/core.c                                 |    6 +
 drivers/mtd/devices/m25p80.c                       |    9 +
 drivers/mtd/devices/mtd_dataflash.c                |   11 +
 drivers/mtd/nand/nand_base.c                       |    3 +-
 drivers/mtd/nor/cfi_flash.c                        |   81 +-
 drivers/mtd/nor/cfi_flash.h                        |    6 +-
 drivers/net/Kconfig                                |    7 +
 drivers/net/Makefile                               |    1 +
 drivers/net/ar231x.c                               |  437 ++++++
 drivers/net/ar231x.h                               |  219 +++
 drivers/net/cs8900.c                               |    3 +-
 drivers/net/fec_imx.c                              |    4 +
 drivers/of/Kconfig                                 |    5 +
 drivers/of/Makefile                                |    1 +
 drivers/of/base.c                                  |  147 +-
 drivers/of/mem_generic.c                           |   15 +
 drivers/pinctrl/Kconfig                            |    6 +
 drivers/pinctrl/Makefile                           |    1 +
 drivers/pinctrl/imx-iomux-v3.c                     |    2 +-
 drivers/pinctrl/pinctrl-tegra20.c                  |  346 +++++
 drivers/spi/spi.c                                  |   15 +-
 drivers/usb/core/Makefile                          |    1 +
 drivers/usb/core/of.c                              |   91 ++
 drivers/usb/imx/chipidea-imx.c                     |  138 +-
 drivers/usb/imx/imx-usb-misc.c                     |   59 +-
 drivers/usb/imx/imx-usb-phy.c                      |   11 +-
 drivers/usb/otg/ulpi.c                             |   38 +-
 drivers/video/fb.c                                 |    3 +-
 drivers/video/s3c24xx.c                            |    8 +-
 drivers/video/stm.c                                |    3 +-
 include/block.h                                    |   10 +-
 include/driver.h                                   |   15 +-
 include/environment.h                              |    2 +
 include/fb.h                                       |    1 +
 include/filetype.h                                 |    2 +
 include/globalvar.h                                |    4 +-
 include/i2c/i2c.h                                  |    4 +
 include/image.h                                    |    2 +-
 include/linux/phy.h                                |    1 +
 include/mci.h                                      |   36 +-
 include/mci/twl6030.h                              |   10 -
 include/mfd/mc13xxx.h                              |    2 +
 include/net.h                                      |    7 +
 include/notifier.h                                 |    2 +
 include/of.h                                       |   21 +-
 include/param.h                                    |   15 +
 include/partition.h                                |    3 +-
 include/spi/spi.h                                  |    1 +
 include/usb/chipidea-imx.h                         |    2 +
 include/usb/usb.h                                  |   21 +
 lib/parameter.c                                    |  104 ++
 net/eth.c                                          |   68 +-
 scripts/.gitignore                                 |    2 +
 scripts/Makefile                                   |    2 +
 scripts/Makefile.lib                               |   46 +-
 scripts/basic/fixdep.c                             |  206 ++-
 scripts/imx/.gitignore                             |    2 +
 scripts/imx/Makefile                               |   10 +
 scripts/imx/README                                 |   89 ++
 scripts/imx/imx-image.c                            |  744 ++++++++++
 scripts/imx/imx-usb-loader.c                       | 1427 ++++++++++++++++=
+++
 scripts/kwbimage.c                                 | 1496 ++++++++++++++++=
++++
 scripts/kwboot.c                                   |  730 ++++++++++
 263 files changed, 16605 insertions(+), 1585 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/README
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/flash_header.c
 create mode 100644 arch/arm/boards/globalscale-guruplug/Makefile
 create mode 100644 arch/arm/boards/globalscale-guruplug/board.c
 create mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 create mode 100644 arch/arm/boards/globalscale-guruplug/kwbimage.cfg
 create mode 100644 arch/arm/boards/globalscale-mirabox/Makefile
 create mode 100644 arch/arm/boards/globalscale-mirabox/board.c
 create mode 100644 arch/arm/boards/globalscale-mirabox/config.h
 create mode 100644 arch/arm/boards/globalscale-mirabox/kwbimage.cfg
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/Makefile
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/board.c
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/config.h
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/Makefile
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/board.c
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/config.h
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
 rename arch/arm/boards/{qil-a9260 =3D> qil-a926x}/Makefile (100%)
 rename arch/arm/boards/{qil-a9260 =3D> qil-a926x}/config.h (100%)
 rename arch/arm/boards/{qil-a9260 =3D> qil-a926x}/env/bin/init_board (100%)
 rename arch/arm/boards/{qil-a9260 =3D> qil-a926x}/env/config (85%)
 rename arch/arm/boards/{qil-a9260 =3D> qil-a926x}/init.c (85%)
 rename arch/arm/boards/{qil-a9260 =3D> qil-a926x}/qil-a9260.dox (100%)
 create mode 100644 arch/arm/boards/solidrun-cubox/Makefile
 create mode 100644 arch/arm/boards/solidrun-cubox/board.c
 create mode 100644 arch/arm/boards/solidrun-cubox/config.h
 create mode 100644 arch/arm/boards/solidrun-cubox/kwbimage.cfg
 create mode 100644 arch/arm/configs/globalscale_guruplug_defconfig
 create mode 100644 arch/arm/configs/globalscale_mirabox_defconfig
 create mode 100644 arch/arm/configs/marvell_armada_xp_gp_defconfig
 create mode 100644 arch/arm/configs/plathome_openblocks_ax3_defconfig
 create mode 100644 arch/arm/configs/qil_a9g20_128mib_defconfig
 create mode 100644 arch/arm/configs/qil_a9g20_defconfig
 create mode 100644 arch/arm/configs/solidrun_cubox_defconfig
 create mode 100644 arch/arm/configs/tegra20_colibri_iris_defconfig
 create mode 100644 arch/arm/dts/imx51-babbage.dts
 create mode 100644 arch/arm/dts/imx51-pinfunc.h
 create mode 100644 arch/arm/dts/imx51.dtsi
 create mode 100644 arch/arm/dts/imx6q-pinfunc.h
 create mode 100644 arch/arm/dts/imx6q-sabrelite.dts
 create mode 100644 arch/arm/dts/imx6q-sabresd.dts
 create mode 100644 arch/arm/dts/imx6q.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-sabresd.dtsi
 create mode 100644 arch/arm/dts/imx6qdl.dtsi
 create mode 100644 arch/arm/dts/tegra20-colibri-iris.dts
 create mode 100644 arch/arm/dts/tegra20-colibri.dtsi
 create mode 100644 arch/arm/mach-mvebu/Kconfig
 create mode 100644 arch/arm/mach-mvebu/Makefile
 create mode 100644 arch/arm/mach-mvebu/armada-370-xp.c
 create mode 100644 arch/arm/mach-mvebu/common.c
 create mode 100644 arch/arm/mach-mvebu/dove.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/common.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/mvebu.h
 create mode 100644 arch/arm/mach-mvebu/kirkwood.c
 create mode 100644 arch/arm/mach-mvebu/lowlevel.c
 create mode 100644 arch/mips/boards/netgear-wg102/Kconfig
 create mode 100644 arch/mips/boards/netgear-wg102/Makefile
 create mode 100644 arch/mips/boards/netgear-wg102/ram.c
 create mode 100644 arch/mips/boards/rzx50/include/board/board_pbl_start.h
 create mode 100644 arch/mips/boot/dtb.c
 create mode 100644 arch/mips/dts/Makefile
 create mode 100644 arch/mips/dts/qemu-malta.dts
 create mode 100644 arch/mips/dts/skeleton.dtsi
 create mode 100644 arch/mips/include/asm/debug_ll_ns16550.h
 delete mode 100644 arch/mips/include/debug_ll_ns16550.h
 create mode 100644 arch/mips/mach-ar231x/Kconfig
 create mode 100644 arch/mips/mach-ar231x/Makefile
 create mode 100644 arch/mips/mach-ar231x/ar231x.c
 create mode 100644 arch/mips/mach-ar231x/ar231x_reset.c
 create mode 100644 arch/mips/mach-ar231x/board.c
 create mode 100644 arch/mips/mach-ar231x/include/mach/ar2312_regs.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/ar231x_platform.h
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
 create mode 100644 arch/mips/mach-xburst/include/mach/devices.h
 create mode 100644 arch/mips/mach-xburst/serial.c
 create mode 100644 arch/ppc/boards/.gitignore
 create mode 100644 commands/detect.c
 create mode 100644 drivers/clocksource/mvebu.c
 create mode 100644 drivers/clocksource/orion.c
 create mode 100644 drivers/mci/mci-bcm2835.c
 create mode 100644 drivers/mci/mci-bcm2835.h
 create mode 100644 drivers/mci/sdhci.h
 delete mode 100644 drivers/mci/twl6030.c
 create mode 100644 drivers/net/ar231x.c
 create mode 100644 drivers/net/ar231x.h
 create mode 100644 drivers/of/mem_generic.c
 create mode 100644 drivers/pinctrl/pinctrl-tegra20.c
 create mode 100644 drivers/usb/core/of.c
 delete mode 100644 include/mci/twl6030.h
 create mode 100644 scripts/imx/.gitignore
 create mode 100644 scripts/imx/Makefile
 create mode 100644 scripts/imx/README
 create mode 100644 scripts/imx/imx-image.c
 create mode 100644 scripts/imx/imx-usb-loader.c
 create mode 100644 scripts/kwbimage.c
 create mode 100644 scripts/kwboot.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
