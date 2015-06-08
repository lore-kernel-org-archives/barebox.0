Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z21yj-0005Y4-OC
 for barebox@lists.infradead.org; Mon, 08 Jun 2015 18:40:58 +0000
Date: Mon, 8 Jun 2015 20:40:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150608184033.GL6325@pengutronix.de>
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
Subject: v2015.06.0 ...and a new website
To: Barebox List <barebox@lists.infradead.org>
Cc: mail@streetpong.info

Hi all,

We have a release for June, see below for a list of changes between this
and the last release.

Also we are proud to anounce a new website for barebox, check it out on
http://www.barebox.org. We finally brought the new documentation
currently growing under Documentation online. Also check out our shiny
new logo. On first sight it may look like a 'b' for barebox, on second
sight there is a box in the b. Also the b itself looks like a factory,
stressing barebox' use in the embedded world. Thanks Sandro for creating
the logo.

Sascha


The following changes since commit 3bc7f48a449212672ad760ad3222eff01ede997e:

  Release v2015.05.0 (2015-05-06 08:51:30 +0200)

are available in the git repository at:

  none v2015.06.0

for you to fetch changes up to d47e89a45d8ee57c31e6afcdfcbc1288dcaa27a6:

  Release v2015.06.0 (2015-06-08 20:23:02 +0200)

----------------------------------------------------------------
Release v2015.06.0

----------------------------------------------------------------
Andrey Smirnov (3):
      spi: i.MX: Respect the value of 'cs_change'
      firmware: socfpga: Add necessary dependency to Kconfig
      firmware: socfpga: Fix a bug in fpgamgr_program_write_buf()

Antony Pavlov (9):
      mtd: m25p80: import ID for Winbond W25Q128FVSSI from linux
      i2c: mv64xxx: continue probe when clock-frequency is missing
      linux/amba/bus.h: drop unusable amba_{g,s}et_drvdata macros
      checkpatch: add DT compatible string documentation checks
      of: use 'const void *' for struct of_device_id.data
      MIPS: debug_ll_ns16550.h: drop _ns16550 suffix
      MIPS: mach-ath79: debug_ll.h: add assembler routines
      MIPS: tplink-mr3020: enable nmon
      Documentation: mips: fix tplink-mr3020 instruction

Jan Luebbe (1):
      gpio-davinci: gpio get should return 0 or 1

Lucas Stach (4):
      ARM: highbank: select OFTREE
      PCI: imx6: simplify config access code
      ARM: imx6: correct Hipercam ECSPI1 pinmux
      ARM: imx6: hipercam: set default hostname in boardfile

Marc Kleine-Budde (14):
      imx-image: add option to prepare image for HAB signing
      images: add HABv4 support for i.MX6
      habv4: add High Assurance Boot v4
      environment: remove unused code
      include: add includes includes to make fdt.h, of.h and state.h self c=
ontained
      command: state: harmonize in-barebox documentation
      command: timeout: remove unhandled '-t' option
      command: timeout: add documentation for option '-v'
      timeout: factor out wait-for-key-press loop into separate file
      ubi: cdev: remove trailing newline from debug messages
      of_path: of_find_path(): add possibility to return .bb device
      mtd: of_mtd_fixup(): fix given DT not the default one
      bootm: add magicvar description for global.bootm.oftree
      commands/Kconfig: fix typo in CMD_BOOTM_OFTREE help

Markus Pargmann (1):
      net: fec: Fix RGMII-ID

Mayur Nande (1):
      net: usb: asix: Add D-link DUB-E100 H/W Ver C1 support

Oleksij Rempel (1):
      MIPS: tplink-mr3020: enable PBL and compression

Robert Schwebel (1):
      i2c: omap: fix i2c bus number output

Sascha Hauer (26):
      ARM: i.MX6: Add support for clko clocks
      pci: Do not abuse dev->priv for storing data
      led: Fix led_gpio_rgb_unregister prototype
      dts: update to v4.0-rc7
      dts: update to v4.0
      usb: musb: dsps: Do not use priv pointer
      usb: musb: set controller->priv pointer
      net: phy: Add missing phy_unregister_device
      eth: halt active ethernet device on unregister
      net: cpsw: unregister device on remove callback
      net: phy: Do not double remove phy device
      setenv: Be more informative when device parameter setting fails
      dts: update to v4.1-rc1
      Merge branch 'for-next/defer'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/of-device-id'
      ARM: i.MX5: Add missing CONFIG_ prefix in test
      Documentation: blspec: Fix typo
      Documentation: blspec: Document blspec over NFS
      Merge branch 'pu/am335x'
      md: use memmap when possible
      Release v2015.06.0

Sebastian Hesselbarth (20):
      base: Introduce deferred probing
      gpio: Return -EPROBE_DEFER on gpio_get_num()
      OF: gpio: Silence error message on -EPROBE_DEFER
      led: gpio: Properly deal with deferred probing
      led: gpio: Free GPIOs on unregister()
      gpio: orion: Convert to platform_driver
      net: phy: Support Marvell 88E1318S PHY
      gpio: Add driver for 74x164 compatible shift-registers
      spi: ath79: move spidelay from spi-bitbang-txrx
      spi: Add SPI GPIO bitbang driver
      bus: mvebu-mbus: Remove coherency attribute
      bus: mvebu-mbus: Drop device reference
      bus: mvebu-mbus: Convert mbus platform driver to direct driver
      ARM: mvebu: Move PCIe register defines to socid.h
      ARM: mvebu: armada-xp: Fixup broken MV78230-A0 SoC ID
      ARM: mvebu: armada-xp: Limit PUP access to Armada XP
      ARM: mvebu: armada-xp: Use MBUS_ERR_PROP_EN define
      ARM: mvebu: armada-xp: Sort boards and images alphabetically
      ARM: mvebu: armada-xp: Add Lenovo Iomega ix4-300d
      ARM: Add Lenovo ix4 and related drivers to mvebu_defconfig

Steffen Trumtrar (1):
      usb: increase USB_CNTL_TIMEOUT to match linux

Uwe Kleine-K=F6nig (1):
      drivers/base: Mark (of|platform)_device_id data as constant

Wadim Egorov (1):
      ARM: am33xx: Fix SCRM compatible string to match new DT compatible st=
ring

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
