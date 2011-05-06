Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QIHYR-0006DQ-Dy
	for barebox@lists.infradead.org; Fri, 06 May 2011 09:42:37 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QIHYP-0002Qh-9W
	for barebox@lists.infradead.org; Fri, 06 May 2011 11:42:33 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.75)
	(envelope-from <sha@pengutronix.de>) id 1QIHYP-0005ba-18
	for barebox@lists.infradead.org; Fri, 06 May 2011 11:42:33 +0200
Date: Fri, 6 May 2011 11:42:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110506094232.GB14770@pengutronix.de>
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
Subject: barebox v2011.05.0
To: barebox@lists.infradead.org


Hi all,

We have v2011.05.0 out now. Most notable is that we have a new
architecture in barebox: Nios2. Thanks Franck.

Sascha

Baruch Siach (2):
      mtd/nand: increase page and oob size limits
      mtd/nand_imx: add support for page size of 4k

Franck JULLIEN (2):
      Add Nios2 arch support to barebox
      Add a generic board template for the Nios2 arch

Jean-Christophe PLAGNIOL-VILLARD (1):
      defaultenv: add kernel_loc nfs and tftp support

Juergen Beisert (9):
      Change 'linux16' command to use getopt()
      LINUX16: Add selection of the VESA video mode
      LINUX16: Fix warning
      S3C24xx/NFC: Re-enable the controller after NAND boot test
      S3C24xx/NFC: Remove dead code
      S3C24xx/NFC: Remove double function setup
      S3C24xx/NFC: Consider correct NAND page size for boot.
      S3C24xx/NFC: Setup ECC handling in accordance to the kernel
      S3C24xx/NFC: Add OOB/ECC handling documentation for different NANDs

Marc Kleine-Budde (1):
      fix printf warnings

