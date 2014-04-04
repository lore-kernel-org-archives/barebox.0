Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVyTV-0008Ot-GH
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 07:23:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WVyT9-0006d4-H8
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 09:23:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WVyT9-0002se-FV
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 09:23:19 +0200
Date: Fri, 4 Apr 2014 09:23:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140404072319.GI17250@pengutronix.de>
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
Subject: v2014.04.0
To: barebox@lists.infradead.org

barebox-2014.04.0 is out.

Some highlights for this release:

- Tegra3 gained lowlevel support
- mtd partitions are now real devices and thus show up correctly in
  the device hierarchy
- ubi devices and volumes now also show up correctly in the device
  hierarchy
- devicetree support for PWMs and Keypad
- All i.MX board now use imx-image for generating image headers
- multiple environment snippets can now be compiled in and registered
  during runtime
- New boards: Garz+Fricke Santaro, Freescale UDOO
- PWM LED driver

Here's a detailed list of patches that went in until the last release:

----------------------------------------------------------------
Alexander Aring (2):
      bpkfs: remove twice include of fs.h
      bpkfs: fix compiler warning

Alexander Shiyan (18):
      scripts/kwbimage: Fix resource leak in image_create()
      scripts/kwbimage: Fix resource leak in image_create_payload()
      ARM: socfgpa: Remove redundant assignment
      boot command: Remove redundant assignment
      mtd: nand_imx: Remove redundant assignment
      spi: altera_spi: Remove redundant assignment
      USB gadget: Remove redundant assignment
      scripts/kwboot: Remove redundant assignment
      common/kallsyms.c: Fix sparse warning
      drivers/clk/clk-fixed.c: Fix sparse warning
      drivers/clk/clk-fixed-factor.c: Fix sparse warning
      drivers/clk/clk-mux.c: Fix sparse warning
      drivers/clk/clk-gate.c: Fix sparse warning
      drivers/clk/clk-divider-table.c: Fix sparse warning
      drivers/i2c/i2c.c: Fix sparse warnings
      drivers/of/base.c: Fix sparse warnings
      ARM: clps711x: Remove SYSCON3 handling
      mci: core: Typo fix in printk specifier

Antony Pavlov (1):
      MIPS: mach-xburst: fix DEBUG_LL=3Dn build error

Cristiano De Alti (1):
      i.MX21 ADS defconfig: set CONFIG_NAND_IMX since this board has a 64MB=
i NAND flash

David Vincent (1):
      Load PBL into SRAM

Eric B=E9nard (6):
      sata-imx: i.MX53, use the internal 120MHz clock by default
      ARM: i.MX53: Add sata to devicetree
      ARM: mx53-qsrb: fix USB
      ARM: mx53-qsrb: enable USB host
      ARM: mx53-qsrb: enable USB OTG in host mode
      ARM: mx53-qsrb: enable sata

Fabio Estevam (1):
      lib: math: Return NULL pointer

Lucas Stach (21):
      remove redundant NULL check on free
      commands: edit: properly propagate error code
      common: env: properly propagate error code
      lib: math: fix return path (numstack may be NULL)
      lib: libbb: f should never be NULL
      usb: ulpi: fix logic-op
      usb: dfu: fix error path to avoid NULL ptr deref
      net: usb: smsc95xx: fix wrong phy reset condition
      net: usb: asix: properly propagate error code
      mtd: core: avoid possible NULL ptr deref
      clk: avoid possible NULL ptr deref
      tegra: rename board directory for Colibri T20
      tegra: add -fno-jump-tables to lowlevel code
      tegra: lowlevel: switch to __always_inline macro
      tegra: add lowlevel delay function
      ARM: i.MX6: sabresd: switch to multi-image
      ARM: i.MX6: sabresd: set USB PHY and DR mode
      tegra: add Tegra3 to relevant lowlevel functions
      tegra: add lowlevel DVC
      tegra: set AHB clock rate early
      tegra: add Tegra3 startup

Philipp Zabel (3):
      ARM i.MX6: Gate clocks to graphics processing units
      ARM i.MX6Q: Fix IOMUXC GPR1 defines for ENET_CLK_SEL and IPU1/2_MUX
      mtd: ubi: avoid NULL pointer dereference in ubi_get_device

Philippe R=E9tornaz (1):
      ARM: i.MX31: Add support for mx31moboard board

Rapha=EBl POGGI (1):
      ARM: add minimal support for the Freescale Quad UDOO Board

