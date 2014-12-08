Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxtad-0002Sd-1L
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 08:22:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XxtaG-0004eO-3H
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 09:22:20 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XxtaG-0007Ko-1W
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 09:22:20 +0100
Date: Mon, 8 Dec 2014 09:22:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141208082220.GD30369@pengutronix.de>
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
Subject: v2014.12.0
To: barebox@lists.infradead.org

Hi All,

We have a December Release.
Not much new stuff has happened, but quite many fixes went into this
release, which I think is good. For new stuff we have a rtl8169 PCI
network driver and XZ image compression support.
Top developer for this release is not me but Lucas. Congratulations :)

Sascha

----------------------------------------------------------------
Alexander Shiyan (1):
      serial: ns16550: Remove unused fields from NS16550_plat structure

Antony Pavlov (7):
      clock.c: fix whitespaces
      mips: qemu-malta: add little-endian mode support
      Documentation: mips: add little-endian qemu-malta HOWTO
      add .mailmap for proper git-shortlog output
      Update .mailmap using scripts/mailmapper
      Typoes: "whith" -> "with"
      Makefile: fix typos

Bo Shen (1):
      ARM: atmel: add sama5d4 xplained ultra board support

Dmitry Voytik (1):
      ARM: imx23-olinuxino: discover usb before ifup

Jan Luebbe (1):
      sandbox: avoid symbol conflict for fstat

Jan Weitzel (4):
      net: cpsw: Allow gigabit connection
      net: micrel: Add ksz8081 support
      xymodem: select CRC16 from lib
      mtd: ubi: get_bad_peb_limit from mtd master

Lucas Stach (79):
      MIPS: malta: fix pci IO resource assignment
      pci: split out device init
      pci: add resource enum
      pci: properly populate prefetchable BARs
      pci: setup bridges and traverse buses behind them
      pci: defer device registration until after bridge setup
      pci: prettyprint device names
      pci: track parent<->child relationship
      commands: lspci: go down into subordinate busses
      clk: tegra: add PLLE setup functions
      clk: tegra30: add PCIe clocks
      i2c: tegra: move to fs initcall
      ARM: tegra: beaver: enable PEX voltage rail
      tegra: pmc: add powerdomain handling
      of: import pci range parser from linux
      pci: add Tegra host controller driver
      ARM: tegra: advertise PCI support
      net: add rtl8169 driver
      ARM: tegra: enable network related options in defconfig
      arm: boards: variscite-mx6: check i2c return value
      net: rtl8169: add support for RTL-8168/8111g
      net: rtl8169: clean receive buffer after net handler
      tegra: pmc: work around power domain failure
      tegra: jetson-tk1: enable 1.05V_RUN
      clk: tegra124: add PLLE setup functions
      clk: tegra124: add PCIe clocks
      add generic PHY framework
      pci: tegra: add tegra124 support
      tegra: beaver: set hostname in board init
      tegra: jetson-tk1: set hostname in board init
      ARM: tegra30: add environment path to Beaver DT
      ARM: tegra124: add environment path to Jetson-TK1 DT
      reset_source: add thermal reset
      tegra: pmc: add support for reset src detection
      tegra: defconfig: enable barebox OF drivers
      pinctrl: tegra: try to select "boot" state
      arm: dts: jetson-tk1: switch to upstream DT
      clk: tegra: slow down MSELECT to 102MHz
      pinctrl: tegra: add XUSB pad controller
      tegra: colibri-t20: set hostname in board init
      tegra: beaver: switch to upstream Tegra30 dtsi
      tegra: beaver: add stdout-path
      tegra: colibri-t20: add stdout-path
      tegra: tegra124: add serial alias nodes
      tegra: jetson-tk1: add stdout-path
      serial: ns16550: enable clock if available
      serial: ns16550: add Tegra support
      tegra: remove custom UART setup
      clk: tegra: don't enable UART clocks by default
      arm: imx53-qsrb: fix initcalls on START-R board
      arm: mach-imx: fix Eukrea CPUIMX51 Kconfig string
      blspec: fix incompatible pointer type warning
      pci: correct BAR size calculation
      pci: align bridge windows
      pci: tegra: relax link-up timeout
      firmware: socfpga: depend on ARCH_SOCFPGA
      firmware: altera-serial: depend on SPI
      firmware: altera-serial: don't try to check void return value
      firmware: altera-serial: fix printf message
      common: firmware: include libfile
      arm: imx: select MFD_MC13XXX for all boards that need it
      arm: imx: select I2C for all boards that need it in their board init
      arm: imx: nand update handler depends on MTD layer
      video: ipuv3: select OFDEVICE for HDMI and LVDS
      mci: esdhc: add back PIO_TIMEOUT
      arm: don't allow to select BUILTIN_DTB when building multiimage
      arm: fill BUILTIN_DTB_NAME for boards that still use this option
      common: menu needs PROCESS_ESCAPE_SEQUENCE
      usb: gadget: fastboot: select BANNER
      lib: decompress_xz: fix function header to match prototype
      arm: imx: pca100: only try to enable USB if USB_ULPI is configured
      envfs: include errno.h
      net: ethoc: depend on OPENRISC
      blspec: depend on, not select flexible bootargs
      usb: host: only activate Efika MX ULPI workaround if ULPI is selected
      usb: musb: only build musb_barebox if host is enabled
      rtc: select GREGORIAN_CALENDER
      arm: imx: iim/ocotp: fix link error when !CONFIG_NET
      net: rtl8139: depend on MIPS

