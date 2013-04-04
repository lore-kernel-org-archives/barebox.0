Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNfrM-00019y-Hn
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 08:49:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UNfrI-0008FM-1M
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 10:49:24 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UNfrI-0003Lq-0M
 for barebox@lists.infradead.org; Thu, 04 Apr 2013 10:49:24 +0200
Date: Thu, 4 Apr 2013 10:49:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130404084923.GG1906@pengutronix.de>
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
Subject: v2013.04.0
To: barebox@lists.infradead.org


Hi All,

We have an april Release, below is what happened since march. I
currently have problems uploading to our webserver, so there is no
tarball right now, only the release tag in git.

Sascha

----------------------------------------------------------------
Alexander Aring (7):
      hush: add getopt only if it enabled
      getopt: change optstring to const char*
      sata-imx: fix depends on ARCH_IMX
      net: fix cpsw depends on ARCH_OMAP
      fs: fix return type of read
      fs: add pread and pwrite functions
      nandtest: fix length calculation

Alexander Shiyan (28):
      ARM: ccmx51: Fix printing board HW-revision
      ARM: ccmx51: Replace ifdefs with IS_ENABLED
      ARM: ccmx51: Add powerup delay for LAN9221
      Introduce device_platform_driver() macro
      Use new device_platform_driver() macro for drivers
      ARM: clps711x: Rework lowlevel initialization code
      ARM: clps711x: Move basic lowlevel initialization in common CLPS711X =
location
      ARM: clps711x: Adds config option for CPU PLL multiplier
      ARM: clps711x: Remove unused "start" declaration from reset.c
      ARM: clps711x: Mark private functions that not will be used outside a=
s static
      ARM: clep7212: Fix NULL pointer exception if MMU is enabled
      ARM: clps711x: Move memory initialization in common CLPS711X location
      ARM: clep7212: Update default environment
      ARM: clps711x: Update defconfig
      Add missing SZ_xx defines
      mfd: Using MFD_xx prefix for symbols
      Make "dev_get_resource" publicly available
      ARM: pcm038: Remove duplicate imx27_barebox_entry() call
      ARM: pcm038: Select IIM by default
      ARM: pcm038: Fix serial number IIM-address
      ARM: pcm970: Fix bug with CompactFlash
      ARM: pcm970: Replace #ifdef with IS_ENABLED()
      ARM: i.MX27: Use DEVICE_ID_SINGLE for IIM, CCM and ESDCTL
      ARM: pcm038: Using "get_ram_size" for determine SRAM size
      ARM: i.MX: Replace numbers with predefined constants in several places
      mtd: nand: Fix compiler warning
      w1: Fix compiler warning
      usb: chipidea-imx: Fix usb initialization

Antony Pavlov (1):
      usb: fix build for big-endian platform

Christian Kapeller (1):
      bareboxenv: Return proper exit code on failure.

Eric B=E9nard (6):
      mx23-evk: fix MCI support
      mx23-evk: add USB gadget support
      mx23-evk: update defconfig
      env: add register_persistent_environment
      imx23-olinuxino: swith to generic peristent env
      falconwing: switch to generic peristent env

Fabio Porcedda (6):
      at91sam9260/9g20ek: cleanup coding style
      at91sam9260/9g20ek: enable clock via clock framework
      at91sam9260/9g20ek: use IS_ENABLED instead of #if/#ifdef
      at91sam9260/9g20ek: refactor init_board script
      defenv2: comment setting default values in /env/config
      ARM at91 telit-evk-pro3: move config-board out of /env/init

George Pontis (1):
      i.MX53 i2c, add support for third i2c interface

Hubert Feurstein (5):
      net fec_imx: add support for i.MX6 1000Mbps mode
      ARM i.MX6: Add support for SabreSD board
      net: fec_imx: use dev_err and dev_warn instead of printf
      net: fec_imx: ensure constant timeout in fec_halt
      ARM: sabresd: move config-board out of /env/init

Jan Weitzel (1):
      fb: calculate resource end

Jean-Christophe PLAGNIOL-VILLARD (34):
      clocksource: add ARM AMBA SP804 support
      arm: add macro cpu_is_xxx
      arm: cache-l2x0 update sync define with Linux 3.5
      arm: move outercase to cpu.c as some SoC as the ux500 always need to =
flush the l2x0
      arm: add vexpress board support
      amba: add oftree probe support
      amba: introduce amba_device_get_pid/cid
      sp804: introduce amba_is_arm_sp804 to detect if the sp804 is present =
at the address
      vexpress: detect the board periph mapping and detecting the sp804 map=
ping
      of: make of_add_memory available for other board
      of_add_memory: check the device_type is memory
      highbank: add xgmac support
      ahci-generic: add oftree support
      arm: add highbank support
      highbank: add l2x0 support
      highbank: use the provided dtb by the firmware to probe barebox devic=
