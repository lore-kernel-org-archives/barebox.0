Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZG1u-0008Jb-6J
 for barebox@lists.infradead.org; Mon, 06 May 2013 07:40:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UZG1X-0003rT-Bx
 for barebox@lists.infradead.org; Mon, 06 May 2013 09:39:51 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UZG1X-0002Hh-AV
 for barebox@lists.infradead.org; Mon, 06 May 2013 09:39:51 +0200
Date: Mon, 6 May 2013 09:39:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506073951.GD32299@pengutronix.de>
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
Subject: v2013.05.0
To: barebox@lists.infradead.org


Hi All,

We have a may release. As usual here are the patches applied since the
last release. Most notable change this time is that we no longer use
libfdt which brings us a step closer to good devicetree support in
barebox.

Sascha


----------------------------------------------------------------
Alexander Shiyan (25):
      ARM: clep7212: Migrate to config-board
      ARM: clps711x: Fix setup bus wait state scaling factor for 13Mhz mode
      ARM: clps711x: Replace numeric PLL option with boolean for raise CPU =
frequency
      ARM: clps711x: Add clocksource driver
      ARM: clps711x: Using COMMON_CLK
      Add Generic GPIO driver
      ARM: clps711x: Add GPIO driver
      Add helpers to define resources
      ARM: clps711x: Migrate to using DEFINE_RES_MEM macro
      ARM: clps711x: Limit chipselect setup up to CS5
      Add system controller register driver (SYSCON)
      ARM: clps711x: Export system-wide registers through SYSCON driver
      serial: clps711x: Migrate to using SYSCON driver
      Extend device_platform_driver macro
      Add more drivers to using device_platform_driver()
      Introduce console_platform_driver() macro and use it for serial drive=
rs
      SPI: Rename spi_register_driver() for using with register_driver_macr=
o()
      I2C: Rename i2c_register_driver() for using with register_driver_macr=
o()
      Introduce device_spi_driver() macro and use it for SPI drivers
      ARM: ccmx51: Migrate to defaultenv-2
      arm: ccmx51: Using imx51_add_usbotg() function for register USB
      ARM: Add CPU detection macros for ARM720
      mci: Fix bug if probe parameter is omitted
      ubimkvol: Typo fix
      ARM: ccxmx51: Fix OTG Host USB mode

Alexandre Belloni (1):
      cfa10036: Retrieve the RAM size at runtime

Antony Pavlov (2):
      of: fix typos
      clkdev: fix typo

Eric B=E9nard (2):
      usb/gadget/Kconfig: fix menu
      mtdraw: fix oob read and write

Hubert Feurstein (5):
      commands/tftp: use debug() for debug output
      mci-core: use dev_* for messages
      mci-core: fix coding style
      common/filetype: move partition-table detection into own function
      common/partition: check only for partition table types

Jan Weitzel (1):
      ubiformat: get buffer from malloc

Jean-Christophe PLAGNIOL-VILLARD (10):
      tlsf_malloc: drop duplicate include
      startup: switch to pr_xxx
      at91: clock switch to pr_info
      meminfo: switch to pr_xxx
      net/console: switch to pr_xxx
      startup: switch to pr_xxx
      barebox_banner: switch to pr_info
      net/phy: convert to pr_info
      ext4: switch debug and printf to dev_xxx
      defaultenv-2: move settings in a submenu

Josh Cartwright (1):
      macb: rename platform data

Juergen Beisert (2):
      MXS/Chumby: fix MCI device registration
      MXS/MCI: don't touch variables in the host structure

Lucas Stach (1):
      dtc: add .gitignore for generated files

Marc Kleine-Budde (11):
      ARM i.MX bootsource: convert enums from enum imx_bootsource to upperc=
ase
      ARM i.MX bootsource: convert all imx*_boot_save_loc functions to void
      ARM i.MX bootsource: imx_25_35_boot_save_loc: remove leftover do-noth=
ing code
      ARM i.MX bootsource: rename imx_27_boot_save_loc -> imx27_boot_save_l=
oc
      ARM i.MX bootsource: add separate function for mx25 and mx35
      bootsource: create arch independent bootsource framework
      bootsource: use initcall to export bootsource location to environment
      bootsource: add support for bootsource instance information
      bootsource: add definition for i2c-eeprom, spi-nor, spi-eeprom and usb
      ARM: mxs: add bootsource detection
      ARM i.MX28: make chip reset via reset pin work again

Sascha Hauer (116):
      mtd: nand: register nand flashes with nand specific function
      mtd: Add parameter to allow erasing bad blocks
      mtd nand: introduce bbm.h
      nand command: use loff_t for block offset
      nand command: use enumeration for command instead of bitmask
      nand command: check for <dev> directly after option parsing
      mtd: nand: replace NAND_USE_FLASH_BBT with NAND_BBT_USE_FLASH
      mtd nand i.MX: remove unused code
      ARM: make cpu architecture detection available as static inline funct=
