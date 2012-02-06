Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuNwA-0002rd-OR
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 12:44:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RuNvs-00031T-1c
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 13:44:32 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RuNvs-0001sJ-0Z
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 13:44:32 +0100
Date: Mon, 6 Feb 2012 13:44:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120206124432.GN1990@pengutronix.de>
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
Subject: v2012.02.0
To: barebox@lists.infradead.org

Al lot has happened since the last release. We have a new architecture
(openrisc), a new memory allocator (tlsf), the mtd stuff has been
reworked to support DOC devices and the bootm/uImage code has been
reworked. Here's a more detailed view what has happened since the last
release.

Sascha

Alexander Aring (15):
      stringlist-functions: add sorted insert
      commands/ls: add to use sorted-insert
      auto-completion: add auto-completion for path files
      i2c-omap: add i2c omap4 support
      twl-core: abstract twl4030 and add twlcore driver
      twl-core: add support for twl6030
      omap_hsmmc: setup mmc voltage on twl6030
      pcm049-i2c: add i2c and twlcore to pcm049
      nandtest: add nandtest command
      Kconfig: add missing dependencies.
      nand_omap_gpmc: fix return value
      ioctl: add support for ECCGETSTATS and MEMGETREGIONINFO
      nandtest: fix typo
      nandtest: add missing select.
      twl6030: add missing twl6030 header file.

Antony Pavlov (3):
      import TLSF 2.0 from http://tlsf.baisoku.org/tlsf-2.0.zip
      adapt tlsf for barebox
      add tlsf-based malloc implementation

Christian Hemp (2):
      imxfb: Add support for multiple video modes
      pca100: Add displays and framebuffer support.

Daniel Mack (1):
      omap3: add register definitions for chip die ID

Eric B=E9nard (5):
      fsl_udc: update and fix
      dfu: fill bwPollTimeout and better handle detach
      serial gadget: enable/disable on request
      eukrea_cpuimx35: fix compilation when CONFIG_USB_GADGET is enabled
      u_serial: add setbrg to be able to use loadb & co

Franck Jullien (2):
      Add OpenRISC arch
      Add a generic board

Jean-Christophe PLAGNIOL-VILLARD (27):
      at91: add udc usb device controller support
      usb-a926x: add usb device support
      at91sam9260/9g20-ek: update nand support
      at91sam9260/9g20-ek: add usb host, device and mci support
      at91: add at91_udc resource
      mtd/core.c: fix MTDPGALG
      scripts/Makefile.lib: update compress cmd support
      defaultenv: use a compressed version when embedded in barebox
      atmel: reference boards and Caloa boards bbt option enabled
      ARM: import memcpy_from/toio and memset_io from linux
      mtd: atmel_nand: optimize read/write buffer functions
      atmel_nand: drop dead code
      at91: add sram memory devices
      at91sam9263ek: add nor partition
      at91sam9x: switch lowlevel init to c
      at91/gpio: simplify resources
      usb-a926x: add led support
      usb-a926x: add dfu support
      at91_udc: update vbus param only if updated
      usb-a926x: update defconfig
      calao/usb-926x: update usb gadget support
      defaultenv: source the init_board so we can keep exported env
      defaultenv: enable progress for cp
      poller_call: move from getc to is_timeout
      at91rm9200: fix lowlovel init PIOC base
      at91rm9200_devices: add missing sizes.h
      atmel/mci: fix slot_b support

Juergen Beisert (20):
      Add support for more recent Davicom DM9k devices
      Remove the obsolet driver for the DM9000E ethernet device
      MACH SAMSUNG: Rename the whole mach to add more CPUs in future
      MACH SAMSUNG/S3C: Do not compile S3C24xx's GPIO support unconditional=
ly
      MACH SAMSUNG/S3C: Make it more generic for future updates
      MACH SAMSUNG/S3C: Use the correct CPU family name to reflect NAND dri=
ver's usage
      MACH SAMSUNG/S3C: Parts of the SDHC driver can be shared in the S3C C=
PU family
      MACH SAMSUNG/S3C: Reflect the CPU name the LCD driver is for
      MACH SAMSUNG/S3C: Separate S3C24XX clock management
      MACH SAMSUNG/S3C: Separate the clocksource for the S3C family
      MACH SAMSUNG/S3C: Rename register macros to reflect the MACH they are=
 valid for
      MACH SAMSUNG/S3C: Re-work the S3C family timer driver
      MACH SAMSUNG/S3C: Prepare watchdog unit to be shared in the S3C family
      MACH SAMSUNG/S3C: Unify the UART driver for the S3C family of CPUs
      MACH SAMSUNG/S3C: Re-work the memory detection and handling
      MACH SAMSUNG/S3C: Re-work the GPIO handling for S3C24xx CPUs
      MTD/NAND/DOC: add forgotten change due to API change
      MTD/NAND/S3C: re-add change due to API change
      Mini2440: enable more working devices for a more broad compile time t=
est
      S3C24xx/video: fix forgotten include file name change

Juergen Kilb (2):
      Add support for the Phytec phyCARD-A-L1 (PCA-A-L1).
      arm: update mach-types

