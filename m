Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zc-0005fe-QI
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:02:59 +0200
Message-Id: <20200915070305.15763-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/6] powerpc: Fix compiler warnings
To: Barebox List <barebox@lists.infradead.org>

powerpc currently has lots of -Wmissing-prototypes warnings. This series
fixes them.

Sascha Hauer (6):
  powerpc: Add prototypes to header file
  powerpc: Add missing includes
  powerpc: Make locally used functions static
  powerpc: Add prototypes for functions called from assembly
  powerpc: Remove unused functions
  powerpc: Add function prototypes for exception handlers

 arch/powerpc/boards/freescale-p1010rdb/ddr.c  |  4 +--
 .../boards/freescale-p1010rdb/p1010rdb.c      |  2 ++
 arch/powerpc/boards/freescale-p1022ds/ddr.c   |  4 +--
 .../boards/freescale-p1022ds/p1022ds.c        |  2 ++
 arch/powerpc/boards/pcm030/pcm030.c           |  3 ++
 arch/powerpc/cpu-85xx/traps.c                 |  6 ++--
 arch/powerpc/ddr-8xxx/ctrl_regs.c             |  7 ++--
 arch/powerpc/ddr-8xxx/ddr.h                   |  4 ---
 arch/powerpc/ddr-8xxx/ddr2_dimm_params.c      |  2 +-
 arch/powerpc/include/asm/fsl_ddr_sdram.h      |  8 +++++
 arch/powerpc/include/asm/processor.h          |  8 +++++
 arch/powerpc/lib/board.c                      |  3 ++
 arch/powerpc/mach-mpc5xxx/cpu.c               | 24 -------------
 arch/powerpc/mach-mpc5xxx/reginfo.c           |  1 +
 arch/powerpc/mach-mpc5xxx/speed.c             |  3 +-
 arch/powerpc/mach-mpc5xxx/time.c              |  2 +-
 arch/powerpc/mach-mpc5xxx/traps.c             | 28 ++-------------
 arch/powerpc/mach-mpc85xx/cpu.c               |  4 +++
 arch/powerpc/mach-mpc85xx/cpu_init.c          | 13 ++++---
 arch/powerpc/mach-mpc85xx/cpuid.c             |  1 +
 arch/powerpc/mach-mpc85xx/fsl_gpio.c          | 35 -------------------
 arch/powerpc/mach-mpc85xx/fsl_i2c.c           |  1 +
 arch/powerpc/mach-mpc85xx/speed.c             |  9 -----
 arch/powerpc/mach-mpc85xx/time.c              |  2 +-
 drivers/net/fec_mpc5200.c                     |  2 +-
 25 files changed, 59 insertions(+), 119 deletions(-)

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
