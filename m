Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmFck-00040Z-Qz
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 08:10:09 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cmFcO-0004UX-Up
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:09:44 +0100
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cmFcO-0002cj-OF
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:09:44 +0100
Date: Fri, 10 Mar 2017 09:09:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170310080944.czpxr7s657vs4spf@pengutronix.de>
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
Subject: v2017.03.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox-v2017.03.0. This release brings us i.MX7
support. The i.MX7 may come as dual core variant and the kernel
folks decided to support enabling the secondary core only via
PSCI, so we gained PSCI support in barebox aswell. It has only
been tested on i.MX7 and probably has some rough edges, but on
this SoC it should work as expected. Apart from that we now have
i.MX6SL support. As usual there are many fixes and smaller changes,
but see yourself below.

Sascha

----------------------------------------------------------------
Alexander Kurz (10):
      ARM i.MX31 clk: add pll_ref_clk and MCU PLL bypass select
      ARM: i.MX7: Kconfig: ARCH_IMX7 selects COMMON_CLK_OF_PROVIDER
      ARM: i.MX7: add AIPS base address defines
      ARM i.MX: move cpu_type macros in front of cpu_revision code
      ARM i.MX: add SoC type detection for i.MX6SL
      ARM: i.MX6SL: import clock infrastructure from linux
      ARM i.MX: Add i.MX6SL support
      i.MX: i2c: fix i2c-fsl for non-OF boards
      i.MX: esdhc: fix imx-esdhc driver for non-OF boards
      ARM: i.MX50: do not pass base address to imx53_boot_save_loc

Andrey Gusakov (1):
      video: tc358767: add copyright lines

Andrey Smirnov (23):
      i.MX: esdhc: Enable host->clk during initialization
      i.MX: ocotp: Move memory reversing into a subroutine
      i.MX: ocotp: Add provisions for storing multiple MAC addresses
      i.MX: ocotp: Initialize OCOTP as early as possible
      i.MX: clk: Add IMX_PLLV3_SYS_VF610 subtype
      i.MX: ocotp: Add imx_ocotp_sense_enable()
      i.MX: imx6-fusemap: Fix SJC_RESP_LOCK width
      i.MX: Add fusemap for VF610
      i.MX: vf610: Ramp CPU clock to maximum frequency
      i.MX: iomuxv3: Add low-level pad code to headers
      i.MX: iomuxv3: Add helper macros to deconstruct iomux_v3_cfg_t values
      i.MX: iomuxv3: Add low-level pad configuration routine
      i.MX6: sabresd: Remove magic numbers in setup_uart
      i.MX: iomuxv3: Use helper functions in iomux-v3.h
      i.MX: vf610: Add low-level pin configuration helper
      i.MX: iomux-vf610: Add missing pad definitions
      i.MX: imx-usb-phy: Add VF610 OF compatiblity string
      i.MX: Default CONFIG_USB_IMX_PHY to 'y' on Vybrid
      i.MX: imx-usb-misc: Add Vybrid support
      i.MX: vf610-twr: Remove MSCM setup code
      ARM: imx: Add support for ZII RDU2 board
      spi: i.MX: Add driver for DSPI
      i.MX: vf610: Add support for ZII VF610 Dev Family

Daniel Schultz (1):
      arm: am33xx: Initialize EMIF REG_PR_OLD_COUNT

Jean-Christophe PLAGNIOL-VILLARD (1):
      video: sdl fix typo

Juergen Borleis (10):
      imx-usb-loader: let constant data be const
      imx-usb-loader: this table is used internally only, so keep it static
      imx-usb-loader: add i.MX7S support
      ARM: Makefile: format fix
      clk: i.MX: Add clock support for i.MX7
      ARM: i.MX: gpt: Add i.MX7 support
      serial: i.MX: add i.MX7 support
      ARM: i.MX: Add i.MX7 base architecture support
      pinmmux: i.MX: add pin mux support for i.MX7
      ARM: i.MX: Add WaRP7 board support

