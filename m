Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Urtbl-0002KF-Eg
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 17:34:18 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 26 Jun 2013 18:33:39 +0100
Message-Id: <1372268027-15271-1-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
References: <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v3 0/8] DDR2 memory initialisation
To: barebox@lists.infradead.org

This patch set addresses the following issues from the version v2.

It renames the function ddr2_spd_check to a more meaningful name.
All commits acknowledge that the base of the source code is thanks
to the U-Boot community.

Renaud Barbier (8):
  common: DDR2 SPD checksum.
  ppc asm: DDR headers
  ppc 8xxx: DDR headers
  ppc 8xxx: DIMM parameters calculation
  ppc 8xxx: DDR utility and memory options
  ppx 8xxx: DDR registers value calculation
  ppc 8xxx: core DDR driver functions
  ppc 85xx: early I2C support

 arch/ppc/ddr-8xxx/common_timing_params.h     |   44 +++
 arch/ppc/ddr-8xxx/ctrl_regs.c                |  425 ++++++++++++++++++++++++++
 arch/ppc/ddr-8xxx/ddr.h                      |  105 +++++++
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c         |  303 ++++++++++++++++++
 arch/ppc/ddr-8xxx/ddr2_setctrl.c             |   58 ++++
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c    |  214 +++++++++++++
 arch/ppc/ddr-8xxx/main.c                     |  238 ++++++++++++++
 arch/ppc/ddr-8xxx/options.c                  |  111 +++++++
 arch/ppc/ddr-8xxx/util.c                     |  100 ++++++
 arch/ppc/include/asm/fsl_ddr_dimm_params.h   |   60 ++++
 arch/ppc/include/asm/fsl_ddr_sdram.h         |  131 ++++++++-
 arch/ppc/mach-mpc85xx/fsl_i2c.c              |  253 +++++++++++++++
 arch/ppc/mach-mpc85xx/include/mach/fsl_i2c.h |   18 ++
 common/Makefile                              |    1 +
 common/ddr_spd.c                             |   39 +++
 include/ddr_spd.h                            |  135 ++++++++
 16 files changed, 2231 insertions(+), 4 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/common_timing_params.h
 create mode 100644 arch/ppc/ddr-8xxx/ctrl_regs.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr.h
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_setctrl.c
 create mode 100644 arch/ppc/ddr-8xxx/lc_common_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/main.c
 create mode 100644 arch/ppc/ddr-8xxx/options.c
 create mode 100644 arch/ppc/ddr-8xxx/util.c
 create mode 100644 arch/ppc/include/asm/fsl_ddr_dimm_params.h
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_i2c.c
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/fsl_i2c.h
 create mode 100644 common/ddr_spd.c
 create mode 100644 include/ddr_spd.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
