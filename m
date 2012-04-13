Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgBB-0002C5-81
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:04:46 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 13 Apr 2012 14:04:29 +0100
Message-Id: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V2 0/3] MPC85xx support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

This patchset introduces the MPC85xx architecture to Barebox. The
existing PPC code is modified to enable multiple PowerPC architecture
support. All existing architecture specific MPC5xxx code which prevents
adding additional architectures is moved into the architecture specific
subdirectories and the PCM030 configuration fixed to use this new
configuration.

Base MPC85xx infrastructure is added to enable the required
functionality for a minimal boot target in 32 bit addressing mode
using an e500v2 core.

Finally support is added for a minimal Freescale P2020RDB platform with
driver support currently limited to NOR and serial port only.

Renaud Barbier (3):
  Preparation stage to support multiple PPC architectures
  Minimal support of the MPC85xx architecture
  Minimal P2020RDB platform support and configuration file

 arch/ppc/Kconfig                                  |   45 +-
 arch/ppc/Makefile                                 |   27 +-
 arch/ppc/boards/freescale-p2020rdb/Makefile       |    4 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S  |  144 +++
 arch/ppc/boards/freescale-p2020rdb/config.h       |   98 ++
 arch/ppc/boards/freescale-p2020rdb/law.c          |   31 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c     |  237 +++++
 arch/ppc/boards/freescale-p2020rdb/tlb.c          |   62 ++
 arch/ppc/configs/p2020rdb_defconfig               |   23 +
 arch/ppc/configs/pcm030_defconfig                 |    3 +
 arch/ppc/cpu-85xx/Makefile                        |    7 +
 arch/ppc/cpu-85xx/cpu.c                           |  115 +++
 arch/ppc/cpu-85xx/cpu_init.c                      |  145 +++
 arch/ppc/cpu-85xx/fixed_ivor.S                    |   61 ++
 arch/ppc/cpu-85xx/release.S                       |  265 +++++
 arch/ppc/cpu-85xx/resetvec.S                      |    2 +
 arch/ppc/cpu-85xx/start.S                         | 1097 +++++++++++++++++++++
 arch/ppc/cpu-85xx/tlb.c                           |  228 +++++
 arch/ppc/cpu-85xx/traps.c                         |  300 ++++++
 arch/ppc/include/asm/bitops.h                     |   42 +
 arch/ppc/include/asm/cache.h                      |   19 +-
 arch/ppc/include/asm/common.h                     |    2 +
 arch/ppc/include/asm/config.h                     |   44 +
 arch/ppc/include/asm/config_mpc85xx.h             |   37 +
 arch/ppc/include/asm/e500.h                       |   39 +
 arch/ppc/include/asm/fsl_ddr_sdram.h              |   34 +
 arch/ppc/include/asm/fsl_i2c.h                    |   10 +-
 arch/ppc/include/asm/fsl_law.h                    |   91 ++
 arch/ppc/include/asm/fsl_lbc.h                    |   67 ++
 arch/ppc/include/asm/global_data.h                |   57 ++
 arch/ppc/include/asm/io.h                         |   20 +
 arch/ppc/include/asm/mmu.h                        |   69 ++-
 arch/ppc/include/asm/processor.h                  |   44 +
 arch/ppc/lib/Makefile                             |    4 +-
 arch/ppc/lib/board.c                              |   11 +-
 arch/ppc/lib/reloc.S                              |   47 +
 arch/ppc/lib/{time.c => time-mpc5200.c}           |   27 +-
 arch/ppc/lib/{time.c => time-mpc85xx.c}           |   34 +-
 arch/ppc/mach-mpc5xxx/Kconfig                     |   43 +-
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c               |    2 +-
 arch/ppc/mach-mpc5xxx/start.S                     |    2 +-
 arch/ppc/mach-mpc5xxx/traps.c                     |    6 +-
 arch/ppc/mach-mpc85xx/Kconfig                     |   45 +
 arch/ppc/mach-mpc85xx/Makefile                    |    5 +
 arch/ppc/mach-mpc85xx/cpuid.c                     |   69 ++
 arch/ppc/mach-mpc85xx/fsl_law.c                   |  156 +++
 arch/ppc/mach-mpc85xx/fsl_lbc.c                   |   17 +
 arch/ppc/mach-mpc85xx/include/mach/clocks.h       |   11 +
 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h |   33 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h   |  132 +++
 arch/ppc/mach-mpc85xx/include/mach/mp.h           |   15 +
 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h      |   17 +
 arch/ppc/mach-mpc85xx/include/mach/ppc_asm.tmpl   |  208 ++++
 arch/ppc/mach-mpc85xx/mp.c                        |  156 +++
 arch/ppc/mach-mpc85xx/speed.c                     |   97 ++
 include/linux/types.h                             |    2 +
 56 files changed, 4475 insertions(+), 133 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/config.h
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/law.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/tlb.c
 create mode 100644 arch/ppc/configs/p2020rdb_defconfig
 create mode 100644 arch/ppc/cpu-85xx/Makefile
 create mode 100644 arch/ppc/cpu-85xx/cpu.c
 create mode 100644 arch/ppc/cpu-85xx/cpu_init.c
 create mode 100644 arch/ppc/cpu-85xx/fixed_ivor.S
 create mode 100644 arch/ppc/cpu-85xx/release.S
 create mode 100644 arch/ppc/cpu-85xx/resetvec.S
 create mode 100644 arch/ppc/cpu-85xx/start.S
 create mode 100644 arch/ppc/cpu-85xx/tlb.c
 create mode 100644 arch/ppc/cpu-85xx/traps.c
 create mode 100644 arch/ppc/include/asm/config.h
 create mode 100644 arch/ppc/include/asm/config_mpc85xx.h
 create mode 100644 arch/ppc/include/asm/e500.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_sdram.h
 create mode 100644 arch/ppc/include/asm/fsl_law.h
 create mode 100644 arch/ppc/include/asm/fsl_lbc.h
 create mode 100644 arch/ppc/include/asm/global_data.h
 create mode 100644 arch/ppc/lib/reloc.S
 copy arch/ppc/lib/{time.c => time-mpc5200.c} (71%)
 rename arch/ppc/lib/{time.c => time-mpc85xx.c} (65%)
 create mode 100644 arch/ppc/mach-mpc85xx/Kconfig
 create mode 100644 arch/ppc/mach-mpc85xx/Makefile
 create mode 100644 arch/ppc/mach-mpc85xx/cpuid.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_law.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_lbc.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/clocks.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mp.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/ppc_asm.tmpl
 create mode 100644 arch/ppc/mach-mpc85xx/mp.c
 create mode 100644 arch/ppc/mach-mpc85xx/speed.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
