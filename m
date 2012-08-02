Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Swr9t-0000OR-Fo
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 08:53:32 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Swr9r-0007sV-1S
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:53:27 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Swr9r-0006cS-04
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:53:27 +0200
Date: Thu, 2 Aug 2012 10:53:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120802085326.GJ30009@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2012.08.0
To: barebox@lists.infradead.org

Hi All,

We have an August release. Most notable improvemt is 64bit support for
files and devices, so SD cards are no longer limited to 4GB. Some
subtile fixes for allocating DMA memory on ARM also make it worth
updating. There's more, so as usual, here is the complete list of
changes.

Sascha

----------------------------------------------------------------
Alexander Shiyan (8):
      Move /dev/zero to separate unit
      Added "/dev/full" and "/dev/null" devices
      i.MX51: Synchronize iomux header file from kernel
      ARM: initial ConnectCore=AE i.MX51 board support
      I.MX clko: Using strtol function instead strtoul for getting argument=
 for clko source
      i.MX clko: Added support for more than one CLKO outputs
      i.MX51: Added support for "clko" command
      Setup UART-pads via iomux interface

Antony Pavlov (6):
      clocksource: move the NSEC_PER_SEC constant to common header
      MIPS: XBurst: fix the JZ4755's clocksource input frequency value
      MIPS: XBurst: use clocks_calc_mult_shift() for JZ4755's clocksource
      add 'poweroff' command
      rzx50: add poweroff support
      filetype: add forgotten mips barebox filetype_str

Jan Luebbe (4):
      defaultenv/bin/init: skip autoboot if $autoboot_timeout is unset
      fs/devfs.c: disallow write and erase if a partition is read-only
      mmuinfo: add a command do display the result of virtual to physical t=
ranslation
      mtd: fix 'write: Invalid argument' while writing to nand-bb devices

Jean-Christophe PLAGNIOL-VILLARD (4):
      vsprintf: fix EXPORT_SYMBOL typo on simple_strtoull
      complete: add missing EXPORT_SYMBOL for {command, device, empty, comm=
and}_var_complete
      version: add missing EXPORT_SYMBOL for version_string
      command: add missing EXPORT_SYMBOL for find_cmd

Johannes Stezenbach (6):
      drivers/net: add designware driver
      miidev: fix auto negotiation
      miidev: actually probe the PHY
      miidev: add support for 1000Mbit
      miidev: consistent md and mw on phy regs
      eth: eth MAC addresses are six bytes

Juergen Beisert (8):
      Add a simple watchdog framework
      ARM/MXS: add a watchdog driver for i.MX28
      ARM/MXS: add new way to reset the whole SoC
      ARM/MXS: the GPIO bitkeeper enable logic is inverse to the pullup ena=
ble logic
      ARM/Samsung: be able to include the nand header multiple times
      ARM/Samsung: unify device registration for the S3C24XX SoCs
      NAND/Samsung: remove a leftover from architeture clean ups
      ARM/MXS: pull-up and bitkeeper must be handled differently

Marc Kleine-Budde (4):
      ARM mmu: don't use CONFIG_MMU to disable mmu code, there are static i=
nline versions
      blackfin, mips, openrisc, ppc, sandbox, x86: add generic dma_alloc, d=
ma_free inlines
      nios: add dma_alloc, asm/dma.h
      ARM mmu: add dma_alloc

Roberto Nibali (2):
      Remove superfluous SYSCTL_RSTA
      Deal properly with scripts/bareboxenv-target

