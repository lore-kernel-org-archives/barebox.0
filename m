Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbSvp-0004fT-KU
 for barebox@lists.infradead.org; Wed, 30 Oct 2013 10:23:22 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 30 Oct 2013 10:22:46 +0000
Message-Id: <1383128571-8250-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v2 0/5] GEIP DA923RC board support
To: barebox@lists.infradead.org

This patch set v2 addresses the comment about registering a MAC address
for an Ethernet port. The consequence is that there are now only five
patches.

This patch set adds support for the GEIP DA923RC board.
It extends SOC support to the MPC8544 and enables the DDR driver.
The gianfar driver support is updated so that the board MAC address
can be passed to the driver.

Renaud Barbier (5):
  ppc: mpc85xx: mpc8544 support
  ppc: mpc85xx: define Ethernet port count
  ppc: mpc85xx: enable DDR driver
  ppc: DA923RC: add board support
  ppc: mpc85xx: build directives

 arch/ppc/Makefile                                  |    1 +
 arch/ppc/boards/geip-da923rc/Makefile              |    7 +
 arch/ppc/boards/geip-da923rc/barebox.lds.S         |  159 ++++++++++++
 arch/ppc/boards/geip-da923rc/config.h              |   48 ++++
 arch/ppc/boards/geip-da923rc/da923rc.c             |  270 ++++++++++++++++++++
 arch/ppc/boards/geip-da923rc/ddr.c                 |  110 ++++++++
 arch/ppc/boards/geip-da923rc/env/bin/init          |    4 +
 arch/ppc/boards/geip-da923rc/env/config            |    4 +
 arch/ppc/boards/geip-da923rc/law.c                 |   24 ++
 arch/ppc/boards/geip-da923rc/nand.c                |   94 +++++++
 arch/ppc/boards/geip-da923rc/product_data.c        |   64 +++++
 arch/ppc/boards/geip-da923rc/product_data.h        |   56 ++++
 arch/ppc/boards/geip-da923rc/tlb.c                 |   69 +++++
 arch/ppc/configs/da923rc_defconfig                 |   58 +++++
 arch/ppc/ddr-8xxx/Makefile                         |    2 +
 arch/ppc/include/asm/fsl_lbc.h                     |   12 +
 arch/ppc/include/asm/processor.h                   |    2 +
 arch/ppc/mach-mpc85xx/Kconfig                      |   32 ++-
 arch/ppc/mach-mpc85xx/Makefile                     |    2 +
 arch/ppc/mach-mpc85xx/cpu.c                        |    6 +-
 arch/ppc/mach-mpc85xx/cpuid.c                      |    2 +
 arch/ppc/mach-mpc85xx/eth-devices.c                |    2 +-
 arch/ppc/mach-mpc85xx/include/mach/clock.h         |    1 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |    7 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |   23 ++
 arch/ppc/mach-mpc85xx/speed.c                      |   18 ++
 26 files changed, 1067 insertions(+), 10 deletions(-)
 create mode 100644 arch/ppc/boards/geip-da923rc/Makefile
 create mode 100644 arch/ppc/boards/geip-da923rc/barebox.lds.S
 create mode 100644 arch/ppc/boards/geip-da923rc/config.h
 create mode 100644 arch/ppc/boards/geip-da923rc/da923rc.c
 create mode 100644 arch/ppc/boards/geip-da923rc/ddr.c
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/init
 create mode 100644 arch/ppc/boards/geip-da923rc/env/config
 create mode 100644 arch/ppc/boards/geip-da923rc/law.c
 create mode 100644 arch/ppc/boards/geip-da923rc/nand.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.h
 create mode 100644 arch/ppc/boards/geip-da923rc/tlb.c
 create mode 100644 arch/ppc/configs/da923rc_defconfig
 create mode 100644 arch/ppc/ddr-8xxx/Makefile


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
