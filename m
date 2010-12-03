Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POXee-0007cb-98
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 15:34:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1POXeY-00050z-8A
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 16:34:30 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1POXeY-0005Zd-6v
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 16:34:30 +0100
Date: Fri, 3 Dec 2010 16:34:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101203153430.GP6017@pengutronix.de>
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
Subject: v2010.12.0
To: barebox@lists.infradead.org

Release day! v2010.12.0 This time with quite a lot of changes.

Sascha

The following changes since commit d1209136e304faab8616f75a347bf2d02d283468:

  Release v2010.11.0 (2010-11-02 17:55:58 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git ..BRANCH.NOT.VERIFIED..

Eric B=E9nard (17):
      eukrea_cpuimx27: update board support
      imx/clocksource: enable GPT1 before using it on CPUIMX25
      mx25: add MMC clock support
      MX25: fix IOMUX for ESDHC1 pins
      mci-core: add more tested SD Cards
      epautoconf: fix compile error
      eukrea_cpuimx25: update board support
      imx35-regs: add defines for USB and SD
      speed-imx35: add support for SDHC1
      iomux-mx35: fox IOMUX for SDHC1's pins
      eukrea_cpuimx35: update board support
      fsl_udc: fix warning
      i.MX25 & 35 usb config bits : create mach/usb.h
      armlinux: pass INIRTD tag to the kernel
      eukrea's boards: unify kernel partition's size
      cpuimx35: fix warning
      eukrea_cpuimx35: fix flash header

Jean-Christophe PLAGNIOL-VILLARD (10):
      defaultenv: introduce CONFIG_DEFAULT_ENVIRONMENT_GENERIC to enable it
      commands/crc32: add compare 2 files crc
      defaultenv/update: merge update_rootfs and update_kernel
      defaultenv/update: add check crc32 options
      defaultenv: add xmodem support for update
      defaultenv: add update_barebox to update barebox easly via tftp or xm=
odem
      nhk8815: use defaultenv
      linux16: fix cmd_tbl_t as struct command
      x86: add 64bit host build support
      x86: fix out of tree build support

Juergen Beisert (21):
      x-functions do not return in case of failure.
      Make the disk driver less noisy
      Don't use a sector buffer on stack
      Don't try to guess the size of a disk if its size value is already gi=
ven
      Add MCI card support to barebox
      Add i.MX23 MCI card support
      Add S3C2440 MCI card support
      mci: mark 'old Canon SD 16 MiB' as working
      Add the basic files for the i.MX23/i.MX28 familiy of CPUs
      Add the driver for the i.MX23 debug UART
      Add the i.MX23-EVK platform (WIP)
      Add the i.MX23 based Chumby platform (WIP)
      Switch the i.MX27's PLL in a safe manner
      Make the clock calculation easier to read and correct
      Glue i.MX23 and MCI support
      Adapt the i.MX23 MCI driver to the v2 i.MX23 patch series
      Spend the ChumbyOne a persistant environment memory on MCI card
      Adapt the defconfig for a full blown ChumbyOne support
      Add GPIO support and GPIO setup features to the S3C processors
      Add some help using the gpio commands at runtime
      Fix a simple typo to less confusing the user

Marek Belisko (6):
      Add basic support for mini2440 dev board.
      mini2440: Fix compilation error.
      serial_s3c24x0: Add missing brackets.
      fs: Fix bug found by sparse.
      drivers: mci: Fix compilation warning.
      arm: mini2440: Add memory size.

Robert Schwebel (54):
      reset_cpu: unify declaration
      Doxyfile: enable quiet output
      Doxyfile: remove obsolete boards directory
      Doxyfile: add exclude rules
      Doxyfile: remove non-existing directories
      Doxyfile: remove unused features
      Doxyfile: enable assembler files
      doc: let doxygen find some assembler functions
      doc: remove nonexisting command
      doc: remove reference to non-existing documentation
      doc: eliminate nonexisting reference
      doc: add missing quoting
      doc: mark code explicitely
      doc: avoid that doxygen parses magic in command.h
      doc: fix wrongly named parameter
      doc: fix parameter name in mci-core
      doc: silence doxygen warnings
      devinfo: use subtree only with devinfo
      sandbox: use devfs functions only if defined
      digest: align menu
      parser: use debug macros
      doc: add macros to unify command help with doxygen
      doc: add documentation for 'bmp'
      doc: add documentation for 'clear'
      doc: add documentation for 'crc32'
      doc: add documentation for 'dfu'
      doc: unify documentation for 'ls'
      doc: unify documentation for 'cat'
      doc: unify documentation for 'cd'
      doc: add documentation for 'echo'
      doc: unify documentation for 'edit'
      doc: add documentation for 'bootm'
      doc: unify documentation for 'addpart'
      doc: unify documentation for 'cp'
      doc: unify documentation for 'delpart'
      doc: rework user manual
      doc: unify documentation for 'devinfo'
      doc: unify documentation for 'erase'
      doc: rework and unify documentation for gpio commands
      doc: unify documentation for 'export'
      doc: unify documentation for 'tftp'
      doc: remove obsolete link method for arch specification
      doc: unify documentation for 'loadenv'
      doc: remove ..., confuses doxygen
      doc: unify documentation for 'mount'
      doc: unify documentation for 'printenv'
      doc: unify documentation for 'protect' and 'unprotect'
      doc: unify documentation for 'saveenv'
      doc: unify documentation for 'setenv'
      doc: remove sh from command documentation
      doc: unify documentation for 'linux16'
      doc: put CPUIMX35 into the right chapter
      doc: put babage board into the right chapter
      doc: put cupid into the right chapter

Sascha Hauer (87):
      hush: pass context around in shell
      hush: fix nasty memory leak in hush
      hush: implement getopt builtin
      i.MX27: Add mmc clock support in order to add an i.MX MCI driver
      mci: Add i.MX27/31 driver
      ARM pca100: Add mci support
      i.MX27: Add support for SDHC pins
      mci: Add i.MX esdhc support
      mci: print error code on failure
      spi i.MX: add spi version namespace to register defines
      spi i.MX: redirect functions to version specific functions
      spi i.MX: Add i.MX51 support
      Move mfd drivers to drivers/mfd
      move include files for mfd drivers to include/mfd
      mfd mc13892: Add spi support
      mfd mc13892: support reading the revision
      mci: handle SD cards < 2.0 correctly
      mci: align write buffer if necessary
      defaultenv: handle disk partitions
      imx_serial: Add mx51 support
      ARM mmu: Call __mmu_cache_flush instead of hardcoded v4/v5 only funct=
ion
      ARM i.MX: Add basic i.MX51 support
      ARM i.MX51: Add babbage board support
      Merge branch 'getopt' into next
      Merge branch 'mx51' into next
      image: remove confusing image_check_* functions
      defaultenv: do not overwrite bootargs variable
      glob: sparse fixes
      fnmatch:sparse fixes
      readline: sparse fixes
      edit: sparse fixes
      command.h: sparse fixes
      crc32: sparse fixes
      copy_file: sparse fixes
      commands/mem.c: sparse fixes
      dlmalloc: sparse fixes
      console: sparse fixes
      notifier: sparse fixes
      fec_imx: sparse fixes
      imx gpio: sparse fixes
      imx clocksource: sparse fixes
      armlinux: sparse fixes
      arch/arm/cpu/cpu.c: sparse fixes
      cache-l2x0: sparse fixes
      speed-imx35: sparse fixes
      imx_dump_clocks: sparse fixes
      i.MX serial: sparse fixes
      i.MX remove wdog registers from header files
      hush: sparse fixes
      ramfs: sparse fixes
      common/env.c: sparse fixes
      version_string: sparse fixes
      imx-nand: sparse fixes
      ping: make locally used functions static
      arm div0: sparse fixes
      edit: make locally used variable static
      common/environment.c: sparse fixes
      commands/mem.c: make locally used function static
      bootm: sparse fixes
      net: make locally used functions static
      lib/driver.c: sparse fixes
      remove dead ldiv code
      common/memsize.c: add missing include
      i.MX speed: add missing include
      libbb: sparse fixes
      remove strange flush_cache functions
      pcm043: fix compiler warning
      arm interrupts.c: sparse fixes
      process_escape_sequence: Add missing include
      ARM pca100: Use a flash bbt
      i.MX nand: optimize nand boot code for size
      mci-core: add multiple block support
      i.MX51: Fix mmcclk rate
      i.MX esdctl: Add register bits from redboot
      i.MX35 regs: Add watchdog base
      fb: i.MX IPU: remove unnecessary printf
      fb: i.MX IPU: move fb_info initialization to a single function
      fb: i.MX IPU: fold mx3fb_set_par into its only user
      mci: align data for commands
      ARM: Add Garz+Fricke Cupid board support
      defaultenv: fix mtdparts
      ARM: Add defconfig for Garz+Fricke cupid board
      ARM i.MX27: remove duplicated defines
      Merge branch 'next'
      fb: set id for framebuffer device correctly
      Merge branch 'x86' of git://git.jcrosoft.org/barebox
      Release v2010.12.0

 Documentation/barebox-main.dox                     |  232 +---
 Documentation/boards.dox                           |    6 +
 Documentation/building.dox                         |   60 +
 Documentation/commands.dox                         |   30 +-
 Documentation/developers_manual.dox                |    1 -
 Documentation/first_steps.dox                      |   61 +
 Documentation/users_manual.dox                     |   14 +-
 Doxyfile                                           |   27 +-
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |    6 +
 arch/arm/Makefile                                  |    6 +
 arch/arm/boards/chumby_falconwing/Makefile         |    1 +
 .../cache.c =3D> boards/chumby_falconwing/config.h}  |   21 +-
 arch/arm/boards/chumby_falconwing/env/bin/boot     |   38 +
 arch/arm/boards/chumby_falconwing/env/bin/init     |   15 +
 arch/arm/boards/chumby_falconwing/env/config       |   36 +
 arch/arm/boards/chumby_falconwing/falconwing.c     |  350 +++++
 arch/arm/boards/eukrea_cpuimx25/env/bin/init       |    2 +
 arch/arm/boards/eukrea_cpuimx25/env/config         |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   95 ++-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   64 +-
 arch/arm/boards/eukrea_cpuimx27/env/bin/boot       |   12 +-
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |   10 +
 arch/arm/boards/eukrea_cpuimx27/env/config         |   11 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    5 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/init       |    4 +-
 arch/arm/boards/eukrea_cpuimx35/env/config         |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   90 ++-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |   29 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   20 +-
 arch/arm/boards/freescale-mx23-evk/Makefile        |    2 +
 arch/arm/boards/freescale-mx23-evk/config.h        |   16 +
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   96 ++
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    6 +-
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    3 +
 arch/arm/boards/freescale-mx51-pdk/board.c         |  318 +++++
 .../cache.c =3D> boards/freescale-mx51-pdk/config.h} |   26 +-
 arch/arm/boards/freescale-mx51-pdk/env/config      |   52 +
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   85 ++
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  216 ++++
 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox    |    4 +
 arch/arm/boards/freescale-mx51-pdk/spi.c           |  340 +++++
 arch/arm/boards/guf-cupid/Makefile                 |   24 +
 arch/arm/boards/guf-cupid/board.c                  |  426 ++++++
 .../arm/{lib/cache.c =3D> boards/guf-cupid/config.h} |   23 +-
 arch/arm/boards/guf-cupid/cupid.dox                |    9 +
 arch/arm/boards/guf-cupid/env/config               |   56 +
 arch/arm/boards/guf-cupid/lowlevel.c               |  349 +++++
 arch/arm/boards/mini2440/Makefile                  |    2 +
 arch/arm/boards/mini2440/config.h                  |   50 +
 .../boards/{nhk8815 =3D> mini2440}/env/bin/_update   |    4 +-
 arch/arm/boards/mini2440/env/bin/boot              |   40 +
 arch/arm/boards/mini2440/env/bin/hush_hack         |    1 +
 arch/arm/boards/{nhk8815 =3D> mini2440}/env/bin/init |   12 +-
 arch/arm/boards/mini2440/env/bin/update_kernel     |   13 +
 arch/arm/boards/mini2440/env/bin/update_root       |   13 +
 arch/arm/boards/mini2440/env/config                |   27 +
 arch/arm/boards/mini2440/mini2440.c                |  140 ++
 arch/arm/boards/nhk8815/env/bin/boot               |   38 -
 .../boards/nhk8815/env/bin/update_barebox_xmodem   |   19 -
 arch/arm/boards/nhk8815/env/bin/update_kernel      |    8 -
 arch/arm/boards/nhk8815/env/bin/update_root        |    8 -
 arch/arm/boards/nhk8815/env/config                 |   44 +-
 arch/arm/boards/pcm038/Makefile                    |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    7 +
 arch/arm/boards/pcm038/pcm038.c                    |   65 +-
 arch/arm/boards/pcm038/pll.h                       |   70 +
 arch/arm/boards/pcm038/pll_init.S                  |   48 -
 arch/arm/boards/pcm043/pcm043.c                    |    4 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |   16 +
 arch/arm/configs/chumbyone_defconfig               |   29 +
 arch/arm/configs/cupid_defconfig                   |   56 +
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   12 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |   14 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   43 +
 arch/arm/configs/imx23evk_defconfig                |   24 +
 arch/arm/configs/mini2440_defconfig                |  251 ++++
 arch/arm/configs/neso_defconfig                    |    3 +-
 arch/arm/configs/nhk8815_defconfig                 |    5 +-
 arch/arm/configs/pca100_defconfig                  |    3 +-
 arch/arm/configs/pcm037_defconfig                  |    3 +-
 arch/arm/configs/pcm038_defconfig                  |    3 +-
 arch/arm/configs/pcm043_defconfig                  |    3 +-
 arch/arm/cpu/cache-l2x0.c                          |    2 +-
 arch/arm/cpu/cpu.c                                 |    1 +
 arch/arm/cpu/interrupts.c                          |   10 +-
 arch/arm/cpu/mmu.c                                 |    6 +-
 arch/arm/lib/Makefile                              |    1 -
 arch/arm/lib/armlinux.c                            |   35 +-
 arch/arm/lib/div0.c                                |    5 +-
 arch/arm/mach-at91/at91sam926x_time.c              |    2 +-
 arch/arm/mach-ep93xx/clocksource.c                 |    2 +-
 arch/arm/mach-imx/Kconfig                          |   35 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/clocksource.c                    |   31 +-
 arch/arm/mach-imx/gpio.c                           |   15 +-
 arch/arm/mach-imx/imx51.c                          |   51 +
 arch/arm/mach-imx/include/mach/clock-imx51.h       |  696 ++++++++++
 arch/arm/mach-imx/include/mach/clock.h             |    3 +
 arch/arm/mach-imx/include/mach/esdctl.h            |   88 ++
 arch/arm/mach-imx/include/mach/generic.h           |    6 +
 arch/arm/mach-imx/include/mach/imx-nand.h          |    4 +-
 arch/arm/mach-imx/include/mach/imx-regs.h          |    2 +
 arch/arm/mach-imx/include/mach/imx1-regs.h         |    8 -
 arch/arm/mach-imx/include/mach/imx21-regs.h        |    8 -
 arch/arm/mach-imx/include/mach/imx27-regs.h        |   16 -
 arch/arm/mach-imx/include/mach/imx31-regs.h        |   10 -
 arch/arm/mach-imx/include/mach/imx35-regs.h        |   14 +-
 arch/arm/mach-imx/include/mach/imx51-regs.h        |  124 ++
 arch/arm/mach-imx/include/mach/iomux-mx25.h        |   12 +-
 arch/arm/mach-imx/include/mach/iomux-mx27.h        |    6 +
 arch/arm/mach-imx/include/mach/iomux-mx35.h        |   12 +-
 arch/arm/mach-imx/include/mach/iomux-mx51.h        |  330 +++++
 arch/arm/mach-imx/include/mach/iomux-v3.h          |   10 +-
 arch/arm/mach-imx/include/mach/usb.h               |   14 +
 arch/arm/mach-imx/speed-imx25.c                    |   10 +-
 arch/arm/mach-imx/speed-imx27.c                    |    5 +
 arch/arm/mach-imx/speed-imx35.c                    |   21 +-
 arch/arm/mach-imx/speed-imx51.c                    |  190 +++
 arch/arm/mach-imx/speed.c                          |    1 +
 arch/arm/mach-omap/arch-omap.dox                   |    6 +-
 arch/arm/mach-omap/omap3_generic.c                 |    4 +-
 arch/arm/mach-s3c24xx/Kconfig                      |    9 +
 arch/arm/mach-s3c24xx/Makefile                     |    2 +-
 arch/arm/mach-s3c24xx/gpio-s3c24x0.c               |  169 +++
 .../cache.c =3D> mach-s3c24xx/include/mach/gpio.h}   |   27 +-
 arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h |  426 ++++++
 .../mach-s3c24xx/include/mach/mci.h}               |   50 +-
 arch/arm/mach-stm/Kconfig                          |   48 +
 arch/arm/mach-stm/Makefile                         |    2 +
 arch/arm/mach-stm/clocksource-imx23.c              |   82 ++
 arch/arm/{lib/cache.c =3D> mach-stm/imx23.c}         |   25 +-
 .../{lib/cache.c =3D> mach-stm/include/mach/clock.h} |   28 +-
 .../cache.c =3D> mach-stm/include/mach/generic.h}    |   22 +-
 .../{lib/cache.c =3D> mach-stm/include/mach/gpio.h}  |   23 +-
 .../cache.c =3D> mach-stm/include/mach/imx-regs.h}   |   23 +-
 arch/arm/mach-stm/include/mach/imx23-regs.h        |   41 +
 arch/arm/mach-stm/include/mach/iomux-imx23.h       |  424 ++++++
 .../{lib/cache.c =3D> mach-stm/include/mach/mci.h}   |   30 +-
 arch/arm/mach-stm/iomux-imx23.c                    |  117 ++
 arch/arm/mach-stm/reset-imx23.c                    |   61 +
 arch/arm/mach-stm/speed-imx23.c                    |  280 ++++
 arch/blackfin/lib/cpu.c                            |    2 +-
 arch/m68k/lib/m68k-linuxboot.c                     |    2 +-
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c              |    2 +-
 arch/ppc/lib/Makefile                              |    1 -
 arch/ppc/lib/ppclinux.c                            |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c                        |    2 +-
 arch/sandbox/board/hostfile.c                      |    2 +
 arch/sandbox/os/common.c                           |    7 +-
 arch/x86/Makefile                                  |    3 +-
 arch/x86/boards/x86_generic/generic_pc.c           |    2 +-
 arch/x86/boot/boot_hdisk.S                         |    2 -
 arch/x86/boot/boot_main.S                          |    2 -
 arch/x86/boot/pmjump.S                             |    2 -
 arch/x86/lib/memory16.S                            |    2 -
 arch/x86/lib/traveler.S                            |    3 -
 arch/x86/mach-x86.dox                              |    2 +-
 commands/Kconfig                                   |    5 +
 commands/bmp.c                                     |   27 +-
 commands/bootm.c                                   |   48 +-
 commands/cat.c                                     |   19 +-
 commands/cd.c                                      |   17 +-
 commands/clear.c                                   |    5 +
 commands/cp.c                                      |   30 +-
 commands/crc.c                                     |  124 ++-
 commands/dfu.c                                     |   28 +-
 commands/echo.c                                    |   17 +
 commands/edit.c                                    |   42 +-
 commands/export.c                                  |   14 +-
 commands/flash.c                                   |  100 +-
 commands/gpio.c                                    |   93 ++-
 commands/linux16.c                                 |   27 +-
 commands/loadb.c                                   |    1 -
 commands/loadenv.c                                 |   34 +-
 commands/loads.c                                   |    1 -
 commands/ls.c                                      |    9 +-
 commands/mem.c                                     |    2 +-
 commands/mount.c                                   |   78 +-
 commands/partition.c                               |   75 +-
 commands/printenv.c                                |   30 +-
 commands/saveenv.c                                 |   31 +-
 commands/setenv.c                                  |   30 +-
 commands/version.c                                 |    1 -
 common/Kconfig                                     |   23 +
 common/Makefile                                    |   10 +-
 common/console.c                                   |    8 +-
 common/dlmalloc.c                                  |   41 +-
 common/env.c                                       |    2 +-
 common/environment.c                               |    2 +-
 common/hush.c                                      |  137 ++-
 common/image.c                                     |    7 +-
 common/kallsyms.c                                  |    4 +
 common/memsize.c                                   |    1 +
 common/parser.c                                    |   51 +-
 defaultenv/bin/_update                             |   30 +-
 defaultenv/bin/_update_help                        |   12 +
 defaultenv/bin/boot                                |    4 +-
 defaultenv/bin/init                                |    7 +-
 defaultenv/bin/update                              |   65 +
 defaultenv/bin/update_kernel                       |   15 -
 defaultenv/bin/update_rootfs                       |   16 -
 drivers/Kconfig                                    |    2 +
 drivers/Makefile                                   |    2 +
 drivers/ata/disk_drive.c                           |   51 +-
 drivers/i2c/Kconfig                                |   16 -
 drivers/i2c/Makefile                               |    6 -
 drivers/i2c/mc13892.c                              |  164 ---
 drivers/mci/Kconfig                                |   64 +
 drivers/mci/Makefile                               |    5 +
 drivers/mci/imx-esdhc.c                            |  512 ++++++++
 drivers/mci/imx-esdhc.h                            |  164 +++
 drivers/mci/imx.c                                  |  520 ++++++++
 drivers/mci/mci-core.c                             | 1360 ++++++++++++++++=
