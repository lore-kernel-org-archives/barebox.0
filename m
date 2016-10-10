Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1btUMR-0003Y3-Uq
 for barebox@lists.infradead.org; Mon, 10 Oct 2016 06:46:57 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1btUM3-0002o3-Sn
 for barebox@lists.infradead.org; Mon, 10 Oct 2016 08:46:31 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1btUM3-0001yk-L4
 for barebox@lists.infradead.org; Mon, 10 Oct 2016 08:46:31 +0200
Date: Mon, 10 Oct 2016 08:46:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161010064631.5cjvj443ak552f2p@pengutronix.de>
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
Subject: v2016.10.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have an October release. This time we have Rockchip RK3288 support
and improved i.MX50 support. Lucas brought us several ARM64 compile
fixes to make his autobuilder green again, thanks Lucas ;)

Sascha


----------------------------------------------------------------
Aleksey Kuleshov (4):
      fix double free
      properly remove menu entry
      clarify strim function description
      rework menu so that it can support multiline titles

Alexander Kurz (13):
      mfd mc13xxx: add MC13892_REVISION_2_4
      Kconfig: defaultenv-2 select CMD_TEST
      scripts: imx-usb-loader: do DCD only once, cleanup
      scripts: imx-image: DCD check command for v2 only
      scripts: imx-usb-loader: enable DCD 16-bit write for hdr v1
      scripts: imx-usb-loader: structured DCD v1 element access
      scripts: imx-usb-loader: cleanup DCD v2 processing
      ARM: add common definitions for i.MX50 SOC
      scripts: imx: add support for i.MX50
      ARM: i.MX clock: cleanup imx50 incompatibilities
      ARM: i.MX drivers: enable i.MX50 where already supported
      Add i.MX50 support
      ARM i.MX50: Add iomux definitions for non-DT board implementations

Andrey Gusakov (1):
      video: tc358767: add eDP video encoder driver

Andrey Smirnov (1):
      arm: Add both .lds files to CLEAN_FILES unconditionally

Antony Pavlov (3):
      MIPS: dts: reuse TP-LINK MR3020 dts file from linux
      net: phy: of_phy_register_fixed_link(): drop redundant initialization
      Documentation: imd: fix sphinx warning

Christian Hemp (1):
      commands/Kconfig: fix typo in CMD_OF_FIXUP_STATUS help

Enrico Jorns (3):
      clk: socfpga: add divider registers to the main pll outputs
      commands: saveenv: exit on invalid option
      commands: exit on invalid option

Lucas Stach (10):
      serial: arm_dcc: depend on !CPU_V8
      mfd: syscon: drop EXPORT_SYMBOL for static function
      video: tc358767: depend on EDID helpers
      arm64: select ARM_EXCEPTIONS
      arm(64): move HAS_DMA and HAS_MODULES to CPU_32
      arm(64): don't advertise stack_dumping capabilities for ARM64
      arm: semihosting support is not implemented for ARM64
      arm64: include correct setupc file in ARM64 PBL
      arm64: drop unneeded files from Makefile
      arm64: don't allow to build relocatable image

Michael Olbrich (1):
      mci: mmci: Fix read FIFO handling

Philipp Zabel (3):
      video: switch to media bus formats
      video: add VPL ioctl to get bus format
      video/edid: Fix edid_to_display_timings error path

Sam Van Den Berge (1):
      Fix small typo in common/Kconfig

Sascha Hauer (27):
      mtd: nand: define struct nand_timings
      mtd: nand: add ONFI timing mode to nand_timings converter
      mtd: nand-imx: split preset_v1_v2 into two functions
      ARM: i.MX25: Provide a clock for the nand controller
      mtd: nand-imx: Optimize timing for i.MX25
      defaultenv-2: remove ps1 duplicates
      defaultenv-2: remove unused *-menu-add-entry calls
      usb: chipidea i.MX: Do not return unnecessary error
      ARM: i.MX6 Santaro: Add enable-delay for the display
      ARM: i.MX6 Santaro: Add USB support
      ARM: i.MX6 Santaro: Add PBL console support
      usb: i.MX chipidea: Enable VBUS regulator when needed
      Merge branch 'for-next/defenv-2'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/menu'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/video'
      dts: update to v4.7-rc6
      dts: update to v4.7
      Merge branch 'for-next/dts'
      ARM: karo-tx6: Include correct device tree
      ARM: i.MX6: Enable parent propagation for clk_gate2
      nv: Fix variable removal in nvvar_save()
      Release v2016.10.0

Steffen Trumtrar (5):
      filetype: add new filetype for SoCFPGA xload image
      socfpga: remove dt entries that are upstream
      ARM: socfpga: socrates: set alias for ethernet0
      ARM: socfpga: socrates: add qspi partitions
      ARM: socfpga: socrates: register bbu handlers

Trent Piepho (1):
      socfpga: Add support for V1 images to socfpga_mkimage

Ulrich =D6lmann (3):
      ARM: socfpga: xload: support more qspi partitions
      blspec: fix erroneus free in entry_is_of_compatible()
      blspec: fix return value of entry_is_of_compatible()

Uwe Kleine-K=F6nig (2):
      ARM: imx6: reset PLL2's PFD2 on i.MX6D
      net/phy: marvell: fix error handling

Wadim Egorov (8):
      ARM: rockchip: Add basic RK3288 support
      clocksource: Add rk3288 timer driver
      ARM: rockchip: Add early debug support for RK3288
      clk: Add RK3288 clock driver
      mci: dw_mmc: Add RK3288 compatible string
      ARM: Add phyCORE-RK3288 SOM support
      configs: Add RK3288 defconfig
      doc: Add RK3288 Documentation

grodriguez (1):
      Call boot_board from boot, not from init.

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
