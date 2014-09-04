Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPXNm-0007K9-4w
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 13:47:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XPXNP-0000Zu-MH
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 15:47:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XPXNO-0003BT-RV
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 15:47:02 +0200
Date: Thu, 4 Sep 2014 15:47:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140904134702.GU5352@pengutronix.de>
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
Subject: v2014.09.0
To: barebox@lists.infradead.org

Hi All,

After a long long holiday we have a September release.

ome highlights for this release are:

- barebox now has RTC support
- Marvell MVEBU support has gained i2c and PCIe support
- Canon PowerShot A1100 IS support
- Freescale P1010 SoC support
- barebox now runs as EFI payload on X86-64 systems
- USB Host and device support has improved: Correct device hierarchy,
  detect USB devices multiple times, Android Fastboot support

Here comes the detailed list of patches that went into this release.

Sascha

----------------------------------------------------------------
Andreas Pretzsch (1):
      scripts: gitignore: update based on Makefile

Andrey Panov (1):
      ARM: i.MX6Q: Add support for Embedsky E9 board.

Antony Pavlov (40):
      i2c: import SMBus stuff from linux
      gpio: add driver for PCA95[357]x, PCA9698, TCA64xx, and MAX7310 SMBus=
 I/O expanders
      Documentation: add virt2real barebox mini-howto
      commands: usb: add tree view capability
      usb: ehci: use linux-way ehci_readl and ehci_writel
      treewide: drop Doxygen stuff
      Makefile: clean barebox.zynq
      led: try to get LED's label from the 'label' property
      ARM: add ARM946E-S CPU type
      ARM: add very initial support for Canon DIGIC chips
      clocksource: add driver for Canon DIGIC timer
      serial: add driver for Canon DIGIC UART
      gpio: add driver for Canon DIGIC
      ARM: DIGIC: add Canon PowerShot A1100 IS support
      lib: import 'bcd' from linux-3.15
      Add a simple rtc framework
      i2c: add Marvell 64xxx driver
      i2c: busses/Makefile: fix indentation
      MIPS: dts: rzx50.dts: add LCD backlight
      MIPS: ritmix-rzx50_defconfig: enable LED-related stuff
      led: triggers: fix crash on disabling "default-on" trigger
      commands: trigger: check trigger disable return code too
      led: triggers: fix "no previous prototype for 'trigger_init'" warning
      watchdog: add minimal jz4740 driver
      watchdog: i.MX: check requested mem region in imx_wd_probe()
      ARM: add Canon A1100 ROM image generation
      ARM: DIGIC: add canon-a1100_defconfig
      Documentation: add QEMU Canon A1100 barebox mini-howto
      rtc: import ds1307 driver from linux-3.15
      commands: add hwclock
      ARM: versatilepb_defconfig: enable RTC support
      rtc-lib: import rtc_time_to_tm() from linux-3.15
      rtc: add jz4740 driver
      MIPS: dts: jz4755.dtsi: add jz4740-rtc
      MIPS: ritmix-rzx50_defconfig: enable RTC support
      MIPS: add support for metadata in barebox images
      MIPS: qemu-malta_defconfig: enable metadata in barebox image (IMD)
      openrisc: add barebox.lds to .gitignore
      scripts: add bareboximd{,-target} to .gitignore
      Documentation: .gitignore: ignore 'commands/' generated directory

Beniamino Galvani (2):
      mfd: syscon: add device tree support
      pinctrl: rockchip: add support for new DT bindings

Bo Shen (1):
      mci: core: the sd1.0 card can work in 4 bits mode

Ezequiel Garcia (5):
      net: phy: Add fallbacks for the obsoletes phy DT properties
      net: phy: mdio-mvebu: Make the clock property required
      net: phy: Add minimal support for QSGMII PHY
      trivial: Correct word spelling, s/miscelleanous/miscellaneous
      bus: mvebu: fix ranges fixup

Herve Codina (1):
      hush: Fix error code returned value

Holger Schurig (7):
      Documentation: remove "all all" in help's help text.
      Documentation: lowercase help short texts
      Documentation: only write changed *.rst files
      Documentation: change generated help lines
      Documentation: revamp dfu's help text
      sandbox: disable bareboxcrc32 in sandbox mode
      sandbox: allow "make ARCH=3Dsandbox allyesconfig"

Jan Luebbe (1):
      Documentation: use command groups

Jean-Christophe PLAGNIOL-VILLARD (1):
      EFI: introduce efi_strguid to convert GUID to human readable names

Juergen Borleis (4):
      saveenv: make clear how to use the command's parameters
      envfs: provide an intentional way to ignore an existing external envi=
ronment
      envfs: change API to be able to forward special flags into the envfs =
superblock
      saveenv: provide a zeroed/empty/ignore environment

Lucas Stach (4):
      Makefile.lib: imxcfg: fix include path
      scripts: imx-image: add input validation to mw
      arm: mach-imx: add MMDC and CCM register defines for use in DCD
      arm: nitrogen6x: new memory setup from BD u-boot

Markus Pargmann (2):
      mfd: mc34704: Add DT support
      include/bbu: Add missing include errno.h

Matteo Fortini (3):
      sama5d3x: fix HSMC MODE register offset and add TIMINGS register
      sama5d3x: HSMC NAND initialize TIMINGS and import values from U-Boot
      ARM: atmel: sama5d3_xplained: import smc timing from U-Boot

Michael Olbrich (2):
      EFI: fix error handling in efi_get_boot()
      EFI: add missing include

Philipp Zabel (1):
      Fix barebox metadata

Raphael Poggi (5):
      i2c: omap: fix typo in dt_ids
      mtd: atmel_nand: add SOFT_BCH support
      mtd: atmel_nand: increase chip_delay
      mtd: atmel_nand: fix bit error correction
      mtd: atmel_nand: enable PMECC for 8k page nand

Rapha=EBl Poggi (2):
      i2c: add Atmel AT91 driver
      of_mtd: add soft_bch and hw_oob_first ecc modes

Renaud Barbier (6):
      gianfar: descriptors access with I/O accessors
      ppc: 85xx: CCSRBAR mapping moved to start-up code.
      ppc: Freescale P1010 headers
      ppc: Freescale P1010 SoC support
      ppc: minimal Freescale P1010RDB board support
      ppc: DA923RC: 16-bit Product Data EEPROM read access

