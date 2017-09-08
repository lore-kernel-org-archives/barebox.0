Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dqD8T-0002fo-M1
 for barebox@lists.infradead.org; Fri, 08 Sep 2017 06:51:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dqD87-00026F-Uj
 for barebox@lists.infradead.org; Fri, 08 Sep 2017 08:51:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dqD87-0002j5-O5
 for barebox@lists.infradead.org; Fri, 08 Sep 2017 08:51:07 +0200
Date: Fri, 8 Sep 2017 08:51:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170908065107.h4yliy26nv36b4ee@pengutronix.de>
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
Subject: v2017.09.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

I just released barebox-v2017.09.0. By now I hopefully kept up with the
mails and patches on the list. If I missed any patches or mails that
require my attention please ping me.

Also there is a stable release for August outstanding with tftp-hpa
support fixed. I'll release it shortly, but some feedback if the patches
are working as expected would be appreciated before the release.

See below for a list of patches that went into this release.

Sascha

----------------------------------------------------------------
Andrey Gusakov (10):
      video: tc358767: fix EDID read for DP displays
      video: tc358767: fix DP0_MISC register set
      video: tc358767: fix timing calculation
      video: tc358767: fix AUXDATAn registers access during write
      video: tc358767: do not fail if sink supports more than 2 lanes
      video: tc358767: support newer DPCD revisions and higher data rates
      video: tc358767: optimize aux i2c bus checks
      video: tc358767: optimize DPCD register write
      video: tc358767: filter out modes with too high pixelclock
      video: tc358767: accept any hsync and vsync polatiry

Andrey Smirnov (9):
      clk: i.MX7: Remove unused UART clocks array
      ARM: i.MX: Import mx7d_pins.h from U-Boot
      ARM: i.MX: Add mx7_setup_pad()
      ARM: i.MX: Add imx7_uart_setup_ll()
      ARM: i.MX: Add minimal imx7-ccm-regs.h
      ARM: i.MX: Add ARCH_HAD_FEC_IMX to ARCH_IMX7
      ARM: i.MX: Import imx7-iomuxc-gpr.h from Linux kernel
      include: Add phy-id-list.h
      ARM: i.MX: Add support for NXP i.MX7 SABRESD board

Antony Pavlov (1):
      gpio: clps711x: clps711x_gpio_dt_ids: add missing sentinel entry

Bastian Stender (1):
      video/ssd1307fb: add support for VBAT

Ian Abbott (1):
      readlink: Improve -f handling

Lucas Stach (29):
      ARM: rdu2: use the upstream accepted DT
      ARM: rdu2: remove USB VBUS GPIO init
      ARM: rdu2: remove unecessary includes
      ARM: rdu2: include defaultenv from board
      ARM: imx: remove DCD files from Makefiles
      ARM: imx6: move MX6UL enet setup out of CPU string setting
      ARM: imx6: add static annotation to locally used functions
      video: tc358767: demote ASSR enable failure to debug level
      video: IPUv3-LDB: fix dual-channel mode
      clk: clk-fixed-factor: remove leftover debugging
      ARM: imx: kindle: select ARM_LINUX
      ARM: imx: hab: depend on OFDEVICE
      ARM: at91: animeo: depend on !CONSOLE_NONE
      dts: update to v4.13-rc2
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/nvmem'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/state'
      Merge branch 'for-next/tc358767'
      ARM: imx: fix phyBOARD-Zeta pinfunc typo
      ARM: imx: build imx6.o as ARMv7
      ARM: imx: ccmx53: select I2C
      ARM: imx: add stub for imx7_uart_setup_ll
      ARM: imx7: sabreSD: remove duplicate DT nodes

Oleksij Rempel (6):
      nvmem: snvs_lpgpr: sync with latest version for kernel
      dts: arm: imx6qdl: provide snvs-lpgpr device
      ARM: riotboard: provide standby on power off option
      ARM: i.MX: provide handler for power off over standby
      regulator: pfuze: provide power over standby handler
      MIPS: add 74Kc info

Peter Seiderer (1):
      mmc: add eMMC v5 and V5.1 detection support

Philipp Zabel (2):
      state: backend_bucket_circular: promote old state debug message to in=
fo
      state: backend_storage: remove unreachable error message

Sam Ravnborg (6):
      arm: at91 bootstrap: declare local function static
      macb: fix clock probing with DT
      clk: at91: fix clk-main
      pinctrl: at91: move initcalls to postcore_initcall
      mci: atmel_mci: fix devinfo DEV with OF enabled
      atmel_lcdfb: fix so the correct guard_time is used

Sascha Hauer (7):
      mmc: Consistently use EXT_CSD_* names from eMMC 5.1 spec
      mmc_extcsd command: Fix multiline prints
      mmc_extcsd command: rework
      ARM: imx: phyCORE i.MX7 on phyBOARD-Zeta support
      fs: avoid pathes with '//' in __canonicalize_path()
      fs: Don't bother filesystems without link support with additional sta=
t() calls
      Release v2017.09.0

Steffen Trumtrar (11):
      state: fix compile warnings for dev_err expansion
      common: efi: do not use undefined kconfig option
      fs: efi: return with correct error code in efifs_stat
      devfs-core: add function to find cdev by partuuid
      of: of_path: find device via partuuid
      scripts: socfpga_get_sequencer: update importer
      Documentation: socfpga: update sequencer documentation
      efi: efi: load state from devicetree
      blspec: skip all devicetree tests if entry doesn't specify one
      efi: efi: register barebox-update handler
      efi_defconfig: enable STATE

Uwe Kleine-K=F6nig (9):
      ARM: imx: use register defines in imxcfg files instead of plain numbe=
rs
      scripts: Provide script that helps using cpp defines in dcd tables
      ARM: i.MX7: provide DDR register definitions
      ARM: use register defines in the dcd table of the WaRP7
      ARM: imx: clocksource: Use per clock for determining parent freq
      ARM: imx: clocksource: error out if clk freq is 0
      ARM: imx: clocksource: make warning a bit more helpful
      ARM: i.MX7: drop now useless imx7s.dtsi
      ARM: i.MX7: Warp7: Add some code comments

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
