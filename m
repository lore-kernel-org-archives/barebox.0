Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QTVCj-0006PI-Hg
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 08:30:37 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QTVCg-0004xV-MH
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 10:30:30 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QTVCg-0004Fq-L2
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 10:30:30 +0200
Date: Mon, 6 Jun 2011 10:30:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110606083030.GY23771@pengutronix.de>
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
Subject: v2011.06.0 ...and a new website
To: barebox@lists.infradead.org

Hi All,

v2011.06.0 is out. Quite a lot of changes this time, mostly related to
OMAP and size reductions to make barebox usable as a OMAP Xloader.

I did not upload the documentation this time, instead please have a look
here:

http://wiki.barebox.org

We finally have a wiki, and you are all invited to participate. I hope
to make this the default website soon. You need an account to make
changes, just drop me a mail and I'll create one. Alternatively the
whole site is managed as a git repository you can clone from here:

git://git.pengutronix.de/git/barebox-doc.git

The repository contains a little script which starts a lighttpd on
your host, so being offline is no excuse for not writing documentation
;)


Here's what happened since v2011.05.0:

Alexey Galakhov (1):
      fix console fifo (and loadb/loady commands)

Dirk Behme (1):
      pr_warn() must be pr_warning()

Franck JULLIEN (10):
      Nios2: Add Altera UART driver
      Fix coding style in driver/net/Makefile
      Nios2: Add Altera TSE driver
      Add platform data to the mac device
      Add bootm support
      Update generic env/config
      Fix typo in generic.c
      Change system frequency in generic board
      Fix compiler warning
      Fix dma mapping end address

Hubert Feurstein (2):
      mci-core: add missing newline in debug message
      scripts/getenv: delete backup files from enviroment directory

Jan Weitzel (3):
      OMAP4: change boot order
      pcm049: remove unused bootsrc
      ARM: omap4: fix dev_width for omap_enable_hwecc

Juergen Beisert (1):
      Always initialize oob_poi before writing OOB data

Marek Belisko (3):
      arm: eukrea: Fix compilation warning.
      arm: karo-tx25: Fix compilation warning.
      scripts: Fix compilation warning.

Peter Korsgaard (2):
      commands/crc.c: fix typo in help text
      setenv: be robust against setenv(<var>, NULL)