Renaud Barbier (6):
      DA923RC: add boot script
      DA923RC: increase malloc size
      MPC85xx: fix memory layout to prevent corruption during memtest
      ppc: add support for memtest with cache disabled
      memtest: exclude page starting at address 0.
      ppc: P2020RDB and DA923RC configuration

Sascha Hauer (112):
      i2c/spi: match of_modaliases
      mtd: m25p80: set driver id_table
      spi: imx: drop use of enum
      spi: imx: Use IS_ENABLED to drop ifdefs
      spi: imx: Use device ids
      ARM: i.MX25: Fix LCDC clocks
      video: imx: Add a name to perclk
      USB gadget: at91: return error when no udc is registered
      dfu command: check return values
      USB gadget: fsl: Bail out if no udc exists
      USB gadget: dfu: propagate error from usb_gadget_poll
      PWM: Use a separate device for PWMs
      ARM: i.MX: Add include directories to imximage target
      ARM: i.MX53 SMD: Switch to imximage
      ARM: i.MX6 sabresd: Switch to imximage
      ARM: i.MX6 arm2: Switch to imximage
      ARM: i.MX51 ccxmx51: Switch to imximage
      ARM: i.MX51 karo-tx51: Switch to imximage
      ARM: i.MX51 vincell: Switch to imximage
      ARM: i.MX51: Eukrea cpuimx51: Switch to imx-image
      mtd: Simplify partitions
      device: init bus list
      device: remove parameters when unregistering a device
      ARM: i.MX25: freescale-mx25-3stack: Switch to imx-image
      ARM: i.MX53: TQ tqma53: Switch to imx-image
      ARM: i.MX25: Eukrea cpuimx25: Switch to imx-image
      ARM: i.MX35: eukrea-cpuimx35: Switch to imx-image
      ARM: i.MX35: freescale-mx35-3stack: Switch to imx-image
      ARM: i.MX53 karo-tx53: Switch to imximage
      PWM: pxa: use pwmx as devname
      ARM: i.MX6: Add PWM clk lookups
      ARM: dts: i.MX6: Add pwm aliases
      USB: dfu: Use barebox product id
      PWM: Add i.MX PWM driver
      Add readf command
      input: Add BB_ prefix to KEY_ defines
      input: gpio-keys: separate internal data from platform_data
      input: Add keycode to barebox key translation table
      input: gpio-keys: Add devicetree probe support
      common/Makefile: reorder targets
      defaultenv: simplify env dependencies
      make: Add wildcard rules for compressed files
      defaultenv: use wildcard compression rules
      ARM: i.MX: Karo-tx25: build image for internal boot
      Kconfig: Select default compression type
      filetype: Add detection for barebox environment
      environment: constify arguments
      environment: Add function to load envfs from buffer
      defaultenv: Align defaultenv array
      ARM: i.MX: Make mxc_iomux_v3_setup_multiple_pads argument const
      make: Add bbenv-y target to generate default environment files
      move defaultenv-1 to defaultenv/defaultenv-1
      move defaultenv-2 to defaultenv/defaultenv-2-*
      ARM: i.MX6: Add Garz+Fricke Santaro board support
      mtd: erase_info may be modified in mtd_erase
      mtd: Only call of_parse_partitions when the mtd has a parent
      mtd: partition: only copy selected fields to partition
      mtd: partition: make the mtd device the parent of the partition
      mtd: register mtd partitions as real mtd devices
      ubi: register ubi devices and volumes as devices
      mtd: mtdraw: Do not create for partitions and devices without oob
      mtd: mtdoob: Do not create for partitions
      defaultenv: Allow multiple defaultenvironment overlays
      usb: dfu: Fix spelling of flag name
      usb: dfu: Add create flag
      defaultenv: Add boot option for DFU
      gitignore: ignore autogenerated environment files
      param: dev_add_param_fixed: constify argument
      fs: ubifs: Fix unused function warning
      mtd: ubi: rework logging
      fs: ubifs: rework logging
      PWM: Add functions for getting/setting period/duty cycle
      PWM: Implement devicetree support
      led: move led_of_parse_trigger to core
      led: Add pwm-led driver
      led: Add default-on trigger
      run_command: remove unused flag parameter
      net: constify eth_get_byname argument
      net: Add ifup support
      blspec: Add NFS support
      Merge branch 'for-next/dfu'
      Merge branch 'for-next/env'
      Merge branch 'for-next/gpio-keys'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-image'
      Merge branch 'for-next/marvell'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/modalias'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/nfs'
      Merge branch 'for-next/partitionhelper'
      Merge branch 'for-next/ppc'
      Merge branch 'for-next/pwm'
      Merge branch 'for-next/spi'
      Merge branch 'for-next/tegra'
      Merge branch 'for-next/ubi'
      ifup: set serverip to provided value when doing dhcp
      splash: Print error message when no renderer is found
      ARM: MMU: Add some debugging aids and hints
      ARM: MMU: Fix memory reaching to the end of address space
      usb: gadget: set composite to NULL when usb_gadget_register_driver fa=
