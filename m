Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9G0m-0005gO-1d
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 13:51:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1T9G0k-0005ha-Eu
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:51:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1T9G0k-0000QT-Dt
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:51:18 +0200
Date: Wed, 5 Sep 2012 15:51:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120905135118.GH26594@pengutronix.de>
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
Subject: v2012.09.0
To: barebox@lists.infradead.org


Got it. We have a september release. Thank you all for working on
barebox and making this bootloader better.

Have fun!

Sascha

----------------------------------------------------------------
Alexander Shiyan (7):
      PCM970: Add MMC support
      PCM038: Read UID from fuses and pass this value to kernel as serial n=
umber
      mc13xxx: Define maximum SPI clock frequency global to driver
      tx51: Unused mc13xxx.h include removed
      mc13xxx: Added dummy definitions if CONFIG_MFD_MC13XXX is not set
      PCM038: Added setup for OTG host pins
      i.MX: Removed unused declaration for imx_iim_get_mac

Alexey Galakhov (2):
      S5P DRAM support
      Add FriendlyArm Tiny210 board (S5PV210)

Antony Pavlov (6):
      MIPS: malta: register memory bank
      MIPS: remove unused processor-specific constants and macros
      serial_ns16550: change the driver's name
      MIPS: add initial exceptions handling
      commands: memset: fix help message
      commands/digest: don't print checksum for non-existing files

Bernhard Walle (1):
      lib/Kconfig: Fix alignment of arrows in label

Christian Kapeller (2):
      input: Add i.MX matrix keypad driver
      input: add i.MX51 platform code for matrix keypad driver

Eric B=E9nard (6):
      string: add strim for ONFI code
      nand_base: add ONFI flash detection
      nand_imx: update to support onfi & 4k flashs
      eukrea_cpuimx35: fix USB host
      m25p80: wait for flash before returning after erase
      stringlist: fix division by zero

Jan Luebbe (1):
      scripts/mkublheader: add program to produce an UBL image header

Jan Weitzel (1):
      gpmc: Add reset to gpmc_generic_init

Jean-Christophe PLAGNIOL-VILLARD (8):
      stddev: make it selectable via Kconfig
      kbuild: Init all relevant variables used in kbuild files
      decompress_unlzo: define decompress_unlzo as decompress
      arm/bootm: fix initrd_start init
      bootm: do not load the initrd in the common code
      uimage_sdram_flush: fix resource start
      uimage_laod: fix ramdisk support
      nhk8815: fix nand IO_DATA end resource

Juergen Beisert (23):
      Enable a way to provide the reason for "being here"
      ARM/Samsung: add support to detect the reset source
      ARM/i.MX: add support to detect the reset source
      ARM/MXS: add reset cause detection
      ARM/Samsung: add the vendor FriendlyARM to the board's directory name
      ARM/Samsung: List only really supported S3C24xx SoCs
      ARM/Samsung: follow the name style of the other source files in this =
directory
      Samsung/serial: remove more ugly ifdef lines
      Samsung/serial: make the code more readable
      Samsung/serial: there is no need to ifdef these register defines
      Samsung/serial: there is no need to ifdef the slot table
      Samsung/serial: move the decision about an improved UART into Kconfig
      Samsung/serial: unify UCON register settings
      Samsung/serial: make the clock source configureable
      ARM/Samsung: add S3C6410 SoC iomap
      ARM/Samsung: adapt the generic timer driver to support the S3C6410 SoC
      ARM/Samsung: add the clock tree support for the S3C6410 SoC
      ARM/Samsung: add GPIO handling support for the S3C6410 SoC
      ARM/Samsung: add generic S3C6410 SoC specific functions
      ARM/Samsung: add the S3C6410 SoC
      ARM/Samsung: add the Mini6410 platform as a user of the S3C6410 SoC
      ARM/Samsung: add the Tiny6410 platform as a user of the S3C6410 SoC
      serial Samsung: add the S3C64xx requirements

Juergen Kilb (3):
      Added SDR-size auto detection.
      pca-a-l1: added memory device for int. 60kB RAM.
      phyCARD-A-L1: Create xload configuration.

Marc Kleine-Budde (1):
      usb: gadget: enable for MXS