Sascha Hauer (95):
      menu: factor out a function to print an entry
      net: Use dev_name directly
      dos partitions: enable disk size guessing only for bios disks
      Change byte order detection mechanism to kernel style
      blackfin: add __ashrdi3
      openrisc: link to libgcc
      mips: Add missing ffs and fls include
      nios2: Add missing ffs and fls include
      x86: Add missing ffs and fls include
      blackfin: Add missing fls include
      ARM defconfigs: Use TLSF malloc on defconfigs getting too big
      ARM at91sam9m10g45ek: Enable lzo decompression
      include/linux/time.h: remove dead code
      defaultenv-2 ifup: Always overwrite eth0.serverip
      defaultenv-2: mount tftp server specified in $eth0.serverip
      defaultenv-2: remove global.tftp.path
      defaultenv-2 ifup: create network up state file for dhcp
      USB gadget fsl: request cacheline aligned buffer
      USB gadget: Fix dma memory allocations
      USB core: allocate setup_packet using dma_alloc
      USB core: device descriptor using dma_alloc
      USB core: Allocate tmpbuf using dma_alloc
      USB ehci: Use dma coherent buffers for qh/qtd
      USB ehci: put fields of struct qTD directly into struct QH
      USB storage: use dma_alloc where appropriate
      block: use dma_alloc to allocate buffers
      partition: Use dma_alloc for allocating buffers
      USB ehci: rework cache handling
      Makefile: echo size check error to stderr
      ARM i.MX51 babbage: add mci1
      remove dead rarpboot command
      ARM i.MX23 usb: move to SoC specific functions
      ARM i.MX28 usb: Add USBPHY support
      ARM mxs: Add mxs_reset_block function
      mtd: fix arguments to bad block ioctls
      use loff_t for file offsets
      introduce strtoull_suffix function
      make parse_area_spec arguments loff_t
      make memory display 64bit capable
      make st_size in struct stat 64 bit
      make cdev 64bit capable
      memory commands: Make 64bit capable
      partitions: Make 64bit capable
      Add basename command
      Add dirname command
      fs: Fix file create bug when parent is not a directory
      complete: fix parameter complete with multiple '.'
      menu: use read_key
      menu: store repaint state in variable
      menu: implement KEY_HOME/KEY_END
      MMC i.MX esdhc: Fix sparse warnings
      tlsf: Use NULL instead of 0 for returning NULL pointers
      qsort: declare strcmp_compar publically
      Do not use iomem space for dev_get_mem_region
      define __user empty
      ARM i.MX speed: sparse fixes
      USB ohci: Fix sparse warnings
      net smc911x: Use __iomem for register base
      ARM i.MX clocksource: put registers in iomem space
      USB gadget fsl: Put registers into iomem space
      fs FAT: fix warning: Using plain integer as NULL pointer
      of: Fix usage of 0 as NULL pointer
      resource: store 'end' instead of 'size' in struct resource
      Merge branch 'for-next/64bit'
      Merge branch 'for-next/basename-dirname'
      Merge branch 'for-next/defenv-2'
      Merge branch 'for-next/defconfig'
      Merge branch 'for-next/dma-cache-align'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/sparse'
      Merge branch 'for-next/watchdog'
      Merge branch 'for-next/net-designware'
      Merge branch 'for-next/size-decrease'
      Merge branch 'for-next/imx-clko'
      Merge branch 'for-next/ethernet'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/mx28-ocotp'
      Merge branch 'for-next/mxs-reset'
      Merge branch 'for-next/mxs-usb'
      Merge branch 'for-next/mmuinfo'
      Merge branch 'for-next/menu'
      Merge branch 'for-next/devnull'
      Merge branch 'for-next/mips-clocksource'
      Merge branch 'for-next/poweroff'
      Merge branch 'for-next/digi-connect-core'
      Merge branch 'for-next/resource-size'
      Merge branch 'for-next/mxs-nand'
      ARM mmu: flush page tables in arm_mmu_remap_sdram()
      fs: fix standard zero, full devices
      ARM i.MX51 babbage: Use correct select for new environment
      mem md: bail out without arguments
      ARM: Enable unaligned accesses on armv6 and later
      mtd: fix bad block ioctls
      mem md: make md -s /dev/something work again
      Release v2012.08.0

Steffen Trumtrar (2):
      common: fix typo cammand_var_complete
      commands: add msleep command

Svetlana Khafizova (1):
      Makefile: update barebox version if CONFIG_KALLSYMS is not set

Teresa G=E1mez (1):
      scripts/checkpatch.pl: reset rpt_cleaners warnings

Uwe Kleine-K=F6nig (2):
      commands/crc: assert newline after output with big offsets
      i2c: fix printf format specifier

Wjatscheslaw Stoljarski (Slawa) (1):
      ARM i.MX53: notify clocksource about changing clock