Sascha Hauer (103):
      usb net: Add SMSC95xx support
      net smc911x: Add LAN9221 support
      ARM omap: move uart access functions to a more generic place
      ARM omap: rework gpio support
      ARM omap: move devices-gpmc-nand.c to omap architecture directory
      ARM omap: move architecture specific kconfig entries to arch part
      ARM omap: allow to put omap boards into another directory
      ARM omap4: fix indention in Kconfig
      omap: rename GPMC Kconfig entry to OMAP_GPMC
      arm omap: remove unused request/free gpio functions
      ARM omap: make gpio support mandatory
      mci: Add omap hsmmc driver
      mtd nand omap: Pass ecc mode from platform
      mtd nand omap: make ecc mode runtime configurable
      mtd nand omap: Add BCH ecc support
      ARM: Add missing parameter name in armlinux_set_serial
      ARM: factor out a start_linux function
      ARM: move bootm code to its own file
      ARM: move bootz code to its own file
      ARM: move bootu code to its own file
      commands: Make nand command optional
      nand: remove unused suspend/resume functions
      nand: remove unneeded nand_[get|release]_device functions
      nand: do not fall through in nand_scan_tail()
      nand: Factor out hw ecc support to seperate file
      nand: factor out software ecc support to seperate file
      nand: factor out syndrome support to seperate file
      nand: factor out nand write support
      nand: Make write support optional
      nand: Make different ecc modes optional
      nand: make vendor/type printout optional
      nand: make bbt support optional
      Merge branch 'omap-prepare' into next
      Merge branch 'omap-drivers' into next
      Merge branch 'armlinux' into next
      Merge branch 'nand-pu' into next
      fs: remove unused field 'type' from struct fs_driver_d
      mci: make it compile without info support
      ubi: do not use filep
      devfs: remove unused struct filep* argument from open/close
      fs: implement flush function
      devfs: factor out core devfs functionality
      nand: remove unused header file
      startup: we can only mount root and devfs when compiled in
      nand: remove unused nand_util file
      move version_string to seperate file
      fs: use safe_strncpy instead of sprintf
      script: update git ignore file
      serial 16550: use xzalloc
      commands: seperate usb command from usb core
      fs mount: fix error handling
      add block support
      ata: use block support
      ata: make write support optional
      mci: make write support optional
      env: Make environment variable support optional
      make command support optional
      add noshell support
      arm: compile icache command only when command support is present
      malloc: put common memory functions to seperate file
      add dummy_malloc functions
      ARM: make exception handling optional
      nand: make reading oob optional
      nand omap: fix hamming romcode ecc code
      nand omap: turn debug messages into dev_dbg
      nand: nand_block_markbad is only used with nand write support
      nand: move bb handling code to drivers/mtd/nand
      nand bb: switch to cdev operations
      nand bb: add proper bb remove function
      nand omap: use standard debug functions
      nand omap: use xzalloc instead of calloc
      nand omap: handle erased pages correctly in hamming ecc mode
      eth: check the result of edev->get_ethaddr
      net: add a context to the packet handler
      environment: make default env path configurable
      move simple_itoa to libbb so that others can use it
      kfifo: kfifo_put takes a const buffer
      copy_file: handle write return value correctly
      cp command: handle directories as last argument
      fs: add fat filesystem support
      ARM omap: Add omap signGP tool and possibility to build ift images
      mci omap: hsmmc is also found on the omap3
      ARM omap: make sr32 a static inline function
      ARM omap: Add omap4 support
      ARM omap: add xload helper functions
      ARM omap4: panda board support
      add panda defconfigs
      ARM omap4: Add pcm049 board support
      ARM: add pcm049 defconfigs
      ARM omap beagle: Add noshell support for booting from MMC
      ARM omap beagle: update defconfig
      ARM beagle board: add xload defconfig
      mci omap: rename functions from mxc to omap
      mci omap: make write support optional
      mci-core: fix debug statements
      mci: shrink string footprint
      mci: turn several pr_* statements into debug
      ata: guessing disk sizes is only needed on X86
      ARM: compile in image size and magic into barebox image
      Merge branch 'next'
      usb ehci: fix wrong argument order for memset
      usb: make locally used functions static
      Revert "fix printf warnings"

Thomas Mayer (1):
      freescale-mx35-3-stack: Add mmc0

