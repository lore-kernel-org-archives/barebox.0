Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGza-00068O-3f
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:00 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RYGzT-0007JB-Cu
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 13:52:51 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RYGzT-0002G0-Bk
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 13:52:51 +0100
Date: Wed, 7 Dec 2011 13:52:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111207125251.GQ27267@pengutronix.de>
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
Subject: v2011.12.0
To: barebox@lists.infradead.org

The december release is out. Here is what happened since
November.

Sascha

Antony Pavlov (2):
      arm: cpuinfo: import ARM architecture detection code from Linux
      MIPS: provide __bss_stop in linker script

Fabio Estevam (1):
      ARM: mx53-loco: Remove duplicate call to loco_fec_reset()

Franck Jullien (4):
      ata: Add dev ref to blockdevice during probe
      mount: Fix the printing of device name
      fs/fat: Initialize local variable finfo
      nios2: Include asm/unaligned.h

Hubert Feurstein (1):
      at91: add config option for ohci driver

Jaccon Bastiaansen (1):
      Increase heapsize for i.MX21ADS board.

Jan Weitzel (3):
      readkey: force return from while true
      readkey: Use ARRAY_SIZE
      crc exit with COMMAND_ERROR_USAGE

Jean-Christophe PLAGNIOL-VILLARD (14):
      bootm: ensure the uImage is mapped first to allow option to used it
      get_fake_image_handle: set nb_data_entries to 1 and update the header size
      bootm: add -L option to specify the initrd load address
      arm/bootm: enable multi uimage support
      defaultenv: add bootm_opt var to allow the board to pass parameter to bootm
      move digest to crypto/
      digest: factorise file digest to common/digest.c
      sha1: drop never used sha1_hmac
      crypto: add sha224 support
      command/digest: add sha224 support
      sandbox: move __SANDBOX__ to Makefile
      sandbox: remove duplicate barebox.lds.S
      sandbox: simplify linker script
      password: remove not used variable 'second'

Juergen Beisert (2):
      Mini2440: Fix leftover from A9M2440 copy
      S3C24XX: Fix wrong RTS behaviour

Lucas De Marchi (3):
      Add setupmbr to gitignore
      x86: fix build error because of missing header
      x86: fix symbol size calculation

Michael Grzeschik (2):
      atmel_spi: add mesg->actual_length, so devices can use it for read/write
      m25p80: set the correct erasesize when we use OPCODE_BE_4K

