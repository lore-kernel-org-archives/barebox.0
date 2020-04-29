Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqbm-0000Vm-8B
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 17:35:00 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 02:34:19 +0900
Message-Id: <20200429173419.681074-6-masahiroy@kernel.org>
In-Reply-To: <20200429173419.681074-1-masahiroy@kernel.org>
References: <20200429173419.681074-1-masahiroy@kernel.org>
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
Subject: [PATCH 5/5] ppc: rename arch/ppc/ to arch/powerpc/
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

In old days, Linux supported PowerPC with two arch directories,
arch/ppc/ and arch/ppc64/.

Linux commit 564ee7a5668e ("[PATCH] powerpc: Move arch/ppc*/kernel/vecemu.c
to arch/powerpc") started the migration to arch/powerpc/, and
commit 917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc")
finished it.

This commit aligns the directory name with the current Linux.

I did 'git mv arch/ppc/ arch/powerpc/', and fixed up some hard-coded
arch/ppc paths.

Barebox has stuck to arch/ppc/ for a long time. To keep the backward
compatibility, I added the following to the top Makefile.

  # Support ARCH=ppc for backward compatibility
  ifeq ($(ARCH),ppc)
         SRCARCH := powerpc
  endif

Both ARCH=ppc and ARCH=powerpc work in the same way.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                                                  | 5 +++++
 arch/{ppc => powerpc}/Kbuild                              | 0
 arch/{ppc => powerpc}/Kconfig                             | 4 ++--
 arch/{ppc => powerpc}/Makefile                            | 8 ++++----
 arch/{ppc => powerpc}/boards/.gitignore                   | 0
 arch/{ppc => powerpc}/boards/freescale-p1010rdb/Makefile  | 0
 arch/{ppc => powerpc}/boards/freescale-p1010rdb/config.h  | 0
 arch/{ppc => powerpc}/boards/freescale-p1010rdb/ddr.c     | 0
 .../defaultenv-freescale-p1010rdb/bin/init                | 0
 .../defaultenv-freescale-p1010rdb/config                  | 0
 arch/{ppc => powerpc}/boards/freescale-p1010rdb/law.c     | 0
 .../{ppc => powerpc}/boards/freescale-p1010rdb/p1010rdb.c | 0
 .../{ppc => powerpc}/boards/freescale-p1010rdb/p1010rdb.h | 0
 arch/{ppc => powerpc}/boards/freescale-p1010rdb/tlb.c     | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/Makefile   | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/config.h   | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/ddr.c      | 0
 .../defaultenv-freescale-p1022ds/bin/init                 | 0
 .../freescale-p1022ds/defaultenv-freescale-p1022ds/config | 0
 .../boards/freescale-p1022ds/ics307_clk.c                 | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/law.c      | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/p1022ds.c  | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/p1022ds.h  | 0
 arch/{ppc => powerpc}/boards/freescale-p1022ds/tlb.c      | 0
 arch/{ppc => powerpc}/boards/freescale-p2020rdb/Makefile  | 0
 arch/{ppc => powerpc}/boards/freescale-p2020rdb/config.h  | 0
 .../defaultenv-freescale-p2020rdb/bin/init                | 0
 .../defaultenv-freescale-p2020rdb/config                  | 0
 arch/{ppc => powerpc}/boards/freescale-p2020rdb/law.c     | 0
 .../{ppc => powerpc}/boards/freescale-p2020rdb/p2020rdb.c | 0
 arch/{ppc => powerpc}/boards/freescale-p2020rdb/tlb.c     | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/Makefile         | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/config.h         | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/da923rc.c        | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/ddr.c            | 0
 .../boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot    | 0
 .../boards/owc-da923rc/defaultenv-owc-da923rc/bin/init    | 0
 .../boards/owc-da923rc/defaultenv-owc-da923rc/config      | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/law.c            | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/nand.c           | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/product_data.c   | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/product_data.h   | 0
 arch/{ppc => powerpc}/boards/owc-da923rc/tlb.c            | 0
 arch/{ppc => powerpc}/boards/pcm030/Makefile              | 0
 arch/{ppc => powerpc}/boards/pcm030/barebox.lds.S         | 2 +-
 arch/{ppc => powerpc}/boards/pcm030/config.h              | 0
 arch/{ppc => powerpc}/boards/pcm030/eeprom.c              | 0
 arch/{ppc => powerpc}/boards/pcm030/env/init/mtdparts-nor | 0
 .../boards/pcm030/env/nv/linux.bootargs.console           | 0
 arch/{ppc => powerpc}/boards/pcm030/mt46v32m16-75.h       | 0
 arch/{ppc => powerpc}/boards/pcm030/pcm030.c              | 0
 arch/{ppc => powerpc}/configs/owc_da923rc_defconfig       | 0
 arch/{ppc => powerpc}/configs/p1010rdb_defconfig          | 0
 arch/{ppc => powerpc}/configs/p1022ds_defconfig           | 0
 arch/{ppc => powerpc}/configs/p2020rdb_defconfig          | 0
 arch/{ppc => powerpc}/configs/pcm030_defconfig            | 2 +-
 arch/{ppc => powerpc}/cpu-85xx/Makefile                   | 0
 arch/{ppc => powerpc}/cpu-85xx/fixed_ivor.S               | 0
 arch/{ppc => powerpc}/cpu-85xx/mmu.c                      | 0
 arch/{ppc => powerpc}/cpu-85xx/resetvec.S                 | 0
 arch/{ppc => powerpc}/cpu-85xx/start.S                    | 0
 arch/{ppc => powerpc}/cpu-85xx/tlb.c                      | 0
 arch/{ppc => powerpc}/cpu-85xx/traps.c                    | 0
 arch/{ppc => powerpc}/ddr-8xxx/Makefile                   | 0
 arch/{ppc => powerpc}/ddr-8xxx/common_timing_params.h     | 0
 arch/{ppc => powerpc}/ddr-8xxx/ctrl_regs.c                | 0
 arch/{ppc => powerpc}/ddr-8xxx/ddr.h                      | 0
 arch/{ppc => powerpc}/ddr-8xxx/ddr2_dimm_params.c         | 0
 arch/{ppc => powerpc}/ddr-8xxx/ddr3_dimm_params.c         | 0
 arch/{ppc => powerpc}/ddr-8xxx/ddr_setctrl.c              | 0
 arch/{ppc => powerpc}/ddr-8xxx/lc_common_dimm_params.c    | 0
 arch/{ppc => powerpc}/ddr-8xxx/main.c                     | 0
 arch/{ppc => powerpc}/ddr-8xxx/options.c                  | 0
 arch/{ppc => powerpc}/ddr-8xxx/util.c                     | 0
 arch/{ppc => powerpc}/include/asm/atomic.h                | 0
 arch/{ppc => powerpc}/include/asm/bitops.h                | 0
 arch/{ppc => powerpc}/include/asm/bitsperlong.h           | 0
 arch/{ppc => powerpc}/include/asm/byteorder.h             | 0
 arch/{ppc => powerpc}/include/asm/cache.h                 | 0
 arch/{ppc => powerpc}/include/asm/common.h                | 0
 arch/{ppc => powerpc}/include/asm/config.h                | 0
 arch/{ppc => powerpc}/include/asm/dma.h                   | 0
 arch/{ppc => powerpc}/include/asm/elf.h                   | 0
 arch/{ppc => powerpc}/include/asm/fsl_ddr_dimm_params.h   | 0
 arch/{ppc => powerpc}/include/asm/fsl_ddr_sdram.h         | 0
 arch/{ppc => powerpc}/include/asm/fsl_ifc.h               | 0
 arch/{ppc => powerpc}/include/asm/fsl_law.h               | 0
 arch/{ppc => powerpc}/include/asm/fsl_lbc.h               | 0
 arch/{ppc => powerpc}/include/asm/io.h                    | 0
 arch/{ppc => powerpc}/include/asm/mmu.h                   | 0
 arch/{ppc => powerpc}/include/asm/module.h                | 0
 arch/{ppc => powerpc}/include/asm/pci_io.h                | 0
 arch/{ppc => powerpc}/include/asm/posix_types.h           | 0
 arch/{ppc => powerpc}/include/asm/ppc_asm.tmpl            | 0
 arch/{ppc => powerpc}/include/asm/ppc_defs.h              | 0
 arch/{ppc => powerpc}/include/asm/processor.h             | 0
 arch/{ppc => powerpc}/include/asm/ptrace.h                | 0
 arch/{ppc => powerpc}/include/asm/sections.h              | 0
 arch/{ppc => powerpc}/include/asm/sigcontext.h            | 0
 arch/{ppc => powerpc}/include/asm/signal.h                | 0
 arch/{ppc => powerpc}/include/asm/status_led.h            | 0
 arch/{ppc => powerpc}/include/asm/string.h                | 0
 arch/{ppc => powerpc}/include/asm/swab.h                  | 0
 arch/{ppc => powerpc}/include/asm/types.h                 | 0
 arch/{ppc => powerpc}/include/asm/unaligned.h             | 0
 arch/{ppc => powerpc}/lib/Makefile                        | 0
 arch/{ppc => powerpc}/lib/asm-offsets.c                   | 0
 arch/{ppc => powerpc}/lib/bat_rw.c                        | 0
 arch/{ppc => powerpc}/lib/board.c                         | 0
 arch/{ppc => powerpc}/lib/crtsavres.S                     | 0
 arch/{ppc => powerpc}/lib/extable.c                       | 0
 arch/{ppc => powerpc}/lib/kgdb.c                          | 0
 arch/{ppc => powerpc}/lib/misc.S                          | 0
 arch/{ppc => powerpc}/lib/module.c                        | 0
 arch/{ppc => powerpc}/lib/ppclinux.c                      | 0
 arch/{ppc => powerpc}/lib/ppcstring.S                     | 0
 arch/{ppc => powerpc}/lib/reloc.S                         | 0
 arch/{ppc => powerpc}/lib/ticks.S                         | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/Kconfig                | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/Makefile               | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/cpu.c                  | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/cpu_init.c             | 0
 .../{ppc => powerpc}/mach-mpc5xxx/firmware_sc_task.impl.S | 0
 .../mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S         | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/include/mach/clock.h   | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/include/mach/mpc5xxx.h | 2 +-
 arch/{ppc => powerpc}/mach-mpc5xxx/include/mach/sdma.h    | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/io.S                   | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/loadtask.c             | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/pci_mpc5200.c          | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/reginfo.c              | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/speed.c                | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/start.S                | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/time.c                 | 0
 arch/{ppc => powerpc}/mach-mpc5xxx/traps.c                | 0
 arch/{ppc => powerpc}/mach-mpc85xx/.gitignore             | 0
 arch/{ppc => powerpc}/mach-mpc85xx/Kconfig                | 0
 arch/{ppc => powerpc}/mach-mpc85xx/Makefile               | 0
 arch/{ppc => powerpc}/mach-mpc85xx/barebox.lds.S          | 4 ++--
 arch/{ppc => powerpc}/mach-mpc85xx/cpu.c                  | 0
 arch/{ppc => powerpc}/mach-mpc85xx/cpu_init.c             | 0
 arch/{ppc => powerpc}/mach-mpc85xx/cpuid.c                | 0
 arch/{ppc => powerpc}/mach-mpc85xx/eth-devices.c          | 0
 arch/{ppc => powerpc}/mach-mpc85xx/fdt.c                  | 0
 arch/{ppc => powerpc}/mach-mpc85xx/fsl_gpio.c             | 0
 arch/{ppc => powerpc}/mach-mpc85xx/fsl_i2c.c              | 0
 arch/{ppc => powerpc}/mach-mpc85xx/fsl_law.c              | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/clock.h   | 0
 .../mach-mpc85xx/include/mach/config_mpc85xx.h            | 0
 .../mach-mpc85xx/include/mach/early_udelay.h              | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/ffs64.h   | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/fsl_i2c.h | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/gianfar.h | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/gpio.h    | 0
 .../mach-mpc85xx/include/mach/immap_85xx.h                | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/mmu.h     | 0
 arch/{ppc => powerpc}/mach-mpc85xx/include/mach/mpc85xx.h | 0
 arch/{ppc => powerpc}/mach-mpc85xx/speed.c                | 0
 arch/{ppc => powerpc}/mach-mpc85xx/time.c                 | 0
 159 files changed, 16 insertions(+), 11 deletions(-)
 rename arch/{ppc => powerpc}/Kbuild (100%)
 rename arch/{ppc => powerpc}/Kconfig (78%)
 rename arch/{ppc => powerpc}/Makefile (87%)
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

diff --git a/Makefile b/Makefile
index 16b23c107..de9b40ade 100644
--- a/Makefile
+++ b/Makefile
@@ -174,6 +174,11 @@ ifeq ($(ARCH),arm64)
        SRCARCH := arm
 endif
 
+# Support ARCH=ppc for backward compatibility
+ifeq ($(ARCH),ppc)
+       SRCARCH := powerpc
+endif
+
 KCONFIG_CONFIG	?= .config
 
 # Default file for 'make defconfig'. This may be overridden by arch-Makefile.
diff --git a/arch/ppc/Kbuild b/arch/powerpc/Kbuild
similarity index 100%
rename from arch/ppc/Kbuild
rename to arch/powerpc/Kbuild
diff --git a/arch/ppc/Kconfig b/arch/powerpc/Kconfig
similarity index 78%
rename from arch/ppc/Kconfig
rename to arch/powerpc/Kconfig
index 798f342fa..90ec7b170 100644
--- a/arch/ppc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -18,5 +18,5 @@ config ARCH_MPC85XX
 	bool "Freescale MPC85xx"
 endchoice
 
-source "arch/ppc/mach-mpc5xxx/Kconfig"
-source "arch/ppc/mach-mpc85xx/Kconfig"
+source "arch/powerpc/mach-mpc5xxx/Kconfig"
+source "arch/powerpc/mach-mpc85xx/Kconfig"
diff --git a/arch/ppc/Makefile b/arch/powerpc/Makefile
similarity index 87%
rename from arch/ppc/Makefile
rename to arch/powerpc/Makefile
index 5eacd42e3..6d3e60d0a 100644
--- a/arch/ppc/Makefile
+++ b/arch/powerpc/Makefile
@@ -33,7 +33,7 @@ KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += --gc-sections
 endif
 
-machdirs := $(patsubst %,arch/ppc/mach-%/,$(machine-y))
+machdirs := $(patsubst %,arch/powerpc/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
 KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
@@ -47,18 +47,18 @@ PHONY += maketools
 
 
 ifneq ($(board-y),)
-BOARD  := arch/ppc/boards/$(board-y)/
+BOARD  := arch/powerpc/boards/$(board-y)/
 else
 BOARD  :=
 endif
 
 ifneq ($(machine-y),)
-MACH  := arch/ppc/mach-$(machine-y)/
+MACH  := arch/powerpc/mach-$(machine-y)/
 else
 MACH  :=
 endif
 
-common-y += $(BOARD) $(MACH) arch/ppc/
+common-y += $(BOARD) $(MACH) arch/powerpc/
 
 ifdef CONFIG_MPC85xx
 lds-y += $(MACH)/barebox.lds
diff --git a/arch/ppc/boards/.gitignore b/arch/powerpc/boards/.gitignore
similarity index 100%
rename from arch/ppc/boards/.gitignore
rename to arch/powerpc/boards/.gitignore
diff --git a/arch/ppc/boards/freescale-p1010rdb/Makefile b/arch/powerpc/boards/freescale-p1010rdb/Makefile
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/Makefile
rename to arch/powerpc/boards/freescale-p1010rdb/Makefile
diff --git a/arch/ppc/boards/freescale-p1010rdb/config.h b/arch/powerpc/boards/freescale-p1010rdb/config.h
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/config.h
rename to arch/powerpc/boards/freescale-p1010rdb/config.h
diff --git a/arch/ppc/boards/freescale-p1010rdb/ddr.c b/arch/powerpc/boards/freescale-p1010rdb/ddr.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/ddr.c
rename to arch/powerpc/boards/freescale-p1010rdb/ddr.c
diff --git a/arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init b/arch/powerpc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init
rename to arch/powerpc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/bin/init
diff --git a/arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config b/arch/powerpc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config
rename to arch/powerpc/boards/freescale-p1010rdb/defaultenv-freescale-p1010rdb/config
diff --git a/arch/ppc/boards/freescale-p1010rdb/law.c b/arch/powerpc/boards/freescale-p1010rdb/law.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/law.c
rename to arch/powerpc/boards/freescale-p1010rdb/law.c
diff --git a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
rename to arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
diff --git a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.h b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.h
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
rename to arch/powerpc/boards/freescale-p1010rdb/p1010rdb.h
diff --git a/arch/ppc/boards/freescale-p1010rdb/tlb.c b/arch/powerpc/boards/freescale-p1010rdb/tlb.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1010rdb/tlb.c
rename to arch/powerpc/boards/freescale-p1010rdb/tlb.c
diff --git a/arch/ppc/boards/freescale-p1022ds/Makefile b/arch/powerpc/boards/freescale-p1022ds/Makefile
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/Makefile
rename to arch/powerpc/boards/freescale-p1022ds/Makefile
diff --git a/arch/ppc/boards/freescale-p1022ds/config.h b/arch/powerpc/boards/freescale-p1022ds/config.h
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/config.h
rename to arch/powerpc/boards/freescale-p1022ds/config.h
diff --git a/arch/ppc/boards/freescale-p1022ds/ddr.c b/arch/powerpc/boards/freescale-p1022ds/ddr.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/ddr.c
rename to arch/powerpc/boards/freescale-p1022ds/ddr.c
diff --git a/arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init b/arch/powerpc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init
rename to arch/powerpc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/bin/init
diff --git a/arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config b/arch/powerpc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config
rename to arch/powerpc/boards/freescale-p1022ds/defaultenv-freescale-p1022ds/config
diff --git a/arch/ppc/boards/freescale-p1022ds/ics307_clk.c b/arch/powerpc/boards/freescale-p1022ds/ics307_clk.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/ics307_clk.c
rename to arch/powerpc/boards/freescale-p1022ds/ics307_clk.c
diff --git a/arch/ppc/boards/freescale-p1022ds/law.c b/arch/powerpc/boards/freescale-p1022ds/law.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/law.c
rename to arch/powerpc/boards/freescale-p1022ds/law.c
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/p1022ds.c
rename to arch/powerpc/boards/freescale-p1022ds/p1022ds.c
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.h b/arch/powerpc/boards/freescale-p1022ds/p1022ds.h
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/p1022ds.h
rename to arch/powerpc/boards/freescale-p1022ds/p1022ds.h
diff --git a/arch/ppc/boards/freescale-p1022ds/tlb.c b/arch/powerpc/boards/freescale-p1022ds/tlb.c
similarity index 100%
rename from arch/ppc/boards/freescale-p1022ds/tlb.c
rename to arch/powerpc/boards/freescale-p1022ds/tlb.c
diff --git a/arch/ppc/boards/freescale-p2020rdb/Makefile b/arch/powerpc/boards/freescale-p2020rdb/Makefile
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/Makefile
rename to arch/powerpc/boards/freescale-p2020rdb/Makefile
diff --git a/arch/ppc/boards/freescale-p2020rdb/config.h b/arch/powerpc/boards/freescale-p2020rdb/config.h
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/config.h
rename to arch/powerpc/boards/freescale-p2020rdb/config.h
diff --git a/arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init b/arch/powerpc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init
rename to arch/powerpc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/bin/init
diff --git a/arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config b/arch/powerpc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config
rename to arch/powerpc/boards/freescale-p2020rdb/defaultenv-freescale-p2020rdb/config
diff --git a/arch/ppc/boards/freescale-p2020rdb/law.c b/arch/powerpc/boards/freescale-p2020rdb/law.c
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/law.c
rename to arch/powerpc/boards/freescale-p2020rdb/law.c
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
rename to arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
diff --git a/arch/ppc/boards/freescale-p2020rdb/tlb.c b/arch/powerpc/boards/freescale-p2020rdb/tlb.c
similarity index 100%
rename from arch/ppc/boards/freescale-p2020rdb/tlb.c
rename to arch/powerpc/boards/freescale-p2020rdb/tlb.c
diff --git a/arch/ppc/boards/owc-da923rc/Makefile b/arch/powerpc/boards/owc-da923rc/Makefile
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/Makefile
rename to arch/powerpc/boards/owc-da923rc/Makefile
diff --git a/arch/ppc/boards/owc-da923rc/config.h b/arch/powerpc/boards/owc-da923rc/config.h
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/config.h
rename to arch/powerpc/boards/owc-da923rc/config.h
diff --git a/arch/ppc/boards/owc-da923rc/da923rc.c b/arch/powerpc/boards/owc-da923rc/da923rc.c
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/da923rc.c
rename to arch/powerpc/boards/owc-da923rc/da923rc.c
diff --git a/arch/ppc/boards/owc-da923rc/ddr.c b/arch/powerpc/boards/owc-da923rc/ddr.c
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/ddr.c
rename to arch/powerpc/boards/owc-da923rc/ddr.c
diff --git a/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot b/arch/powerpc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
rename to arch/powerpc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
diff --git a/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init b/arch/powerpc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
rename to arch/powerpc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
diff --git a/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config b/arch/powerpc/boards/owc-da923rc/defaultenv-owc-da923rc/config
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config
rename to arch/powerpc/boards/owc-da923rc/defaultenv-owc-da923rc/config
diff --git a/arch/ppc/boards/owc-da923rc/law.c b/arch/powerpc/boards/owc-da923rc/law.c
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/law.c
rename to arch/powerpc/boards/owc-da923rc/law.c
diff --git a/arch/ppc/boards/owc-da923rc/nand.c b/arch/powerpc/boards/owc-da923rc/nand.c
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/nand.c
rename to arch/powerpc/boards/owc-da923rc/nand.c
diff --git a/arch/ppc/boards/owc-da923rc/product_data.c b/arch/powerpc/boards/owc-da923rc/product_data.c
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/product_data.c
rename to arch/powerpc/boards/owc-da923rc/product_data.c
diff --git a/arch/ppc/boards/owc-da923rc/product_data.h b/arch/powerpc/boards/owc-da923rc/product_data.h
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/product_data.h
rename to arch/powerpc/boards/owc-da923rc/product_data.h
diff --git a/arch/ppc/boards/owc-da923rc/tlb.c b/arch/powerpc/boards/owc-da923rc/tlb.c
similarity index 100%
rename from arch/ppc/boards/owc-da923rc/tlb.c
rename to arch/powerpc/boards/owc-da923rc/tlb.c
diff --git a/arch/ppc/boards/pcm030/Makefile b/arch/powerpc/boards/pcm030/Makefile
similarity index 100%
rename from arch/ppc/boards/pcm030/Makefile
rename to arch/powerpc/boards/pcm030/Makefile
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/powerpc/boards/pcm030/barebox.lds.S
similarity index 98%
rename from arch/ppc/boards/pcm030/barebox.lds.S
rename to arch/powerpc/boards/pcm030/barebox.lds.S
index 4bf0bc059..2536db745 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/powerpc/boards/pcm030/barebox.lds.S
@@ -28,7 +28,7 @@ SECTIONS
   {
     _text = .;
     _stext = .;
-    arch/ppc/mach-mpc5xxx/start.o	(.text)
+    arch/powerpc/mach-mpc5xxx/start.o	(.text)
     *(.text*)
     *(.got1*)
     . = ALIGN(16);
diff --git a/arch/ppc/boards/pcm030/config.h b/arch/powerpc/boards/pcm030/config.h
similarity index 100%
rename from arch/ppc/boards/pcm030/config.h
rename to arch/powerpc/boards/pcm030/config.h
diff --git a/arch/ppc/boards/pcm030/eeprom.c b/arch/powerpc/boards/pcm030/eeprom.c
similarity index 100%
rename from arch/ppc/boards/pcm030/eeprom.c
rename to arch/powerpc/boards/pcm030/eeprom.c
diff --git a/arch/ppc/boards/pcm030/env/init/mtdparts-nor b/arch/powerpc/boards/pcm030/env/init/mtdparts-nor
similarity index 100%
rename from arch/ppc/boards/pcm030/env/init/mtdparts-nor
rename to arch/powerpc/boards/pcm030/env/init/mtdparts-nor
diff --git a/arch/ppc/boards/pcm030/env/nv/linux.bootargs.console b/arch/powerpc/boards/pcm030/env/nv/linux.bootargs.console
similarity index 100%
rename from arch/ppc/boards/pcm030/env/nv/linux.bootargs.console
rename to arch/powerpc/boards/pcm030/env/nv/linux.bootargs.console
diff --git a/arch/ppc/boards/pcm030/mt46v32m16-75.h b/arch/powerpc/boards/pcm030/mt46v32m16-75.h
similarity index 100%
rename from arch/ppc/boards/pcm030/mt46v32m16-75.h
rename to arch/powerpc/boards/pcm030/mt46v32m16-75.h
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/powerpc/boards/pcm030/pcm030.c
similarity index 100%
rename from arch/ppc/boards/pcm030/pcm030.c
rename to arch/powerpc/boards/pcm030/pcm030.c
diff --git a/arch/ppc/configs/owc_da923rc_defconfig b/arch/powerpc/configs/owc_da923rc_defconfig
similarity index 100%
rename from arch/ppc/configs/owc_da923rc_defconfig
rename to arch/powerpc/configs/owc_da923rc_defconfig
diff --git a/arch/ppc/configs/p1010rdb_defconfig b/arch/powerpc/configs/p1010rdb_defconfig
similarity index 100%
rename from arch/ppc/configs/p1010rdb_defconfig
rename to arch/powerpc/configs/p1010rdb_defconfig
diff --git a/arch/ppc/configs/p1022ds_defconfig b/arch/powerpc/configs/p1022ds_defconfig
similarity index 100%
rename from arch/ppc/configs/p1022ds_defconfig
rename to arch/powerpc/configs/p1022ds_defconfig
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/powerpc/configs/p2020rdb_defconfig
similarity index 100%
rename from arch/ppc/configs/p2020rdb_defconfig
rename to arch/powerpc/configs/p2020rdb_defconfig
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/powerpc/configs/pcm030_defconfig
similarity index 93%
rename from arch/ppc/configs/pcm030_defconfig
rename to arch/powerpc/configs/pcm030_defconfig
index bd83ff44f..b97a8d5d0 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/powerpc/configs/pcm030_defconfig
@@ -6,7 +6,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/pcm030/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/powerpc/boards/pcm030/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/ppc/cpu-85xx/Makefile b/arch/powerpc/cpu-85xx/Makefile
similarity index 100%
rename from arch/ppc/cpu-85xx/Makefile
rename to arch/powerpc/cpu-85xx/Makefile
diff --git a/arch/ppc/cpu-85xx/fixed_ivor.S b/arch/powerpc/cpu-85xx/fixed_ivor.S
similarity index 100%
rename from arch/ppc/cpu-85xx/fixed_ivor.S
rename to arch/powerpc/cpu-85xx/fixed_ivor.S
diff --git a/arch/ppc/cpu-85xx/mmu.c b/arch/powerpc/cpu-85xx/mmu.c
similarity index 100%
rename from arch/ppc/cpu-85xx/mmu.c
rename to arch/powerpc/cpu-85xx/mmu.c
diff --git a/arch/ppc/cpu-85xx/resetvec.S b/arch/powerpc/cpu-85xx/resetvec.S
similarity index 100%
rename from arch/ppc/cpu-85xx/resetvec.S
rename to arch/powerpc/cpu-85xx/resetvec.S
diff --git a/arch/ppc/cpu-85xx/start.S b/arch/powerpc/cpu-85xx/start.S
similarity index 100%
rename from arch/ppc/cpu-85xx/start.S
rename to arch/powerpc/cpu-85xx/start.S
diff --git a/arch/ppc/cpu-85xx/tlb.c b/arch/powerpc/cpu-85xx/tlb.c
similarity index 100%
rename from arch/ppc/cpu-85xx/tlb.c
rename to arch/powerpc/cpu-85xx/tlb.c
diff --git a/arch/ppc/cpu-85xx/traps.c b/arch/powerpc/cpu-85xx/traps.c
similarity index 100%
rename from arch/ppc/cpu-85xx/traps.c
rename to arch/powerpc/cpu-85xx/traps.c
diff --git a/arch/ppc/ddr-8xxx/Makefile b/arch/powerpc/ddr-8xxx/Makefile
similarity index 100%
rename from arch/ppc/ddr-8xxx/Makefile
rename to arch/powerpc/ddr-8xxx/Makefile
diff --git a/arch/ppc/ddr-8xxx/common_timing_params.h b/arch/powerpc/ddr-8xxx/common_timing_params.h
similarity index 100%
rename from arch/ppc/ddr-8xxx/common_timing_params.h
rename to arch/powerpc/ddr-8xxx/common_timing_params.h
diff --git a/arch/ppc/ddr-8xxx/ctrl_regs.c b/arch/powerpc/ddr-8xxx/ctrl_regs.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/ctrl_regs.c
rename to arch/powerpc/ddr-8xxx/ctrl_regs.c
diff --git a/arch/ppc/ddr-8xxx/ddr.h b/arch/powerpc/ddr-8xxx/ddr.h
similarity index 100%
rename from arch/ppc/ddr-8xxx/ddr.h
rename to arch/powerpc/ddr-8xxx/ddr.h
diff --git a/arch/ppc/ddr-8xxx/ddr2_dimm_params.c b/arch/powerpc/ddr-8xxx/ddr2_dimm_params.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/ddr2_dimm_params.c
rename to arch/powerpc/ddr-8xxx/ddr2_dimm_params.c
diff --git a/arch/ppc/ddr-8xxx/ddr3_dimm_params.c b/arch/powerpc/ddr-8xxx/ddr3_dimm_params.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/ddr3_dimm_params.c
rename to arch/powerpc/ddr-8xxx/ddr3_dimm_params.c
diff --git a/arch/ppc/ddr-8xxx/ddr_setctrl.c b/arch/powerpc/ddr-8xxx/ddr_setctrl.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/ddr_setctrl.c
rename to arch/powerpc/ddr-8xxx/ddr_setctrl.c
diff --git a/arch/ppc/ddr-8xxx/lc_common_dimm_params.c b/arch/powerpc/ddr-8xxx/lc_common_dimm_params.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/lc_common_dimm_params.c
rename to arch/powerpc/ddr-8xxx/lc_common_dimm_params.c
diff --git a/arch/ppc/ddr-8xxx/main.c b/arch/powerpc/ddr-8xxx/main.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/main.c
rename to arch/powerpc/ddr-8xxx/main.c
diff --git a/arch/ppc/ddr-8xxx/options.c b/arch/powerpc/ddr-8xxx/options.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/options.c
rename to arch/powerpc/ddr-8xxx/options.c
diff --git a/arch/ppc/ddr-8xxx/util.c b/arch/powerpc/ddr-8xxx/util.c
similarity index 100%
rename from arch/ppc/ddr-8xxx/util.c
rename to arch/powerpc/ddr-8xxx/util.c
diff --git a/arch/ppc/include/asm/atomic.h b/arch/powerpc/include/asm/atomic.h
similarity index 100%
rename from arch/ppc/include/asm/atomic.h
rename to arch/powerpc/include/asm/atomic.h
diff --git a/arch/ppc/include/asm/bitops.h b/arch/powerpc/include/asm/bitops.h
similarity index 100%
rename from arch/ppc/include/asm/bitops.h
rename to arch/powerpc/include/asm/bitops.h
diff --git a/arch/ppc/include/asm/bitsperlong.h b/arch/powerpc/include/asm/bitsperlong.h
similarity index 100%
rename from arch/ppc/include/asm/bitsperlong.h
rename to arch/powerpc/include/asm/bitsperlong.h
diff --git a/arch/ppc/include/asm/byteorder.h b/arch/powerpc/include/asm/byteorder.h
similarity index 100%
rename from arch/ppc/include/asm/byteorder.h
rename to arch/powerpc/include/asm/byteorder.h
diff --git a/arch/ppc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
similarity index 100%
rename from arch/ppc/include/asm/cache.h
rename to arch/powerpc/include/asm/cache.h
diff --git a/arch/ppc/include/asm/common.h b/arch/powerpc/include/asm/common.h
similarity index 100%
rename from arch/ppc/include/asm/common.h
rename to arch/powerpc/include/asm/common.h
diff --git a/arch/ppc/include/asm/config.h b/arch/powerpc/include/asm/config.h
similarity index 100%
rename from arch/ppc/include/asm/config.h
rename to arch/powerpc/include/asm/config.h
diff --git a/arch/ppc/include/asm/dma.h b/arch/powerpc/include/asm/dma.h
similarity index 100%
rename from arch/ppc/include/asm/dma.h
rename to arch/powerpc/include/asm/dma.h
diff --git a/arch/ppc/include/asm/elf.h b/arch/powerpc/include/asm/elf.h
similarity index 100%
rename from arch/ppc/include/asm/elf.h
rename to arch/powerpc/include/asm/elf.h
diff --git a/arch/ppc/include/asm/fsl_ddr_dimm_params.h b/arch/powerpc/include/asm/fsl_ddr_dimm_params.h
similarity index 100%
rename from arch/ppc/include/asm/fsl_ddr_dimm_params.h
rename to arch/powerpc/include/asm/fsl_ddr_dimm_params.h
diff --git a/arch/ppc/include/asm/fsl_ddr_sdram.h b/arch/powerpc/include/asm/fsl_ddr_sdram.h
similarity index 100%
rename from arch/ppc/include/asm/fsl_ddr_sdram.h
rename to arch/powerpc/include/asm/fsl_ddr_sdram.h
diff --git a/arch/ppc/include/asm/fsl_ifc.h b/arch/powerpc/include/asm/fsl_ifc.h
similarity index 100%
rename from arch/ppc/include/asm/fsl_ifc.h
rename to arch/powerpc/include/asm/fsl_ifc.h
diff --git a/arch/ppc/include/asm/fsl_law.h b/arch/powerpc/include/asm/fsl_law.h
similarity index 100%
rename from arch/ppc/include/asm/fsl_law.h
rename to arch/powerpc/include/asm/fsl_law.h
diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/powerpc/include/asm/fsl_lbc.h
similarity index 100%
rename from arch/ppc/include/asm/fsl_lbc.h
rename to arch/powerpc/include/asm/fsl_lbc.h
diff --git a/arch/ppc/include/asm/io.h b/arch/powerpc/include/asm/io.h
similarity index 100%
rename from arch/ppc/include/asm/io.h
rename to arch/powerpc/include/asm/io.h
diff --git a/arch/ppc/include/asm/mmu.h b/arch/powerpc/include/asm/mmu.h
similarity index 100%
rename from arch/ppc/include/asm/mmu.h
rename to arch/powerpc/include/asm/mmu.h
diff --git a/arch/ppc/include/asm/module.h b/arch/powerpc/include/asm/module.h
similarity index 100%
rename from arch/ppc/include/asm/module.h
rename to arch/powerpc/include/asm/module.h
diff --git a/arch/ppc/include/asm/pci_io.h b/arch/powerpc/include/asm/pci_io.h
similarity index 100%
rename from arch/ppc/include/asm/pci_io.h
rename to arch/powerpc/include/asm/pci_io.h
diff --git a/arch/ppc/include/asm/posix_types.h b/arch/powerpc/include/asm/posix_types.h
similarity index 100%
rename from arch/ppc/include/asm/posix_types.h
rename to arch/powerpc/include/asm/posix_types.h
diff --git a/arch/ppc/include/asm/ppc_asm.tmpl b/arch/powerpc/include/asm/ppc_asm.tmpl
similarity index 100%
rename from arch/ppc/include/asm/ppc_asm.tmpl
rename to arch/powerpc/include/asm/ppc_asm.tmpl
diff --git a/arch/ppc/include/asm/ppc_defs.h b/arch/powerpc/include/asm/ppc_defs.h
similarity index 100%
rename from arch/ppc/include/asm/ppc_defs.h
rename to arch/powerpc/include/asm/ppc_defs.h
diff --git a/arch/ppc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
similarity index 100%
rename from arch/ppc/include/asm/processor.h
rename to arch/powerpc/include/asm/processor.h
diff --git a/arch/ppc/include/asm/ptrace.h b/arch/powerpc/include/asm/ptrace.h
similarity index 100%
rename from arch/ppc/include/asm/ptrace.h
rename to arch/powerpc/include/asm/ptrace.h
diff --git a/arch/ppc/include/asm/sections.h b/arch/powerpc/include/asm/sections.h
similarity index 100%
rename from arch/ppc/include/asm/sections.h
rename to arch/powerpc/include/asm/sections.h
diff --git a/arch/ppc/include/asm/sigcontext.h b/arch/powerpc/include/asm/sigcontext.h
similarity index 100%
rename from arch/ppc/include/asm/sigcontext.h
rename to arch/powerpc/include/asm/sigcontext.h
diff --git a/arch/ppc/include/asm/signal.h b/arch/powerpc/include/asm/signal.h
similarity index 100%
rename from arch/ppc/include/asm/signal.h
rename to arch/powerpc/include/asm/signal.h
diff --git a/arch/ppc/include/asm/status_led.h b/arch/powerpc/include/asm/status_led.h
similarity index 100%
rename from arch/ppc/include/asm/status_led.h
rename to arch/powerpc/include/asm/status_led.h
diff --git a/arch/ppc/include/asm/string.h b/arch/powerpc/include/asm/string.h
similarity index 100%
rename from arch/ppc/include/asm/string.h
rename to arch/powerpc/include/asm/string.h
diff --git a/arch/ppc/include/asm/swab.h b/arch/powerpc/include/asm/swab.h
similarity index 100%
rename from arch/ppc/include/asm/swab.h
rename to arch/powerpc/include/asm/swab.h
diff --git a/arch/ppc/include/asm/types.h b/arch/powerpc/include/asm/types.h
similarity index 100%
rename from arch/ppc/include/asm/types.h
rename to arch/powerpc/include/asm/types.h
diff --git a/arch/ppc/include/asm/unaligned.h b/arch/powerpc/include/asm/unaligned.h
similarity index 100%
rename from arch/ppc/include/asm/unaligned.h
rename to arch/powerpc/include/asm/unaligned.h
diff --git a/arch/ppc/lib/Makefile b/arch/powerpc/lib/Makefile
similarity index 100%
rename from arch/ppc/lib/Makefile
rename to arch/powerpc/lib/Makefile
diff --git a/arch/ppc/lib/asm-offsets.c b/arch/powerpc/lib/asm-offsets.c
similarity index 100%
rename from arch/ppc/lib/asm-offsets.c
rename to arch/powerpc/lib/asm-offsets.c
diff --git a/arch/ppc/lib/bat_rw.c b/arch/powerpc/lib/bat_rw.c
similarity index 100%
rename from arch/ppc/lib/bat_rw.c
rename to arch/powerpc/lib/bat_rw.c
diff --git a/arch/ppc/lib/board.c b/arch/powerpc/lib/board.c
similarity index 100%
rename from arch/ppc/lib/board.c
rename to arch/powerpc/lib/board.c
diff --git a/arch/ppc/lib/crtsavres.S b/arch/powerpc/lib/crtsavres.S
similarity index 100%
rename from arch/ppc/lib/crtsavres.S
rename to arch/powerpc/lib/crtsavres.S
diff --git a/arch/ppc/lib/extable.c b/arch/powerpc/lib/extable.c
similarity index 100%
rename from arch/ppc/lib/extable.c
rename to arch/powerpc/lib/extable.c
diff --git a/arch/ppc/lib/kgdb.c b/arch/powerpc/lib/kgdb.c
similarity index 100%
rename from arch/ppc/lib/kgdb.c
rename to arch/powerpc/lib/kgdb.c
diff --git a/arch/ppc/lib/misc.S b/arch/powerpc/lib/misc.S
similarity index 100%
rename from arch/ppc/lib/misc.S
rename to arch/powerpc/lib/misc.S
diff --git a/arch/ppc/lib/module.c b/arch/powerpc/lib/module.c
similarity index 100%
rename from arch/ppc/lib/module.c
rename to arch/powerpc/lib/module.c
diff --git a/arch/ppc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
similarity index 100%
rename from arch/ppc/lib/ppclinux.c
rename to arch/powerpc/lib/ppclinux.c
diff --git a/arch/ppc/lib/ppcstring.S b/arch/powerpc/lib/ppcstring.S
similarity index 100%
rename from arch/ppc/lib/ppcstring.S
rename to arch/powerpc/lib/ppcstring.S
diff --git a/arch/ppc/lib/reloc.S b/arch/powerpc/lib/reloc.S
similarity index 100%
rename from arch/ppc/lib/reloc.S
rename to arch/powerpc/lib/reloc.S
diff --git a/arch/ppc/lib/ticks.S b/arch/powerpc/lib/ticks.S
similarity index 100%
rename from arch/ppc/lib/ticks.S
rename to arch/powerpc/lib/ticks.S
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/powerpc/mach-mpc5xxx/Kconfig
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/Kconfig
rename to arch/powerpc/mach-mpc5xxx/Kconfig
diff --git a/arch/ppc/mach-mpc5xxx/Makefile b/arch/powerpc/mach-mpc5xxx/Makefile
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/Makefile
rename to arch/powerpc/mach-mpc5xxx/Makefile
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/powerpc/mach-mpc5xxx/cpu.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/cpu.c
rename to arch/powerpc/mach-mpc5xxx/cpu.c
diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/powerpc/mach-mpc5xxx/cpu_init.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/cpu_init.c
rename to arch/powerpc/mach-mpc5xxx/cpu_init.c
diff --git a/arch/ppc/mach-mpc5xxx/firmware_sc_task.impl.S b/arch/powerpc/mach-mpc5xxx/firmware_sc_task.impl.S
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/firmware_sc_task.impl.S
rename to arch/powerpc/mach-mpc5xxx/firmware_sc_task.impl.S
diff --git a/arch/ppc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S b/arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S
rename to arch/powerpc/mach-mpc5xxx/firmware_sc_task_bestcomm.impl.S
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/clock.h b/arch/powerpc/mach-mpc5xxx/include/mach/clock.h
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/include/mach/clock.h
rename to arch/powerpc/mach-mpc5xxx/include/mach/clock.h
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/powerpc/mach-mpc5xxx/include/mach/mpc5xxx.h
similarity index 99%
rename from arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
rename to arch/powerpc/mach-mpc5xxx/include/mach/mpc5xxx.h
index 9921cbd67..6949b1d95 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/powerpc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -1,5 +1,5 @@
 /*
- * arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+ * arch/powerpc/mach-mpc5xxx/include/mach/mpc5xxx.h
  *
  * Prototypes, etc. for the Motorola MGT5xxx/MPC5xxx
  * embedded cpu chips
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/sdma.h b/arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/include/mach/sdma.h
rename to arch/powerpc/mach-mpc5xxx/include/mach/sdma.h
diff --git a/arch/ppc/mach-mpc5xxx/io.S b/arch/powerpc/mach-mpc5xxx/io.S
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/io.S
rename to arch/powerpc/mach-mpc5xxx/io.S
diff --git a/arch/ppc/mach-mpc5xxx/loadtask.c b/arch/powerpc/mach-mpc5xxx/loadtask.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/loadtask.c
rename to arch/powerpc/mach-mpc5xxx/loadtask.c
diff --git a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c b/arch/powerpc/mach-mpc5xxx/pci_mpc5200.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/pci_mpc5200.c
rename to arch/powerpc/mach-mpc5xxx/pci_mpc5200.c
diff --git a/arch/ppc/mach-mpc5xxx/reginfo.c b/arch/powerpc/mach-mpc5xxx/reginfo.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/reginfo.c
rename to arch/powerpc/mach-mpc5xxx/reginfo.c
diff --git a/arch/ppc/mach-mpc5xxx/speed.c b/arch/powerpc/mach-mpc5xxx/speed.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/speed.c
rename to arch/powerpc/mach-mpc5xxx/speed.c
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/powerpc/mach-mpc5xxx/start.S
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/start.S
rename to arch/powerpc/mach-mpc5xxx/start.S
diff --git a/arch/ppc/mach-mpc5xxx/time.c b/arch/powerpc/mach-mpc5xxx/time.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/time.c
rename to arch/powerpc/mach-mpc5xxx/time.c
diff --git a/arch/ppc/mach-mpc5xxx/traps.c b/arch/powerpc/mach-mpc5xxx/traps.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/traps.c
rename to arch/powerpc/mach-mpc5xxx/traps.c
diff --git a/arch/ppc/mach-mpc85xx/.gitignore b/arch/powerpc/mach-mpc85xx/.gitignore
similarity index 100%
rename from arch/ppc/mach-mpc85xx/.gitignore
rename to arch/powerpc/mach-mpc85xx/.gitignore
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/powerpc/mach-mpc85xx/Kconfig
similarity index 100%
rename from arch/ppc/mach-mpc85xx/Kconfig
rename to arch/powerpc/mach-mpc85xx/Kconfig
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/powerpc/mach-mpc85xx/Makefile
similarity index 100%
rename from arch/ppc/mach-mpc85xx/Makefile
rename to arch/powerpc/mach-mpc85xx/Makefile
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
similarity index 97%
rename from arch/ppc/mach-mpc85xx/barebox.lds.S
rename to arch/powerpc/mach-mpc85xx/barebox.lds.S
index a09a01eba..2b73fda4e 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
@@ -121,13 +121,13 @@ SECTIONS
   .bootpg RESET_VECTOR_ADDRESS - 0xffc :
   {
     _text = .;
-    arch/ppc/cpu-85xx/start.o	(.bootpg)
+    arch/powerpc/cpu-85xx/start.o	(.bootpg)
   } :text = 0xffff
 
   .resetvec RESET_VECTOR_ADDRESS :
   {
     KEEP(*(.resetvec))
-    arch/ppc/cpu-85xx/resetvec.o	(.resetvec)
+    arch/powerpc/cpu-85xx/resetvec.o	(.resetvec)
   } :text = 0xffff
 
   . = RESET_VECTOR_ADDRESS + 0x4;
diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/cpu.c
rename to arch/powerpc/mach-mpc85xx/cpu.c
diff --git a/arch/ppc/mach-mpc85xx/cpu_init.c b/arch/powerpc/mach-mpc85xx/cpu_init.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/cpu_init.c
rename to arch/powerpc/mach-mpc85xx/cpu_init.c
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/powerpc/mach-mpc85xx/cpuid.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/cpuid.c
rename to arch/powerpc/mach-mpc85xx/cpuid.c
diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/powerpc/mach-mpc85xx/eth-devices.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/eth-devices.c
rename to arch/powerpc/mach-mpc85xx/eth-devices.c
diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/powerpc/mach-mpc85xx/fdt.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/fdt.c
rename to arch/powerpc/mach-mpc85xx/fdt.c
diff --git a/arch/ppc/mach-mpc85xx/fsl_gpio.c b/arch/powerpc/mach-mpc85xx/fsl_gpio.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/fsl_gpio.c
rename to arch/powerpc/mach-mpc85xx/fsl_gpio.c
diff --git a/arch/ppc/mach-mpc85xx/fsl_i2c.c b/arch/powerpc/mach-mpc85xx/fsl_i2c.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/fsl_i2c.c
rename to arch/powerpc/mach-mpc85xx/fsl_i2c.c
diff --git a/arch/ppc/mach-mpc85xx/fsl_law.c b/arch/powerpc/mach-mpc85xx/fsl_law.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/fsl_law.c
rename to arch/powerpc/mach-mpc85xx/fsl_law.c
diff --git a/arch/ppc/mach-mpc85xx/include/mach/clock.h b/arch/powerpc/mach-mpc85xx/include/mach/clock.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/clock.h
rename to arch/powerpc/mach-mpc85xx/include/mach/clock.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/powerpc/mach-mpc85xx/include/mach/config_mpc85xx.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
rename to arch/powerpc/mach-mpc85xx/include/mach/config_mpc85xx.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/early_udelay.h b/arch/powerpc/mach-mpc85xx/include/mach/early_udelay.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
rename to arch/powerpc/mach-mpc85xx/include/mach/early_udelay.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/ffs64.h b/arch/powerpc/mach-mpc85xx/include/mach/ffs64.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/ffs64.h
rename to arch/powerpc/mach-mpc85xx/include/mach/ffs64.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/fsl_i2c.h b/arch/powerpc/mach-mpc85xx/include/mach/fsl_i2c.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/fsl_i2c.h
rename to arch/powerpc/mach-mpc85xx/include/mach/fsl_i2c.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h b/arch/powerpc/mach-mpc85xx/include/mach/gianfar.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/gianfar.h
rename to arch/powerpc/mach-mpc85xx/include/mach/gianfar.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gpio.h b/arch/powerpc/mach-mpc85xx/include/mach/gpio.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/gpio.h
rename to arch/powerpc/mach-mpc85xx/include/mach/gpio.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/powerpc/mach-mpc85xx/include/mach/immap_85xx.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
rename to arch/powerpc/mach-mpc85xx/include/mach/immap_85xx.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mmu.h b/arch/powerpc/mach-mpc85xx/include/mach/mmu.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/mmu.h
rename to arch/powerpc/mach-mpc85xx/include/mach/mmu.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h b/arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
rename to arch/powerpc/mach-mpc85xx/include/mach/mpc85xx.h
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/powerpc/mach-mpc85xx/speed.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/speed.c
rename to arch/powerpc/mach-mpc85xx/speed.c
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/powerpc/mach-mpc85xx/time.c
similarity index 100%
rename from arch/ppc/mach-mpc85xx/time.c
rename to arch/powerpc/mach-mpc85xx/time.c
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
