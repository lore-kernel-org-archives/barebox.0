Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7bRF-0001I6-7m
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 09:28:29 +0000
Date: Mon, 17 Aug 2020 11:28:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200817092818.GA13023@pengutronix.de>
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
Subject: v2020.08.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2020.08.0 is out.

This release has some optimizations in the ramfs implementation. ramfs
now stores the files contiguously in memory which means we can return
a direct pointer to the data in memmap(). With this we potentially need
less copying in memory. Also we need less memory chunks in ramfs, so
performance could slightly increase.

Also we gained support for another i.MX8 SoC variant, this time it's the
i.MX8MP. It's quite similar to other i.MX8 SoCs, so support should be
fairly complete already.

The TLSF allocator is updated to v3.1. This shouldn't change much, but
might be another place to watch out for regressions.

There are many more changes, see below for a full list.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (77):
      watchdog: f71808e: maintain watchdog timeout occurred flag
      Documentation: devicetree: hint at libfdt being available
      ARM: at91: dts: extend, don't create anew, pinctrl node
      ARM: dts: reference nodes to extend by phandles instead
      ARM: i.MX7: warp: drop duplicate memory node
      ARM: mvebu: remove reference to non-existant node
      ARM: i.MX6UL: dts: remove defunct override of pico-hobbit memory node
      ARM: layerscape: dts: combine fsl-ls1046a-rdb.dts aliases nodes
      ARM: i.MX7: dts: replace commented-out code with status =3D "disabled"
      ARM: i.MX: mx53-qsrb: dts: remove now-superfluous override
      ARM: zynqmp: dts: drop now superfluous zynqmp.dtsi
      ARM: socfpga: dts: remove unused nodes and phandles
      Documentation: devicetree: codify extension of upstream DTS by phandl=
es
      devinfo: print device parent along with device info
      watchdog: permit `wd 0` for non-stoppable, but inactive, watchdogs
      startup: inhibit watchdogs on non-interactive autoboot abort
      ARM: at91: add at91sam9/sama5 reset reason detection
      clk: sync of_clk_get_parent_name with upstream
      ARM: at91: choose proper parent for both MCI clocks
      include: import upstream header <linux/overflow.h>
      mci: sdhci: atmel: don't print errors on command timeouts
      mci: sdhci: atmel: use dev_printf instead of pr_print in common code
      mci: sdhci: atmel: avoid buggy SDHCI_RESET_ALL
      Revert "of: Add of_property_for_each_phandle() iterator"
      clk: at91: sync with Linux v5.8-rc1
      ARM: dts: vexpress-v2p-ca15: adapt fixed NOR flash partition setup
      ARM: stm32mp: dts: extend now upstream stm32mp157c-lxa-mc1.dts
      clk: at91: remove no-longer needed dt-compat code
      clk: at91: remove now-duplicate crutch #defines
      ARM: at91: remove <mach/hardware.h> include from assembly code
      ARM: at91: sama5d2: cast peripheral base addresses to __iomem pointers
      ARM: at91: import at91bootstrap's at91_ddrsdrc.h
      ARM: at91: migrate at91sam9_ddrsdr.h to use at91bootstrap's at91_ddrs=
drc.h
      ARM: at91: replace at91sam9_ddrsdr.h with at91bootstrap's at91_ddrsdr=
c.h
      ARM: at91: import early_udelay from at91bootstrap
      ARM: at91: import low level DDRAMC initialization code from at91boots=
trap
      ARM: at91: watchdog: implement at91_wdt_disable
      watchdog: add support for at91sam9/sama5 watchdog
      ARM: at91: implement sama5d2 lowlevel init
      ARM: at91: sama5d2: add sama5d2 matrix configuration
      ARM: at91: add sama5d2 cache init
      ARM: at91: add necessary Advanced Interrupt Controller configuration
      ARM: at91: extend low level PMC driver for generic clk support
      pbl: add block I/O API
      fs: fat: extend for in-PBL support
      mci: sdhci: atmel: extend driver for PBL usage
      ARM: at91: add code for sama5 boot source detection
      ARM: at91: add helpers for chain-loading barebox from SD-card
      ARM: at91: sama5d2: reuse stack set-up by first stage
      ARM: at91: debug_ll: remove duplicated IS_ENABLED(CONFIG_DEBUG_LL) co=
