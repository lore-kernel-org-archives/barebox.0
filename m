Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqbm-0000Vf-8L
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 17:34:58 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 02:34:14 +0900
Message-Id: <20200429173419.681074-1-masahiroy@kernel.org>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/5] move arch/ppc to arch/powerpc
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>


This needs to go for-next/kbuild branch.



Masahiro Yamada (5):
  ppc: remove unneeded -D CONFIG_PPC
  ppc: pass -mno-spe and -mspe=no to cc-option
  ppc: add arch/ppc/Kbuild
  image: support 'powerpc' for mkimage architecture
  ppc: rename arch/ppc/ to arch/powerpc/

 Makefile                                      |  5 ++++
 arch/powerpc/Kbuild                           |  2 ++
 arch/{ppc => powerpc}/Kconfig                 |  4 +--
 arch/{ppc => powerpc}/Makefile                | 25 +++++++------------
 arch/{ppc => powerpc}/boards/.gitignore       |  0
 .../boards/freescale-p1010rdb/Makefile        |  0
 .../boards/freescale-p1010rdb/config.h        |  0
 .../boards/freescale-p1010rdb/ddr.c           |  0
 .../defaultenv-freescale-p1010rdb/bin/init    |  0
 .../defaultenv-freescale-p1010rdb/config      |  0
 .../boards/freescale-p1010rdb/law.c           |  0
 .../boards/freescale-p1010rdb/p1010rdb.c      |  0
 .../boards/freescale-p1010rdb/p1010rdb.h      |  0
 .../boards/freescale-p1010rdb/tlb.c           |  0
 .../boards/freescale-p1022ds/Makefile         |  0
 .../boards/freescale-p1022ds/config.h         |  0
 .../boards/freescale-p1022ds/ddr.c            |  0
 .../defaultenv-freescale-p1022ds/bin/init     |  0
 .../defaultenv-freescale-p1022ds/config       |  0
 .../boards/freescale-p1022ds/ics307_clk.c     |  0
 .../boards/freescale-p1022ds/law.c            |  0
 .../boards/freescale-p1022ds/p1022ds.c        |  0
 .../boards/freescale-p1022ds/p1022ds.h        |  0
 .../boards/freescale-p1022ds/tlb.c            |  0
 .../boards/freescale-p2020rdb/Makefile        |  0
 .../boards/freescale-p2020rdb/config.h        |  0
 .../defaultenv-freescale-p2020rdb/bin/init    |  0
 .../defaultenv-freescale-p2020rdb/config      |  0
 .../boards/freescale-p2020rdb/law.c           |  0
 .../boards/freescale-p2020rdb/p2020rdb.c      |  0
 .../boards/freescale-p2020rdb/tlb.c           |  0
 .../boards/owc-da923rc/Makefile               |  0
 .../boards/owc-da923rc/config.h               |  0
 .../boards/owc-da923rc/da923rc.c              |  0
 .../{ppc => powerpc}/boards/owc-da923rc/ddr.c |  0
 .../defaultenv-owc-da923rc/bin/boot           |  0
 .../defaultenv-owc-da923rc/bin/init           |  0
 .../owc-da923rc/defaultenv-owc-da923rc/config |  0
 .../{ppc => powerpc}/boards/owc-da923rc/law.c |  0
 .../boards/owc-da923rc/nand.c                 |  0
 .../boards/owc-da923rc/product_data.c         |  0
 .../boards/owc-da923rc/product_data.h         |  0
 .../{ppc => powerpc}/boards/owc-da923rc/tlb.c |  0
 arch/{ppc => powerpc}/boards/pcm030/Makefile  |  0
 .../boards/pcm030/barebox.lds.S               |  2 +-
 arch/{ppc => powerpc}/boards/pcm030/config.h  |  0
 arch/{ppc => powerpc}/boards/pcm030/eeprom.c  |  0
 .../boards/pcm030/env/init/mtdparts-nor       |  0
 .../pcm030/env/nv/linux.bootargs.console      |  0
 .../boards/pcm030/mt46v32m16-75.h             |  0
 arch/{ppc => powerpc}/boards/pcm030/pcm030.c  |  0
 .../configs/owc_da923rc_defconfig             |  0
 .../configs/p1010rdb_defconfig                |  0
 .../configs/p1022ds_defconfig                 |  0
 .../configs/p2020rdb_defconfig                |  0
 .../{ppc => powerpc}/configs/pcm030_defconfig |  2 +-
 arch/{ppc => powerpc}/cpu-85xx/Makefile       |  0
 arch/{ppc => powerpc}/cpu-85xx/fixed_ivor.S   |  0
 arch/{ppc => powerpc}/cpu-85xx/mmu.c          |  0
 arch/{ppc => powerpc}/cpu-85xx/resetvec.S     |  0
 arch/{ppc => powerpc}/cpu-85xx/start.S        |  0
 arch/{ppc => powerpc}/cpu-85xx/tlb.c          |  0
 arch/{ppc => powerpc}/cpu-85xx/traps.c        |  0
 arch/{ppc => powerpc}/ddr-8xxx/Makefile       |  0
 .../ddr-8xxx/common_timing_params.h           |  0
 arch/{ppc => powerpc}/ddr-8xxx/ctrl_regs.c    |  0
 arch/{ppc => powerpc}/ddr-8xxx/ddr.h          |  0
 .../ddr-8xxx/ddr2_dimm_params.c               |  0
 .../ddr-8xxx/ddr3_dimm_params.c               |  0
 arch/{ppc => powerpc}/ddr-8xxx/ddr_setctrl.c  |  0
 .../ddr-8xxx/lc_common_dimm_params.c          |  0
 arch/{ppc => powerpc}/ddr-8xxx/main.c         |  0
 arch/{ppc => powerpc}/ddr-8xxx/options.c      |  0
 arch/{ppc => powerpc}/ddr-8xxx/util.c         |  0
 arch/{ppc => powerpc}/include/asm/atomic.h    |  0
 arch/{ppc => powerpc}/include/asm/bitops.h    |  0
 .../include/asm/bitsperlong.h                 |  0
 arch/{ppc => powerpc}/include/asm/byteorder.h |  0
 arch/{ppc => powerpc}/include/asm/cache.h     |  0
 arch/{ppc => powerpc}/include/asm/common.h    |  0
 arch/{ppc => powerpc}/include/asm/config.h    |  0
 arch/{ppc => powerpc}/include/asm/dma.h       |  0
 arch/{ppc => powerpc}/include/asm/elf.h       |  0
 .../include/asm/fsl_ddr_dimm_params.h         |  0
 .../include/asm/fsl_ddr_sdram.h               |  0
 arch/{ppc => powerpc}/include/asm/fsl_ifc.h   |  0
 arch/{ppc => powerpc}/include/asm/fsl_law.h   |  0
 arch/{ppc => powerpc}/include/asm/fsl_lbc.h   |  0
 arch/{ppc => powerpc}/include/asm/io.h        |  0
 arch/{ppc => powerpc}/include/asm/mmu.h       |  0
 arch/{ppc => powerpc}/include/asm/module.h    |  0
 arch/{ppc => powerpc}/include/asm/pci_io.h    |  0
 .../include/asm/posix_types.h                 |  0
 .../{ppc => powerpc}/include/asm/ppc_asm.tmpl |  0
 arch/{ppc => powerpc}/include/asm/ppc_defs.h  |  0
 arch/{ppc => powerpc}/include/asm/processor.h |  0
 arch/{ppc => powerpc}/include/asm/ptrace.h    |  0
 arch/{ppc => powerpc}/include/asm/sections.h  |  0
 .../{ppc => powerpc}/include/asm/sigcontext.h |  0
 arch/{ppc => powerpc}/include/asm/signal.h    |  0
 .../{ppc => powerpc}/include/asm/status_led.h |  0
 arch/{ppc => powerpc}/include/asm/string.h    |  0
 arch/{ppc => powerpc}/include/asm/swab.h      |  0
 arch/{ppc => powerpc}/include/asm/types.h     |  0
 arch/{ppc => powerpc}/include/asm/unaligned.h |  0
 arch/{ppc => powerpc}/lib/Makefile            |  0
 arch/{ppc => powerpc}/lib/asm-offsets.c       |  0
 arch/{ppc => powerpc}/lib/bat_rw.c            |  0
 arch/{ppc => powerpc}/lib/board.c             |  0
 arch/{ppc => powerpc}/lib/crtsavres.S         |  0
 arch/{ppc => powerpc}/lib/extable.c           |  0
 arch/{ppc => powerpc}/lib/kgdb.c              |  0
 arch/{ppc => powerpc}/lib/misc.S              |  0
 arch/{ppc => powerpc}/lib/module.c            |  0
 arch/{ppc => powerpc}/lib/ppclinux.c          |  0
 arch/{ppc => powerpc}/lib/ppcstring.S         |  0
 arch/{ppc => powerpc}/lib/reloc.S             |  0
 arch/{ppc => powerpc}/lib/ticks.S             |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/Kconfig    |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/Makefile   |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/cpu.c      |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/cpu_init.c |  0
 .../mach-mpc5xxx/firmware_sc_task.impl.S      |  0
 .../firmware_sc_task_bestcomm.impl.S          |  0
 .../mach-mpc5xxx/include/mach/clock.h         |  0
 .../mach-mpc5xxx/include/mach/mpc5xxx.h       |  2 +-
 .../mach-mpc5xxx/include/mach/sdma.h          |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/io.S       |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/loadtask.c |  0
 .../mach-mpc5xxx/pci_mpc5200.c                |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/reginfo.c  |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/speed.c    |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/start.S    |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/time.c     |  0
 arch/{ppc => powerpc}/mach-mpc5xxx/traps.c    |  0
 arch/{ppc => powerpc}/mach-mpc85xx/.gitignore |  0
 arch/{ppc => powerpc}/mach-mpc85xx/Kconfig    |  0
 arch/{ppc => powerpc}/mach-mpc85xx/Makefile   |  0
 .../mach-mpc85xx/barebox.lds.S                |  4 +--
 arch/{ppc => powerpc}/mach-mpc85xx/cpu.c      |  0
 arch/{ppc => powerpc}/mach-mpc85xx/cpu_init.c |  0
 arch/{ppc => powerpc}/mach-mpc85xx/cpuid.c    |  0
 .../mach-mpc85xx/eth-devices.c                |  0
 arch/{ppc => powerpc}/mach-mpc85xx/fdt.c      |  0
 arch/{ppc => powerpc}/mach-mpc85xx/fsl_gpio.c |  0
 arch/{ppc => powerpc}/mach-mpc85xx/fsl_i2c.c  |  0
 arch/{ppc => powerpc}/mach-mpc85xx/fsl_law.c  |  0
 .../mach-mpc85xx/include/mach/clock.h         |  0
 .../include/mach/config_mpc85xx.h             |  0
 .../mach-mpc85xx/include/mach/early_udelay.h  |  0
 .../mach-mpc85xx/include/mach/ffs64.h         |  0
 .../mach-mpc85xx/include/mach/fsl_i2c.h       |  0
 .../mach-mpc85xx/include/mach/gianfar.h       |  0
 .../mach-mpc85xx/include/mach/gpio.h          |  0
 .../mach-mpc85xx/include/mach/immap_85xx.h    |  0
 .../mach-mpc85xx/include/mach/mmu.h           |  0
 .../mach-mpc85xx/include/mach/mpc85xx.h       |  0
 arch/{ppc => powerpc}/mach-mpc85xx/speed.c    |  0
 arch/{ppc => powerpc}/mach-mpc85xx/time.c     |  0
 common/image.c                                |  1 +
 160 files changed, 24 insertions(+), 23 deletions(-)
 create mode 100644 arch/powerpc/Kbuild
 rename arch/{ppc => powerpc}/Kconfig (78%)
 rename arch/{ppc => powerpc}/Makefile (73%)
 rename arch/{ppc => powerpc}/boards/.gitignore (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/Makefile (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/config.h (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/ddr.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/law.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/p1010rdb.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/p1010rdb.h (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1010rdb/tlb.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/Makefile (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/config.h (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/ddr.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/ics307_clk.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/law.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/p1022ds.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/p1022ds.h (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p1022ds/tlb.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/Makefile (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/config.h (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/law.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/p2020rdb.c (100%)
 rename arch/{ppc => powerpc}/boards/freescale-p2020rdb/tlb.c (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/Makefile (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/config.h (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/da923rc.c (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/ddr.c (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/defaultenv-owc-da923rc/config (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/law.c (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/nand.c (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/product_data.c (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/product_data.h (100%)
 rename arch/{ppc => powerpc}/boards/owc-da923rc/tlb.c (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/Makefile (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/barebox.lds.S (98%)
 rename arch/{ppc => powerpc}/boards/pcm030/config.h (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/eeprom.c (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/env/init/mtdparts-nor (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/env/nv/linux.bootargs.console (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/mt46v32m16-75.h (100%)
 rename arch/{ppc => powerpc}/boards/pcm030/pcm030.c (100%)
 rename arch/{ppc => powerpc}/configs/owc_da923rc_defconfig (100%)
 rename arch/{ppc => powerpc}/configs/p1010rdb_defconfig (100%)
 rename arch/{ppc => powerpc}/configs/p1022ds_defconfig (100%)
 rename arch/{ppc => powerpc}/configs/p2020rdb_defconfig (100%)
 rename arch/{ppc => powerpc}/configs/pcm030_defconfig (93%)
 rename arch/{ppc => powerpc}/cpu-85xx/Makefile (100%)
 rename arch/{ppc => powerpc}/cpu-85xx/fixed_ivor.S (100%)
 rename arch/{ppc => powerpc}/cpu-85xx/mmu.c (100%)
 rename arch/{ppc => powerpc}/cpu-85xx/resetvec.S (100%)
 rename arch/{ppc => powerpc}/cpu-85xx/start.S (100%)
 rename arch/{ppc => powerpc}/cpu-85xx/tlb.c (100%)
 rename arch/{ppc => powerpc}/cpu-85xx/traps.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/Makefile (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/common_timing_params.h (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/ctrl_regs.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/ddr.h (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/ddr2_dimm_params.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/ddr3_dimm_params.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/ddr_setctrl.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/lc_common_dimm_params.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/main.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/options.c (100%)
 rename arch/{ppc => powerpc}/ddr-8xxx/util.c (100%)
 rename arch/{ppc => powerpc}/include/asm/atomic.h (100%)
 rename arch/{ppc => powerpc}/include/asm/bitops.h (100%)
 rename arch/{ppc => powerpc}/include/asm/bitsperlong.h (100%)
 rename arch/{ppc => powerpc}/include/asm/byteorder.h (100%)
 rename arch/{ppc => powerpc}/include/asm/cache.h (100%)
 rename arch/{ppc => powerpc}/include/asm/common.h (100%)
 rename arch/{ppc => powerpc}/include/asm/config.h (100%)
 rename arch/{ppc => powerpc}/include/asm/dma.h (100%)
 rename arch/{ppc => powerpc}/include/asm/elf.h (100%)
 rename arch/{ppc => powerpc}/include/asm/fsl_ddr_dimm_params.h (100%)
 rename arch/{ppc => powerpc}/include/asm/fsl_ddr_sdram.h (100%)
 rename arch/{ppc => powerpc}/include/asm/fsl_ifc.h (100%)
 rename arch/{ppc => powerpc}/include/asm/fsl_law.h (100%)
 rename arch/{ppc => powerpc}/include/asm/fsl_lbc.h (100%)
 rename arch/{ppc => powerpc}/include/asm/io.h (100%)
 rename arch/{ppc => powerpc}/include/asm/mmu.h (100%)
 rename arch/{ppc => powerpc}/include/asm/module.h (100%)
 rename arch/{ppc => powerpc}/include/asm/pci_io.h (100%)
 rename arch/{ppc => powerpc}/include/asm/posix_types.h (100%)
 rename arch/{ppc => powerpc}/include/asm/ppc_asm.tmpl (100%)
 rename arch/{ppc => powerpc}/include/asm/ppc_defs.h (100%)
 rename arch/{ppc => powerpc}/include/asm/processor.h (100%)
 rename arch/{ppc => powerpc}/include/asm/ptrace.h (100%)
 rename arch/{ppc => powerpc}/include/asm/sections.h (100%)
 rename arch/{ppc => powerpc}/include/asm/sigcontext.h (100%)
 rename arch/{ppc => powerpc}/include/asm/signal.h (100%)
 rename arch/{ppc => powerpc}/include/asm/status_led.h (100%)
 rename arch/{ppc => powerpc}/include/asm/string.h (100%)
 rename arch/{ppc => powerpc}/include/asm/swab.h (100%)
 rename arch/{ppc => powerpc}/include/asm/types.h (100%)
 rename arch/{ppc => powerpc}/include/asm/unaligned.h (100%)
 rename arch/{ppc => powerpc}/lib/Makefile (100%)
 rename arch/{ppc => powerpc}/lib/asm-offsets.c (100%)
 rename arch/{ppc => powerpc}/lib/bat_rw.c (100%)
 rename arch/{ppc => powerpc}/lib/board.c (100%)
 rename arch/{ppc => powerpc}/lib/crtsavres.S (100%)
 rename arch/{ppc => powerpc}/lib/extable.c (100%)
 rename arch/{ppc => powerpc}/lib/kgdb.c (100%)
 rename arch/{ppc => powerpc}/lib/misc.S (100%)
 rename arch/{ppc => powerpc}/lib/module.c (100%)
 rename arch/{ppc => powerpc}/lib/ppclinux.c (100%)
 rename arch/{ppc => powerpc}/lib/ppcstring.S (100%)
 rename arch/{ppc => powerpc}/lib/reloc.S (100%)
 rename arch/{ppc => powerpc}/lib/ticks.S (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/Kconfig (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/Makefile (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/cpu.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/cpu_init.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/firmware_sc_task.impl.S (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/include/mach/clock.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/include/mach/mpc5xxx.h (99%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/include/mach/sdma.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/io.S (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/loadtask.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/pci_mpc5200.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/reginfo.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/speed.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/start.S (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/time.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc5xxx/traps.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/.gitignore (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/Kconfig (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/Makefile (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/barebox.lds.S (97%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/cpu.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/cpu_init.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/cpuid.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/eth-devices.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/fdt.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/fsl_gpio.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/fsl_i2c.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/fsl_law.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/clock.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/config_mpc85xx.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/early_udelay.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/ffs64.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/fsl_i2c.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/gianfar.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/gpio.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/immap_85xx.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/mmu.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/include/mach/mpc85xx.h (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/speed.c (100%)
 rename arch/{ppc => powerpc}/mach-mpc85xx/time.c (100%)

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