ils
      usb: gadget: propagate error code from usb_composite_register
      led: trigger: Add missing LED_TRIGGER_DEFAULT_ON string
      defaultenv-2: Fix menu files selection
      input: gpio-keys; dt probing needs CONFIG_OF_GPIO
      environment: Fix unitiliazed variable
      string.c: Fix include
      netconsole: bail out when no connection is opened
      ARM: Panda: Fix board selection in panda defconfig files
      ARM: i.MX6 Sabrelite: Fix ethernet
      ARM: i.MX53 QSB: Remove wrong return
      Release v2014.04.0

Sebastian Hesselbarth (7):
      net: reorder Kconfig and Makefile alphabetically
      net: phy: add of_phy_device_connect
      bus: mvebu: add mbus driver
      net: phy: add mvebu mdio bus driver
      net: orion: add ethernet driver
      ARM: dove: separate barebox-specific DT changes
      ARM: dove: sync with DT files from Linux

Steffen Trumtrar (1):
      ARM: socfpga: socrates: fix ENTRY_FUNCTION

Uwe Kleine-K=F6nig (20):
      net: net_read_uint32: assert that only 32 bit are read
      nfs: fix mount prog version in portmap lookup
      nfs: skip over stale rpc packets
      nfs: shorten and simplify rpc_add_credentials a bit
      nfs: simplify rpc_lookup_req
      nfs: drop an unneeded variable from nfs_do_open()
      net: new function net_read_uint64
      net: provide alternatives to {ntoh, hton}[sl] funtions with cleaner s=
