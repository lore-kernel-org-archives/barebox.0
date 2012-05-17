Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3to-0004O4-Sz
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:01 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:42 +0100
Message-Id: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 0/9] MPC85xx support
To: barebox@lists.infradead.org

This patchset splits the bigger patch [V4 2/4] to make it easier to read.

It includes the base MPC85xx infrastructure required for a minimal
boot target in 32 bit addressing mode using an e500v2 core.

Also support is added for a minimal Freescale P2020RDB platform with
driver support currently limited to NOR and serial port only.

Renaud Barbier (9):
  Initial Freescale 85xx Headers.
  Initial e500v2 start up code
  e500v2 traps and TLB support code
  85xx: LAW and LBC initialization
  85xx clocking support
  MPC85xx start-up support code
  Set _text_base to the firmware relocation address
  85xx core support build files
  Minimal P2020RDB platform support and configuration file

 arch/ppc/Kconfig                                   |    3 +
 arch/ppc/Makefile                                  |    8 +
 arch/ppc/boards/freescale-p2020rdb/Makefile        |    4 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S   |  144 +++
 arch/ppc/boards/freescale-p2020rdb/config.h        |   98 ++
 arch/ppc/boards/freescale-p2020rdb/law.c           |   31 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |  230 +++++
 arch/ppc/boards/freescale-p2020rdb/tlb.c           |   62 ++
 arch/ppc/configs/p2020rdb_defconfig                |   23 +
 arch/ppc/cpu-85xx/Makefile                         |    4 +
 arch/ppc/cpu-85xx/fixed_ivor.S                     |   61 ++
 arch/ppc/cpu-85xx/resetvec.S                       |    2 +
 arch/ppc/cpu-85xx/start.S                          | 1085 ++++++++++++++++++++
 arch/ppc/cpu-85xx/tlb.c                            |  175 ++++
 arch/ppc/cpu-85xx/traps.c                          |  272 +++++
 arch/ppc/include/asm/cache.h                       |    2 +
 arch/ppc/include/asm/config.h                      |   44 +
 arch/ppc/include/asm/fsl_ddr_sdram.h               |   33 +
 arch/ppc/include/asm/fsl_law.h                     |   91 ++
 arch/ppc/include/asm/fsl_lbc.h                     |   61 ++
 arch/ppc/lib/board.c                               |    4 +
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
 36 files changed, 3404 insertions(+), 0 deletions(-)
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
