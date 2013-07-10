Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4N-0001jX-BT
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Uwt40-0002Tj-Pe
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 14:00:04 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Uwt3y-0004RZ-Uq
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 14:00:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:50 +0200
Message-Id: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] prepare i.MX6 NAND support
To: barebox@lists.infradead.org


The i.MX6 uses the same GPMI Nand controller as the i.MX23/28.
We already have this driver in the tree. This series prepares
using it on i.MX6 aswell.
This series is only preparation, i.MX6 Nand support itself has
to wait a few more days.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      ARM: MXS: introduce stmp device support
      dma: apbh: introduce private struct
      dma: apbh-dma: move header file to common location
      dma: apbh: remove CONFIG_ARCH_DMA_PIO_WORDS
      dma: apbh: Turn into a driver
      dma: apbh: add devicetree probe support
      dma: apbh: cleanup includes
      mtd: nand: gpmi: use io_base instead of MXS_GPMI_BASE
      mtd: nand: gpmi: cleanup includes
      ARM: mxs: Add convenience wrapper to register mxs_nand device
      mtd: nand: gpmi: replace MXS_BCH_BASE with driver resources

 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   4 +-
 arch/arm/boards/karo-tx28/tx28.c                   |   4 +-
 arch/arm/mach-mxs/Kconfig                          |   2 +
 arch/arm/mach-mxs/Makefile                         |   2 +-
 arch/arm/mach-mxs/imx.c                            |   3 +-
 arch/arm/mach-mxs/include/mach/devices.h           |  47 ++++++
 arch/arm/mach-mxs/include/mach/imx-regs.h          |   5 -
 arch/arm/mach-mxs/include/mach/mxs.h               |   6 -
 arch/arm/mach-mxs/iomux-imx.c                      |  27 ++--
 arch/arm/mach-mxs/ocotp.c                          |   9 +-
 arch/arm/mach-mxs/power.c                          |   5 +-
 arch/arm/mach-mxs/soc-imx23.c                      |   2 +-
 arch/arm/mach-mxs/soc-imx28.c                      |   2 +-
 drivers/dma/Kconfig                                |   1 +
 drivers/dma/apbh_dma.c                             | 176 ++++++++++++++-------
 drivers/mci/mxs.c                                  |   4 +-
 drivers/mtd/nand/nand_mxs.c                        |  40 +++--
 drivers/serial/serial_auart.c                      |   2 +-
 drivers/spi/mxs_spi.c                              |  27 ++--
 drivers/video/stm.c                                |  11 +-
 .../include/mach/dma.h => include/dma/apbh-dma.h   |   9 +-
 include/driver.h                                   |   2 +
 include/stmp-device.h                              |  22 +++
 lib/Kconfig                                        |   3 +
 lib/Makefile                                       |   1 +
 arch/arm/mach-mxs/common.c => lib/stmp-device.c    |  29 ++--
 26 files changed, 290 insertions(+), 155 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/devices.h
 delete mode 100644 arch/arm/mach-mxs/include/mach/mxs.h
 rename arch/arm/mach-mxs/include/mach/dma.h => include/dma/apbh-dma.h (95%)
 create mode 100644 include/stmp-device.h
 rename arch/arm/mach-mxs/common.c => lib/stmp-device.c (51%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
