Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc5ne-0005RP-Uk
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 11:57:33 +0000
Date: Mon, 9 Nov 2020 12:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109115729.GJ29830@pengutronix.de>
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
Subject: v2020.11.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2020.11.0 is out. It comes with the usual small fixes and
improvements. Ahmad has worked on sandbox and added more features to
make that platform usable for testing barebox. Sandbox now has
persistent environment storage, has watchdog support and has
syscon-reboot-mode support. If you haven't done for longer, check it
out.
Another small but nice thing I'd like to note here is that barebox
can now be passed a BUILDSYSTEM_VERSION environment variable during
build. This variable is supposed to hold committish, tag, or whatever
seems appropriate to identify the build system (ptxdist, yocto version)
barebox has been built with. This should simplify getting information
how barebox has been built. This variable is printed during startup,
put into IMD and also exported as a globavar in barebox.

See below for a list of patches wthat went into this release.

Have Fun,
 Sascha


----------------------------------------------------------------
Ahmad Fatoum (75):
      rsa: fix print format specifiers in debug()
      USB: musb: host: fix mismatched format specifier in dev_dbg()
      common: misc: support strerror(err) for all err <=3D MAX_ERRNO
      vsprintf: constify pointers where appropriate
      vsprintf: add %pe format specifier for printing symbolic error names
      vsprintf: retire strerrorp in favor of %pe
      treewide: replace strerror(-PTR_ERR(errno)) with %pe format specifier
      ARM: at91: support sama5 low level clock setup with oscillator
      usbgadget: autostart: support delayed usbgadget.autostart=3D1
      drivers: add reboot-mode infrastructure
      power: reset: reboot-mode: port syscon-reboot-mode support
      power: reset: reboot-mode: fix up node into boot device tree
      defaultenv: provide defaults for generic reboot modes
      ARM: dts: stm32mp: setup syscon-reboot-mode on TAMP general purpose r=
egister
      ARM: stm32mp: remove custom reboot mode logic from arch code
      power: reset: reboot-mode: support multi-word magic
      power: reset: syscon-reboot-mode: support multi-word reboot modes
      ARM: dts: i.MX6qdl: define BootROM reboot-mode on top of SRC_GPR{9, 1=
0}
      include: regulator.h: forward declare struct device_d
      common: debug_ll: remove reference to undefined Kconfig option
      lib: ratp: rename now undefined use of a Kconfig symbol
      at91: wdt: don't include <asm-generic/io.h> directly
      include: asm-generic: bitio.h don't include <asm-generic/io.h> direct=
ly
      sandbox: add dummy memory-mapped I/O port region
      hw_random: mxc-rngc: fix read of uninitialized variable
      globalvar: fix uninitialized read of variable when no nvvars exist
      commands: uimage: fix indeterminate exit code of command
      watchdog: fix division-by-zero when clock rate =3D=3D 0
      net: usb: asix: propagate errors from MDIO accessors
      digest: sha: remove no-op "erase" of automatic variables
      common: memsize: eliminate dead store
      USB: musb: remove dead stores
      fs: squashfs: remove dead stores for xattr_id
      reset: remove dead initialization
      include: string: migrate barebox function from <linux/string.h>
      of: implement of_property_write_strings for multiple strings
      ARM: stm32mp: init: set up CPU and bootsource at core init level
      scripts: kwboot: allow piping full buffer size at once
      ARM: stm32mp: revision: make CPU type accessible to PBL
      ARM: stm32mp: dk2: have barebox image support DK1 as well
      commands: boot_order: note that it's OMAP specific in help text
      bootm: propagate register_image_handler return value
      ARM: stm32mp: migrate board initcalls to board drivers
      ARM: stm32mp: dk2: rename to dkx to make dk1 support clearer
      ARM: stm32mp: defconfig: enable more useful options
      kbuild: add dtbs target for building all dtbs of an ARCH
      driver: introduce less error-prone dev_get_drvdata alternative
      led: pca955x: fix probing from device tree
      dma: apbh: fix out-of-bounds write on 64-bit SoCs
      aiodev: lm75: fix out-of-bounds write on 64-bit SoCs
      mtd: nand-mxs: fix out-of-bounds write on 64-bit SoCs
      video: imx-hdmi: fix dev_get_drvdata misuse
      driver: migrate some from dev_get_drvdata to device_get_match_data
      gen-dtb-s: support x86 and other platforms with 16-bit .word
      sandbox: compile in a fallback device tree
      blspec: fix dead assignment
      sandbox: fix behavior with images >=3D 4G on 32-bit
      sandbox: dts: retire skeleton.dtsi
      of: implement of_property_read_u64_array
      sandbox: hostfile: unify --image and direct device tree probe
      sandbox: hostfile: support anonymous hostfiles in device tree
      sandbox: hostfile: maintain created temp files over reset
      sandbox: dts: define default environment node
      sandbox: poweroff: migrate to driver probed from device tree
      sandbox: power: implement reset source support
      sandbox: dts: implement reboot mode
      sandbox: add watchdog driver
      sandbox: dts: include state node by default
      sandbox: defconfig: enable new generic features
      sandbox: fix link error when UBSAN is selected without ASAN
      Documentation: smhfs: fix some typos
      Documentation: boards: stm32mp: search engine optimization
      Documentation: glossary: add some extra info
      Documentation: x86: note EFI support
      Documentation: aarch64-qemu-virt: note physical target support

