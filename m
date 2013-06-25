Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrQlx-0002YX-Qy
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 10:46:54 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 25 Jun 2013 11:45:29 +0100
Message-Id: <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v2 0/8] DDR2 memory initialisaion
To: barebox@lists.infradead.org

This patch set adds memory initialisation through SPD data for
Freescale CPUs such as the mpc8544. It is based on U-Boot tree id
a71d45d706a5b51c34

Support for DDR1, DDR3 and memory interleaving has been removed as
the code is aimed at the GEIP DA923RC board. Support for this
board will be submitted after approval of these patches by the
barebox community.

In addition, early I2C read access has been added so that the SPD
data can be retrieved from the I2C eeprom.

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
