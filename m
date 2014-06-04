Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsGGR-00009O-6z
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 18:50:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WsGG3-0008V4-2l
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 20:49:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WsGG3-0001Ju-0v
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 20:49:55 +0200
Date: Wed, 4 Jun 2014 20:49:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140604184954.GH15686@pengutronix.de>
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
Subject: v2014.06.0
To: barebox@lists.infradead.org

Here comes the barebox release for June.

The diffstat is huge this time. It shows that we now use the upstream
devicetree files which hopefully makes it easier to keep the files in
sync with the kernel. Some other changes worth noting:

- We now have Tegra3 support
- More MIPS devicetree support
- Support for Rockchip SoCs
- RiOTboard support
- initial Voltage Regulator support
- We have our first game in barebox: 2048

As usual here comes the detailed list of patches that went into
this release.

Sascha

----------------------------------------------------------------
Alexander Aring (3):
      memtest: cleanup error handling
      memtest: cleanup requests of regions
      memtest: copyright to UPPER case and fix typo

Alexander Shiyan (16):
      Documentation: Update binding doc for i.MX IIM
      GPIO: i.MX: Implement get_direction()
      spi: i.MX: Simplify cspi_0_0_init()
      spi: i.MX: Optimise driver private structure
      gui: Fix resource leak
      lzo: Remove unused variable
      ubifs: Remove unused variable
      commands/usbserial: Remove unused variable
      ata: pata-imx: Remove unused variable
      mtd: partition: Remove unused variable
      mtd: nand: bbt: Remove unused variable
      imx_keypad: Fix error handling
      commands/mount: Return real error code if "mount" fail
      commands/umount: Return real error code if "umount" fail
      ARM: Remove excess "select GENERIC_GPIO"
      SPI: i.MX: Remove redundant assignment

Antony Pavlov (13):
      spi: import bitbang txrx utility functions from linux
      spi: add controller driver for Atheros AR7XXX/AR9XXX SoCs
      MIPS: ar9331.dtsi: add SPI master
      MIPS: tplink-mr3020.dts: add S25FL032PIF SPI flash chip
      MIPS: tplink-mr3020_defconfig: add SPI support
      MIPS: add Longson LS1B SoC dtsi file
      MIPS: add Loongson Tech LS1B Demo Board dts file
      MIPS: loongson-ls1b: switch to device tree
      spi: altera_spi: fix altera_spi_setup() return error codes
      net: usb: asix: fix formating
      clk: move of_clk_get_parent_name() to common clk code
      clk: fixed-factor: add DT init function
      stdlib.h: include missed types.h

Beniamino Galvani (13):
      net: add ARC EMAC driver
      mfd: add act8846 driver
      ARM: add basic support for Rockchip SoCs
      ARM: rockchip: add PLL initialization function
      clk: gate: add flags argument to clock gate constructor
      clk: gate: unify enable and disable functions handling
      clk: gate: add CLK_GATE_HIWORD_MASK flag
      clk: add rockchip clock gate driver
      pinctrl: add rockchip pinctrl and gpio drivers
      ARM: dts: add Rockchip devicetree files
      ARM: rockchip: add radxa-rock board
      ARM: Rockchip: use upstream dtsi files
      ARM: radxa-rock: set hostname after devicetree initialization

Christian Hemp (4):
      imx6:mmdc: Move register defines to header file
      imx6: read back memory size
      imx6: Add support for phyCARD-i.MX6
      imx:mmdc:Move imx6-reg include to imx6-mmdc header

Christoph Fritz (3):
      tftp: add timeframe when remote server is retransmitting
      net cpsw: fix rx stability under heavy network load
      common: fix macro WARN

Eric B=E9nard (1):
      RiOTboard: add new board

Fabio Estevam (1):
      serial: imx: Fix buggy transmissions when baudrate mismatches

Franck Jullien (2):
      asm-generic: add IO memory accessors
      driver/net: fix bus endianess access in ethoc.c

Juergen Borleis (3):
      net/ifup.c: don't fail silently
      net/ifup.c: avoid setting the MAC twice
      default environment: force a specific return value