Alexander Shiyan (1):
      ARM: bootm: Add lower bound check of kernel in SDRAM

Cem Tenruh (1):
      imx6ul/imx6ull: include imx6ul-phytec-state.dtsi and enable state

Jules Maselbas (1):
      usb: dwc2: Uninitialize host and device on remove

Lucas Stach (3):
      ARM: i.MX: nxp-imx8mm-evk: use eMMC update handler
      shutdown: flush console on barebox shutdown
      ARM: i.MX: nxp-imx8mm-evk: adjust DDR training order

Marco Felsch (13):
      video: ssd1307fb: fix VBAT supply id
      ARM: boards: mx6-sabrelite: [cosmetic] make use of IMX_GPIO_NR
      ARM: mx6-sabrelite: remove obsolete sabrelite_mem_init()
      spi: core: don't ignore register_device failures
      regulator: improve of_regulator_register error handling
      regulator: test of_regulator_register input before accessing it
      regulator: stpmic1: fix registering missed regulators
      regulator: add device reference to regulator_dev
      regulator: treewide: drop local device_d reference
      of: platform: fix of_amba_device_create stub return value
      ARM: phytec-som-imx6: fix build dependency
      ARM: i.MX6X: cleanup build dependency
      ARCH: i.MX6: add support for OFDEVICE

Oleksij Rempel (1):
      ARM: dts: imx6q-prti6q: add pstore/ramoops node

Rouven Czerwinski (2):
      ARM: i.MX6UL: add iomux header for i.MX6UL
      ARM: imx: Add Support for Webasto ccbv2

Sascha Hauer (37):
      Kallsyms: Cleanup whitespaces
      treewide: Use driver macro
      regulator: pfuze: Use device_i2c_driver() macro
      net: phy: Add and use driver register macro
      magicvar: Use __UNIQUE_ID to generate name
      magicvar: Replace BAREBOX_MAGICVAR_NAMED with BAREBOX_MAGICVAR
      magicvar: retire BAREBOX_MAGICVAR_NAMED
      remoteproc: imx: Fix off-by-one error
      remoteproc: imx: Change SoC order in code
      remoteproc: imx: use function hooks in SoC data
      remoteproc: imx: Add i.MX8M support
      clk: i.MX8MQ: Add Cortex-M4 clk
      ARM: dts: i.MX8MQ: Add Cortex-M4 Coprocessor node
      ARM: dts: i.MX8MP: Add Cortex-M7 Coprocessor node
      Merge branch 'for-next/magicvar-unique-id' into for-next/reboot-mode
      of: Add common device tree register function
      dts: update to v5.9-rc6
      dts: update to v5.9-rc7
      dts: update to v5.9-rc8
      dts: update to v5.9
      Merge branch 'for-next/buildsystem-version' into master
      Merge branch 'for-next/clang-analyzer' into master
      Merge branch 'for-next/deep-probe-prepare' into master
      Merge branch 'for-next/dev-drvdata' into master
      Merge branch 'for-next/driver-macro' into master
      Merge branch 'for-next/dts' into master
      Merge branch 'for-next/imx' into master
      Merge branch 'for-next/magicvar-unique-id' into master
      Merge branch 'for-next/misc' into master
      Merge branch 'for-next/percent_pe' into master
      Merge branch 'for-next/reboot-mode' into master
      Merge branch 'for-next/remoteproc' into master
      Merge branch 'for-next/sandbox' into master
      usb: Fix initial max packet size
      ARM: dts: am335x: Fix pinctrl values
      firmware: Fix dependencies for PBL
      Release v2020.11.0

