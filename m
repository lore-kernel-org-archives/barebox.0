Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Slcqj-0001av-JS
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 09:23:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Slcqg-0001Cc-3M
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 11:23:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Slcqg-0004yq-2D
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 11:23:14 +0200
Date: Mon, 2 Jul 2012 11:23:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120702092314.GJ2698@pengutronix.de>
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
Subject: v2012.07.0
To: barebox@lists.infradead.org

Hi all,

Time for a july release. Here is what happened since the last
release.

Sascha

The following changes since commit 94418c2d0d3d7dbaa6995fb53f00a5d5fc9f4028:

  Release v2012.06.0 (2012-06-06 14:10:34 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git tags/v2012.07.0

for you to fetch changes up to 9d0b51ea7e5b3fece57f91e17349b79a5b4b37e7:

  Release v2012.07.0 (2012-07-02 10:31:52 +0200)

----------------------------------------------------------------
Release v2012.07.0

----------------------------------------------------------------
Alan Ott (2):
      common: Make MENU depend on PROCESS_ESCAPE_SEQUENCE
      README: change path to sandbox environment

Alexander Shiyan (20):
      i2c: Added switch for allowing usage 16bit register addresses
      PCM038: Update board description
      PCM038: Call power_init() after initializing SPI.
      PCM038: Remove unused includes
      PCM038: Initial PCM970 development board support
      Removed duplicate definition for DEVFS_PARTITION_xxx
      Add compressed barebox_default_env to .gitignore
      PCM038: Move USBH2 initialization to PCM970
      PCM038: Removed unnecessary call to gpio_set_value
      i.MX SPI: Setup SPI chipselect to inactive state while initializing d=
evice
      PCM038: Remove now unused preset for SPI chipselect.
      i.MX51: Changed naming registers and procedures for SPI
      i.MX51: Added helper for SDHC3 registration.
      PCM970: Added support for CompactFlash
      i.MX51: Raise frequency for SDHC by switch to PLL2 source
      i.MX51 clock: Added lp_apm clock support for frequency calculations.
      i.MX51 clock: Added USB clock to dump_clocks command.
      block: Fix printf warning
      Unused files removed
      commands: uncompress: fix description

Alexey Galakhov (6):
      Support most Samsung SoCs in S3C serial driver
      Make S3C24xx config options available for all S3Cs
      Split S3C generic and S3C24xx specific code
      Add support for Samsung S5P architecture (S5PV210)
      S5P boot header and image generator
      S5P lowlevel clock init

Anand Gadiyar (3):
      panda: add i2c and twlcore to panda
      panda: add LED support
      panda: update defconfig for i2c and led support

Antony Pavlov (19):
      MIPS: start.S: add "barebox" label at _start + 0x10
      MIPS: bootm: add "MIPS barebox" handler
      MIPS: add common header file for DEBUG_LL via NS16550
      MIPS: malta: use common DEBUG_LL code for NS16550
      fix typo funtion -> function
      MIPS: add XBurst processor family support
      MIPS: XBurst: add JZ4755 CPU support
      MIPS: XBurst: add Ritmix RZX-50 board support
      MIPS: add defconfig for Ritmix RZX-50 board
      MIPS: introduce C architecture-specific low-level init
      MIPS: import CPU and cache detection code from Linux 3.4
      MIPS: cpuinfo: import CPU message from Linux 3.4
      ARM: initial Tegra support
      ARM: Tegra: add Toshiba AC100 support
      usb: set MAXINTERFACES =3D 16
      toshiba_ac100: add USB host support
      toshiba_ac100: add defconfig
      MIPS: make possible board-specific header files
      MIPS: XBurst: suitable solution for per-board debug_ll

Dirk H=F6rner (3):
      hostcc tools: include "compiler.h", fix included headers
      scripts/compiler.h: fixup endianess defines on OS X
      scripts/genenv: always pass template to mktemp

Eric B=E9nard (9):
      eukrea_cpuimx25: workaround ENGcm09152
      eukrea_cpuimx25: add display choice in environment
      eukrea_cpuimx35: add display choice in environment
      eukrea_cpuimx51: updated env
      eukrea_cpuimx25/35/51: update defconfig
      eukrea_cpuimx25&35: use switch action to launch usbserial or dfu
      iim: fix compilation when NET is not selected
      eukrea_cpuimx25: fix PHY address
      eukrea_cpuimx35: fix PHY address and clean code

Jan Luebbe (3):
      arm: update mach-types
      ohci-hcd: use dma_flush/inv_range to allow using the driver with enab=
led MMU
      drivers/spi/spi.c: use DEVICE_ID_DYNAMIC when allocating a struct dev=
ice_d

Jan Weitzel (1):
      ramfs: rember last accessed chunk

Johannes Stezenbach (5):
      m25p80: prevent endless loop in erase
      m25p80: allow erase to be interrupted
      m25p80: progressbar tweak
      devfs: don't erase past the end of the partition
      fs: limit flash erase and protect to the partiton boundary

Krzysztof Halasa (7):
      ARM: remove unused struct param_struct and related info.
      Fix big endian MMIO primitives.
      ARM: put a valid "barebox" signature in the header on big-endian syst=
ems.
      NOR flash: reduce size of cfiword_t if not using 64-bit bus.
      Fix sha224sum panic by registering SHA224 hash name.
      Fix a panic in crypto hash calculations due to uninitialized variable.
      Fix SHA224 to produce 28 bytes of hash (instead of 32).

Renaud Barbier (12):
      ppc io.h: update following MMIO primitives fix
      ppc reloc.S: use a common trap relocation function
      linux/types.h: define phys_size_t
      Initial Freescale 85xx Headers.
      Initial e500v2 start up code
      e500v2 traps and TLB support code
      85xx: LAW and LBC initialization
      85xx clocking support
      MPC85xx start-up support code
      Set _text_base to the firmware relocation address
      85xx core support build files
      Minimal P2020RDB platform support and configuration file

Robert Jarzmik (5):
      arm/board: mioa701 align kernel options with kernel mtd
      arch/arm: mioa701 make autoboot of Linux work
      arch/arm: mioa701 add IPL and DPS1 updater
      arch/arm: mioa701 use maximum CPU frequency
      arch/arm: mioa701 improve barebox_update script

Sam Ravnborg (1):
      kbuild: Use Elfnn_Half as replacement for Elfnn_Section

Sascha Hauer (54):
      ARM startup: invalidate I-cache before jumping to relocated binary
      parameter: return empty string for unset parameters
      parameter: remove unused struct member
      Merge branch 'pu/parameter' into next
      Make errno a positive value
      fs: Add NFS support
      timeout: allow to set a variable with the key pressed
      add 'global' command
      booting: more flexible Linux bootargs generation
      Merge branch 'pu/globalvar' into next
      add qsort support
      glob: Add sorted output support
      fs readdir: check for NULL pointer again
      magicvar: Add magicvar macro with additional name argument
      flexible bootargs: Add magicvar descriptions
      Merge branch 'pu/globsort' into next
      Merge branch 'pu/magicvar' into next
      edit: Add a status line
      Merge branch 'pu/edit' into next
      Merge branch 'master' into next
      lseek: return -1 instead of -errno
      bootm: Add default images variables
      Add next generation default environment template
      ARM pcm038: Switch to new environment
      Merge branch 'ppc' into next
      run_shell: run again on ctrl-c
      Merge branch 'pu/defenv-2' into next
      ARM Freescale i.MX51 babbage: switch to new default env
      Merge branch 'pu/hush' into next
      hush: do not convert to return code too early
      defaultenv-2: automount script: run mount only when ifup succeeds
      ARM startup: Do call __mmu_cache_flush during startup
      Merge branch 'pu/defenv-2' into next
      usb storage: fix driver name
      usb ehci: Use zalloc to allocate ehci structure
      Merge branch 'pu/cache' into next
      Merge branch 'pu/hush' into next
      ppc 85xx: Fix whitespaces
      ARM samsung: disable board selection
      block: propagate error code from block_get
      block: do not BUG() on failed block_get
      usb ehci: Add resource sizes
      Merge branch 'next'
      ARM qil-a9260: Fix PARTITION_FIXED compilation
      blackfin: Fix build due to missing __raw_* io accessors
      openrisc: fix build due to redefined phys_size_t
      fs tftp: Fix short file transfers
      sandbox: fix 64bit build
      x86 linux16 command: Add missing include
      print out resource_size_t correctly
      Merge branch 'pu/sandbox-fixes'
      drivers/base: bail out if request_iomem_region fails
      ehci: Fix resource size
      Release v2012.07.0

Uwe Kleine-K=F6nig (2):
      fix typo addreee -> address
      defaultenv: don't overwrite $user in config

 .gitignore                                         |    4 +-
 Documentation/boards.dox                           |    2 +
 Makefile                                           |    4 +-
 README                                             |    2 +-
 arch/arm/Kconfig                                   |   12 +
 arch/arm/Makefile                                  |    9 +
 arch/arm/boards/a9m2410/a9m2410.c                  |    6 +-
 arch/arm/boards/a9m2410/config.h                   |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    6 +-
 arch/arm/boards/a9m2440/config.h                   |    2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |    2 +-
 arch/arm/boards/at91rm9200ek/init.c                |    4 +-
 arch/arm/boards/at91sam9260ek/init.c               |    8 +-
 arch/arm/boards/at91sam9261ek/init.c               |    8 +-
 arch/arm/boards/at91sam9263ek/init.c               |   12 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    8 +-
 arch/arm/boards/at91sam9x5ek/init.c                |    8 +-
 arch/arm/boards/dss11/init.c                       |    6 +-
 arch/arm/boards/edb93xx/edb93xx.c                  |    4 +-
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |   21 +
 arch/arm/boards/eukrea_cpuimx25/env/config         |    4 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   15 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |    2 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |   21 +
 arch/arm/boards/eukrea_cpuimx35/env/config         |    4 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   88 +-
 arch/arm/boards/eukrea_cpuimx51/env/config         |   10 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |    4 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    4 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    8 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |    4 +-
 arch/arm/boards/freescale-mx51-pdk/env/config      |   47 -
 .../freescale-mx51-pdk/env/init/bootargs-base      |    8 +
 .../boards/freescale-mx51-pdk/env/init/hostname    |    8 +
 arch/arm/boards/freescale-mx53-loco/board.c        |    4 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |    4 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |    4 +-
 arch/arm/boards/guf-cupid/board.c                  |    4 +-
 arch/arm/boards/guf-neso/board.c                   |    4 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c                |    4 +-
 arch/arm/boards/karo-tx25/board.c                  |    4 +-
 arch/arm/boards/karo-tx51/tx51.c                   |    4 +-
 arch/arm/boards/mini2440/config.h                  |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |    6 +-
 arch/arm/boards/mioa701/board.c                    |   13 +-
 arch/arm/boards/mioa701/env/bin/barebox_update     |    5 +
 arch/arm/boards/mioa701/env/bin/dps1_unlock        |   12 +
 arch/arm/boards/mioa701/env/bin/dps1_update        |   12 +
 arch/arm/boards/mioa701/env/bin/init               |   19 +-
 arch/arm/boards/mioa701/env/data/dps1.raw.gz       |  Bin 0 -> 1239 bytes
 arch/arm/boards/mmccpu/init.c                      |    4 +-
 arch/arm/boards/netx/netx.c                        |    4 +-
 arch/arm/boards/nhk8815/setup.c                    |    8 +-
 arch/arm/boards/panda/board.c                      |   32 +
 arch/arm/boards/pcm027/board.c                     |    4 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |    2 +-
 arch/arm/boards/pcm037/pcm037.c                    |    4 +-
 arch/arm/boards/pcm038/Makefile                    |    5 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi           |   10 +
 arch/arm/boards/pcm038/env/config                  |   52 -
 arch/arm/boards/pcm038/env/init/bootargs-base      |    8 +
 arch/arm/boards/pcm038/env/init/hostname           |    8 +
 arch/arm/boards/pcm038/env/init/mtdparts-nand      |   11 +
 arch/arm/boards/pcm038/env/init/mtdparts-nor       |   11 +
 arch/arm/boards/pcm038/pcm038.c                    |  183 ++--
 arch/arm/boards/pcm038/pcm038.dox                  |    5 +-
 arch/arm/boards/pcm038/pcm970.c                    |  187 ++++
 arch/arm/boards/pcm043/pcm043.c                    |    8 +-
 arch/arm/boards/pcm049/board.c                     |    6 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |    6 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |    6 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    4 +-
 arch/arm/boards/pm9261/init.c                      |    4 +-
 arch/arm/boards/pm9263/init.c                      |    4 +-
 arch/arm/boards/pm9g45/init.c                      |    4 +-
 arch/arm/boards/qil-a9260/init.c                   |    8 +-
 arch/arm/boards/scb9328/scb9328.c                  |    4 +-
 arch/arm/boards/tny-a926x/init.c                   |    8 +-
 arch/arm/boards/toshiba-ac100/Kconfig              |    9 +
 arch/arm/boards/toshiba-ac100/Makefile             |    2 +
 arch/arm/boards/toshiba-ac100/board.c              |   49 +
 arch/arm/boards/toshiba-ac100/config.h             |    5 +
 arch/arm/boards/toshiba-ac100/serial.c             |   43 +
 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox    |   37 +
 arch/arm/boards/tqma53/board.c                     |    4 +-
 arch/arm/boards/usb-a926x/init.c                   |    8 +-
 arch/arm/boards/versatile/versatilepb.c            |    4 +-
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    4 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   17 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |   19 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |   19 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   16 +-
 arch/arm/configs/mini2440_defconfig                |    2 +-
 arch/arm/configs/panda_defconfig                   |    8 +-
 arch/arm/configs/pcm038_defconfig                  |   14 +-
 arch/arm/configs/toshiba_ac100_defconfig           |   39 +
 arch/arm/cpu/cache-armv4.S                         |    1 -
 arch/arm/cpu/cache-armv5.S                         |    1 -
 arch/arm/cpu/cache-armv6.S                         |    1 -
 arch/arm/cpu/cache-armv7.S                         |    1 -
 arch/arm/cpu/start.c                               |   11 +-
 arch/arm/include/asm/barebox-arm-head.h            |    3 +-
 arch/arm/include/asm/setup.h                       |   53 -
 arch/arm/lib/armlinux.c                            |    2 +-
 arch/arm/lib/bootm.c                               |    3 +-
 arch/arm/mach-imx/Kconfig                          |   10 +
 arch/arm/mach-imx/imx51.c                          |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h     |   13 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |   13 +
 arch/arm/mach-imx/include/mach/imx51-regs.h        |    6 +-
 arch/arm/mach-imx/speed-imx51.c                    |   50 +-
 arch/arm/mach-omap/devices-gpmc-nand.c             |    2 +-
 arch/arm/mach-omap/xload.c                         |    2 +-
 arch/arm/mach-samsung/Kconfig                      |   50 +-
 arch/arm/mach-samsung/Makefile                     |    7 +-
 arch/arm/mach-samsung/clocks-s5pcxx.c              |   98 ++
 arch/arm/mach-samsung/generic.c                    |  113 --
 arch/arm/mach-samsung/gpio-s5pcxx.c                |  123 +++
 arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h  |  798 ++++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   25 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |    9 +
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   56 +-
 .../arm/mach-samsung/include/mach/s3c24xx-clocks.h |   24 +
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |    6 +-
 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h |   69 ++
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |    2 +-
 arch/arm/mach-samsung/include/mach/s5pcxx-clocks.h |   55 +
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h  |   49 +
 .../{lowlevel-init.S =3D> lowlevel-s3c24x0.S}        |   12 +-
 arch/arm/mach-samsung/lowlevel-s5pcxx.c            |   61 ++
 arch/arm/mach-samsung/mem-s3c24x0.c                |  143 +++
 arch/arm/mach-samsung/s3c24xx-clocks.c             |   17 +
 arch/arm/mach-tegra/Kconfig                        |   19 +
 arch/arm/mach-tegra/Makefile                       |    2 +
 arch/arm/mach-tegra/clock.c                        |   59 ++
 arch/arm/mach-tegra/include/mach/debug_ll.h        |   45 +
 arch/arm/mach-tegra/include/mach/iomap.h           |  292 ++++++
 arch/arm/mach-tegra/reset.c                        |   42 +
 arch/arm/tools/mach-types                          |  193 +++-
 arch/blackfin/boards/ipe337/ipe337.c               |    4 +-
 arch/blackfin/include/asm/io.h                     |    7 +
 arch/blackfin/lib/blackfin_linux.c                 |    2 +-
 arch/mips/Kconfig                                  |    8 +
 arch/mips/Makefile                                 |    5 +
 arch/mips/boards/qemu-malta/init.c                 |    4 +-
 arch/mips/boards/rzx50/Kconfig                     |    6 +
 arch/mips/boards/rzx50/Makefile                    |    1 +
 arch/mips/boards/rzx50/config.h                    |   19 +
 arch/mips/boards/rzx50/include/board/debug_ll.h    |   29 +
 arch/mips/boards/rzx50/rzx50.dox                   |   46 +
 arch/mips/boards/rzx50/serial.c                    |   66 ++
 arch/mips/boot/Makefile                            |    1 +
 arch/mips/boot/main_entry.c                        |   52 +
 arch/mips/boot/start.S                             |   26 +-
 arch/mips/configs/rzx50_defconfig                  |   29 +
 arch/mips/include/asm/bitops.h                     |    2 +-
 arch/mips/include/asm/cpu-features.h               |  254 +++++
 arch/mips/include/asm/cpu-info.h                   |   71 ++
 arch/mips/include/asm/cpu.h                        |  143 +++
 arch/mips/include/debug_ll_ns16550.h               |   40 +
 arch/mips/lib/Makefile                             |    5 +
 arch/mips/lib/bootm.c                              |   43 +
 arch/mips/lib/c-r4k.c                              |   97 ++
 arch/mips/lib/cpu-probe.c                          |  143 +++
 arch/mips/lib/cpuinfo.c                            |   27 +-
 arch/mips/mach-malta/include/mach/debug_ll.h       |   11 +-
 arch/mips/mach-malta/include/mach/hardware.h       |    1 +
 arch/mips/mach-mips.dox                            |    4 +
 arch/mips/mach-xburst/Kconfig                      |   21 +
 arch/mips/mach-xburst/Makefile                     |    1 +
 arch/mips/mach-xburst/csrc-jz4750.c                |   61 ++
 arch/mips/mach-xburst/include/mach/debug_ll.h      |   30 +
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h  |   80 ++
 arch/mips/mach-xburst/mach-xburst.dox              |    7 +
 arch/mips/mach-xburst/reset-jz4750.c               |   46 +
 arch/nios2/boards/generic/generic.c                |    4 +-
 arch/nios2/lib/bootm.c                             |    2 +-
 arch/openrisc/include/asm/types.h                  |    2 -
 arch/ppc/Kconfig                                   |    3 +
 arch/ppc/Makefile                                  |    8 +
 arch/ppc/boards/freescale-p2020rdb/Makefile        |    4 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S   |  144 +++
 arch/ppc/boards/freescale-p2020rdb/config.h        |   98 ++
 arch/ppc/boards/freescale-p2020rdb/law.c           |   31 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |  230 +++++
 arch/ppc/boards/freescale-p2020rdb/tlb.c           |   62 ++
 arch/ppc/boards/pcm030/pcm030.c                    |    4 +-
 arch/ppc/configs/p2020rdb_defconfig                |   23 +
 arch/ppc/cpu-85xx/Makefile                         |    4 +
 arch/ppc/cpu-85xx/fixed_ivor.S                     |   61 ++
 arch/ppc/cpu-85xx/resetvec.S                       |    2 +
 arch/ppc/cpu-85xx/start.S                          | 1085 ++++++++++++++++=
++++
 arch/ppc/cpu-85xx/tlb.c                            |  175 ++++
 arch/ppc/cpu-85xx/traps.c                          |  272 +++++
 arch/ppc/include/asm/cache.h                       |    2 +
 arch/ppc/include/asm/config.h                      |   44 +
 arch/ppc/include/asm/fsl_ddr_sdram.h               |   33 +
 arch/ppc/include/asm/fsl_law.h                     |   91 ++
 arch/ppc/include/asm/fsl_lbc.h                     |   61 ++
 arch/ppc/include/asm/io.h                          |   28 +
 arch/ppc/lib/Makefile                              |    1 +
 arch/ppc/lib/board.c                               |    4 +
 arch/ppc/lib/reloc.S                               |   47 +
 arch/ppc/mach-mpc5xxx/start.S                      |   14 -
 arch/ppc/mach-mpc85xx/Kconfig                      |   41 +
 arch/ppc/mach-mpc85xx/Makefile                     |    8 +
 arch/ppc/mach-mpc85xx/cpu.c                        |   85 ++
 arch/ppc/mach-mpc85xx/cpu_init.c                   |  127 +++
 arch/ppc/mach-mpc85xx/cpuid.c                      |   73 ++
 arch/ppc/mach-mpc85xx/fsl_law.c                    |  160 +++
 arch/ppc/mach-mpc85xx/fsl_lbc.c                    |   17 +
 arch/ppc/mach-mpc85xx/include/mach/clocks.h        |   18 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   39 +
 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h  |   40 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |  132 +++
 arch/ppc/mach-mpc85xx/include/mach/mmu.h           |   47 +
 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h       |   23 +
 arch/ppc/mach-mpc85xx/speed.c                      |  104 ++
 arch/ppc/mach-mpc85xx/time.c                       |   53 +
 arch/sandbox/include/asm/types.h                   |    7 +
 commands/Kconfig                                   |   20 +
 commands/Makefile                                  |    1 +
 commands/bootm.c                                   |   66 +-
 commands/edit.c                                    |   17 +-
 commands/global.c                                  |   62 ++
 commands/i2c.c                                     |   26 +-
 commands/iomem.c                                   |    3 +-
 commands/linux16.c                                 |    3 +-
 commands/ls.c                                      |    6 +-
 commands/mem.c                                     |   10 +-
 commands/partition.c                               |    2 +-
 commands/saveenv.c                                 |    6 +-
 commands/timeout.c                                 |   16 +-
 commands/uncompress.c                              |    4 +-
 common/Kconfig                                     |   29 +-
 common/Makefile                                    |    9 +
 common/block.c                                     |   30 +-
 common/bootargs.c                                  |   83 ++
 common/digest.c                                    |    2 +-
 common/env.c                                       |    2 +-
 common/environment.c                               |    6 +-
 common/filetype.c                                  |    2 +
 common/globalvar.c                                 |   65 ++
 common/hush.c                                      |   26 +-
 common/misc.c                                      |    2 +-
 common/oftree.c                                    |    3 +-
 crypto/sha2.c                                      |    4 +-
 defaultenv-2/base/bin/boot                         |   18 +
 defaultenv-2/base/bin/bootargs-ip                  |   11 +
 defaultenv-2/base/bin/bootargs-ip-barebox          |    7 +
 defaultenv-2/base/bin/bootargs-ip-dhcp             |    5 +
 defaultenv-2/base/bin/bootargs-ip-none             |    5 +
 defaultenv-2/base/bin/bootargs-root-initrd         |   11 +
 defaultenv-2/base/bin/bootargs-root-jffs2          |    9 +
 defaultenv-2/base/bin/bootargs-root-nfs            |   15 +
 defaultenv-2/base/bin/bootargs-root-ubi            |   13 +
 defaultenv-2/base/bin/ifup                         |   59 ++
 defaultenv-2/base/bin/init                         |   46 +
 defaultenv-2/base/bin/mtdparts-add                 |   49 +
 defaultenv-2/base/boot/initrd                      |   16 +
 defaultenv-2/base/boot/net                         |   12 +
 defaultenv-2/base/data/ansi-colors                 |   26 +
 defaultenv-2/base/data/boot-template               |   16 +
 defaultenv-2/base/init/automount                   |   27 +
 defaultenv-2/base/init/bootargs-base               |    8 +
 defaultenv-2/base/init/general                     |   18 +
 defaultenv-2/base/init/hostname                    |    8 +
 defaultenv-2/base/init/prompt                      |    7 +
 defaultenv-2/base/network/eth0                     |   15 +
 defaultenv-2/menu/menu/boot-entries-collect        |   13 +
 defaultenv-2/menu/menu/boot-entries-edit           |   20 +
 defaultenv-2/menu/menu/boot-entries-remove         |   18 +
 defaultenv-2/menu/menu/boot-menu-add-entry         |    5 +
 defaultenv-2/menu/menu/boot-menu-new-boot-entry    |   21 +
 defaultenv-2/menu/menu/init-entries-collect        |    9 +
 defaultenv-2/menu/menu/init-entries-edit           |   20 +
 defaultenv-2/menu/menu/init-menu-add-entry         |    3 +
 defaultenv-2/menu/menu/mainmenu                    |   28 +
 defaultenv/config                                  |    4 +-
 drivers/base/driver.c                              |    5 +-
 drivers/base/resource.c                            |    2 +
 drivers/mtd/nand/nand_imx.c                        |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |   10 +-
 drivers/nor/cfi_flash.h                            |   10 +
 drivers/nor/m25p80.c                               |    8 +-
 drivers/serial/Kconfig                             |    2 +-
 drivers/serial/serial_s3c.c                        |   55 +-
 drivers/spi/imx_spi.c                              |    4 +
 drivers/spi/spi.c                                  |    2 +
 drivers/usb/host/ehci-hcd.c                        |    2 +-
 drivers/usb/host/ohci-hcd.c                        |    4 +
 drivers/usb/storage/usb.c                          |    2 +-
 fs/Kconfig                                         |    4 +
 fs/Makefile                                        |    1 +
 fs/devfs.c                                         |    3 +
 fs/fs.c                                            |  363 ++++---
 fs/nfs.c                                           | 1054 ++++++++++++++++=
+++
 fs/ramfs.c                                         |   47 +-
 fs/tftp.c                                          |    3 +-
 include/boot.h                                     |   16 +
 include/envfs.h                                    |    2 +
 include/filetype.h                                 |    1 +
 include/globalvar.h                                |   12 +
 include/image.h                                    |    2 +-
 include/io.h                                       |   21 +-
 include/linux/ioport.h                             |    6 +
 include/linux/mtd/nand.h                           |    2 +-
 include/linux/types.h                              |    2 +
 include/magicvar.h                                 |    8 +-
 include/net.h                                      |    7 +-
 include/param.h                                    |    1 -
 include/partition.h                                |    3 -
 include/qsort.h                                    |    7 +
 include/usb/usb.h                                  |    2 +-
 lib/Kconfig                                        |    3 +
 lib/Makefile                                       |    1 +
 lib/glob.c                                         |   11 +-
 lib/lzo/modules.builtin                            |    2 -
 lib/make_directory.c                               |   13 +-
 lib/parameter.c                                    |   18 +-
 lib/qsort.c                                        |   79 ++
 lib/zlib_inflate/modules.builtin                   |    1 -
 scripts/Makefile                                   |    1 +
 scripts/bareboxenv.c                               |    2 +
 scripts/compiler.h                                 |    3 +
 scripts/genenv                                     |    2 +-
 scripts/mod/modpost.c                              |    2 +-
 scripts/mod/modpost.h                              |    4 +-
 scripts/s5p_cksum.c                                |  140 +++
 338 files changed, 10728 insertions(+), 1102 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/config
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-ba=
se
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/hostname
 create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_unlock
 create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_update
 create mode 100644 arch/arm/boards/mioa701/env/data/dps1.raw.gz
 create mode 100644 arch/arm/boards/pcm038/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/pcm038/env/config
 create mode 100644 arch/arm/boards/pcm038/env/init/bootargs-base
 create mode 100644 arch/arm/boards/pcm038/env/init/hostname
 create mode 100644 arch/arm/boards/pcm038/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm038/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/pcm038/pcm970.c
 create mode 100644 arch/arm/boards/toshiba-ac100/Kconfig
 create mode 100644 arch/arm/boards/toshiba-ac100/Makefile
 create mode 100644 arch/arm/boards/toshiba-ac100/board.c
 create mode 100644 arch/arm/boards/toshiba-ac100/config.h
 create mode 100644 arch/arm/boards/toshiba-ac100/serial.c
 create mode 100644 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox
 create mode 100644 arch/arm/configs/toshiba_ac100_defconfig
 create mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-clocks.h
 create mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
 rename arch/arm/mach-samsung/{lowlevel-init.S =3D> lowlevel-s3c24x0.S} (96=
%)
 create mode 100644 arch/arm/mach-samsung/lowlevel-s5pcxx.c
 create mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
 create mode 100644 arch/arm/mach-tegra/Kconfig
 create mode 100644 arch/arm/mach-tegra/Makefile
 create mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-tegra/include/mach/iomap.h
 create mode 100644 arch/arm/mach-tegra/reset.c
 create mode 100644 arch/mips/boards/rzx50/Kconfig
 create mode 100644 arch/mips/boards/rzx50/Makefile
 create mode 100644 arch/mips/boards/rzx50/config.h
 create mode 100644 arch/mips/boards/rzx50/include/board/debug_ll.h
 create mode 100644 arch/mips/boards/rzx50/rzx50.dox
 create mode 100644 arch/mips/boards/rzx50/serial.c
 create mode 100644 arch/mips/boot/main_entry.c
 create mode 100644 arch/mips/configs/rzx50_defconfig
 create mode 100644 arch/mips/include/asm/cpu-features.h
 create mode 100644 arch/mips/include/asm/cpu-info.h
 create mode 100644 arch/mips/include/asm/cpu.h
 create mode 100644 arch/mips/include/debug_ll_ns16550.h
 create mode 100644 arch/mips/lib/bootm.c
 create mode 100644 arch/mips/lib/c-r4k.c
 create mode 100644 arch/mips/lib/cpu-probe.c
 create mode 100644 arch/mips/mach-xburst/Kconfig
 create mode 100644 arch/mips/mach-xburst/Makefile
 create mode 100644 arch/mips/mach-xburst/csrc-jz4750.c
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-xburst/include/mach/jz4750d_regs.h
 create mode 100644 arch/mips/mach-xburst/mach-xburst.dox
 create mode 100644 arch/mips/mach-xburst/reset-jz4750.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/config.h
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/law.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/tlb.c
 create mode 100644 arch/ppc/configs/p2020rdb_defconfig
 create mode 100644 arch/ppc/cpu-85xx/Makefile
 create mode 100644 arch/ppc/cpu-85xx/fixed_ivor.S
 create mode 100644 arch/ppc/cpu-85xx/resetvec.S
 create mode 100644 arch/ppc/cpu-85xx/start.S
 create mode 100644 arch/ppc/cpu-85xx/tlb.c
 create mode 100644 arch/ppc/cpu-85xx/traps.c
 create mode 100644 arch/ppc/include/asm/config.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_sdram.h
 create mode 100644 arch/ppc/include/asm/fsl_law.h
 create mode 100644 arch/ppc/include/asm/fsl_lbc.h
 create mode 100644 arch/ppc/lib/reloc.S
 create mode 100644 arch/ppc/mach-mpc85xx/Kconfig
 create mode 100644 arch/ppc/mach-mpc85xx/Makefile
 create mode 100644 arch/ppc/mach-mpc85xx/cpu.c
 create mode 100644 arch/ppc/mach-mpc85xx/cpu_init.c
 create mode 100644 arch/ppc/mach-mpc85xx/cpuid.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_law.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_lbc.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/clocks.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mmu.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/speed.c
 create mode 100644 arch/ppc/mach-mpc85xx/time.c
 create mode 100644 commands/global.c
 create mode 100644 common/bootargs.c
 create mode 100644 common/globalvar.c
 create mode 100644 defaultenv-2/base/bin/boot
 create mode 100644 defaultenv-2/base/bin/bootargs-ip
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-barebox
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-dhcp
 create mode 100644 defaultenv-2/base/bin/bootargs-ip-none
 create mode 100644 defaultenv-2/base/bin/bootargs-root-initrd
 create mode 100644 defaultenv-2/base/bin/bootargs-root-jffs2
 create mode 100644 defaultenv-2/base/bin/bootargs-root-nfs
 create mode 100644 defaultenv-2/base/bin/bootargs-root-ubi
 create mode 100644 defaultenv-2/base/bin/ifup
 create mode 100644 defaultenv-2/base/bin/init
 create mode 100644 defaultenv-2/base/bin/mtdparts-add
 create mode 100644 defaultenv-2/base/boot/initrd
 create mode 100644 defaultenv-2/base/boot/net
 create mode 100644 defaultenv-2/base/data/ansi-colors
 create mode 100644 defaultenv-2/base/data/boot-template
 create mode 100644 defaultenv-2/base/init/automount
 create mode 100644 defaultenv-2/base/init/bootargs-base
 create mode 100644 defaultenv-2/base/init/general
 create mode 100644 defaultenv-2/base/init/hostname
 create mode 100644 defaultenv-2/base/init/prompt
 create mode 100644 defaultenv-2/base/network/eth0
 create mode 100644 defaultenv-2/menu/menu/boot-entries-collect
 create mode 100644 defaultenv-2/menu/menu/boot-entries-edit
 create mode 100644 defaultenv-2/menu/menu/boot-entries-remove
 create mode 100644 defaultenv-2/menu/menu/boot-menu-add-entry
 create mode 100644 defaultenv-2/menu/menu/boot-menu-new-boot-entry
 create mode 100644 defaultenv-2/menu/menu/init-entries-collect
 create mode 100644 defaultenv-2/menu/menu/init-entries-edit
 create mode 100644 defaultenv-2/menu/menu/init-menu-add-entry
 create mode 100644 defaultenv-2/menu/menu/mainmenu
 create mode 100644 fs/nfs.c
 create mode 100644 include/globalvar.h
 create mode 100644 include/qsort.h
 delete mode 100644 lib/lzo/modules.builtin
 create mode 100644 lib/qsort.c
 delete mode 100644 lib/zlib_inflate/modules.builtin
 create mode 100644 scripts/s5p_cksum.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