Marc Reilly (2):
      imx35: mmc clock has 6 bit divider, not 3_3
      i2c: add platform_data for i2c_board_info

Maxime Ripard (2):
      Add bootargs script to boot on ext filesystems
      Add support for the Crystalfontz CFA-10036 board

Sascha Hauer (82):
      ARM tqma53: Add standard flash header
      ARM tqma53: switch to new environment
      hush getopt: shift argv arguments
      defenv-2: Add usage information for bootargs scripts
      defenv-2: improve boot script
      lzo: Allow for static inlining
      ARM lds: remove unused got
      ARM: remove board linker script option
      ARM: remove exception vectors from boards
      ARM startup: calculate offset instead of runtime address
      ARM ep93xx: Get rid of special handling in linker file
      ARM boards: Use _text rather than TEXT_BASE
      ARM: Separate assembler functions into their own section
      ARM at91rm9200: remove SoC specific copying of exception vectors
      ARM: move exception vector table to exceptions.S
      kconfig: fix IS_ENABLED to not require all options to be defined
      USB: Fix typo tranceiver -> transceiver
      ARM: let armlinux_set_* depend on the correct option
      bootm: Fix undefined reference to of_fix_tree
      uimage: introduce UIMAGE Kconfig symbol
      ARM at91rm9200: Add missing include
      Add missing semicolons at end of EXPORT_SYMBOL
      exec command: Fix compilation
      input gpio buttons: needs poller API
      loadb: fix compilation
      mfd TWL4030: Fix Kconfig dependencies
      pwm PXA: Compile only on PXA
      fs nfs: depend on net
      mtd nand: Fix compilation without bbt support
      led: remove gpio include
      ARM Samsung S5P: Disable support until we have a board
      gpio: add static inlines for gpio_request/gpio_free
      ARM: remove mx1ads leftovers
      usb gadget at91: Use correct include
      usb gadget: Enable gadget support only when a driver is available
      ARM i.MX: rename internal-nand-boot.c to external-nand-boot.c
      ARM i.MX: No external NAND boot on i.MX1
      mtd: remove dead disk-on-chip support
      mtd omap: add prefix to omap specific decode_bch function
      ARM at91: remove const
      ARM at91: fix typo in define
      uimage: select uncompress and crc32 support
      I2C i.MX: disable driver for i.MX1
      mtd: scan_write_bbt is only needed with mtd write support
      UBI: select crc32 support
      nor m25p80: remove progression bar
      nor m25p80: remove unused variables
      nor m25p80: refactor chip erase
      nor m25p80: align start and end to erase blocks
      nor m25p80: optimize erase
      nor m25p80: implement fast read
      SPI i.MX: Add support for i.MX6
      ARM i.MX: Add support for internal serial boot mode
      ARM i.MX: Add support for the Freescale i.MX6 sabrelite board
      ARM i.MX: Add defconfig for Freescale i.MX6 Sabre Lite board
      ubi: cdev->write has to return the bytes read, not 0
      ubi: align ubi writes to LEB size
      Merge branch 'for-next/cfa-10036'
      Merge branch 'for-next/compressed-prepare'
      Merge branch 'for-next/defenv-2'
      Merge branch 'for-next/depend'
      Merge branch 'for-next/friendlyarm'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx-keypad'
      Merge branch 'for-next/imx-misc'
      Merge branch 'for-next/m25p80'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mkublheader'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/onfi'
      Merge branch 'for-next/pcm038'
      Merge branch 'for-next/randconfig'
      Merge branch 'for-next/reset-source'
      Merge branch 'for-next/sabrelite'
      Merge branch 'for-next/samsung'
      Merge branch 'for-next/tqma53'
      Merge branch 'for-next/ubi'
      qsort: Fix wrong check
      glob: fix GLOB_SORT
      Merge tag 'bootm_fix' of git://git.jcrosoft.org/barebox
      Release v2012.09.0

Steffen Trumtrar (2):
      trivial: fix spelling in usb code
      trivial: bootm: correct grammar in error message

Teresa G=E1mez (2):
      OMAP4: small header cleanup
      defaultenv-2: Add bootargs for booting from disk