Masahiro Yamada (1):
      scripts: add mailmapper, a tool to create/update mailmap file

Sascha Hauer (34):
      ARM: nitrogen6x: whitespace cleanup
      ARM: nitrogen6x: update 1066MHz 4x128M16 timing from U-Boot
      ARM: nitrogen6x: Fix Duallite RAM Timing
      ARM: nitrogen6x: Add support for 2GB board variants
      ARM: nitrogen6x: remove clock gate manipulation from DCD
      led: trigger: use max_value to turn on led instead of hardcoded '1'
      led: trigger: Turn of flashing leds only once
      fs: store pointer to fsdev instead of dev in struct filep
      fs: do not lookup global FILE * when the file is already available
      fs: Store the path in struct filep
      fs: implement fstat
      param: let dev_add_param return the newly created param
      libfile: add compare_file function
      dts: update to v3.17-rc6
      dts: update to v3.18-rc1
      ARM i.MX6: mmdc: Only print calibration values of enabled phys
      ARM i.MX6: mmdc: move calibration result printout to separate function
      filetype: Add XZ filetype support
      dts: update to v3.18-rc2
      Add xz decompression support
      commands: implement 'cmp' command
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/led'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/nitrogen6x'
      Merge branch 'for-next/tegra'
      Merge branch 'for-next/xz'
      command: memset: Fix argument order in help text
      Release v2014.12.0

Stefan M=FCller-Klieser (2):
      boards: Add phytec-phyflex-am335x
      pfla03: add to am335x_defconfig

Teresa G=E1mez (10):
      ARM: defconfig: Enable of_display_timings in am335x_defconfig
      net: cpsw: Fix probe for one port ethernet
      phyCORE-AM335x: Update default enviroment
      phyCORE-AM335x: Strip down device tree
      ARM: dts: split phyCORE-AM335x device tree
      phyCORE-AM335x: Add barebox image without SPI NOR
      boards: defaultenv: Fix nand bootargs for AM335x boards.
      of: Add of_device_enable_and_register functions
      ARM: am335x: Add register of boot devices
      ARM: am335x: phyCORE-AM335x: Create new dts for MLO

Thomas Petazzoni (1):
      pci: mvebu: Fix uninitialized variable in mvebu_get_target_attr()

Uwe Kleine-K=F6nig (3):
      mxs: iomux-imx23/imx28: unify mode definition
      mxs: iomux-imx23/imx28: add additional checks on mode
      mtd: nand_orion: remove unused goto label

Wadim Egorov (5):
      net: phy: micrel: Add OF conf. support for ksz9031
      net: cpsw: Set phy device_node pointer in probe
      arm: am33xx: Add rmii2_crs_dv mux selection in SMA2 register
      phyFLEX: Select RMII2_CRS_DV on GPMC_A9 pin
      ARM: dts: phyFLEX: Add SKEW clock delays to emac0 node

Zahari Doychev (1):
      common: fix mbr filetype detection

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