Sascha Hauer (27):
      mci stmp378x: remove ifdefed code
      ARM Chumby: use a fixed framebuffer address
      mci i.MX23/28: rename driver to mxs.c
      mci mxs: put only once used function inline
      mci mxs: give functions a uniq mxs_mci_ namespace
      mci mxs: rename mci_pdata to host
      mci mxs: make the mci_host a member of mxs_mci_host
      mci mxs: no need to call mxs_mci_setup_clock_speed in init
      ARM tx28stk5: limit mmc max frequency to 25MHz
      Merge branch 'master' into next
      ARM scb9328: Add gpio led support
      ramfs: increase chunk size to 4 kbyte
      ARM: create a second level page table entry for the exception vectors
      ARM: Add stack unwinding support
      kallsyms/printk: enable symbol printing support (%pS)
      Merge branch 'master' into next
      Merge branch 'next'
      arm: update mach-types
      driver: Do not forget to remove device from active list
      memcpy command: do not set read/write size
      mmc: check correctness of the voltage mask in ocr
      fs: errno should be set correctly before the end of functions
      usbnet: do not initialize ethernet device from usb device
      ARM: Add missing parameter name
      sandbox: Fix another uninitialized dev->id case
      sandbox: make asm/swab.h nonempty
      Release v2011.05.0

 Makefile                                          |    4 +-
 arch/arm/Kconfig                                  |   10 +
 arch/arm/Makefile                                 |    4 +
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/at91sam9261ek/env/config          |    4 +-
 arch/arm/boards/at91sam9263ek/env/config          |    4 +-
 arch/arm/boards/at91sam9m10g45ek/env/config       |    4 +-
 arch/arm/boards/chumby_falconwing/falconwing.c    |   14 +-
 arch/arm/boards/eukrea_cpuimx25/env/config        |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    5 -
 arch/arm/boards/eukrea_cpuimx35/env/config        |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    5 -
 arch/arm/boards/eukrea_cpuimx51/env/config        |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/env/config |    4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |    6 -
 arch/arm/boards/freescale-mx51-pdk/env/config     |    4 +-
 arch/arm/boards/guf-cupid/board.c                 |    6 -
 arch/arm/boards/guf-cupid/env/config              |    4 +-
 arch/arm/boards/guf-neso/board.c                  |    5 -
 arch/arm/boards/guf-neso/env/config               |    4 +-
 arch/arm/boards/karo-tx25/env/config              |    4 +-
 arch/arm/boards/karo-tx28/env/config              |    4 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c             |    7 +-
 arch/arm/boards/karo-tx28/tx28.c                  |    5 -
 arch/arm/boards/mini2440/env/config               |    4 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/boards/nhk8815/env/config                |    4 +-
 arch/arm/boards/pcm037/env/config                 |    4 +-
 arch/arm/boards/pcm037/pcm037.c                   |    5 -
 arch/arm/boards/pcm038/env/config                 |    4 +-
 arch/arm/boards/pcm038/pcm038.c                   |    5 -
 arch/arm/boards/pcm043/env/config                 |    4 +-
 arch/arm/boards/pcm043/pcm043.c                   |    6 -
 arch/arm/boards/phycard-i.MX27/env/config         |    4 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |    5 -
 arch/arm/boards/pm9261/env/config                 |    4 +-
 arch/arm/boards/pm9g45/env/config                 |    4 +-
 arch/arm/boards/scb9328/scb9328.c                 |   24 +-
 arch/arm/boards/versatile/env/config              |    4 +-
 arch/arm/cpu/interrupts.c                         |    4 +
 arch/arm/cpu/mmu.c                                |   48 ++
 arch/arm/include/asm/armlinux.h                   |    2 +-
 arch/arm/include/asm/stacktrace.h                 |   16 +
 arch/arm/include/asm/unwind.h                     |   54 +++
 arch/arm/lib/Makefile                             |    2 +-
 arch/arm/lib/barebox.lds.S                        |   16 +
 arch/arm/lib/unwind.c                             |  344 ++++++++++++++
 arch/arm/mach-mxs/include/mach/mci.h              |    2 +-
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h |    2 +-
 arch/arm/tools/mach-types                         |  248 +++++++++--
 arch/nios2/Kconfig                                |   39 ++
 arch/nios2/Makefile                               |   25 +
 arch/nios2/boards/generic/Makefile                |    1 +
 arch/nios2/boards/generic/config.h                |   63 +++
 arch/nios2/boards/generic/env/config              |   16 +
 arch/nios2/boards/generic/generic.c               |   74 +++
 arch/nios2/boards/generic/nios_sopc.h             |  406 ++++++++++++++++
 arch/nios2/configs/generic_defconfig              |   23 +
 arch/nios2/cpu/Makefile                           |    6 +
 arch/nios2/cpu/barebox.lds.S                      |  124 +++++
 arch/nios2/cpu/cpu.c                              |   38 ++
 arch/nios2/cpu/exceptions.S                       |  160 +++++++
 arch/nios2/cpu/interrupts.c                       |  140 ++++++
 arch/nios2/cpu/start.S                            |  165 +++++++
 arch/nios2/cpu/traps.c                            |   43 ++
 arch/nios2/include/asm/barebox.h                  |    4 +
 arch/nios2/include/asm/bitops.h                   |    4 +
 arch/nios2/include/asm/bitsperlong.h              |    1 +
 arch/nios2/include/asm/byteorder.h                |    1 +
 arch/nios2/include/asm/cache.h                    |   21 +
 arch/nios2/include/asm/common.h                   |    4 +
 arch/nios2/include/asm/dma-mapping.h              |   25 +
 arch/nios2/include/asm/early_printf.h             |   10 +
 arch/nios2/include/asm/elf.h                      |  165 +++++++
 arch/nios2/include/asm/int-ll64.h                 |   78 +++
 arch/nios2/include/asm/io.h                       |   52 ++
 arch/nios2/include/asm/nios2-io.h                 |  182 +++++++
 arch/nios2/include/asm/nios2.h                    |   63 +++
 arch/nios2/include/asm/opcodes.h                  |  131 +++++
 arch/nios2/include/asm/posix_types.h              |   77 +++
 arch/nios2/include/asm/ptrace.h                   |   33 ++
 arch/nios2/include/asm/sections.h                 |    1 +
 arch/nios2/include/asm/string.h                   |   47 ++
 arch/nios2/include/asm/swab.h                     |    4 +
 arch/nios2/include/asm/system.h                   |   64 +++
 arch/nios2/include/asm/types.h                    |    7 +
 arch/nios2/lib/Makefile                           |    6 +
 arch/nios2/lib/board.c                            |   47 ++
 arch/nios2/lib/cache.c                            |   77 +++
 arch/nios2/lib/clock.c                            |   62 +++
 arch/nios2/lib/early_printf.c                     |   56 +++
 arch/nios2/lib/libgcc.c                           |  527 +++++++++++++++++++++
 arch/nios2/lib/longlong.h                         |  258 ++++++++++
 arch/sandbox/board/hostfile.c                     |    1 +
 arch/sandbox/include/asm/swab.h                   |    6 +
 commands/linux16.c                                |   54 ++-
 commands/mem.c                                    |    2 +-
 common/Kconfig                                    |    3 -
 common/kallsyms.c                                 |  148 ++++++-
 defaultenv/bin/boot                               |   13 +-
 drivers/mci/Kconfig                               |    2 +-
 drivers/mci/Makefile                              |    2 +-
 drivers/mci/mci-core.c                            |   12 +-
 drivers/mci/{stm378x.c => mxs.c}                  |  285 +++++------
 drivers/mtd/nand/nand_imx.c                       |    2 +-
 drivers/mtd/nand/nand_s3c2410.c                   |  131 ++++--
 drivers/net/usb/usbnet.c                          |    1 -
 fs/fs.c                                           |    5 +-
 fs/ramfs.c                                        |    2 +-
 include/kallsyms.h                                |    5 +
 include/linux/mtd/nand.h                          |    4 +-
 include/stdio.h                                   |    5 +
 lib/driver.c                                      |    1 +
 lib/vsprintf.c                                    |    1 +
 115 files changed, 4588 insertions(+), 365 deletions(-)
 create mode 100644 arch/arm/include/asm/stacktrace.h
 create mode 100644 arch/arm/include/asm/unwind.h
 create mode 100644 arch/arm/lib/unwind.c
 create mode 100644 arch/nios2/Kconfig
 create mode 100644 arch/nios2/Makefile
 create mode 100644 arch/nios2/boards/generic/Makefile
 create mode 100644 arch/nios2/boards/generic/config.h
 create mode 100644 arch/nios2/boards/generic/env/config
 create mode 100644 arch/nios2/boards/generic/generic.c
 create mode 100644 arch/nios2/boards/generic/nios_sopc.h
 create mode 100644 arch/nios2/configs/generic_defconfig
 create mode 100644 arch/nios2/cpu/Makefile
 create mode 100644 arch/nios2/cpu/barebox.lds.S
 create mode 100644 arch/nios2/cpu/cpu.c
 create mode 100644 arch/nios2/cpu/exceptions.S
 create mode 100644 arch/nios2/cpu/interrupts.c
 create mode 100644 arch/nios2/cpu/start.S
 create mode 100644 arch/nios2/cpu/traps.c
 create mode 100644 arch/nios2/include/asm/barebox.h
 create mode 100644 arch/nios2/include/asm/bitops.h
 create mode 100644 arch/nios2/include/asm/bitsperlong.h
 create mode 100644 arch/nios2/include/asm/byteorder.h
 create mode 100644 arch/nios2/include/asm/cache.h
 create mode 100644 arch/nios2/include/asm/common.h
 create mode 100644 arch/nios2/include/asm/dma-mapping.h
 create mode 100644 arch/nios2/include/asm/early_printf.h
 create mode 100644 arch/nios2/include/asm/elf.h
 create mode 100644 arch/nios2/include/asm/int-ll64.h
 create mode 100644 arch/nios2/include/asm/io.h
 create mode 100644 arch/nios2/include/asm/nios2-io.h
 create mode 100644 arch/nios2/include/asm/nios2.h
 create mode 100644 arch/nios2/include/asm/opcodes.h
 create mode 100644 arch/nios2/include/asm/posix_types.h
 create mode 100644 arch/nios2/include/asm/ptrace.h
 create mode 100644 arch/nios2/include/asm/sections.h
 create mode 100644 arch/nios2/include/asm/string.h
 create mode 100644 arch/nios2/include/asm/swab.h
 create mode 100644 arch/nios2/include/asm/system.h
 create mode 100644 arch/nios2/include/asm/types.h
 create mode 100644 arch/nios2/lib/Makefile
 create mode 100644 arch/nios2/lib/board.c
 create mode 100644 arch/nios2/lib/cache.c
 create mode 100644 arch/nios2/lib/clock.c
 create mode 100644 arch/nios2/lib/early_printf.c
 create mode 100644 arch/nios2/lib/libgcc.c
 create mode 100644 arch/nios2/lib/longlong.h
 rename drivers/mci/{stm378x.c => mxs.c} (69%)
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