Wolfram Sang (1):
      arm: mxs: bcb: fix usage of second bootstream

 .gitignore                                         |    1 +
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |   30 +-
 arch/arm/Makefile                                  |   20 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    3 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    3 +-
 arch/arm/boards/ccxmx51/ccxmx51.c                  |    1 -
 arch/arm/boards/crystalfontz-cfa10036/Makefile     |    1 +
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  106 ++
 arch/arm/boards/crystalfontz-cfa10036/config.h     |   16 +
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |   10 +
 .../crystalfontz-cfa10036/env/init/automount       |    9 +
 .../crystalfontz-cfa10036/env/init/bootargs-base   |    8 +
 .../boards/crystalfontz-cfa10036/env/init/general  |   12 +
 .../boards/crystalfontz-cfa10036/env/init/hostname |    8 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    7 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    4 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   11 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 -
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    4 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    8 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   11 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    4 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    4 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   11 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    1 -
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    2 +-
 arch/arm/boards/freescale-mx6-arm2/flash_header.c  |    5 +-
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  265 +++
 arch/arm/boards/freescale-mx6-sabrelite/config.h   |    4 +
 .../freescale-mx6-sabrelite/env/init/bootargs-base |    8 +
 .../freescale-mx6-sabrelite/env/init/hostname      |    8 +
 .../boards/freescale-mx6-sabrelite/flash_header.c  |  178 ++
 .../{mini2440 =3D> friendlyarm-mini2440}/Kconfig     |    0
 .../{mini2440 =3D> friendlyarm-mini2440}/Makefile    |    0
 .../{mini2440 =3D> friendlyarm-mini2440}/config.h    |    0
 .../{mini2440 =3D> friendlyarm-mini2440}/env/config  |    0
 .../lowlevel_init.S                                |    0
 .../{mini2440 =3D> friendlyarm-mini2440}/mini2440.c  |    3 +-
 arch/arm/boards/friendlyarm-mini6410/Makefile      |    1 +
 arch/arm/boards/friendlyarm-mini6410/config.h      |    8 +
 arch/arm/boards/friendlyarm-mini6410/env/config    |   56 +
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |  305 ++++
 arch/arm/boards/friendlyarm-tiny210/Makefile       |    1 +
 arch/arm/boards/friendlyarm-tiny210/config.h       |   19 +
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |   72 +
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |  113 ++
 arch/arm/boards/friendlyarm-tiny6410/Kconfig       |   19 +
 arch/arm/boards/friendlyarm-tiny6410/Makefile      |    3 +
 arch/arm/boards/friendlyarm-tiny6410/config.h      |    8 +
 .../friendlyarm-tiny6410/development-board.c       |   99 ++
 arch/arm/boards/friendlyarm-tiny6410/env/config    |   56 +
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |   80 +
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h    |   14 +
 arch/arm/boards/guf-cupid/lowlevel.c               |    4 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    4 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    4 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   10 +-
 arch/arm/boards/karo-tx25/board.c                  |    3 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    4 +-
 arch/arm/boards/karo-tx51/flash_header.c           |    2 +-
 arch/arm/boards/karo-tx51/tx51.c                   |    1 -
 arch/arm/boards/nhk8815/setup.c                    |    2 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |    7 +-
 arch/arm/boards/pcm037/pcm037.c                    |    4 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    4 +-
 arch/arm/boards/pcm038/pcm038.c                    |   36 +-
 arch/arm/boards/pcm038/pcm970.c                    |   24 +
 arch/arm/boards/pcm043/lowlevel.c                  |    4 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |  181 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    8 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    2 +-
 arch/arm/boards/tqma53/env/config                  |   43 -
 arch/arm/boards/tqma53/env/init/bootargs-base      |    8 +
 arch/arm/boards/tqma53/env/init/hostname           |    8 +
 arch/arm/boards/tqma53/flash_header.c              |    5 +-
 arch/arm/configs/cfa10036_defconfig                |   42 +
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |   71 +
 ...40_defconfig =3D> friendlyarm_mini2440_defconfig} |    2 +-
 arch/arm/configs/friendlyarm_mini6410_defconfig    |   40 +
 arch/arm/configs/friendlyarm_tiny210_defconfig     |   17 +
 arch/arm/configs/friendlyarm_tiny6410_defconfig    |   41 +
 arch/arm/configs/phycard_a_l1_xload_defconfig      |   43 +
 arch/arm/configs/tqma53_defconfig                  |   14 +-
 arch/arm/cpu/cache-armv4.S                         |    7 +-
 arch/arm/cpu/cache-armv5.S                         |    7 +-
 arch/arm/cpu/cache-armv6.S                         |   11 +-
 arch/arm/cpu/cache-armv7.S                         |    8 +-
 arch/arm/cpu/exceptions.S                          |   28 +-
 arch/arm/cpu/start.c                               |   37 +-
 arch/arm/include/asm/armlinux.h                    |    3 +-
 arch/arm/lib/Makefile                              |    3 +-
 arch/arm/lib/ashldi3.S                             |    1 +
 arch/arm/lib/ashrdi3.S                             |    1 +
 arch/arm/lib/barebox.lds.S                         |    8 -
 arch/arm/lib/bootm.c                               |    6 +-
 arch/arm/lib/io-writesw-armv4.S                    |    2 +
 arch/arm/lib/lib1funcs.S                           |    7 +
 arch/arm/lib/lshrdi3.S                             |    1 +
 arch/arm/mach-at91/Kconfig                         |    1 -
 arch/arm/mach-at91/at91rm9200_devices.c            |    3 +-
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |   18 -
 arch/arm/mach-at91/at91sam9261_devices.c           |    6 +-
 arch/arm/mach-at91/include/mach/gpio.h             |    9 -
 arch/arm/mach-ep93xx/Makefile                      |    2 +-
 arch/arm/mach-ep93xx/header.c                      |    8 +
 arch/arm/mach-ep93xx/include/mach/barebox.lds.h    |    9 +
 arch/arm/mach-imx/Kconfig                          |   24 +-
 arch/arm/mach-imx/Makefile                         |    3 +-
 arch/arm/mach-imx/devices.c                        |    5 +
 .../{internal-nand-boot.c =3D> external-nand-boot.c} |    0
 arch/arm/mach-imx/include/mach/barebox.lds.h       |   12 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |    4 +
 arch/arm/mach-imx/include/mach/devices-imx6.h      |    5 +
 arch/arm/mach-imx/include/mach/devices.h           |    2 +
 arch/arm/mach-imx/include/mach/iim.h               |    1 -
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |    9 +
 arch/arm/mach-imx/reset_source.c                   |   72 +
 arch/arm/mach-imx/speed-imx35.c                    |    8 +-
 arch/arm/mach-imx/speed-imx51.c                    |    5 +
 arch/arm/mach-imx/speed-imx53.c                    |    5 +
 arch/arm/mach-imx/speed-imx6.c                     |    5 +
 arch/arm/mach-mxs/Kconfig                          |    8 +
 arch/arm/mach-mxs/bcb.c                            |    2 +-
 arch/arm/mach-omap/Kconfig                         |    1 +
 arch/arm/mach-omap/gpmc.c                          |   12 +-
 arch/arm/mach-omap/include/mach/clocks.h           |    3 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |    1 +
 arch/arm/mach-omap/omap4_clock.c                   |    4 +-
 arch/arm/mach-omap/omap4_generic.c                 |    5 +-
 arch/arm/mach-samsung/Kconfig                      |   62 +-
 arch/arm/mach-samsung/Makefile                     |    6 +-
 .../{s3c24xx-clocks.c =3D> clocks-s3c24xx.c}         |    0
 arch/arm/mach-samsung/clocks-s3c64xx.c             |  338 ++++
 arch/arm/mach-samsung/gpio-s3c64xx.c               |  301 ++++
 .../mach-samsung/include/mach/devices-s3c64xx.h    |   40 +
 arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
 arch/arm/mach-samsung/include/mach/iomux-s3c64xx.h |  542 ++++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |    3 +
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |   23 +
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |    3 +
 .../arm/mach-samsung/include/mach/s3c64xx-clocks.h |   67 +
 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h |   51 +
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h  |    5 +-
 arch/arm/mach-samsung/mem-s3c64xx.c                |   66 +
 arch/arm/mach-samsung/mem-s5pcxx.c                 |  320 ++++
 arch/arm/mach-samsung/reset_source.c               |   56 +
 arch/arm/mach-samsung/s3c-timer.c                  |   16 +-
 arch/mips/boards/qemu-malta/init.c                 |    9 +
 arch/mips/boot/main_entry.c                        |   47 +
 arch/mips/include/asm/addrspace.h                  |  109 ++
 arch/mips/include/asm/asm.h                        |    8 -
 arch/mips/include/asm/mipsregs.h                   |   32 -
 arch/mips/lib/Makefile                             |    2 +
 arch/mips/lib/genex.S                              |   31 +
 arch/mips/lib/traps.c                              |  107 ++
 commands/Kconfig                                   |    2 +
 commands/Makefile                                  |    2 +-
 commands/bootm.c                                   |   10 +-
 commands/digest.c                                  |   12 +-
 commands/exec.c                                    |    4 +-
 commands/loadb.c                                   |    4 +-
 commands/mem.c                                     |    5 +-
 commands/usb.c                                     |    2 +-
 common/Kconfig                                     |   19 +
 common/Makefile                                    |    5 +-
 common/hush.c                                      |    5 +-
 common/reset_source.c                              |   44 +
 common/uimage.c                                    |    6 +-
 defaultenv-2/base/bin/boot                         |   42 +-
 defaultenv-2/base/bin/bootargs-root-disk           |   26 +
 defaultenv-2/base/bin/bootargs-root-ext            |   12 +
 defaultenv-2/base/bin/bootargs-root-initrd         |    7 +-
 defaultenv-2/base/bin/bootargs-root-jffs2          |   14 +-
 defaultenv-2/base/bin/bootargs-root-nfs            |    7 +-
 defaultenv-2/base/bin/bootargs-root-ubi            |   13 +-
 drivers/i2c/busses/Kconfig                         |    2 +-
 drivers/i2c/i2c.c                                  |    1 +
 drivers/input/Kconfig                              |   14 +
 drivers/input/Makefile                             |    1 +
 drivers/input/imx_keypad.c                         |  463 +++++
 drivers/led/core.c                                 |    1 -
 drivers/mfd/Kconfig                                |    1 -
 drivers/mfd/mc13xxx.c                              |    1 +
 drivers/mfd/mc34704.c                              |    4 +-
 drivers/mfd/mc9sdz60.c                             |    4 +-
 drivers/mtd/nand/Kconfig                           |   32 -
 drivers/mtd/nand/Makefile                          |    1 -
 drivers/mtd/nand/diskonchip.c                      | 1787 ----------------=