Wolfram Sang (12):
      arm: mxs: get MAC from OCOTP for MX28EVK
      arm: mxs: make get_hclk result useable for upcoming set_hclk
      arm: mxs: add imx_set_hclk
      dma: add mxs-apbh-dma driver
      mtd nand: add mxs-nand driver
      ARM mxs: add bcb command to create 'boot control block' for NAND boot
      arm: mxs: add POWER_BASE for MX28, too
      arm: mxs: refactor access to power domain
      arm: mxs: add functions to get/set vddio
      arm: mxs: refactor timeout routine for ocotp
      arm: mxs: use consistent naming for #defines for ocotp
      arm: mxs: add write support for ocotp

 .gitignore                                         |    1 +
 Makefile                                           |    8 +-
 arch/arm/Kconfig                                   |   10 +-
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/a9m2410/a9m2410.c                  |    7 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    7 +-
 arch/arm/boards/ccxmx51/Makefile                   |    2 +
 arch/arm/boards/ccxmx51/ccxmx51.c                  |  489 ++++++++
 arch/arm/boards/ccxmx51/ccxmx51.dox                |    7 +
 arch/arm/boards/ccxmx51/ccxmx51.h                  |   35 +
 arch/arm/boards/ccxmx51/ccxmx51js.c                |   90 ++
 arch/arm/boards/ccxmx51/config.h                   |   24 +
 arch/arm/boards/ccxmx51/env/config                 |   37 +
 arch/arm/boards/ccxmx51/flash_header.c             |   84 ++
 arch/arm/boards/chumby_falconwing/falconwing.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |   11 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   30 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   13 +-
 arch/arm/boards/mini2440/mini2440.c                |   16 +-
 arch/arm/boards/nhk8815/setup.c                    |    6 +-
 arch/arm/boards/pcm038/pcm970.c                    |    2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    2 +-
 arch/arm/configs/ccmx51_defconfig                  |   55 +
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    1 +
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    1 +
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    1 +
 arch/arm/configs/usb_a9260_defconfig               |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig        |    3 +-
 arch/arm/configs/usb_a9263_defconfig               |    2 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    3 +-
 arch/arm/configs/usb_a9g20_defconfig               |    1 +
 arch/arm/cpu/Makefile                              |    1 +
 arch/arm/cpu/mmu.c                                 |    9 +-
 arch/arm/cpu/mmuinfo.c                             |  111 ++
 arch/arm/cpu/start.c                               |   12 +-
 arch/arm/include/asm/dma.h                         |    8 +
 arch/arm/include/asm/mmu.h                         |   13 +-
 arch/arm/lib/bootm.c                               |    8 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |    4 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |    4 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |    4 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |    4 +-
 arch/arm/mach-imx/Kconfig                          |   23 +-
 arch/arm/mach-imx/clko.c                           |   24 +-
 arch/arm/mach-imx/clocksource.c                    |   12 +-
 arch/arm/mach-imx/iim.c                            |    8 +-
 arch/arm/mach-imx/imx53.c                          |    2 +
 arch/arm/mach-imx/include/mach/clock.h             |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |    4 +-
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |   48 +-
 arch/arm/mach-imx/speed-imx21.c                    |   11 +-
 arch/arm/mach-imx/speed-imx25.c                    |   11 +-
 arch/arm/mach-imx/speed-imx27.c                    |   12 +-
 arch/arm/mach-imx/speed-imx35.c                    |   13 +-
 arch/arm/mach-imx/speed-imx51.c                    |   75 +-
 arch/arm/mach-imx/speed-imx53.c                    |    3 +-
 arch/arm/mach-mxs/Kconfig                          |   20 +
 arch/arm/mach-mxs/Makefile                         |    7 +-
 arch/arm/mach-mxs/bcb.c                            |  399 +++++++
 arch/arm/mach-mxs/common.c                         |   33 +
 arch/arm/mach-mxs/include/mach/clock-imx23.h       |    2 +
 arch/arm/mach-mxs/include/mach/clock-imx28.h       |    2 +
 arch/arm/mach-mxs/include/mach/dma.h               |  145 +++
 arch/arm/mach-mxs/include/mach/imx23-regs.h        |    3 +
 arch/arm/mach-mxs/include/mach/imx28-regs.h        |    9 +-
 arch/arm/mach-mxs/include/mach/iomux-imx23.h       |    5 +-
 arch/arm/mach-mxs/include/mach/iomux-imx28.h       |    5 +-
 arch/arm/mach-mxs/include/mach/mxs.h               |    6 +
 arch/arm/mach-mxs/include/mach/power.h             |    8 +
 arch/arm/mach-mxs/include/mach/usb.h               |    5 +-
 arch/arm/mach-mxs/iomux-imx.c                      |    2 +-
 arch/arm/mach-mxs/ocotp.c                          |  154 ++-
 arch/arm/mach-mxs/power.c                          |   84 ++
 arch/arm/mach-mxs/reset-imx.c                      |   61 -
 arch/arm/mach-mxs/soc-imx23.c                      |   37 +
 arch/arm/mach-mxs/soc-imx28.c                      |   37 +
 arch/arm/mach-mxs/speed-imx23.c                    |   45 +-
 arch/arm/mach-mxs/speed-imx28.c                    |   45 +-
 arch/arm/mach-mxs/{usb.c =3D> usb-imx23.c}           |   35 +-
 arch/arm/mach-mxs/usb-imx28.c                      |  101 ++
 .../mach-samsung/include/mach/devices-s3c24xx.h    |   55 +
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |    5 +
 arch/blackfin/include/asm/bitops.h                 |    3 +
 arch/blackfin/include/asm/dma.h                    |   13 +
 arch/blackfin/lib/Makefile                         |    1 +
 arch/blackfin/lib/ashrdi3.c                        |   36 +
 arch/mips/include/asm/bitops.h                     |    3 +
 arch/mips/include/asm/dma.h                        |   13 +
 arch/mips/mach-xburst/Kconfig                      |    1 +
 arch/mips/mach-xburst/csrc-jz4750.c                |    7 +-
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h  |   31 +
 arch/mips/mach-xburst/reset-jz4750.c               |   28 +
 arch/nios2/boards/generic/generic.c                |    6 +-
 arch/nios2/include/asm/bitops.h                    |    5 +
 arch/nios2/include/asm/dma-mapping.h               |   10 +
 arch/nios2/include/asm/dma.h                       |    8 +
 arch/openrisc/Makefile                             |    4 +
 arch/openrisc/include/asm/dma.h                    |   13 +
 arch/ppc/include/asm/dma.h                         |   13 +
 arch/ppc/mach-mpc85xx/include/mach/clocks.h        |    2 -
 arch/sandbox/board/hostfile.c                      |    4 +-
 arch/sandbox/include/asm/dma.h                     |   13 +
 arch/x86/include/asm/bitops.h                      |    7 +-
 arch/x86/include/asm/dma.h                         |   13 +
 commands/Kconfig                                   |   46 +
 commands/Makefile                                  |    6 +
 commands/basename.c                                |   47 +
 commands/bootm.c                                   |    6 +-
 commands/crc.c                                     |   11 +-
 commands/digest.c                                  |    4 +-
 commands/dirname.c                                 |   47 +
 commands/flash.c                                   |    4 +-
 commands/go.c                                      |    2 +-
 commands/iomem.c                                   |    3 +-
 commands/ls.c                                      |    2 +-
 commands/mem.c                                     |   81 +-
 commands/msleep.c                                  |   40 +
 commands/nand.c                                    |    3 +-
 commands/nandtest.c                                |    4 +-
 commands/net.c                                     |   29 -
 commands/poweroff.c                                |   37 +
 commands/sleep.c                                   |    2 +-
 commands/stddev.c                                  |  106 ++
 commands/wd.c                                      |   68 ++
 common/block.c                                     |   13 +-
 common/command.c                                   |    1 +
 common/complete.c                                  |    8 +-
 common/filetype.c                                  |    1 +
 common/memory.c                                    |    4 +-
 common/menu.c                                      |  113 +-
 common/oftree.c                                    |    2 +-
 common/partitions.c                                |   36 +-
 common/resource.c                                  |   30 +-
 common/tlsf.c                                      |   12 +-
 common/uimage.c                                    |    6 +-
 common/version.c                                   |    2 +-
 defaultenv-2/base/bin/ifup                         |   12 +-
 defaultenv-2/base/bin/init                         |    2 -
 defaultenv-2/base/boot/initrd                      |    5 +-
 defaultenv-2/base/boot/net                         |    6 +-
 defaultenv-2/base/init/automount                   |   11 +-
 defaultenv-2/base/init/general                     |    3 -
 defaultenv/bin/init                                |    2 +-
 drivers/Kconfig                                    |    3 +-
 drivers/Makefile                                   |    2 +
 drivers/ata/disk_ata_drive.c                       |    2 +-
 drivers/base/driver.c                              |   12 +-
 drivers/base/resource.c                            |   14 +-
 drivers/dma/Kconfig                                |    8 +
 drivers/dma/Makefile                               |    1 +
 drivers/dma/apbh_dma.c                             |  598 ++++++++++
 drivers/eeprom/at25.c                              |    8 +-
 drivers/i2c/i2c.c                                  |    4 +-
 drivers/mci/imx-esdhc.c                            |   20 +-
 drivers/mci/imx-esdhc.h                            |    1 -
 drivers/mfd/lp3972.c                               |    2 +-
 drivers/mfd/mc13xxx.c                              |    4 +-
 drivers/mfd/mc34704.c                              |    4 +-
 drivers/mfd/mc34708.c                              |    6 +-
 drivers/mfd/mc9sdz60.c                             |    4 +-
 drivers/mfd/twl-core.c                             |    4 +-
 drivers/mtd/core.c                                 |   20 +-
 drivers/mtd/mtdoob.c                               |    3 +-
 drivers/mtd/mtdraw.c                               |    9 +-
 drivers/mtd/nand/Kconfig                           |    5 +
 drivers/mtd/nand/Makefile                          |    1 +
 drivers/mtd/nand/nand-bb.c                         |   38 +-
 drivers/mtd/nand/nand_mxs.c                        | 1258 ++++++++++++++++=
