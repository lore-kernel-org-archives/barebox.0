Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og119.obsmtp.com ([64.18.0.189])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA5Q-0001aq-Lr
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:10:33 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:09:57 +0000
Message-Id: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6] ppc: add Freescale P1022DS board support
To: barebox@lists.infradead.org

Addition of Freescale P1022DS platform and DDR3 support.

Patches based on import of existing U-Boot code with modifications
limited to code cleanup, and making DDR2 and DDR3 support co-existent.

Renaud Barbier (6):
  ppc: add SoC support for Freescale P1022
  common: DDR3 SPD verification support
  ppc: mpc8xxx: add DDR3 support
  ppc: add Freescale P1022DS board support
  ppc: mpc85xx:gianfar: add stashing support
  ppc: P1022DS: update Kconfig and Makefile

 arch/ppc/Makefile                                  |   1 +
 arch/ppc/boards/freescale-p1022ds/Makefile         |   5 +
 arch/ppc/boards/freescale-p1022ds/config.h         |  55 +++
 arch/ppc/boards/freescale-p1022ds/ddr.c            | 126 ++++++
 arch/ppc/boards/freescale-p1022ds/env/bin/init     |   2 +
 arch/ppc/boards/freescale-p1022ds/env/config       |   2 +
 arch/ppc/boards/freescale-p1022ds/ics307_clk.c     |  46 +++
 arch/ppc/boards/freescale-p1022ds/law.c            |  27 ++
 arch/ppc/boards/freescale-p1022ds/p1022ds.c        | 181 +++++++++
 arch/ppc/boards/freescale-p1022ds/p1022ds.h        |  14 +
 arch/ppc/boards/freescale-p1022ds/tlb.c            |  59 +++
 arch/ppc/boards/freescale-p2020rdb/config.h        |   2 -
 arch/ppc/boards/geip-da923rc/config.h              |   1 -
 arch/ppc/configs/p1022ds_defconfig                 |  53 +++
 arch/ppc/cpu-85xx/start.S                          |   2 +-
 arch/ppc/ddr-8xxx/Makefile                         |   4 +-
 arch/ppc/ddr-8xxx/common_timing_params.h           |   2 +
 arch/ppc/ddr-8xxx/ctrl_regs.c                      | 429 +++++++++++++++++++--
 arch/ppc/ddr-8xxx/ddr.h                            |  15 +-
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c               |   9 +-
 arch/ppc/ddr-8xxx/ddr3_dimm_params.c               | 193 +++++++++
 .../ppc/ddr-8xxx/{ddr2_setctrl.c => ddr_setctrl.c} |  44 ++-
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c          | 103 +++--
 arch/ppc/ddr-8xxx/main.c                           |  12 +-
 arch/ppc/ddr-8xxx/options.c                        |  58 ++-
 arch/ppc/include/asm/fsl_ddr_dimm_params.h         |   9 +
 arch/ppc/include/asm/fsl_ddr_sdram.h               |  35 +-
 arch/ppc/include/asm/fsl_lbc.h                     |   3 +
 arch/ppc/include/asm/processor.h                   |   1 +
 arch/ppc/mach-mpc85xx/Kconfig                      |  36 +-
 arch/ppc/mach-mpc85xx/cpuid.c                      |   1 +
 arch/ppc/mach-mpc85xx/fdt.c                        |   8 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   9 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |  34 +-
 common/ddr_spd.c                                   |  24 ++
 include/ddr_spd.h                                  | 116 ++++++
 36 files changed, 1606 insertions(+), 115 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p1022ds/Makefile
 create mode 100644 arch/ppc/boards/freescale-p1022ds/config.h
 create mode 100644 arch/ppc/boards/freescale-p1022ds/ddr.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p1022ds/env/config
 create mode 100644 arch/ppc/boards/freescale-p1022ds/ics307_clk.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/law.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/p1022ds.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/p1022ds.h
 create mode 100644 arch/ppc/boards/freescale-p1022ds/tlb.c
 create mode 100644 arch/ppc/configs/p1022ds_defconfig
 create mode 100644 arch/ppc/ddr-8xxx/ddr3_dimm_params.c
 rename arch/ppc/ddr-8xxx/{ddr2_setctrl.c => ddr_setctrl.c} (53%)

--
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