----
 drivers/mtd/nand/nand_base.c                       |  174 +-
 drivers/mtd/nand/nand_bbt.c                        |    2 +
 drivers/mtd/nand/nand_imx.c                        |   98 +-
 drivers/mtd/nand/nand_omap_bch_decoder.c           |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    4 +-
 drivers/mtd/nand/nand_write.c                      |    5 +-
 drivers/mtd/ubi/Kconfig                            |    1 +
 drivers/mtd/ubi/cdev.c                             |   35 +-
 drivers/nor/m25p80.c                               |   77 +-
 drivers/nor/m25p80.h                               |   12 +-
 drivers/pwm/Kconfig                                |    1 +
 drivers/serial/Kconfig                             |    4 +
 drivers/serial/serial_ns16550.c                    |    2 +-
 drivers/serial/serial_s3c.c                        |   74 +-
 drivers/spi/Kconfig                                |    2 +-
 drivers/spi/imx_spi.c                              |    6 +-
 drivers/usb/core/usb.c                             |    4 +-
 drivers/usb/gadget/Kconfig                         |    7 +-
 drivers/usb/gadget/at91_udc.c                      |    3 +-
 drivers/usb/otg/Kconfig                            |    7 +-
 drivers/watchdog/im28wd.c                          |   25 +
 fs/Kconfig                                         |    1 +
 include/asm-generic/barebox.lds.h                  |    3 +-
 include/driver.h                                   |    2 +-
 include/gpio.h                                     |   13 +
 include/i2c/i2c.h                                  |    1 +
 include/linux/kconfig.h                            |   20 +-
 include/linux/mtd/mtd-abi.h                        |    7 +-
 include/linux/mtd/nand.h                           |   74 +-
 include/linux/string.h                             |    3 +
 include/lzo.h                                      |    8 +-
 include/matrix_keypad.h                            |   59 +
 include/mfd/mc13xxx.h                              |   23 +-
 include/reset_source.h                             |   27 +
 lib/Kconfig                                        |    2 +-
 lib/decompress_unlzo.c                             |   10 +-
 lib/glob.c                                         |    4 +-
 lib/lzo/lzo1x_decompress.c                         |    2 +-
 lib/qsort.c                                        |    2 +-
 lib/string.c                                       |   39 +
 lib/stringlist.c                                   |    4 +-
 scripts/.gitignore                                 |    5 +-
 scripts/Makefile                                   |    1 +
 scripts/Makefile.build                             |   25 +-
 scripts/mkublheader.c                              |   99 ++
 238 files changed, 6042 insertions(+), 2390 deletions(-)
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/Makefile
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/config.h
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/automount
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs=
-base
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/general
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/bootar=
gs-base
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/hostna=
me
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
 rename arch/arm/boards/{mini2440 =3D> friendlyarm-mini2440}/Kconfig (100%)
 rename arch/arm/boards/{mini2440 =3D> friendlyarm-mini2440}/Makefile (100%)
 rename arch/arm/boards/{mini2440 =3D> friendlyarm-mini2440}/config.h (100%)
 rename arch/arm/boards/{mini2440 =3D> friendlyarm-mini2440}/env/config (10=
0%)
 rename arch/arm/boards/{mini2440 =3D> friendlyarm-mini2440}/lowlevel_init.=