++++
 drivers/mci/s3c.c                                  |  817 ++++++++++++
 drivers/mci/stm378x.c                              |  699 ++++++++++
 drivers/mfd/Kconfig                                |   28 +
 drivers/mfd/Makefile                               |    6 +
 drivers/{i2c =3D> mfd}/lp3972.c                      |    0
 drivers/{spi =3D> mfd}/mc13783.c                     |    0
 drivers/mfd/mc13892.c                              |  327 +++++
 drivers/{i2c =3D> mfd}/mc34704.c                     |    2 +-
 drivers/{i2c =3D> mfd}/mc9sdz60.c                    |    2 +-
 drivers/{i2c =3D> mfd}/twl4030.c                     |    2 +-
 drivers/mtd/nand/Kconfig                           |   16 +
 drivers/mtd/nand/nand_imx.c                        |  196 ++-
 drivers/net/fec_imx.c                              |    8 +-
 drivers/net/fec_imx.h                              |    6 +-
 drivers/serial/Kconfig                             |    5 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/serial_imx.c                        |   92 +-
 drivers/serial/serial_s3c24x0.c                    |    2 +-
 drivers/serial/stm-serial.c                        |  202 +++
 drivers/spi/Kconfig                                |   12 +-
 drivers/spi/Makefile                               |    2 -
 drivers/spi/imx_spi.c                              |  347 ++++-
 drivers/usb/gadget/fsl_udc.c                       |    3 +-
 drivers/usb/host/ehci-omap.c                       |    2 +-
 drivers/usb/otg/twl4030.c                          |    2 +-
 drivers/video/fb.c                                 |    1 +
 drivers/video/imx-ipu-fb.c                         |   92 +-
 fs/fs.c                                            |    2 +-
 fs/ramfs.c                                         |    2 +-
 include/asm-generic/barebox.lds.h                  |    2 +-
 include/cache.h                                    |    1 -
 include/command.h                                  |   20 +-
 include/common.h                                   |    4 +
 include/image.h                                    |   56 +-
 include/mci.h                                      |  239 ++++
 include/{i2c =3D> mfd}/lp3972.h                      |    0
 include/{i2c =3D> mfd}/mc13892.h                     |   28 +
 include/{i2c =3D> mfd}/mc34704.h                     |    0
 include/{i2c =3D> mfd}/mc9sdz60.h                    |    0
 include/{i2c =3D> mfd}/twl4030.h                     |    0
 include/notifier.h                                 |    1 +
 lib/Kconfig                                        |    2 +-
 lib/Makefile                                       |    1 -
 lib/copy_file.c                                    |    2 +
 lib/crc32.c                                        |    2 +-
 lib/driver.c                                       |   88 +-
 lib/fnmatch.c                                      |    5 +-
 lib/glob.c                                         |   36 +-
 lib/ldiv.c                                         |   55 -
 lib/libbb.c                                        |    2 +-
 lib/parameter.c                                    |    2 +-
 lib/process_escape_sequence.c                      |    1 +
 lib/readline.c                                     |    6 +-
 net/net.c                                          |    4 +-
 net/ping.c                                         |    4 +-
 net/tftp.c                                         |   49 +-
 scripts/doxy_filter.awk                            |  103 ++
 scripts/mkimage.c                                  |    2 +-
 scripts/setupmbr/setupmbr.c                        |    4 +-
 274 files changed, 13938 insertions(+), 1955 deletions(-)
 create mode 100644 Documentation/building.dox
 create mode 100644 Documentation/first_steps.dox
 create mode 100644 arch/arm/boards/chumby_falconwing/Makefile
 copy arch/arm/{lib/cache.c =3D> boards/chumby_falconwing/config.h} (64%)
 create mode 100644 arch/arm/boards/chumby_falconwing/env/bin/boot
 create mode 100644 arch/arm/boards/chumby_falconwing/env/bin/init
 create mode 100644 arch/arm/boards/chumby_falconwing/env/config
 create mode 100644 arch/arm/boards/chumby_falconwing/falconwing.c
 create mode 100644 arch/arm/boards/freescale-mx23-evk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx23-evk/config.h
 create mode 100644 arch/arm/boards/freescale-mx23-evk/mx23-evk.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/board.c
 copy arch/arm/{lib/cache.c =3D> boards/freescale-mx51-pdk/config.h} (58%)
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/config
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/spi.c
 create mode 100644 arch/arm/boards/guf-cupid/Makefile
 create mode 100644 arch/arm/boards/guf-cupid/board.c
 copy arch/arm/{lib/cache.c =3D> boards/guf-cupid/config.h} (65%)
 create mode 100644 arch/arm/boards/guf-cupid/cupid.dox
 create mode 100644 arch/arm/boards/guf-cupid/env/config
 create mode 100644 arch/arm/boards/guf-cupid/lowlevel.c
 create mode 100644 arch/arm/boards/mini2440/Makefile
 create mode 100644 arch/arm/boards/mini2440/config.h
 rename arch/arm/boards/{nhk8815 =3D> mini2440}/env/bin/_update (90%)
 create mode 100644 arch/arm/boards/mini2440/env/bin/boot
 create mode 100644 arch/arm/boards/mini2440/env/bin/hush_hack
 rename arch/arm/boards/{nhk8815 =3D> mini2440}/env/bin/init (55%)
 create mode 100644 arch/arm/boards/mini2440/env/bin/update_kernel
 create mode 100644 arch/arm/boards/mini2440/env/bin/update_root
 create mode 100644 arch/arm/boards/mini2440/env/config
 create mode 100644 arch/arm/boards/mini2440/mini2440.c
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/boot
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/update_root
 create mode 100644 arch/arm/boards/pcm038/pll.h
 delete mode 100644 arch/arm/boards/pcm038/pll_init.S
 create mode 100644 arch/arm/configs/chumbyone_defconfig
 create mode 100644 arch/arm/configs/cupid_defconfig
 create mode 100644 arch/arm/configs/freescale_mx51_babbage_defconfig
 create mode 100644 arch/arm/configs/imx23evk_defconfig
 create mode 100644 arch/arm/configs/mini2440_defconfig
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx51-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/usb.h
 create mode 100644 arch/arm/mach-imx/speed-imx51.c
 create mode 100644 arch/arm/mach-s3c24xx/gpio-s3c24x0.c
 copy arch/arm/{lib/cache.c =3D> mach-s3c24xx/include/mach/gpio.h} (65%)
 create mode 100644 arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h
 rename arch/{ppc/lib/cache.c =3D> arm/mach-s3c24xx/include/mach/mci.h} (50=
%)
 create mode 100644 arch/arm/mach-stm/Kconfig
 create mode 100644 arch/arm/mach-stm/Makefile
 create mode 100644 arch/arm/mach-stm/clocksource-imx23.c
 copy arch/arm/{lib/cache.c =3D> mach-stm/imx23.c} (66%)
 copy arch/arm/{lib/cache.c =3D> mach-stm/include/mach/clock.h} (61%)
 copy arch/arm/{lib/cache.c =3D> mach-stm/include/mach/generic.h} (65%)
 copy arch/arm/{lib/cache.c =3D> mach-stm/include/mach/gpio.h} (65%)
 copy arch/arm/{lib/cache.c =3D> mach-stm/include/mach/imx-regs.h} (65%)
 create mode 100644 arch/arm/mach-stm/include/mach/imx23-regs.h
 create mode 100644 arch/arm/mach-stm/include/mach/iomux-imx23.h
 rename arch/arm/{lib/cache.c =3D> mach-stm/include/mach/mci.h} (57%)
 create mode 100644 arch/arm/mach-stm/iomux-imx23.c
 create mode 100644 arch/arm/mach-stm/reset-imx23.c
 create mode 100644 arch/arm/mach-stm/speed-imx23.c
 create mode 100644 defaultenv/bin/_update_help
 create mode 100644 defaultenv/bin/update
 delete mode 100644 defaultenv/bin/update_kernel
 delete mode 100644 defaultenv/bin/update_rootfs
 delete mode 100644 drivers/i2c/mc13892.c
 create mode 100644 drivers/mci/Kconfig
 create mode 100644 drivers/mci/Makefile
 create mode 100644 drivers/mci/imx-esdhc.c
 create mode 100644 drivers/mci/imx-esdhc.h
 create mode 100644 drivers/mci/imx.c
 create mode 100644 drivers/mci/mci-core.c
 create mode 100644 drivers/mci/s3c.c
 create mode 100644 drivers/mci/stm378x.c
 create mode 100644 drivers/mfd/Kconfig
 create mode 100644 drivers/mfd/Makefile
 rename drivers/{i2c =3D> mfd}/lp3972.c (100%)
 rename drivers/{spi =3D> mfd}/mc13783.c (100%)
 create mode 100644 drivers/mfd/mc13892.c
 rename drivers/{i2c =3D> mfd}/mc34704.c (99%)
 rename drivers/{i2c =3D> mfd}/mc9sdz60.c (99%)
 rename drivers/{i2c =3D> mfd}/twl4030.c (99%)
 create mode 100644 drivers/serial/stm-serial.c
 create mode 100644 include/mci.h
 rename include/{i2c =3D> mfd}/lp3972.h (100%)
 rename include/{i2c =3D> mfd}/mc13892.h (82%)
 rename include/{i2c =3D> mfd}/mc34704.h (100%)
 rename include/{i2c =3D> mfd}/mc9sdz60.h (100%)
 rename include/{i2c =3D> mfd}/twl4030.h (100%)
 delete mode 100644 lib/ldiv.c
 create mode 100644 scripts/doxy_filter.awk
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
