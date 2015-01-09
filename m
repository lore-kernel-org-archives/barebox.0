Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y9cRx-0005DL-1h
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 16:30:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Y9cRb-00029f-2p
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 17:29:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Y9cRb-00079Y-0z
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 17:29:51 +0100
Date: Fri, 9 Jan 2015 17:29:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150109162950.GM23940@pengutronix.de>
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
Subject: v2015.01.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have the first release in 2015, a bit delayed by some critical bugs.

The biggest visible change this time is the introduction of non volatile
variables. For every global variable now a non volatile variable can be
created which can be just changed on the commandline and made persistent
with 'saveenv'. This makes it possible to change the behaviour of
barebox without changing scripts.

For a detailed list of what happened since the last release see below.

Sascha

----------------------------------------------------------------
Alexander Shiyan (1):
      treewide: Reuse init_clock() return value for clocksource drivers

Andrey Smirnov (6):
      partitions/efi: Fix off-by-one error in 'last_lba'
      ARM: i.MX: Make NAND related Kconfig options depend on MTD
      ARM: i.MX6 Phytec phyFLEX: Fix imx6_bbu_nand_register_handler prototy=
pe
      i.MX6: esdctl: Fix a bug in memory probing code
      i.MX6: phytec: Distil different startup functions
      i.MX6: phytec: Distil common code pattern into a macro

Antony Pavlov (1):
      resource: dev_request_mem_region: fix return value for MIPS

Christian Hemp (6):
      ARM: update imx_v7_defconfig
      ARM:pfla02: Move ethernet phy timings to dts
      am335x:phyflex: Remove phy fixup from board file
      imx6: add support for phyBOARD-ALCOR
      imx6: Add support for phyBOARD-SUBRA
      ARM: imx_v7_defconfig: Enable ubiformat

Dmitry Lavnikevich (2):
      ARM i.MX: add 2-bit gate clock support
      imx6: clk: Gate off ENFC clock before setting clock rate

Ezequiel Garcia (5):
      ARM: mvebu: Enable PUP register
      net: phy: marvell: Fix array identation
      net: phy: Support Marvell 88EE1545 PHY
      net: phy: Support Marvell 88EE1543 PHY
      net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller

Jan Luebbe (5):
      of: use OFTREE_MEM_GENERIC for the sandbox
      stringlist: string_list_contains can use a const string
      dt: factor out common code
      stringlist: the string argument should be const
      fdt: of_unflatten_dtb can work on const data

Jan Weitzel (2):
      ARM: omap: Add bootsource serial to xload
      i2c: omap: fix fclk_rate for ti,omap4-i2c

Jean-Christophe PLAGNIOL-VILLARD (3):
      graphic_utils: set_pixel only write 16bit in 16bit mode
      arm: at91: fix ecc_mode on non atmel boards
      driver: workaroud resource request that conflicts with errno PTR

Lucas Stach (4):
      ARM: implement recommended WAR for errata 709718
      ARM: imx5: add imx5_cpu_lowlevel_init and use in all boards
      doc: usb: add missing new line in codeblock
      fdt: don't strip const qualifier

Masahiro Yamada (1):
      kbuild: handle multi-objs dependency appropriately

Robert Jarzmik (2):
      commands: loady: fix bug with netconsole
      net: smc1111: move print_packet function