Robert Jarzmik (21):
      arm/mach-pxa: add MMC clock
      arm/mach-pxa: add mci_pxa2xx file
      drivers/mci: add PXA host controller
      usb/gadget: add special treatment for PXA cpus
      drivers/mci: pxa writedata timeout
      drivers/mci: pxa read data performance boost
      arch/arm: mmu: add map_io_range()
      drivers/mtd: move nand.c into core.c
      drivers/mtd: cosmetic changes
      drivers/mtd: transfer NAND notions to MTD core
      drivers/mtd: fix core multiple MTD registrations
      drivers/mtd: add mtd core hooks
      drivers/mtd: split mtd mtdoob devices
      drivers/mtd: add the mtdraw device (data+oob)
      lib: add BCH encoding/decoding
      lib: add bitrev utility
      drivers/mtd: add docg3 chip
      drivers/mci: pxa fix clockrate
      usb/gadget: fix poller NPE in early polling
      drivers/mtd: fix mtdraw write support
      drivers/mtd: fix docg3 write support

Robert P. J. Day (1):
      Typo fix in Kconfig file: "Invlidate" -> "Invalidate"

Sanjeev Premi (2):
      ARM omap: Use updated config option
      ARM omap3beagle: Fix incorrect base addresses

Sascha Hauer (65):
      ARM i.MX27: initialize MAX
      Add missing code from linux_exec command
      ppc pcm030: Fix device resource sizes
      pcm030: update defconfig
      ppc pcm030: Move memory registration to mem_initcall
      ppc: switch to libfdt based oftree implementation
      remove old ft_build support
      oftree: add of_fix_tree()
      filetype: Add oftree detection
      uncompress: implement uncompress_fd_to_buf
      libbb: add read_full/write_full functions
      ARM: call start_linux directly with initrd start/size and oftree
      reimplement uImage code
      bootm: use new uimage code
      add uimage command
      remove now obsolete iminfo command
      remove now unused uImage code
      move code now only used in mkimage to mkimage
      defaultenv: simplify boot
      remove unused watchdog header
      remove unused keyboard.h file
      ARM cpuinfo: decode more bits, use ARRAY_SIZE
      ARM: remove unused icache command
      common.h: remove unused function declarations
      cdev: pass flags to open function
      nand-bb: implement lseek in readonly mode
      Merge branch 'master' into next
      Merge branch 'pu/misc' into next
      Merge branch 'pu/imx27-max' into next
      ppc: switch to libfdt based oftree implementation
      remove old ft_build support
      Merge branch 'pu/ppc-oftree' into next
      Merge branch 'work/uimage' into next
      bootm: Add missing Kconfig dependency
      Merge branch 'master' into next
      remove undefined WATCHDOG_RESET
      ARM zImage: fix missing setting of load_address
      Merge branch 'master' into next
      tlsf: enable assertions
      tlsf: implement malloc_stats
      tlsf: remove unused stuff from tlsfbits.h
      scripts/Kbuild.include: update to latest kernel version
      Makefile: disable unused-but-set-variable warning
      mtd Kconfig: only select NAND_READ_OOB when NAND is enabled
      net dm9k: Fix compiler warning
      Makefile: disable warning: generating trampoline in object
      ARM i.MX5: prepare to add a imx51_lowlevel_init
      ARM i.MX51: implement a imx51_lowlevel_init
      ARM i.MX51 babbage: use generic lowlevel init function
      ARM eukrea i.MX51: use generic lowlevel init
      ARM: update string functions from Linux Kernel
      ARM cache-armv7: use thumb-2 instructions where necessary
      MAKEALL: explicitly use bash
      defconfig update
      Merge branch 'pu/compiler-warnings' into next
      Merge branch 'pu/tlsf' into next
      Merge branch 'work/defconfigs' into next
      ARM i.MX5 loco/smd: fix compilation
      video imx: specify num_modes in platform_data
      ARM AT91: Add missing on_flash_bbt in atmel_nand_data
      ARM omap beagle xload: update defconfig
      fat fs: Fix compile warning
      Merge branch 'next'
      Merge branch 'pu/compile'
      Release v2012.02.0