Sascha Hauer (130):
      dts: update to v3.16-rc3
      dts: update to v3.16-rc4
      dlmalloc: remove unused functions
      malloc.h: fix codingstyle
      Make IPaddr_t a 32bit type
      oftree command: Use size_t for size
      fat: Use correct format specifier
      readkey: keys are unsigned char
      of: platform: Use PRINTF_CONVERSION_RESOURCE for printing resources
      console: Add puts callback to console devices
      Add hex_byte_pack and hex_byte_pack_upper from kernel
      vsprintf: Support pU for printing UUIDs
      console: Allow persistent device names
      serial: imx: Determine device name from device tree
      netconsole: rename console to "netconsole"
      usb: usbserial gadget: Add persistent device name
      Add beginning wchar support
      block: Add flush callback
      Move efi.h to include/
      serial: ns16550: Add mmiobase to private data
      serial: ns16550: Add register read/write function pointers to private=
 data
      filetype: Add DOS EXE file detection support
      efi: Add more error codes
      Documentation: Add EFI documentation
      Add initial EFI architecture support
      net: Add EFI Simple Network Protocol Driver
      serial: Add EFI stdio driver
      fs: implement EFI filesystem driver
      fs: implement EFI variable filesystem driver
      introduce verbose debug
      X86: Move BITS_PER_LONG definition to types.h
      consistently use the same bitops.h file
      ppc: Use generic find_*_bit functions
      include: Add DECLARE_BITMAP from kernel
      include: Add round_up/round_down macros from kernel
      include: Add foreign endianess adding functions from kernel
      dts: update to v3.16-rc5
      include: update bitop functions from kernel
      lib: Add bitmap functions from kernel
      USB: Kconfig: introduce USB_HOST symbol
      USB: introduce usb_interface/usb_configuration structs
      USB: Use descriptors from ch9.h
      USB: Remove conflicting USB_SPEED_* definitions
      USB: i.MX chipidea: Implement OTG support for the poor
      USB: host: simplify usb_new_device
      USB: host: hub: Turn into a driver
      USB: host: fixup USB device hierarchy
      USB: host: hub: Use dev_dbg
      USB: host: hub: Use usb_hub_power_on from U-Boot
      USB: host: factor out port configuration to separate function
      USB: host: hub: only configure hub once
      USB: host: implement usb_remove_device
      USB: host: detect port change only once in usb_hub_configure_port
      USB: host: drop force rescan
      env: Remove bogus USB vendor/product ids
      ARM: Increase automatic malloc area space
      ARM: Android image boot: automatically assign space for kernel
      Merge branch 'for-next/usb' into for-next/usb-gadget
      Merge branch 'for-next/misc' into for-next/usb-gadget
      Merge branch 'for-next/console' into for-next/usb-gadget
      USB: gadget: Update to 3.15
      USB: gadget: dequeue descriptor before freeing it
      USB: gadget: composite: Break out of potential endless loop
      USB: gadget: fsl_udc: Warn about freeing queued descriptors
      USB: gadget: usbserial: Always enable console
      param: Add dev_add_param_string
      USB: gadget: specify vendor/product id with device parameters
      USB: gadget: DFU: remove unused code
      USB: gadget: DFU: Use usb_assign_descriptors/usb_free_all_descriptors
      USB: gadget: DFU: Move locally used defines/structs to dfu driver
      Add function to parse a string in dfu format
      USB: gadget: DFU: Move stuff to dfu_bind
      USB: gadget: DFU: use usb_gstrings_attach
      USB: gadget: DFU: free resources when usb_gadget_poll fails
      USB: gadget: DFU: return -EINTR when interrupted
      USB: gadget: DFU: register as USB function
      USB: gadget: DFU: drop app idle state
      Add release string
      clk: clk-divider: divider calculation in clk_set_rate needs DIV_ROUND=
_UP
      USB: gadget: Add Android fastboot support
      USB: gadget: Add a multi function gadget
      USB: gadget: fsl_udc: Be more tolerant in fsl_ep_dequeue
      Documentation: Add documentation for USB serial console
      Documentation: Add documentation for Fastboot and Composite Multifunc=
tion Gadget
      ARM: i.MX5: internal NAND update: Use variable for pre_image_size
      ARM: i.MX5: internal NAND update: Fix firmware start page for interna=