e and mem size
      linux/types: import __aligned_x64 from the kernel
      filetype: add GPT support
      partitons: add framework
      disk: introduce partition name
      disk: partitions: add EFI GUID Partition Table
      highbank: add power off support
      highbank: add wfi for poweroff
      Makefile.lib: introduce lwl-y for lowlevel code
      switch boards to lwl-y
      smc911111: fix send and recv return value
      serial/Makefile: drop out of date comments
      of: add do_fixup_by_compatible with u32 and string version
      highbank: move register value to include/mach
      highbank: add of fixup
      switch more boards to lwl-y
      defaultenv-2: add boot sequence
      splash: fix background color support
      macb: fix gem_recv circular buffer handling

Josh Cartwright (1):
      parameter: fix build warning when !CONFIG_PARAMETER

Marc Kleine-Budde (4):
      driver/serial: Kconfig: explicitly state that existing mxs driver is =
for the debug uart
      driver/serial: add driver for the mxs application uart
      driver/serial: auart: fix flush
      driver/serial: stm-serial: fix flush

Maxime Ripard (4):
      cfa-10036: Use the second MMC partition to store the environment
      cfa10036: Update the environment
      log2: Fix declaration of __roundup_pow_of_two
      ARM: cfa10036: Remove the boot partition and boot from ext

Michael Grzeschik (3):
      ARM mxs: ssp move to common register layout
      SPI: Add i.MX 23/28 SPI driver support
      mx28evk: add m25p80 flash via ssp2

Rob Herring (1):
      ahci: handle COMINIT received during spin-up

Sascha Hauer (42):
      console: consolidate common console code
      defenv2: move config-board out of /env/init
      ARM i.MX6: Fix HSIC pad definitions
      USB chipidea i.MX: Fix PTS mask for HSIC
      USB ehci: Add platform specific init calls
      USB i.MX chipidea: implement post init support
      USB i.MX6: Add HSIC support
      libmtd: rename functions from mtd_* to libmtd_*
      mtd: rename mtd file operations callback functions
      mtd: Add mtd_* functions
      mtd: Use mtd_* functions where appropriate
      mtd: implement mtd_lock and mtd_unlock
      nor flash: integrate into mtd
      USB i.MX: Add chipidea gadget support
      mtd nor: remove unnecessary 'depend' in Kconfig
      hush: implement $*
      ARM i.MX pcm043: Switch to new environment
      ARM i.MX pcm043: Use imx_bootsource() to detect bootsource
      net: dhcp: fix typo
      Merge branch 'for-next/ahci'
      Merge branch 'for-next/arm-l2x0'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/clps711x'
      Merge branch 'for-next/console'
      Merge branch 'for-next/dt'
      Merge branch 'for-next/gpt'
      Merge branch 'for-next/highbank'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/vexpress'
      libubi: Use global mtd_all_ff function
      ARM: OMAP3: invalidate L2 cache using ROM API
      ARM: OMAP: beagle: Add missing MMC iomux setup
      Merge branch 'pu/omap3'
      fix another brown paper bag bug introduced with compile time loglevel
      usb: ehci: initialize ehci_data
      dummy malloc: Add licence header
      ARM i.MX ESDCTL: Fix default enabled esdctl v2 controller
      Release v2013.04.0

Steffen Trumtrar (1):
      ARM: tqma53: change uart to second uart

