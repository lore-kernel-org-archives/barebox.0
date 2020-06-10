Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivX1-0005TP-1Z
 for barebox@lists.infradead.org; Wed, 10 Jun 2020 07:52:21 +0000
Date: Wed, 10 Jun 2020 09:52:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200610075215.GO11869@pengutronix.de>
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
Subject: v2020.06.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

The barebox release for June is out.

Highlights for this release are:
- We now have a COMPILE_TEST option like the Kernel has for better
  compile coverage
- Kconfig is updated to Linux 5.7-rc2 along with several surrounding
  support patches
- We now have a way to bring barebox right to the prompt

The last point is a nice one. So far barebox always ended up booting
something, but for some development workflows it's just nice to go to
the prompt right away. See the $global.autoboot Variable, by default
it is set to "countdown" which matches the previous behaviour. If set
to "abort" barebox will enter the shell without risking to miss the
autoboot timeout.

As usual there are many more changes, see below for a complete list.

Have Fun!

 Sascha

----------------------------------------------------------------
Ahmad Fatoum (47):
      startup: rename AUTOBOOT_UNKNOWN to more descriptive AUTOBOOT_COUNTDO=
WN
      startup: don't clobber original autoboot state
      startup: add $global.autoboot to make behavior configurable
      mci: sdhci: provide sdhci_readx_poll_timeout helpers
      mci: sdhci: implement sdhci_reset()
      ARM: at91: dts: specify aliases for sdmmc nodes
      mci: sdhci: add Atmel SDHCI (sama5d2, sam9x60) support
      ARM: stm32mp: add Linux Automation MC-1 support
      ARM: stm32mp: lxa-mc1: break reg_3v3 dependency on PMIC
      ARM: stm32mp: expand stm32mp_defconfig for new drivers and board
      x86: delete X86_NATIVE_BRINGUP in choice
      scripts: import Zephyr scripts/kconfig/lint.py into barebox
      scripts: kconfig-lint.py: extend for undefined symbol detection
      commands: fix misindented help text
      ARM: at91: remove undefined Kconfig symbol
      ARM: socfpga: remove duplicate ARCH_TEXT_BASE
      crypto: drop select on non-existing Kconfig options
      lib: bch: define referenced but undefined Kconfig option
      MIPS: ath79: define used, but undefined, Kconfig option
      phy: freescale: fix typo in Kconfig default
      reset: fix typo in Kconfig default
      treewide: Kconfig: remove some unused symbols
      commands: remove left-over CMD_AT91MUX Kconfig option
      x86: mach-i386: remove unused X86_GENERIC_HAS_{ISA, PCI, USB} options
      net: remove unused Kconfig options
      net: enc28j60: fix typo in referenced Kconfig option
      PPC: remove unused left-over Kconfig option
      ddr: fsl: fix null pointer dereference handling DDR4 memories
      scripts: imd: fix uninitialized variable read
      of: refactor of_read_number for clarity
      ARM: i.MX: boot: correctly handle SRC_SBMR1 override via SRC_GPR9
      drivers: explicitly select dependency STMP_DEVICE for i.MX23/28 drive=
rs
      common: introduce COMPILE_TEST option for build-testing
      drivers: mark first batch of compilable drivers for COMPILE_TEST
      drivers: add COMPILE_TEST prompts to some on-by-default drivers
      drivers: add COMPILE_TEST prompts for some off-by-default options
      ARM: stm32mp: init: don't cast signed error to unsigned
      ARM: stm32mp: init: detect Revision Z and 800 MHz profiles
      ARM: stm32mp: init: fix up CPU device tree nodes
      nvmem: bsec: allow reads at unaligned offsets
      nvmem: bsec: remove wrongly named bsec_field type
      ARM: i.MX: boot: interpret reserved boot as forced serial
      ARM: i.MX6: boot: handle i.MX6UL differences
      stm32mp: init: fix up st, package into stm32mp pinctrl nodes
      video: backlight-pwm: remove unused struct member
      video: backlight-pwm: set backlight dev.parent to hardware dev
      mci: sdhci: Fix swapped argument for sdhci_write32

Albert Schwarzkopf (1):
      common: bootm: Enforce CONFIG_BOOTM_FORCE_SIGNED_IMAGES for TEE bins

Antony Pavlov (3):
      spi: Kconfig: drop unneeded dependency
      MIPS: dlink-dir-320: remove useless board file
      phy: drop of_phy_simple_xlate() stub

Lucas Stach (8):
      scripts: add stm32image to .gitignore
      image: add stm32 images to gitignore
      mci: stm32_sdmmc2: don't retry commands
      mci: stm32_sdmmc2: move command timeout errors to debug level
      i2c: add coredevice_i2c_driver() macro
      mfd: stpmic1: move to coredevice level
      regulator: stpmic1: move to coredevice level
      net: designware: eqos: attach PHY earlier