ndition
      ARM: at91: sama5d2: reduce UART setup boilerplate with new helpers
      ARM: at91: sama5d27-som1: add additional first stage entry point
      mci: omap: add new am335x and am437x SDHCI specific compatibles
      scripts: imx-image: throw descriptive error on encountering dcdofs
      x86: Kconfig: specify sizeof(dma_addr_t) =3D=3D 8 for 64BIT
      sandbox: specify sizeof(dma_addr_t) =3D=3D sizeof(phys_addr_t) =3D=3D=
 8 on 64BIT
      ARM: stm32mp: depend on ARCH_STM32MP for SoC drivers
      mci: dw_mmc: remove unused local variable
      mfd: superio: smsc: fix C99ism initial declaration in for loop
      mfd: superio: depend on X86 || COMPILE_TEST
      i2c: designware: use proper type for writel argument
      ARM: layerscape: ppa: fix error propagation in ppa_init()
      ppc: mpc5xxx: delete dead code
      include: delete unreferenced u-boot part.h header
      lib: list_sort: delete dead code
      commands: dhrystone: remove unneeded and out-of-place <stdbool.h>
      sandbox: include: <asm/types.h>: don't define INTERNAL_SIZE_T
      sandbox: os: common: fix compiler warning in add_image()
      sandbox: add libc memory allocator
      sandbox: reinstate cooked terminal mode on sanitizer-induced death
      ARM: at91: sama5d2: read back memory size from DDRAM controller
      ARM: at91: sama5d2: populate $bootsource and $bootsource_instance
      ARM: at91: sama5d27-som1-ek: add barebox_update and multi environment=
 support
      ARM: at91: sama5d27-giantboard: add additional first stage entry point
      ARM: at91: sama5d27-giantboard: add default environment/bbu
      ARM: at91: dts: sama5d27-som1: adapt to upstream partition layout
      i2c: stm32: support new st,stm32mp15-i2c compatible

Chris Healy (1):
      ARM: dts: vf610-zii-dev-rev-c: Expose fiber EEPROM modules

Christian Eggers (1):
      Revert "usb: host: ehci: Use to USBSTS to wait for transfer completio=
n"

Clement Leger (13):
      common: elf: add computation of elf boundaries
      common: elf: fix warning on 32 bits architectures
      common: elf: use calloc instead of xzalloc
      common: elf: check number of elf program headers
      common: elf: load elf directly from file
      common: elf: add elf_open, elf_close and elf_load
      common: bootm: add support for elf file loading
      mips: lib: bootm: use bootm elf loading capabilities
      common: bootm: allow building with an undefined IH_ARCH
      common: Kconfig: remove MIPS dependency for ELF
      kvx: add I-cache and D-cache synchronisation
      kvx: add support for elf loading using bootm
      kvx: remove duplicated dtb symbols

Daniel Schultz (2):
      ARM: configs: imx_v7_defconfig: Add state framework
      ARM: configs: imx_v7_defconfig: Add bootchooser

David Dgien (8):
      Makefile: Initialize and export KBUILD variables
      module: Add init macros to module.h
      module: Fix adding module to list after layout
      module: Fix module command registration
      module: Implement HAVE_MOD_ARCH_SPECIFIC
      arm: makefile: Fix compiler flag variable
      arm: elf: Add THM relocation types
      arm: module: Allow modules outside of bl range

Du Huanpeng (1):
      MIPS: AR9331: OKUD Max9331

Enrico Scholz (1):
      net:fec: fixed unaligned access and stack corruption

Jules Maselbas (1):
      startup: Add missing newline to notice message

Marc Kleine-Budde (1):
      scripts/rsatoc: fix printing of error message, if environment variabl=
e doen't contain a path