emantics
      nfs: switch to nfs3
      mount: support filesystem options passed via -o
      nfs: parse nfsport and mount port from file system options
      devfs: partitioning: add missing free in error path
      devfs_add_partition: make flags parameter unsigned
      Documentation: fix example call to devfs_add_partition
      mtd/nand: constify filename parameter
      devfs: partitioning: add new helper devfs_create_partitions
      ARM: a9m2410: convert to devfs_create_partitions
      ARM: freescale-mx35-3-stack: convert to devfs_create_partitions
      ARM: pcm038: convert to devfs_create_partitions
      ARM: sama5d3xek: convert to devfs_create_partitions

 .gitignore                                         |   2 +
 Documentation/porting.txt                          |   2 +-
 Makefile                                           |  22 +-
 arch/arm/Kconfig                                   |   1 +
 arch/arm/Makefile                                  |  22 +
 arch/arm/boards/Makefile                           |   5 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |  27 +-
 arch/arm/boards/archosg9/board.c                   |   6 +-
 arch/arm/boards/at91sam9261ek/init.c               |   6 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |  14 +-
 arch/arm/boards/at91sam9m10ihd/init.c              |   2 +-
 arch/arm/boards/ccxmx51/Makefile                   |   1 -
 arch/arm/boards/ccxmx51/flash-header.imxcfg        |  60 ++
 arch/arm/boards/ccxmx51/flash_header.c             |  84 --
 arch/arm/boards/ebv-socrates/lowlevel.c            |   2 -
 arch/arm/boards/eukrea_cpuimx25/Makefile           |   1 -
 .../arm/boards/eukrea_cpuimx25/flash-header.imxcfg |  16 +
 arch/arm/boards/eukrea_cpuimx25/flash_header.c     |  61 --
 arch/arm/boards/eukrea_cpuimx35/Makefile           |   1 -
 .../arm/boards/eukrea_cpuimx35/flash-header.imxcfg |  19 +
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |  43 -
 arch/arm/boards/eukrea_cpuimx51/Makefile           |   1 -
 .../arm/boards/eukrea_cpuimx51/flash-header.imxcfg |  59 ++
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |  83 --
 arch/arm/boards/freescale-mx25-3ds/3stack.c        |  61 --
 .../boards/freescale-mx25-3ds/flash-header.imxcfg  |  42 +
 arch/arm/boards/freescale-mx35-3ds/3stack.c        |  42 +-
 arch/arm/boards/freescale-mx35-3ds/Makefile        |   2 -
 .../boards/freescale-mx35-3ds/flash-header.imxcfg  |  34 +
 arch/arm/boards/freescale-mx35-3ds/flash_header.c  |  72 --
 arch/arm/boards/freescale-mx53-qsb/board.c         |  46 +-
 arch/arm/boards/freescale-mx53-smd/Makefile        |   1 -
 .../boards/freescale-mx53-smd/flash-header.imxcfg  |  54 ++
 arch/arm/boards/freescale-mx53-smd/flash_header.c  | 102 ---
 arch/arm/boards/freescale-mx6-arm2/Makefile        |   1 -
 .../boards/freescale-mx6-arm2/flash-header.imxcfg  | 122 +++
 arch/arm/boards/freescale-mx6-arm2/flash_header.c  | 171 ----
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  64 +-
 arch/arm/boards/freescale-mx6-sabresd/Makefile     |   4 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  33 +-
 .../flash-header-mx6-sabresd.imxcfg                | 128 +++
 .../boards/freescale-mx6-sabresd/flash_header.c    | 178 ----
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  11 +-
 arch/arm/boards/guf-santaro/Makefile               |   2 +
 arch/arm/boards/guf-santaro/board.c                |  70 ++
 arch/arm/boards/guf-santaro/flash-header.imxcfg    | 109 +++
 arch/arm/boards/guf-santaro/lowlevel.c             |  48 +
 arch/arm/boards/guf-vincell/Makefile               |   2 +-
 arch/arm/boards/guf-vincell/flash-header.imxcfg    |   3 +
 arch/arm/boards/guf-vincell/flash_header.c         |  41 -
 arch/arm/boards/karo-tx51/Makefile                 |   1 -
 .../boards/karo-tx51/flash-header-karo-tx51.imxcfg |  13 +
 arch/arm/boards/karo-tx51/flash_header.c           |  52 --
 arch/arm/boards/karo-tx53/Makefile                 |   1 -
 .../karo-tx53/flash-header-tx53-rev1011.imxcfg     |  97 +++
 .../karo-tx53/flash-header-tx53-revxx30.imxcfg     | 127 +++
 arch/arm/boards/karo-tx53/flash_header.c           |  73 --
 arch/arm/boards/mioa701/board.c                    |   2 +-
 arch/arm/boards/mx31moboard/Makefile               |  20 +
 arch/arm/boards/mx31moboard/env/boot/nor           |   9 +
 arch/arm/boards/mx31moboard/env/boot/sd            |   8 +
 arch/arm/boards/mx31moboard/env/boot/usbmsd        |   8 +
 arch/arm/boards/mx31moboard/env/config-board       |   7 +
 arch/arm/boards/mx31moboard/env/init/mtdparts-nor  |  11 +
 arch/arm/boards/mx31moboard/lowlevel.c             | 114 +++
 arch/arm/boards/mx31moboard/mx31moboard.c          | 259 ++++++
 arch/arm/boards/mx31moboard/mx31moboard.dox        |  10 +
 arch/arm/boards/phytec-phycore-imx27/pcm038.c      |  47 +-
 arch/arm/boards/raspberry-pi/rpi.c                 |   2 +-
 arch/arm/boards/sama5d3xek/init.c                  |  41 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   4 +-
 .../Makefile                                       |   0
 .../entry.c                                        |   0
 arch/arm/boards/tqma53/flash-header.imxcfg         |  66 ++
 arch/arm/boards/udoo/Makefile                      |   3 +
 arch/arm/boards/udoo/board.c                       | 194 +++++
 arch/arm/boards/udoo/env/config-board              |   6 +
 arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg  | 104 +++
 arch/arm/boards/udoo/lowlevel.c                    |  17 +
 arch/arm/boards/usb-a926x/init.c                   |   8 +-
 arch/arm/configs/freescale-mx21-ads_defconfig      |  12 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |   8 +-
 arch/arm/configs/freescale-mx6-sabresd_defconfig   |   4 +-
 arch/arm/configs/imx_v7_defconfig                  |   2 +
 arch/arm/configs/panda_defconfig                   |   4 +-
 arch/arm/configs/panda_xload_defconfig             |   2 +-
 arch/arm/configs/tegra_v7_defconfig                |   2 +-
 arch/arm/cpu/mmu.c                                 |  59 +-
 arch/arm/dts/Makefile                              |  13 +-
 arch/arm/dts/dove-cubox-bb.dts                     |  18 +
 arch/arm/dts/dove-cubox.dts                        |  71 +-
 arch/arm/dts/dove.dtsi                             | 806 ++++++++++++-----
 arch/arm/dts/imx53-qsb-common.dtsi                 |  12 +-
 arch/arm/dts/imx53.dtsi                            |   9 +
 arch/arm/dts/imx6q-guf-santaro.dts                 | 571 ++++++++++++
 arch/arm/dts/imx6q-sabresd.dts                     |   5 +
 arch/arm/dts/imx6q-udoo.dts                        |  22 +
 arch/arm/dts/imx6qdl-sabresd.dtsi                  |  17 +
 arch/arm/dts/imx6qdl-udoo.dtsi                     | 118 +++
 arch/arm/dts/imx6qdl.dtsi                          |   4 +
 arch/arm/lib/pbl.lds.S                             |   1 +
 arch/arm/mach-clps711x/devices.c                   |   3 -
 arch/arm/mach-imx/Kconfig                          |  28 +-
 arch/arm/mach-imx/clk-imx21.c                      |   2 +-
 arch/arm/mach-imx/clk-imx25.c                      |  27 +-
 arch/arm/mach-imx/clk-imx27.c                      |   2 +-
 arch/arm/mach-imx/clk-imx6.c                       |  10 +-
 arch/arm/mach-imx/devices.c                        |  14 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h     |   6 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   4 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h     |   6 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h     |   4 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |   6 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   4 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h      |  10 +-
 arch/arm/mach-imx/include/mach/devices.h           |   4 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h          |   2 +-
 arch/arm/mach-omap/omap_generic.c                  |   2 +-
 arch/arm/mach-omap/xload.c                         |   4 +-
 arch/arm/mach-socfpga/generic.c                    |   2 +-
 arch/arm/mach-socfpga/include/mach/sequencer.c     |   1 -
 arch/arm/mach-tegra/Kconfig                        |   4 +-
 arch/arm/mach-tegra/Makefile                       |   4 +-
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h    |  72 ++
 arch/arm/mach-tegra/include/mach/lowlevel.h        |  75 +-
 arch/arm/mach-tegra/include/mach/tegra20-car.h     |  12 +
 arch/arm/mach-tegra/include/mach/tegra30-car.h     |  31 +
 arch/arm/mach-tegra/include/mach/tegra30-flow.h    |  23 +
 arch/arm/mach-tegra/tegra_avp_init.c               |  46 +-
 arch/mips/include/asm/debug_ll_ns16550.h           |   2 +
 arch/openrisc/cpu/barebox.lds.S                    |   1 +
 arch/ppc/Kconfig                                   |   1 -
 arch/ppc/boards/geip-da923rc/env/bin/boot          |   9 +
 arch/ppc/boards/geip-da923rc/env/bin/init          |  10 +
 arch/ppc/configs/da923rc_defconfig                 |   4 +-
 arch/ppc/configs/p2020rdb_defconfig                |   2 +
 arch/ppc/cpu-85xx/Makefile                         |   1 +
 arch/ppc/cpu-85xx/mmu.c                            |  54 ++
 arch/ppc/cpu-85xx/start.S                          |   3 -
 arch/ppc/cpu-85xx/tlb.c                            |  17 +-
 arch/ppc/include/asm/mmu.h                         |   6 +
 arch/ppc/lib/board.c                               |   6 +-
 arch/ppc/mach-mpc5xxx/Kconfig                      |   1 +
 arch/ppc/mach-mpc85xx/Kconfig                      |   3 +
 arch/ppc/mach-mpc85xx/barebox.lds.S                |   8 +-
 arch/ppc/mach-mpc85xx/cpu.c                        |  11 +
 arch/ppc/mach-mpc85xx/include/mach/mmu.h           |   5 +
 commands/Kconfig                                   |   6 +
 commands/Makefile                                  |   1 +
 commands/boot.c                                    |   4 +-
 commands/dfu.c                                     |  30 +-
 commands/edit.c                                    |  20 +-
 commands/exec.c                                    |   2 +-
 commands/loadenv.c                                 |  37 +-
 commands/login.c                                   |   2 +-
 commands/memtest.c                                 |  10 +-
 commands/mount.c                                   |  19 +-
 commands/readf.c                                   |  63 ++
 commands/tftp.c                                    |   2 +-
 commands/time.c                                    |   2 +-
 commands/trigger.c                                 |   1 +
 common/Kconfig                                     |  65 +-
 common/Makefile                                    | 153 +---
 common/blspec.c                                    | 116 ++-
 common/environment.c                               | 185 ++--
 common/filetype.c                                  |   4 +
 common/hush.c                                      |   2 +-
 common/kallsyms.c                                  |   8 +-
 common/menu.c                                      |  20 +-
 common/parser.c                                    |   7 +-
 common/password.c                                  |   4 +-
 common/startup.c                                   |  52 +-
 defaultenv-2/base/bin/ifup                         |  67 --
 defaultenv/Makefile                                |  24 +
 defaultenv/{ =3D> defaultenv-1}/bin/_boot_help       |   0
 defaultenv/{ =3D> defaultenv-1}/bin/_update          |   0
 defaultenv/{ =3D> defaultenv-1}/bin/_update_help     |   0
 defaultenv/{ =3D> defaultenv-1}/bin/boot             |   0
 defaultenv/{ =3D> defaultenv-1}/bin/init             |   0
 defaultenv/{ =3D> defaultenv-1}/bin/update           |   0
 defaultenv/{ =3D> defaultenv-1}/config               |   0
 .../defaultenv-2-base}/bin/bootargs-ip             |   0
 .../base =3D> defaultenv/defaultenv-2-base}/bin/init |   0
 .../defaultenv-2-base}/bin/mtdparts-add            |   0
 .../base =3D> defaultenv/defaultenv-2-base}/boot/net |   0
 .../base =3D> defaultenv/defaultenv-2-base}/config   |   0
 .../defaultenv-2-base}/data/ansi-colors            |   0
 .../defaultenv-2-base}/data/boot-template          |   0
 .../defaultenv-2-base}/init/automount              |   0
 .../base =3D> defaultenv/defaultenv-2-base}/init/ps1 |   0
 .../defaultenv-2-base}/network/eth0                |   0
 defaultenv/defaultenv-2-dfu/boot/dfu               |  39 +
 .../defaultenv-2-menu}/menu/boot-entries-collect   |   0
 .../defaultenv-2-menu}/menu/boot-entries-edit      |   0
 .../defaultenv-2-menu}/menu/boot-entries-remove    |   0
 .../defaultenv-2-menu}/menu/boot-menu-add-entry    |   0
 .../menu/boot-menu-new-boot-entry                  |   0
 .../defaultenv-2-menu}/menu/init-entries-collect   |   0
 .../defaultenv-2-menu}/menu/init-entries-edit      |   0
 .../defaultenv-2-menu}/menu/init-menu-add-entry    |   0
 .../defaultenv-2-menu}/menu/mainmenu               |   0
 .../defaultenv-2-menu}/menu/settings               |   0
 defaultenv/defaultenv.c                            | 151 ++++
 drivers/ata/sata-imx.c                             |   2 +-
 drivers/base/bus.c                                 |  37 +
 drivers/base/driver.c                              |   3 +
 drivers/bus/Kconfig                                |  15 +-
 drivers/bus/Makefile                               |   5 +-
 drivers/bus/mvebu-mbus.c                           | 743 ++++++++++++++++
 drivers/clk/clk-divider-table.c                    |   2 +-
 drivers/clk/clk-fixed-factor.c                     |   2 +-
 drivers/clk/clk-fixed.c                            |   2 +-
 drivers/clk/clk-gate.c                             |   2 +-
 drivers/clk/clk-mux.c                              |   2 +-
 drivers/clk/clkdev.c                               |   8 +-
 drivers/eeprom/at25.c                              |   3 +-
 drivers/i2c/i2c.c                                  |   9 +-
 drivers/input/Makefile                             |   1 +
 drivers/input/gpio_keys.c                          | 156 +++-
 drivers/input/keymap.c                             | 136 +++
 drivers/input/qt1070.c                             |   4 +-
 drivers/led/Kconfig                                |   4 +
 drivers/led/Makefile                               |   1 +
 drivers/led/core.c                                 |  35 +
 drivers/led/led-gpio.c                             |  35 -
 drivers/led/led-pwm.c                              |  93 ++
 drivers/led/led-triggers.c                         |   3 +
 drivers/mci/mci-core.c                             |   2 +-
 drivers/mtd/core.c                                 |  18 +-
 drivers/mtd/devices/m25p80.c                       |  28 +-
 drivers/mtd/mtdoob.c                               |   5 +-
 drivers/mtd/mtdraw.c                               |   6 +
 drivers/mtd/nand/nand-bb.c                         |   2 +-
 drivers/mtd/nand/nand_imx.c                        |   2 +-
 drivers/mtd/partition.c                            |  97 ++-
 drivers/mtd/ubi/build.c                            |  45 +-
 drivers/mtd/ubi/cdev.c                             |  20 +-
 drivers/mtd/ubi/fastmap.c                          |   4 +-
 drivers/mtd/ubi/ubi.h                              |   1 +
 drivers/mtd/ubi/vmt.c                              |  17 +
 drivers/net/Kconfig                                | 145 ++--
 drivers/net/Makefile                               |  28 +-
 drivers/net/orion-gbe.c                            | 541 ++++++++++++
 drivers/net/orion-gbe.h                            | 236 +++++
 drivers/net/phy/Kconfig                            |   8 +
 drivers/net/phy/Makefile                           |   2 +
 drivers/net/phy/mdio-mvebu.c                       | 152 ++++
 drivers/net/phy/phy.c                              |  31 +
 drivers/net/usb/asix.c                             |   4 +-
 drivers/net/usb/smsc95xx.c                         |   2 +-
 drivers/of/base.c                                  |   8 +-
 drivers/pinctrl/imx-iomux-v3.c                     |   4 +-
 drivers/pwm/Kconfig                                |   6 +
 drivers/pwm/Makefile                               |   3 +-
 drivers/pwm/core.c                                 | 111 ++-
 drivers/pwm/pwm-imx.c                              | 262 ++++++
 drivers/pwm/pxa_pwm.c                              |   2 +-
 drivers/spi/altera_spi.c                           |   2 +-
 drivers/spi/imx_spi.c                              | 132 ++-
 drivers/spi/spi.c                                  |   2 +-
 drivers/usb/core/usb.c                             |   3 +-
 drivers/usb/gadget/at91_udc.c                      |   2 +-
 drivers/usb/gadget/composite.c                     |  11 +-
 drivers/usb/gadget/dfu.c                           |  35 +-
 drivers/usb/gadget/fsl_udc.c                       |   3 +
 drivers/usb/otg/ulpi.c                             |   4 +-
 drivers/video/imx.c                                |   2 +-
 fs/Makefile                                        |   2 +-
 fs/bpkfs.c                                         |   3 +-
 fs/devfs-core.c                                    | 128 ++-
 fs/fs.c                                            |  21 +-
 fs/nfs.c                                           | 963 ++++++++++++++---=