Sascha Hauer (42):
      ARM i.MX53: Add lowlevel init code
      ARM i.MX53 Loco: Use generic lowlevel init code
      ARM i.MX53: sync iomux data with latest kernel
      mtd nand i.MX: Add i.MX53 support
      mtd nand i.MX: depend on ARCH_IMX instead of individual SoCs
      ARM i.MX53: Fix nand registration helper
      Merge branch 'master' into next
      nand: export some useful information about flashes to device variables
      initial libfdt support
      initial oftree command support
      ARM Linux: Add device tree support
      oftree: add fixup for memory nodes
      Merge branch 'master' into next
      ARM i.MX53: enable l2 cache
      mtd nand omap: use blocknum calculation to where it's used
      mtd nand omap: factor out bch correct function
      mtd nand omap: factor out hamming correct function
      mtd nand omap: call ecc calculate function outside omap_correct_bch
      mtd nand omap: fail on bch decode failure
      mtd nand omap: use register defines for ecc registers
      mtd nand omap: make debugging output more useful
      mtd nand omap: factor out an internal __omap_calculate_ecc function
      mtd nand omap: add read function for the OMAP4 romcode ecc mode
      mtd nand omap: use NAND_OWN_BUFFERS option
      Merge branch 'pu-mx53-l2' into next
      fs: read: do not call read op when count is 0
      mkdir command: do not fail with -p and directory already exists
      export: do not fail on already exported variable
      Merge branch 'next'
      console: fix return values of puts functions
      fix fprintf prototype and return value
      fix unlzo support
      ARM i.MX53: silence compiler warning in nand.c
      Merge branch 'sent/assorted-fixes'
      Merge branch 'pu/unlzo'
      Merge branch 'pu/imx53-nand-warning'
      lib: remove nonexistest files from Makefile
      console_simple: Fix compilation
      blackfin: remove contents of page.h to make barebox compilable again
      ppc mpc5200: remove unused variable
      fprintf: remove unused variable
      Release v2011.12.0

 Makefile                                           |    4 +-
 arch/arm/Kconfig                                   |    1 +
 arch/arm/boards/freescale-mx53-loco/Makefile       |    1 -
 arch/arm/boards/freescale-mx53-loco/board.c        |    5 +-
 .../arm/boards/freescale-mx53-loco/lowlevel_init.S |  172 --
 arch/arm/boards/mini2440/config.h                  |    9 +-
 arch/arm/boards/mini2440/mini2440.c                |    3 +-
 arch/arm/configs/mx21ads_defconfig                 |    1 +
 arch/arm/cpu/cpuinfo.c                             |   91 +-
 arch/arm/lib/armlinux.c                            |   15 +-
 arch/arm/lib/bootm.c                               |    5 -
 arch/arm/mach-imx/Kconfig                          |    1 -
 arch/arm/mach-imx/imx53.c                          |  146 ++
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |    3 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   25 +-
 arch/arm/mach-imx/include/mach/imx-nand.h          |    2 +-
 arch/arm/mach-imx/include/mach/imx53.h             |    6 +
 arch/arm/mach-imx/include/mach/iomux-mx53.h        | 2354 ++++++++++----------
 arch/arm/mach-imx/nand.c                           |    2 +-
 arch/blackfin/Kconfig                              |    2 +-
 arch/blackfin/include/asm/page.h                   |   92 -
 arch/mips/Kconfig                                  |    1 +
 arch/mips/lib/barebox.lds.S                        |    2 +-
 arch/nios2/Kconfig                                 |    2 +-
 arch/nios2/include/asm/unaligned.h                 |   15 +
 arch/ppc/Kconfig                                   |    1 +
 arch/ppc/mach-mpc5xxx/cpu_init.c                   |    2 -
 arch/sandbox/Kconfig                               |    1 +
 arch/sandbox/Makefile                              |   10 +-
 arch/sandbox/board/Makefile                        |    3 -
 arch/sandbox/board/barebox.lds.S                   |  231 +--
 arch/sandbox/board/config.h                        |    2 -
 arch/sandbox/lib/Makefile                          |    4 -
 arch/sandbox/lib/barebox.lds.S                     |  229 --
 arch/x86/Kconfig                                   |    1 +
 arch/x86/boot/pmjump.S                             |    3 +-
 arch/x86/include/asm/types.h                       |    2 +
 arch/x86/include/asm/unaligned.h                   |   14 +
 arch/x86/lib/traveler.S                            |   11 +-
 commands/Kconfig                                   |   12 +
 commands/Makefile                                  |    1 +
 commands/bootm.c                                   |   42 +-
 commands/crc.c                                     |    2 +
 commands/digest.c                                  |   98 +-
 commands/mkdir.c                                   |    7 +-
 commands/mount.c                                   |    2 +-
 commands/oftree.c                                  |  135 ++
 common/Makefile                                    |    1 +
 common/console.c                                   |   22 +-
 common/console_simple.c                            |   11 +-
 common/digest.c                                    |  101 +
 common/env.c                                       |    3 +-
 common/memory.c                                    |   80 +
 common/oftree.c                                    |  312 +++
 common/password.c                                  |    3 +-
 crypto/Kconfig                                     |   24 +
 crypto/Makefile                                    |    6 +
 {lib => crypto}/crc16.c                            |    0
 {lib => crypto}/crc32.c                            |    0
 {lib => crypto}/md5.c                              |    0
 {lib => crypto}/sha1.c                             |   39 -
 lib/sha256.c => crypto/sha2.c                      |  130 +-
 defaultenv/bin/boot                                |    2 +-
 drivers/ata/disk_drive.c                           |    1 +
 drivers/mtd/nand/Kconfig                           |    2 +-
 drivers/mtd/nand/nand.c                            |    6 +
 drivers/mtd/nand/nand_imx.c                        |   10 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |  396 +++--
 drivers/nor/m25p80.c                               |    6 +-
 drivers/serial/serial_s3c24x0.c                    |    2 +
 drivers/spi/atmel_spi.c                            |    2 +
 drivers/usb/host/Kconfig                           |    4 +
 drivers/usb/host/Makefile                          |    2 +-
 fs/fat/fat.c                                       |    2 +
 fs/fs.c                                            |   11 +
 include/digest.h                                   |    8 +
 include/fdt.h                                      |   60 +
 include/libfdt.h                                   | 1235 ++++++++++
 include/libfdt_env.h                               |   22 +
 include/linux/types.h                              |    1 +
 include/of.h                                       |   21 +
 include/stdio.h                                    |    8 +-
 lib/Kconfig                                        |   28 +-
 lib/Makefile                                       |    6 +-
 lib/decompress_unlzo.c                             |  216 ++-
 lib/fdt/Makefile                                   |    2 +
 lib/fdt/TODO                                       |    3 +
 lib/fdt/fdt.c                                      |  222 ++
 lib/fdt/fdt_ro.c                                   |  574 +++++
 lib/fdt/fdt_rw.c                                   |  465 ++++
 lib/fdt/fdt_strerror.c                             |   96 +
 lib/fdt/fdt_sw.c                                   |  256 +++
 lib/fdt/fdt_wip.c                                  |  118 +
 lib/fdt/libfdt_internal.h                          |   95 +
 lib/readkey.c                                      |    2 +
 scripts/bareboxenv.c                               |    2 +-
 scripts/mkimage.c                                  |    2 +-
 scripts/setupmbr/.gitignore                        |    1 +
 98 files changed, 6049 insertions(+), 2345 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
 create mode 100644 arch/arm/mach-imx/include/mach/imx53.h
 create mode 100644 arch/nios2/include/asm/unaligned.h
 delete mode 100644 arch/sandbox/lib/Makefile
 delete mode 100644 arch/sandbox/lib/barebox.lds.S
 create mode 100644 arch/x86/include/asm/unaligned.h
 create mode 100644 commands/oftree.c
 create mode 100644 common/oftree.c
 create mode 100644 crypto/Kconfig
 create mode 100644 crypto/Makefile
 rename {lib => crypto}/crc16.c (100%)
 rename {lib => crypto}/crc32.c (100%)
 rename {lib => crypto}/md5.c (100%)
 rename {lib => crypto}/sha1.c (91%)
 rename lib/sha256.c => crypto/sha2.c (75%)
 create mode 100644 include/fdt.h
 create mode 100644 include/libfdt.h
 create mode 100644 include/libfdt_env.h
 create mode 100644 include/of.h
 create mode 100644 lib/fdt/Makefile
 create mode 100644 lib/fdt/TODO
 create mode 100644 lib/fdt/fdt.c
 create mode 100644 lib/fdt/fdt_ro.c
 create mode 100644 lib/fdt/fdt_rw.c
 create mode 100644 lib/fdt/fdt_strerror.c
 create mode 100644 lib/fdt/fdt_sw.c
 create mode 100644 lib/fdt/fdt_wip.c
 create mode 100644 lib/fdt/libfdt_internal.h
 create mode 100644 scripts/setupmbr/.gitignore
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
