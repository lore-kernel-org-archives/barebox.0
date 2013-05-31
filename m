Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiSb5-0006ni-1l
 for barebox@lists.infradead.org; Fri, 31 May 2013 16:54:36 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 31 May 2013 17:53:56 +0100
Message-Id: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/8] U-Boot DDR initialisation import
To: barebox@lists.infradead.org

This is a direct import of U-Boot DDR initialization code from
git tree id a71d45d706a5b51c348160163b6c159632273fed.

It is for Freescale mpc8xxx CPUs such as the mpc8544, P2020.
Memory controller initialisation is based on data retrieved
from a Serial Presence Detect (SPD) eeprom for DDR1/DDR2 and
DDR3 memory.

These patches are needed for the GEIP DA923RC board initialisation
which will be submitted shortly.

Renaud Barbier (8):
  ppc 8xxx: DDR headers
  ppc 8xxx: memory controller register manipulation functions
  ppc 8xxx: dimm parameters calculation
  ppc 8xxx: lowest common dimm parameters
  ppc 8xxx: DDR utility functions
  ppc 8xxx: DDR specific options
  ppc 8xxx: core DDR driver functions
  ppc 8xxx: remove interactive debugging

 arch/ppc/ddr-8xxx/common_timing_params.h   |   56 +
 arch/ppc/ddr-8xxx/ctrl_regs.c              | 1645 ++++++++++++++++++++++++++++
 arch/ppc/ddr-8xxx/ddr.h                    |  103 ++
 arch/ppc/ddr-8xxx/ddr1_dimm_params.c       |  343 ++++++
 arch/ppc/ddr-8xxx/ddr2_dimm_params.c       |  342 ++++++
 arch/ppc/ddr-8xxx/ddr3_dimm_params.c       |  336 ++++++
 arch/ppc/ddr-8xxx/lc_common_dimm_params.c  |  517 +++++++++
 arch/ppc/ddr-8xxx/main.c                   |  659 +++++++++++
 arch/ppc/ddr-8xxx/options.c                | 1148 +++++++++++++++++++
 arch/ppc/ddr-8xxx/util.c                   |  264 +++++
 arch/ppc/include/asm/fsl_ddr_dimm_params.h |   99 ++
 11 files changed, 5512 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/common_timing_params.h
 create mode 100644 arch/ppc/ddr-8xxx/ctrl_regs.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr.h
 create mode 100644 arch/ppc/ddr-8xxx/ddr1_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr2_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/ddr3_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/lc_common_dimm_params.c
 create mode 100644 arch/ppc/ddr-8xxx/main.c
 create mode 100644 arch/ppc/ddr-8xxx/options.c
 create mode 100644 arch/ppc/ddr-8xxx/util.c
 create mode 100644 arch/ppc/include/asm/fsl_ddr_dimm_params.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