Lucas Stach (5):
      ARM: rdu2: support QP variant
      arm: omap: OMAP_SERIALBOOT needs console support
      ARM: align exception vectors to 32 byte
      ARM: correctly identify ARMv6 K/Z
      ARM: execute DMB before trying to flush cache

Michael Olbrich (5):
      readkey: keys are unsigned char
      serial: efi: improve input handling
      output: use '[0m' to reset colors
      efi: include and execute exit calls
      efi: don't unload drivers

Oleksij Rempel (1):
      ARM: imx233-olinuxino: add CONFIG_CONSOLE_ACTIVATE_ALL

Peter Mamonov (2):
      mtd: spi-nor: add support for s25fl208k
      usb: ehci: pass full speed devices to companion controller

Robin van der Gracht (1):
      clk: imx: clk-imx6ul: Fixed conditional for enabling USB phy clocks

Sascha Hauer (52):
      i2c: i.MX: Enable clock
      mci: imx-esdhc: Enable clock
      serial: i.MX: Enable clock
      usb: imx: Make usb-misc multi instance safe
      usb: imx: Add usbmisc support for i.MX7
      usb: imx: Add clock support
      phy: usb-nop-xceiv: Add clock support
      of: partitions: force "partitions" subnode
      mci: Allow to partition eMMC boot partitions
      mci: imx-esdhci: remove wrong write protection test
      clk: i.MX: pllv3: Add support for the i.MX7 enet pll
      clk: imx: Add clk-cpu support
      clk: i.MX7: Add missing USB clocks
      watchdog: i.MX: add soc_reset operation
      watchdog: i.MX: Fix internal/external reset
      ARM: i.MX7: initialize architected timer
      regulator: Add pfuze driver
      ARM: vf610-twr: remove unused variable
      clk: Keep enable count consistent over reparent
      clk: implement CLK_OPS_PARENT_ENABLE
      clk: i.MX: clk-gate2: Allow to pass flags
      clk: i.MX: Pass CLK_OPS_PARENT_ENABLE where necessary
      clk: i.MX7: do clock reparenting when all clocks are initialized
      clk: Add support for shared gates
      clk: i.MX7: Fix ethernet clocks
      clk: i.MX7: do not register PLL bypass clocks as separate clocks
      clk: i.MX7: setup ethernet clocks
      ARM: start: Fix boarddata allocation
      pinctrl: i.MX7: Fix LPSR sel_imput setting
      ARM: i.MX7: Add imx7s.dtsi
      ARM: i.MX7: Initialize CSU
      ARM: Add UNWIND macro
      ARM: Add smc call support
      ARM: start: Fix image size calculation
      dts: update to v4.10-rc4
      dts: update to v4.10-rc5
      dts: update to v4.10-rc6
      ARM: Add PSCI support
      ARM: i.MX7: Add PSCI support
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/net'
      commands/mmc_extcsd: Relicense under GPLv2+
      scripts: mxsimage: Fix build with OpenSSL < 1.1.x
      dma: apbh_dma: add missing array termination
      usb: imx: role_registered contains role
      usb: imx: Fix setting of dev->priv
      Release v2017.03.0

Uwe Kleine-K=F6nig (11):
      net/phy: marvell: rename 88E1545 to 88E1540
      net/phy: marvell: 88E1540 LED registers already exist on 88E1121
      net/phy: marvell: rename phy_driver array to match Linux driver
      net/phy: marvell: change spacing to be more similar to the Linux driv=
er
      net/phy: marvell: align definition of MII_88E1121_PHY_MSCR to Linux d=
river
      net/phy: marvell: improve config_aneg for 88E1121R and 88E1318S
      net/phy: marvell: add support for 88e1510 to marvell phy driver
      of: provide for_each_matching_node_from
      bus: mvebu-mbus: fixup correct device tree
      memcmp: fix comparison on short read
      nand-bb: fix writing to the end of a .bb device

Vicente Bergas (1):
      scripts/omap4_usbboot: use libusb

Wadim Egorov (3):
      ARM: phycore-rk3288: Use UART2 as debug output
      serial: ns16550: Set read/write functions depending on reg-io-width
      config: Set UART port 2 as debug port

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