----
 fs/parseopt.c                                      |  34 +
 fs/parseopt.h                                      |   1 +
 fs/ubifs/super.c                                   |  30 +-
 fs/ubifs/ubifs.c                                   |   4 +-
 fs/ubifs/ubifs.h                                   |  11 +-
 images/Makefile.imx                                |  20 +
 images/Makefile.tegra                              |   4 +-
 include/asm-generic/barebox.lds.h                  |  13 +
 include/byteorder.h                                |  24 +
 include/common.h                                   |   3 +-
 include/driver.h                                   |  44 +-
 include/envfs.h                                    |  36 +-
 include/filetype.h                                 |   1 +
 include/fs.h                                       |   6 +-
 include/gpio_keys.h                                |   7 -
 include/input/keyboard.h                           |  10 +
 include/led.h                                      |   3 +
 include/linux/mbus.h                               |  61 ++
 include/linux/mtd/mtd.h                            |   5 +-
 include/linux/phy.h                                |  14 +
 include/mfd/imx6q-iomuxc-gpr.h                     |  16 +-
 include/mfd/mc13xxx.h                              |  11 +
 include/nand.h                                     |   4 +-
 include/net.h                                      |  22 +-
 include/param.h                                    |   2 +-
 include/pwm.h                                      |   7 +
 include/readkey.h                                  |  34 +-
 include/usb/dfu.h                                  |   3 +-
 lib/bootstrap/disk.c                               |   2 +-
 lib/gui/image_renderer.c                           |   2 +
 lib/libbb.c                                        |   2 +-
 lib/math.c                                         |   6 +-
 lib/parameter.c                                    |   5 +-
 lib/readkey.c                                      |  36 +-
 lib/readline.c                                     |  26 +-
 lib/string.c                                       |   2 +-
 net/Kconfig                                        |  11 +
 net/Makefile                                       |   1 +
 net/eth.c                                          |   6 +-
 net/ifup.c                                         | 182 ++++
 net/netconsole.c                                   |   6 +
 scripts/Makefile.lib                               |  51 +-
 scripts/dfuboot.sh                                 |  68 ++
 scripts/genenv                                     |  12 +-
 scripts/kwbimage.c                                 |   5 +-
 scripts/kwboot.c                                   |   1 -
 318 files changed, 9216 insertions(+), 2741 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/ccxmx51/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-=
