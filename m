Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCQk4-0007zE-Et
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 08:27:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UCQk3-0005eX-8G
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:27:27 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UCQk3-0001uO-7E
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:27:27 +0100
Date: Mon, 4 Mar 2013 09:27:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304082727.GC1906@pengutronix.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2013.03.0
To: barebox@lists.infradead.org

Hi All,

We have a march release. It's one of the bigger releases (257 non merge
patches)

Have fun!

Sascha

----------------------------------------------------------------
Alexander Aring (5):
      remap_range: make function 'remap_range' global
      arm-mmu: move PAGE_ALIGN macro to common.h
      common: add PAGE_ALIGN_DOWN macro
      barebox-data: add barebox-data sections
      arm-mmu: switch pte flags vars to lower case

Alexander Shiyan (7):
      ARM: ccmx51: Remove SDRAM size settings
      ARM: ccmx51: Fix ethernet devices control by MC13892 GPOs
      ARM: ccmx51: Set MAC address before FEC device registration
      ARM: ccmx51js: Define reset pin for USB Host1
      ARM: ccmx51: Update defconfig
      ARM: mmu: Clear unpredictable bits for translation table
      commands: automount: Added help string about "-d" option

Antony Pavlov (9):
      MIPS: introduce ram0 regions register function
      MIPS: qemu-malta: use mips_add_ram0()
      MIPS: rzx50: use mips_add_ram0()
      MIPS: dlink-dir-320: use mips_add_ram0()
      ARM: efika-mx-smartbook: clean up whitespaces
      commands: reset: add shutdown_barebox() before reset_cpu()
      ARM OMAP: use SZ_*M constants in RAM device register functions
      MIPS: pbl: fix none compression support
      pbl: fix IMAGE_COMPRESSION_LZO-enabled build on MIPS

Daniel Mierswa (3):
      i.MX21: Add periph. clock register name macros
      i.MX21/27: don't enable lcd bus clocks too early
      i.MX27: fix shift amount for PCCR1_PERCLK3_EN

Fabio Porcedda (5):
      ARM: at91: Add Telit EVK-PRO3 board support
      ARM: at91: use -EINVAL for invalid gpio on atmel_mci
      fix compiler warnings: use puts() instead of printf()
      defaultenv-2: fix base/init/ps1: don't reload /env/config
      menu: fix remove superfluous newline: change puts() -> printf("%s", )

Hubert Feurstein (2):
      net: imx_fec: fix RMII support for i.MX6
      imx_spi: fix bus-num setup

Ivan Djelic (1):
      arm: fix memset-related crashes caused by recent GCC (4.7.2) optimizations

Jan Luebbe (2):
      commands: add let command which supports proper arithmetic
      drivers: net: add driver for TI CPSW

Jan Weitzel (1):
      pcm049: clean up defconfig