Lucas Stach (33):
      clk: tegra20: convert to dt-binding defines
      dt-bindings: add pinctrl-tegra.h
      ARM: dts: update Tegra20 base dtsi to Linux 3.14
      ARM: dts: update paz00 DT to Linux 3.14
      ARM: dts: update colibri + iris DTs to Linux 3.14
      gpio: tegra: remove dead code
      mmc: tegra: fix typo
      tegra: disable more lowlevel unsafe switch optimizations
      tegra: source MSELECT clock from CLK_M
      tegra: add Tegra3 kconfig symbol
      tegra: add Tegra3 ramsize detection
      tegra: add Tegra3 mem initcall
      tegra: recognize T30 in debug UART code
      pinctrl: tegra: add Tegra3 driver
      dt-bindings: add tegra30-car.h
      clk: tegra: consider new T30 clock registers
      clk: tegra: add Tegra3 driver
      gpio: tegra: add Tegra3 setup
      ARM: tegra: add basic Tegra3 DT
      ARM: tegra: add NVidia Beaver board support
      ARM: dts: tegra: add full Beaver pinmux
      defconfig: tegra: add some useful options
      ARM: nitrogen6x: remove VPU/IPU QoS from DCD
      ARM: change signature of barebox_arm_entry
      ARM: beaglebone: remove extra FDT memcpy
      ARM: eDM-QMX6: remove extra FDT memcpy
      ARM: phycore-am33xx: remove extra FDT memcpy
      ARM: imx: move malloc area to upper memory bank by default
      ARM: bootm: be more clever while deciding where to put zImage
      ARM: bootm: fix default uImage placement
      ARM: phycard-imx6: fixup for barebox_arm_entry signature change
      ARM: tegra30: slow down CPU to 600 MHz
      ARM: tegra30: ramp vdd_core to 1,2V

Marc Kleine-Budde (1):
      2048: port to barebox

Matteo Fortini (1):
      sama5d3x: fix AT91_SMC_CS offset stride

Michael Olbrich (3):
      ARM: dts: i.MX53: tqma53: Readd barebox specifics
      ARM Samsung: fix booting from NAND with pbl
      net: dm9k: only read on packet for each call to dm9k_eth_rx()

Michel Stam (3):
      common: Allow for I/O mapped I/O
      x86: Add support for IDE on the legacy I/O ports
      x86: ns16550: Rework driver to allow for x86 I/O space

Owen Kirby (1):
      Fix the options and protocols used by the loadx command.

Sascha Hauer (52):
      ppc: io: Add _IO_BASE define
      mips: io: include generic io.h
      openrisc: Use generic io accessors
      Add devicetree source files as of Linux-3.15-rc2
      serial: ns16550: omap: set register shift from code
      of: partition: set device_node of the newly created partition
      of: move of_find_device_by_node_path to drivers/of/of_path.c
      of_path: Allow to specify path with phandle only
      environment: drop envfs_register_partition
      env: erase/protect in envfs_save
      mtd: nand: bb: use mtd api directly
      mtd: refactor bb device creation
      mtd: nand: create bb devices automatically
      OF: barebox-env: Use bb device on NAND
      dts: Use dt-bindings from kernel
      dts: i.MX51 efika sb: Roll back pingroup changes
      ARM: dts: i.MX51: Use upstream dts files
      ARM: i.MX6: Use upstream dtsi files
      ARM: i.MX53: Use upstream dtsi files
      Add initial regulator support
      mci: Add regulator support
      ARM: Rockchip: switch to multiimage support
      ARM: i.MX25: Use upstream dtsi file
      ARM: i.MX27: Use upstream dtsi file
      ARM: AM33xx: Use upstream dtsi file
      ARM: Tegra20: Use upstream dtsi files
      ARM: dove: Use upstream dtsi file
      dts: update to v3.15-rc3
      Merge branch 'for-next/dts'
      Merge branch 'for-next/env'
      Merge branch 'for-next/ifup'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/ioresource'
      Merge branch 'for-next/memtest'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/of'
      Merge branch 'for-next/regulator'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/tegra'
      ARM: dts: remove unused i.MX pinfunc header files
      video: i.MX IPUv3: remove debug leftover
      video: i.MX IPUv3: Print error as string
      ARM: dts: Add generated files to clean rule
      boot: fix multiple boot sources
      boot: iterate over directories in alphabetical order
      drop CONFIG_PARTITION_NEED_MTD
      ARM: AM33xx: make bbu handler static inline
      mtd: nand: mxs: Fix 2k nand with oob size of 224 bytes
      net: fec_imx: mask mii register reads correctly
      net: fec_imx: check return value of registration functions
      Release v2014.06.0

Silvio Fricke (2):
      ARM: i.MX6: dts: edmqmx6: use new dts approach
      ARM: i.MX: edmqmx6: disable menu framework

Steffen Trumtrar (1):
      syscon: fix prototype compile error

Uladzimir Bely (1):
      imx6: ocotp: Add On-Chip OTP registers write support

Wjatscheslaw Stoljarski (4):
      imx-spi: enable v0.7 spi driver for imx53-cspi
      imx53: add imx53_add_cspi
      imx-spi: enable v0.7 spi driver for imx53-cspi
      imx53: add imx53_add_cspi

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
