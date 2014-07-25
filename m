Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAhR8-0007X9-BT
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 15:29:36 +0000
Received: from pps.filterd (m0047961.ppops.net [127.0.0.1])
 by m0047961.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s6PFReWe041041
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:02 -0400
Received: from alpmlip13.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.5.1] (may be forged))
 by m0047961.ppops.net-00176a03. with ESMTP id 1nbs3y8886-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:02 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 25 Jul 2014 16:28:52 +0100
Message-Id: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/4] Freescale P1010RDB board support
To: barebox@lists.infradead.org

This patch set adds support for the Freescale P1010RDB board.
The first patch 1/4 is a resend and fix an issue that prevented
the P1010 from booting. It has also been tested for regression
on other platforms. The remaining patches adds limited
SOC support for the P1010 platform with driver enabled for
the NOR storage device, serial, I2C and Ethernet port.

Renaud Barbier (4):
  ppc: 85xx: CCSRBAR mapping moved to start-up code.
  ppc: Freescale P1010 headers
  ppc: Freescale P1010 SoC support
  ppc: minimal Freescale P1010RDB board support

 arch/ppc/Makefile                                  |   1 +
 arch/ppc/boards/freescale-p1010rdb/Makefile        |   4 +
 arch/ppc/boards/freescale-p1010rdb/config.h        |  58 +++++
 arch/ppc/boards/freescale-p1010rdb/ddr.c           |  60 +++++
 arch/ppc/boards/freescale-p1010rdb/env/bin/init    |   2 +
 arch/ppc/boards/freescale-p1010rdb/env/config      |   2 +
 arch/ppc/boards/freescale-p1010rdb/law.c           |  24 ++
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c      | 209 ++++++++++++++++
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h      |  14 ++
 arch/ppc/boards/freescale-p1010rdb/tlb.c           |  59 +++++
 arch/ppc/configs/p1010rdb_defconfig                |  55 +++++
 arch/ppc/cpu-85xx/start.S                          | 106 ++++++++
 arch/ppc/include/asm/fsl_ifc.h                     | 267 +++++++++++++++++++++
 arch/ppc/include/asm/fsl_law.h                     |   1 +
 arch/ppc/include/asm/processor.h                   |   3 +-
 arch/ppc/mach-mpc85xx/Kconfig                      |  69 ++++--
 arch/ppc/mach-mpc85xx/cpu_init.c                   | 134 +++++++++--
 arch/ppc/mach-mpc85xx/cpuid.c                      |   1 +
 arch/ppc/mach-mpc85xx/fsl_gpio.c                   |  19 ++
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   9 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |  13 +-
 arch/ppc/mach-mpc85xx/speed.c                      |  38 ++-
 22 files changed, 1091 insertions(+), 57 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/config.h
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/ddr.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/config
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/law.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/tlb.c
 create mode 100644 arch/ppc/configs/p1010rdb_defconfig
 create mode 100644 arch/ppc/include/asm/fsl_ifc.h

--
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