ion
      ARM: add early mmu cache flush function and use it in setup_c
      of: unflatten: allocate root node explicitly
      of: export of_find_child
      of: removed unused variables
      of: Let of_find_node_by_path iterate over tree
      of: remove allnodes list
      ARM bootm: Use of_get_fixed_tree
      of: Add of_set_property and of_create_node
      of_node command: use of_create_node
      of: Add missing prototype for of_device_is_compatible
      of: let of_unflatten_dtb return the unflattened tree
      of: Add root node argument to of_find_node_by_path
      of: Add of_write_number helper
      of: Add initrd helper
      of: make unflatten independent of libfdt
      of: make flatten independent of libfdt
      of/fdt: use optimized endianess conversion
      oftree command: Use of_print_nodes
      of: move OFTREE Kconfig option to drivers/of/
      of: make OFDEVICE a user selectable option
      oftree command: retire CMD_OFTREE_PROBE Kconfig option
      of: move oftree Kconfig to the top of the drivers menu
      of: Pass barebox internal format devicetree to of_get_fixed_tree
      bootm: Use of_print_nodes instead of fdt_print
      of: move flat devicetree functions to separate file
      of: Add of property write functions for u32
      of: make value of property in of_new_property optional
      of: Add missing prototype for size/address counting functions
      of: fixup unflattened devicetree
      of_* commands: print usage when insufficient arguments are given
      of_property command: Fix crash with empty property value
      ARM: bootm: rework concatenated oftree
      of: memory: Use of_write_number
      of: Add reservemap handling
      bootm: Pass unflattened devicetree to handlers
      ARM bootm: Switch initrd support to unflattened tree
      of: remove unused libfdt
      of: make locally used functions static
      ARM: provide accessor functions for linker variables
      ARM boards: Use accessor functions to access linker variables
      ARN: fixup vector addresses for relocatable binaries
      ARM: Add relocatable binary support
      ata: ahci: fix wrong link check
      ata: add ata logical device to defer probe
      ata: Add init callback to ata_port_operations
      ata: ahci: implement init callback
      ata: ahci: refactor init functions
      net: fec: drop sevenwire support
      net: fec: use standard phy type defines
      Make: update setlocalversion from the kernel
      mtd: nand: Add bbt parameter
      mtd: nand: Add command to generate a flash BBT
      include asm/sections.h instead of asm-generic/sections.h
      MMC i.MX: remove unnecessary mach include
      ARM i.MX: Add double include protection for generic.h
      ARM: Add missing barebox_arm_boarddata function
      net: phy: micrel: Update id table from kernel
      ARM i.MX6: Add mmdc calibration support
      Add DMO RealQ7 board support
      Add DMO RealQ7 defconfig
      ARM: i.MX: external nand boot: check for bad blocks
      ARM: head: Add some space behind the image header
      ARM: i.MX: Add bbu handler for external NAND boot
      ARM: i.MX pcm043: register external nand boot handler
      scripts: Add dtc
      Makefile.lib: Add dtc support
      ARM: Initial dts support
      mips: initialize malloc pool before start_barebox()
      nios: initialize malloc pool before start_barebox()
      openrisc: initialize malloc pool before start_barebox()
      blackfin: initialize malloc pool before start_barebox()
      x86: initialize malloc pool before start_barebox()
      bus: Make struct device a pointer
      fs: allocate FILE table dynamically
      gpio: allocate gpio_desc table dynamically
      clk: Add is_enabled callback
      ARM: i.MX: rename barebox_loc to bootsource
      clk: remove unused __clk_[get|put]
      ARM: i.MX53: Add bootsource instance information
      Merge branch 'for-next/arm'
      Merge branch 'for-next/ata'
      Merge branch 'for-next/bootsource'
      Merge branch 'for-next/clk'
      Merge branch 'for-next/clps711x'
      Merge branch 'for-next/defenv'
      Merge branch 'for-next/device-driver-macros'
      Merge branch 'for-next/fec'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-external-nand-boot'
      Merge branch 'for-next/imx-realq7'
      Merge branch 'for-next/malloc-all-initcalls'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/misc-arm'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/oftree'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/pr_print'
      Merge branch 'for-next/relocate'
      Merge branch 'for-next/zynq'
      of/net: Add net related of helpers
      net: fec: probe phy_mode from devicetree
      ARM: i.MX53: Fix pll216 setup
      ARM: i.MX53: split lowlevel function into early/nonearly version
      ARM: tqma53: call SoC lowlevel function early
      dtc: remove autogenerated modules.order
      defaultenv-2: Fix verbose booting
      Release v2013.05.0

Steffen Trumtrar (9):
      serial: Add driver for Cadence UART
      ARM: zynq: Add new architecture zynq
      ARM: zynq: add clk support for zynq7000
      ARM: zynq: add zynq fsbl checksum script
      ARM: zynq: Add support for the Avnet Zedboard
      net: macb: turn off endian_swp_pkt_en
      ARM: zynq: add support for ethernet
      ARM: zedboard: add ethernet device
      of: property: fix error message

Teresa G=E1mez (4):
      AM33XX: Move muxing defines to header file
      AM33XX: pcm051: Create custom mux file
      OMAP: Move bootsource functions
      OMAP: Add option to use environment from MMC

Uwe Kleine-K=F6nig (1):
      of: fix how an initrd is passed to Linux

