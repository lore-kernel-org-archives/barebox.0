Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZl-0004iK-Le
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:14 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:33:54 +0000
Message-Id: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/9] MPC8xxx support
To: barebox@lists.infradead.org

These patches are a work in progress to introduce the mpc8xxx
architecture to barebox.
They include preparation work to add the new architecture and
a minimal support for the P2020RDB. That is, serial only, no
network driver or storage drivers.
I will follow up with the Ethernet, NAND and I2C driver.

Renaud Barbier (9):
  Preparation stage to support multiple PPC architectures.
  Define clock source shift and mask.
  Added support for the mpc8xxx architecture.
  Header files added to support the mpc8xxx architecture.
  Update to existing header files.
  Add file and compilation of strmhz.
  Add-ons to the PPC library to support the mpc8xxx.
  Update (ppc) Makefile and Kconfig.
  P1_P2 platform support code and configuratin file for the P2020RDB.

 arch/ppc/Kconfig                                  |   49 +-
 arch/ppc/Makefile                                 |   10 +
 arch/ppc/boards/freescale/p1_p2_rdb/Makefile      |    5 +
 arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S |  173 ++
 arch/ppc/boards/freescale/p1_p2_rdb/config.h      |  310 +++
 arch/ppc/boards/freescale/p1_p2_rdb/ddr.c         |  244 +++
 arch/ppc/boards/freescale/p1_p2_rdb/law.c         |   33 +
 arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c   |  463 ++++
 arch/ppc/boards/freescale/p1_p2_rdb/pci.c         |   43 +
 arch/ppc/boards/freescale/p1_p2_rdb/tlb.c         |   95 +
 arch/ppc/configs/p2020rdb_defconfig               |   24 +
 arch/ppc/configs/pcm030_defconfig                 |    3 +
 arch/ppc/include/asm/bitops.h                     |  102 +-
 arch/ppc/include/asm/cache.h                      |   11 +
 arch/ppc/include/asm/common.h                     |   43 +-
 arch/ppc/include/asm/config.h                     |   84 +
 arch/ppc/include/asm/config_mpc85xx.h             |  188 ++
 arch/ppc/include/asm/e500.h                       |   31 +
 arch/ppc/include/asm/fsl_ddr_sdram.h              |  288 +++
 arch/ppc/include/asm/fsl_dma.h                    |  141 ++
 arch/ppc/include/asm/fsl_enet.h                   |   33 +
 arch/ppc/include/asm/fsl_fman.h                   |  212 ++
 arch/ppc/include/asm/fsl_law.h                    |  123 ++
 arch/ppc/include/asm/fsl_lbc.h                    |  531 +++++
 arch/ppc/include/asm/fsl_portals.h                |   59 +
 arch/ppc/include/asm/fsl_serdes.h                 |   56 +
 arch/ppc/include/asm/fsl_upm.h                    |   48 +
 arch/ppc/include/asm/global_data.h                |  121 ++
 arch/ppc/include/asm/io.h                         |   38 +
 arch/ppc/include/asm/mmu.h                        |  490 ++++--
 arch/ppc/include/asm/mp.h                         |   31 +
 arch/ppc/include/asm/processor.h                  |  685 ++++--
 arch/ppc/lib/Makefile                             |    4 +-
 arch/ppc/lib/board.c                              |   24 +-
 arch/ppc/lib/reloc.S                              |   50 +
 arch/ppc/lib/time-8xxx.c                          |   64 +
 arch/ppc/lib/time-mpc5200.c                       |   75 +
 arch/ppc/lib/time.c                               |   74 -
 arch/ppc/mach-mpc5xxx/Kconfig                     |   46 +
 arch/ppc/mach-mpc5xxx/include/mach/clock_config.h |    7 +
 arch/ppc/mach-mpc8xxx/Kconfig                     |   72 +
 arch/ppc/mach-mpc8xxx/Makefile                    |    6 +
 arch/ppc/mach-mpc8xxx/cpuid.c                     |  133 ++
 arch/ppc/mach-mpc8xxx/fdt_8xxx.c                  |  266 +++
 arch/ppc/mach-mpc8xxx/fsl_law.c                   |  259 +++
 arch/ppc/mach-mpc8xxx/fsl_lbc.c                   |  149 ++
 arch/ppc/mach-mpc8xxx/include/mach/README         |    1 +
 arch/ppc/mach-mpc8xxx/include/mach/clock_config.h |    7 +
 arch/ppc/mach-mpc8xxx/include/mach/clocks.h       |    8 +
 arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h |   33 +
 arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h   | 2339 +++++++++++++++++++++
 arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h      |   29 +
 arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h     |   36 +
 arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl   |  299 +++
 arch/ppc/mach-mpc8xxx/include/mach/tsec.h         |  664 ++++++
 arch/ppc/mach-mpc8xxx/include/mach/uart.h         |   38 +
 arch/ppc/mach-mpc8xxx/io.S                        |  128 ++
 arch/ppc/mach-mpc8xxx/mpc85xx/Makefile            |   14 +
 arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c               |  347 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c          |  263 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c    |   80 +
 arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c               |  490 +++++
 arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S        |   79 +
 arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c        |  113 +
 arch/ppc/mach-mpc8xxx/mpc85xx/mp.c                |  408 ++++
 arch/ppc/mach-mpc8xxx/mpc85xx/mp.h                |   22 +
 arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c    |   95 +
 arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c      |   73 +
 arch/ppc/mach-mpc8xxx/mpc85xx/release.S           |  317 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S          |    2 +
 arch/ppc/mach-mpc8xxx/mpc85xx/speed.c             |  213 ++
 arch/ppc/mach-mpc8xxx/mpc85xx/start.S             | 1236 +++++++++++
 arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c               |  307 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/traps.c             |  329 +++
 include/common.h                                  |    6 +
 include/ddr_spd.h                                 |  317 +++
 include/ioports.h                                 |   65 +
 include/linux/bitops.h                            |   32 +
 include/linux/types.h                             |    2 +
 include/lmb.h                                     |   61 +
 include/net.h                                     |    2 +
 lib/Makefile                                      |    1 +
 lib/strmhz.c                                      |   38 +
 83 files changed, 14011 insertions(+), 479 deletions(-)
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/config.h
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/ddr.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/law.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/pci.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/tlb.c
 create mode 100644 arch/ppc/configs/p2020rdb_defconfig
 create mode 100644 arch/ppc/include/asm/config.h
 create mode 100644 arch/ppc/include/asm/config_mpc85xx.h
 create mode 100644 arch/ppc/include/asm/e500.h
 create mode 100644 arch/ppc/include/asm/fsl_ddr_sdram.h
 create mode 100644 arch/ppc/include/asm/fsl_dma.h
 create mode 100644 arch/ppc/include/asm/fsl_enet.h
 create mode 100644 arch/ppc/include/asm/fsl_fman.h
 create mode 100644 arch/ppc/include/asm/fsl_law.h
 create mode 100644 arch/ppc/include/asm/fsl_lbc.h
 create mode 100644 arch/ppc/include/asm/fsl_portals.h
 create mode 100644 arch/ppc/include/asm/fsl_serdes.h
 create mode 100644 arch/ppc/include/asm/fsl_upm.h
 create mode 100644 arch/ppc/include/asm/global_data.h
 create mode 100644 arch/ppc/include/asm/mp.h
 create mode 100644 arch/ppc/lib/reloc.S
 create mode 100644 arch/ppc/lib/time-8xxx.c
 create mode 100644 arch/ppc/lib/time-mpc5200.c
 delete mode 100644 arch/ppc/lib/time.c
 create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/clock_config.h
 create mode 100644 arch/ppc/mach-mpc8xxx/Kconfig
 create mode 100644 arch/ppc/mach-mpc8xxx/Makefile
 create mode 100644 arch/ppc/mach-mpc8xxx/cpuid.c
 create mode 100644 arch/ppc/mach-mpc8xxx/fdt_8xxx.c
 create mode 100644 arch/ppc/mach-mpc8xxx/fsl_law.c
 create mode 100644 arch/ppc/mach-mpc8xxx/fsl_lbc.c
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/README
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/clock_config.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/clocks.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/tsec.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/uart.h
 create mode 100644 arch/ppc/mach-mpc8xxx/io.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/Makefile
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/mp.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/mp.h
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/release.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/speed.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/start.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/traps.c
 create mode 100644 include/ddr_spd.h
 create mode 100644 include/ioports.h
 create mode 100644 include/lmb.h
 create mode 100644 lib/strmhz.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