Masahiro Yamada (5):
      kbuild: remove AS variable
      kbuild: remove package targets
      kbuild: add -Wmissing-prototypes and -std=3Dgnu89 to KBUILD_HOSTCFLAGS
      kbuild: add infrastructure to build userspace programs
      scripts: use 'userprogs' to build programs for target

Michael Grzeschik (2):
      net: phy: add uapi/linux/mdio.h from kernel for MDIO MMD access
      drivers: net: phy: at803x: add phy clk setup via dts

Oleksij Rempel (9):
      net: phy: port phy_interface_is_rgmii() from kernel
      net: phy: micrel: backport ksz9031 phy-mode support
      ARM: dts: imx6: add Protonic boards
      ARM: add imx6 based Protonic boads
      net: fec_imx: add fsl,imx8mp-fec compatible
      mci: imx-esdhc: Add i.MX8mp compatible
      arm: imx: add initial imx8mp support
      clk: imx: Add imx8mp clk driver
      arm: boards: add initial imx8mp-evk support

Renaud Barbier (1):
      gpio: get function returns masked register value

Robert Karszniewicz (1):
      ARM: configs: Remove unused Kconfig symbol 'NAND_IMX_BBM'

Sascha Hauer (53):
      fastboot: Use make_temp() to create temporary file
      ratp: Fix closing connections
      ratp: Straighten ratp deregistration
      tlsf: Update to v3.1
      update list.h from Linux-5.7
      Arm: i.MX5: Do not disable L2 cache
      fastboot: Drop support for downloading to buffer
      ARM: i.MX: Enable new boards in imx_v7_defconfig
      startup: register autoboot vars in initcall
      startup: Fix do_autoboot_countdown() running multiple times
      fs: Add destroy_inode callbacks to filesystems
      fs: Make iput() accept NULL pointers
      fs: free inodes we no longer need
      digest: Drop usage of memmap
      fs: ramfs: Return -ENOSPC
      fs: ramfs: Drop dead code
      fs: ramfs: Use dynamically sized chunks
      fs: ramfs: Implement memmap
      libfile: copy_file: Fix calling discard_range
      libfile: copy_file: explicitly truncate to final size
      dts: update to v5.8-rc1
      dts: update to v5.8-rc3
      scripts: imx-image: Only set DCD pointer when we have DCD data
      scripts: imx-image: exit on read/write failures
      scripts: imx-image: Add extra code path for i.MX35
      scripts: imx-image: exit with error when barebox header conflicts wit=
h IVT
      scripts: imx-image: Fix writing image with IVT offset =3D 0
      scripts: imx-image: rename image_dcd_offset to image_ivt_offset
      scripts: imx-image: rename dcdofs to ivtofs
      serial: i.MX: Add i.MX8MP compatible
      pinctrl: imx-iomux-v3: Add i.MX8MP compatible
      scripts: imx-image: Add i.MX8MP support
      mfd: Add pca9440 register map
      mci: imx-esdhc-pbl: Add imx8mp_esdhc_load_image() for i.MX8MP
      net: phy: realtek: handle RX delay setting
      ARM: i.MX: bbu: Fix IVT offset for i.MX8MP
      ARM: i.MX8MP: Add ocotp support
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/dts-phandles'
      Merge branch 'for-next/elf'
      Merge branch 'for-next/fastboot'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/kbuild'
      Merge branch 'for-next/kvx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/module'
      Merge branch 'for-next/ramfs'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/tlsf'
      Merge branch 'for-next/watchdog'
      Release v2020.08.0

Uwe Kleine-K=F6nig (6):
      treewide: make use of PTR_ERR_OR_ZERO
      arm/boards: Replace license boilerplate by SPDX identfiers
      arm/cpu: Replace license and copyright boilerplate by SPDX identfiers
      arch/arm/include: Convert to SPDX-License and -Copyright specifiers
      treewide: Convert files covered by ARM copyright to SPDX
      arch/arm/lib64: Convert to SPDX-License and -Copyright specifiers

Yegor Yefremov (1):
      Documentation/sandbox: fix code block
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
