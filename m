Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PanBw-0000Ba-N9
	for barebox@lists.infradead.org; Thu, 06 Jan 2011 10:35:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PanBv-0000eD-0r
	for barebox@lists.infradead.org; Thu, 06 Jan 2011 11:35:35 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PanBu-000345-Vw
	for barebox@lists.infradead.org; Thu, 06 Jan 2011 11:35:34 +0100
Date: Thu, 6 Jan 2011 11:35:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110106103534.GH26009@pengutronix.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2011.01.0
To: barebox@lists.infradead.org

Hi all,

The subject says it all: The first 2011 release is out. Most notable
changes are the removal of the m68k architecture which never even
compiled and improvements to the cfi flash driver.

Sascha

The following changes since commit ff3bea7fedd62a0c11b6b9468cf7e5c71b0f1a1a:

  Release v2010.12.0 (2010-12-03 16:20:39 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git ..BRANCH.NOT.VERIFIED..

Baruch Siach (1):
      eth: fix 'warning: No MAC address set' when using EEPROM MAC

Jean-Christophe PLAGNIOL-VILLARD (23):
      at91: Introduction of at91sam9261 SOC.
      at91: add Ronetix pm9261 board support
      at91: Support for at91sam9g45 and at91sam9m10 series: core chip & board support
      at91sam9260/at91sam9263: use the same id as in the kernel for the uart devices
      at91: Support for at91sam9g10: core chip & board support
      at91: add Ronetix pm9g45 support
      clocksource: import CLOCKSOURCE_MASK from the kernel
      clocksource: switch mask to CLOCKSOURCE_MASK
      miidev: allow multiple dev
      defaultenv/udpate: fix typo in default barebox image name
      defaultenv/udpate: in xmodem mode load the data before erasing
      cfi_flash: move intel real protect flash support to cfi_flash_intel.c
      cfi_flash: add Atmel real protect flash support
      cfi_flash: move flash_read_uchar from inline to noinline
      cfi_flash: use amd and standard reset flash command at probing
      cfi_flash: synchronize command offsets with Linux CFI driver
      cfi_flash: update manufacturer id flash support
      cfi_flash: Introduce read and write accessors
      cfi_flash: Read whole QRY structure in one go
      cfi_flash: do not reset flash when probe fails
      cfi_flash: move reset command assigment to specific chipset init function
      cfi_flash: introduce flash cmdset fixup
      cfi_flash_amd: Add manufacturer-specific fixups

Marek Belisko (7):
      pcm037: Fix compilation warning.
      common: Add define for IOMEM helper macro.
      mtd: Fix sparse warning.
      nand_s3c2410: Fix sparse warnings.
      smc91111: Various sparse fixes.
      scripts: Add checkpatch.pl script.
      scripts: Adapt checkpatch.pl for barebox.

Robert Schwebel (3):
      doc: sort list alphabetically
      doc: add missing commands
      doc: put barebox version into documentation

Sascha Hauer (40):
      ARM i.MX51: Add SPBA0 base addresses
      ARM i.MX: Add device convenience functions
      ARM i.MX: Add header protection
      ARM i.MX35: Add IPU base address
      ARM pcm043: Use device functions
      ARM pca100: Use device functions
      ARM pcm038: Use device functions
      ARM pcm037: Use device functions
      ARM imx27ads: Use device functions
      ARM imx21ads: Use device functions
      ARM mx51 babbage: Use device functions
      ARM neso: Use device functions
      ARM mx35 3ds: Use device functions
      ARM mx25 3ds: Use device functions
      ARM eukrea cpuimx35: Use device functions
      ARM eukrea cpuimx27: Use device functions
      ARM eukrea cpuimx25: Use device functions
      i.MX device macros: Fix typo
      NAND: reset chips before usage like the kernel does
      imx_nand: remove 0xe00 offset from registers
      imx_nand: rework get_dev_status
      imx nand: remove unnecessary register write
      imx_nand: make some internally used functions overwriteable
      imx nand: do not read-modify-write SPAS register
      imx nand: add V1_V2 namespace to registers
      mxc_nand: fix correct_data function
      imx nand: move initialization to preset function
      imx nand: introduce overwritable check_int function
      imx nand: Add v3 (i.MX51) support
      ARM i.MX51: Add nand device
      Merge branch 'master' into next
      pcm037: set nand_device in default environment
      pcm037: Enable nand driver in defaultconfig
      Remove m68k support
      Merge branch 'for-mainline-doc' of git://git.pengutronix.de/git/rsc/barebox into next
      Merge branch 'master' into next
      i.MX device macros: Fix esdhci
      Merge branch 'master' into next
      Merge branch 'next'
      Release v2011.01.0

 .gitignore                                         |    3 +
 Documentation/boards.dox                           |    5 -
 Documentation/commands.dox                         |   67 +-
 Doxyfile                                           |    2 +-
 Makefile                                           |   11 +-
 arch/architecture.dox                              |    1 -
 arch/arm/Makefile                                  |    5 +
 arch/arm/boards/at91sam9261ek/Makefile             |    1 +
 arch/arm/boards/at91sam9261ek/config.h             |    6 +
 arch/arm/boards/at91sam9261ek/env/config           |   41 +
 arch/arm/boards/at91sam9261ek/init.c               |  174 ++
 arch/arm/boards/at91sam9m10g45ek/Makefile          |    1 +
 arch/arm/boards/at91sam9m10g45ek/config.h          |    6 +
 arch/arm/boards/at91sam9m10g45ek/env/config        |   41 +
 arch/arm/boards/at91sam9m10g45ek/init.c            |  116 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   54 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   27 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   53 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   36 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   38 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   33 +-
 arch/arm/boards/guf-neso/board.c                   |   38 +-
 arch/arm/boards/imx21ads/imx21ads.c                |   29 +-
 arch/arm/boards/imx27ads/imx27ads.c                |   19 +-
 arch/arm/boards/pcm037/env/config                  |    1 +
 arch/arm/boards/pcm037/pcm037.c                    |   20 +-
 arch/arm/boards/pcm038/pcm038.c                    |   47 +-
 arch/arm/boards/pcm043/pcm043.c                    |   38 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |   28 +-
 arch/arm/boards/pm9261/Makefile                    |    1 +
 arch/arm/boards/pm9261/config.h                    |  110 +
 arch/arm/boards/pm9261/env/config                  |   41 +
 arch/arm/boards/pm9261/init.c                      |  168 ++
 arch/arm/boards/pm9g45/Makefile                    |    1 +
 arch/arm/boards/pm9g45/config.h                    |    6 +
 arch/arm/boards/pm9g45/env/config                  |   41 +
 arch/arm/boards/pm9g45/init.c                      |  108 +
 arch/arm/configs/at91sam9261ek_defconfig           |   49 +
 .../configs/at91sam9g10ek_defconfig}               |   27 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   55 +
 arch/arm/configs/pcm037_defconfig                  |    6 +-
 arch/arm/configs/pm9261_defconfig                  |   52 +
 arch/arm/configs/pm9g45_defconfig                  |   55 +
 arch/arm/mach-at91/Kconfig                         |   84 +
 arch/arm/mach-at91/Makefile                        |    3 +
 arch/arm/mach-at91/at91sam9260_devices.c           |   14 +-
 arch/arm/mach-at91/at91sam9261.c                   |  230 ++
 arch/arm/mach-at91/at91sam9261_devices.c           |  175 ++
 arch/arm/mach-at91/at91sam9263_devices.c           |    8 +-
 arch/arm/mach-at91/at91sam926x_time.c              |    2 +-
 arch/arm/mach-at91/at91sam9g45.c                   |  277 ++
 arch/arm/mach-at91/at91sam9g45_devices.c           |  242 ++
 arch/arm/mach-at91/include/mach/at91sam9261.h      |  109 +
 .../mach-at91/include/mach/at91sam9261_matrix.h    |   64 +
 arch/arm/mach-at91/include/mach/at91sam9_matrix.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h      |  160 ++
 .../mach-at91/include/mach/at91sam9g45_matrix.h    |  153 +
 arch/arm/mach-at91/include/mach/cpu.h              |   10 +
 arch/arm/mach-at91/include/mach/hardware.h         |    2 +-
 arch/arm/mach-at91/lowlevel_init.S                 |    2 +-
 arch/arm/mach-ep93xx/clocksource.c                 |    2 +-
 arch/arm/mach-imx/Makefile                         |    2 +-
 arch/arm/mach-imx/clocksource.c                    |    2 +-
 arch/arm/mach-imx/devices.c                        |   64 +
 arch/arm/mach-imx/include/mach/devices-imx21.h     |   33 +
 arch/arm/mach-imx/include/mach/devices-imx25.h     |   38 +
 arch/arm/mach-imx/include/mach/devices-imx27.h     |   54 +
 arch/arm/mach-imx/include/mach/devices-imx31.h     |   35 +
 arch/arm/mach-imx/include/mach/devices-imx35.h     |   57 +
 arch/arm/mach-imx/include/mach/devices-imx51.h     |   58 +
 arch/arm/mach-imx/include/mach/devices.h           |   18 +
 arch/arm/mach-imx/include/mach/imx35-regs.h        |    1 +
 arch/arm/mach-imx/include/mach/imx51-regs.h        |   15 +-
 arch/arm/mach-imx/include/mach/imxfb.h             |    5 +
 arch/arm/mach-imx/nand.c                           |    9 +
 arch/arm/mach-netx/clocksource.c                   |    2 +-
 arch/arm/mach-nomadik/timer.c                      |    2 +-
 arch/arm/mach-omap/s32k_clksource.c                |    2 +-
 arch/arm/mach-s3c24xx/generic.c                    |    2 +-
 arch/arm/mach-stm/clocksource-imx23.c              |    2 +-
 arch/blackfin/lib/clock.c                          |    2 +-
 arch/m68k/Kconfig                                  |  182 --
 arch/m68k/Makefile                                 |   82 -
 arch/m68k/boards/kp_ukd_r1_num/Makefile            |   31 -
 arch/m68k/boards/kp_ukd_r1_num/env/bin/_update     |   36 -
 arch/m68k/boards/kp_ukd_r1_num/env/bin/boot        |   38 -
 arch/m68k/boards/kp_ukd_r1_num/env/bin/init        |   20 -
 arch/m68k/boards/kp_ukd_r1_num/env/bin/pcidmaloop  |   14 -
 arch/m68k/boards/kp_ukd_r1_num/env/bin/pciloop     |   13 -
 .../boards/kp_ukd_r1_num/env/bin/update_kernel     |    8 -
 arch/m68k/boards/kp_ukd_r1_num/env/bin/update_root |    8 -
 arch/m68k/boards/kp_ukd_r1_num/env/config          |   32 -
 arch/m68k/boards/kp_ukd_r1_num/highlevel_init.c    |  124 -
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c     |  160 --
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.dox   |   13 -
 arch/m68k/boards/kp_ukd_r1_num/lowlevel_init.c     |  183 --
 arch/m68k/boards/kp_ukd_r1_num/pci-stubs.c         |   41 -
 arch/m68k/boards/phycore_mcf54xx/Makefile          |   31 -
 arch/m68k/boards/phycore_mcf54xx/env/bin/_update   |   36 -
 arch/m68k/boards/phycore_mcf54xx/env/bin/boot      |   38 -
 arch/m68k/boards/phycore_mcf54xx/env/bin/init      |   20 -
 .../m68k/boards/phycore_mcf54xx/env/bin/pcidmaloop |   14 -
 arch/m68k/boards/phycore_mcf54xx/env/bin/pciloop   |   13 -
 .../boards/phycore_mcf54xx/env/bin/update_kernel   |    8 -
 .../boards/phycore_mcf54xx/env/bin/update_root     |    8 -
 arch/m68k/boards/phycore_mcf54xx/env/config        |   32 -
 arch/m68k/boards/phycore_mcf54xx/highlevel_init.c  |  124 -
 arch/m68k/boards/phycore_mcf54xx/lowlevel_init.c   |  194 --
 arch/m68k/boards/phycore_mcf54xx/pci-stubs.c       |   41 -
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |  139 -
 .../boards/phycore_mcf54xx/phyCore_MCF54xx.dox     |   14 -
 arch/m68k/configs/phycore_mcf54xx_defconfig        |   36 -
 arch/m68k/cpu/Makefile                             |   41 -
 arch/m68k/cpu/cpu.c                                |  185 --
 arch/m68k/cpu/cw_console_io.c                      |  116 -
 arch/m68k/cpu/early_init_support.c                 |   41 -
 arch/m68k/cpu/interrupts.c                         |  246 --
 arch/m68k/cpu/start-mcfv4e.S                       |  677 -----
 arch/m68k/include/asm/atomic.h                     |   25 -
 arch/m68k/include/asm/barebox-m68k.h               |   40 -
 arch/m68k/include/asm/barebox.h                    |   33 -
 arch/m68k/include/asm/bitops.h                     |  141 -
 arch/m68k/include/asm/bootinfo.h                   |  381 ---
 arch/m68k/include/asm/byteorder.h                  |   43 -
 arch/m68k/include/asm/coldfire/mcf548x.h           |   63 -
 .../include/asm/coldfire/mcf548x/mcf548x_can.h     |  159 --
 .../include/asm/coldfire/mcf548x/mcf548x_ctm.h     |   88 -
 .../include/asm/coldfire/mcf548x/mcf548x_dma.h     |  121 -
 .../asm/coldfire/mcf548x/mcf548x_dma_ereq.h        |   62 -
 .../include/asm/coldfire/mcf548x/mcf548x_dspi.h    |  155 -
 .../include/asm/coldfire/mcf548x/mcf548x_eport.h   |   98 -
 .../include/asm/coldfire/mcf548x/mcf548x_fbcs.h    |   97 -
 .../include/asm/coldfire/mcf548x/mcf548x_fec.h     |  623 -----
 .../include/asm/coldfire/mcf548x/mcf548x_gpio.h    |  708 -----
 .../include/asm/coldfire/mcf548x/mcf548x_gpt.h     |  100 -
 .../include/asm/coldfire/mcf548x/mcf548x_i2c.h     |   69 -
 .../include/asm/coldfire/mcf548x/mcf548x_intc.h    |  329 ---
 .../include/asm/coldfire/mcf548x/mcf548x_pci.h     |  349 ---
 .../include/asm/coldfire/mcf548x/mcf548x_pciarb.h  |   50 -
 .../include/asm/coldfire/mcf548x/mcf548x_psc.h     |  486 ----
 .../include/asm/coldfire/mcf548x/mcf548x_sdramc.h  |  109 -
 .../include/asm/coldfire/mcf548x/mcf548x_sec.h     |  389 ---
 .../include/asm/coldfire/mcf548x/mcf548x_siu.h     |   69 -
 .../include/asm/coldfire/mcf548x/mcf548x_slt.h     |   71 -
 .../include/asm/coldfire/mcf548x/mcf548x_sram.h    |   66 -
 .../include/asm/coldfire/mcf548x/mcf548x_uart.h    |  233 --
 .../include/asm/coldfire/mcf548x/mcf548x_usb.h     |  509 ----
 .../include/asm/coldfire/mcf548x/mcf548x_xlbarb.h  |   45 -
 arch/m68k/include/asm/coldfire/mcf5xxx.h           |  258 --
 arch/m68k/include/asm/common.h                     |   25 -
 arch/m68k/include/asm/elf.h                        |  146 -
 arch/m68k/include/asm/hardware.h                   |   30 -
 arch/m68k/include/asm/io.h                         |  304 --
 arch/m68k/include/asm/mach-types.h                 |   48 -
 arch/m68k/include/asm/memory.h                     |   28 -
 arch/m68k/include/asm/module.h                     |   36 -
 arch/m68k/include/asm/posix_types.h                |   86 -
 arch/m68k/include/asm/processor.h                  |   46 -
 arch/m68k/include/asm/ptrace.h                     |   55 -
 arch/m68k/include/asm/setup.h                      |  412 ---
 arch/m68k/include/asm/string.h                     |   32 -
 arch/m68k/include/asm/types.h                      |   82 -
 arch/m68k/lib/Makefile                             |   31 -
 arch/m68k/lib/barebox.lds.S                        |   92 -
 arch/m68k/lib/m68k-linuxboot.c                     |  177 --
 arch/m68k/lib/m68k-meminit.c                       |   43 -
 arch/m68k/lib/m68k-module.c                        |  110 -
 arch/m68k/mach-mcfv4e.dox                          |   39 -
 arch/m68k/mach-mcfv4e/Kconfig                      |   18 -
 arch/m68k/mach-mcfv4e/Makefile                     |   19 -
 arch/m68k/mach-mcfv4e/dma_utils.c                  |  502 ----
 arch/m68k/mach-mcfv4e/fec.c                        | 1440 ----------
 arch/m68k/mach-mcfv4e/fecbd.c                      |  232 --
 arch/m68k/mach-mcfv4e/include/mach/clocks.h        |   30 -
 arch/m68k/mach-mcfv4e/include/mach/debug_ll.h      |   33 -
 arch/m68k/mach-mcfv4e/include/mach/hardware.h      |   33 -
 arch/m68k/mach-mcfv4e/include/mach/mcf54xx-regs.h  |   30 -
 arch/m68k/mach-mcfv4e/include/proc/dma_utils.h     |   80 -
 arch/m68k/mach-mcfv4e/include/proc/fec.h           |  130 -
 arch/m68k/mach-mcfv4e/include/proc/fecbd.h         |  115 -
 .../m68k/mach-mcfv4e/include/proc/mcdapi/MCD_dma.h |  379 ---
 .../include/proc/mcdapi/MCD_progCheck.h            |   27 -
 .../include/proc/mcdapi/MCD_tasksInit.h            |   66 -
 arch/m68k/mach-mcfv4e/include/proc/net/eth.h       |   70 -
 arch/m68k/mach-mcfv4e/include/proc/net/nbuf.h      |   88 -
 arch/m68k/mach-mcfv4e/include/proc/net/net.h       |   39 -
 arch/m68k/mach-mcfv4e/include/proc/net/queue.h     |   54 -
 arch/m68k/mach-mcfv4e/include/proc/processor.h     |   33 -
 arch/m68k/mach-mcfv4e/include/proc/ptrace.h        |  119 -
 arch/m68k/mach-mcfv4e/mcdapi/MCD_dmaApi.c          |  907 ------
 arch/m68k/mach-mcfv4e/mcdapi/MCD_library.dox       |   10 -
 arch/m68k/mach-mcfv4e/mcdapi/MCD_tasks.c           | 2449 ----------------
 arch/m68k/mach-mcfv4e/mcdapi/MCD_tasksInit.c       |  225 --
 arch/m68k/mach-mcfv4e/mcdapi/Makefile              |   26 -
 arch/m68k/mach-mcfv4e/mcdapi/ReleaseNotes.txt      |   27 -
 arch/m68k/mach-mcfv4e/mcf_clocksource.c            |  138 -
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c              |   45 -
 arch/m68k/mach-mcfv4e/multichannel_dma.c           |   51 -
 arch/m68k/mach-mcfv4e/net/Makefile                 |   26 -
 arch/m68k/mach-mcfv4e/net/nbuf.c                   |  239 --
 arch/m68k/mach-mcfv4e/net/net.c                    |  156 -
 arch/m68k/mach-mcfv4e/net/queue.c                  |  128 -
 arch/ppc/lib/time.c                                |    2 +-
 arch/sandbox/board/clock.c                         |    2 +-
 arch/x86/mach-i386/pit_timer.c                     |    2 +-
 commands/bootm.c                                   |    1 -
 defaultenv/bin/_update                             |    9 +-
 defaultenv/bin/update                              |    2 +-
 drivers/mtd/nand/Kconfig                           |    4 +-
 drivers/mtd/nand/nand_base.c                       |    6 +
 drivers/mtd/nand/nand_imx.c                        |  718 ++++--
 drivers/mtd/nand/nand_s3c2410.c                    |   26 +-
 drivers/net/miidev.c                               |    1 +
 drivers/net/smc91111.c                             |   40 +-
 drivers/nor/cfi_flash.c                            |  303 +--
 drivers/nor/cfi_flash.h                            |  120 +-
 drivers/nor/cfi_flash_amd.c                        |  172 +-
 drivers/nor/cfi_flash_intel.c                      |   52 +-
 include/clock.h                                    |    2 +
 include/common.h                                   |    2 +
 include/linux/mtd/nand.h                           |    6 +-
 net/eth.c                                          |    4 +-
 scripts/checkpatch.pl                              | 2950 ++++++++++++++++++++
 223 files changed, 7060 insertions(+), 19761 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9261ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9261ek/config.h
 create mode 100644 arch/arm/boards/at91sam9261ek/env/config
 create mode 100644 arch/arm/boards/at91sam9261ek/init.c
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/config.h
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/config
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/init.c
 create mode 100644 arch/arm/boards/pm9261/Makefile
 create mode 100644 arch/arm/boards/pm9261/config.h
 create mode 100644 arch/arm/boards/pm9261/env/config
 create mode 100644 arch/arm/boards/pm9261/init.c
 create mode 100644 arch/arm/boards/pm9g45/Makefile
 create mode 100644 arch/arm/boards/pm9g45/config.h
 create mode 100644 arch/arm/boards/pm9g45/env/config
 create mode 100644 arch/arm/boards/pm9g45/init.c
 create mode 100644 arch/arm/configs/at91sam9261ek_defconfig
 rename arch/{m68k/configs/phycore_kpukdr1_5475num_defconfig => arm/configs/at91sam9g10ek_defconfig} (56%)
 create mode 100644 arch/arm/configs/at91sam9m10g45ek_defconfig
 create mode 100644 arch/arm/configs/pm9261_defconfig
 create mode 100644 arch/arm/configs/pm9g45_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9261.c
 create mode 100644 arch/arm/mach-at91/at91sam9261_devices.c
 create mode 100644 arch/arm/mach-at91/at91sam9g45.c
 create mode 100644 arch/arm/mach-at91/at91sam9g45_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9g45.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
 create mode 100644 arch/arm/mach-imx/devices.c
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx21.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx25.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx27.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx31.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx35.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices.h
 delete mode 100644 arch/m68k/Kconfig
 delete mode 100644 arch/m68k/Makefile
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/Makefile
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/_update
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/boot
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/init
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/pcidmaloop
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/pciloop
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/update_kernel
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/bin/update_root
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/env/config
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/highlevel_init.c
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.dox
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/lowlevel_init.c
 delete mode 100644 arch/m68k/boards/kp_ukd_r1_num/pci-stubs.c
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/Makefile
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/_update
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/boot
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/init
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/pcidmaloop
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/pciloop
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/update_kernel
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/bin/update_root
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/env/config
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/highlevel_init.c
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/lowlevel_init.c
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/pci-stubs.c
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
 delete mode 100644 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.dox
 delete mode 100644 arch/m68k/configs/phycore_mcf54xx_defconfig
 delete mode 100644 arch/m68k/cpu/Makefile
 delete mode 100644 arch/m68k/cpu/cpu.c
 delete mode 100644 arch/m68k/cpu/cw_console_io.c
 delete mode 100644 arch/m68k/cpu/early_init_support.c
 delete mode 100644 arch/m68k/cpu/interrupts.c
 delete mode 100644 arch/m68k/cpu/start-mcfv4e.S
 delete mode 100644 arch/m68k/include/asm/atomic.h
 delete mode 100644 arch/m68k/include/asm/barebox-m68k.h
 delete mode 100644 arch/m68k/include/asm/barebox.h
 delete mode 100644 arch/m68k/include/asm/bitops.h
 delete mode 100644 arch/m68k/include/asm/bootinfo.h
 delete mode 100644 arch/m68k/include/asm/byteorder.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_can.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_ctm.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_dma.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_dma_ereq.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_dspi.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_eport.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_fbcs.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_fec.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_gpio.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_gpt.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_i2c.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_intc.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_pci.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_pciarb.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_psc.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_sdramc.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_sec.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_siu.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_slt.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_sram.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_uart.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_usb.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf548x/mcf548x_xlbarb.h
 delete mode 100644 arch/m68k/include/asm/coldfire/mcf5xxx.h
 delete mode 100644 arch/m68k/include/asm/common.h
 delete mode 100644 arch/m68k/include/asm/elf.h
 delete mode 100644 arch/m68k/include/asm/hardware.h
 delete mode 100644 arch/m68k/include/asm/io.h
 delete mode 100644 arch/m68k/include/asm/mach-types.h
 delete mode 100644 arch/m68k/include/asm/memory.h
 delete mode 100644 arch/m68k/include/asm/module.h
 delete mode 100644 arch/m68k/include/asm/posix_types.h
 delete mode 100644 arch/m68k/include/asm/processor.h
 delete mode 100644 arch/m68k/include/asm/ptrace.h
 delete mode 100644 arch/m68k/include/asm/setup.h
 delete mode 100644 arch/m68k/include/asm/string.h
 delete mode 100644 arch/m68k/include/asm/types.h
 delete mode 100644 arch/m68k/lib/Makefile
 delete mode 100644 arch/m68k/lib/barebox.lds.S
 delete mode 100644 arch/m68k/lib/m68k-linuxboot.c
 delete mode 100644 arch/m68k/lib/m68k-meminit.c
 delete mode 100644 arch/m68k/lib/m68k-module.c
 delete mode 100644 arch/m68k/mach-mcfv4e.dox
 delete mode 100644 arch/m68k/mach-mcfv4e/Kconfig
 delete mode 100644 arch/m68k/mach-mcfv4e/Makefile
 delete mode 100644 arch/m68k/mach-mcfv4e/dma_utils.c
 delete mode 100644 arch/m68k/mach-mcfv4e/fec.c
 delete mode 100644 arch/m68k/mach-mcfv4e/fecbd.c
 delete mode 100644 arch/m68k/mach-mcfv4e/include/mach/clocks.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/mach/debug_ll.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/mach/hardware.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/mach/mcf54xx-regs.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/dma_utils.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/fec.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/fecbd.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/mcdapi/MCD_dma.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/mcdapi/MCD_progCheck.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/mcdapi/MCD_tasksInit.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/net/eth.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/net/nbuf.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/net/net.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/net/queue.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/processor.h
 delete mode 100644 arch/m68k/mach-mcfv4e/include/proc/ptrace.h
 delete mode 100644 arch/m68k/mach-mcfv4e/mcdapi/MCD_dmaApi.c
 delete mode 100644 arch/m68k/mach-mcfv4e/mcdapi/MCD_library.dox
 delete mode 100644 arch/m68k/mach-mcfv4e/mcdapi/MCD_tasks.c
 delete mode 100644 arch/m68k/mach-mcfv4e/mcdapi/MCD_tasksInit.c
 delete mode 100644 arch/m68k/mach-mcfv4e/mcdapi/Makefile
 delete mode 100644 arch/m68k/mach-mcfv4e/mcdapi/ReleaseNotes.txt
 delete mode 100644 arch/m68k/mach-mcfv4e/mcf_clocksource.c
 delete mode 100644 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c
 delete mode 100644 arch/m68k/mach-mcfv4e/multichannel_dma.c
 delete mode 100644 arch/m68k/mach-mcfv4e/net/Makefile
 delete mode 100644 arch/m68k/mach-mcfv4e/net/nbuf.c
 delete mode 100644 arch/m68k/mach-mcfv4e/net/net.c
 delete mode 100644 arch/m68k/mach-mcfv4e/net/queue.c
 create mode 100755 scripts/checkpatch.pl
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
