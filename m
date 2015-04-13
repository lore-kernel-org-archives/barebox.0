Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhZwA-0000N6-5J
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 08:41:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1YhZvo-00071l-03
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 10:41:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1YhZvn-0004rx-Uj
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 10:41:23 +0200
Date: Mon, 13 Apr 2015 10:41:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413084123.GG9742@pengutronix.de>
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
Subject: v2015.04.0
To: Barebox List <barebox@lists.infradead.org>

We have a release for April. It's a little bit delayed due to my
holidays, but here it is.
This release brings the long overdue conversion to streaming dma ops
for drivers. Thanks Lucas.
For a detailed list of changes see below.

Sascha

----------------------------------------------------------------
Andrey Panov (20):
      ARM: Rockchip: Add DEBUG_LL based on mach-socfpga
      lib: Add gcd() function
      CLK: Add support for composite clock from Linux kernel
      CLK: Add fractional divider clock support from Linux kernel
      CLK: clk-mux: Respect CLK_MUX_HIWORD_MASK flag
      CLK: clk-divider: Respect CLK_DIVIDER_HIWORD_MASK flag
      CLK: clk-divider: Introduce clk_divider_alloc() and *_free() routines
      CLK: clk-divider: Respect CLK_DIVIDER_POWER_OF_TWO flag
      CLK: Check and do not allow to register clock twice
      CLK: Add helper defines to barebox-wrapper.h for easier porting of dr=
ivers from Linux kernel
      NET: arc_emac: Update for newer DTS, support for Rockchip .compatible
      ARM: Rockchip: Update Kconfig
      ARM: Rockchip: Update clk driver from Linux kernel for use with newer=
 DTS
      ARM: Rockchip: Use newer DTS for Radxa Rock board
      ARM: Rockchip: Update Radxa Rock board
      ARM: Rockchip: Remove unused files from mach-rockchip
      ARM: Rockchip: Add documentation
      MMC: dw_mmc: Add support for PIO mode and Rockchip variant of this ha=
rdware
      MMC: dw_mmc: PIO mode fixes
      ARM: Rockchip: Update defconfig

Andrey Smirnov (1):
      firmware: altera: Make nSTAT GPIO optional

Antony Pavlov (5):
      openrisc: barebox.lds.S: fix BFD format names
      MIPS: qemu-malta_defconfig: set BAUDRATE=3D38400
      MIPS: qemu-malta: debug_ll: fix serial port speed
      MIPS: add gxemul-malta_defconfig
      make PBL_CONSOLE depend on PBL_IMAGE

Bo Shen (1):
      ARM: atmel: at91sam9n12: add subtype support

Brian Norris (1):
      mtd: nand: cleanup ONFI printed errors, warnings

Doug Brainard (1):
      SAMA5D4EK - Now uses the new environment.

Hubert Feurstein (2):
      common/bootargs: add blkdevparts variables
      led: gpio: add support for default-state dt-property

Jan Luebbe (4):
      ARM/mem: handle data aborts gracefully for md
      scripts/dtc: import update-dtc-source.sh from kernel v4.0-rc1
      scripts/dtc: Update to upstream version 1.4.1
      Documentation: handle missing group declaration

Jean-Christophe PLAGNIOL-VILLARD (5):
      imx_v7_defconfig: enable at least PNG support for splash
      imx6q-embedsky-e9: the debug port is on uart1 not uart4
      imx6q-embedsky-e9: there is not PCIe on this hardware
      imx6q-embedsky-e9: we use the i2c2 for hdmi
      gitignore: only ignore include/config.h

Juergen Beisert (5):
      Docs: add some info about the Phytec's phyCORE-i.MX35
      phyCORE-PXA270: switch to the new environment template
      Docs: add some info about the Phytec's phyCORE-PXA270
      phyCORE-MPC5200-Tiny: switch to the new environment template
      Docs: add some info about the Phytec's phyCORE-MPC5200-Tiny