Steffen Trumtrar (4):
      Makefile: add buildsystem version variable
      common: print buildsystem version in barebox banner
      common: globalvar: add variable for buildsystem_version_string
      imd: add buildsystem version to metadata

Trent Piepho (4):
      aiodev: Name channels with device instance name
      aiodev: am335x_adc: Driver for ADC on TI AM335x SoCs
      ARM: am335x: Enable TSC/ADC clock
      ARM: beaglebone: Enable ADC

Uwe Kleine-K=F6nig (1):
      scripts/dtc: only append to HOST_EXTRACFLAGS instead of overwriting

Yunus Bas (1):
      ARM: dts: imx6ul: phycore: Add phyCORE i.MX6 UL with eMMC

duhuanpeng (1):
      asm/debug_ll_ns16550.h: add divisor parameter

 Documentation/boards/aarch64-qemu-virt.rst         |    8 +-
 Documentation/boards/stm32mp.rst                   |    4 +-
 Documentation/boards/x86.rst                       |    5 +
 Documentation/filesystems/smhfs.rst                |    8 +-
 Documentation/glossary.rst                         |   12 +-
 Documentation/user/defaultenv-2.rst                |   18 +-
 Documentation/user/reboot-mode.rst                 |   95 ++
 Makefile                                           |   25 +-
 arch/arm/boards/Makefile                           |    3 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |    2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   32 +-
 arch/arm/boards/kindle-mx50/board.c                |    4 +-
 arch/arm/boards/kindle3/kindle3.c                  |    4 +-
 arch/arm/boards/lxa-mc1/board.c                    |   17 +-
 arch/arm/boards/nxp-imx8mm-evk/board.c             |    2 +-
 arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c     |   14 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |    1 +
 arch/arm/boards/seeed-odyssey/board.c              |   18 +-
 arch/arm/boards/stm32mp157c-dk2/board.c            |   18 -
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c         |   26 -
 .../{stm32mp157c-dk2 =3D> stm32mp15xx-dkx}/Makefile  |    0
 arch/arm/boards/stm32mp15xx-dkx/board.c            |   32 +
 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c         |   34 +
 arch/arm/boards/webasto-ccbv2/Makefile             |    2 +
 arch/arm/boards/webasto-ccbv2/board.c              |   59 ++
 arch/arm/boards/webasto-ccbv2/ccbv2.h              |   15 +
 .../flash-header-imx6ul-webasto-ccbv2.imxcfg       |   88 ++
 arch/arm/boards/webasto-ccbv2/lowlevel.c           |   74 ++
 arch/arm/configs/imx_v7_defconfig                  |    1 +
 arch/arm/configs/stm32mp_defconfig                 |   16 +-
 arch/arm/cpu/dtb.c                                 |    8 +-
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/am335x-afi-gf.dts                     |  234 ++---
 arch/arm/dts/am335x-baltos-minimal.dts             |  136 +--
 arch/arm/dts/am335x-bone-common-strip.dtsi         |  100 +-
 arch/arm/dts/am335x-boneblack.dts                  |   54 +-
 arch/arm/dts/am335x-phytec-phycard-som.dtsi        |   72 +-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi        |  108 +-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi        |   98 +-
 arch/arm/dts/imx6qdl-prti6q.dtsi                   |   11 +
 arch/arm/dts/imx6qdl.dtsi                          |   21 +
 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts    |   50 +
 arch/arm/dts/imx6ul-webasto-ccbv2.dts              |  120 +++
 arch/arm/dts/imx6ul-webasto-ccbv2.dtsi             |  469 +++++++++
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts   |    5 +
 arch/arm/dts/imx8mp-evk.dts                        |    1 +
 arch/arm/dts/imx8mp.dtsi                           |    9 +
 arch/arm/dts/imx8mq.dtsi                           |    8 +
 arch/arm/dts/stm32mp151.dtsi                       |   15 +
 arch/arm/dts/stm32mp157a-dk1.dts                   |    2 +-
 arch/arm/dts/stm32mp157c-dk2.dts                   |    2 +-
 .../{stm32mp157a-dk1.dtsi =3D> stm32mp15xx-dkx.dtsi} |    0
 arch/arm/lib32/bootm.c                             |    9 +-
 arch/arm/mach-at91/at91_pmc_ll.c                   |    2 +
 arch/arm/mach-at91/ddramc.c                        |    6 +-
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h      |    5 +
 arch/arm/mach-at91/include/mach/at91_wdt.h         |    2 +-
 arch/arm/mach-at91/sam9_smc.c                      |    6 +-
 arch/arm/mach-bcm283x/mbox.c                       |    6 +-
 arch/arm/mach-imx/Kconfig                          |   11 +-
 arch/arm/mach-imx/esdctl.c                         |    7 +-
 arch/arm/mach-imx/iim.c                            |    8 +-
 arch/arm/mach-imx/include/mach/imx6-regs.h         |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx6ul.h       | 1064 ++++++++++++++++=