Wolfram Sang (3):
      command: flash: remove broken filename check
      mxs: add support for mx28-evk
      boards: mx23evk: add MMC support

 Documentation/boards.dox                           |    1 +
 MAKEALL                                            |    2 +-
 Makefile                                           |    8 +-
 arch/arm/Kconfig                                   |    5 +-
 arch/arm/Makefile                                  |    4 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |   94 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    6 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |   64 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |   50 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |   11 +-
 arch/arm/boards/at91rm9200ek/env/config            |    5 -
 arch/arm/boards/at91sam9260ek/env/bin/_update      |   36 -
 arch/arm/boards/at91sam9260ek/env/bin/boot         |   38 -
 arch/arm/boards/at91sam9260ek/env/bin/init         |   19 -
 arch/arm/boards/at91sam9260ek/env/bin/init_board   |   23 +
 arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop   |   14 -
 arch/arm/boards/at91sam9260ek/env/bin/pciloop      |   13 -
 .../arm/boards/at91sam9260ek/env/bin/update_kernel |    8 -
 arch/arm/boards/at91sam9260ek/env/bin/update_root  |    8 -
 arch/arm/boards/at91sam9260ek/env/config           |   45 +-
 arch/arm/boards/at91sam9260ek/init.c               |   90 ++-
 arch/arm/boards/at91sam9261ek/env/config           |    5 -
 arch/arm/boards/at91sam9261ek/init.c               |    5 +-
 arch/arm/boards/at91sam9263ek/config.h             |   18 -
 arch/arm/boards/at91sam9263ek/env/config           |    7 +-
 arch/arm/boards/at91sam9263ek/init.c               |    1 +
 arch/arm/boards/at91sam9m10g45ek/env/config        |    5 -
 arch/arm/boards/at91sam9m10g45ek/init.c            |    1 +
 arch/arm/boards/chumby_falconwing/env/bin/boot     |    9 +-
 arch/arm/boards/chumby_falconwing/env/config       |    2 -
 arch/arm/boards/dss11/env/config                   |    5 -
 arch/arm/boards/dss11/init.c                       |    3 +-
 arch/arm/boards/eukrea_cpuimx25/env/config         |    1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    1 +
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    1 +
 arch/arm/boards/eukrea_cpuimx35/env/config         |    1 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    3 +
 arch/arm/boards/eukrea_cpuimx51/Makefile           |    1 -
 arch/arm/boards/eukrea_cpuimx51/env/config         |    1 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    3 +
 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S    |  216 ---
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   31 +
 arch/arm/boards/freescale-mx28-evk/Makefile        |    1 +
 arch/arm/boards/freescale-mx28-evk/config.h        |   16 +
 arch/arm/boards/freescale-mx28-evk/env/config      |   51 +
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  141 ++
 arch/arm/boards/freescale-mx35-3-stack/env/config  |    5 -
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    1 -
 arch/arm/boards/freescale-mx51-pdk/board.c         |    3 +
 arch/arm/boards/freescale-mx51-pdk/env/config      |    5 -
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  216 ---
 arch/arm/boards/freescale-mx53-loco/board.c        |    4 +-
 arch/arm/boards/freescale-mx53-loco/env/config     |    5 -
 arch/arm/boards/freescale-mx53-smd/board.c         |    4 +-
 arch/arm/boards/freescale-mx53-smd/env/config      |    5 -
 arch/arm/boards/guf-cupid/env/config               |    5 -
 arch/arm/boards/guf-neso/board.c                   |    1 +
 arch/arm/boards/guf-neso/env/config                |    5 -
 arch/arm/boards/imx21ads/imx21ads.c                |    1 +
 arch/arm/boards/karo-tx25/board.c                  |    1 +
 arch/arm/boards/karo-tx25/env/config               |    5 -
 arch/arm/boards/karo-tx28/env/config               |    5 -
 arch/arm/boards/mini2440/env/config                |    5 -
 arch/arm/boards/mini2440/lowlevel_init.S           |    6 +-
 arch/arm/boards/mini2440/mini2440.c                |   30 +-
 arch/arm/boards/mmccpu/config.h                    |   18 -
 arch/arm/boards/nhk8815/env/config                 |    5 -
 arch/arm/boards/omap/board-beagle.c                |   10 +-
 arch/arm/boards/omap/board-omap3evm.c              |    2 +-
 arch/arm/boards/omap/board-sdp343x.c               |    2 +-
 arch/arm/boards/panda/env/config                   |    5 -
 arch/arm/boards/pcm037/env/config                  |    5 -
 arch/arm/boards/pcm038/env/config                  |    5 -
 arch/arm/boards/pcm038/pcm038.c                    |    1 +
 arch/arm/boards/pcm043/env/config                  |    5 -
 arch/arm/boards/pcm049/board.c                     |   11 +
 arch/arm/boards/pcm049/env/config                  |    5 -
 arch/arm/boards/phycard-a-l1/Makefile              |   22 +
 arch/arm/boards/phycard-a-l1/config.h              |   22 +
 arch/arm/boards/phycard-a-l1/env/config            |   78 +
 arch/arm/boards/phycard-a-l1/lowlevel.c            |   39 +
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |  350 +++++
 arch/arm/boards/phycard-a-l1/pca-a-l1.dox          |   16 +
 arch/arm/boards/phycard-a-l1/pca-a-l1.h            |   35 +
 arch/arm/boards/phycard-a-l1/platform.S            |   65 +
 arch/arm/boards/phycard-i.MX27/env/config          |    5 -
 arch/arm/boards/phycard-i.MX27/pca100.c            |  105 ++
 arch/arm/boards/pm9261/config.h                    |   18 -
 arch/arm/boards/pm9261/env/config                  |    5 -
 arch/arm/boards/pm9261/init.c                      |    4 +-
 arch/arm/boards/pm9263/config.h                    |   18 -
 arch/arm/boards/pm9g45/env/config                  |    5 -
 arch/arm/boards/scb9328/env/config                 |    5 -
 arch/arm/boards/usb-a926x/env/bin/init_board       |   49 +
 arch/arm/boards/usb-a926x/env/config               |    5 -
 arch/arm/boards/usb-a926x/init.c                   |   45 +
 arch/arm/boards/versatile/env/config               |    5 -
 arch/arm/configs/at91sam9260ek_defconfig           |   27 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |   27 +-
 arch/arm/configs/cupid_defconfig                   |   19 +-
 arch/arm/configs/freescale_mx25_3stack_defconfig   |   26 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |   18 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   20 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |   16 +-
 arch/arm/configs/freescale_mx53_smd_defconfig      |   15 +
 arch/arm/configs/imx28evk_defconfig                |   48 +
 arch/arm/configs/mini2440_defconfig                |    7 +-
 arch/arm/configs/neso_defconfig                    |   13 +
 arch/arm/configs/omap3530_beagle_xload_defconfig   |    4 +-
 arch/arm/configs/pca100_defconfig                  |   17 +-
 arch/arm/configs/pcm037_defconfig                  |   17 +
 arch/arm/configs/pcm038_defconfig                  |   18 +
 arch/arm/configs/pcm043_defconfig                  |   15 +
 arch/arm/configs/pcm049_defconfig                  |   18 +-
 arch/arm/configs/pcm049_xload_defconfig            |    4 +-
 arch/arm/configs/phycard_a_l1_defconfig            |  183 +++
 arch/arm/configs/pm9261_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |   18 +-
 arch/arm/configs/tx25stk5_defconfig                |   19 +-
 arch/arm/configs/tx28stk5_defconfig                |   25 +-
 arch/arm/configs/usb_a9260_defconfig               |   24 +-
 arch/arm/configs/usb_a9263_128mib_defconfig        |   24 +-
 arch/arm/configs/usb_a9263_defconfig               |   24 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |   24 +-
 arch/arm/configs/usb_a9g20_defconfig               |   24 +-
 arch/arm/cpu/cache-armv7.S                         |    8 +-
 arch/arm/cpu/cpu.c                                 |   34 -
 arch/arm/cpu/cpuinfo.c                             |    6 +-
 arch/arm/cpu/mmu.c                                 |   12 +
 arch/arm/include/asm/armlinux.h                    |    3 +-
 arch/arm/include/asm/io.h                          |    7 +
 arch/arm/include/asm/mmu.h                         |    6 +
 arch/arm/lib/Makefile                              |    1 +
 arch/arm/lib/armlinux.c                            |   20 +-
 arch/arm/lib/bootm.c                               |  222 +++-
 arch/arm/lib/bootu.c                               |    8 +-
 arch/arm/lib/bootz.c                               |    7 +-
 arch/arm/lib/copy_template.S                       |   24 +-
 arch/arm/lib/findbit.S                             |   84 +-
 arch/arm/lib/io-writesw-armv4.S                    |   11 +-
 arch/arm/lib/io.c                                  |   50 +
 arch/arm/lib/memcpy.S                              |    7 +-
 arch/arm/mach-at91/at91rm9200.c                    |   12 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |   24 +
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |    6 +-
 arch/arm/mach-at91/at91sam9260.c                   |    9 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   55 +-
 arch/arm/mach-at91/at91sam9261.c                   |    9 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   26 +
 arch/arm/mach-at91/at91sam9263.c                   |   15 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   88 +-
 arch/arm/mach-at91/at91sam926x_lowlevel_init.S     |  278 ----
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |  171 +++
 arch/arm/mach-at91/at91sam9g45.c                   |   15 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |    3 +
 arch/arm/mach-at91/gpio.c                          |   13 +-
 arch/arm/mach-at91/include/mach/at91rm9200.h       |    9 +-
 arch/arm/mach-at91/include/mach/at91sam9260.h      |   17 +-
 arch/arm/mach-at91/include/mach/at91sam9261.h      |   10 +-
 arch/arm/mach-at91/include/mach/at91sam9263.h      |   11 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h      |   11 +-
 arch/arm/mach-at91/include/mach/board.h            |   12 +
 arch/arm/mach-at91/include/mach/gpio.h             |    4 -
 arch/arm/mach-imx/Kconfig                          |    2 -
 arch/arm/mach-imx/Makefile                         |    4 +-
 arch/arm/mach-imx/imx27.c                          |   43 +
 arch/arm/mach-imx/imx5.c                           |   58 +
 arch/arm/mach-imx/imx51.c                          |  105 ++
 arch/arm/mach-imx/imx53.c                          |   61 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |    1 +
 arch/arm/mach-imx/include/mach/imx5.h              |    9 +
 arch/arm/mach-imx/include/mach/imx53.h             |    6 -
 arch/arm/mach-imx/include/mach/imxfb.h             |    1 +
 arch/arm/mach-mxs/Kconfig                          |    7 +
 arch/arm/mach-mxs/include/mach/iomux-imx28.h       |    1 +
 arch/arm/mach-omap/Kconfig                         |   10 +-
 arch/arm/mach-omap/Makefile                        |    1 +
 arch/arm/mach-omap/include/mach/generic.h          |    7 +
 arch/arm/mach-omap/include/mach/omap3-silicon.h    |    4 +
 .../arm/mach-omap/include/mach/omap4_twl6030_mmc.h |   14 +
 arch/arm/mach-omap/omap4_twl6030_mmc.c             |   46 +
 arch/arm/mach-pxa/include/mach/clock.h             |    1 +
 arch/arm/mach-pxa/include/mach/mci_pxa2xx.h        |   10 +
 arch/arm/mach-pxa/speed-pxa27x.c                   |    5 +
 arch/arm/mach-s3c24xx/Makefile                     |    2 -
 arch/arm/mach-s3c24xx/generic.c                    |  297 ----
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h |  177 ---
 arch/arm/{mach-s3c24xx =3D> mach-samsung}/Kconfig    |   17 +-
 arch/arm/mach-samsung/Makefile                     |    3 +
 arch/arm/mach-samsung/generic.c                    |  164 +++
 .../{mach-s3c24xx =3D> mach-samsung}/gpio-s3c24x0.c  |   33 +-
 .../include/mach/gpio.h                            |    7 +-
 .../include/mach/iomux-s3c24x0.h                   |    0
 arch/arm/mach-samsung/include/mach/s3c-busctl.h    |   32 +
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   31 +
 .../include/mach/s3c-generic.h}                    |   15 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   69 +
 .../mci.h =3D> mach-samsung/include/mach/s3c-mci.h}  |    0
 .../include/mach/s3c24xx-fb.h}                     |    0
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |   77 +
 .../include/mach/s3c24xx-nand.h}                   |    0
 .../{mach-s3c24xx =3D> mach-samsung}/lowlevel-init.S |   10 +-
 arch/arm/mach-samsung/s3c-timer.c                  |  114 ++
 arch/arm/mach-samsung/s3c24xx-clocks.c             |  140 ++
 arch/arm/tools/mach-types                          |   66 +-
 arch/blackfin/lib/blackfin_linux.c                 |   12 +-
 arch/nios2/boards/generic/env/config               |    1 -
 arch/nios2/lib/bootm.c                             |   11 +-
 arch/openrisc/Kconfig                              |   29 +
 arch/openrisc/Makefile                             |   21 +
 arch/openrisc/boards/generic/Makefile              |    1 +
 arch/openrisc/boards/generic/config.h              |   28 +
 arch/openrisc/boards/generic/env/config            |   20 +
 arch/openrisc/boards/generic/generic.c             |   19 +
 arch/openrisc/configs/generic_defconfig            |   20 +
 arch/openrisc/cpu/Makefile                         |    5 +
 arch/openrisc/cpu/barebox.lds.S                    |   98 ++
 arch/openrisc/cpu/cache.c                          |  154 ++
 arch/openrisc/cpu/cpu.c                            |   43 +
 arch/openrisc/cpu/exceptions.c                     |   84 ++
 arch/openrisc/cpu/start.S                          |  335 +++++
 arch/openrisc/include/asm/barebox.h                |    4 +
 arch/openrisc/include/asm/bitops.h                 |   28 +
 arch/openrisc/include/asm/bitops/ffs.h             |   26 +
 arch/openrisc/include/asm/bitops/fls.h             |   26 +
 arch/openrisc/include/asm/byteorder.h              |    1 +
 arch/openrisc/include/asm/cache.h                  |   47 +
 arch/openrisc/include/asm/common.h                 |    4 +
 arch/openrisc/include/asm/elf.h                    |  107 ++
 arch/openrisc/include/asm/io.h                     |  123 ++
 arch/openrisc/include/asm/openrisc_exc.h           |   41 +
 arch/openrisc/include/asm/posix_types.h            |   71 +
 arch/openrisc/include/asm/ptrace.h                 |  131 ++
 arch/openrisc/include/asm/sections.h               |    1 +
 arch/openrisc/include/asm/spr-defs.h               |  567 +++++++
 arch/openrisc/include/asm/string.h                 |    4 +
 arch/openrisc/include/asm/swab.h                   |    4 +
 arch/openrisc/include/asm/system.h                 |   39 +
 arch/openrisc/include/asm/types.h                  |   79 +
 arch/openrisc/lib/Makefile                         |    6 +
 arch/openrisc/lib/ashldi3.S                        |   41 +
 arch/openrisc/lib/board.c                          |   42 +
 arch/openrisc/lib/clock.c                          |   50 +
 arch/openrisc/lib/cpuinfo.c                        |  156 ++
 arch/openrisc/lib/lshrdi3.S                        |   41 +
 arch/openrisc/lib/muldi3.S                         |   58 +
 arch/ppc/boards/pcm030/pcm030.c                    |    9 -
 arch/ppc/lib/board.c                               |    1 -
 arch/ppc/lib/ppclinux.c                            |  242 +---
 arch/ppc/lib/ticks.S                               |    1 -
 arch/ppc/mach-mpc5xxx/cpu.c                        |   42 +-
 commands/Kconfig                                   |   44 +-
 commands/Makefile                                  |    4 +-
 commands/bootm.c                                   |  451 +++++--
 commands/flash.c                                   |   10 -
 commands/iminfo.c                                  |   71 -
 commands/linux_exec.c                              |   60 +
 commands/ls.c                                      |    4 +-
 commands/nandtest.c                                |  364 +++++
 commands/uimage.c                                  |  108 ++
 commands/usbserial.c                               |  108 ++
 common/Kconfig                                     |   35 +-
 common/Makefile                                    |   31 +-
 common/clock.c                                     |    4 +
 common/complete.c                                  |   70 +-
 common/console.c                                   |    2 -
 common/filetype.c                                  |    3 +
 common/ft_build.c                                  |  620 --------
 common/image.c                                     |  287 ----
 common/memory.c                                    |    8 +
 common/oftree.c                                    |   22 +-
 common/startup.c                                   |   29 +-
 common/tlsf.c                                      |  969 ++++++++++++
 common/tlsf_malloc.c                               |   99 ++
 common/tlsfbits.h                                  |   55 +
 common/uimage.c                                    |  505 +++++++
 defaultenv/bin/_update                             |    2 +-
 defaultenv/bin/boot                                |   43 +-
 defaultenv/bin/init                                |    2 +-
 defaultenv/config                                  |    5 -
 drivers/base/resource.c                            |    2 +-
 drivers/i2c/busses/i2c-omap.c                      |  131 ++-
 drivers/mci/Kconfig                                |    7 +
 drivers/mci/Makefile                               |    2 +
 drivers/mci/atmel_mci.c                            |    4 +-
 drivers/mci/omap_hsmmc.c                           |   17 +
 drivers/mci/pxamci.c                               |  369 +++++
 drivers/mci/pxamci.h                               |   99 ++
 drivers/mci/s3c.c                                  |   16 +-
 drivers/mci/twl6030.c                              |   29 +
 drivers/mfd/Kconfig                                |   11 +-
 drivers/mfd/Makefile                               |    2 +
 drivers/mfd/twl-core.c                             |  157 ++
 drivers/mfd/twl4030.c                              |  142 +--
 drivers/mfd/twl6030.c                              |   56 +
 drivers/mtd/Kconfig                                |   18 +
 drivers/mtd/Makefile                               |    8 +-
 drivers/mtd/core.c                                 |  264 ++++
 drivers/mtd/devices/Kconfig                        |   16 +
 drivers/mtd/devices/Makefile                       |    5 +
 drivers/mtd/devices/docg3.c                        | 1196 +++++++++++++++
 drivers/mtd/devices/docg3.h                        |  283 ++++
 drivers/mtd/mtd.h                                  |   42 +
 drivers/mtd/mtdoob.c                               |   97 ++
 drivers/mtd/mtdraw.c                               |  305 ++++
 drivers/mtd/nand/Kconfig                           |   15 +-
 drivers/mtd/nand/Makefile                          |    6 +-
 drivers/mtd/nand/atmel_nand.c                      |   48 +-
 drivers/mtd/nand/diskonchip.c                      |    4 +-
 drivers/mtd/nand/nand-bb.c                         |   43 +-
 drivers/mtd/nand/nand.c                            |  290 ----
 drivers/mtd/nand/nand_base.c                       |   14 +-
 drivers/mtd/nand/nand_bbt.c                        |    2 +-
 drivers/mtd/nand/nand_hwecc.c                      |    4 +-
 drivers/mtd/nand/nand_hwecc_syndrome.c             |    6 +-
 drivers/mtd/nand/nand_imx.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |   10 +-
 .../mtd/nand/{nand_s3c2410.c =3D> nand_s3c24xx.c}    |   10 +-
 drivers/mtd/nand/nand_swecc.c                      |    4 +-
 drivers/mtd/nand/nomadik_nand.c                    |    2 +-
 drivers/mtd/ubi/cdev.c                             |    2 +-
 drivers/net/Kconfig                                |    4 +-
 drivers/net/Makefile                               |    2 +-
 drivers/net/dm9000.c                               |  564 -------
 drivers/net/dm9k.c                                 |  799 ++++++++++
 drivers/serial/Kconfig                             |   10 +-
 drivers/serial/Makefile                            |    2 +-
 drivers/serial/{serial_s3c24x0.c =3D> serial_s3c.c}  |   72 +-
 drivers/usb/gadget/Kconfig                         |   12 +-
 drivers/usb/gadget/Makefile                        |    1 +
 drivers/usb/gadget/at91_udc.c                      | 1538 ++++++++++++++++=