++++
 drivers/mtd/ubi/cdev.c                             |    8 +-
 drivers/mtd/ubi/ubi-barebox.h                      |    1 -
 drivers/net/Kconfig                                |   16 +
 drivers/net/Makefile                               |    1 +
 drivers/net/designware.c                           |  436 +++++++
 drivers/net/designware.h                           |  230 ++++
 drivers/net/miidev.c                               |   76 +-
 drivers/net/smc911x.c                              |    2 +-
 drivers/nor/cfi_flash.c                            |   18 +-
 drivers/nor/m25p80.c                               |   16 +-
 drivers/usb/core/usb.c                             |  100 +-
 drivers/usb/gadget/composite.c                     |    5 +-
 drivers/usb/gadget/dfu.c                           |    5 +-
 drivers/usb/gadget/fsl_udc.c                       |    7 +-
 drivers/usb/host/ehci-hcd.c                        |  108 +-
 drivers/usb/host/ehci.h                            |   10 +-
 drivers/usb/host/ohci-at91.c                       |    2 +-
 drivers/usb/host/ohci-hcd.c                        |   40 +-
 drivers/usb/host/ohci.h                            |    2 +-
 drivers/usb/storage/transport.c                    |   11 +-
 drivers/video/fb.c                                 |    4 +-
 drivers/watchdog/Kconfig                           |   15 +
 drivers/watchdog/Makefile                          |    2 +
 drivers/watchdog/im28wd.c                          |  124 ++
 drivers/watchdog/wd_core.c                         |   57 +
 fs/cramfs/cramfs.c                                 |    2 +-
 fs/devfs-core.c                                    |   17 +-
 fs/devfs.c                                         |   21 +-
 fs/fat/fat.c                                       |    6 +-
 fs/fat/ff.c                                        |   10 +-
 fs/fs.c                                            |   50 +-
 fs/nfs.c                                           |    2 +-
 fs/ramfs.c                                         |    2 +-
 fs/tftp.c                                          |    2 +-
 include/clock.h                                    |    2 +
 include/common.h                                   |   24 +-
 include/complete.h                                 |    2 +-
 include/cramfs/cramfs_fs.h                         |    8 +-
 include/dma.h                                      |   30 +
 include/driver.h                                   |   31 +-
 include/envfs.h                                    |   22 +-
 include/fs.h                                       |   13 +-
 include/linux/byteorder/generic.h                  |    7 -
 include/linux/compiler.h                           |    2 +-
 include/linux/ioport.h                             |    8 +-
 include/linux/stat.h                               |    2 +-
 include/linux/time.h                               |  152 +--
 include/menu.h                                     |    3 -
 include/miidev.h                                   |    4 +
 include/net.h                                      |    8 +-
 include/net/designware.h                           |    9 +
 include/partition.h                                |    2 +-
 include/qsort.h                                    |    2 +
 include/usb/usb.h                                  |    9 +-
 include/watchdog.h                                 |   24 +
 lib/misc.c                                         |   24 +-
 lib/vsprintf.c                                     |    1 +
 net/eth.c                                          |    6 +-
 net/net.c                                          |    4 +-
 scripts/checkpatch.pl                              |    1 +
 229 files changed, 6517 insertions(+), 1069 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/Makefile
 create mode 100644 arch/arm/boards/ccxmx51/ccxmx51.c
 create mode 100644 arch/arm/boards/ccxmx51/ccxmx51.dox
 create mode 100644 arch/arm/boards/ccxmx51/ccxmx51.h
 create mode 100644 arch/arm/boards/ccxmx51/ccxmx51js.c
 create mode 100644 arch/arm/boards/ccxmx51/config.h
 create mode 100644 arch/arm/boards/ccxmx51/env/config
 create mode 100644 arch/arm/boards/ccxmx51/flash_header.c
 create mode 100644 arch/arm/configs/ccmx51_defconfig
 create mode 100644 arch/arm/cpu/mmuinfo.c
 create mode 100644 arch/arm/include/asm/dma.h
 create mode 100644 arch/arm/mach-mxs/bcb.c
 create mode 100644 arch/arm/mach-mxs/common.c
 create mode 100644 arch/arm/mach-mxs/include/mach/dma.h
 create mode 100644 arch/arm/mach-mxs/include/mach/mxs.h
 create mode 100644 arch/arm/mach-mxs/include/mach/power.h
 create mode 100644 arch/arm/mach-mxs/power.c
 delete mode 100644 arch/arm/mach-mxs/reset-imx.c
 create mode 100644 arch/arm/mach-mxs/soc-imx23.c
 create mode 100644 arch/arm/mach-mxs/soc-imx28.c
 rename arch/arm/mach-mxs/{usb.c =3D> usb-imx23.c} (66%)
 create mode 100644 arch/arm/mach-mxs/usb-imx28.c
 create mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c24xx.h
 create mode 100644 arch/blackfin/include/asm/dma.h
 create mode 100644 arch/blackfin/lib/ashrdi3.c
 create mode 100644 arch/mips/include/asm/dma.h
 create mode 100644 arch/nios2/include/asm/dma.h
 create mode 100644 arch/openrisc/include/asm/dma.h
 create mode 100644 arch/ppc/include/asm/dma.h
 create mode 100644 arch/sandbox/include/asm/dma.h
 create mode 100644 arch/x86/include/asm/dma.h
 create mode 100644 commands/basename.c
 create mode 100644 commands/dirname.c
 create mode 100644 commands/msleep.c
 create mode 100644 commands/poweroff.c
 create mode 100644 commands/stddev.c
 create mode 100644 commands/wd.c
 create mode 100644 drivers/dma/Kconfig
 create mode 100644 drivers/dma/Makefile
 create mode 100644 drivers/dma/apbh_dma.c
 create mode 100644 drivers/mtd/nand/nand_mxs.c
 create mode 100644 drivers/net/designware.c
 create mode 100644 drivers/net/designware.h
 create mode 100644 drivers/watchdog/Kconfig
 create mode 100644 drivers/watchdog/Makefile
 create mode 100644 drivers/watchdog/im28wd.c
 create mode 100644 drivers/watchdog/wd_core.c
 create mode 100644 include/dma.h
 create mode 100644 include/net/designware.h
 create mode 100644 include/watchdog.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