++++
 arch/arm/mach-layerscape/ppa.c                     |    5 +-
 arch/arm/mach-mxs/ocotp.c                          |    8 +-
 arch/arm/mach-omap/am33xx_clock.c                  |    4 +
 arch/arm/mach-omap/am33xx_scrm.c                   |    7 +-
 arch/arm/mach-omap/boot_order.c                    |    4 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h     |    1 +
 arch/arm/mach-stm32mp/Kconfig                      |    7 +-
 arch/arm/mach-stm32mp/ddrctrl.c                    |    6 +-
 arch/arm/mach-stm32mp/include/mach/bootsource.h    |   12 -
 arch/arm/mach-stm32mp/include/mach/revision.h      |   51 +
 arch/arm/mach-stm32mp/init.c                       |   71 +-
 arch/arm/mach-stm32mp/stm32image.c                 |    4 +-
 arch/arm/mach-tegra/tegra20-timer.c                |    6 +-
 arch/arm/mach-zynq/bootm-zynqimg.c                 |    4 +-
 arch/arm/mach-zynqmp/firmware-zynqmp.c             |    6 +-
 arch/kvx/lib/dtb.c                                 |   12 +-
 arch/mips/boot/dtb.c                               |    8 +-
 arch/mips/include/asm/debug_ll_ns16550.h           |    4 +-
 arch/mips/mach-ath79/art.c                         |    8 +-
 arch/openrisc/lib/dtb.c                            |    8 +-
 arch/riscv/boot/dtb.c                              |   14 +-
 arch/riscv/include/asm/debug_ll_ns16550.h          |    4 +-
 arch/sandbox/Kconfig                               |    7 +-
 arch/sandbox/Makefile                              |    1 +
 arch/sandbox/board/Makefile                        |    3 +-
 arch/sandbox/board/devices.c                       |    6 +-
 arch/sandbox/board/dtb.c                           |   28 +-
 arch/sandbox/board/env/init/state                  |   12 +
 arch/sandbox/board/hostfile.c                      |   94 +-
 arch/sandbox/board/power.c                         |   82 ++
 arch/sandbox/board/poweroff.c                      |   42 -
 arch/sandbox/board/watchdog.c                      |   84 ++
 arch/sandbox/configs/sandbox_defconfig             |   45 +-
 arch/sandbox/dts/Makefile                          |    4 +-
 arch/sandbox/dts/sandbox-state-example.dtsi        |   50 -
 arch/sandbox/dts/sandbox.dts                       |   94 +-
 arch/sandbox/dts/skeleton.dtsi                     |   13 -
 arch/sandbox/include/asm/io.h                      |    6 +-
 arch/sandbox/mach-sandbox/include/mach/hostfile.h  |    2 +
 arch/sandbox/mach-sandbox/include/mach/linux.h     |    5 +
 arch/sandbox/os/common.c                           |  135 ++-
 commands/Kconfig                                   |    4 +-
 commands/fbtest.c                                  |    5 +-
 commands/of_diff.c                                 |    4 +-
 commands/splash.c                                  |    5 +-
 commands/ubi.c                                     |    2 +-
 commands/uimage.c                                  |    4 +-
 common/Kconfig                                     |    6 +-
 common/blspec.c                                    |    2 +-
 common/boot.c                                      |    4 +-
 common/bootargs.c                                  |    6 +-
 common/bootchooser.c                               |   30 +-
 common/bootm.c                                     |   25 +-
 common/console.c                                   |    4 +-
 common/fastboot.c                                  |   11 +-
 common/globalvar.c                                 |    9 +-
 common/imd-barebox.c                               |    1 +
 common/imd.c                                       |    3 +
 common/kallsyms.c                                  |    4 +-
 common/machine_id.c                                |    2 +-
 common/memsize.c                                   |    2 +-
 common/misc.c                                      |    7 +-
 common/password.c                                  |    4 +-
 common/startup.c                                   |   33 +-
 common/state/state.c                               |    3 +-
 common/usbgadget.c                                 |   24 +-
 common/version.c                                   |    6 +
 crypto/rsa.c                                       |    2 +-
 crypto/sha2.c                                      |    4 -
 crypto/sha4.c                                      |    3 -
 defaultenv/Makefile                                |    1 +
 .../defaultenv-2-reboot-mode/bmode/bootloader      |    3 +
 defaultenv/defaultenv-2-reboot-mode/bmode/loader   |    2 +
 defaultenv/defaultenv-2-reboot-mode/bmode/recovery |    2 +
 defaultenv/defaultenv.c                            |    2 +
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/aiodev/Kconfig                             |    8 +
 drivers/aiodev/Makefile                            |    1 +
 drivers/aiodev/am335x_adc.c                        |  183 ++++
 drivers/aiodev/core.c                              |    4 +-
 drivers/aiodev/lm75.c                              |    7 +-
 drivers/aiodev/ti_am335x_tscadc.h                  |  163 +++
 drivers/base/driver.c                              |   11 +
 drivers/clk/clk-ar933x.c                           |    6 +-
 drivers/clk/clk-ar9344.c                           |    6 +-
 drivers/clk/clk-qoric.c                            |    2 +-
 drivers/clk/imx/clk-imx1.c                         |    6 +-
 drivers/clk/imx/clk-imx21.c                        |    6 +-
 drivers/clk/imx/clk-imx25.c                        |    6 +-
 drivers/clk/imx/clk-imx27.c                        |    6 +-
 drivers/clk/imx/clk-imx31.c                        |    6 +-
 drivers/clk/imx/clk-imx35.c                        |    6 +-
 drivers/clk/imx/clk-imx5.c                         |   27 +-
 drivers/clk/imx/clk-imx6.c                         |    6 +-
 drivers/clk/imx/clk-imx6sl.c                       |    6 +-
 drivers/clk/imx/clk-imx6sx.c                       |    6 +-
 drivers/clk/imx/clk-imx6ul.c                       |    6 +-
 drivers/clk/imx/clk-imx7.c                         |    6 +-
 drivers/clk/imx/clk-imx8mq.c                       |    5 +
 drivers/clk/mvebu/common.c                         |   12 +-
 drivers/clk/mvebu/corediv.c                        |    6 +-
 drivers/clk/mxs/clk-imx23.c                        |    6 +-
 drivers/clk/mxs/clk-imx28.c                        |    6 +-
 drivers/clk/socfpga/clk.c                          |    6 +-
 drivers/clk/tegra/clk-tegra124.c                   |    6 +-
 drivers/clk/tegra/clk-tegra20.c                    |    6 +-
 drivers/clk/tegra/clk-tegra30.c                    |    6 +-
 drivers/clk/zynq/clkc.c                            |    6 +-
 drivers/clocksource/amba-sp804.c                   |    6 +-
 drivers/clocksource/arm_smp_twd.c                  |    6 +-
 drivers/clocksource/bcm2835.c                      |    6 +-
 drivers/clocksource/digic.c                        |    6 +-
 drivers/clocksource/efi.c                          |    7 +-
 drivers/clocksource/efi_x86.c                      |    7 +-
 drivers/clocksource/mvebu.c                        |    6 +-
 drivers/clocksource/nomadik.c                      |    6 +-
 drivers/clocksource/orion.c                        |    6 +-
 drivers/clocksource/rk_timer.c                     |    6 +-
 drivers/clocksource/timer-atmel-pit.c              |    6 +-
 drivers/clocksource/timer-imx-gpt.c                |    6 +-
 drivers/clocksource/timer-ti-32k.c                 |    6 +-
 drivers/clocksource/timer-ti-dm.c                  |    6 +-
 drivers/clocksource/uemd.c                         |    6 +-
 drivers/dma/apbh_dma.c                             |    7 +-
 drivers/gpio/gpio-ath79.c                          |    6 +-
 drivers/gpio/gpio-davinci.c                        |    6 +-
 drivers/gpio/gpio-digic.c                          |    6 +-
 drivers/gpio/gpio-dw.c                             |    6 +-
 drivers/gpio/gpio-generic.c                        |    6 +-
 drivers/gpio/gpio-imx.c                            |    7 +-
 drivers/gpio/gpio-jz4740.c                         |    6 +-
 drivers/gpio/gpio-malta-fpga-i2c.c                 |    6 +-
 drivers/gpio/gpio-mpc8xxx.c                        |    6 +-
 drivers/gpio/gpio-mxs.c                            |    7 +-
 drivers/gpio/gpio-omap.c                           |    6 +-
 drivers/gpio/gpio-pl061.c                          |    6 +-
 drivers/gpio/gpio-stmpe.c                          |    6 +-
 drivers/gpio/gpio-tegra.c                          |    6 +-
 drivers/gpio/gpio-vf610.c                          |    6 +-
 drivers/hw_random/mxc-rngc.c                       |    2 +-
 drivers/led/led-pca955x.c                          |   83 +-
 drivers/mci/mci-bcm2835.c                          |    6 +-
 drivers/memory/mc-tegra124.c                       |    6 +-
 drivers/mfd/da9063.c                               |    4 +-
 drivers/mfd/mc13xxx.c                              |   31 +-
 drivers/mfd/superio.c                              |    3 +-
 drivers/mfd/syscon.c                               |    6 +-
 drivers/misc/acpi-test.c                           |    2 +-
 drivers/mtd/nand/nand_mxs.c                        |    4 +-
 drivers/mtd/peb.c                                  |   20 +-
 drivers/net/ar231x.c                               |    6 +-
 drivers/net/designware_tegra186.c                  |    5 +-
 drivers/net/phy/ar8327.c                           |    7 +-
 drivers/net/phy/at803x.c                           |    7 +-
 drivers/net/phy/davicom.c                          |    7 +-
 drivers/net/phy/dp83867.c                          |    6 +-
 drivers/net/phy/lxt.c                              |    7 +-
 drivers/net/phy/marvell.c                          |    7 +-
 drivers/net/phy/micrel.c                           |    7 +-
 drivers/net/phy/mv88e6xxx/port.c                   |    8 +-
 drivers/net/phy/national.c                         |    6 +-
 drivers/net/phy/phy.c                              |    6 +-
 drivers/net/phy/realtek.c                          |    7 +-
 drivers/net/phy/smsc.c                             |    6 +-
 drivers/net/usb/asix.c                             |   31 +-
 drivers/of/base.c                                  |  113 +++
 drivers/of/platform.c                              |    2 +-
 drivers/pci/pci-layerscape.c                       |    5 +-
 drivers/phy/usb-nop-xceiv.c                        |    6 +-
 drivers/pinctrl/imx-iomux-v1.c                     |    8 +-
 drivers/pinctrl/imx-iomux-v2.c                     |    6 +-
 drivers/pinctrl/imx-iomux-v3.c                     |   10 +-
 drivers/pinctrl/mvebu/armada-370.c                 |    6 +-
 drivers/pinctrl/mvebu/armada-xp.c                  |    7 +-
 drivers/pinctrl/mvebu/dove.c                       |    6 +-
 drivers/pinctrl/mvebu/kirkwood.c                   |    6 +-
 drivers/pinctrl/pinctrl-at91-pio4.c                |   10 +-
 drivers/pinctrl/pinctrl-at91.c                     |   12 +-
 drivers/pinctrl/pinctrl-bcm2835.c                  |    6 +-
 drivers/pinctrl/pinctrl-mxs.c                      |    6 +-
 drivers/pinctrl/pinctrl-single.c                   |    6 +-
 drivers/pinctrl/pinctrl-stm32.c                    |    6 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c               |    8 +-
 drivers/pinctrl/pinctrl-tegra20.c                  |    6 +-
 drivers/pinctrl/pinctrl-tegra30.c                  |   10 +-
 drivers/pinctrl/pinctrl-vf610.c                    |    6 +-
 drivers/power/Kconfig                              |    2 +
 drivers/power/Makefile                             |    2 +
 drivers/power/reset/Kconfig                        |   16 +
 drivers/power/reset/Makefile                       |    3 +
 drivers/power/reset/reboot-mode.c                  |  231 +++++
 drivers/power/reset/syscon-reboot-mode.c           |  129 +++
 drivers/regulator/anatop-regulator.c               |    1 +
 drivers/regulator/bcm2835.c                        |   24 +-
 drivers/regulator/core.c                           |    6 +
 drivers/regulator/fixed.c                          |    1 +
 drivers/regulator/pfuze.c                          |   13 +-
 drivers/regulator/stm32-pwr.c                      |    7 +-
 drivers/regulator/stpmic1_regulator.c              |    8 +-
 drivers/remoteproc/imx_rproc.c                     |  251 ++++-
 drivers/reset/core.c                               |    2 +-
 drivers/reset/reset-socfpga.c                      |    6 +-
 drivers/reset/reset-stm32.c                        |    6 +-
 drivers/serial/serial_cadence.c                    |    6 +-
 drivers/serial/serial_ns16550.c                    |    6 +-
 drivers/spi/spi.c                                  |    4 +-
 drivers/usb/core/usb.c                             |    8 +-
 drivers/usb/dwc2/dwc2.c                            |   16 +-
 drivers/usb/dwc2/dwc2.h                            |    4 +
 drivers/usb/dwc2/gadget.c                          |    6 +
 drivers/usb/dwc2/host.c                            |   13 +
 drivers/usb/imx/chipidea-imx.c                     |    5 +-
 drivers/usb/imx/imx-usb-misc.c                     |    8 +-
 drivers/usb/imx/imx-usb-phy.c                      |    8 +-
 drivers/usb/musb/musb_core.c                       |    7 +-
 drivers/usb/musb/musb_host.c                       |    4 +-
 drivers/usb/musb/phy-am335x.c                      |    6 +-
 drivers/video/imx-ipu-v3/imx-hdmi.c                |   39 +-
 drivers/video/imx-ipu-v3/imx-ldb.c                 |    8 +-
 drivers/video/imx-ipu-v3/ipu-common.c              |    5 +-
 drivers/video/imx-ipu-v3/ipufb.c                   |    6 +-
 drivers/video/omap.c                               |    7 +-
 drivers/video/ssd1307fb.c                          |    2 +-
 drivers/watchdog/ar9344_wdt.c                      |   21 +-
 drivers/watchdog/at91sam9_wdt.c                    |    6 +-
 drivers/watchdog/bcm2835_wdt.c                     |    6 +-
 drivers/watchdog/dw_wdt.c                          |   19 +-
 drivers/watchdog/stm32_iwdg.c                      |    2 +
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml      |    4 +-
 dts/Bindings/crypto/ti,sa2ul.yaml                  |    2 +-
 dts/Bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml   |    8 +-
 dts/Bindings/dma/xilinx/xlnx,zynqmp-dpdma.yaml     |    2 +-
 dts/Bindings/gpio/sgpio-aspeed.txt                 |    5 +-
 dts/Bindings/leds/cznic,turris-omnia-leds.yaml     |    2 +-
 dts/Bindings/media/i2c/imx274.txt                  |   38 -
 dts/Bindings/media/i2c/sony,imx274.yaml            |   76 ++
 dts/Bindings/net/renesas,ravb.txt                  |    1 +
 dts/src/arm/at91-sama5d2_icp.dts                   |    2 +-
 dts/src/arm/bcm2835-rpi.dtsi                       |    2 +-
 dts/src/riscv/kendryte/k210.dtsi                   |    6 +-
 firmware/Kconfig                                   |    5 +
 firmware/Makefile                                  |    4 +-
 fs/squashfs/inode.c                                |    6 -
 fs/ubifs/ubifs.c                                   |   12 +-
 images/Makefile.imx                                |    4 +
 images/Makefile.stm32mp                            |    8 +-
 include/aiodev.h                                   |    3 +-
 include/asm-generic/bitio.h                        |    2 +-
 include/common.h                                   |    1 +
 include/driver.h                                   |   24 +
 include/errno.h                                    |    5 -
 include/image-metadata.h                           |    1 +
 include/linux/phy.h                                |   20 +
 include/linux/reboot-mode.h                        |   38 +
 include/linux/string.h                             |    1 -
 include/magicvar.h                                 |   10 +-
 include/of.h                                       |   47 +
 include/regulator.h                                |    4 +
 include/string.h                                   |    2 +
 lib/Kconfig                                        |    2 +-
 lib/cmdlinepart.c                                  |    7 +-
 lib/string.c                                       |   13 +
 lib/vsprintf.c                                     |   64 +-
 net/dhcp.c                                         |   20 +-
 net/fastboot.c                                     |    5 +-
 net/ifup.c                                         |    5 +-
 net/net.c                                          |    6 +-
 scripts/dtc/Makefile                               |    2 +-
 scripts/gen-dtb-s                                  |    6 +-
 scripts/kwboot.c                                   |    2 +-
 scripts/mkcompile_h                                |    3 +
 336 files changed, 5213 insertions(+), 1967 deletions(-)
 create mode 100644 Documentation/user/reboot-mode.rst
 delete mode 100644 arch/arm/boards/stm32mp157c-dk2/board.c
 delete mode 100644 arch/arm/boards/stm32mp157c-dk2/lowlevel.c
 rename arch/arm/boards/{stm32mp157c-dk2 =3D> stm32mp15xx-dkx}/Makefile (10=
0%)
 create mode 100644 arch/arm/boards/stm32mp15xx-dkx/board.c
 create mode 100644 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
 create mode 100644 arch/arm/boards/webasto-ccbv2/Makefile
 create mode 100644 arch/arm/boards/webasto-ccbv2/board.c
 create mode 100644 arch/arm/boards/webasto-ccbv2/ccbv2.h
 create mode 100644 arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webas=
