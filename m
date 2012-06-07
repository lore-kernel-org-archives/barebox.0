Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Scjt8-0006ZC-SS
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 21:05:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 23:04:54 +0200
Message-Id: <1339103098-32102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mxs NAND support
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

The following series adds NAND support for i.MX23/28. Written by Marek
Vasut for U-Boot, adopted for barebox and polished by Wolfram, common
reset function added and posted by me.

Sascha

----------------------------------------------------------------
Sascha Hauer (1):
      ARM mxs: Add mxs_reset_block function

Wolfram Sang (3):
      dma: add mxs-apbh-dma driver
      mtd nand: add mxs-nand driver
      ARM mxs: add bcb command to create 'boot control block' for NAND boot

 arch/arm/mach-mxs/Kconfig                    |    8 +
 arch/arm/mach-mxs/Makefile                   |    3 +-
 arch/arm/mach-mxs/bcb.c                      |  399 ++++++++
 arch/arm/mach-mxs/common.c                   |   33 +
 arch/arm/mach-mxs/include/mach/clock-imx23.h |    1 +
 arch/arm/mach-mxs/include/mach/clock-imx28.h |    1 +
 arch/arm/mach-mxs/include/mach/dma.h         |  145 +++
 arch/arm/mach-mxs/include/mach/imx23-regs.h  |    3 +
 arch/arm/mach-mxs/include/mach/imx28-regs.h  |    4 +-
 arch/arm/mach-mxs/include/mach/mxs.h         |    6 +
 arch/arm/mach-mxs/speed-imx23.c              |   19 +
 arch/arm/mach-mxs/speed-imx28.c              |   19 +
 drivers/Kconfig                              |    1 +
 drivers/Makefile                             |    1 +
 drivers/dma/Kconfig                          |    8 +
 drivers/dma/Makefile                         |    1 +
 drivers/dma/apbh_dma.c                       |  598 ++++++++++++
 drivers/mtd/nand/Kconfig                     |    5 +
 drivers/mtd/nand/Makefile                    |    2 +
 drivers/mtd/nand/nand_mxs.c                  | 1257 ++++++++++++++++++++++++++
 20 files changed, 2512 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-mxs/bcb.c
 create mode 100644 arch/arm/mach-mxs/common.c
 create mode 100644 arch/arm/mach-mxs/include/mach/dma.h
 create mode 100644 arch/arm/mach-mxs/include/mach/mxs.h
 create mode 100644 drivers/dma/Kconfig
 create mode 100644 drivers/dma/Makefile
 create mode 100644 drivers/dma/apbh_dma.c
 create mode 100644 drivers/mtd/nand/nand_mxs.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
