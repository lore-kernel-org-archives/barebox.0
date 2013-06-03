Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPGq-0007gb-Lw
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:33:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UjPGT-0000oR-VX
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 09:33:13 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UjPGT-00016p-Nw
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 09:33:13 +0200
Date: Mon, 3 Jun 2013 09:33:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603073313.GZ32299@pengutronix.de>
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
Subject: v2013.06.0
To: barebox@lists.infradead.org

Another month, another release. Here is v2013.06.0.

Sascha

----------------------------------------------------------------
Alexander Shiyan (22):
      Makefile: Create empty <config.h> if this header file is not needed b=
y board
      Remove unused config.h
      ARM: cpuimx51: Use custom padctrl for fec
      ARM: i.MX: Update MX2x iomux definitions
      ARM: i.MX: Update MX51 iomux definitions
      Remove unimplemented usb_driver_unregister declaration
      GPIO: Rename "drivers/gpio.c" to "drivers/gpiolib.c"
      ARM: i.MX: Move GPIO driver to drivers/gpio
      ata: Remove wrong DISK_DRIVE symbol
      ARM: omap: Remove wrong OMAP_CLOCK_ALL symbol
      ARM: netx: Remove references for missing boards
      ARM: imx: Fix incorrect Kconfig symbols for some boards
      ARM: at91 gpio: Fix possible null pointer dereference
      ARM: at91 smc: Fix possible uninitialized variable
      MCI: atmel: Fix possible null pointer dereference
      MCI: imx: Fix possible null pointer dereference
      NAND: imx: Fix memory leak
      ARM: pcm038: Add descriptions for pin-groups
      ARM: pcm038: Add definition for SPI chipselect 0
      ARM: pcm038: Add definition for FEC reset
      ARM: ccmx51js: Add support for USB Host1
      ARM: ccmx51: Another fix SDRAM size detection

Alexandre Belloni (1):
      sama5d3xek: correct rootfs nand partition

Andreas Pretzsch (2):
      ARM i.MX31: cleanup MX31_ prefix: fix leftover IOMUXC_BASE defines
      ARM i.MX31 pcm037: fix erroneous IOMUX GPR setup in pcm037_usb_init()

Antony Pavlov (2):
      ARM: remove unused clkdev.h
      gpio: fix typos

Enrico Scholz (3):
      ARM v7: fix mmu-off operation
      ARM v7: v7_mmu_cache_flush(): do not restore r0-r3 (minor optimizatio=
n)
      ARM v7: added v7_mmu_cache_invalidate()

Eric B=E9nard (2):
      nand_base: detect more ONFI flash
      nand_base: sync flash detection functions with linux 3.9's code