Tim Sander (1):
      fix genenv when using svn based enviroment directory

 arch/arm/Kconfig                                   |   10 +
 arch/arm/Makefile                                  |   14 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    2 -
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    2 +
 arch/arm/boards/karo-tx25/lowlevel.c               |    1 -
 arch/arm/boards/omap/Kconfig                       |   93 -
 arch/arm/boards/omap/Makefile                      |    2 -
 arch/arm/boards/omap/board-beagle.c                |   44 +-
 arch/arm/boards/panda/Makefile                     |    1 +
 arch/arm/boards/panda/board.c                      |  230 ++
 arch/arm/boards/panda/config.h                     |    1 +
 arch/arm/boards/panda/env/config                   |   45 +
 arch/arm/boards/panda/lowlevel.c                   |  121 +
 arch/arm/boards/panda/mux.c                        |  257 ++
 arch/arm/boards/pcm049/Makefile                    |    1 +
 arch/arm/boards/pcm049/board.c                     |  197 ++
 arch/arm/boards/pcm049/config.h                    |    1 +
 arch/arm/boards/pcm049/env/bin/nand_bootstrap      |   31 +
 arch/arm/boards/pcm049/env/config                  |   53 +
 arch/arm/boards/pcm049/lowlevel.c                  |  127 +
 arch/arm/boards/pcm049/mux.c                       |  254 ++
 arch/arm/configs/omap3530_beagle_defconfig         |   15 +-
 arch/arm/configs/omap3530_beagle_xload_defconfig   |   38 +
 arch/arm/configs/panda_defconfig                   |   60 +
 arch/arm/configs/panda_xload_defconfig             |   26 +
 arch/arm/configs/pcm049_defconfig                  |   57 +
 arch/arm/configs/pcm049_xload_defconfig            |   40 +
 arch/arm/cpu/Makefile                              |    4 +-
 arch/arm/cpu/cpu.c                                 |    3 +-
 arch/arm/cpu/start.c                               |   16 +
 arch/arm/include/asm/armlinux.h                    |    6 +-
 arch/arm/lib/Makefile                              |    5 +-
 arch/arm/lib/armlinux.c                            |  215 +--
 arch/arm/lib/barebox.lds.S                         |    1 +
 arch/arm/lib/bootm.c                               |   92 +
 arch/arm/lib/bootu.c                               |   38 +
 arch/arm/lib/bootz.c                               |  100 +
 arch/arm/mach-omap/Kconfig                         |  179 +-
 arch/arm/mach-omap/Makefile                        |    5 +-
 .../{boards/omap => mach-omap}/devices-gpmc-nand.c |    5 +-
 arch/arm/mach-omap/gpio.c                          |  146 +-
 arch/arm/mach-omap/include/mach/gpio.h             |   46 -
 arch/arm/mach-omap/include/mach/gpmc.h             |    1 +
 arch/arm/mach-omap/include/mach/gpmc_nand.h        |   17 +-
 arch/arm/mach-omap/include/mach/omap4-clock.h      |  320 +++
 arch/arm/mach-omap/include/mach/omap4-mux.h        |  344 +++
 arch/arm/mach-omap/include/mach/omap4-silicon.h    |  179 ++
 arch/arm/mach-omap/include/mach/silicon.h          |    3 +
 arch/arm/mach-omap/include/mach/syslib.h           |   23 +-
 arch/arm/mach-omap/include/mach/xload.h            |   16 +
 arch/arm/mach-omap/omap-uart.c                     |   36 +
 arch/arm/mach-omap/omap3_generic.c                 |   40 +-
 arch/arm/mach-omap/omap4_clock.c                   |  380 +++
 arch/arm/mach-omap/omap4_generic.c                 |  420 +++
 arch/arm/mach-omap/syslib.c                        |   20 -
 arch/arm/mach-omap/xload.c                         |   54 +
 arch/nios2/boards/generic/env/config               |    5 +
 arch/nios2/boards/generic/generic.c                |   15 +-
 arch/nios2/boards/generic/nios_sopc.h              |   12 +-
 arch/nios2/include/asm/dma-mapping.h               |    2 +-
 arch/nios2/lib/Makefile                            |    1 +
 arch/nios2/lib/bootm.c                             |   83 +
 commands/Kconfig                                   |   27 +-
 commands/Makefile                                  |    3 +-
 commands/cp.c                                      |    3 +-
 commands/crc.c                                     |    2 +-
 commands/loadenv.c                                 |    2 +-
 commands/nand.c                                    |  258 +--
 commands/saveenv.c                                 |    2 +-
 commands/usb.c                                     |   41 +
 common/Kconfig                                     |   42 +-
 common/Makefile                                    |   10 +-
 common/block.c                                     |  263 ++
 common/command.c                                   |    4 -
 common/console.c                                   |   37 +-
 common/console_simple.c                            |    2 +
 common/dlmalloc.c                                  |   50 -
 common/dummy_malloc.c                              |   26 +
 common/env.c                                       |    2 +-
 common/environment.c                               |    2 +
 common/hush.c                                      |   15 +-
 common/memory.c                                    |   71 +
 common/startup.c                                   |   14 +-
 common/version.c                                   |   13 +
 drivers/ata/Kconfig                                |    5 +
 drivers/ata/disk_drive.c                           |  199 +--
 drivers/mci/Kconfig                                |   12 +
 drivers/mci/Makefile                               |    1 +
 drivers/mci/mci-core.c                             |   54 +-
 drivers/mci/omap_hsmmc.c                           |  585 +++++
 drivers/mtd/nand/Kconfig                           |   48 +-
 drivers/mtd/nand/Makefile                          |   10 +-
 drivers/mtd/nand/nand-bb.c                         |  291 ++
 drivers/mtd/nand/nand.c                            |   53 +-
 drivers/mtd/nand/nand.h                            |   31 +
 drivers/mtd/nand/nand_base.c                       | 1437 +---------
 drivers/mtd/nand/nand_bbt.c                        |    9 +
 drivers/mtd/nand/nand_hwecc.c                      |  103 +
 drivers/mtd/nand/nand_hwecc_syndrome.c             |  225 ++
 drivers/mtd/nand/nand_ids.c                        |  145 +-
 drivers/mtd/nand/nand_omap_bch_decoder.c           |  389 +++
 drivers/mtd/nand/nand_omap_gpmc.c                  |  508 +++-
 drivers/mtd/nand/nand_swecc.c                      |   94 +
 drivers/mtd/nand/nand_util.c                       |  858 ------
 drivers/mtd/nand/nand_write.c                      |  746 ++++++
 drivers/mtd/ubi/cdev.c                             |   12 +-
 drivers/net/Kconfig                                |   16 +
 drivers/net/Makefile                               |    5 +-
 drivers/net/altera_tse.c                           |  579 ++++
 drivers/net/altera_tse.h                           |  303 +++
 drivers/net/smc911x.c                              |    2 +
 drivers/net/usb/Kconfig                            |    4 +
 drivers/net/usb/Makefile                           |    1 +
 drivers/net/usb/smsc95xx.c                         |  938 +++++++
 drivers/net/usb/smsc95xx.h                         |  256 ++
 drivers/serial/Kconfig                             |    5 +
 drivers/serial/Makefile                            |    3 +-
 drivers/serial/serial_altera.c                     |   95 +
 drivers/serial/serial_ns16550.c                    |    4 +-
 drivers/usb/core/usb.c                             |   48 +-
 drivers/usb/host/ehci-hcd.c                        |    6 +-
 fs/Kconfig                                         |    2 +
 fs/Makefile                                        |    2 +
 fs/cramfs/cramfs.c                                 |    1 -
 fs/devfs-core.c                                    |  236 ++
 fs/devfs.c                                         |  177 +--
 fs/fat/Kconfig                                     |   15 +
 fs/fat/Makefile                                    |    1 +
 fs/fat/diskio.h                                    |   78 +
 fs/fat/fat.c                                       |  434 +++
 fs/fat/ff.c                                        | 2761 ++++++++++++++++++++
 fs/fat/ff.h                                        |  239 ++
 fs/fat/ffconf.h                                    |  145 +
 fs/fat/integer.h                                   |   28 +
 fs/fs.c                                            |   44 +-
 fs/ramfs.c                                         |    1 -
 include/asm-generic/sections.h                     |    3 +
 include/block.h                                    |   32 +
 include/common.h                                   |    1 +
 include/driver.h                                   |   10 +-
 include/environment.h                              |   15 +
 include/fs.h                                       |    7 +-
 include/kfifo.h                                    |    2 +-
 include/libbb.h                                    |    2 +
 include/linux/barebox-wrapper.h                    |    2 +
 include/linux/mtd/compat.h                         |   46 -
 include/linux/mtd/mtd.h                            |    4 -
 include/malloc.h                                   |    1 +
 include/nand.h                                     |    5 +
 include/net.h                                      |    8 +-
 include/stdio.h                                    |    5 -
 include/usb/usb.h                                  |    2 +
 lib/copy_file.c                                    |   15 +-
 lib/kfifo.c                                        |    2 +-
 lib/libbb.c                                        |   13 +
 net/dhcp.c                                         |    4 +-
 net/dns.c                                          |    4 +-
 net/eth.c                                          |    6 +-
 net/net.c                                          |   17 +-
 net/netconsole.c                                   |    4 +-
 net/nfs.c                                          |    4 +-
 net/ping.c                                         |    4 +-
 net/tftp.c                                         |    4 +-
 scripts/.gitignore                                 |    3 +-
 scripts/Makefile                                   |    1 +
 scripts/genenv                                     |    3 +
 scripts/kallsyms.c                                 |    6 +-
 scripts/omap_signGP.c                              |  313 +++
 168 files changed, 14421 insertions(+), 3815 deletions(-)
 delete mode 100644 arch/arm/boards/omap/Kconfig
 create mode 100644 arch/arm/boards/panda/Makefile
 create mode 100644 arch/arm/boards/panda/board.c
 create mode 100644 arch/arm/boards/panda/config.h
 create mode 100644 arch/arm/boards/panda/env/config
 create mode 100644 arch/arm/boards/panda/lowlevel.c
 create mode 100644 arch/arm/boards/panda/mux.c
 create mode 100644 arch/arm/boards/pcm049/Makefile
 create mode 100644 arch/arm/boards/pcm049/board.c
 create mode 100644 arch/arm/boards/pcm049/config.h
 create mode 100644 arch/arm/boards/pcm049/env/bin/nand_bootstrap
 create mode 100644 arch/arm/boards/pcm049/env/config
 create mode 100644 arch/arm/boards/pcm049/lowlevel.c
 create mode 100644 arch/arm/boards/pcm049/mux.c
 create mode 100644 arch/arm/configs/omap3530_beagle_xload_defconfig
 create mode 100644 arch/arm/configs/panda_defconfig
 create mode 100644 arch/arm/configs/panda_xload_defconfig
 create mode 100644 arch/arm/configs/pcm049_defconfig
 create mode 100644 arch/arm/configs/pcm049_xload_defconfig
 create mode 100644 arch/arm/lib/bootm.c
 create mode 100644 arch/arm/lib/bootu.c
 create mode 100644 arch/arm/lib/bootz.c
 rename arch/arm/{boards/omap => mach-omap}/devices-gpmc-nand.c (95%)
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-clock.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-mux.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-silicon.h
 create mode 100644 arch/arm/mach-omap/include/mach/xload.h
 create mode 100644 arch/arm/mach-omap/omap-uart.c
 create mode 100644 arch/arm/mach-omap/omap4_clock.c
 create mode 100644 arch/arm/mach-omap/omap4_generic.c
 create mode 100644 arch/arm/mach-omap/xload.c
 create mode 100644 arch/nios2/lib/bootm.c
 create mode 100644 commands/usb.c
 create mode 100644 common/block.c
 create mode 100644 common/dummy_malloc.c
 create mode 100644 common/memory.c
 create mode 100644 common/version.c
 create mode 100644 drivers/mci/omap_hsmmc.c
 create mode 100644 drivers/mtd/nand/nand-bb.c
 create mode 100644 drivers/mtd/nand/nand.h
 create mode 100644 drivers/mtd/nand/nand_hwecc.c
 create mode 100644 drivers/mtd/nand/nand_hwecc_syndrome.c
 create mode 100644 drivers/mtd/nand/nand_omap_bch_decoder.c
 create mode 100644 drivers/mtd/nand/nand_swecc.c
 delete mode 100644 drivers/mtd/nand/nand_util.c
 create mode 100644 drivers/mtd/nand/nand_write.c
 create mode 100644 drivers/net/altera_tse.c
 create mode 100644 drivers/net/altera_tse.h
 create mode 100644 drivers/net/usb/smsc95xx.c
 create mode 100644 drivers/net/usb/smsc95xx.h
 create mode 100644 drivers/serial/serial_altera.c
 create mode 100644 fs/devfs-core.c
 create mode 100644 fs/fat/Kconfig
 create mode 100644 fs/fat/Makefile
 create mode 100644 fs/fat/diskio.h
 create mode 100644 fs/fat/fat.c
 create mode 100644 fs/fat/ff.c
 create mode 100644 fs/fat/ff.h
 create mode 100644 fs/fat/ffconf.h
 create mode 100644 fs/fat/integer.h
 create mode 100644 include/block.h
 delete mode 100644 include/linux/mtd/compat.h
 create mode 100644 scripts/omap_signGP.c


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