Sascha Hauer (76):
      environment: drop unnecessary casts
      environment: remove unused variable
      environment: refactor saveenv
      environment: Only save changes to the defaultenv
      magicvar: Add support for dynamically added magicvars
      Add support for non volatile variables
      libfile: Add copy_recursive
      cp: Add recursive copy
      Add defaultenv command
      globalvar: Add support for printing all global variables
      defaultenv-2: Make use of nonvolatile variables
      ARM: i.MX6: GuF Santaro: Use emmc boot1 for storing the environment
      Documentation: Add GuF Santaro documentation
      ARM: i.MX6 GuF Santaro: Fix phy clock
      ARM: i.MX6 GuF Santaro: Add simple-panel support
      ARM: i.MX6 GuF Santaro: Make edt touchscreen compatible more specific
      ARM: i.MX6 GuF Santaro: Fix SD cd/wp gpios
      ARM: i.MX: print silicon revision with pr_info
      ARM: i.MX51: Setup MIPI
      ARM: i.MX51: Add pwm aliases to device tree
      ARM: i.MX51 efikasb: Use defaultenv_append_directory
      ARM: i.MX51 efikasb: register init callback for PMIC init
      mci: imx-esdhc: Fix Interrupt enable register for i.MX6sx
      mci: imx-esdhc: Add i.MX6sl compatible
      serial: i.MX: Use "per" clk
      net: fec_imx: Add i.MX6sx compatible entry
      imx-usb-loader: Add i.MX6sx support
      pinctrl: Add i.MX6sx compatible entry
      ARM: i.MX: ocotp: Fix MAC address provider for unaligned addresses
      ARM: i.MX: ocotp: Add i.MX6sx compatible entry
      ARM: i.MX: Add i.MX6sx support
      ARM: i.MX: Add i.MX6sx sabresdb support
      command: login: depend on !CONSOLE_NONE
      command: passwd: depend on CMD_LOGIN rather than selecting it
      command: dmesg: depend on !CONSOLE_NONE
      ARM: i.MX: update imx_v7_defconfig
      scripts/Makefile.host: Update to Linux-3.18-rc6
      kconfig: update to v3.18-rc6
      ARM: dts: only build internal dtb when the name is not empty
      ARM: Nomadik: Implement a clk_set_rate stub
      fs: uImagefs: select crc32
      net: fec_imx: remove unused includes
      command: load[sbxy]: Depend on CONSOLE_FULL
      video: EDID: depends on I2C
      ARM: Don't allow Thumb2 on Tegra
      USB: Gadget: Select poller from USB_GADGET option
      USB: Gadget: fastboot: depends on command support
      ARM: PBL: Add missing pieces for xz compressed PBL image
      gpio: clps711x: Add missing include
      ARM: friendlyarm-mini2440: fix compilation for some displays
      ARM: ep93xx: Fix typo
      ARM: ep93xx: let broken SoCs depend on BROKEN
      ARM: Let MMU depend on !CPU_ARM946E
      ARM: AT91: Always provide clk_set_rate stub
      mci: mxs-mci: add f_min/f_max fields unconditionally
      param: make string arguments to dev_add_param_fixed const
      fs: bpkfs: select CRC32
      firmware: altera serial: depend on GENERIC_GPIO
      spi: mxs-spi: Allow compilation on i.MX28 only
      gpio: move gpio_is_valid to include/gpio.h
      ARM: rockchip: select PINCTRL
      ARM: AM335x: Select OFTREE
      Kconfig: make BROKEN invisible
      Merge branch 'for-next/am335x'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/kconfig'
      Merge branch 'for-next/marvell'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/persistent-vars'
      Merge branch 'for-next/randconfig'
      Merge branch 'for-next/randconfig-1'
      Merge branch 'for-next/socfpga'
      treewide: Fix typo collumn -> column
      blspec: print error when devicetree not found
      ARM: am335x bone: Fix Booting from eMMC
      Release v2015.01.0

Steffen Trumtrar (5):
      Documentation: boards: add socfpga
      ARM: socfpga: move iocsr from mach to board folder
      ARM: socfpga: update sdram calibration to 14.0
      ARM: socfpga: sockit: update handoff files to 14.0
      ARM: socfpga: socrates: update handoff files to 14.0

Teresa G=E1mez (4):
      ARM: phytec: am335x: Update enviroment comment
      ARM: dts: Add missing gpmc setting for phyCORE-AM335x
      ARM: dts: Add missing gpmc setting for phyFLEX-AM335x
      ARM: AM335x: Fix typo in Phytec boards

Uwe Kleine-K=F6nig (1):
      scripts: kwboot: fix detection of timeout

Wadim Egorov (2):
      ARM: defconfig: Enable Micrel PHY driver in am335x_defconfig
      ARM: dts: phyCORE-AM335x: Remove unused pin in nandflash pinmuxing

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