Jan Luebbe (10):
      commands: i2c: change 0X to 0x
      mtd: update NAND manufacturer names from the kernel
      commands: the crc command is actually called crc32
      omap: move to common bootsource framework
      beaglebone: remove stray semicolon
      Makefile: drop duplicate definition of cmd_objcopy
      am33xx: add defines for GPIOs
      m33xx-clock: configure PLLs based on oscillator frequency
      m33xx-clock: remove unused code
      defaultenv-2: init: display prompt after running /env/init/*

Jan Weitzel (1):
      ARM: mmu: Use PAGE_ALIGN in dma_free_coherent

Jean-Christophe PLAGNIOL-VILLARD (4):
      highbank: switch to defaultenv-2
      at91sam9m10g45ek: add spi dataflash supprt
      commands/mem.c: drop non used DEVMEM
      qt1070: drop non used buf

Juergen Beisert (7):
      ARM/MXS: add more ROM code related documentation
      MXS/MCI: simplify reset of the MCI device block
      MCI/Core: increase the transmission frequency while card detection
      MCI/Core: honor transmission limits at the card's side
      MCI/MXS: report a better matching error code when the transfer fails
      MCI/MXS: fix signed/unsigned mismatch
      MXS: fix SoC detecting

Lucas Stach (13):
      tegra: switch to proper CPU type
      tegra: unify spelling in Kconfig with Linux kernel
      tegra: introduce Tegra 20 SoC type
      tegra: move default textbase
      tegra: switch to DT only
      tegra: add driver for the clock and reset module
      tegra: add T20 timer driver
      tegra: add T20 power management controller driver
      tegra: add common lowlevel startup
      tegra: add generic debug UART support
      tegra: add generic meminit
      tegra: add GPIO controller driver
      arm: properly init alignment trap bit

Masaki Muranaka (1):
      Avoid build error on "config SPI" is y

Nicolas Pitre (1):
      ARM: fix the memset fix

Sascha Hauer (68):
      param: Add dev member to struct param_d
      param: refactor __dev_add_param
      param: Add integer and boolean parameter helpers
      param: Add ip address convenience function
      net: ksz8864: Use dev_add_param_bool for enable parameter
      net: store ethernet device parameters in device
      netconsole: use dev_add_param_* helpers
      param: remove now unused dev_[gs]et_param_ip
      treewide: Use dev_add_param_int_ro where possible
      mci: Use dev_add_param_int for probe parameter
      ata: Use dev_add_param_bool for probe parameter
      fb: Use dev_add_param_bool for enable parameter
      fb: imxfb: Use dev_add_param_int for alpha parameter
      fb: imx-ipu-fb: Use dev_add_param_int for alpha parameter
      param: pass param to dev_remove_param
      pwm: Use dev_add_param_int for pwm parameters
      ARM: i.MX: iim: Use dev_add_param_bool for parameters
      console: Use dev_add_param_int for baudrate parameter
      mtd: Nand: Use dev_add_param_bool for erasebad parameter
      USB gadget at91: Use dev_add_param_bool for vbus parameter
      ARM: MXS: ocotp: Use dev_add_param_bool for parameter
      memory commands: export common functions
      memory commands: move memory_display to separate file
      Use a common define for RW_BUF_SIZE
      memory commands: cleanup initialization
      memory commands: make rw_buf global
      memory commands: separate into one file per command
      Add memory modify command (mm)
      defaultenv-2: net: use oftree when existing
      of: parse phandles before probing devices
      of: Add of_property_read_string_index()
      of: Allow multiple resources in 'reg' property
      of: read resource names from devicetree
      of: partitions: pass struct cdev as argument
      of: partitions: create bb device for nand flashes
      Add initial pinctrl support
      pinctrl: switch i.MX iomux-v3 support to pinctrl
      pinctrl: move imx-iomux-v2 to drivers/pinctrl/
      pinctrl: move imx-iomux-v1 to drivers/pinctrl/
      mci: imx-esdhc: remove cache snoop register access
      Don't honor initrd load address
      Merge branch 'for-next/atmel'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/memory-commands'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mxs'
      Merge branch 'for-next/of'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/param'
      Merge branch 'for-next/remove-config-h'
      Merge branch 'for-next/tegra'
      ARM: i.MX: Allow disabling SDRAM autodetection
      ARM: i.MX: ccxmx51: detect SDRAM size by board id
      net: dhcp: Fix return value on ctrl-c
      net: dhcp: Fix tftp servername handling
      Merge branch 'pu/dhcp'
      fdt: Fix dt memreserve entry
      ARM: invalidate data caches during early init
      pbl: Fix typo in make causing pbl files to be rebuilt
      ARM: pbl: fix make dependencies
      make: Add barebox_default_env.* to targets
      ARM: zynq: Add cmd to generate zynq image
      ARM: i.MX53 vincell: Fix lowlevel startup
      ARM: pbl: Always call pbl make
      Release v2013.06.0

Steffen Trumtrar (2):
      defaultenv-2: Fix settings entry
      ARM i.MX53: tqma53: fix console entry

Thomas Petazzoni (1):
      scripts: allow lines longer than 80 cols with printf() in checkpatch

Uwe Kleine-K=F6nig (1):
      bootm: Simplify initrd address handling

Vicente Bergas (1):
      OMAP4: add command to select next boot device priority

 Makefile                                           |  23 +-
 arch/arm/Kconfig                                   |  11 +-
 arch/arm/Makefile                                  |  20 +-
 arch/arm/boards/archosg9/config.h                  |   1 -
 arch/arm/boards/at91sam9m10g45ek/init.c            |  18 +
 arch/arm/boards/at91sam9m10ihd/hw_version.c        |   6 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c          |   6 +-
 arch/arm/boards/avnet-zedboard/config.h            |   4 -
 arch/arm/boards/beagle/config.h                    |  17 -
 arch/arm/boards/beaglebone/config.h                |  17 -
 arch/arm/boards/beaglebone/lowlevel.c              |   2 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                  |  63 ++-
 arch/arm/boards/ccxmx51/ccxmx51.h                  |   1 +
 arch/arm/boards/ccxmx51/ccxmx51js.c                |  15 +
 arch/arm/boards/ccxmx51/config.h                   |  24 -
 arch/arm/boards/ccxmx51/lowlevel.c                 |   4 +-
 arch/arm/boards/chumby_falconwing/config.h         |  17 -
 arch/arm/boards/clep7212/config.h                  |   4 -
 arch/arm/boards/crystalfontz-cfa10036/config.h     |  16 -
 arch/arm/boards/dmo-mx6-realq7/config.h            |   4 -
 arch/arm/boards/edb93xx/config.h                   |   4 -
 arch/arm/boards/efika-mx-smartbook/config.h        |  17 -
 arch/arm/boards/eukrea_cpuimx27/config.h           |  22 -
 arch/arm/boards/eukrea_cpuimx51/config.h           |  20 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |  14 +-
 arch/arm/boards/freescale-mx23-evk/config.h        |  12 -
 arch/arm/boards/freescale-mx28-evk/config.h        |  16 -
 arch/arm/boards/freescale-mx51-pdk/config.h        |  20 -
 arch/arm/boards/freescale-mx53-loco/config.h       |  20 -
 arch/arm/boards/freescale-mx53-smd/config.h        |  20 -
 arch/arm/boards/freescale-mx6-arm2/config.h        |   4 -
 arch/arm/boards/freescale-mx6-sabrelite/config.h   |   4 -
 arch/arm/boards/freescale-mx6-sabresd/config.h     |   4 -
 arch/arm/boards/guf-neso/config.h                  |  22 -
 arch/arm/boards/guf-vincell/config.h               |  24 -
 arch/arm/boards/guf-vincell/lowlevel.c             |   4 +-
 arch/arm/boards/highbank/config.h                  |   5 -
 arch/arm/boards/highbank/env/boot.d/010-ahci-boot  |   1 +
 arch/arm/boards/highbank/env/boot.d/011-ahci       |   1 +
 arch/arm/boards/highbank/env/boot.d/020-mmc-boot   |   1 +
 arch/arm/boards/highbank/env/boot.d/021-mmc        |   1 +
 arch/arm/boards/highbank/env/boot.d/030-net        |   1 +
 arch/arm/boards/highbank/env/boot.d/031-net-eth1   |   1 +
 arch/arm/boards/highbank/env/boot/ahci             |  21 +
 arch/arm/boards/highbank/env/boot/ahci-boot        |  21 +
 arch/arm/boards/highbank/env/boot/mmc              |  21 +
 arch/arm/boards/highbank/env/boot/mmc-boot         |  21 +
 arch/arm/boards/highbank/env/boot/net              |  18 +
 arch/arm/boards/highbank/env/boot/net-eth1         |  18 +
 arch/arm/boards/highbank/env/config                |  33 --
 arch/arm/boards/highbank/env/config-board          |  11 +
 arch/arm/boards/highbank/env/data/oftree           |   4 +
 .../env/{bin/init_board =3D> init/001-dtb-probe}     |   0
 arch/arm/boards/highbank/env/init/automount        |  27 ++
 arch/arm/boards/highbank/env/init/ps1              |   9 +
 arch/arm/boards/imx21ads/config.h                  |  22 -
 arch/arm/boards/imx233-olinuxino/config.h          |  21 -
 arch/arm/boards/imx27ads/config.h                  |  22 -
 arch/arm/boards/karo-tx28/config.h                 |  16 -
 arch/arm/boards/karo-tx51/config.h                 |  17 -
 arch/arm/boards/karo-tx53/config.h                 |  24 -
 arch/arm/boards/mioa701/config.h                   |  22 -
 arch/arm/boards/netx/config.h                      |   4 -
 arch/arm/boards/nhk8815/config.h                   |   1 -
 arch/arm/boards/omap343xdsp/config.h               |  17 -
 arch/arm/boards/omap3evm/config.h                  |  17 -
 arch/arm/boards/panda/config.h                     |   1 -
 arch/arm/boards/pcm037/pcm037.c                    |   6 +-
 arch/arm/boards/pcm038/config.h                    |  22 -
 arch/arm/boards/pcm038/pcm038.c                    |  14 +-
 arch/arm/boards/pcm049/config.h                    |   1 -
 arch/arm/boards/pcm051/config.h                    |  21 -
 arch/arm/boards/phycard-a-l1/config.h              |  18 -
 arch/arm/boards/phycard-a-xl2/config.h             |   1 -
 arch/arm/boards/phycard-i.MX27/config.h            |  22 -
 arch/arm/boards/raspberry-pi/config.h              |   4 -
 arch/arm/boards/sama5d3xek/env/config              |   2 +-
 arch/arm/boards/sama5d3xek/hw_version.c            |   6 +-
 arch/arm/boards/toshiba-ac100/Makefile             |   2 -
 arch/arm/boards/toshiba-ac100/board.c              |   8 -
 arch/arm/boards/toshiba-ac100/config.h             |   5 -
 arch/arm/boards/toshiba-ac100/lowlevel.c           |  10 -
 arch/arm/boards/toshiba-ac100/serial.c             |  39 --
 arch/arm/boards/tqma53/config.h                    |   4 -
 arch/arm/boards/tqma53/env/config-board            |   2 +-
 arch/arm/boards/versatile/config.h                 |   5 -
 arch/arm/boards/vexpress/config.h                  |   5 -
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   4 +-
 arch/arm/configs/phycard_a_l1_defconfig            |   1 -
 arch/arm/configs/toshiba_ac100_defconfig           |   7 +-
 arch/arm/cpu/cache-armv7.S                         |  74 +--
 arch/arm/cpu/cache.c                               |  21 +
 arch/arm/cpu/mmu.c                                 |   7 +-
 arch/arm/cpu/start-pbl.c                           |   2 +
 arch/arm/cpu/start.c                               |   2 +
 arch/arm/dts/tegra20-paz00.dts                     |  12 +
 arch/arm/dts/tegra20.dtsi                          |  41 ++
 arch/arm/include/asm/barebox-arm-head.h            |   2 +-
 arch/arm/include/asm/cache.h                       |   5 +
 arch/arm/lib/memset.S                              |  33 +-
 arch/arm/mach-at91/gpio.c                          |   5 +-
 arch/arm/mach-at91/sam9_smc.c                      |   8 +-
 arch/arm/mach-highbank/Kconfig                     |   1 +
 arch/arm/mach-imx/Kconfig                          |  15 +-
 arch/arm/mach-imx/Makefile                         |  20 +-
 arch/arm/mach-imx/esdctl.c                         |  14 +
 arch/arm/mach-imx/iim.c                            |  65 +--
 arch/arm/mach-imx/include/mach/esdctl.h            |   1 +
 arch/arm/mach-imx/include/mach/imx31-regs.h        |   6 +-
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |   6 -
 arch/arm/mach-imx/include/mach/iomux-mx2x.h        |  12 +-
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |  28 +-
 arch/arm/mach-imx/iomux-v3.c                       | 107 -----
 arch/arm/mach-mxs/imx.c                            |   1 +
 arch/arm/mach-mxs/ocotp.c                          |  34 +-
 arch/arm/mach-netx/Kconfig                         |  16 -
 arch/arm/mach-omap/Kconfig                         |   9 +-
 arch/arm/mach-omap/Makefile                        |   1 +
 arch/arm/mach-omap/am33xx_generic.c                |  10 +-
 arch/arm/mach-omap/boot_order.c                    |  83 ++++
 arch/arm/mach-omap/include/mach/am33xx-clock.h     |  18 +-
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |   6 +
 arch/arm/mach-omap/include/mach/generic.h          |  13 -
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |  20 +
 arch/arm/mach-omap/omap3_clock.c                   |   6 -
 arch/arm/mach-omap/omap3_generic.c                 |  16 +-
 arch/arm/mach-omap/omap4_generic.c                 |  44 +-
 arch/arm/mach-omap/omap_generic.c                  |  15 +-
 arch/arm/mach-omap/xload.c                         |  26 +-
 arch/arm/mach-tegra/Kconfig                        |  53 ++-
 arch/arm/mach-tegra/Makefile                       |   9 +-
 arch/arm/mach-tegra/clock.c                        |  56 ---
 arch/arm/mach-tegra/include/mach/gpio.h            |   1 +
 arch/arm/mach-tegra/include/mach/iomap.h           |   3 +
 arch/arm/mach-tegra/include/mach/lowlevel.h        | 146 ++++++
 arch/arm/mach-tegra/include/mach/tegra20-car.h     | 179 +++++++
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h     |  67 +++
 arch/arm/mach-tegra/reset.c                        |  39 --
 arch/arm/mach-tegra/tegra20-car.c                  | 120 +++++
 arch/arm/mach-tegra/tegra20-pmc.c                  |  68 +++
 arch/arm/mach-tegra/tegra20-timer.c                | 119 +++++
 arch/arm/mach-tegra/tegra20.c                      |  65 +++
 arch/arm/mach-tegra/tegra_avp_init.c               | 226 +++++++++
 arch/arm/mach-tegra/tegra_maincomplex_init.c       |  46 ++
 arch/arm/mach-zynq/include/mach/clkdev.h           |   6 -
 arch/mips/boards/dlink-dir-320/config.h            |  15 -
 arch/mips/boards/qemu-malta/config.h               |  15 -
 arch/mips/boards/rzx50/config.h                    |  15 -
 arch/sandbox/board/config.h                        |   4 -
 arch/x86/boards/x86_generic/config.h               |  17 -
 arch/x86/include/asm/types.h                       |   4 +
 commands/Kconfig                                   |  54 ++-
 commands/Makefile                                  |   6 +
 commands/bootm.c                                   |   7 +-
 commands/i2c.c                                     |   2 +-
 commands/md.c                                      | 116 +++++
 commands/mem.c                                     | 526 +----------------=
----
 commands/memcmp.c                                  | 148 ++++++
 commands/memcpy.c                                  | 145 ++++++
 commands/memset.c                                  | 101 ++++
 commands/mm.c                                      | 117 +++++
 commands/mw.c                                      | 104 ++++
 common/Makefile                                    |   3 +
 common/console.c                                   |  26 +-
 common/memory_display.c                            |  64 +++
 defaultenv-2/base/bin/init                         |  12 +-
 defaultenv-2/base/boot/net                         |   7 +-
 defaultenv-2/menu/menu/settings                    |   2 +-
 drivers/Kconfig                                    |   1 +
 drivers/Makefile                                   |   1 +
 drivers/amba/bus.c                                 |   9 +-
 drivers/ata/Kconfig                                |   1 -
 drivers/ata/disk_ata_drive.c                       |  21 +-
 drivers/base/driver.c                              |   3 +
 drivers/gpio/Kconfig                               |  10 +
 drivers/gpio/Makefile                              |   5 +-
 .../arm/mach-imx/gpio.c =3D> drivers/gpio/gpio-imx.c |   0
 drivers/gpio/gpio-tegra.c                          | 214 +++++++++
 drivers/gpio/{gpio.c =3D> gpiolib.c}                 |   0
 drivers/input/qt1070.c                             |   7 +-
 drivers/mci/atmel_mci.c                            |   4 +-
 drivers/mci/imx-esdhc.c                            |   7 -
 drivers/mci/imx.c                                  |   5 +-
 drivers/mci/mci-core.c                             |  55 +--
 drivers/mci/mxs.c                                  |  22 +-
 drivers/mtd/core.c                                 |  13 +-
 drivers/mtd/nand/nand_base.c                       | 421 +++++++++++------
 drivers/mtd/nand/nand_ids.c                        |   4 +-
 drivers/mtd/nand/nand_imx_bbm.c                    |   9 +-
 drivers/net/ksz8864rmn.c                           |  30 +-
 drivers/net/phy/mdio_bus.c                         |   8 +-
 drivers/of/base.c                                  | 133 +++++-
 drivers/of/fdt.c                                   |   3 +-
 drivers/of/partition.c                             |  13 +-
 drivers/pinctrl/Kconfig                            |  28 ++
 drivers/pinctrl/Makefile                           |   4 +
 .../iomux-v1.c =3D> drivers/pinctrl/imx-iomux-v1.c   |   0
 .../iomux-v2.c =3D> drivers/pinctrl/imx-iomux-v2.c   |   0
 drivers/pinctrl/imx-iomux-v3.c                     | 212 +++++++++
 drivers/pinctrl/pinctrl.c                          | 149 ++++++
 drivers/pwm/core.c                                 |  89 ++--
 drivers/usb/core/usb.c                             |  19 +-
 drivers/usb/gadget/at91_udc.c                      |  23 +-
 drivers/video/fb.c                                 |  33 +-
 drivers/video/imx-ipu-fb.c                         |  27 +-
 drivers/video/imx.c                                |  26 +-
 drivers/watchdog/im28wd.c                          |  75 ++-
 include/asm-generic/gpio.h                         |   1 -
 include/ata_drive.h                                |   1 +
 include/common.h                                   |   7 +-
 include/console.h                                  |   2 +
 include/fb.h                                       |   1 +
 include/gpio.h                                     |   2 +-
 include/linux/mtd/bbm.h                            |   2 +
 include/linux/mtd/mtd.h                            |   1 +
 include/linux/mtd/nand.h                           |  20 +-
 include/mci.h                                      |   2 +
 include/net.h                                      |   7 +-
 include/of.h                                       |  10 +-
 include/param.h                                    |  66 ++-
 include/pinctrl.h                                  |  35 ++
 include/usb/usb.h                                  |   1 -
 lib/copy_file.c                                    |   2 -
 lib/parameter.c                                    | 302 ++++++++++--
 net/dhcp.c                                         |  15 +-
 net/eth.c                                          |  40 +-
 net/net.c                                          |  80 ++--
 net/netconsole.c                                   |  50 +-
 scripts/Makefile.build                             |   2 +-
 scripts/checkpatch.pl                              |   2 +-
 230 files changed, 4445 insertions(+), 2516 deletions(-)
 delete mode 100644 arch/arm/boards/archosg9/config.h
 delete mode 100644 arch/arm/boards/avnet-zedboard/config.h
 delete mode 100644 arch/arm/boards/beagle/config.h
 delete mode 100644 arch/arm/boards/beaglebone/config.h
 delete mode 100644 arch/arm/boards/ccxmx51/config.h
 delete mode 100644 arch/arm/boards/chumby_falconwing/config.h
 delete mode 100644 arch/arm/boards/clep7212/config.h
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/config.h
 delete mode 100644 arch/arm/boards/dmo-mx6-realq7/config.h
 delete mode 100644 arch/arm/boards/edb93xx/config.h
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/config.h
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/config.h
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/config.h
 delete mode 100644 arch/arm/boards/freescale-mx23-evk/config.h
 delete mode 100644 arch/arm/boards/freescale-mx28-evk/config.h
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/config.h
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/config.h
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/config.h
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/config.h
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/config.h
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/config.h
 delete mode 100644 arch/arm/boards/guf-neso/config.h
 delete mode 100644 arch/arm/boards/guf-vincell/config.h
 delete mode 100644 arch/arm/boards/highbank/config.h
 create mode 120000 arch/arm/boards/highbank/env/boot.d/010-ahci-boot
 create mode 120000 arch/arm/boards/highbank/env/boot.d/011-ahci
 create mode 120000 arch/arm/boards/highbank/env/boot.d/020-mmc-boot
 create mode 120000 arch/arm/boards/highbank/env/boot.d/021-mmc
 create mode 120000 arch/arm/boards/highbank/env/boot.d/030-net
 create mode 120000 arch/arm/boards/highbank/env/boot.d/031-net-eth1
 create mode 100644 arch/arm/boards/highbank/env/boot/ahci
 create mode 100644 arch/arm/boards/highbank/env/boot/ahci-boot
 create mode 100644 arch/arm/boards/highbank/env/boot/mmc
 create mode 100644 arch/arm/boards/highbank/env/boot/mmc-boot
 create mode 100644 arch/arm/boards/highbank/env/boot/net
 create mode 100644 arch/arm/boards/highbank/env/boot/net-eth1
 delete mode 100644 arch/arm/boards/highbank/env/config
 create mode 100644 arch/arm/boards/highbank/env/config-board
 create mode 100644 arch/arm/boards/highbank/env/data/oftree
 rename arch/arm/boards/highbank/env/{bin/init_board =3D> init/001-dtb-prob=
e} (100%)
 create mode 100644 arch/arm/boards/highbank/env/init/automount
 create mode 100644 arch/arm/boards/highbank/env/init/ps1
 delete mode 100644 arch/arm/boards/imx21ads/config.h
 delete mode 100644 arch/arm/boards/imx233-olinuxino/config.h
 delete mode 100644 arch/arm/boards/imx27ads/config.h
 delete mode 100644 arch/arm/boards/karo-tx28/config.h
 delete mode 100644 arch/arm/boards/karo-tx51/config.h
 delete mode 100644 arch/arm/boards/karo-tx53/config.h
 delete mode 100644 arch/arm/boards/mioa701/config.h
 delete mode 100644 arch/arm/boards/netx/config.h
 delete mode 100644 arch/arm/boards/nhk8815/config.h
 delete mode 100644 arch/arm/boards/omap343xdsp/config.h
 delete mode 100644 arch/arm/boards/omap3evm/config.h
 delete mode 100644 arch/arm/boards/panda/config.h
 delete mode 100644 arch/arm/boards/pcm038/config.h
 delete mode 100644 arch/arm/boards/pcm049/config.h
 delete mode 100644 arch/arm/boards/pcm051/config.h
 delete mode 100644 arch/arm/boards/phycard-a-l1/config.h
 delete mode 100644 arch/arm/boards/phycard-a-xl2/config.h
 delete mode 100644 arch/arm/boards/phycard-i.MX27/config.h
 delete mode 100644 arch/arm/boards/raspberry-pi/config.h
 delete mode 100644 arch/arm/boards/toshiba-ac100/config.h
 delete mode 100644 arch/arm/boards/toshiba-ac100/lowlevel.c
 delete mode 100644 arch/arm/boards/toshiba-ac100/serial.c
 delete mode 100644 arch/arm/boards/tqma53/config.h
 delete mode 100644 arch/arm/boards/versatile/config.h
 delete mode 100644 arch/arm/boards/vexpress/config.h
 create mode 100644 arch/arm/dts/tegra20-paz00.dts
 create mode 100644 arch/arm/dts/tegra20.dtsi
 delete mode 100644 arch/arm/mach-imx/iomux-v3.c
 create mode 100644 arch/arm/mach-omap/boot_order.c
 delete mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/include/mach/gpio.h
 create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-car.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-pmc.h
 delete mode 100644 arch/arm/mach-tegra/reset.c
 create mode 100644 arch/arm/mach-tegra/tegra20-car.c
 create mode 100644 arch/arm/mach-tegra/tegra20-pmc.c
 create mode 100644 arch/arm/mach-tegra/tegra20-timer.c
 create mode 100644 arch/arm/mach-tegra/tegra20.c
 create mode 100644 arch/arm/mach-tegra/tegra_avp_init.c
 create mode 100644 arch/arm/mach-tegra/tegra_maincomplex_init.c
 delete mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h
 delete mode 100644 arch/mips/boards/dlink-dir-320/config.h
 delete mode 100644 arch/mips/boards/qemu-malta/config.h
 delete mode 100644 arch/mips/boards/rzx50/config.h
 delete mode 100644 arch/sandbox/board/config.h
 delete mode 100644 arch/x86/boards/x86_generic/config.h
 create mode 100644 commands/md.c
 create mode 100644 commands/memcmp.c
 create mode 100644 commands/memcpy.c
 create mode 100644 commands/memset.c
 create mode 100644 commands/mm.c
 create mode 100644 commands/mw.c
 create mode 100644 common/memory_display.c
 rename arch/arm/mach-imx/gpio.c =3D> drivers/gpio/gpio-imx.c (100%)
 create mode 100644 drivers/gpio/gpio-tegra.c
 rename drivers/gpio/{gpio.c =3D> gpiolib.c} (100%)
 create mode 100644 drivers/pinctrl/Kconfig
 create mode 100644 drivers/pinctrl/Makefile
 rename arch/arm/mach-imx/iomux-v1.c =3D> drivers/pinctrl/imx-iomux-v1.c (1=
00%)
 rename arch/arm/mach-imx/iomux-v2.c =3D> drivers/pinctrl/imx-iomux-v2.c (1=
00%)
 create mode 100644 drivers/pinctrl/imx-iomux-v3.c
 create mode 100644 drivers/pinctrl/pinctrl.c
 create mode 100644 include/pinctrl.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
