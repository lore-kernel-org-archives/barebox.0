Return-path: <barebox-bounces@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by casper.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1tMP-0006bN-9f
	for barebox@lists.infradead.org; Sat, 02 Oct 2010 04:06:11 +0000
Date: Sat, 2 Oct 2010 05:57:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101002035743.GH25320@game.jcrosoft.org>
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
Errors-To: barebox-bounces@lists.infradead.org
Subject: m68k pull request
To: barebox@lists.infradead.org

Hi,

please pull The following changes since commit f6c9a980791489e27b564750478cde498b2a1a42:

  Update flash headers for boards supporting internal boot. (2010-10-01 10:01:14 +0200)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git m68k

Jean-Christophe PLAGNIOL-VILLARD (1):
      remove m68k arch support

 Documentation/boards.dox                           |    5 -
 TODO                                               |    1 -
 arch/architecture.dox                              |    1 -
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
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |  139 --
 .../boards/phycore_mcf54xx/phyCore_MCF54xx.dox     |   14 -
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |   36 -
 arch/m68k/configs/phycore_mcf54xx_defconfig        |   36 -
 arch/m68k/cpu/Makefile                             |   41 -
 arch/m68k/cpu/cpu.c                                |  185 --
 arch/m68k/cpu/cw_console_io.c                      |  116 -
 arch/m68k/cpu/early_init_support.c                 |   41 -
 arch/m68k/cpu/interrupts.c                         |  246 --
 arch/m68k/cpu/start-mcfv4e.S                       |  677 ------
 arch/m68k/include/asm/atomic.h                     |   25 -
 arch/m68k/include/asm/barebox-m68k.h               |   40 -
 arch/m68k/include/asm/barebox.h                    |   33 -
 arch/m68k/include/asm/bitops.h                     |  141 --
 arch/m68k/include/asm/bootinfo.h                   |  381 ---
 arch/m68k/include/asm/byteorder.h                  |   43 -
 arch/m68k/include/asm/coldfire/mcf548x.h           |   63 -
 .../include/asm/coldfire/mcf548x/mcf548x_can.h     |  159 --
 .../include/asm/coldfire/mcf548x/mcf548x_ctm.h     |   88 -
 .../include/asm/coldfire/mcf548x/mcf548x_dma.h     |  121 -
 .../asm/coldfire/mcf548x/mcf548x_dma_ereq.h        |   62 -
 .../include/asm/coldfire/mcf548x/mcf548x_dspi.h    |  155 --
 .../include/asm/coldfire/mcf548x/mcf548x_eport.h   |   98 -
 .../include/asm/coldfire/mcf548x/mcf548x_fbcs.h    |   97 -
 .../include/asm/coldfire/mcf548x/mcf548x_fec.h     |  623 -----
 .../include/asm/coldfire/mcf548x/mcf548x_gpio.h    |  708 ------
 .../include/asm/coldfire/mcf548x/mcf548x_gpt.h     |  100 -
 .../include/asm/coldfire/mcf548x/mcf548x_i2c.h     |   69 -
 .../include/asm/coldfire/mcf548x/mcf548x_intc.h    |  329 ---
 .../include/asm/coldfire/mcf548x/mcf548x_pci.h     |  349 ---
 .../include/asm/coldfire/mcf548x/mcf548x_pciarb.h  |   50 -
 .../include/asm/coldfire/mcf548x/mcf548x_psc.h     |  486 ----
 .../include/asm/coldfire/mcf548x/mcf548x_sdramc.h  |  109 -
 .../include/asm/coldfire/mcf548x/mcf548x_sec.h     |  389 ----
 .../include/asm/coldfire/mcf548x/mcf548x_siu.h     |   69 -
 .../include/asm/coldfire/mcf548x/mcf548x_slt.h     |   71 -
 .../include/asm/coldfire/mcf548x/mcf548x_sram.h    |   66 -
 .../include/asm/coldfire/mcf548x/mcf548x_uart.h    |  233 --
 .../include/asm/coldfire/mcf548x/mcf548x_usb.h     |  509 ----
 .../include/asm/coldfire/mcf548x/mcf548x_xlbarb.h  |   45 -
 arch/m68k/include/asm/coldfire/mcf5xxx.h           |  258 --
 arch/m68k/include/asm/common.h                     |   25 -
 arch/m68k/include/asm/elf.h                        |  146 --
 arch/m68k/include/asm/hardware.h                   |   30 -
 arch/m68k/include/asm/io.h                         |  304 ---
 arch/m68k/include/asm/mach-types.h                 |   48 -
 arch/m68k/include/asm/memory.h                     |   28 -
 arch/m68k/include/asm/module.h                     |   36 -
 arch/m68k/include/asm/posix_types.h                |   86 -
 arch/m68k/include/asm/processor.h                  |   46 -
 arch/m68k/include/asm/ptrace.h                     |   55 -
 arch/m68k/include/asm/setup.h                      |  412 ----
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
 arch/m68k/mach-mcfv4e/fec.c                        | 1440 ------------
 arch/m68k/mach-mcfv4e/fecbd.c                      |  232 --
 arch/m68k/mach-mcfv4e/include/mach/clocks.h        |   30 -
 arch/m68k/mach-mcfv4e/include/mach/debug_ll.h      |   33 -
 arch/m68k/mach-mcfv4e/include/mach/hardware.h      |   33 -
 arch/m68k/mach-mcfv4e/include/mach/mcf54xx-regs.h  |   30 -
 arch/m68k/mach-mcfv4e/include/proc/dma_utils.h     |   80 -
 arch/m68k/mach-mcfv4e/include/proc/fec.h           |  130 --
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
 arch/m68k/mach-mcfv4e/mcdapi/MCD_dmaApi.c          |  907 --------
 arch/m68k/mach-mcfv4e/mcdapi/MCD_library.dox       |   10 -
 arch/m68k/mach-mcfv4e/mcdapi/MCD_tasks.c           | 2449 --------------------
 arch/m68k/mach-mcfv4e/mcdapi/MCD_tasksInit.c       |  225 --
 arch/m68k/mach-mcfv4e/mcdapi/Makefile              |   26 -
 arch/m68k/mach-mcfv4e/mcdapi/ReleaseNotes.txt      |   27 -
 arch/m68k/mach-mcfv4e/mcf_clocksource.c            |  138 --
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c              |   45 -
 arch/m68k/mach-mcfv4e/multichannel_dma.c           |   51 -
 arch/m68k/mach-mcfv4e/net/Makefile                 |   26 -
 arch/m68k/mach-mcfv4e/net/nbuf.c                   |  239 --
 arch/m68k/mach-mcfv4e/net/net.c                    |  156 --
 arch/m68k/mach-mcfv4e/net/queue.c                  |  128 -
 commands/bootm.c                                   |    1 -
 126 files changed, 0 insertions(+), 18838 deletions(-)
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
 delete mode 100644 arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
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

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