Vicente Bergas (1):
      DeviceTree: add support for initrd in the DT

 Makefile                                           |   2 +-
 arch/arm/Kconfig                                   |  26 +-
 arch/arm/Makefile                                  |   5 +
 arch/arm/boards/a9m2410/Makefile                   |   3 +-
 arch/arm/boards/a9m2440/Makefile                   |   3 +-
 arch/arm/boards/archosg9/Makefile                  |   3 +-
 arch/arm/boards/at91sam9260ek/env/bin/init_board   |  54 +-
 arch/arm/boards/at91sam9260ek/init.c               |  62 +-
 arch/arm/boards/at91sam9261ek/Makefile             |   4 +-
 arch/arm/boards/at91sam9263ek/Makefile             |   4 +-
 arch/arm/boards/beagle/Makefile                    |   3 +-
 arch/arm/boards/beagle/env/{init =3D> }/config-board |   0
 arch/arm/boards/beagle/lowlevel.c                  |  13 +-
 arch/arm/boards/beaglebone/Makefile                |   5 +-
 arch/arm/boards/ccxmx51/Makefile                   |   7 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                  |  16 +-
 arch/arm/boards/chumby_falconwing/Makefile         |   3 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |  41 +-
 arch/arm/boards/clep7212/Makefile                  |   4 +-
 arch/arm/boards/clep7212/clep7212.c                |  16 +-
 arch/arm/boards/clep7212/env/bin/mtdparts-add      |  21 -
 arch/arm/boards/clep7212/env/boot/nor              |   2 +-
 arch/arm/boards/clep7212/env/config                |  20 +
 arch/arm/boards/clep7212/env/init/automount        |   6 -
 arch/arm/boards/clep7212/env/init/bootargs-base    |   8 -
 arch/arm/boards/clep7212/env/init/general          |  12 -
 arch/arm/boards/clep7212/env/init/hostname         |   8 -
 arch/arm/boards/clep7212/env/init/mtdparts-nor     |  11 +
 arch/arm/boards/clep7212/lowlevel.c                |  39 +-
 arch/arm/boards/crystalfontz-cfa10036/Makefile     |   3 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   8 +-
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |   4 +-
 .../env/{init =3D> }/config-board                    |   0
 .../crystalfontz-cfa10036/env/init/automount       |   4 +-
 arch/arm/boards/edb93xx/Makefile                   |   4 +-
 arch/arm/boards/efika-mx-smartbook/Makefile        |   6 +-
 .../efika-mx-smartbook/env/{init =3D> }/config-board |   0
 arch/arm/boards/eukrea_cpuimx25/Makefile           |   6 +-
 arch/arm/boards/eukrea_cpuimx27/Makefile           |   3 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   4 +-
 arch/arm/boards/eukrea_cpuimx35/Makefile           |   6 +-
 arch/arm/boards/eukrea_cpuimx51/Makefile           |   6 +-
 arch/arm/boards/freescale-mx23-evk/Makefile        |   3 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  69 +-
 arch/arm/boards/freescale-mx25-3-stack/Makefile    |   3 +-
 arch/arm/boards/freescale-mx28-evk/Makefile        |   3 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  29 +
 arch/arm/boards/freescale-mx35-3-stack/Makefile    |   6 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |   6 +-
 .../freescale-mx51-pdk/env/{init =3D> }/config-board |   0
 arch/arm/boards/freescale-mx53-loco/Makefile       |   6 +-
 .../env/{init =3D> }/config-board                    |   0
 arch/arm/boards/freescale-mx53-smd/Makefile        |   6 +-
 arch/arm/boards/freescale-mx6-arm2/Makefile        |   7 +-
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |   7 +-
 .../env/{init =3D> }/config-board                    |   0
 arch/arm/boards/freescale-mx6-sabresd/Makefile     |   3 +
 arch/arm/boards/freescale-mx6-sabresd/board.c      | 244 +++++++
 arch/arm/boards/freescale-mx6-sabresd/config.h     |   4 +
 .../boards/freescale-mx6-sabresd/env/config-board  |   7 +
 .../boards/freescale-mx6-sabresd/flash_header.c    | 178 +++++
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  10 +
 arch/arm/boards/friendlyarm-mini2440/Makefile      |   4 +-
 arch/arm/boards/friendlyarm-mini6410/Makefile      |   3 +-
 arch/arm/boards/friendlyarm-tiny210/Makefile       |   4 +-
 arch/arm/boards/friendlyarm-tiny6410/Makefile      |   5 +-
 arch/arm/boards/guf-cupid/Makefile                 |   3 +-
 arch/arm/boards/guf-neso/Makefile                  |   3 +-
 arch/arm/boards/guf-vincell/Makefile               |   3 +-
 arch/arm/boards/highbank/Makefile                  |   3 +
 arch/arm/boards/highbank/config.h                  |   5 +
 arch/arm/boards/highbank/env/bin/init_board        |   7 +
 arch/arm/boards/highbank/env/config                |  33 +
 arch/arm/boards/highbank/init.c                    | 132 ++++
 arch/arm/boards/highbank/lowlevel.c                |  17 +
 arch/arm/boards/imx21ads/Makefile                  |   3 +-
 arch/arm/boards/imx233-olinuxino/Makefile          |   3 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  45 +-
 arch/arm/boards/imx27ads/Makefile                  |   3 +-
 arch/arm/boards/karo-tx25/Makefile                 |   3 +-
 arch/arm/boards/karo-tx28/Makefile                 |   3 +-
 arch/arm/boards/karo-tx51/Makefile                 |   6 +-
 arch/arm/boards/karo-tx53/Makefile                 |   6 +-
 .../boards/karo-tx53/env/{init =3D> }/config-board   |   0
 arch/arm/boards/mioa701/Makefile                   |   3 +-
 arch/arm/boards/mmccpu/Makefile                    |   4 +-
 arch/arm/boards/netx/Makefile                      |   4 +-
 arch/arm/boards/nhk8815/Makefile                   |   3 +-
 arch/arm/boards/omap343xdsp/Makefile               |   3 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             |   2 -
 arch/arm/boards/omap3evm/Makefile                  |   3 +-
 arch/arm/boards/panda/Makefile                     |   3 +-
 arch/arm/boards/panda/env/{init =3D> }/config-board  |   0
 arch/arm/boards/pcm027/Makefile                    |   3 +-
 arch/arm/boards/pcm037/Makefile                    |   3 +-
 arch/arm/boards/pcm037/env/{init =3D> }/config-board |   0
 arch/arm/boards/pcm038/Makefile                    |   4 +-
 arch/arm/boards/pcm038/env/{init =3D> }/config-board |   0
 arch/arm/boards/pcm038/lowlevel.c                  |   2 -
 arch/arm/boards/pcm038/pcm038.c                    |  12 +-
 arch/arm/boards/pcm038/pcm970.c                    |  11 +-
 arch/arm/boards/pcm043/Makefile                    |   3 +-
 arch/arm/boards/pcm043/env/boot/nand-ubi           |  10 +
 arch/arm/boards/pcm043/env/config                  |  53 --
 arch/arm/boards/pcm043/env/config-board            |   7 +
 arch/arm/boards/pcm043/env/init/mtdparts-nand      |  11 +
 arch/arm/boards/pcm043/env/init/mtdparts-nor       |  11 +
 arch/arm/boards/pcm043/pcm043.c                    |  33 +-
 arch/arm/boards/pcm049/Makefile                    |   4 +-
 arch/arm/boards/pcm051/Makefile                    |   3 +-
 arch/arm/boards/phycard-a-l1/Makefile              |   3 +-
 arch/arm/boards/phycard-a-xl2/Makefile             |   4 +-
 arch/arm/boards/phycard-i.MX27/Makefile            |   3 +-
 arch/arm/boards/pm9261/Makefile                    |   4 +-
 arch/arm/boards/pm9263/Makefile                    |   4 +-
 arch/arm/boards/raspberry-pi/Makefile              |   3 +-
 arch/arm/boards/scb9328/Makefile                   |   3 +-
 .../telit-evk-pro3/env/{init =3D> }/config-board     |   0
 arch/arm/boards/tny-a926x/Makefile                 |   4 +-
 arch/arm/boards/toshiba-ac100/Makefile             |   3 +-
 arch/arm/boards/tqma53/Makefile                    |   6 +-
 arch/arm/boards/tqma53/board.c                     |   2 +-
 arch/arm/boards/tqma53/env/{init =3D> }/config-board |   0
 arch/arm/boards/usb-a926x/Makefile                 |   4 +-
 arch/arm/boards/versatile/Makefile                 |   3 +-
 arch/arm/boards/vexpress/Kconfig                   |  10 +
 arch/arm/boards/vexpress/Makefile                  |   3 +
 arch/arm/boards/vexpress/config.h                  |   5 +
 arch/arm/boards/vexpress/env/config                |  40 ++
 arch/arm/boards/vexpress/init.c                    | 145 ++++
 arch/arm/boards/vexpress/lowlevel.c                |  22 +
 arch/arm/configs/archosg9_defconfig                |   4 +-
 arch/arm/configs/cfa10036_defconfig                |   1 +
 arch/arm/configs/clps711x_defconfig                |   5 +-
 arch/arm/configs/edb93xx_defconfig                 |   1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig         |   3 +-
 arch/arm/configs/freescale-mx6-sabresd_defconfig   |  71 ++
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   1 +
 arch/arm/configs/highbank_defconfig                |  62 ++
 arch/arm/configs/imx23evk_defconfig                |  17 +-
 arch/arm/configs/mmccpu_defconfig                  |   1 +
 arch/arm/configs/mx21ads_defconfig                 |   1 +
 arch/arm/configs/mx27ads_defconfig                 |   1 +
 arch/arm/configs/netx_nxdb500_defconfig            |   1 +
 arch/arm/configs/omap3530_beagle_defconfig         |   2 +-
 arch/arm/configs/pcm027_defconfig                  |   1 +
 arch/arm/configs/pcm043_defconfig                  |  34 +-
 arch/arm/configs/pcm049_defconfig                  |   2 +-
 arch/arm/configs/pm9263_defconfig                  |   1 +
 arch/arm/configs/scb9328_defconfig                 |   1 +
 arch/arm/configs/vexpress_ca9_defconfig            |  61 ++
 arch/arm/configs/vexpress_defconfig                |  60 ++
 arch/arm/cpu/cache-l2x0.c                          |  32 +-
 arch/arm/cpu/cpu.c                                 |  22 +-
 arch/arm/cpu/mmu.c                                 |  15 -
 arch/arm/cpu/mmu.h                                 |   6 +
 arch/arm/include/asm/cache-l2x0.h                  | 108 ++-
 arch/arm/include/asm/hardware/arm_timer.h          |   5 +
 arch/arm/include/asm/hardware/sp810.h              |  68 ++
 arch/arm/include/asm/system_info.h                 |  63 ++
 arch/arm/lib/armlinux.c                            |   2 +
 arch/arm/mach-at91/Makefile                        |   4 +-
 arch/arm/mach-clps711x/Kconfig                     |  13 +
 arch/arm/mach-clps711x/Makefile                    |   1 +
 arch/arm/mach-clps711x/clock.c                     |   8 +-
 arch/arm/mach-clps711x/devices.c                   |  14 +-
 arch/arm/mach-clps711x/include/mach/clps711x.h     |   2 +
 arch/arm/mach-clps711x/lowlevel.c                  |  69 ++
 arch/arm/mach-clps711x/reset.c                     |   2 -
 arch/arm/mach-ep93xx/Makefile                      |   5 +-
 arch/arm/mach-highbank/Kconfig                     |  18 +
 arch/arm/mach-highbank/Makefile                    |   4 +
 arch/arm/mach-highbank/cache-l2x0.c                |  45 ++
 arch/arm/mach-highbank/core.c                      |  47 ++
 arch/arm/mach-highbank/core.h                      |   2 +
 arch/arm/mach-highbank/devices.c                   |  74 +++
 arch/arm/mach-highbank/include/mach/clkdev.h       |   7 +
 arch/arm/mach-highbank/include/mach/debug_ll.h     |  26 +
 arch/arm/mach-highbank/include/mach/devices.h      |  17 +
 arch/arm/mach-highbank/include/mach/gpio.h         |   1 +
 arch/arm/mach-highbank/include/mach/hardware.h     |  14 +
 arch/arm/mach-highbank/include/mach/sysregs.h      |  57 ++
 arch/arm/mach-highbank/reset.c                     |  29 +
 arch/arm/mach-highbank/smc.S                       |  27 +
 arch/arm/mach-imx/Kconfig                          |  11 +-
 arch/arm/mach-imx/Makefile                         |   6 +-
 arch/arm/mach-imx/clk-imx5.c                       |   1 +
 arch/arm/mach-imx/esdctl.c                         |  45 +-
 arch/arm/mach-imx/imx27.c                          |  10 +-
 arch/arm/mach-imx/imx53.c                          |   2 +-
 arch/arm/mach-imx/imx6.c                           |   2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   5 +
 arch/arm/mach-imx/include/mach/iomux-mx6.h         |  19 +-
 arch/arm/mach-mxs/include/mach/ssp.h               | 120 ++++
 arch/arm/mach-omap/Makefile                        |   6 +-
 arch/arm/mach-omap/auxcr.S                         |  12 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |   8 +-
 arch/arm/mach-omap/omap3_core.S                    |  87 ---
 arch/arm/mach-omap/omap3_generic.c                 |   4 +-
 arch/arm/mach-vexpress/Kconfig                     |  18 +
 arch/arm/mach-vexpress/Makefile                    |   3 +
 arch/arm/mach-vexpress/devices.c                   |  73 ++
 arch/arm/mach-vexpress/include/mach/clkdev.h       |   7 +
 arch/arm/mach-vexpress/include/mach/debug_ll.h     |  33 +
 arch/arm/mach-vexpress/include/mach/devices.h      |  22 +
 arch/arm/mach-vexpress/reset.c                     |  22 +
 arch/arm/mach-vexpress/v2m.c                       |  85 +++
 arch/blackfin/configs/ipe337_defconfig             |   1 +
 arch/nios2/configs/generic_defconfig               |   1 +
 arch/ppc/configs/pcm030_defconfig                  |   1 +
 arch/sandbox/board/hostfile.c                      |   8 +-
 commands/nandtest.c                                |  44 +-
 commands/splash.c                                  |   6 +-
 commands/ubiformat.c                               |   8 +-
 common/Kconfig                                     |  16 +-
 common/Makefile                                    |   4 +-
 common/console.c                                   |  85 ---
 common/console_common.c                            | 110 +++
 common/console_none.c                              |  42 --
 common/console_simple.c                            |  83 ---
 common/dummy_malloc.c                              |  23 +
 common/environment.c                               |  40 ++
 common/filetype.c                                  |  52 ++
 common/hush.c                                      |  24 +-
 common/oftree.c                                    |  93 +++
 common/partitions.c                                | 187 +++---
 common/partitions/Kconfig                          |  32 +
 common/partitions/Makefile                         |   2 +
 common/partitions/dos.c                            |  88 +++
 common/partitions/efi.c                            | 477 +++++++++++++
 common/partitions/efi.h                            | 123 ++++
 common/partitions/parser.h                         |  37 ++
 defaultenv-2/base/bin/_boot                        |  44 ++
 defaultenv-2/base/bin/_boot_help                   |  20 +
 defaultenv-2/base/bin/_boot_list                   |   7 +
 defaultenv-2/base/bin/boot                         |  67 +-
 defaultenv-2/base/bin/init                         |   1 +
 defaultenv-2/base/config                           |  14 +-
 drivers/Kconfig                                    |   2 +-
 drivers/Makefile                                   |   1 -
 drivers/amba/Kconfig                               |   2 +
 drivers/amba/bus.c                                 |  11 +-
 drivers/ata/Kconfig                                |   1 +
 drivers/ata/ahci.c                                 |  28 +-
 drivers/ata/intf_platform_ide.c                    |   8 +-
 drivers/ata/pata-imx.c                             |   8 +-
 drivers/ata/sata-imx.c                             |   8 +-
 drivers/base/driver.c                              |   2 +-
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/amba-sp804.c                   |  94 +++
 drivers/gpio/Kconfig                               |   2 +-
 drivers/i2c/busses/i2c-gpio.c                      |   7 +-
 drivers/i2c/busses/i2c-imx.c                       |   7 +-
 drivers/i2c/busses/i2c-omap.c                      |   8 +-
 drivers/i2c/busses/i2c-versatile.c                 |   8 +-
 drivers/input/gpio_keys.c                          |   8 +-
 drivers/input/imx_keypad.c                         |   8 +-
 drivers/mci/Makefile                               |   2 +-
 drivers/mci/atmel_mci.c                            |   8 +-
 drivers/mci/imx-esdhc.c                            |   9 +-
 drivers/mci/imx.c                                  |  10 +-
 drivers/mci/mxs.c                                  | 127 +---
 drivers/mci/omap_hsmmc.c                           |  13 +-
 drivers/mci/pxamci.c                               |   9 +-
 drivers/mci/s3c.c                                  |   9 +-
 drivers/mfd/Kconfig                                |  26 +-
 drivers/mfd/Makefile                               |  18 +-
 drivers/misc/jtag.c                                |   8 +-
 drivers/mtd/Kconfig                                |   1 +
 drivers/mtd/Makefile                               |   1 +
 drivers/mtd/core.c                                 | 111 +++-
 drivers/mtd/devices/docg3.c                        |   8 +-
 drivers/mtd/mtdraw.c                               |   2 +-
 drivers/mtd/nand/atmel_nand.c                      |   8 +-
 drivers/mtd/nand/nand_bbt.c                        |   4 +-
 drivers/mtd/nand/nand_imx.c                        |  12 +-
 drivers/mtd/nand/nand_mxs.c                        |   8 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |   8 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |  12 +-
 drivers/mtd/nand/nand_write.c                      |   2 +-
 drivers/mtd/nand/nomadik_nand.c                    |   9 +-
 drivers/{ =3D> mtd}/nor/Kconfig                      |  14 +-
 drivers/{ =3D> mtd}/nor/Makefile                     |   0
 drivers/{ =3D> mtd}/nor/cfi_flash.c                  |  90 +--
 drivers/{ =3D> mtd}/nor/cfi_flash.h                  |   1 -
 drivers/{ =3D> mtd}/nor/cfi_flash_amd.c              |   0
 drivers/{ =3D> mtd}/nor/cfi_flash_intel.c            |   0
 drivers/mtd/ubi/io.c                               |   8 +-
 drivers/net/Kconfig                                |   4 +
 drivers/net/Makefile                               |   1 +
 drivers/net/altera_tse.c                           |  10 +-
 drivers/net/at91_ether.c                           |   8 +-
 drivers/net/cpsw.c                                 |   8 +-
 drivers/net/cs8900.c                               |   9 +-
 drivers/net/davinci_emac.c                         |   9 +-
 drivers/net/designware.c                           |   8 +-
 drivers/net/dm9k.c                                 |   9 +-
 drivers/net/ep93xx.c                               |   9 +-
 drivers/net/fec_imx.c                              |  48 +-
 drivers/net/fec_imx.h                              |   1 +
 drivers/net/fec_mpc5200.c                          |  10 +-
 drivers/net/gianfar.c                              |   9 +-
 drivers/net/ks8851_mll.c                           |   9 +-
 drivers/net/macb.c                                 |  41 +-
 drivers/net/netx_eth.c                             |  10 +-
 drivers/net/smc91111.c                             |  21 +-
 drivers/net/smc911x.c                              |  10 +-
 drivers/net/tap.c                                  |   9 +-
 drivers/net/xgmac.c                                | 740 +++++++++++++++++=