Vicente Bergas (11):
      defaultenv-2: don't load nonexistent file
      omap4_romusb: rename omap4_usbboot_pdata to omap4_usbboot_data
      panda: remove unused configuration items
      ARM: omap4_romusb: allow adding usb-serial when not booting from usb
      archosg9: enable booting from sd-card
      omap_uart: add low level port serial initialization
      omap_uart: rename OMAP3EVM_UARTx to OMAP_UARTx
      twl6030: add power button as an input key
      ArchosG9: zero all features before setting them
      gpio_keys: detect keys pressed before booting
      ArchosG9: add keyboard input and new reset menu entries

 .gitignore                                         |    1 +
 Makefile                                           |   65 +-
 arch/arm/Kconfig                                   |   17 +
 arch/arm/Makefile                                  |   27 +
 arch/arm/boards/a9m2410/a9m2410.c                  |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    2 +-
 arch/arm/boards/animeo_ip/init.c                   |    2 +-
 arch/arm/boards/archosg9/archos_features.c         |   58 +-
 arch/arm/boards/archosg9/board.c                   |   28 +-
 arch/arm/boards/archosg9/env/bin/init              |   28 +
 arch/arm/boards/archosg9/env/boot/sd-card-android  |   11 +
 arch/arm/boards/archosg9/env/boot/sd-card-linux    |   17 +
 arch/arm/boards/archosg9/env/boot/usb-android      |   11 +
 arch/arm/boards/archosg9/env/boot/usb-linux        |   17 +
 arch/arm/boards/archosg9/env/config                |    3 -
 arch/arm/boards/archosg9/env/init/automount        |   28 +
 arch/arm/boards/archosg9/env/init/bootsource       |   11 +
 arch/arm/boards/archosg9/env/init/usbboot          |    6 -
 arch/arm/boards/archosg9/env/menu/mainmenu         |   25 +
 arch/arm/boards/at91rm9200ek/init.c                |    2 +-
 arch/arm/boards/at91sam9260ek/init.c               |    2 +-
 arch/arm/boards/at91sam9263ek/init.c               |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    2 +-
 arch/arm/boards/at91sam9m10ihd/hw_version.c        |    1 -
 arch/arm/boards/at91sam9m10ihd/init.c              |    2 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c          |   32 +-
 arch/arm/boards/at91sam9x5ek/init.c                |    2 +-
 arch/arm/boards/avnet-zedboard/Makefile            |    3 +
 arch/arm/boards/avnet-zedboard/board.c             |   51 +
 arch/arm/boards/avnet-zedboard/config.h            |    4 +
 .../boards/avnet-zedboard/env/init/config-board    |    7 +
 arch/arm/boards/avnet-zedboard/flash_header.c      |   62 +
 arch/arm/boards/avnet-zedboard/lowlevel.c          |  261 +++
 arch/arm/boards/beagle/board.c                     |    1 -
 arch/arm/boards/beaglebone/board.c                 |   37 +-
 arch/arm/boards/beaglebone/lowlevel.c              |    2 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                  |   54 +-
 arch/arm/boards/ccxmx51/env/boot/nand              |    9 +
 arch/arm/boards/ccxmx51/env/config                 |   37 -
 arch/arm/boards/ccxmx51/env/config-board           |   12 +
 arch/arm/boards/ccxmx51/env/init/mtdparts-nand     |   11 +
 arch/arm/boards/chumby_falconwing/falconwing.c     |    2 +-
 arch/arm/boards/clep7212/env/config                |   20 -
 arch/arm/boards/clep7212/env/config-board          |   14 +
 arch/arm/boards/clep7212/lowlevel.c                |    8 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   18 +-
 arch/arm/boards/delphi-poc20/env/boot/mmc          |   10 +
 arch/arm/boards/dmo-mx6-realq7/Makefile            |    2 +
 arch/arm/boards/dmo-mx6-realq7/board.c             |  407 ++++
 arch/arm/boards/dmo-mx6-realq7/config.h            |    4 +
 arch/arm/boards/dmo-mx6-realq7/env/boot/mmc        |   10 +
 arch/arm/boards/dmo-mx6-realq7/env/config-board    |    7 +
 arch/arm/boards/dmo-mx6-realq7/env/init/automount  |   14 +
 arch/arm/boards/dmo-mx6-realq7/flash_header.c      |   40 +
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |  155 ++
 arch/arm/boards/dss11/init.c                       |    2 +-
 arch/arm/boards/efika-mx-smartbook/board.c         |    3 +-
 .../boards/efika-mx-smartbook/env/init/bootsource  |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    4 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    2 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |    2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |    2 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |    2 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |    2 +-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    3 +-
 arch/arm/boards/guf-cupid/board.c                  |    2 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |    2 +-
 arch/arm/boards/guf-neso/board.c                   |    2 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    2 +-
 arch/arm/boards/guf-vincell/board.c                |    2 +-
 arch/arm/boards/highbank/init.c                    |   49 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    2 +-
 arch/arm/boards/karo-tx25/board.c                  |    4 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |    2 +-
 arch/arm/boards/karo-tx51/tx51.c                   |    2 +-
 arch/arm/boards/karo-tx53/board.c                  |    9 +-
 arch/arm/boards/karo-tx53/lowlevel.c               |    2 +-
 arch/arm/boards/mmccpu/init.c                      |    2 +-
 arch/arm/boards/omap3evm/board.c                   |    4 +-
 arch/arm/boards/omap3evm/lowlevel.c                |    4 +-
 arch/arm/boards/panda/board.c                      |   30 -
 arch/arm/boards/pcm037/pcm037.c                    |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    2 +-
 arch/arm/boards/pcm038/pcm038.c                    |    7 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    2 +-
 arch/arm/boards/pcm043/pcm043.c                    |   15 +-
 arch/arm/boards/pcm049/board.c                     |    1 -
 arch/arm/boards/pcm051/Makefile                    |    2 +-
 arch/arm/boards/pcm051/board.c                     |    4 +-
 arch/arm/boards/pcm051/mux.c                       |   20 +
 arch/arm/boards/pcm051/mux.h                       |    1 +
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    1 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |    1 -
 arch/arm/boards/phycard-i.MX27/pca100.c            |    4 +-
 arch/arm/boards/pm9263/init.c                      |    2 +-
 arch/arm/boards/pm9g45/init.c                      |    2 +-
 arch/arm/boards/qil-a9260/init.c                   |    2 +-
 arch/arm/boards/sama5d3xek/hw_version.c            |    1 -
 arch/arm/boards/sama5d3xek/init.c                  |    4 +-
 arch/arm/boards/telit-evk-pro3/init.c              |    2 +-
 arch/arm/boards/tny-a926x/init.c                   |    2 +-
 arch/arm/boards/tqma53/board.c                     |    3 +-
 arch/arm/boards/tqma53/lowlevel.c                  |    2 +
 arch/arm/boards/usb-a926x/init.c                   |    2 +-
 arch/arm/configs/archosg9_defconfig                |   70 +-
 arch/arm/configs/archosg9_xload_defconfig          |   20 +-
 arch/arm/configs/ccmx51_defconfig                  |    9 +-
 arch/arm/configs/dmo-realq7_defconfig              |   91 +
 arch/arm/configs/panda_xload_defconfig             |    3 -
 arch/arm/configs/zedboard_defconfig                |   49 +
 arch/arm/cpu/Makefile                              |    4 +
 arch/arm/cpu/cache.c                               |   33 +
 arch/arm/cpu/common.c                              |   66 +
 arch/arm/cpu/cpu.c                                 |   34 +-
 arch/{mips/lib/memory.c =3D> arm/cpu/dtb.c}          |   32 +-
 arch/arm/cpu/exceptions.S                          |   55 +-
 arch/arm/cpu/mmu.c                                 |    2 +
 arch/arm/cpu/setupc.S                              |   62 +
 arch/arm/cpu/start-pbl.c                           |   18 +-
 arch/arm/cpu/start.c                               |   15 +
 arch/arm/dts/.gitignore                            |    1 +
 arch/arm/dts/Makefile                              |   10 +
 arch/arm/dts/skeleton.dtsi                         |   13 +
 arch/arm/include/asm/barebox-arm-head.h            |   10 +
 arch/arm/include/asm/barebox-arm.h                 |   35 +
 arch/arm/include/asm/cache.h                       |    8 +
 arch/arm/include/asm/clkdev.h                      |   17 -
 arch/arm/include/asm/mmu.h                         |    1 -
 arch/arm/include/asm/sections.h                    |   33 +
 arch/arm/include/asm/system_info.h                 |   48 +
 arch/arm/lib/armlinux.c                            |    2 -
 arch/arm/lib/barebox.lds.S                         |   19 +
 arch/arm/lib/bootm.c                               |   56 +-
 arch/arm/lib/runtime-offset.S                      |   32 +
 arch/arm/lib/unwind.c                              |    2 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |    4 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |    4 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |    4 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |    4 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |    4 +-
 arch/arm/mach-at91/clock.c                         |    2 +-
 arch/arm/mach-at91/include/mach/board.h            |   11 +-
 arch/arm/mach-at91/include/mach/clkdev.h           |    7 -
 arch/arm/mach-at91/sama5d3_devices.c               |    4 +-
 arch/arm/mach-bcm2835/include/mach/clkdev.h        |    7 -
 arch/arm/mach-clps711x/Kconfig                     |   13 +-
 arch/arm/mach-clps711x/clock.c                     |  126 +-
 arch/arm/mach-clps711x/devices.c                   |  108 +-
 arch/arm/mach-clps711x/include/mach/clkdev.h       |    7 -
 arch/arm/mach-clps711x/include/mach/gpio.h         |    3 +
 arch/arm/mach-clps711x/lowlevel.c                  |   16 +-
 arch/arm/mach-imx/Kconfig                          |   12 +
 arch/arm/mach-imx/Makefile                         |    2 +
 arch/arm/mach-imx/boot.c                           |  182 +-
 arch/arm/mach-imx/external-nand-boot.c             |   86 +-
 arch/arm/mach-imx/imx-bbu-external-nand.c          |  210 ++
 arch/arm/mach-imx/imx25.c                          |    6 +-
 arch/arm/mach-imx/imx27.c                          |    2 +-
 arch/arm/mach-imx/imx35.c                          |    6 +-
 arch/arm/mach-imx/imx51.c                          |    4 +-
 arch/arm/mach-imx/imx53.c                          |   14 +-
 arch/arm/mach-imx/imx6-mmdc.c                      |  868 +++++++
 arch/arm/mach-imx/include/mach/bbu.h               |   11 +
 arch/arm/mach-imx/include/mach/clkdev.h            |    7 -
 arch/arm/mach-imx/include/mach/devices-imx6.h      |   20 +
 arch/arm/mach-imx/include/mach/generic.h           |   30 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |    2 +-
 arch/arm/mach-imx/include/mach/imx-nand.h          |    6 +
 arch/arm/mach-imx/include/mach/imx5.h              |    4 +-
 arch/arm/mach-imx/include/mach/imx6-mmdc.h         |    7 +
 arch/arm/mach-mxs/imx.c                            |   99 +
 arch/arm/mach-mxs/include/mach/revision.h          |   24 +
 arch/arm/mach-mxs/soc-imx28.c                      |    6 +-
 arch/arm/mach-nomadik/include/mach/clkdev.h        |    7 -
 arch/arm/mach-omap/Kconfig                         |   11 +-
 arch/arm/mach-omap/Makefile                        |    2 +-
 arch/arm/mach-omap/am33xx_generic.c                |    2 +-
 arch/arm/mach-omap/am33xx_mux.c                    |  246 +-
 arch/arm/mach-omap/include/mach/am33xx-mux.h       |  246 +-
 arch/arm/mach-omap/include/mach/debug_ll.h         |   27 +-
 arch/arm/mach-omap/include/mach/generic.h          |   17 +
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h    |    3 +
 arch/arm/mach-omap/include/mach/xload.h            |   16 -
 arch/arm/mach-omap/omap3_generic.c                 |    2 +-
 arch/arm/mach-omap/omap4_generic.c                 |    2 +-
 arch/arm/mach-omap/omap4_rom_usb.c                 |   97 +-
 arch/arm/mach-omap/omap_generic.c                  |   65 +
 arch/arm/mach-omap/xload.c                         |   13 +-
 arch/arm/mach-versatile/include/mach/clkdev.h      |    7 -
 arch/arm/mach-vexpress/include/mach/clkdev.h       |    7 -
 arch/arm/mach-zynq/Kconfig                         |   39 +
 arch/arm/mach-zynq/Makefile                        |    1 +
 arch/arm/mach-zynq/clk-zynq7000.c                  |  424 ++++
 arch/arm/mach-zynq/devices.c                       |   13 +
 arch/arm/mach-zynq/include/mach/barebox.lds.h      |    8 +
 .../include/mach/clkdev.h                          |    1 -
 arch/arm/mach-zynq/include/mach/debug_ll.h         |   37 +
 arch/arm/mach-zynq/include/mach/devices.h          |   20 +
 .../arm/mach-zynq/include/mach/zynq-flash-header.h |   38 +
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h    |  133 ++
 arch/arm/mach-zynq/zynq.c                          |   56 +
 arch/arm/pbl/Makefile                              |    3 +
 arch/arm/pbl/zbarebox.lds.S                        |   16 +
 arch/blackfin/cpu-bf561/start.S                    |    4 +-
 arch/blackfin/lib/board.c                          |    6 +-
 arch/mips/boot/main_entry.c                        |    5 +
 arch/mips/lib/Makefile                             |    1 -
 arch/nios2/cpu/start.S                             |    4 +-
 arch/nios2/lib/board.c                             |    8 +-
 arch/openrisc/cpu/start.S                          |    2 +-
 arch/openrisc/lib/board.c                          |    7 +-
 arch/ppc/Kconfig                                   |    1 +
 arch/ppc/boards/pcm030/pcm030.c                    |    2 +-
 arch/ppc/lib/ppclinux.c                            |    8 +
 arch/ppc/mach-mpc5xxx/cpu.c                        |   26 +-
 arch/x86/boot/main_entry.c                         |    4 +-
 arch/x86/lib/memory.c                              |    7 +-
 commands/Kconfig                                   |   10 -
 commands/bootm.c                                   |   22 +-
 commands/nand.c                                    |   48 +-
 commands/of_node.c                                 |   33 +-
 commands/of_property.c                             |   28 +-
 commands/oftree.c                                  |   42 +-
 commands/tftp.c                                    |    2 +-
 commands/ubi.c                                     |    2 +-
 commands/ubiformat.c                               |   22 +-
 common/Kconfig                                     |    2 +-
 common/Makefile                                    |    1 +
 common/bootsource.c                                |   90 +
 common/filetype.c                                  |   36 +-
 common/kallsyms.c                                  |    2 +-
 common/meminfo.c                                   |    8 +-
 common/memory.c                                    |   70 +-
 common/oftree.c                                    |  314 +--
 common/partitions.c                                |    4 +-
 common/startup.c                                   |   12 +-
 common/tlsf_malloc.c                               |    2 -
 common/version.c                                   |    4 +-
 defaultenv-2/base/bin/boot                         |    2 +-
 defaultenv-2/base/bin/init                         |    2 +-
 defaultenv-2/menu/menu/mainmenu                    |    6 +-
 defaultenv-2/menu/menu/settings                    |   21 +
 drivers/Kconfig                                    |    2 +-
 drivers/Makefile                                   |    2 +-
 drivers/ata/ahci.c                                 |  170 +-
 drivers/ata/ahci.h                                 |    1 -
 drivers/ata/disk_ata_drive.c                       |   63 +-
 drivers/base/bus.c                                 |    7 +-
 drivers/base/driver.c                              |    2 +-
 drivers/clk/clk-fixed.c                            |    2 +-
 drivers/clk/clk-gate.c                             |   14 +
 drivers/clk/clk.c                                  |   61 +-
 drivers/clk/clkdev.c                               |    5 +-
 drivers/clocksource/Kconfig                        |    4 +
 drivers/clocksource/Makefile                       |    1 +
 drivers/clocksource/clps711x.c                     |   61 +
 drivers/eeprom/at24.c                              |    2 +-
 drivers/eeprom/at25.c                              |    9 +-
 drivers/gpio/Kconfig                               |   17 +
 drivers/gpio/Makefile                              |    6 +-
 drivers/gpio/gpio-clps711x.c                       |   70 +
 drivers/gpio/gpio-generic.c                        |  428 ++++
 drivers/gpio/gpio.c                                |   16 +-
 drivers/input/Kconfig                              |    7 +
 drivers/input/Makefile                             |    1 +
 drivers/input/gpio_keys.c                          |    2 +
 drivers/input/qt1070.c                             |    2 +-
 drivers/input/twl6030_pwrbtn.c                     |  108 +
 drivers/mci/imx.c                                  |    1 -
 drivers/mci/mci-core.c                             |   19 +-
 drivers/mci/mci_spi.c                              |    9 +-
 drivers/mci/mxs.c                                  |   10 +-
 drivers/mfd/Kconfig                                |    5 +
 drivers/mfd/Makefile                               |    1 +
 drivers/mfd/lp3972.c                               |    2 +-
 drivers/mfd/mc13xxx.c                              |   10 +-
 drivers/mfd/mc34704.c                              |    2 +-
 drivers/mfd/mc34708.c                              |   10 +-
 drivers/mfd/mc9sdz60.c                             |    2 +-
 drivers/mfd/stmpe-i2c.c                            |    2 +-
 drivers/mfd/syscon.c                               |   95 +
 drivers/mfd/twl4030.c                              |    2 +-
 drivers/mfd/twl6030.c                              |    2 +-
 drivers/mtd/core.c                                 |    6 +-
 drivers/mtd/devices/m25p80.c                       |    7 +-
 drivers/mtd/devices/mtd_dataflash.c                |    8 +-
 drivers/mtd/mtdraw.c                               |    8 +-
 drivers/mtd/nand/Kconfig                           |   14 +
 drivers/mtd/nand/Makefile                          |    1 +
 drivers/mtd/nand/atmel_nand.c                      |    4 +-
 drivers/mtd/nand/nand_base.c                       |   50 +
 drivers/mtd/nand/nand_bbt.c                        |    4 +-
 drivers/mtd/nand/nand_imx.c                        |   30 +-
 drivers/mtd/nand/nand_imx_bbm.c                    |  220 ++
 drivers/mtd/nand/nand_mxs.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |    9 +-
 drivers/mtd/nand/nand_write.c                      |    5 +-
 drivers/mtd/nand/nomadik_nand.c                    |    2 +-
 drivers/net/at91_ether.c                           |    2 +-
 drivers/net/fec_imx.c                              |   97 +-
 drivers/net/fec_imx.h                              |    1 -
 drivers/net/fec_mpc5200.c                          |   73 +-
 drivers/net/fec_mpc5200.h                          |    1 -
 drivers/net/ksz8864rmn.c                           |    8 +-
 drivers/net/macb.c                                 |    5 +-
 drivers/net/macb.h                                 |    2 +
 drivers/net/phy/phy.c                              |    2 +-
 drivers/net/xgmac.c                                |    8 +-
 drivers/of/Kconfig                                 |   14 +-
 drivers/of/Makefile                                |    3 +-
 drivers/of/base.c                                  |  372 +--
 drivers/of/fdt.c                                   |  498 ++++
 drivers/of/gpio.c                                  |    1 -
 drivers/of/of_net.c                                |   93 +
 drivers/serial/Kconfig                             |    5 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/arm_dcc.c                           |    6 +-
 drivers/serial/atmel.c                             |    9 +-
 drivers/serial/linux_console.c                     |    9 +-
 drivers/serial/serial_altera.c                     |    9 +-
 drivers/serial/serial_altera_jtag.c                |    8 +-
 drivers/serial/serial_auart.c                      |    9 +-
 drivers/serial/serial_blackfin.c                   |   10 +-
 drivers/serial/serial_cadence.c                    |  307 +++
 drivers/serial/serial_clps711x.c                   |   38 +-
 drivers/serial/serial_imx.c                        |    9 +-
 drivers/serial/serial_mpc5xxx.c                    |    9 +-
 drivers/serial/serial_netx.c                       |   10 +-
 drivers/serial/serial_ns16550.c                    |   13 +-
 drivers/serial/serial_omap4_usbboot.c              |    7 +-
 drivers/serial/serial_pl010.c                      |   10 +-
 drivers/serial/serial_pxa.c                        |    8 +-
 drivers/serial/serial_s3c.c                        |    9 +-
 drivers/serial/stm-serial.c                        |    9 +-
 drivers/spi/mxs_spi.c                              |    8 +-
 drivers/usb/gadget/Kconfig                         |    8 +-
 fs/ext4/ext4_common.c                              |   12 +-
 fs/fs.c                                            |   11 +-
 include/asm-generic/barebox.lds.h                  |   15 +-
 include/ata_drive.h                                |    3 +
 include/boot.h                                     |    1 +
 include/bootsource.h                               |   27 +
 include/driver.h                                   |   17 +-
 include/fdt.h                                      |   13 +
 include/fec.h                                      |   13 +-
 include/filetype.h                                 |    1 +
 include/gpio.h                                     |    1 +
 include/i2c/i2c.h                                  |    2 +-
 include/libfdt_env.h                               |   22 -
 include/linux/basic_mmio_gpio.h                    |   69 +
 include/linux/clk.h                                |    4 +-
 include/linux/clkdev.h                             |    2 -
 include/linux/ioport.h                             |   15 +
 include/linux/micrel_phy.h                         |    9 +-
 include/linux/mtd/bbm.h                            |   92 +
 include/linux/mtd/mtd.h                            |    3 +
 include/linux/mtd/nand.h                           |   86 +-
 include/mfd/syscon.h                               |   26 +
 include/of.h                                       |  110 +-
 include/of_net.h                                   |   14 +
 include/platform_data/macb.h                       |   30 +
 include/spi/spi.h                                  |    5 +-
 include/twl6030_pwrbtn.h                           |    9 +
 lib/Kconfig                                        |    7 -
 lib/Makefile                                       |    1 -
 lib/fdt/Makefile                                   |    2 -
 lib/fdt/TODO                                       |    3 -
 net/netconsole.c                                   |    6 +-
 pbl/Kconfig                                        |   10 +
 scripts/.gitignore                                 |    1 +
 scripts/Makefile                                   |    3 +
 scripts/Makefile.lib                               |   41 +
 scripts/dtc/.gitignore                             |    4 +
 scripts/dtc/Makefile                               |   31 +
 scripts/dtc/Makefile.dtc                           |   18 +
 scripts/dtc/checks.c                               |  759 +++++++
 scripts/dtc/data.c                                 |  269 +++
 scripts/dtc/dtc-lexer.l                            |  250 ++
 scripts/dtc/dtc-lexer.lex.c_shipped                | 2195 ++++++++++++++++=