l nand boot
      ARM: i.MX5: internal NAND update: Use variables for some constants
      ARM: i.MX5: internal NAND update: simplify code
      readline: reimplement history functions
      dts: update to v3.16-rc6
      commands: saveenv: Fix comment about directories in help text
      ARM: AM33xx: Add SDRAM size detection
      ARM: phyCORE-am335x: read back SDRAM controller settings
      ARM: phyCORE-am335x: Add support for more SDRAM configurations
      mtd: omap gpmc: fix ecc bytes/size
      mtd: omap gpmc: reserve 14 byte/subpage for ECC in BCH8 romcode
      mtd: omap gpmc: fix bch8 nand-ecc-opt property
      ARM: AM3355x: Update defconfig
      Merge branch 'for-next/i2c' into HEAD
      Revert "common: resource: print conflicts as warning"
      dts: update to v3.16
      move file helper functions to separate file
      read_file: introduce read_file_2
      make: build device trees with obj-dtb-y and pbl-dtb-y
      dtc: compile fdtget
      make: Use shell script to generate .dtb.S files
      Add support for metadata in barebox images
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/canon'
      Merge branch 'for-next/console'
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/env'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/led'
      Merge branch 'for-next/marvell'
      Merge branch 'for-next/metadata'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/rtc'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/usb-gadget'
      Merge branch 'for-next/usb-host'
      readline: Fix history prev when history is empty
      ARM: i.MX: tqma53: remove cpu_to_be32( from imx script
      Release v2014.09.0

Sebastian Hesselbarth (32):
      pinctrl: mvebu: add pinctrl driver for Armada 370
      pinctrl: mvebu: add pinctrl driver for Armada XP
      USB: import ch11.h from Linux
      USB: reduce USB_MAXCHILDREN on imported ch11.h
      USB: fixup usb_hub_descriptor length name
      USB: fix PowerPowerCtrlMask assignment
      USB: Move FooRequest defines and add class requests
      USB: EHCI: reuse ch9.h config and interface descriptors
      USB: EHCI: make use of defines for descriptors
      USB: EHCI: use descriptor length fields
      USB: Use descriptors from ch11.h
      USB: remove redundant defines from usb_defs.h
      ARM: execute OF fixups early
      ARM: mvebu: allow to fixup mbus ranges
      ARM: mvebu: add register remap for mbus ids
      ARM: dts: mvebu: remove mbus ranges overwrite
      ARM: mvebu: add fixup for directly attached memory
      USB: Fix stale usb devices in usb_device_list
      USB: Count detected USB devices independent of dev_index
      USB: improve error paths and tear-down
      USB: EHCI: use min3 from Linux
      include: import {lower,upper}_32_bits helpers
      USB: host: add xHCI HCD, Hub, and platform driver
      USB: host: add xHCI PCI driver
      bus: mvebu: fix resource size handling
      ARM: mvebu: armada-370-xp: disable MBUS error propagation
      pci: pci_scan_bus: respect 64b BARs
      pci: register device after BAR setup
      pci: ensure device does ignore BAR mangling
      pci: set auto-incremented bus number
      of: pci: import of_pci_get_devfn()
      pci: mvebu: Add PCIe driver

Silvio Fricke (3):
      commands: i2c: verbose option doesn't need argument
      commands: i2c: simplify i2c wide access logic
      commands: i2c: add message if write is not successful

Steffen Trumtrar (1):
      regulator: fixed: add always-on property

Teresa G=E1mez (1):
      ARM: am335x Phytec phyCORE: Enable ethernet

 .gitignore                                         |    6 +-
 Documentation/.gitignore                           |    1 +
 Documentation/boards/davinci.rst                   |   51 +
 Documentation/boards/digic.rst                     |   16 +
 Documentation/boards/efi.rst                       |  298 ++++
 Documentation/commands.rst                         |   86 +-
 Documentation/devicetree/bindings/leds/common.rst  |    2 +
 Documentation/gen_commands.py                      |   29 +-
 Documentation/glossary.rst                         |    3 +
 Documentation/user/imd.rst                         |   54 +
 Documentation/user/updating.rst                    |    3 +
 Documentation/user/usb.rst                         |   55 +
 Documentation/user/user-manual.rst                 |    1 +
 Makefile                                           |   11 +-
 README                                             |    2 +-
 arch/arm/Kconfig                                   |   13 +
 arch/arm/Makefile                                  |   11 +
 arch/arm/boards/Makefile                           |    2 +
 arch/arm/boards/at91sam9260ek/env/bin/init_board   |    5 +-
 arch/arm/boards/at91sam9261ek/env/bin/init_board   |    5 +-
 arch/arm/boards/at91sam9263ek/env/bin/init_board   |    5 +-
 arch/arm/boards/at91sam9m10ihd/hw_version.c        |    1 +
 arch/arm/boards/at91sam9n12ek/env/bin/init_board   |    5 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c          |    1 +
 .../1066mhz_4x128mx16.imxcfg                       |   37 +
 .../arm/boards/boundarydevices-nitrogen6x/Makefile |    3 +-
 .../boundarydevices-nitrogen6x/clocks.imxcfg       |    7 +
 .../flash-header-nitrogen6dl-1g.imxcfg             |   11 +
 .../flash-header-nitrogen6q-1g.imxcfg              |   11 +
 .../flash-header-nitrogen6x-1g.imxcfg              |  101 --
 .../boundarydevices-nitrogen6x/ram-base.imxcfg     |   67 +
 arch/arm/boards/canon-a1100/Makefile               |    1 +
 arch/arm/boards/canon-a1100/lowlevel.c             |   23 +
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |    1 +
 arch/arm/boards/embedsky-e9/Makefile               |    4 +
 arch/arm/boards/embedsky-e9/board.c                |   87 ++
 .../arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1 |    6 +
 .../arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 |    6 +
 .../boards/embedsky-e9/defaultenv-e9/config-board  |    7 +
 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg |   87 ++
 arch/arm/boards/embedsky-e9/lowlevel.c             |   18 +
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c      |    1 +
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c   |  113 +-
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |   16 +
 arch/arm/boards/qil-a926x/env/bin/init_board       |    5 +-
 arch/arm/boards/sama5d3_xplained/init.c            |   29 +-
 arch/arm/boards/sama5d3xek/hw_version.c            |    1 +
 arch/arm/boards/sama5d3xek/init.c                  |   29 +-
 arch/arm/boards/telit-evk-pro3/env/init/usb        |    5 +-
 arch/arm/boards/tqma53/flash-header.imxcfg         |  108 +-
 arch/arm/boards/tqma53/lowlevel.c                  |    9 +
 arch/arm/boards/usb-a926x/env/bin/init_board       |    5 +-
 arch/arm/configs/am335x_defconfig                  |   85 +-
 arch/arm/configs/animeo_ip_defconfig               |    2 +-
 arch/arm/configs/archosg9_defconfig                |    2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig          |    2 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |    2 +-
 arch/arm/configs/canon-a1100_defconfig             |   56 +
 arch/arm/configs/ccmx51_defconfig                  |    2 +-
 arch/arm/configs/chumbyone_defconfig               |    2 +-
 arch/arm/configs/dss11_defconfig                   |    2 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/freescale-mx25-3ds_defconfig      |    2 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |    2 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig    |    2 +-
 arch/arm/configs/imx233-olinuxino_defconfig        |    2 +-
 arch/arm/configs/imx_defconfig                     |    2 +-
 arch/arm/configs/imx_v7_defconfig                  |    3 +-
 arch/arm/configs/module-mb7707_defconfig           |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    2 +-
 arch/arm/configs/panda_defconfig                   |    2 +-
 arch/arm/configs/phytec-phycore-imx31_defconfig    |    2 +-
 arch/arm/configs/phytec-phycore-omap4460_defconfig |    2 +-
 arch/arm/configs/pm9g45_defconfig                  |    2 +-
 arch/arm/configs/solidrun_cubox_defconfig          |    2 +-
 arch/arm/configs/versatilepb_defconfig             |    2 +
 arch/arm/cpu/Kconfig                               |   13 +
 arch/arm/cpu/dtb.c                                 |    1 +
 arch/arm/cpu/start.c                               |    6 +-
 arch/arm/dts/Makefile                              |  130 +-
 arch/arm/dts/am335x-phytec-phycore.dts             |    7 +-
 arch/arm/dts/armada-370-mirabox-bb.dts             |    3 -
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts     |    4 -
 arch/arm/dts/canon-a1100.dts                       |   35 +
 arch/arm/dts/digic4.dtsi                           |   42 +
 arch/arm/dts/empty.c                               |    3 +
 arch/arm/dts/imx6q-embedsky-e9.dts                 |   42 +
 arch/arm/lib/barebox.lds.S                         |    2 +
 arch/arm/lib/bootm.c                               |   19 +-
 arch/arm/lib/pbl.lds.S                             |    2 +
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |    2 +-
 arch/arm/mach-at91/boot_test_cmd.c                 |    1 +
 arch/arm/mach-at91/include/mach/at91sam9_smc.h     |   33 +-
 arch/arm/mach-at91/sam9_smc.c                      |   38 +-
 arch/arm/mach-digic/Kconfig                        |   15 +
 arch/arm/mach-digic/Makefile                       |    1 +
 arch/arm/mach-digic/core.c                         |   25 +
 arch/arm/mach-digic/include/mach/debug_ll.h        |   40 +
 arch/arm/mach-digic/include/mach/digic4.h          |   23 +
 arch/arm/mach-digic/include/mach/uart.h            |   28 +
 arch/arm/mach-imx/Kconfig                          |    6 +
 arch/arm/mach-imx/imx-bbu-internal.c               |   63 +-
 arch/arm/mach-imx/include/mach/imx6-ccm-regs.h     |   24 +
 arch/arm/mach-imx/include/mach/imx6-ddr-regs.h     |   67 +
 arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h   |   57 +
 arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h    |   57 +
 arch/arm/mach-mvebu/Kconfig                        |    2 +
 arch/arm/mach-mvebu/armada-370-xp.c                |   11 +-
 arch/arm/mach-mvebu/common.c                       |   59 +
 arch/arm/mach-mvebu/dove.c                         |    6 +-
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |    2 +
 arch/arm/mach-mvebu/include/mach/common.h          |    2 +
 arch/arm/mach-mvebu/kirkwood.c                     |    5 +-
 arch/arm/mach-omap/Makefile                        |    1 +
 arch/arm/mach-omap/am33xx_generic.c                |   56 +
 arch/arm/mach-omap/am33xx_scrm.c                   |   51 +
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |    2 +
 arch/arm/mach-omap/omap_generic.c                  |    1 +
 arch/arm/mach-omap/xload.c                         |    1 +
 arch/blackfin/Kconfig                              |    1 +
 arch/blackfin/boards/ipe337/cmd_alternate.c        |    1 +
 arch/blackfin/include/asm/bitops.h                 |  361 +----
 arch/efi/Kconfig                                   |   52 +
 arch/efi/Makefile                                  |   41 +
 arch/efi/configs/efi_defconfig                     |   78 +
 arch/efi/efi/Makefile                              |    2 +
 arch/efi/efi/clocksource.c                         |   60 +
 arch/efi/efi/efi-block-io.c                        |  174 +++
 arch/efi/efi/efi-device.c                          |  349 +++++
 arch/efi/efi/efi-image.c                           |  106 ++
 arch/efi/efi/efi.c                                 |  343 +++++
 arch/efi/efi/env-efi/network/eth0-discover         |    5 +
 arch/efi/include/asm/barebox.h                     |    1 +
 arch/efi/include/asm/bitops.h                      |   22 +
 arch/efi/include/asm/byteorder.h                   |    8 +
 arch/efi/include/asm/common.h                      |    4 +
 arch/efi/include/asm/dma.h                         |   13 +
 arch/efi/include/asm/elf.h                         |   60 +
 arch/efi/include/asm/io.h                          |   55 +
 arch/efi/include/asm/posix_types.h                 |   93 ++
 arch/efi/include/asm/sections.h                    |    1 +
 arch/efi/include/asm/string.h                      |    1 +
 arch/efi/include/asm/swab.h                        |    6 +
 arch/efi/include/asm/types.h                       |   73 +
 arch/efi/include/asm/unaligned.h                   |   19 +
 arch/efi/include/mach/debug_ll.h                   |   20 +
 arch/efi/include/mach/efi-device.h                 |   45 +
 arch/efi/include/mach/efi.h                        |   24 +
 arch/efi/lib/.gitignore                            |    2 +
 arch/efi/lib/Makefile                              |    4 +
 arch/efi/lib/crt0-efi-ia32.S                       |   76 +
 arch/efi/lib/crt0-efi-x86_64.S                     |   75 +
 arch/efi/lib/elf_ia32_efi.lds.S                    |  102 ++
 arch/efi/lib/elf_x86_64_efi.lds.S                  |   93 ++
 arch/efi/lib/reloc_ia32.c                          |   97 ++
 arch/efi/lib/reloc_x86_64.c                        |   96 ++
 arch/mips/configs/qemu-malta_defconfig             |    1 +
 arch/mips/configs/ritmix-rzx50_defconfig           |    9 +
 arch/mips/dts/Makefile                             |   10 -
 arch/mips/dts/jz4755.dtsi                          |   10 +
 arch/mips/dts/rzx50.dts                            |   10 +
 arch/mips/include/asm/bitops.h                     |   26 +-
 arch/mips/lib/barebox.lds.S                        |    2 +
 arch/mips/lib/bootm.c                              |    1 +
 arch/mips/mach-xburst/Kconfig                      |    2 +
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h  |   22 -
 arch/mips/mach-xburst/reset-jz4750.c               |   18 -
 arch/mips/pbl/zbarebox.lds.S                       |    2 +
 arch/nios2/Kconfig                                 |    2 +
 arch/nios2/include/asm/bitops.h                    |   32 +-
 arch/openrisc/Kconfig                              |    2 +
 arch/openrisc/cpu/.gitignore                       |    1 +
 arch/openrisc/include/asm/bitops.h                 |   29 +-
 arch/ppc/Kconfig                                   |    2 +
 arch/ppc/Makefile                                  |    1 +
 arch/ppc/boards/freescale-p1010rdb/Makefile        |    4 +
 arch/ppc/boards/freescale-p1010rdb/config.h        |   58 +
 arch/ppc/boards/freescale-p1010rdb/ddr.c           |   60 +
 arch/ppc/boards/freescale-p1010rdb/env/bin/init    |    2 +
 arch/ppc/boards/freescale-p1010rdb/env/config      |    2 +
 arch/ppc/boards/freescale-p1010rdb/law.c           |   24 +
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c      |  209 +++
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h      |   14 +
 arch/ppc/boards/freescale-p1010rdb/tlb.c           |   59 +
 arch/ppc/boards/geip-da923rc/product_data.c        |   18 +-
 arch/ppc/configs/p1010rdb_defconfig                |   55 +
 arch/ppc/cpu-85xx/start.S                          |  106 ++
 arch/ppc/include/asm/bitops.h                      |   49 +-
 arch/ppc/include/asm/fsl_ifc.h                     |  267 ++++
 arch/ppc/include/asm/fsl_law.h                     |    1 +
 arch/ppc/include/asm/processor.h                   |    3 +-
 arch/ppc/mach-mpc85xx/Kconfig                      |   69 +-
 arch/ppc/mach-mpc85xx/cpu_init.c                   |  134 +-
 arch/ppc/mach-mpc85xx/cpuid.c                      |    1 +
 arch/ppc/mach-mpc85xx/fsl_gpio.c                   |   19 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |    9 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   13 +-
 arch/ppc/mach-mpc85xx/speed.c                      |   38 +-
 arch/sandbox/include/asm/bitops.h                  |   25 +-
 arch/x86/Kconfig                                   |    1 +
 arch/x86/include/asm/bitops.h                      |   32 +-
 arch/x86/include/asm/types.h                       |    2 +
 commands/Kconfig                                   |   28 +-
 commands/Makefile                                  |    3 +
 commands/barebox-update.c                          |    1 +
 commands/cp.c                                      |    1 +
 commands/crc.c                                     |    1 +
 commands/dfu.c                                     |  151 +-
 commands/edit.c                                    |   12 +-
 commands/exec.c                                    |    1 +
 commands/help.c                                    |    2 +-
 commands/hwclock.c                                 |  161 +++
 commands/i2c.c                                     |   18 +-
 commands/imd.c                                     |   60 +
 commands/insmod.c                                  |    1 +
 commands/linux16.c                                 |    1 +
 commands/lspci.c                                   |    2 +-
 commands/of_dump.c                                 |    1 +
 commands/oftree.c                                  |    3 +-
 commands/readf.c                                   |    1 +
 commands/saveenv.c                                 |   33 +-
 commands/tftp.c                                    |    1 +
 commands/trigger.c                                 |    5 +-
 commands/ubiformat.c                               |    1 +
 commands/uimage.c                                  |    1 +
 commands/usb.c                                     |  108 +-
 commands/usbgadget.c                               |  108 ++
 commands/usbserial.c                               |   47 +-
 common/Kconfig                                     |   37 +
 common/Makefile                                    |    7 +-
 common/block.c                                     |    3 +
 common/blspec.c                                    |    1 +
 common/bootm.c                                     |    1 +
 common/console.c                                   |   39 +-
 common/dlmalloc.c                                  |  169 ---
 common/efi-devicepath.c                            | 1370 ++++++++++++++++=
++
 common/efi-guid.c                                  |   84 ++
 common/environment.c                               |   33 +-
 common/file-list.c                                 |  113 ++
 common/filetype.c                                  |    4 +
 common/hush.c                                      |    3 +-
 common/imd-barebox.c                               |   25 +
 common/imd.c                                       |  322 +++++
 common/memory.c                                    |    2 +-
 common/menutree.c                                  |    1 +
 common/partitions/efi.c                            |    2 +-
 common/partitions/efi.h                            |    2 +-
 common/resource.c                                  |    2 +-
 common/uimage.c                                    |    1 +
 common/version.c                                   |    4 +
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/ata/Kconfig                                |    1 +
 drivers/bus/mvebu-mbus.c                           |   97 +-
 drivers/bus/omap-gpmc.c                            |    3 -
 drivers/clk/clk-divider.c                          |    2 +-
 drivers/clocksource/Kconfig                        |    4 +
 drivers/clocksource/Makefile                       |    1 +
 drivers/clocksource/digic.c                        |   93 ++
 drivers/gpio/Kconfig                               |   24 +
 drivers/gpio/Makefile                              |    2 +
 drivers/gpio/gpio-digic.c                          |  180 +++
 drivers/gpio/gpio-pca953x.c                        |  481 +++++++
 drivers/i2c/Makefile                               |    2 +-
 drivers/i2c/busses/Kconfig                         |   12 +
 drivers/i2c/busses/Makefile                        |    6 +-
 drivers/i2c/busses/i2c-at91.c                      |  437 ++++++
 drivers/i2c/busses/i2c-mv64xxx.c                   |  647 +++++++++
 drivers/i2c/busses/i2c-omap.c                      |    4 +-
 drivers/i2c/i2c-smbus.c                            |  371 +++++
 drivers/input/Kconfig                              |    2 +-
 drivers/led/led-gpio.c                             |    6 +-
 drivers/led/led-triggers.c                         |    4 +-
 drivers/mci/mci-core.c                             |    6 +-
 drivers/mfd/mc34704.c                              |    6 +
 drivers/mfd/syscon.c                               |    6 +
 drivers/mtd/nand/atmel_nand.c                      |   11 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |   20 +-
 drivers/net/Kconfig                                |    8 +
 drivers/net/Makefile                               |    1 +
 drivers/net/efi-snp.c                              |  296 ++++
 drivers/net/gianfar.c                              |   70 +-
 drivers/net/gianfar.h                              |   16 +-
 drivers/net/phy/mdio-mvebu.c                       |    8 +-
 drivers/net/phy/phy.c                              |    4 +
 drivers/net/usb/Kconfig                            |    2 +-
 drivers/net/usb/usbnet.c                           |   17 +-
 drivers/of/Kconfig                                 |    8 +-
 drivers/of/Makefile                                |    1 +
 drivers/of/of_mtd.c                                |    2 +
 drivers/of/of_net.c                                |    1 +
 drivers/of/of_pci.c                                |   27 +
 drivers/of/platform.c                              |    3 +-
 drivers/pci/Kconfig                                |    6 +
 drivers/pci/Makefile                               |    2 +
 drivers/pci/pci-mvebu-phy.c                        |  208 +++
 drivers/pci/pci-mvebu.c                            |  446 ++++++
 drivers/pci/pci-mvebu.h                            |   37 +
 drivers/pci/pci.c                                  |   28 +-
 drivers/pinctrl/Kconfig                            |    1 +
 drivers/pinctrl/mvebu/Kconfig                      |    8 +
 drivers/pinctrl/mvebu/Makefile                     |    2 +
 drivers/pinctrl/mvebu/armada-370.c                 |  416 ++++++
 drivers/pinctrl/mvebu/armada-xp.c                  |  403 ++++++
 drivers/pinctrl/pinctrl-rockchip.c                 |   53 +-
 drivers/regulator/Kconfig                          |    1 +
 drivers/regulator/fixed.c                          |    9 +
 drivers/rtc/Kconfig                                |   44 +
 drivers/rtc/Makefile                               |   11 +
 drivers/rtc/class.c                                |   70 +
 drivers/rtc/rtc-ds1307.c                           |  347 +++++
 drivers/rtc/rtc-jz4740.c                           |  165 +++
 drivers/rtc/rtc-lib.c                              |  113 ++
 drivers/serial/Kconfig                             |    8 +
 drivers/serial/Makefile                            |    2 +
 drivers/serial/efi-stdio.c                         |  367 +++++
 drivers/serial/serial_digic.c                      |  132 ++
 drivers/serial/serial_imx.c                        |    4 +
 drivers/serial/serial_ns16550.c                    |  237 +--
 drivers/usb/Kconfig                                |   10 +-
 drivers/usb/core/Makefile                          |    4 +-
 drivers/usb/core/common.c                          |   19 +
 drivers/usb/core/hub.c                             |  486 +++++++
 drivers/usb/core/hub.h                             |    7 +
 drivers/usb/core/usb.c                             |  567 ++------
 drivers/usb/core/usb.h                             |    9 +
 drivers/usb/gadget/Kconfig                         |    9 +-
 drivers/usb/gadget/Makefile                        |    3 +-
 drivers/usb/gadget/at91_udc.c                      |  121 +-
 drivers/usb/gadget/composite.c                     | 1188 ++++++++++++---
 drivers/usb/gadget/config.c                        |  128 +-
 drivers/usb/gadget/dfu.c                           |  438 +++---
 drivers/usb/gadget/epautoconf.c                    |  233 +--
 drivers/usb/gadget/f_acm.c                         |  300 ++--
 drivers/usb/gadget/f_fastboot.c                    |  890 ++++++++++++
 drivers/usb/gadget/f_serial.c                      |  197 +--
 drivers/usb/gadget/fsl_udc.c                       |   77 +-
 drivers/usb/gadget/functions.c                     |   99 ++
 drivers/usb/gadget/gadget_chips.h                  |   60 +-
 drivers/usb/gadget/multi.c                         |  248 ++++
 drivers/usb/gadget/pxa27x_udc.c                    |   37 +-
 drivers/usb/gadget/serial.c                        |  282 ++--
 drivers/usb/gadget/u_serial.c                      |  271 ++--
 drivers/usb/gadget/u_serial.h                      |   16 +-
 drivers/usb/gadget/udc-core.c                      |  368 +++++
 drivers/usb/host/Kconfig                           |   19 +
 drivers/usb/host/Makefile                          |    2 +
 drivers/usb/host/ehci-hcd.c                        |  145 +-
 drivers/usb/host/ehci.h                            |   58 +-
 drivers/usb/host/ohci-hcd.c                        |    2 +-
 drivers/usb/host/xhci-hcd.c                        | 1509 ++++++++++++++++=
++++
 drivers/usb/host/xhci-hub.c                        |  647 +++++++++
 drivers/usb/host/xhci-pci.c                        |   45 +
 drivers/usb/host/xhci.h                            | 1279 +++++++++++++++++
 drivers/usb/imx/chipidea-imx.c                     |  101 +-
 drivers/usb/storage/usb.c                          |   24 +-
 drivers/video/imx-ipu-v3/Kconfig                   |    1 +
 drivers/watchdog/Kconfig                           |    7 +
 drivers/watchdog/Makefile                          |    1 +
 drivers/watchdog/imxwd.c                           |    4 +
 drivers/watchdog/jz4740.c                          |  102 ++
 dts/Bindings/arm/armada-38x.txt                    |   14 +-
 dts/Bindings/arm/exynos/power_domain.txt           |   20 +
 dts/Bindings/arm/l2cc.txt                          |    3 +
 dts/Bindings/arm/samsung/exynos-adc.txt            |    2 +-
 dts/Bindings/cpufreq/cpufreq-cpu0.txt              |    6 +-
 dts/Bindings/hwmon/ntc_thermistor.txt              |   20 +-
 dts/Bindings/serial/renesas,sci-serial.txt         |    7 +
 dts/Bindings/spi/qcom,spi-qup.txt                  |    6 +
 dts/Bindings/vendor-prefixes.txt                   |    1 +
 dts/include/dt-bindings/clock/exynos5420.h         |    3 +-
 dts/include/dt-bindings/clock/imx6sl-clock.h       |    3 +-
 dts/include/dt-bindings/clock/stih415-clks.h       |    1 +
 dts/include/dt-bindings/clock/stih416-clks.h       |    1 +
 dts/include/dt-bindings/pinctrl/dra.h              |    7 +-
 dts/src/arm/am335x-evm.dts                         |    4 +-
 dts/src/arm/am335x-evmsk.dts                       |    4 +-
 dts/src/arm/am335x-igep0033.dtsi                   |    6 +
 dts/src/arm/am43x-epos-evm.dts                     |    4 +
 dts/src/arm/armada-380.dtsi                        |    2 +-
 dts/src/arm/armada-385-db.dts                      |    2 +-
 dts/src/arm/armada-385-rd.dts                      |    2 +-
 dts/src/arm/armada-385.dtsi                        |    2 +-
 dts/src/arm/armada-38x.dtsi                        |    2 +-
 dts/src/arm/at91sam9261.dtsi                       |   21 +-
 dts/src/arm/at91sam9261ek.dts                      |    4 +
 dts/src/arm/at91sam9n12.dtsi                       |    6 +-
 dts/src/arm/at91sam9x5.dtsi                        |   10 +-
 dts/src/arm/dra7-evm.dts                           |    1 +
 dts/src/arm/dra7.dtsi                              |   12 +-
 dts/src/arm/dra7xx-clocks.dtsi                     |   26 +-
 dts/src/arm/exynos4.dtsi                           |    4 +-
 dts/src/arm/exynos5420.dtsi                        |    5 +-
 dts/src/arm/hi3620.dtsi                            |    2 +-
 dts/src/arm/imx51-babbage.dts                      |   10 +-
 dts/src/arm/imx51-eukrea-mbimxsd51-baseboard.dts   |    4 +-
 dts/src/arm/imx53-m53evk.dts                       |   40 +-
 dts/src/arm/imx6dl-hummingboard.dts                |   10 +
 dts/src/arm/imx6q-embedsky-e9.dtsi                 |  395 +++++
 dts/src/arm/imx6q-gw51xx.dts                       |    2 +-
 dts/src/arm/imx6qdl-cubox-i.dtsi                   |   27 +
 dts/src/arm/imx6qdl-gw51xx.dtsi                    |    2 +-
 dts/src/arm/imx6qdl-gw52xx.dtsi                    |    4 +-
 dts/src/arm/imx6qdl-gw53xx.dtsi                    |    2 +-
 dts/src/arm/imx6qdl-microsom.dtsi                  |   13 -
 dts/src/arm/imx6sl.dtsi                            |    2 +-
 dts/src/arm/kirkwood-guruplug-server-plus.dts      |    4 +-
 dts/src/arm/omap3-beagle-xm.dts                    |    6 +
 dts/src/arm/omap3-evm-common.dtsi                  |    7 +
 dts/src/arm/omap3-n900.dts                         |    5 +
 dts/src/arm/omap5.dtsi                             |    1 -
 dts/src/arm/r8a7791.dtsi                           |    4 +-
 dts/src/arm/ste-nomadik-s8815.dts                  |    2 +-
 dts/src/arm/ste-nomadik-stn8815.dtsi               |    7 +-
 dts/src/arm/stih415.dtsi                           |    8 +-
 .../{stih416-b2020-revE.dts =3D> stih416-b2020e.dts} |    0
 dts/src/arm/stih416.dtsi                           |    8 +-
 fs/Kconfig                                         |   15 +
 fs/Makefile                                        |    2 +
 fs/efi.c                                           |  563 ++++++++
 fs/efivarfs.c                                      |  340 +++++
 fs/fat/fat.c                                       |    4 +-
 fs/fs.c                                            |   72 -
 fs/uimagefs.c                                      |    1 +
 images/Makefile.am33xx                             |   14 +-
 images/Makefile.imx                                |    9 +-
 include/asm-generic/barebox.lds.h                  |    6 +
 include/asm-generic/bitops/hweight.h               |   15 +
 include/bbu.h                                      |    2 +
 include/block.h                                    |    1 +
 include/common.h                                   |   17 +
 include/console.h                                  |    3 +
 include/efi.h                                      |  621 ++++++++
 include/envfs.h                                    |    3 +-
 include/file-list.h                                |   26 +
 include/filetype.h                                 |    1 +
 include/fs.h                                       |   14 -
 include/i2c/i2c.h                                  |   57 +
 include/image-metadata.h                           |  117 ++
 include/libbb.h                                    |    7 -
 include/libfile.h                                  |   18 +
 include/linux/bcd.h                                |   22 +
 include/linux/bitmap.h                             |  285 ++++
 include/linux/bitops.h                             |  214 ++-
 include/linux/byteorder/generic.h                  |   29 +
 include/linux/efi.h                                |  547 -------
 include/linux/kernel.h                             |   54 +-
 include/linux/mbus.h                               |    2 +
 include/linux/pci.h                                |   12 +-
 include/linux/phy.h                                |    1 +
 include/linux/rtc.h                                |   47 +
 include/linux/types.h                              |    3 +
 include/malloc.h                                   |   22 +-
 include/of_pci.h                                   |   17 +
 include/param.h                                    |   15 +-
 include/platform_data/pca953x.h                    |   27 +
 include/printk.h                                   |    8 +-
 include/rtc.h                                      |    2 +
 include/usb/ch11.h                                 |  279 ++++
 include/usb/ch9.h                                  |  241 +++-
 include/usb/chipidea-imx.h                         |    1 +
 include/usb/composite.h                            |  234 ++-
 include/usb/dfu.h                                  |   92 +-
 include/usb/fastboot.h                             |   13 +
 include/usb/gadget-multi.h                         |   17 +
 include/usb/gadget.h                               |  239 +++-
 include/usb/usb.h                                  |  128 +-
 include/usb/usb_defs.h                             |  141 +-
 include/usb/usbserial.h                            |   10 +-
 include/usb/xhci.h                                 |   33 +
 include/wchar.h                                    |   18 +
 lib/Kconfig                                        |    3 +
 lib/Makefile                                       |    5 +-
 lib/bcd.c                                          |   14 +
 lib/bitmap.c                                       |  839 +++++++++++
 lib/bootstrap/disk.c                               |    1 +
 lib/copy_file.c                                    |   86 --
 lib/gui/image_renderer.c                           |    1 +
 lib/libbb.c                                        |   93 --
 lib/libfile.c                                      |  331 +++++
 lib/misc.c                                         |    3 +
 lib/parameter.c                                    |   76 +
 lib/readkey.c                                      |    2 +-
 lib/readline.c                                     |  126 +-
 lib/vsprintf.c                                     |   62 +
 lib/wchar.c                                        |   80 ++
 net/netconsole.c                                   |    1 +
 scripts/.gitignore                                 |   20 +-
 scripts/Makefile                                   |    2 +
 scripts/Makefile.lib                               |   27 +-
 scripts/bareboxenv.c                               |   10 +-
 scripts/bareboximd.c                               |  161 +++
 scripts/canon-a1100-image                          |   10 +
 scripts/dtc/.gitignore                             |    1 +
 scripts/dtc/Makefile                               |   18 +-
 scripts/dtc/{libfdt =3D> }/fdt.c                     |    0
 scripts/dtc/{libfdt =3D> }/fdt.h                     |    0
 scripts/dtc/{libfdt =3D> }/fdt_empty_tree.c          |    0
 scripts/dtc/{libfdt =3D> }/fdt_ro.c                  |    0
 scripts/dtc/{libfdt =3D> }/fdt_rw.c                  |    0
 scripts/dtc/{libfdt =3D> }/fdt_strerror.c            |    0
 scripts/dtc/{libfdt =3D> }/fdt_sw.c                  |    0
 scripts/dtc/{libfdt =3D> }/fdt_wip.c                 |    0
 scripts/dtc/{libfdt =3D> }/libfdt.h                  |    0
 scripts/dtc/{libfdt =3D> }/libfdt_env.h              |    0
 scripts/dtc/{libfdt =3D> }/libfdt_internal.h         |    0
 scripts/gen-dtb-s                                  |   56 +
 scripts/imx/imx-image.c                            |   21 +-
 512 files changed, 28300 insertions(+), 4875 deletions(-)
 create mode 100644 Documentation/boards/davinci.rst
 create mode 100644 Documentation/boards/digic.rst
 create mode 100644 Documentation/boards/efi.rst
 create mode 100644 Documentation/user/imd.rst
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x12=
8mx16.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header=
-nitrogen6dl-1g.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header=
-nitrogen6q-1g.imxcfg
 delete mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header=
-nitrogen6x-1g.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imx=
cfg
 create mode 100644 arch/arm/boards/canon-a1100/Makefile
 create mode 100644 arch/arm/boards/canon-a1100/lowlevel.c
 create mode 100644 arch/arm/boards/embedsky-e9/Makefile
 create mode 100644 arch/arm/boards/embedsky-e9/board.c
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
 create mode 100644 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
 create mode 100644 arch/arm/boards/embedsky-e9/lowlevel.c
 create mode 100644 arch/arm/configs/canon-a1100_defconfig
 create mode 100644 arch/arm/dts/canon-a1100.dts
 create mode 100644 arch/arm/dts/digic4.dtsi
 create mode 100644 arch/arm/dts/empty.c
 create mode 100644 arch/arm/dts/imx6q-embedsky-e9.dts
 create mode 100644 arch/arm/mach-digic/Kconfig
 create mode 100644 arch/arm/mach-digic/Makefile
 create mode 100644 arch/arm/mach-digic/core.c
 create mode 100644 arch/arm/mach-digic/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-digic/include/mach/digic4.h
 create mode 100644 arch/arm/mach-digic/include/mach/uart.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h
 create mode 100644 arch/arm/mach-omap/am33xx_scrm.c
 create mode 100644 arch/efi/Kconfig
 create mode 100644 arch/efi/Makefile
 create mode 100644 arch/efi/configs/efi_defconfig
 create mode 100644 arch/efi/efi/Makefile
 create mode 100644 arch/efi/efi/clocksource.c
 create mode 100644 arch/efi/efi/efi-block-io.c
 create mode 100644 arch/efi/efi/efi-device.c
 create mode 100644 arch/efi/efi/efi-image.c
 create mode 100644 arch/efi/efi/efi.c
 create mode 100644 arch/efi/efi/env-efi/network/eth0-discover
 create mode 100644 arch/efi/include/asm/barebox.h
 create mode 100644 arch/efi/include/asm/bitops.h
 create mode 100644 arch/efi/include/asm/byteorder.h
 create mode 100644 arch/efi/include/asm/common.h
 create mode 100644 arch/efi/include/asm/dma.h
 create mode 100644 arch/efi/include/asm/elf.h
 create mode 100644 arch/efi/include/asm/io.h
 create mode 100644 arch/efi/include/asm/posix_types.h
 create mode 100644 arch/efi/include/asm/sections.h
 create mode 100644 arch/efi/include/asm/string.h
 create mode 100644 arch/efi/include/asm/swab.h
 create mode 100644 arch/efi/include/asm/types.h
 create mode 100644 arch/efi/include/asm/unaligned.h
 create mode 100644 arch/efi/include/mach/debug_ll.h
 create mode 100644 arch/efi/include/mach/efi-device.h
 create mode 100644 arch/efi/include/mach/efi.h
 create mode 100644 arch/efi/lib/.gitignore
 create mode 100644 arch/efi/lib/Makefile
 create mode 100644 arch/efi/lib/crt0-efi-ia32.S
 create mode 100644 arch/efi/lib/crt0-efi-x86_64.S
 create mode 100644 arch/efi/lib/elf_ia32_efi.lds.S
 create mode 100644 arch/efi/lib/elf_x86_64_efi.lds.S
 create mode 100644 arch/efi/lib/reloc_ia32.c
 create mode 100644 arch/efi/lib/reloc_x86_64.c
 create mode 100644 arch/openrisc/cpu/.gitignore
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/config.h
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/ddr.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/config
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/law.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/tlb.c
 create mode 100644 arch/ppc/configs/p1010rdb_defconfig
 create mode 100644 arch/ppc/include/asm/fsl_ifc.h
 create mode 100644 commands/hwclock.c
 create mode 100644 commands/imd.c
 create mode 100644 commands/usbgadget.c
 create mode 100644 common/efi-devicepath.c
 create mode 100644 common/efi-guid.c
 create mode 100644 common/file-list.c
 create mode 100644 common/imd-barebox.c
 create mode 100644 common/imd.c
 create mode 100644 drivers/clocksource/digic.c
 create mode 100644 drivers/gpio/gpio-digic.c
 create mode 100644 drivers/gpio/gpio-pca953x.c
 create mode 100644 drivers/i2c/busses/i2c-at91.c
 create mode 100644 drivers/i2c/busses/i2c-mv64xxx.c
 create mode 100644 drivers/i2c/i2c-smbus.c
 create mode 100644 drivers/net/efi-snp.c
 create mode 100644 drivers/of/of_pci.c
 create mode 100644 drivers/pci/pci-mvebu-phy.c
 create mode 100644 drivers/pci/pci-mvebu.c
 create mode 100644 drivers/pci/pci-mvebu.h
 create mode 100644 drivers/pinctrl/mvebu/armada-370.c
 create mode 100644 drivers/pinctrl/mvebu/armada-xp.c
 create mode 100644 drivers/rtc/Kconfig
 create mode 100644 drivers/rtc/Makefile
 create mode 100644 drivers/rtc/class.c
 create mode 100644 drivers/rtc/rtc-ds1307.c
 create mode 100644 drivers/rtc/rtc-jz4740.c
 create mode 100644 drivers/rtc/rtc-lib.c
 create mode 100644 drivers/serial/efi-stdio.c
 create mode 100644 drivers/serial/serial_digic.c
 create mode 100644 drivers/usb/core/common.c
 create mode 100644 drivers/usb/core/hub.c
 create mode 100644 drivers/usb/core/hub.h
 create mode 100644 drivers/usb/core/usb.h
 create mode 100644 drivers/usb/gadget/f_fastboot.c
 create mode 100644 drivers/usb/gadget/functions.c
 create mode 100644 drivers/usb/gadget/multi.c
 create mode 100644 drivers/usb/gadget/udc-core.c
 create mode 100644 drivers/usb/host/xhci-hcd.c
 create mode 100644 drivers/usb/host/xhci-hub.c
 create mode 100644 drivers/usb/host/xhci-pci.c
 create mode 100644 drivers/usb/host/xhci.h
 create mode 100644 drivers/watchdog/jz4740.c
 create mode 100644 dts/src/arm/imx6q-embedsky-e9.dtsi
 rename dts/src/arm/{stih416-b2020-revE.dts =3D> stih416-b2020e.dts} (100%)
 create mode 100644 fs/efi.c
 create mode 100644 fs/efivarfs.c
 create mode 100644 include/efi.h
 create mode 100644 include/file-list.h
 create mode 100644 include/image-metadata.h
 create mode 100644 include/libfile.h
 create mode 100644 include/linux/bcd.h
 create mode 100644 include/linux/bitmap.h
 delete mode 100644 include/linux/efi.h
 create mode 100644 include/linux/rtc.h
 create mode 100644 include/of_pci.h
 create mode 100644 include/platform_data/pca953x.h
 create mode 100644 include/usb/ch11.h
 create mode 100644 include/usb/fastboot.h
 create mode 100644 include/usb/gadget-multi.h
 create mode 100644 include/usb/xhci.h
 create mode 100644 include/wchar.h
 create mode 100644 lib/bcd.c
 create mode 100644 lib/bitmap.c
 delete mode 100644 lib/copy_file.c
 create mode 100644 lib/libfile.c
 create mode 100644 lib/wchar.c
 create mode 100644 scripts/bareboximd.c
 create mode 100755 scripts/canon-a1100-image
 rename scripts/dtc/{libfdt =3D> }/fdt.c (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt.h (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt_empty_tree.c (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt_ro.c (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt_rw.c (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt_strerror.c (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt_sw.c (100%)
 rename scripts/dtc/{libfdt =3D> }/fdt_wip.c (100%)
 rename scripts/dtc/{libfdt =3D> }/libfdt.h (100%)
 rename scripts/dtc/{libfdt =3D> }/libfdt_env.h (100%)
 rename scripts/dtc/{libfdt =3D> }/libfdt_internal.h (100%)
 create mode 100755 scripts/gen-dtb-s
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