++++
 drivers/of/base.c                                  |  86 ++-
 drivers/serial/Kconfig                             |   6 +-
 drivers/serial/Makefile                            |   7 +-
 drivers/serial/serial_auart.c                      | 238 +++++++
 drivers/serial/stm-serial.c                        |   3 +-
 drivers/spi/Kconfig                                |   5 +
 drivers/spi/Makefile                               |   1 +
 drivers/spi/altera_spi.c                           |   8 +-
 drivers/spi/atmel_spi.c                            |   9 +-
 drivers/spi/imx_spi.c                              |  10 +-
 drivers/spi/mxs_spi.c                              | 289 ++++++++
 drivers/spi/omap3_spi.c                            |   8 +-
 drivers/usb/gadget/at91_udc.c                      |   8 +-
 drivers/usb/gadget/fsl_udc.c                       |  20 +-
 drivers/usb/gadget/pxa27x_udc.c                    |   9 +-
 drivers/usb/host/ehci-atmel.c                      |   8 +-
 drivers/usb/host/ehci-hcd.c                        |  26 +-
 drivers/usb/host/ohci-at91.c                       |   8 +-
 drivers/usb/host/ohci-hcd.c                        |  10 +-
 drivers/usb/imx/chipidea-imx.c                     |  61 +-
 drivers/usb/imx/imx-usb-misc.c                     | 123 +++-
 drivers/usb/otg/Kconfig                            |   2 +-
 drivers/video/atmel_hlcdfb.c                       |   7 +-
 drivers/video/atmel_lcdfb.c                        |   7 +-
 drivers/video/fb.c                                 |   4 +-
 drivers/video/imx-ipu-fb.c                         |   8 +-
 drivers/video/imx.c                                |   9 +-
 drivers/video/pxa.c                                |   8 +-
 drivers/video/s3c24xx.c                            |   8 +-
 drivers/video/sdl.c                                |   7 +-
 drivers/video/stm.c                                |   8 +-
 drivers/w1/masters/w1-gpio.c                       |   7 +-
 drivers/w1/w1.c                                    |   2 +-
 drivers/watchdog/im28wd.c                          |   9 +-
 drivers/watchdog/imxwd.c                           |   8 +-
 fs/fs.c                                            |  88 ++-
 include/driver.h                                   |  16 +
 include/envfs.h                                    |   2 +
 include/filetype.h                                 |   1 +
 include/fs.h                                       |   4 +-
 include/getopt.h                                   |   2 +-
 include/linux/amba/bus.h                           |  28 +
 include/linux/amba/sp804.h                         |  30 +
 include/linux/amba/sp805.h                         |  32 +
 include/linux/efi.h                                | 547 +++++++++++++++
 include/linux/log2.h                               |   9 +
 include/linux/mtd/mtd.h                            |   9 +
 include/linux/types.h                              |  13 +
 include/mfd/mc34704.h                              |   6 +-
 include/mfd/twl-core.h                             |   6 +-
 include/mfd/twl4030.h                              |   6 +-
 include/mfd/twl6030.h                              |   6 +-
 include/mtd/libmtd.h                               |   8 +-
 include/of.h                                       |  20 +
 include/param.h                                    |   2 +-
 include/printk.h                                   |   5 +-
 include/sizes.h                                    |  12 +
 include/usb/chipidea-imx.h                         |   3 +
 include/usb/ehci.h                                 |   5 +
 include/usb/fsl_usb2.h                             |   6 +
 include/usb/usb.h                                  |   2 +-
 lib/getopt.c                                       |   4 +-
 lib/libmtd.c                                       |  14 +-
 lib/libscan.c                                      |  15 +-
 net/dhcp.c                                         |   4 +-
 scripts/Makefile.lib                               |   8 +
 scripts/bareboxenv.c                               |  16 +-
 377 files changed, 6901 insertions(+), 2089 deletions(-)
 rename arch/arm/boards/beagle/env/{init =3D> }/config-board (100%)
 delete mode 100644 arch/arm/boards/clep7212/env/bin/mtdparts-add
 create mode 100644 arch/arm/boards/clep7212/env/config
 delete mode 100644 arch/arm/boards/clep7212/env/init/automount
 delete mode 100644 arch/arm/boards/clep7212/env/init/bootargs-base
 delete mode 100644 arch/arm/boards/clep7212/env/init/general
 delete mode 100644 arch/arm/boards/clep7212/env/init/hostname
 create mode 100644 arch/arm/boards/clep7212/env/init/mtdparts-nor
 rename arch/arm/boards/crystalfontz-cfa10036/env/{init =3D> }/config-board=
 (100%)
 rename arch/arm/boards/efika-mx-smartbook/env/{init =3D> }/config-board (1=
00%)
 rename arch/arm/boards/freescale-mx51-pdk/env/{init =3D> }/config-board (1=
00%)
 rename arch/arm/boards/freescale-mx53-loco/env/{init =3D> }/config-board (=
100%)
 rename arch/arm/boards/freescale-mx6-sabrelite/env/{init =3D> }/config-boa=