++++
 drivers/usb/gadget/at91_udc.h                      |  168 +++
 drivers/usb/gadget/dfu.c                           |    9 +-
 drivers/usb/gadget/f_acm.c                         |    4 +-
 drivers/usb/gadget/fsl_udc.c                       |   45 +-
 drivers/usb/gadget/pxa27x_udc.c                    |   19 +-
 drivers/usb/gadget/serial.c                        |   57 +-
 drivers/usb/gadget/u_serial.c                      |   27 +-
 drivers/usb/host/Kconfig                           |    1 +
 drivers/usb/otg/twl4030.c                          |    6 +-
 drivers/video/Kconfig                              |    2 +-
 drivers/video/Makefile                             |    2 +-
 drivers/video/imx.c                                |   22 +-
 drivers/video/{s3c.c =3D> s3c24xx.c}                 |    9 +-
 fs/devfs-core.c                                    |   41 +-
 fs/devfs.c                                         |    2 +-
 fs/fat/ff.c                                        |    2 +-
 include/boot.h                                     |   62 +-
 include/common.h                                   |    5 -
 include/driver.h                                   |    4 +-
 include/filetype.h                                 |    1 +
 include/ft_build.h                                 |   69 -
 include/image.h                                    |  155 +--
 include/keyboard.h                                 |   22 -
 include/libbb.h                                    |    3 +
 include/linux/bch.h                                |   79 +
 include/linux/bitrev.h                             |   16 +
 include/linux/mtd/mtd.h                            |    3 +-
 include/mci/twl6030.h                              |   10 +
 include/mfd/twl-core.h                             |   30 +
 include/mfd/twl4030.h                              |   35 +-
 include/mfd/twl6030.h                              |  419 ++++++
 include/of.h                                       |    1 +
 include/stringlist.h                               |    2 +
 include/tlsf.h                                     |   52 +
 include/usb/usbserial.h                            |   19 +
 include/watchdog.h                                 |   92 --
 lib/Kconfig                                        |    7 +
 lib/Makefile                                       |    2 +
 lib/bch.c                                          | 1366 +++++++++++++++++
 lib/bitrev.c                                       |   68 +
 lib/libbb.c                                        |   50 +
 lib/readline_simple.c                              |    2 -
 lib/stringlist.c                                   |   34 +
 lib/uncompress.c                                   |    8 +
 net/net.c                                          |    1 -
 scripts/Kbuild.include                             |  143 ++-
 scripts/Makefile.lib                               |   67 +-
 scripts/mkimage.c                                  |  240 +++
 381 files changed, 17979 insertions(+), 5149 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/_update
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/boot
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/init
 create mode 100644 arch/arm/boards/at91sam9260ek/env/bin/init_board
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/pciloop
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/at91sam9260ek/env/bin/update_root
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx28-evk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx28-evk/config.h
 create mode 100644 arch/arm/boards/freescale-mx28-evk/env/config
 create mode 100644 arch/arm/boards/freescale-mx28-evk/mx28-evk.c
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
 create mode 100644 arch/arm/boards/phycard-a-l1/Makefile
 create mode 100644 arch/arm/boards/phycard-a-l1/config.h
 create mode 100644 arch/arm/boards/phycard-a-l1/env/config
 create mode 100644 arch/arm/boards/phycard-a-l1/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-l1/pca-a-l1.c
 create mode 100644 arch/arm/boards/phycard-a-l1/pca-a-l1.dox
 create mode 100644 arch/arm/boards/phycard-a-l1/pca-a-l1.h
 create mode 100644 arch/arm/boards/phycard-a-l1/platform.S
 create mode 100644 arch/arm/boards/usb-a926x/env/bin/init_board
 create mode 100644 arch/arm/configs/imx28evk_defconfig
 create mode 100644 arch/arm/configs/phycard_a_l1_defconfig
 create mode 100644 arch/arm/lib/io.c
 delete mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.S
 create mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.c
 create mode 100644 arch/arm/mach-imx/imx5.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx5.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx53.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h
 create mode 100644 arch/arm/mach-omap/omap4_twl6030_mmc.c
 create mode 100644 arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
 delete mode 100644 arch/arm/mach-s3c24xx/Makefile
 delete mode 100644 arch/arm/mach-s3c24xx/generic.c
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
 rename arch/arm/{mach-s3c24xx =3D> mach-samsung}/Kconfig (90%)
 create mode 100644 arch/arm/mach-samsung/Makefile
 create mode 100644 arch/arm/mach-samsung/generic.c
 rename arch/arm/{mach-s3c24xx =3D> mach-samsung}/gpio-s3c24x0.c (84%)
 rename arch/arm/{mach-s3c24xx =3D> mach-samsung}/include/mach/gpio.h (74%)
 rename arch/arm/{mach-s3c24xx =3D> mach-samsung}/include/mach/iomux-s3c24x=