Masahiro Yamada (31):
      riscv: remove meaningless LDFLAGS addition
      mips: rename ldflags-y to mips-ldflags-y
      kbuild: support ccflags-y, asflags-y, cppflags-y, and ldflags-y
      kbuild: prefix compiler flag variables with KBUILD_
      kconfig: update to Linux 5.7-rc2
      kbuild: remove meaningless headers_check from help target
      modpost: sync mk_elfconfig.c with Linux 5.7-rc2
      kbuild: swap the include order of arch Makefile and auto.conf.cmd
      kbuild: make DEFCONFIG_LIST work
      kbuild: use $(SRCARCH) to point to the arch directory
      kbuild: set SRCARCH=3Darm when ARCH=3Darm64
      ppc: remove unneeded -D CONFIG_PPC
      ppc: add arch/ppc/Kbuild
      image: support 'powerpc' for mkimage architecture
      ppc: rename arch/ppc/ to arch/powerpc/
      arm: remove empty config.h
      mips: remove unused INCDIR and BOARD variables in Makefile
      mips: remove unused board/debug_ll.h
      kbuild: do not delete $@ explicitly on failure
      kbuild: sync filechk rule with Linux 5.7-rc2
      kbuild: sync if_changed and friends with Linux 5.7-rc2
      kbuild: sync scripts/Kbuild.include with Linux 5.7-rc2
      common.h: remove unused region_overlap()
      common.h: move and rename lregion_overlap()
      nios2: include <asm-generic/io.h> from asm/io.h
      common.h: move the generic IOMEM definition to asm-generic/io.h
      kbuild: add -Werror=3D{strict-prototypes, implicit-int} to KBUILD_CFL=
AGS
      kbuild: add -Wall to KBUILD_HOSTCXXFLAGS
      module.h: split out the EXPORT_SYMBOL into export.h
      arch: remove KBUILD_SRC checks from arch Makefile
      kbuild: resync top Makefile, mkmakefile, tags.sh with Linux 5.7-rc4

Michael Grzeschik (5):
      net: cpsw: fix cpsw_slave_regs register offsets
      net: cpsw: move generic setup code to probe
      net: cpsw: cpsw_process should only handle rx channels for its own po=
rt
      net: cpsw: add vlan handling for dual_emac mode
      net: cpsw: make cpsw_send directional

Roland Hieber (1):
      ARM: dts: vexpress-v2p-ca9: adapt fixed NOR flash partition setup

Rouven Czerwinski (1):
      ARM: i.MX: configurable Super Root Key index

Sascha Hauer (46):
      Add magicvar description for autoboot variables
      dts: update to v5.7-rc1
      dts: update to v5.7-rc2
      iopoll: Introduce read_poll_timeout
      Merge branch 'for-next/dts' into next
      Merge branch 'for-next/kbuild' into next
      Merge branch 'for-next/misc' into next
      Merge branch 'for-next/sdhci' into next
      Merge branch 'for-next/stm32' into next
      net: fec_imx: Make ptp clock optional
      net: fec_imx: Return with an error when mandatory clock is missing
      clk: mxs: Do not enable enet_out clock
      arm: mxs: Add Kconfig option for device tree boards
      clk: mxs: Use device tree provided clock lookups
      ubi: Refuse to attach partitioned mtd devices
      Merge branch 'for-next/kconfig' into next
      Merge branch 'for-next/misc' into next
      Merge branch 'for-next/mxs' into next
      dts: update to v5.7-rc3
      net: fec_imx: Make ptp clock optional
      net: fec_imx: Return with an error when mandatory clock is missing
      clk: mxs: Do not enable enet_out clock
      arm: mxs: Add Kconfig option for device tree boards
      clk: mxs: Fix clock numbering
      clk imx28: Add USB clocks
      clk: mxs: Use device tree provided clock lookups
      ARM: mxs: Increase VDDD voltage to match specification
      filetype: Add filetype for i.MX23/28 SD card images
      watchdog: i.MX28: Add device tree support
      usb: imx-usb-phy: Add delay
      usb: i.MX: Add i.MX28 support
      ARM: i.MX28: Update defconfig
      serial: mxs auart: Set Linux console name
      mmc: mxs: implement detect callback
      dts: update to v5.7-rc4
      ARM: at91: Move mci platform data to include/
      Merge branch 'for-next/compile-test'
      Merge branch 'for-next/cpsw'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/kbuild'
      Merge branch 'for-next/kconfig'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/powerpc'
      Merge branch 'for-next/stm32'
      Release v2020.06.0

Stefan Riedmueller (1):
      mtd: mtdraw: Fix cdev size calculation for large NANDs

Steffen Trumtrar (2):
      scripts: bareboximd: fix write_file error handling
      common: imd: handle error in imd_write_crc32

Uwe Kleine-K=F6nig (5):
      LICENSES: Add MIT license
      commands/*: Replace license and copyright boilerplate by SPDX identfi=
ers
      treewide: remove references to CREDITS
      arm: zylonite: drop empty header
      arm/boards: drop various empty board files
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