sabresd.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash_header.c
 create mode 100644 arch/arm/boards/guf-santaro/Makefile
 create mode 100644 arch/arm/boards/guf-santaro/board.c
 create mode 100644 arch/arm/boards/guf-santaro/flash-header.imxcfg
 create mode 100644 arch/arm/boards/guf-santaro/lowlevel.c
 create mode 100644 arch/arm/boards/guf-vincell/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/guf-vincell/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
 delete mode 100644 arch/arm/boards/karo-tx51/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imx=
cfg
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imx=
cfg
 delete mode 100644 arch/arm/boards/karo-tx53/flash_header.c
 create mode 100644 arch/arm/boards/mx31moboard/Makefile
 create mode 100644 arch/arm/boards/mx31moboard/env/boot/nor
 create mode 100644 arch/arm/boards/mx31moboard/env/boot/sd
 create mode 100644 arch/arm/boards/mx31moboard/env/boot/usbmsd
 create mode 100644 arch/arm/boards/mx31moboard/env/config-board
 create mode 100644 arch/arm/boards/mx31moboard/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/mx31moboard/lowlevel.c
 create mode 100644 arch/arm/boards/mx31moboard/mx31moboard.c
 create mode 100644 arch/arm/boards/mx31moboard/mx31moboard.dox
 rename arch/arm/boards/{toradex-colibri-t20-iris =3D> toradex-colibri-t20}=
