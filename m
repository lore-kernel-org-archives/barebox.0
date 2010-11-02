Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKHa-0004RB-6N
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:04:29 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1PDKHW-0001EJ-Il
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 18:04:22 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PDKHW-0007qx-HO
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 18:04:22 +0100
Date: Tue, 2 Nov 2010 18:04:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101102170422.GE6017@pengutronix.de>
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
Subject: v2010.11.0
To: barebox@lists.infradead.org

Hi All,

Once again we have a new release. Here's what happened since the last
one:


The following changes since commit 849e910d07a2e6d9f1e8562f2d6ce1adf0034c51:

  Release v2010.10.0 (2010-10-02 13:00:45 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git master

Eric B=E9nard (1):
      epautoconf: fix compile error

Jean-Christophe PLAGNIOL-VILLARD (57):
      move board.dox to Documentation and update it
      configs: use new savedefconfig format as in linux
      gitignore: update generated link and file
      move version.h to include/generated/ instead of include/linux
      move utsrelease.h to include/generated/ instead of include/linux
      arm: move mach-types.h to include/generated/
      move barebox_default_env.h to include/generated/
      i2c rename CONFIG_DRIVER_I2C_xx to CONFIG_I2C_xx
      types.h: move __kernel_dev_t to include/linux/types.h
      driver: allow register device with specific id
      init: introduce __BARE_INIT for .section ".text_bare_init.text"
      device: fix dev_name
      amba-pl011: probe fail if we can't get the clock
      stm8815: fix the uart device clock match
      arm: move clkdev to drivers/clk
      add digest framework
      add md5 support
      add sha1 support
      add sha256 support
      add password framework
      add passwd command
      add login support
      commands: partition.c fix file mod bits
      i2c: move busses to drivers/i2c/busses
      driver: use id as -1 for auto assigned id
      menu: shell fix do_menu_select
      menu: add auto select support
      Menu: add box style entry
      at91: add HAVE_NAND_ATMEL_BUSWIDTH_16 to Enable 16-bit data bus inter=
face
      at91sam9263: move MACH_HAS_LOWLEVEL_INIT to board
      Support for the at91sam9g20 : Atmel 400Mhz ARM 926ej-s SOC.
      sha1: use unit32_t and uint8_t
      sha1/sha256: use be32_to_cpu and cpu_to_be32
      arm: allow to overwrite the system_rev via bootm
      nhk8815: update defconfig
      nhk8815: rename nand parts uboot as barebox
      image: factorise string helper
      image: rename IH_CPU to IH_ARCH to be more concistant
      Replace direct header access with the API routines
      image: factorise image printing contents
      netconsole: remove non-needed setbaudrate
      console: set device_d id at -1
      host: introduce compiler.h to handle host include
      blackfin: remove duplicated PAGE_SIZE define
      ipe337: fix default env
      mk68: rename macro __M68K__ to __m68k__ as it's prodive by gcc
      imx/fb: struct imx_ipu_fb_platform_data remove const for mode
      imx-ipu-fb: set default bits per pixel at 16 for mx3
      pcm038: fix initialization makes pointer from integer without a cast
      import __stringify from linux
      MAKEALL: make it generic
      imx: fix Internal boot source default choice
      image: factorise string helper
      image: rename IH_CPU to IH_ARCH to be more concistant
      Replace direct header access with the API routines
      image: factorise image printing contents
      MAKEALL: allow CROSS_COMPILE*=3D""

Juergen Beisert (2):
      The i.MX27 has no second level cache, remove include file (Subject fi=
xed)
      Fix watchdog's register size for the i.MX27 CPU

Marc Reilly (4):
      imx35: add base addresses for I2C and SDHC
      i2c-imx: wait for STOP before disabling controller
      imx: Internal boot sources, handle all header offsets
      Update flash headers for boards supporting internal boot.

Marek Belisko (1):
      mach-s3c24xx: Fix compilation problem when make a9m2410 or a9m2440 de=
fconfig

Robert Schwebel (2):
      partition.c: c files are not executable
      sandbox: add longopts and fix segfault

Sascha Hauer (21):
      twl4030: Fix compiler warnings
      pcm043: Fix compiler warnings
      pcm043: Update defconfig (add nand and ubi)
      let linux16 command depend on X86
      pcm038: Fix compiler warnings
      pcm038: Update defconfig (add nand and ubi)
      fec_mpc5200: Fix compilation
      rename __initdata to __early_initdata
      ep93xx net driver: Fix compilation
      guf-neso: Fix compiler warnings
      guf-neso: Update defconfig (add nand and ubi)
      guf-neso: Update defconfig (fix env path)
      scb9328: Fix compilation
      netx eth: Fix compilation
      Merge branch 'for-mainline' of git://git.pengutronix.de/git/rsc/bareb=
ox into next
      Merge branch 'next'
      Revert "image: factorise image printing contents"
      Revert "Replace direct header access with the API routines"
      Revert "image: rename IH_CPU to IH_ARCH to be more concistant"
      Revert "image: factorise string helper"
      Release v2010.11.0

 .gitignore                                         |    5 +-
 {board =3D> Documentation}/board.dox                 |    2 +-
 Documentation/manual_org.dox                       |    4 +-
 MAKEALL                                            |  295 ++++++++++++---
 Makefile                                           |   16 +-
 arch/arm/Kconfig                                   |    1 -
 arch/arm/Makefile                                  |    7 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    6 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    6 +-
 arch/arm/boards/at91sam9260ek/init.c               |   23 +-
 arch/arm/boards/at91sam9263ek/init.c               |    3 +-
 arch/arm/boards/edb93xx/edb93xx.c                  |    9 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   22 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   15 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    7 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |   20 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   28 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   10 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |   20 +-
 arch/arm/boards/guf-neso/board.c                   |    8 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    8 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    6 +-
 arch/arm/boards/mmccpu/init.c                      |    3 +-
 arch/arm/boards/netx/netx.c                        |    7 +-
 arch/arm/boards/nhk8815/env/config                 |    2 +-
 arch/arm/boards/nhk8815/setup.c                    |    4 +-
 arch/arm/boards/omap/board-beagle.c                |    6 +-
 arch/arm/boards/omap/board-omap3evm.c              |    2 +
 arch/arm/boards/omap/board-sdp343x.c               |    2 +
 arch/arm/boards/omap/devices-gpmc-nand.c           |    1 +
 arch/arm/boards/pcm037/pcm037.c                    |   11 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    1 -
 arch/arm/boards/pcm038/pcm038.c                    |   13 +-
 arch/arm/boards/pcm043/pcm043.c                    |    8 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    7 +-
 arch/arm/boards/pm9263/init.c                      |    3 +-
 arch/arm/boards/scb9328/scb9328.c                  |    6 +-
 arch/arm/common/Kconfig                            |    2 -
 arch/arm/common/Makefile                           |    5 -
 arch/arm/configs/a9m2410_defconfig                 |  203 -----------
 arch/arm/configs/a9m2440_defconfig                 |  204 -----------
 arch/arm/configs/at91sam9260ek_defconfig           |  195 ----------
 arch/arm/configs/at91sam9263ek_defconfig           |  200 ----------
 arch/arm/configs/at91sam9g20ek_defconfig           |   39 ++
 arch/arm/configs/edb93xx_defconfig                 |  204 -----------
 arch/arm/configs/eukrea_cpuimx25_defconfig         |  210 -----------
 arch/arm/configs/eukrea_cpuimx27_defconfig         |  225 +------------
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  215 -----------
 arch/arm/configs/freescale_mx25_3stack_defconfig   |  210 -----------
 arch/arm/configs/freescale_mx35_3stack_defconfig   |  210 -----------
 arch/arm/configs/mmccpu_defconfig                  |  196 ----------
 arch/arm/configs/mx21ads_defconfig                 |  210 -----------
 arch/arm/configs/mx27ads_defconfig                 |  210 -----------
 arch/arm/configs/neso_defconfig                    |  212 +-----------
 arch/arm/configs/netx_nxdb500_defconfig            |  194 ----------
 arch/arm/configs/nhk8815_defconfig                 |  208 +----------
 .../configs/omap3430_sdp3430_per_uart_defconfig    |  182 ----------
 arch/arm/configs/omap3530_beagle_defconfig         |  210 +-----------
 .../arm/configs/omap3530_beagle_per_uart_defconfig |  183 ----------
 arch/arm/configs/omap3_evm_defconfig               |  186 ----------
 arch/arm/configs/pca100_defconfig                  |  211 -----------
 arch/arm/configs/pcm037_defconfig                  |  224 ------------
 arch/arm/configs/pcm038_defconfig                  |  217 +-----------
 arch/arm/configs/pcm043_defconfig                  |  220 +-----------
 arch/arm/configs/pm9263_defconfig                  |  199 ----------
 arch/arm/configs/scb9328_defconfig                 |  219 -----------
 arch/arm/cpu/cache-armv4.S                         |    3 +-
 arch/arm/cpu/cache-armv5.S                         |    3 +-
 arch/arm/cpu/cache-armv6.S                         |    3 +-
 arch/arm/cpu/cache-armv7.S                         |    3 +-
 arch/arm/include/asm/.gitignore                    |    1 -
 arch/arm/include/asm/clkdev.h                      |   15 +-
 arch/arm/include/asm/posix_types.h                 |    1 -
 arch/arm/lib/armlinux.c                            |   24 +-
 arch/arm/mach-at91/Kconfig                         |   52 +++-
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91sam9260_devices.c           |   10 +
 arch/arm/mach-at91/at91sam9263_devices.c           |    7 +
 arch/arm/mach-at91/lowlevel_init.S                 |    3 +-
 arch/arm/mach-imx/Kconfig                          |   30 ++-
 arch/arm/mach-imx/imx25.c                          |    1 +
 arch/arm/mach-imx/include/mach/barebox.lds.h       |   12 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   34 ++-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |    6 +-
 arch/arm/mach-imx/include/mach/imx35-regs.h        |    5 +
 arch/arm/mach-nomadik/8815.c                       |    9 +-
 arch/arm/mach-nomadik/Kconfig                      |    2 +-
 arch/arm/mach-nomadik/clock.c                      |    7 +-
 arch/arm/tools/Makefile                            |    2 +-
 arch/arm/tools/gen-mach-types                      |    2 +-
 arch/blackfin/boards/ipe337/ipe337.c               |    4 +
 arch/blackfin/configs/ipe337_defconfig             |  159 +--------
 arch/blackfin/include/asm/posix_types.h            |    1 -
 arch/blackfin/lib/blackfin_linux.c                 |    4 +-
 arch/m68k/Makefile                                 |    3 +-
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c     |    7 +
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |    5 +
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |  162 +--------
 arch/m68k/configs/phycore_mcf54xx_defconfig        |  162 +--------
 arch/m68k/include/asm/posix_types.h                |    1 -
 arch/m68k/lib/m68k-linuxboot.c                     |    8 +-
 arch/ppc/boards/pcm030/pcm030.c                    |    5 +
 arch/ppc/configs/pcm030_defconfig                  |  173 ---------
 arch/ppc/include/asm/posix_types.h                 |    1 -
 arch/ppc/include/asm/processor.h                   |   12 +-
 arch/ppc/lib/ppclinux.c                            |    6 +-
 arch/sandbox/board/board.c                         |    1 +
 arch/sandbox/configs/sandbox_defconfig             |  137 -------
 arch/sandbox/include/asm/posix_types.h             |    1 -
 arch/sandbox/os/common.c                           |   46 ++-
 arch/x86/boards/x86_generic/generic_pc.c           |    3 +
 arch/x86/configs/generic_defconfig                 |  155 --------
 arch/x86/include/asm/posix_types.h                 |    1 -
 commands/Kconfig                                   |   29 ++
 commands/Makefile                                  |    2 +
 commands/bootm.c                                   |  178 ++--------
 commands/login.c                                   |   63 ++++
 commands/mem.c                                     |    1 +
 commands/menu.c                                    |   54 +++-
 commands/passwd.c                                  |   98 +++++
 common/Kconfig                                     |   28 ++
 common/Makefile                                    |    9 +-
 common/command.c                                   |    2 +-
 common/console.c                                   |    1 +
 common/digest.c                                    |   77 ++++
 common/image.c                                     |  311 ++++++++++++++++
 common/menu.c                                      |   92 +++++-
 common/password.c                                  |  286 +++++++++++++++
 common/startup.c                                   |    3 +-
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/clk/Kconfig                                |    4 +
 drivers/clk/Makefile                               |    2 +
 {arch/arm/common =3D> drivers/clk}/clkdev.c          |   24 +-
 drivers/i2c/Kconfig                                |   18 +-
 drivers/i2c/Makefile                               |   15 +-
 drivers/i2c/busses/Kconfig                         |   15 +
 drivers/i2c/busses/Makefile                        |    2 +
 drivers/i2c/{ =3D> busses}/i2c-imx.c                 |   10 +-
 drivers/i2c/{ =3D> busses}/i2c-omap.c                |    0
 drivers/serial/amba-pl011.c                        |    4 +
 drivers/serial/arm_dcc.c                           |    1 +
 drivers/usb/gadget/epautoconf.c                    |    1 +
 drivers/video/imx-ipu-fb.c                         |    1 +
 include/.gitignore                                 |    1 -
 include/command.h                                  |    5 +-
 include/digest.h                                   |   49 +++
 include/driver.h                                   |   12 +-
 include/image.h                                    |  254 ++++++++++++--
 include/init.h                                     |    6 +
 include/linux/clkdev.h                             |   36 ++
 include/linux/stringify.h                          |   12 +
 include/linux/types.h                              |    2 +
 include/menu.h                                     |   18 +-
 include/password.h                                 |   41 ++
 lib/Kconfig                                        |   16 +
 lib/Makefile                                       |    3 +
 lib/driver.c                                       |   40 ++-
 lib/md5.c                                          |  317 ++++++++++++++++
 lib/sha1.c                                         |  382 ++++++++++++++++=
++++
 lib/sha256.c                                       |  306 ++++++++++++++++
 net/netconsole.c                                   |    6 -
 scripts/compiler.h                                 |  107 ++++++
 scripts/mkimage.c                                  |  282 ++-------------
 scripts/setupmbr/setupmbr.c                        |    2 +-
 165 files changed, 3490 insertions(+), 7033 deletions(-)
 rename {board =3D> Documentation}/board.dox (98%)
 delete mode 100644 arch/arm/common/Kconfig
 delete mode 100644 arch/arm/common/Makefile
 create mode 100644 arch/arm/configs/at91sam9g20ek_defconfig
 delete mode 100644 arch/arm/include/asm/.gitignore
 create mode 100644 commands/login.c
 mode change 100755 =3D> 100644 commands/partition.c
 create mode 100644 commands/passwd.c
 create mode 100644 common/digest.c
 create mode 100644 common/image.c
 create mode 100644 common/password.c
 create mode 100644 drivers/clk/Kconfig
 create mode 100644 drivers/clk/Makefile
 rename {arch/arm/common =3D> drivers/clk}/clkdev.c (90%)
 create mode 100644 drivers/i2c/busses/Kconfig
 create mode 100644 drivers/i2c/busses/Makefile
 rename drivers/i2c/{ =3D> busses}/i2c-imx.c (97%)
 rename drivers/i2c/{ =3D> busses}/i2c-omap.c (100%)
 create mode 100644 include/digest.h
 create mode 100644 include/linux/clkdev.h
 create mode 100644 include/linux/stringify.h
 create mode 100644 include/password.h
 create mode 100644 lib/md5.c
 create mode 100644 lib/sha1.c
 create mode 100644 lib/sha256.c
 create mode 100644 scripts/compiler.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