++
 scripts/dtc/dtc-parser.tab.c_shipped               | 2398 ++++++++++++++++=
++++
 scripts/dtc/dtc-parser.tab.h_shipped               |  107 +
 scripts/dtc/dtc-parser.y                           |  532 +++++
 scripts/dtc/dtc.c                                  |  260 +++
 scripts/dtc/dtc.h                                  |  270 +++
 scripts/dtc/fdtdump.c                              |  162 ++
 scripts/dtc/fdtget.c                               |  366 +++
 scripts/dtc/fdtput.c                               |  362 +++
 scripts/dtc/flattree.c                             |  933 ++++++++
 scripts/dtc/fstree.c                               |   91 +
 scripts/dtc/libfdt/Makefile.libfdt                 |   10 +
 {lib/fdt =3D> scripts/dtc/libfdt}/fdt.c              |    0
 scripts/dtc/libfdt/fdt.h                           |   60 +
 scripts/dtc/libfdt/fdt_empty_tree.c                |   84 +
 {lib/fdt =3D> scripts/dtc/libfdt}/fdt_ro.c           |    0
 {lib/fdt =3D> scripts/dtc/libfdt}/fdt_rw.c           |   27 +
 {lib/fdt =3D> scripts/dtc/libfdt}/fdt_strerror.c     |    0
 {lib/fdt =3D> scripts/dtc/libfdt}/fdt_sw.c           |    0
 {lib/fdt =3D> scripts/dtc/libfdt}/fdt_wip.c          |    0
 {include =3D> scripts/dtc/libfdt}/libfdt.h           |  275 ++-
 scripts/dtc/libfdt/libfdt_env.h                    |   29 +
 {lib/fdt =3D> scripts/dtc/libfdt}/libfdt_internal.h  |    0
 scripts/dtc/livetree.c                             |  709 ++++++
 scripts/dtc/srcpos.c                               |  336 +++
 scripts/dtc/srcpos.h                               |  118 +
 scripts/dtc/treesource.c                           |  284 +++
 scripts/dtc/util.c                                 |  331 +++
 scripts/dtc/util.h                                 |  153 ++
 scripts/dtc/version_gen.h                          |    1 +
 scripts/setlocalversion                            |  192 +-
 scripts/zynq_mkimage.c                             |   86 +
 423 files changed, 20175 insertions(+), 2646 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-android
 create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-linux
 create mode 100644 arch/arm/boards/archosg9/env/boot/usb-android
 create mode 100644 arch/arm/boards/archosg9/env/boot/usb-linux
 delete mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/env/init/automount
 create mode 100644 arch/arm/boards/archosg9/env/init/bootsource
 delete mode 100644 arch/arm/boards/archosg9/env/init/usbboot
 create mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu
 create mode 100644 arch/arm/boards/avnet-zedboard/Makefile
 create mode 100644 arch/arm/boards/avnet-zedboard/board.c
 create mode 100644 arch/arm/boards/avnet-zedboard/config.h
 create mode 100644 arch/arm/boards/avnet-zedboard/env/init/config-board
 create mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
 create mode 100644 arch/arm/boards/avnet-zedboard/lowlevel.c
 create mode 100644 arch/arm/boards/ccxmx51/env/boot/nand
 delete mode 100644 arch/arm/boards/ccxmx51/env/config
 create mode 100644 arch/arm/boards/ccxmx51/env/config-board
 create mode 100644 arch/arm/boards/ccxmx51/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/clep7212/env/config
 create mode 100644 arch/arm/boards/clep7212/env/config-board
 create mode 100644 arch/arm/boards/delphi-poc20/env/boot/mmc
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/Makefile
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/board.c
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/config.h
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/boot/mmc
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/config-board
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/env/init/automount
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/flash_header.c
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/lowlevel.c
 create mode 100644 arch/arm/boards/pcm051/mux.c
 create mode 100644 arch/arm/boards/pcm051/mux.h
 create mode 100644 arch/arm/configs/dmo-realq7_defconfig
 create mode 100644 arch/arm/configs/zedboard_defconfig
 create mode 100644 arch/arm/cpu/common.c
 rename arch/{mips/lib/memory.c =3D> arm/cpu/dtb.c} (50%)
 create mode 100644 arch/arm/dts/.gitignore
 create mode 100644 arch/arm/dts/Makefile
 create mode 100644 arch/arm/dts/skeleton.dtsi
 delete mode 100644 arch/arm/include/asm/clkdev.h
 delete mode 100644 arch/arm/mach-at91/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-clps711x/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-clps711x/include/mach/gpio.h
 create mode 100644 arch/arm/mach-imx/imx-bbu-external-nand.c
 create mode 100644 arch/arm/mach-imx/imx6-mmdc.c
 delete mode 100644 arch/arm/mach-imx/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-mmdc.h
 create mode 100644 arch/arm/mach-mxs/include/mach/revision.h
 delete mode 100644 arch/arm/mach-nomadik/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-omap/include/mach/xload.h
 create mode 100644 arch/arm/mach-omap/omap_generic.c
 delete mode 100644 arch/arm/mach-versatile/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-vexpress/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-zynq/Kconfig
 create mode 100644 arch/arm/mach-zynq/Makefile
 create mode 100644 arch/arm/mach-zynq/clk-zynq7000.c
 create mode 100644 arch/arm/mach-zynq/devices.c
 create mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
 rename arch/arm/{mach-highbank =3D> mach-zynq}/include/mach/clkdev.h (99%)
 create mode 100644 arch/arm/mach-zynq/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-zynq/include/mach/devices.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq-flash-header.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-regs.h
 create mode 100644 arch/arm/mach-zynq/zynq.c
 create mode 100644 common/bootsource.c
 create mode 100644 defaultenv-2/menu/menu/settings
 create mode 100644 drivers/clocksource/clps711x.c
 create mode 100644 drivers/gpio/gpio-clps711x.c
 create mode 100644 drivers/gpio/gpio-generic.c
 create mode 100644 drivers/input/twl6030_pwrbtn.c
 create mode 100644 drivers/mfd/syscon.c
 create mode 100644 drivers/mtd/nand/nand_imx_bbm.c
 create mode 100644 drivers/of/fdt.c
 create mode 100644 drivers/of/of_net.c
 create mode 100644 drivers/serial/serial_cadence.c
 create mode 100644 include/bootsource.h
 delete mode 100644 include/libfdt_env.h
 create mode 100644 include/linux/basic_mmio_gpio.h
 create mode 100644 include/linux/mtd/bbm.h
 create mode 100644 include/mfd/syscon.h
 create mode 100644 include/of_net.h
 create mode 100644 include/platform_data/macb.h
 create mode 100644 include/twl6030_pwrbtn.h
 delete mode 100644 lib/fdt/Makefile
 delete mode 100644 lib/fdt/TODO
 create mode 100644 scripts/dtc/.gitignore
 create mode 100644 scripts/dtc/Makefile
 create mode 100644 scripts/dtc/Makefile.dtc
 create mode 100644 scripts/dtc/checks.c
 create mode 100644 scripts/dtc/data.c
 create mode 100644 scripts/dtc/dtc-lexer.l
 create mode 100644 scripts/dtc/dtc-lexer.lex.c_shipped
 create mode 100644 scripts/dtc/dtc-parser.tab.c_shipped
 create mode 100644 scripts/dtc/dtc-parser.tab.h_shipped
 create mode 100644 scripts/dtc/dtc-parser.y
 create mode 100644 scripts/dtc/dtc.c
 create mode 100644 scripts/dtc/dtc.h
 create mode 100644 scripts/dtc/fdtdump.c
 create mode 100644 scripts/dtc/fdtget.c
 create mode 100644 scripts/dtc/fdtput.c
 create mode 100644 scripts/dtc/flattree.c
 create mode 100644 scripts/dtc/fstree.c
 create mode 100644 scripts/dtc/libfdt/Makefile.libfdt
 rename {lib/fdt =3D> scripts/dtc/libfdt}/fdt.c (100%)
 create mode 100644 scripts/dtc/libfdt/fdt.h
 create mode 100644 scripts/dtc/libfdt/fdt_empty_tree.c
 rename {lib/fdt =3D> scripts/dtc/libfdt}/fdt_ro.c (100%)
 rename {lib/fdt =3D> scripts/dtc/libfdt}/fdt_rw.c (95%)
 rename {lib/fdt =3D> scripts/dtc/libfdt}/fdt_strerror.c (100%)
 rename {lib/fdt =3D> scripts/dtc/libfdt}/fdt_sw.c (100%)
 rename {lib/fdt =3D> scripts/dtc/libfdt}/fdt_wip.c (100%)
 rename {include =3D> scripts/dtc/libfdt}/libfdt.h (83%)
 create mode 100644 scripts/dtc/libfdt/libfdt_env.h
 rename {lib/fdt =3D> scripts/dtc/libfdt}/libfdt_internal.h (100%)
 create mode 100644 scripts/dtc/livetree.c
 create mode 100644 scripts/dtc/srcpos.c
 create mode 100644 scripts/dtc/srcpos.h
 create mode 100644 scripts/dtc/treesource.c
 create mode 100644 scripts/dtc/util.c
 create mode 100644 scripts/dtc/util.h
 create mode 100644 scripts/dtc/version_gen.h
 create mode 100644 scripts/zynq_mkimage.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