to-ccbv2.imxcfg
 create mode 100644 arch/arm/boards/webasto-ccbv2/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
 create mode 100644 arch/arm/dts/imx6ul-webasto-ccbv2.dts
 create mode 100644 arch/arm/dts/imx6ul-webasto-ccbv2.dtsi
 create mode 100644 arch/arm/dts/imx8mp.dtsi
 rename arch/arm/dts/{stm32mp157a-dk1.dtsi =3D> stm32mp15xx-dkx.dtsi} (100%)
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx6ul.h
 create mode 100644 arch/sandbox/board/env/init/state
 create mode 100644 arch/sandbox/board/power.c
 delete mode 100644 arch/sandbox/board/poweroff.c
 create mode 100644 arch/sandbox/board/watchdog.c
 delete mode 100644 arch/sandbox/dts/sandbox-state-example.dtsi
 delete mode 100644 arch/sandbox/dts/skeleton.dtsi
 create mode 100644 defaultenv/defaultenv-2-reboot-mode/bmode/bootloader
 create mode 100755 defaultenv/defaultenv-2-reboot-mode/bmode/loader
 create mode 100644 defaultenv/defaultenv-2-reboot-mode/bmode/recovery
 create mode 100644 drivers/aiodev/am335x_adc.c
 create mode 100644 drivers/aiodev/ti_am335x_tscadc.h
 create mode 100644 drivers/power/Kconfig
 create mode 100644 drivers/power/Makefile
 create mode 100644 drivers/power/reset/Kconfig
 create mode 100644 drivers/power/reset/Makefile
 create mode 100644 drivers/power/reset/reboot-mode.c
 create mode 100644 drivers/power/reset/syscon-reboot-mode.c
 delete mode 100644 dts/Bindings/media/i2c/imx274.txt
 create mode 100644 dts/Bindings/media/i2c/sony,imx274.yaml
 create mode 100644 include/linux/reboot-mode.h
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