Lucas Stach (57):
      imd: provide dummy imd_command_setenv
      ARM: do not specify -static and -pie at the same time
      net: designware: don't depend on CONFIG_OFTREE
      menu: depend on !CONFIG_SHELL_NONE
      ARM: MIOA701: select POLLER
      of: make of_alias_get work on all types of DT paths
      ARM: tegra20: add mmc aliases
      ARM: tegra30: add mmc aliases
      ARM: tegra124: add mmc aliases
      mci: tegra: handle mmc aliases
      bbu: include necessary headers
      bbu: make bbu confirm a bit more verbose
      ARM: tegra: add eMMC barebox update handler
      ARM: tegra: add barebox update handler to Beaver board
      ARM: tegra: add barebox update handler to Jetson board
      ARM: tegra: enable barebox update in defconfig
      arm: hummingboard: fix fallout from upstream DT usage
      usb: gadget: include common.h in header
      NIOS2: use dma_addr_t in dma_alloc_coherent
      MIPS: change dma_alloc/free_coherent to common prototypes
      ARM: change dma_alloc/free_coherent to match other architectures
      ARM: move virt<->phys translation to io.h
      dma: add streaming DMA ops
      ARM: move DMA alloc functions to dma.h
      ARM: implement streaming DMA ops
      AHCI: convert to streaming DMA ops
      MCI: dw-mmc: convert to streaming DMA ops
      MCI: imx: convert to streaming DMA ops
      MCI: tegra-sdmmc: convert to streaming DMA ops
      net: arc-emac: convert to streaming DMA ops
      net: cpsw: convert to streaming DMA ops
      net: at91_ether: convert to streaming DMA ops
      net: davinci_emac: convert to streaming DMA ops
      net: designware: convert to streaming DMA ops
      net: fec: convert to streaming DMA ops
      net: macb: convert to streaming DMA ops
      net: orion-gbe: convert to streaming DMA ops
      net: rtl8169: convert to streaming DMA ops
      net: xgmac: convert to streaming DMA ops
      usb: gadget: fsl_udc: convert to streaming DMA ops
      usb: host: ehci: convert to streaming DMA ops
      usb: host: ohci: convert to streaming DMA ops
      ARM: bcm2835: mbox: convert to streaming DMA ops
      ARM: MMU: unexport cache maintenance functions
      pbl: let pbl-console depend on !CONSOLE_NONE
      ARM: versatile: provide clk_set_rate stub
      ARM: zynq: zedboard: don't select serial
      ARM: radxa-rock: select options for regulator
      parameter: include header for ERR_PTR and errno
      PCI: fix bad bugs in bridge setup code
      net: mvneta: convert to streaming DMA ops
      ARM: highbank: fix build with recent binutils
      clk: fractional-divider: fix build with CONFIG_MODULES
      usb: host: xhci: depend on HAS_DMA
      docs: correct link to microcom repo
      ARM: tegra124: remove serial aliases
      pci: make sure to activate devices on the root bus

Marc Kleine-Budde (22):
      drivers: remove unused function dev_protect()
      fs: make "offset" parameter of erase() and protect() 64 bit safe
      of_path: of_find_path(): remove unused variable len
      of/base: fix sparse warning, don't use integer 0 as NULL pointer
      of: add no-op function for of_register_fixup()
      of: add no-op functions for of_find_node_by_alias() and of_find_node_=
by_path_or_alias()
      sandbox: fix indention in help text
      sandbox: add support to pass dtb to barebox
      sandbox: add sample dts
      sandbox: activate OF support in defconfig
      sandbox: hostfile: clarify variable names
      sandbox: hostfile: probe(): add missing pointer from cdev.dev to dev
      sandbox: hostfile: remove struct hf_platform_data from hf_priv
      sandbox: hostfile: move fd from platform data to priv
      sandbox: hostfile: probe driver earlier
      sandbox: hostfile: use the memory resource to determine the size not =
the platform_data
      sandbox: hostfile: is always mmpad'ed
      sandbox: move device name generation for image/env into add_image()
      sandbox: hostfile: improve --image parameter to support "dev=3Dfile"
      sandbox: hostfile: completely switch to OF based probing
      environment: envfs_{load, save}: add possibility to call with filenam=
e and dirname =3D=3D NULL
      paramter: The dev_add_param_*() return ERR_PTR(), change no-ops to re=
turn ERR_PTR(-ENOSYS) instead of NULL

Masahiro Yamada (1):
      pbl: remove start_barebox() stub

Michael Grzeschik (1):
      ARM: Vincell: add usb device

Michael Olbrich (3):
      defaultenv-2: init: don't call timeout again if the user intervened
      friendlyarm-mini2440: add support for the W35 display
      ARM Samsung: add simple NAND barebox update handler

Robert Jarzmik (1):
      net: smc1111: fix platform data initializations

Robert Schwebel (2):
      Documentation: fix am335x title
      Documentation: rename powerpc manual to .rst