rd (100%)
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/env/config-board
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
 create mode 100644 arch/arm/boards/highbank/Makefile
 create mode 100644 arch/arm/boards/highbank/config.h
 create mode 100644 arch/arm/boards/highbank/env/bin/init_board
 create mode 100644 arch/arm/boards/highbank/env/config
 create mode 100644 arch/arm/boards/highbank/init.c
 create mode 100644 arch/arm/boards/highbank/lowlevel.c
 rename arch/arm/boards/karo-tx53/env/{init =3D> }/config-board (100%)
 rename arch/arm/boards/panda/env/{init =3D> }/config-board (100%)
 rename arch/arm/boards/pcm037/env/{init =3D> }/config-board (100%)
 rename arch/arm/boards/pcm038/env/{init =3D> }/config-board (100%)
 create mode 100644 arch/arm/boards/pcm043/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/pcm043/env/config
 create mode 100644 arch/arm/boards/pcm043/env/config-board
 create mode 100644 arch/arm/boards/pcm043/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm043/env/init/mtdparts-nor
 rename arch/arm/boards/telit-evk-pro3/env/{init =3D> }/config-board (100%)
 rename arch/arm/boards/tqma53/env/{init =3D> }/config-board (100%)
 create mode 100644 arch/arm/boards/vexpress/Kconfig
 create mode 100644 arch/arm/boards/vexpress/Makefile
 create mode 100644 arch/arm/boards/vexpress/config.h
 create mode 100644 arch/arm/boards/vexpress/env/config
 create mode 100644 arch/arm/boards/vexpress/init.c
 create mode 100644 arch/arm/boards/vexpress/lowlevel.c
 create mode 100644 arch/arm/configs/freescale-mx6-sabresd_defconfig
 create mode 100644 arch/arm/configs/highbank_defconfig
 create mode 100644 arch/arm/configs/vexpress_ca9_defconfig
 create mode 100644 arch/arm/configs/vexpress_defconfig
 create mode 100644 arch/arm/include/asm/hardware/sp810.h
 create mode 100644 arch/arm/mach-clps711x/lowlevel.c
 create mode 100644 arch/arm/mach-highbank/Kconfig
 create mode 100644 arch/arm/mach-highbank/Makefile
 create mode 100644 arch/arm/mach-highbank/cache-l2x0.c
 create mode 100644 arch/arm/mach-highbank/core.c
 create mode 100644 arch/arm/mach-highbank/core.h
 create mode 100644 arch/arm/mach-highbank/devices.c
 create mode 100644 arch/arm/mach-highbank/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-highbank/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-highbank/include/mach/devices.h
 create mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
 create mode 100644 arch/arm/mach-highbank/include/mach/hardware.h
 create mode 100644 arch/arm/mach-highbank/include/mach/sysregs.h
 create mode 100644 arch/arm/mach-highbank/reset.c
 create mode 100644 arch/arm/mach-highbank/smc.S
 create mode 100644 arch/arm/mach-mxs/include/mach/ssp.h
 delete mode 100644 arch/arm/mach-omap/omap3_core.S
 create mode 100644 arch/arm/mach-vexpress/Kconfig
 create mode 100644 arch/arm/mach-vexpress/Makefile
 create mode 100644 arch/arm/mach-vexpress/devices.c
 create mode 100644 arch/arm/mach-vexpress/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-vexpress/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-vexpress/include/mach/devices.h
 create mode 100644 arch/arm/mach-vexpress/reset.c
 create mode 100644 arch/arm/mach-vexpress/v2m.c
 create mode 100644 common/console_common.c
 delete mode 100644 common/console_none.c
 create mode 100644 common/partitions/Kconfig
 create mode 100644 common/partitions/Makefile
 create mode 100644 common/partitions/dos.c
 create mode 100644 common/partitions/efi.c
 create mode 100644 common/partitions/efi.h
 create mode 100644 common/partitions/parser.h
 create mode 100644 defaultenv-2/base/bin/_boot
 create mode 100644 defaultenv-2/base/bin/_boot_help
 create mode 100644 defaultenv-2/base/bin/_boot_list
 create mode 100644 drivers/amba/Kconfig
 create mode 100644 drivers/clocksource/amba-sp804.c
 rename drivers/{ =3D> mtd}/nor/Kconfig (81%)
 rename drivers/{ =3D> mtd}/nor/Makefile (100%)
 rename drivers/{ =3D> mtd}/nor/cfi_flash.c (92%)
 rename drivers/{ =3D> mtd}/nor/cfi_flash.h (99%)
 rename drivers/{ =3D> mtd}/nor/cfi_flash_amd.c (100%)
 rename drivers/{ =3D> mtd}/nor/cfi_flash_intel.c (100%)
 create mode 100644 drivers/net/xgmac.c
 create mode 100644 drivers/serial/serial_auart.c
 create mode 100644 drivers/spi/mxs_spi.c
 create mode 100644 include/linux/amba/sp804.h
 create mode 100644 include/linux/amba/sp805.h
 create mode 100644 include/linux/efi.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