Jean-Christophe PLAGNIOL-VILLARD (100):
      defaultenv-2: execute init/* before timeout
      defaultenv-2: move ps1 to base/init/ps1
      w1: add ds28ec20 eeprom support
      filetype: add is_barebox_mips_head support
      filetype: add is_barebox_head
      at91: dump mux command: make it depends on COMMAND_SUPPORT
      at91: add test commamd to emulate bootrom boot
      at91sam926x: lowlevel add external boot support
      at91: sam926x: switch lowlevel param to c code
      at91: usb-a9263 add lowlevel init
      introduce common bootstrap code
      at91: add bootstrap version
      at91: usb_a9263: add bootstrap version
      usb: add parameters info on usb device
      usb: fix for USB_ST_STALLED status reporting in ehci_submit_async()
      ehci: if caps ressource is not provided discover it via cr_capbase
      ehci: add atmel support
      at91: usb: allow to specicfy inverted vbus
      at91sam9g45: add ehci support
      at91sam9m10g45ek: add usb support
      at91sam9x5: add ehci support
      at91sam9x5ek: add usb support
      console: switch select to choice
      introduce console none support
      tny-a9263: add dataflash support
      tny_a9263: add bootstrap support
      at91sam9m10g45ek/defconfig: set board type
      at91: add at91sam9m10ihd tablet support
      at91sam9260ek: specify mach entry
      at91: add Somfy Animeo IP support
      mci: add card_write_protected
      Animeo IP: use gpiolib ip to detect the hw version
      consolidate print* in a single header
      at91sam9x5: add autodetect sd/ddram size
      at91sam9n12: add autodetect sd/ddram size
      at91sam9g45: add autodetect sd/ddram size
      at91: Atmel ref board sam{9x5/9n12/m109g45} EK and Ronetix pm9g45 autodetect ddr size
      at91rm9200: add autodetect sdram size
      at91rm9200ek: auto detect sdram size
      video: add atmel lcdc frambuffer support
      at91sam9263: add atmel lcdc frambuffer support
      at91sam9261: add atmel lcdc frambuffer support
      at91sam9g45: add atmel lcdc frambuffer support
      at91sam9m10g45ek: add lcdc support
      at91sam9m10ihd: add lcd support
      at91sam9261ek: add lcd support
      at91sam9263ek: add lcd support
      at91sam9260/9g20/9261/9g10/9263: split soc lowlevel_init from generic
      w1: add dual search support
      macb: sync register access and clock with the kernel
      macb: allow to pass the phy interface
      at91sam9m10ihd: set missing lcd power control
      at91: add clock dump command
      at91: add sama5d3 support
      at91: add sama5d3xek board support
      pbl: move configs to pbl/Kconfig
      pbl: factorise decompressor
      pbl: add none compression support
      atmel_lcdfb: factorise common code between lcdc and new hlcdc IP
      video: add Atmel HLCD support
      at91sam9x5: add lcd support
      at91sam9x5ek: add lcd support
      at91sam9n12: add lcd support
      at91sam9n12ek: add lcd support
      sama5d3: add lcd support
      sama5d3xek: add lcd support
      at91: introduce AT91_LOAD_BAREBOX_SRAM to specifcy which size load for external boot
      at91sam9261ek: add spi support
      at91sam9261ek: add boostrap support
      at91sam9261ek: add first stage support
      menu: the dependancy on process escape is wrong drop it
      at91: bootstrap: add menu support
      atmel_lcdfb: fix warning: implicit declaration of function 'clk_get_rate'
      at91sam9_ddrsdr: fix register on mdr read and sdram detection for ddr size
      usb-a926x: only provide the resource if the driver is enable
      sama5d3k: the nand flash is 4 bit ecc capable so use it
      MAKEALL: add regex support
      ARM AT91: switch at91sam9g45 to barebox_arm_entry
      ARM AT91: switch at91sam9x5 to barebox_arm_entry
      ARM AT91: switch at91sam9n12 to barebox_arm_entry
      at91: gpio: split accessor so we can use them for early init
      at91sam926x_lowlevel_init: use pio macro
      at91sam926x_lowlevel_init: use struct to pass soc config
      at91sam9: drop AT91_BASE_SYS for sdram controller
      beagle: add nand partition and boot
      macb: use dev_xx message
      macb: report timeout on send
      macb: drop non used define
      arm: rename reset and common_reset to barebox_arm_reset_vector and arm_cpu_lowlevel_init
      sama5de3k: add gmacb support
      net macb: call macb_init at probe explicitly
      net macb: sync remaining define with linux
      net macb: use the macro as in linux for tx/rx buffer ring size
      net macb: enable Tramsmit and Receive at open
      net macb: reset the IP at init
      macb: fix tx ring size
      macb: add cadence Gigabit GEM support
      phy/micrel: KSZ9021 diasable Asym Pause support
      oftree: fix probe support
      phy: fix force mode

Michael Olbrich (1):
      defenv-2: migrate guf-vincell to config-board

Rob Herring (1):
      amba: pl011: set RTS during initialization

Sascha Hauer (132):
      of: make of_get_fixed_tree more universally usable
      of: Fix invalid path for of_find_node_by_path
      ARM android image: remove double of_fix_tree
      of: of_free fixes
      of of_free: remove old node from allnodes list
      of: return root node when looking for a node with path /
      of: rename of_parse_dtb to of_unflatten_dtb
      ARM am33xx: Add cpws convenience functions
      ARM beaglebone: Add network support
      ARM beaglebone: update defconfig for networking
      ARM Ka-Ro TX25: Increase NAND partitions
      ARM Ka-Ro Tx25: Switch to new environment
      Merge branch 'pu/tx25' into for-next/imx
      bootm: move printing of file locations outside verbose mode
      of: Add support for converting the unflattened tree back to a dtb
      of: remove unused barebox_fdt
      ARM bootm: only use concatenated oftree when no other is available
      of: unflatten: allow overlay dtbs
      oftree command: refactor
      of: add of_delete_property
      of: rename new_device_node to of_new_node and export it
      commands: Add of_property command
      commands: Add of_node command
      of: speed up unflatten
      Add write_file function
      oftree command: Add -s option to save internal oftree to file
      mci: return 0 for probe parameter even when already initialized
      mci: Always add probe parameter for cards
      mci: Add card_present callback
      mci i.MX esdhc: implement card_present callback
      mci atmel: implement card_present callback
      ARM i.MX6 USB phy: Fix phy function names
      ARM i.MX6: Fix usb phy base addresses
      ARM i.MX6: Add usbphy clocks
      USB: Add usb phy driver for i.MX
      ARM i.MX6: Add Chipidea support
      startup: call a barebox_main function pointer at the end of the startup
      move struct action_data to the only file using it
      make file_*_action static
      move prototypes for envfs_* to envfs.h
      scripts: remove now unnecessary include
      startup: use IS_ENABLED instead of ifdef
      startup: Use IS_ENABLED for loading environment
      startup: add __noreturn to start_barebox
      defaultenv loading: rework to use less ifdefs/defines
      filetype: Make buf in file_detect_type const
      ARM i.MX: Add a common NAND entry for external boot mode
      ARM i.MX boards: use helper function for external NAND boot
      tftp: reset timer on progress
      mtd m25p80: Add support for w25q80bl
      Merge branch 'pu/imx-external-nand-boot' into for-next/imx
      Merge branch 'master' into for-next/at91
      ARM AT91 mmccpu: Fix non existing define
      mtd m25p80: consistenly switch to dev_* messages
      treewide: fix format specifiers
      nios2: Let readl return an unsigned int
      nios2: Use unsigned long for __kernel_size_t
      blackfin: Use unsigned long for __kernel_size_t
      USB ehci: Use dev_* for messages
      introduce compile time loglevel
      introduce pr_fmt
      ARM mmu: Use pr_debug
      ARM pcm038: Specify pr_fmt and change messages to pr_*
      mtd nand: Specify pr_fmt and change messages to pr_*
      ARM omap3 beagle: move lowlevel code to lowlevel.c
      ARM omap3 phycard-a-l1: move lowlevel code to lowlevel.c
      ARM omap3 omap343xdsp: move lowlevel code to lowlevel.c
      ARM omap3 omap3evm: move lowlevel code to lowlevel.c
      ARM am33xx beaglebone: move lowlevel code to lowlevel.c
      ARM omap3 beagle: Compile xload defconfig in Thumb2 mode
      Merge branch 'pu/omap' into for-next/omap
      Merge branch 'for-next/at91'
      Merge branch 'for-next/commands'
      Merge branch 'for-next/compile-log-level'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-usb-chipidea'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/oftree'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/pbl'
      Merge branch 'for-next/w1'
      ARM: Add new entry point for barebox
      ARM: add __noreturn to board_init_lowlevel_return
      ARM i.MX: Use SRAM stack in lowlevel code
      ARM i.MX: Add i.MX specific entry point for barebox
      ARM i.MX: prepare external nand boot for SoC specific entry
      ARM i.MX boards: switch to barebox_arm_entry
      ARM MXS boards: switch to barebox_arm_entry
      ARM OMAP boards: switch to barebox_arm_entry
      ARM Samsung boards: switch to barebox_arm_entry
      ARM PXA boards: switch to barebox_arm_entry
      ARM ep93xx boards: switch to barebox_arm_entry
      ARM tegra boards: switch to barebox_arm_entry
      ARM nomadik boards: switch to barebox_arm_entry
      ARM versatile boards: switch to barebox_arm_entry
      ARM netx boards: switch to barebox_arm_entry
      ARM clep7212: switch to barebox_arm_entry
      ARM raspberrypi: switch to barebox_arm_entry
      ARM AT91: switch at91sam9 to barebox_arm_entry part1
      ARM AT91: switch at91rm9200 board to barebox_arm_entry
      ARM AT91: switch sama5d3 to barebox_arm_entry
      ARM: remove now unused MACH_[HAS|DO]_LOWLEVEL_INIT
      ARM start-pbl: make board_init_lowlevel_return static
      ARM start-pbl: call uncompressed binary with arguments
      ARM start: pickup parameters from pbl
      ARM: Setup stack at end of SDRAM
      ARM pbl: Use dynamic parameters for early malloc space
      ARM mmu: pickup already enabled mmu
      ARM: Factor out early mmu code
      ARM: Enable mmu early
      ARM: Automatically determine malloc size
      generic memory layout: fix deps for [MALLOC|STACK]_BASE
      ARM: disable HAVE_CONFIGURABLE_MEMORY_LAYOUT
      ARM pbl: inline decompress function
      Merge branch 'pu/arm-entry'
      Add warning above get_ram_size
      fix brown paper bag bug introduced with compile time loglevel
      ARM i.MX35: Fix device names for gpio
      ARM i.MX21: Fix device names for gpio
      ARM OMAP phycard-a-l1: Add missing include
      ARM at91sam9n12ek_defconfig: Fix reassigning of BAREBOX_MAX_IMAGE_SIZE
      ARM i.MX28: Add missing return value in non-void function
      mtd: nand: do not write empty pages
      ubiformat: open flash image readonly
      ARM i.MX: Fix booting from NOR when external nand boot is enabled
      ARM i.MX35: Let MAX clk be in run-mode-on
      Merge branch 'pu/imx-fixes'
      mtd: always write page when oob is given
      Release v2013.03.0

Steffen Trumtrar (1):
      ARM i.MX28: change default watchdog reset method

Vicente Bergas (6):
      OMAP4: use OPPs recommended in datasheet
      OMAP4_USB: more stable communications
      ARCHOS: use manufacturer values for pad_conf and reorder initialization
      feature_list: a way to pass hardware info to the kernel
      ArchosG9: solve regression in second stage lowlevel init
      OMAP4 USB BOOT: remove double line endings

 MAKEALL                                            |   16 +-
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |    8 +-
 arch/arm/Makefile                                  |    4 +
 arch/arm/boards/a9m2410/lowlevel_init.S            |   17 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |   17 +-
 arch/arm/boards/animeo_ip/Makefile                 |    1 +
 arch/arm/boards/animeo_ip/config.h                 |    6 +
 arch/arm/boards/animeo_ip/env/config               |   39 +
 arch/arm/boards/animeo_ip/init.c                   |  251 +++++
 arch/arm/boards/archosg9/Makefile                  |    5 +-
 arch/arm/boards/archosg9/archos_features.c         |  225 ++++
 arch/arm/boards/archosg9/archos_features.h         |   22 +
 arch/arm/boards/archosg9/board.c                   |    3 +
 arch/arm/boards/archosg9/feature_list.h            |  352 +++++++
 arch/arm/boards/archosg9/lowlevel.c                |   28 +-
 arch/arm/boards/archosg9/mux.c                     |  654 +++++-------
 arch/arm/boards/at91rm9200ek/init.c                |    4 +-
 arch/arm/boards/at91sam9260ek/init.c               |    4 +-
 arch/arm/boards/at91sam9261ek/Makefile             |    4 +
 arch/arm/boards/at91sam9261ek/env/bin/init_board   |    7 +
 arch/arm/boards/at91sam9261ek/env/config           |   10 +-
 arch/arm/boards/at91sam9261ek/init.c               |  142 ++-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c      |  108 ++
 arch/arm/boards/at91sam9263ek/Makefile             |    4 +
 arch/arm/boards/at91sam9263ek/config.h             |   87 --
 arch/arm/boards/at91sam9263ek/env/bin/init_board   |    7 +
 arch/arm/boards/at91sam9263ek/init.c               |   74 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  104 ++
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    7 +
 arch/arm/boards/at91sam9m10g45ek/init.c            |   68 +-
 arch/arm/boards/at91sam9m10ihd/Makefile            |    2 +
 arch/arm/boards/at91sam9m10ihd/config.h            |    6 +
 arch/arm/boards/at91sam9m10ihd/env/boot/android    |   11 +
 arch/arm/boards/at91sam9m10ihd/env/boot/mmc        |   19 +
 arch/arm/boards/at91sam9m10ihd/env/boot/net        |   16 +
 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb    |   22 +
 arch/arm/boards/at91sam9m10ihd/env/config          |   21 +
 arch/arm/boards/at91sam9m10ihd/env/init/automount  |   17 +
 .../boards/at91sam9m10ihd/env/init/config-board    |    8 +
 .../at91sam9m10ihd/env/init/mtdparts-001-nand      |   11 +
 .../at91sam9m10ihd/env/init/mtdparts-002-m25p80    |   11 +
 arch/arm/boards/at91sam9m10ihd/env/init/ps1        |    9 +
 arch/arm/boards/at91sam9m10ihd/env/init/splash     |    8 +
 arch/arm/boards/at91sam9m10ihd/hw_version.c        |  216 ++++
 arch/arm/boards/at91sam9m10ihd/hw_version.h        |   31 +
 arch/arm/boards/at91sam9m10ihd/init.c              |  288 ++++++
 arch/arm/boards/at91sam9n12ek/env/bin/init_board   |    7 +
 arch/arm/boards/at91sam9n12ek/init.c               |   72 +-
 arch/arm/boards/at91sam9x5ek/env/bin/init_board    |   15 +
 arch/arm/boards/at91sam9x5ek/init.c                |   68 +-
 arch/arm/boards/beagle/Makefile                    |    2 +
 arch/arm/boards/beagle/board.c                     |  169 ----
 arch/arm/boards/beagle/env/boot/nand-ubi           |    9 +
 arch/arm/boards/beagle/env/boot/nand-ubi-dt        |   10 +
 arch/arm/boards/beagle/env/init/mtdparts-nand      |   11 +
 arch/arm/boards/beagle/lowlevel.c                  |  179 ++++
 arch/arm/boards/beaglebone/Makefile                |    4 +
 arch/arm/boards/beaglebone/board.c                 |  272 +----
 arch/arm/boards/beaglebone/lowlevel.c              |  258 +++++
 arch/arm/boards/ccxmx51/Makefile                   |    2 +
 arch/arm/boards/ccxmx51/ccxmx51.c                  |   54 +-
 arch/arm/boards/ccxmx51/ccxmx51.h                  |    1 -
 arch/arm/boards/ccxmx51/ccxmx51js.c                |    1 +
 arch/arm/boards/ccxmx51/lowlevel.c                 |    9 +
 arch/arm/boards/chumby_falconwing/Makefile         |    2 +
 arch/arm/boards/chumby_falconwing/lowlevel.c       |   11 +
 arch/arm/boards/clep7212/lowlevel.c                |    7 +-
 arch/arm/boards/crystalfontz-cfa10036/Makefile     |    2 +
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c   |   11 +
 arch/arm/boards/dss11/init.c                       |    2 +
 arch/arm/boards/edb93xx/sdram_cfg.c                |    4 +
 arch/arm/boards/efika-mx-smartbook/Makefile        |    2 +
 arch/arm/boards/efika-mx-smartbook/board.c         |   14 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |    9 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    7 -
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   45 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    9 -
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   36 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   56 +-
 arch/arm/boards/eukrea_cpuimx51/Makefile           |    2 +
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c         |    9 +
 arch/arm/boards/freescale-mx23-evk/Makefile        |    2 +
 arch/arm/boards/freescale-mx23-evk/lowlevel.c      |   11 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    9 -
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   36 +-
 arch/arm/boards/freescale-mx28-evk/Makefile        |    2 +
 arch/arm/boards/freescale-mx28-evk/lowlevel.c      |   11 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   13 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   36 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    2 +
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |    9 +
 arch/arm/boards/freescale-mx53-loco/Makefile       |    2 +
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |    9 +
 arch/arm/boards/freescale-mx53-smd/Makefile        |    2 +
 arch/arm/boards/freescale-mx53-smd/lowlevel.c      |    9 +
 arch/arm/boards/freescale-mx6-arm2/Makefile        |    2 +
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c      |   10 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    2 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |    4 +-
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |   10 +
 .../boards/friendlyarm-mini2440/lowlevel_init.S    |   17 +-
 arch/arm/boards/friendlyarm-mini6410/Makefile      |    2 +
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c    |   11 +
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    8 +-
 arch/arm/boards/friendlyarm-tiny6410/Makefile      |    3 +-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c    |   11 +
 arch/arm/boards/guf-cupid/lowlevel.c               |   55 +-
 arch/arm/boards/guf-neso/lowlevel.c                |   43 +-
 arch/arm/boards/guf-vincell/env/init/bootargs-base |    8 -
 arch/arm/boards/guf-vincell/env/init/config-board  |    7 +
 arch/arm/boards/guf-vincell/env/init/hostname      |    8 -
 arch/arm/boards/guf-vincell/lowlevel.c             |    9 +-
 arch/arm/boards/imx21ads/imx21ads.c                |   12 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   40 +-
 arch/arm/boards/imx233-olinuxino/Makefile          |    2 +
 arch/arm/boards/imx233-olinuxino/lowlevel.c        |   11 +
 arch/arm/boards/imx27ads/lowlevel_init.S           |   10 +-
 arch/arm/boards/karo-tx25/board.c                  |   12 +-
 arch/arm/boards/karo-tx25/env/bin/init_board       |    6 -
 arch/arm/boards/karo-tx25/env/boot/nand-ubi        |   10 +
 arch/arm/boards/karo-tx25/env/config               |   48 -
 arch/arm/boards/karo-tx25/env/init/config-board    |    7 +
 arch/arm/boards/karo-tx25/env/init/mtdparts-nand   |   11 +
 arch/arm/boards/karo-tx25/lowlevel.c               |   45 +-
 arch/arm/boards/karo-tx28/Makefile                 |    2 +
 arch/arm/boards/karo-tx28/lowlevel.c               |   11 +
 arch/arm/boards/karo-tx51/Makefile                 |    2 +
 arch/arm/boards/karo-tx51/lowlevel.c               |    9 +
 arch/arm/boards/karo-tx53/lowlevel.c               |   10 +-
 arch/arm/boards/mioa701/Makefile                   |    2 +
 arch/arm/boards/mioa701/lowlevel.c                 |   10 +
 arch/arm/boards/mmccpu/Makefile                    |    4 +
 arch/arm/boards/mmccpu/config.h                    |  118 ---
 arch/arm/boards/mmccpu/lowlevel_init.c             |  135 +++
 arch/arm/boards/netx/platform.S                    |   13 +-
 arch/arm/boards/nhk8815/Makefile                   |    2 +
 arch/arm/boards/nhk8815/lowlevel.c                 |   10 +
 arch/arm/boards/omap343xdsp/Makefile               |    2 +
 arch/arm/boards/omap343xdsp/board.c                |  549 +---------
 arch/arm/boards/omap343xdsp/lowlevel.c             |  557 ++++++++++
 arch/arm/boards/omap3evm/Makefile                  |    2 +
 arch/arm/boards/omap3evm/board.c                   |  158 ---
 arch/arm/boards/omap3evm/lowlevel.c                |  169 ++++
 arch/arm/boards/panda/board.c                      |    2 +-
 arch/arm/boards/panda/lowlevel.c                   |   11 +-
 arch/arm/boards/pcm027/lowlevel_init.S             |   13 +-
 arch/arm/boards/pcm037/lowlevel.c                  |   42 +-
 arch/arm/boards/pcm037/pcm037.c                    |    8 -
 arch/arm/boards/pcm038/lowlevel.c                  |   44 +-
 arch/arm/boards/pcm038/pcm038.c                    |    5 +-
 arch/arm/boards/pcm043/lowlevel.c                  |   57 +-
 arch/arm/boards/pcm049/lowlevel.c                  |   11 +-
 arch/arm/boards/pcm051/Makefile                    |    2 +
 arch/arm/boards/pcm051/lowlevel.c                  |   11 +
 arch/arm/boards/phycard-a-l1/Makefile              |    2 +
 arch/arm/boards/phycard-a-l1/lowlevel.c            |  260 +++++
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |  247 -----
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |   11 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   36 +-
 arch/arm/boards/pm9261/Makefile                    |    4 +
 arch/arm/boards/pm9261/config.h                    |   87 --
 arch/arm/boards/pm9261/lowlevel_init.c             |  102 ++
 arch/arm/boards/pm9263/Makefile                    |    4 +
 arch/arm/boards/pm9263/config.h                    |  103 --
 arch/arm/boards/pm9263/init.c                      |    2 +-
 arch/arm/boards/pm9263/lowlevel_init.c             |  121 +++
 arch/arm/boards/pm9g45/init.c                      |    6 +-
 arch/arm/boards/qil-a9260/init.c                   |    4 +-
 arch/arm/boards/raspberry-pi/Makefile              |    2 +
 arch/arm/boards/raspberry-pi/lowlevel.c            |   11 +
 arch/arm/boards/sama5d3xek/Makefile                |    2 +
 arch/arm/boards/sama5d3xek/config.h                |    6 +
 arch/arm/boards/sama5d3xek/env/bin/init_board      |   15 +
 arch/arm/boards/sama5d3xek/env/config              |   44 +
 arch/arm/boards/sama5d3xek/hw_version.c            |  251 +++++
 arch/arm/boards/sama5d3xek/hw_version.h            |   53 +
 arch/arm/boards/sama5d3xek/init.c                  |  434 ++++++++
 arch/arm/boards/scb9328/lowlevel_init.S            |   10 +-
 arch/arm/boards/telit-evk-pro3/Makefile            |    1 +
 arch/arm/boards/telit-evk-pro3/config.h            |    6 +
 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi   |   10 +
 .../boards/telit-evk-pro3/env/init/config-board    |    8 +
 .../boards/telit-evk-pro3/env/init/mtdparts-nand   |   11 +
 arch/arm/boards/telit-evk-pro3/env/init/usb        |   40 +
 arch/arm/boards/telit-evk-pro3/init.c              |  176 ++++
 arch/arm/boards/tny-a926x/Makefile                 |    9 +
 arch/arm/boards/tny-a926x/init.c                   |   45 +-
 arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c    |   16 +
 .../arm/boards/tny-a926x/tny_a9263_lowlevel_init.c |  107 ++
 arch/arm/boards/toshiba-ac100/Makefile             |    2 +
 arch/arm/boards/toshiba-ac100/lowlevel.c           |   10 +
 arch/arm/boards/tqma53/Makefile                    |    2 +
 arch/arm/boards/tqma53/lowlevel.c                  |    9 +
 arch/arm/boards/usb-a926x/Makefile                 |    9 +
 arch/arm/boards/usb-a926x/init.c                   |   48 +-
 arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c    |   16 +
 .../arm/boards/usb-a926x/usb_a9263_lowlevel_init.c |  111 ++
 arch/arm/boards/versatile/Makefile                 |    3 +-
 arch/arm/boards/versatile/lowlevel.c               |   10 +
 arch/arm/configs/am335x_beaglebone_defconfig       |   17 +
 arch/arm/configs/animeo_ip_defconfig               |   79 ++
 arch/arm/configs/archosg9_defconfig                |    2 +-
 arch/arm/configs/archosg9_xload_defconfig          |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    1 +
 arch/arm/configs/at91sam9261ek_bootstrap_defconfig |   25 +
 arch/arm/configs/at91sam9261ek_defconfig           |    7 +-
 .../configs/at91sam9261ek_first_stage_defconfig    |   71 ++
 arch/arm/configs/at91sam9263ek_defconfig           |    4 +
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   18 +-
 arch/arm/configs/at91sam9m10ihd_defconfig          |   99 ++
 arch/arm/configs/at91sam9n12ek_defconfig           |    8 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |   10 +-
 arch/arm/configs/ccmx51_defconfig                  |   24 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig   |    4 +-
 arch/arm/configs/panda_xload_defconfig             |    2 +-
 arch/arm/configs/pcm049_defconfig                  |   19 +-
 arch/arm/configs/pcm049_xload_defconfig            |    5 +-
 arch/arm/configs/phycard_a_l1_defconfig            |    2 -
 arch/arm/configs/phycard_a_l1_xload_defconfig      |    2 +-
 arch/arm/configs/phycard_a_xl2_xload_defconfig     |    2 +-
 arch/arm/configs/sama5d3xek_defconfig              |   95 ++
 arch/arm/configs/telit_evk_pro3_defconfig          |   73 ++
 arch/arm/configs/tny_a9263_bootstrap_defconfig     |   26 +
 arch/arm/configs/tny_a9263_defconfig               |    1 +
 arch/arm/configs/tx25stk5_defconfig                |   42 +-
 .../configs/usb_a9263_128mib_bootstrap_defconfig   |   27 +
 arch/arm/configs/usb_a9263_bootstrap_defconfig     |   26 +
 arch/arm/cpu/Makefile                              |    4 +-
 arch/arm/cpu/cpu.c                                 |   12 +
 arch/arm/cpu/exceptions.S                          |    2 +-
 arch/arm/cpu/mmu-early.c                           |   53 +
 arch/arm/cpu/mmu-early.h                           |    6 +
 arch/arm/cpu/mmu.c                                 |   82 +-
 arch/arm/cpu/start-pbl.c                           |  182 +---
 arch/arm/cpu/start.c                               |  107 +-
 arch/arm/include/asm/armlinux.h                    |    9 +
 arch/arm/include/asm/barebox-arm-head.h            |    8 +-
 arch/arm/include/asm/barebox-arm.h                 |    4 +-
 arch/arm/include/asm/mmu.h                         |   17 +
 arch/arm/lib/Makefile                              |    1 -
 arch/arm/lib/arm.c                                 |   14 -
 arch/arm/lib/armlinux.c                            |   12 +
 arch/arm/lib/barebox.lds.S                         |    2 +
 arch/arm/lib/bootm.c                               |    9 +-
 arch/arm/lib/bootu.c                               |    2 +-
 arch/arm/lib/bootz.c                               |    2 +-
 arch/arm/lib/memset.S                              |   85 +-
 arch/arm/mach-at91/Kconfig                         |   99 +-
 arch/arm/mach-at91/Makefile                        |   17 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |   14 +-
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |    6 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   13 +-
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |   47 +
 arch/arm/mach-at91/at91sam9261_devices.c           |   64 +-
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |   47 +
 arch/arm/mach-at91/at91sam9263.c                   |    1 +
 arch/arm/mach-at91/at91sam9263_devices.c           |   49 +-
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |   47 +
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |  183 ++--
 arch/arm/mach-at91/at91sam9_reset.S                |    4 +-
 arch/arm/mach-at91/at91sam9g45.c                   |    2 +
 arch/arm/mach-at91/at91sam9g45_devices.c           |   80 +-
 arch/arm/mach-at91/at91sam9g45_lowlevel_init.c     |   26 +
 arch/arm/mach-at91/at91sam9n12.c                   |    1 +
 arch/arm/mach-at91/at91sam9n12_devices.c           |   57 +-
 arch/arm/mach-at91/at91sam9n12_lowlevel_init.c     |   26 +
 arch/arm/mach-at91/at91sam9x5.c                    |    2 +
 arch/arm/mach-at91/at91sam9x5_devices.c            |   88 +-
 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c      |   26 +
 arch/arm/mach-at91/boot_test_cmd.c                 |   95 ++
 arch/arm/mach-at91/bootstrap.c                     |  260 +++++
 arch/arm/mach-at91/clock.c                         |  158 ++-
 arch/arm/mach-at91/clock.h                         |    2 +
 arch/arm/mach-at91/gpio.c                          |  131 +--
 arch/arm/mach-at91/gpio.h                          |  148 +++
 .../mach-at91/include/mach/at91_lowlevel_init.h    |   46 +
 arch/arm/mach-at91/include/mach/at91_pmc.h         |   14 +-
 arch/arm/mach-at91/include/mach/at91rm9200_mc.h    |   30 +
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h  |  126 +++
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h  |  108 +-
 arch/arm/mach-at91/include/mach/atmel_hlcdc.h      |  760 ++++++++++++++
 arch/arm/mach-at91/include/mach/barebox-arm-head.h |    4 +-
 arch/arm/mach-at91/include/mach/board.h            |   10 +-
 arch/arm/mach-at91/include/mach/bootstrap.h        |   28 +
 arch/arm/mach-at91/include/mach/cpu.h              |   27 +
 arch/arm/mach-at91/include/mach/hardware.h         |    8 +
 arch/arm/mach-at91/include/mach/sama5d3.h          |  152 +++
 arch/arm/mach-at91/include/mach/sama5d3_matrix.h   |   15 +
 arch/arm/mach-at91/sama5d3.c                       |  397 ++++++++
 arch/arm/mach-at91/sama5d3_devices.c               |  497 +++++++++
 arch/arm/mach-at91/sama5d3_lowlevel_init.c         |   25 +
 arch/arm/mach-at91/setup.c                         |   27 +
 arch/arm/mach-at91/soc.h                           |    5 +
 arch/arm/mach-clps711x/Kconfig                     |    2 -
 arch/arm/mach-ep93xx/Kconfig                       |    8 -
 arch/arm/mach-ep93xx/Makefile                      |    4 +-
 arch/arm/mach-ep93xx/lowlevel_init.S               |   17 +-
 arch/arm/mach-imx/Kconfig                          |   18 +-
 arch/arm/mach-imx/Makefile                         |    5 +-
 arch/arm/mach-imx/clk-imx21.c                      |   67 +-
 arch/arm/mach-imx/clk-imx25.c                      |    2 +
 arch/arm/mach-imx/clk-imx27.c                      |   16 +-
 arch/arm/mach-imx/clk-imx35.c                      |    2 +-
 arch/arm/mach-imx/clk-imx6.c                       |    5 +
 arch/arm/mach-imx/esdctl.c                         |  140 ++-
 arch/arm/mach-imx/external-nand-boot.c             |  121 +++
 arch/arm/mach-imx/imx21.c                          |   12 +-
 arch/arm/mach-imx/imx35.c                          |    6 +-
 arch/arm/mach-imx/imx6.c                           |    1 +
 arch/arm/mach-imx/include/mach/devices-imx6.h      |   26 +
 arch/arm/mach-imx/include/mach/esdctl.h            |   11 +
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |    4 +-
 arch/arm/mach-imx/include/mach/imx-nand.h          |    6 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h        |    7 +-
 arch/arm/mach-imx/include/mach/imx25-regs.h        |    3 +
 arch/arm/mach-imx/include/mach/imx27-regs.h        |    1 +
 arch/arm/mach-imx/include/mach/imx31-regs.h        |    3 +
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    3 +-
 arch/arm/mach-imx/include/mach/usb.h               |    4 +-
 arch/arm/mach-imx/usb-imx6.c                       |   14 +-
 arch/arm/mach-mxs/soc-imx28.c                      |   14 +
 arch/arm/mach-netx/Kconfig                         |    1 -
 arch/arm/mach-omap/Kconfig                         |   14 -
 arch/arm/mach-omap/am33xx_generic.c                |   27 +
 arch/arm/mach-omap/arch-omap.dox                   |    1 -
 arch/arm/mach-omap/gpmc.c                          |    6 +-
 arch/arm/mach-omap/include/mach/am33xx-devices.h   |    7 +
 arch/arm/mach-omap/include/mach/am33xx-generic.h   |    6 +
 arch/arm/mach-omap/include/mach/cpsw.h             |   29 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |    1 +
 arch/arm/mach-omap/include/mach/omap4-clock.h      |   12 +-
 arch/arm/mach-omap/omap3_core.S                    |   11 +-
 arch/arm/mach-omap/xload.c                         |   11 +-
 arch/arm/mach-pxa/Kconfig                          |    1 -
 arch/arm/mach-samsung/Kconfig                      |    6 -
 arch/arm/pbl/Makefile                              |    3 +-
 arch/arm/pbl/piggy.shipped.S                       |    6 +
 arch/arm/pbl/zbarebox.lds.S                        |    8 +-
 arch/blackfin/boards/ipe337/barebox.lds.S          |    2 +
 arch/blackfin/include/asm/mmu.h                    |   18 +
 arch/blackfin/include/asm/posix_types.h            |    2 +-
 arch/mips/boards/dlink-dir-320/Makefile            |    1 +
 arch/mips/boards/dlink-dir-320/board.c             |   12 +
 arch/mips/boards/qemu-malta/init.c                 |    4 +-
 arch/mips/boards/rzx50/Makefile                    |    1 +
 arch/mips/boards/rzx50/board.c                     |   12 +
 arch/mips/boot/main_entry-pbl.c                    |   24 +-
 arch/mips/include/asm/memory.h                     |   12 +
 arch/mips/include/asm/mmu.h                        |   18 +
 arch/mips/lib/barebox.lds.S                        |    2 +
 arch/mips/pbl/Makefile                             |    3 +-
 arch/mips/pbl/piggy.shipped.S                      |    6 +
 arch/nios2/cpu/barebox.lds.S                       |    1 +
 arch/nios2/include/asm/io.h                        |    2 +-
 arch/nios2/include/asm/mmu.h                       |   18 +
 arch/nios2/include/asm/posix_types.h               |    2 +-
 arch/openrisc/include/asm/mmu.h                    |   18 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S   |    1 +
 arch/ppc/boards/pcm030/barebox.lds.S               |    1 +
 arch/ppc/include/asm/mmu.h                         |   18 +
 arch/ppc/lib/board.c                               |    4 +-
 arch/sandbox/include/asm/mmu.h                     |   18 +
 arch/x86/include/asm/mmu.h                         |   18 +
 arch/x86/lib/barebox.lds.S                         |    2 +
 commands/Kconfig                                   |   29 +-
 commands/Makefile                                  |    3 +
 commands/automount.c                               |    1 +
 commands/bootm.c                                   |   48 +-
 commands/let.c                                     |   93 ++
 commands/loadenv.c                                 |    2 +-
 commands/of_node.c                                 |  111 ++
 commands/of_property.c                             |  280 +++++
 commands/oftree.c                                  |  130 ++-
 commands/reset.c                                   |   23 +
 commands/saveenv.c                                 |    2 +-
 commands/ubiformat.c                               |    2 +-
 common/Kconfig                                     |  110 +-
 common/Makefile                                    |    1 +
 common/console_none.c                              |   42 +
 common/environment.c                               |   21 +-
 common/filetype.c                                  |   12 +-
 common/hush.c                                      |    4 +-
 common/meminfo.c                                   |    5 -
 common/memory.c                                    |    4 +
 common/memsize.c                                   |    3 +
 common/menu.c                                      |    2 +-
 common/module.c                                    |    2 +-
 common/oftree.c                                    |   59 +-
 common/parser.c                                    |    4 +-
 common/resource.c                                  |   26 +-
 common/startup.c                                   |   95 +-
 common/uimage.c                                    |    5 +-
 defaultenv-2/base/bin/init                         |   18 +-
 defaultenv-2/base/init/ps1                         |    7 +
 drivers/mci/atmel_mci.c                            |   20 +-
 drivers/mci/imx-esdhc.c                            |   14 +-
 drivers/mci/mci-core.c                             |   39 +-
 drivers/mci/mxs.c                                  |    2 +-
 drivers/mtd/core.c                                 |   32 +
 drivers/mtd/devices/m25p80.c                       |   12 +-
 drivers/mtd/nand/nand_base.c                       |   39 +-
 drivers/mtd/nand/nand_bbt.c                        |   43 +-
 drivers/mtd/nand/nand_write.c                      |   14 +-
 drivers/net/Kconfig                                |    4 +
 drivers/net/Makefile                               |    1 +
 drivers/net/at91_ether.c                           |    2 +-
 drivers/net/cpsw.c                                 | 1070 ++++++++++++++++++++
 drivers/net/fec_imx.c                              |    2 +-
 drivers/net/macb.c                                 |  491 ++++++---
 drivers/net/macb.h                                 |  185 +++-
 drivers/net/phy/mdio_bus.c                         |    4 +
 drivers/net/phy/micrel.c                           |    8 +-
 drivers/net/phy/phy.c                              |    4 +
 drivers/nor/cfi_flash.c                            |   14 +-
 drivers/nor/cfi_flash.h                            |    4 +
 drivers/of/base.c                                  |  168 ++-
 drivers/serial/Kconfig                             |    1 +
 drivers/serial/amba-pl011.c                        |    2 +-
 drivers/spi/imx_spi.c                              |    1 +
 drivers/usb/core/usb.c                             |   14 +
 drivers/usb/gadget/Kconfig                         |    2 +-
 drivers/usb/host/Kconfig                           |    5 +
 drivers/usb/host/Makefile                          |    1 +
 drivers/usb/host/ehci-atmel.c                      |   96 ++
 drivers/usb/host/ehci-hcd.c                        |   90 +-
 drivers/usb/imx/Kconfig                            |    5 +
 drivers/usb/imx/Makefile                           |    1 +
 drivers/usb/imx/imx-usb-misc.c                     |   12 +
 drivers/usb/imx/imx-usb-phy.c                      |  105 ++
 drivers/video/Kconfig                              |    8 +
 drivers/video/Makefile                             |    2 +
 drivers/video/atmel_hlcdfb.c                       |  297 ++++++
 drivers/video/atmel_lcdfb.c                        |  263 +++++
 drivers/video/atmel_lcdfb.h                        |   37 +
 drivers/video/atmel_lcdfb_core.c                   |  313 ++++++
 drivers/video/imx.c                                |   29 +-
 drivers/w1/Kconfig                                 |    5 +
 drivers/w1/slaves/Kconfig                          |    4 +-
 drivers/w1/slaves/w1_ds2433.c                      |   43 +-
 drivers/w1/w1.c                                    |   27 +-
 drivers/w1/w1.h                                    |    2 +
 fs/fs.c                                            |   19 +
 fs/tftp.c                                          |   25 +-
 include/asm-generic/memory_layout.h                |    6 +-
 include/asm-generic/sections.h                     |    1 +
 include/bootstrap.h                                |   34 +
 include/common.h                                   |   27 +-
 include/driver.h                                   |   29 -
 include/envfs.h                                    |    8 +-
 include/environment.h                              |   23 -
 include/filetype.h                                 |   23 +-
 include/fs.h                                       |    5 +
 include/linux/mtd/mtd.h                            |    4 +-
 include/linux/phy.h                                |    1 +
 include/math.h                                     |   92 ++
 include/mci.h                                      |    4 +
 include/of.h                                       |   16 +-
 include/pbl.h                                      |   15 +
 include/printk.h                                   |   69 ++
 include/stdio.h                                    |   64 +-
 include/video/atmel_lcdc.h                         |  206 ++++
 lib/Kconfig                                        |    2 +
 lib/Makefile                                       |    2 +
 lib/bootstrap/Kconfig                              |   13 +
 lib/bootstrap/Makefile                             |    3 +
 lib/bootstrap/common.c                             |   24 +
 lib/bootstrap/devfs.c                              |  118 +++
 lib/bootstrap/disk.c                               |   37 +
 lib/decompress_unlzo.c                             |    4 +-
 lib/gui/bmp.c                                      |    2 +-
 lib/math.c                                         |  795 +++++++++++++++
 lib/xfuncs.c                                       |    4 +-
 net/Kconfig                                        |    1 +
 pbl/Kconfig                                        |   44 +
 pbl/Makefile                                       |    1 +
 pbl/decomp.c                                       |   44 +
 pbl/misc.c                                         |    4 +-
 scripts/bareboxenv.c                               |    1 -
 scripts/omap4_usbboot.c                            |   75 +-
 scripts/usb_linux.c                                |    4 +-
 481 files changed, 17690 insertions(+), 4371 deletions(-)
 create mode 100644 arch/arm/boards/animeo_ip/Makefile
 create mode 100644 arch/arm/boards/animeo_ip/config.h
 create mode 100644 arch/arm/boards/animeo_ip/env/config
 create mode 100644 arch/arm/boards/animeo_ip/init.c
 create mode 100644 arch/arm/boards/archosg9/archos_features.c
 create mode 100644 arch/arm/boards/archosg9/archos_features.h
 create mode 100644 arch/arm/boards/archosg9/feature_list.h
 create mode 100644 arch/arm/boards/at91sam9261ek/lowlevel_init.c
 create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel_init.c
 create mode 100644 arch/arm/boards/at91sam9m10ihd/Makefile
 create mode 100644 arch/arm/boards/at91sam9m10ihd/config.h
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/android
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/mmc
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/net
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/config
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/automount
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/config-board
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/ps1
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/splash
 create mode 100644 arch/arm/boards/at91sam9m10ihd/hw_version.c
 create mode 100644 arch/arm/boards/at91sam9m10ihd/hw_version.h
 create mode 100644 arch/arm/boards/at91sam9m10ihd/init.c
 create mode 100644 arch/arm/boards/at91sam9x5ek/env/bin/init_board
 create mode 100644 arch/arm/boards/beagle/env/boot/nand-ubi
 create mode 100644 arch/arm/boards/beagle/env/boot/nand-ubi-dt
 create mode 100644 arch/arm/boards/beagle/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/beagle/lowlevel.c
 create mode 100644 arch/arm/boards/beaglebone/lowlevel.c
 create mode 100644 arch/arm/boards/ccxmx51/lowlevel.c
 create mode 100644 arch/arm/boards/chumby_falconwing/lowlevel.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
 create mode 100644 arch/arm/boards/efika-mx-smartbook/lowlevel.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx23-evk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx28-evk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/bootargs-base
 create mode 100644 arch/arm/boards/guf-vincell/env/init/config-board
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/hostname
 create mode 100644 arch/arm/boards/imx233-olinuxino/lowlevel.c
 delete mode 100644 arch/arm/boards/karo-tx25/env/bin/init_board
 create mode 100644 arch/arm/boards/karo-tx25/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/karo-tx25/env/config
 create mode 100644 arch/arm/boards/karo-tx25/env/init/config-board
 create mode 100644 arch/arm/boards/karo-tx25/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/karo-tx28/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx51/lowlevel.c
 create mode 100644 arch/arm/boards/mioa701/lowlevel.c
 create mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
 create mode 100644 arch/arm/boards/nhk8815/lowlevel.c
 create mode 100644 arch/arm/boards/omap343xdsp/lowlevel.c
 create mode 100644 arch/arm/boards/omap3evm/lowlevel.c
 create mode 100644 arch/arm/boards/pcm051/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-l1/lowlevel.c
 create mode 100644 arch/arm/boards/pm9261/lowlevel_init.c
 create mode 100644 arch/arm/boards/pm9263/lowlevel_init.c
 create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.c
 create mode 100644 arch/arm/boards/sama5d3xek/Makefile
 create mode 100644 arch/arm/boards/sama5d3xek/config.h
 create mode 100644 arch/arm/boards/sama5d3xek/env/bin/init_board
 create mode 100644 arch/arm/boards/sama5d3xek/env/config
 create mode 100644 arch/arm/boards/sama5d3xek/hw_version.c
 create mode 100644 arch/arm/boards/sama5d3xek/hw_version.h
 create mode 100644 arch/arm/boards/sama5d3xek/init.c
 create mode 100644 arch/arm/boards/telit-evk-pro3/Makefile
 create mode 100644 arch/arm/boards/telit-evk-pro3/config.h
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/init/config-board
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/init/usb
 create mode 100644 arch/arm/boards/telit-evk-pro3/init.c
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
 create mode 100644 arch/arm/boards/toshiba-ac100/lowlevel.c
 create mode 100644 arch/arm/boards/tqma53/lowlevel.c
 create mode 100644 arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
 create mode 100644 arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c
 create mode 100644 arch/arm/boards/versatile/lowlevel.c
 create mode 100644 arch/arm/configs/animeo_ip_defconfig
 create mode 100644 arch/arm/configs/at91sam9261ek_bootstrap_defconfig
 create mode 100644 arch/arm/configs/at91sam9261ek_first_stage_defconfig
 create mode 100644 arch/arm/configs/at91sam9m10ihd_defconfig
 create mode 100644 arch/arm/configs/sama5d3xek_defconfig
 create mode 100644 arch/arm/configs/telit_evk_pro3_defconfig
 create mode 100644 arch/arm/configs/tny_a9263_bootstrap_defconfig
 create mode 100644 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
 create mode 100644 arch/arm/configs/usb_a9263_bootstrap_defconfig
 create mode 100644 arch/arm/cpu/mmu-early.c
 create mode 100644 arch/arm/cpu/mmu-early.h
 delete mode 100644 arch/arm/lib/arm.c
 create mode 100644 arch/arm/mach-at91/at91sam9260_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9261_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9263_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/boot_test_cmd.c
 create mode 100644 arch/arm/mach-at91/bootstrap.c
 create mode 100644 arch/arm/mach-at91/gpio.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
 create mode 100644 arch/arm/mach-at91/include/mach/atmel_hlcdc.h
 create mode 100644 arch/arm/mach-at91/include/mach/bootstrap.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_matrix.h
 create mode 100644 arch/arm/mach-at91/sama5d3.c
 create mode 100644 arch/arm/mach-at91/sama5d3_devices.c
 create mode 100644 arch/arm/mach-at91/sama5d3_lowlevel_init.c
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-generic.h
 create mode 100644 arch/arm/mach-omap/include/mach/cpsw.h
 create mode 100644 arch/arm/pbl/piggy.shipped.S
 create mode 100644 arch/blackfin/include/asm/mmu.h
 create mode 100644 arch/mips/boards/dlink-dir-320/board.c
 create mode 100644 arch/mips/boards/rzx50/board.c
 create mode 100644 arch/mips/include/asm/memory.h
 create mode 100644 arch/mips/include/asm/mmu.h
 create mode 100644 arch/mips/pbl/piggy.shipped.S
 create mode 100644 arch/nios2/include/asm/mmu.h
 create mode 100644 arch/openrisc/include/asm/mmu.h
 create mode 100644 arch/sandbox/include/asm/mmu.h
 create mode 100644 arch/x86/include/asm/mmu.h
 create mode 100644 commands/let.c
 create mode 100644 commands/of_node.c
 create mode 100644 commands/of_property.c
 create mode 100644 common/console_none.c
 create mode 100644 defaultenv-2/base/init/ps1
 create mode 100644 drivers/net/cpsw.c
 create mode 100644 drivers/usb/host/ehci-atmel.c
 create mode 100644 drivers/usb/imx/imx-usb-phy.c
 create mode 100644 drivers/video/atmel_hlcdfb.c
 create mode 100644 drivers/video/atmel_lcdfb.c
 create mode 100644 drivers/video/atmel_lcdfb.h
 create mode 100644 drivers/video/atmel_lcdfb_core.c
 create mode 100644 include/bootstrap.h
 create mode 100644 include/math.h
 create mode 100644 include/pbl.h
 create mode 100644 include/printk.h
 create mode 100644 include/video/atmel_lcdc.h
 create mode 100644 lib/bootstrap/Kconfig
 create mode 100644 lib/bootstrap/Makefile
 create mode 100644 lib/bootstrap/common.c
 create mode 100644 lib/bootstrap/devfs.c
 create mode 100644 lib/bootstrap/disk.c
 create mode 100644 lib/math.c
 create mode 100644 pbl/Kconfig
 create mode 100644 pbl/decomp.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