S (100%)
 rename arch/arm/boards/{mini2440 =3D> friendlyarm-mini2440}/mini2440.c (99=
%)
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/config.h
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/env/config
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/mini6410.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny210/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-tiny210/config.h
 create mode 100644 arch/arm/boards/friendlyarm-tiny210/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny210/tiny210.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/Kconfig
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/config.h
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/development-board.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/env/config
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
 delete mode 100644 arch/arm/boards/tqma53/env/config
 create mode 100644 arch/arm/boards/tqma53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/tqma53/env/init/hostname
 create mode 100644 arch/arm/configs/cfa10036_defconfig
 create mode 100644 arch/arm/configs/freescale-mx6-sabrelite_defconfig
 rename arch/arm/configs/{mini2440_defconfig =3D> friendlyarm_mini2440_defc=
onfig} (92%)
 create mode 100644 arch/arm/configs/friendlyarm_mini6410_defconfig
 create mode 100644 arch/arm/configs/friendlyarm_tiny210_defconfig
 create mode 100644 arch/arm/configs/friendlyarm_tiny6410_defconfig
 create mode 100644 arch/arm/configs/phycard_a_l1_xload_defconfig
 create mode 100644 arch/arm/mach-ep93xx/header.c
 create mode 100644 arch/arm/mach-ep93xx/include/mach/barebox.lds.h
 rename arch/arm/mach-imx/{internal-nand-boot.c =3D> external-nand-boot.c} =
(100%)
 create mode 100644 arch/arm/mach-imx/reset_source.c
 rename arch/arm/mach-samsung/{s3c24xx-clocks.c =3D> clocks-s3c24xx.c} (100=
%)
 create mode 100644 arch/arm/mach-samsung/clocks-s3c64xx.c
 create mode 100644 arch/arm/mach-samsung/gpio-s3c64xx.c
 create mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c64xx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h
 create mode 100644 arch/arm/mach-samsung/mem-s3c64xx.c
 create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/reset_source.c
 create mode 100644 arch/mips/include/asm/addrspace.h
 create mode 100644 arch/mips/lib/genex.S
 create mode 100644 arch/mips/lib/traps.c
 create mode 100644 common/reset_source.c
 create mode 100644 defaultenv-2/base/bin/bootargs-root-disk
 create mode 100644 defaultenv-2/base/bin/bootargs-root-ext
 create mode 100644 drivers/input/imx_keypad.c
 delete mode 100644 drivers/mtd/nand/diskonchip.c
 create mode 100644 include/matrix_keypad.h
 create mode 100644 include/reset_source.h
 create mode 100644 scripts/mkublheader.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