/Makefile (100%)
 rename arch/arm/boards/{toradex-colibri-t20-iris =3D> toradex-colibri-t20}=
/entry.c (100%)
 create mode 100644 arch/arm/boards/tqma53/flash-header.imxcfg
 create mode 100644 arch/arm/boards/udoo/Makefile
 create mode 100644 arch/arm/boards/udoo/board.c
 create mode 100644 arch/arm/boards/udoo/env/config-board
 create mode 100644 arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
 create mode 100644 arch/arm/boards/udoo/lowlevel.c
 create mode 100644 arch/arm/dts/dove-cubox-bb.dts
 create mode 100644 arch/arm/dts/imx6q-guf-santaro.dts
 create mode 100644 arch/arm/dts/imx6q-udoo.dts
 create mode 100644 arch/arm/dts/imx6qdl-udoo.dtsi
 create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra30-car.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra30-flow.h
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/boot
 create mode 100644 arch/ppc/cpu-85xx/mmu.c
 create mode 100644 commands/readf.c
 delete mode 100644 defaultenv-2/base/bin/ifup
 create mode 100644 defaultenv/Makefile
 rename defaultenv/{ =3D> defaultenv-1}/bin/_boot_help (100%)
 rename defaultenv/{ =3D> defaultenv-1}/bin/_update (100%)
 rename defaultenv/{ =3D> defaultenv-1}/bin/_update_help (100%)
 rename defaultenv/{ =3D> defaultenv-1}/bin/boot (100%)
 rename defaultenv/{ =3D> defaultenv-1}/bin/init (100%)
 rename defaultenv/{ =3D> defaultenv-1}/bin/update (100%)
 rename defaultenv/{ =3D> defaultenv-1}/config (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/bin/bootargs-=
ip (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/bin/init (100=
%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/bin/mtdparts-=
add (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/boot/net (100=
%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/config (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/data/ansi-col=
ors (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/data/boot-tem=
plate (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/init/automoun=
t (100%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/init/ps1 (100=
%)
 rename {defaultenv-2/base =3D> defaultenv/defaultenv-2-base}/network/eth0 =
(100%)
 create mode 100644 defaultenv/defaultenv-2-dfu/boot/dfu
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/boot-ent=
ries-collect (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/boot-ent=
ries-edit (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/boot-ent=
ries-remove (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/boot-men=
u-add-entry (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/boot-men=
u-new-boot-entry (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/init-ent=
ries-collect (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/init-ent=
ries-edit (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/init-men=
u-add-entry (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/mainmenu=
 (100%)
 rename {defaultenv-2/menu =3D> defaultenv/defaultenv-2-menu}/menu/settings=
 (100%)
 create mode 100644 defaultenv/defaultenv.c
 create mode 100644 drivers/bus/mvebu-mbus.c
 create mode 100644 drivers/input/keymap.c
 create mode 100644 drivers/led/led-pwm.c
 create mode 100644 drivers/net/orion-gbe.c
 create mode 100644 drivers/net/orion-gbe.h
 create mode 100644 drivers/net/phy/mdio-mvebu.c
 create mode 100644 drivers/pwm/pwm-imx.c
 create mode 100644 fs/parseopt.c
 create mode 100644 fs/parseopt.h
 create mode 100644 include/byteorder.h
 create mode 100644 include/input/keyboard.h
 create mode 100644 include/linux/mbus.h
 create mode 100644 net/ifup.c
 create mode 100755 scripts/dfuboot.sh
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