Sascha Hauer (67):
      dts: update to v3.18-rc3
      dts: update to v3.18-rc4
      dts: update to v3.18-rc5
      dts: update to v3.18-rc6
      dts: update to v3.18-rc7
      dts: update to v3.19-rc1
      dts: update to v3.19-rc3
      dts: update to v3.19-rc5
      dts: update to v3.19-rc6
      dts: update to v3.19-rc7
      ARM: remove unused variable
      of: Add for_each_child_of_node_safe
      mtd: core: add error checks
      mtd: partitions: Use xstrdup
      mtd: partitions: Add error check
      mtd: Add partitions to list
      mtd: nand: remove automatically created bb devices
      move cmdline partition parsing code to separate file
      cmdlinepart: Change SIZE_REMAINING to loff_t
      cmdlinepart: make argument types safer
      cmdlinepart: add function to parse a cmdline partition string
      cmndlinepart: skip devname if partstr already contains it
      mtd: forbid conflicting mtd partitions
      mtd: Use flags parameter in mtd_add_partition
      mtd: Add a partitions parameter to mtd devices
      mtd: fixup device tree partitions
      defaultenv-2: mtdparts-add: remove unused variable
      defaultenv-2: mtdparts-add: Use new partition parameter
      OMAP and i.MX boards: do not set console=3D commandline parameter in =
environment
      boards: Use nv.linux.bootargs.console for setting the console=3D comm=
andline parameter
      ARM: Allow to mask data aborts
      reset_source: make safe to call earlier
      dts: update to v3.19
      dts: update to v4.0-rc1
      ARM: i.MX53 QSB: remove unused /dev/env0 partition
      console: Make locally used function static
      clk: Treat NULL as dummy clocks
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mtd-partitions'
      Merge branch 'for-next/sandbox-of'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dtc'
      ARM: i.MX: boards: Setup stack before calling imx*_barebox_entry
      ARM: i.MX: remove __naked from imx*_barebox_entry
      PWM: i.MX: register successfully without alias
      ARM: i.MX5: Do not register fixed clocks twice
      ARM: i.MX: remove i.MX6 ARM2 board support
      ARM: i.MX6: switch to COMMON_CLK_OF_PROVIDER
      fs: rename inode member of struct filep to priv
      Merge branch 'for-next/arm'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/openrisc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/streaming-dma'
      Merge branch 'for-next/tegra'
      Use linux.bootargs.console for specifying the console
      clk: clk-divider: fix _get_maxdiv for table based divider
      lib: Add hex2bin and bin2hex implementations
      Documentation: booting-linux: Fix wrong variable name
      ARM: i.MX6: Add clock for ocotp
      Release v2015.04.0

Sebastian Hesselbarth (1):
      net: mvneta: Fix transmit errors due to dirty txdesc

Stefan M=FCller-Klieser (2):
      Revert "lzo: properly check for overruns"
      lzo: check for length overrun in variable length encoding.

Steffen Trumtrar (5):
      scripts: add socfpga preloader-files importer
      scripts: socfpga: add coccinelle magic
      ARM: socfpga: add Altera SoCFPGA Development Kit support
      scripts: socfpga: statify sys_mgr_init_table
      ARM: socfpga: socdk: statify sys_mgr_init_table

Teresa G=E1mez (9):
      ARM: Fix nv variable bootargs.base
      ARM: phyFLEX-AM335x-SOM: Update NAND partition table
      ARM: phyCORE-AM335x-SOM: Update NAND partition table
      ARM: phytec-som-am335x: Fix rootfs bootargs
      ARM: am335x_defconfig: Add ext4 support
      ARM: phytec-som-am335x: Remove mmc rootfstype
      ARM: phycore-am335x-som: Fix boards with no SPI
      mtd: nand_omap_gpmc: Remove unused code
      mtd: nand_omap_gpmc: Fix ecc check for bch8 romcode

Ulrich =D6lmann (2):
      docs: remove trailing whitespaces
      docs: fix typos

Uwe Kleine-K=F6nig (2):
      mtd: nand-imx: fix byte reading in x16 mode
      mtd: nand-imx: don't copy more bytes than read from hardware

Wadim Egorov (8):
      ARM: am335x: phyFLEX-AM335x: Split DT and add MLO DT
      ARM: dts: Add a new compatible type for am335x phytec SOMs
      boards: Add phytec-som-am335x
      Docs: Add phytec-som-am335x documentation
      reset_source: Add external reset
      ARM: am33xx: Add support for reset reason detection
      boards: phytec-som-am335x: Add phycard-som support
      mci: core: Check return value of dev_add_param_bool

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