0.h (100%)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-busctl.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-clocks.h
 rename arch/arm/{mach-s3c24xx/include/mach/s3c24xx-generic.h =3D> mach-sam=
sung/include/mach/s3c-generic.h} (77%)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-iomap.h
 rename arch/arm/{mach-s3c24xx/include/mach/mci.h =3D> mach-samsung/include=
/mach/s3c-mci.h} (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/fb.h =3D> mach-samsung/include/=
mach/s3c24xx-fb.h} (100%)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
 rename arch/arm/{mach-s3c24xx/include/mach/s3c24x0-nand.h =3D> mach-samsun=
g/include/mach/s3c24xx-nand.h} (100%)
 rename arch/arm/{mach-s3c24xx =3D> mach-samsung}/lowlevel-init.S (98%)
 create mode 100644 arch/arm/mach-samsung/s3c-timer.c
 create mode 100644 arch/arm/mach-samsung/s3c24xx-clocks.c
 create mode 100644 arch/openrisc/Kconfig
 create mode 100644 arch/openrisc/Makefile
 create mode 100644 arch/openrisc/boards/generic/Makefile
 create mode 100644 arch/openrisc/boards/generic/config.h
 create mode 100644 arch/openrisc/boards/generic/env/config
 create mode 100644 arch/openrisc/boards/generic/generic.c
 create mode 100644 arch/openrisc/configs/generic_defconfig
 create mode 100644 arch/openrisc/cpu/Makefile
 create mode 100644 arch/openrisc/cpu/barebox.lds.S
 create mode 100644 arch/openrisc/cpu/cache.c
 create mode 100644 arch/openrisc/cpu/cpu.c
 create mode 100644 arch/openrisc/cpu/exceptions.c
 create mode 100644 arch/openrisc/cpu/start.S
 create mode 100644 arch/openrisc/include/asm/barebox.h
 create mode 100644 arch/openrisc/include/asm/bitops.h
 create mode 100644 arch/openrisc/include/asm/bitops/ffs.h
 create mode 100644 arch/openrisc/include/asm/bitops/fls.h
 create mode 100644 arch/openrisc/include/asm/byteorder.h
 create mode 100644 arch/openrisc/include/asm/cache.h
 create mode 100644 arch/openrisc/include/asm/common.h
 create mode 100644 arch/openrisc/include/asm/elf.h
 create mode 100644 arch/openrisc/include/asm/io.h
 create mode 100644 arch/openrisc/include/asm/openrisc_exc.h
 create mode 100644 arch/openrisc/include/asm/posix_types.h
 create mode 100644 arch/openrisc/include/asm/ptrace.h
 create mode 100644 arch/openrisc/include/asm/sections.h
 create mode 100644 arch/openrisc/include/asm/spr-defs.h
 create mode 100644 arch/openrisc/include/asm/string.h
 create mode 100644 arch/openrisc/include/asm/swab.h
 create mode 100644 arch/openrisc/include/asm/system.h
 create mode 100644 arch/openrisc/include/asm/types.h
 create mode 100644 arch/openrisc/lib/Makefile
 create mode 100644 arch/openrisc/lib/ashldi3.S
 create mode 100644 arch/openrisc/lib/board.c
 create mode 100644 arch/openrisc/lib/clock.c
 create mode 100644 arch/openrisc/lib/cpuinfo.c
 create mode 100644 arch/openrisc/lib/lshrdi3.S
 create mode 100644 arch/openrisc/lib/muldi3.S
 delete mode 100644 commands/iminfo.c
 create mode 100644 commands/linux_exec.c
 create mode 100644 commands/nandtest.c
 create mode 100644 commands/uimage.c
 create mode 100644 commands/usbserial.c
 delete mode 100644 common/ft_build.c
 create mode 100644 common/tlsf.c
 create mode 100644 common/tlsf_malloc.c
 create mode 100644 common/tlsfbits.h
 create mode 100644 common/uimage.c
 create mode 100644 drivers/mci/pxamci.c
 create mode 100644 drivers/mci/pxamci.h
 create mode 100644 drivers/mci/twl6030.c
 create mode 100644 drivers/mfd/twl-core.c
 create mode 100644 drivers/mfd/twl6030.c
 create mode 100644 drivers/mtd/core.c
 create mode 100644 drivers/mtd/devices/Kconfig
 create mode 100644 drivers/mtd/devices/Makefile
 create mode 100644 drivers/mtd/devices/docg3.c
 create mode 100644 drivers/mtd/devices/docg3.h
 create mode 100644 drivers/mtd/mtd.h
 create mode 100644 drivers/mtd/mtdoob.c
 create mode 100644 drivers/mtd/mtdraw.c
 delete mode 100644 drivers/mtd/nand/nand.c
 rename drivers/mtd/nand/{nand_s3c2410.c =3D> nand_s3c24xx.c} (99%)
 delete mode 100644 drivers/net/dm9000.c
 create mode 100644 drivers/net/dm9k.c
 rename drivers/serial/{serial_s3c24x0.c =3D> serial_s3c.c} (67%)
 create mode 100644 drivers/usb/gadget/at91_udc.c
 create mode 100644 drivers/usb/gadget/at91_udc.h
 rename drivers/video/{s3c.c =3D> s3c24xx.c} (97%)
 delete mode 100644 include/ft_build.h
 delete mode 100644 include/keyboard.h
 create mode 100644 include/linux/bch.h
 create mode 100644 include/linux/bitrev.h
 create mode 100644 include/mci/twl6030.h
 create mode 100644 include/mfd/twl-core.h
 create mode 100644 include/mfd/twl6030.h
 create mode 100644 include/tlsf.h
 create mode 100644 include/usb/usbserial.h
 delete mode 100644 include/watchdog.h
 create mode 100644 lib/bch.c
 create mode 100644 lib/bitrev.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
