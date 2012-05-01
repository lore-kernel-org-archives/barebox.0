Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SP9LY-0007iy-2N
 for barebox@lists.infradead.org; Tue, 01 May 2012 09:26:13 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  1 May 2012 10:25:59 +0100
Message-Id: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V4 0/4] MPC85xx support
To: barebox@lists.infradead.org

The patchset V4 introduces the MPC85xx architecture to Barebox and
addresses the comments of the version 3. The existing PPC code is
modified to enable multiple PowerPC architecture support.
All existing architecture specific MPC5xxx code which prevents
adding additional architectures is moved into the architecture specific
subdirectories and the PCM030 configuration fixed to use this new
configuration.

Base MPC85xx infrastructure is added to enable the required
functionality for a minimal boot target in 32 bit addressing mode
using an e500v2 core. To address V3 comments global variables that
helped handling TLBs and LAWs are replaced by search functions.

Finally support is added for a minimal Freescale P2020RDB platform with
driver support currently limited to NOR and serial port only.

Renaud Barbier (4):
  Preparation stage to support multiple PPC architectures
  Minimal support of the MPC85xx architecture
  Header files update to support the mpc85xx.
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
 arch/ppc/cpu-85xx/cpu.c                           |  103 ++
 arch/ppc/cpu-85xx/cpu_init.c                      |  130 +++
 arch/ppc/cpu-85xx/fixed_ivor.S                    |   61 ++
 arch/ppc/cpu-85xx/release.S                       |  263 +++++
 arch/ppc/cpu-85xx/resetvec.S                      |    2 +
 arch/ppc/cpu-85xx/start.S                         | 1092 +++++++++++++++++++++
 arch/ppc/cpu-85xx/tlb.c                           |  177 ++++
 arch/ppc/cpu-85xx/traps.c                         |  297 ++++++
 arch/ppc/include/asm/bitops.h                     |   42 +
 arch/ppc/include/asm/cache.h                      |   19 +-
 arch/ppc/include/asm/common.h                     |    2 +
 arch/ppc/include/asm/config.h                     |   44 +
 arch/ppc/include/asm/config_mpc85xx.h             |   37 +
 arch/ppc/include/asm/e500.h                       |   39 +
 arch/ppc/include/asm/fsl_ddr_sdram.h              |   34 +
 arch/ppc/include/asm/fsl_law.h                    |   91 ++
 arch/ppc/include/asm/fsl_lbc.h                    |   67 ++
 arch/ppc/include/asm/io.h                         |   20 +
 arch/ppc/include/asm/mmu.h                        |   69 ++-
 arch/ppc/include/asm/ppc_asm.tmpl                 |  206 +---
 arch/ppc/include/asm/processor.h                  |   44 +
 arch/ppc/lib/Makefile                             |    2 +-
 arch/ppc/lib/board.c                              |    9 +-
 arch/ppc/lib/reloc.S                              |   47 +
 arch/ppc/lib/time.c                               |   74 --
 arch/ppc/mach-mpc5xxx/Kconfig                     |   43 +-
 arch/ppc/mach-mpc5xxx/Makefile                    |    1 +
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h      |    1 +
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c               |    2 +-
 arch/ppc/mach-mpc5xxx/start.S                     |   27 +-
 arch/ppc/mach-mpc5xxx/time.c                      |   53 +
 arch/ppc/mach-mpc5xxx/traps.c                     |    6 +-
 arch/ppc/mach-mpc85xx/Kconfig                     |   45 +
 arch/ppc/mach-mpc85xx/Makefile                    |    6 +
 arch/ppc/mach-mpc85xx/cpuid.c                     |   73 ++
 arch/ppc/mach-mpc85xx/fsl_law.c                   |  160 +++
 arch/ppc/mach-mpc85xx/fsl_lbc.c                   |   17 +
 arch/ppc/mach-mpc85xx/include/mach/clocks.h       |   11 +
 arch/ppc/mach-mpc85xx/include/mach/early_udelay.h |   40 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h   |  132 +++
 arch/ppc/mach-mpc85xx/include/mach/mp.h           |   15 +
 arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h      |   17 +
 arch/ppc/mach-mpc85xx/mp.c                        |  155 +++
 arch/ppc/mach-mpc85xx/speed.c                     |   96 ++
 arch/ppc/mach-mpc85xx/time.c                      |   54 +
 include/linux/types.h                             |    2 +
 57 files changed, 4281 insertions(+), 327 deletions(-)
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
 create mode 100644 arch/ppc/lib/reloc.S
 delete mode 100644 arch/ppc/lib/time.c
 create mode 100644 arch/ppc/mach-mpc5xxx/time.c
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
 create mode 100644 arch/ppc/mach-mpc85xx/mp.c
 create mode 100644 arch/ppc/mach-mpc85xx/speed.c
 create mode 100644 arch/ppc/mach-mpc85xx/time.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
