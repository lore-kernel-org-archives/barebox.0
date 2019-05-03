Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa2-00039c-0H
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:51 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-00087n-P9
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007Fe-72
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:50 +0200
Message-Id: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 00/10] spi: spi-mem and fsl-qspi support
To: Barebox List <barebox@lists.infradead.org>

Hi!

This series imports the spi-mem framework from linux into barebox.

The first patches sync the respective driver with linux to ease
porting of the following patches.
Then drivers/spi/spi.c is updated to use the spi-mem framework.
The Freescale QSPI controller driver, which uses this framework,
is ported from linux; the older driver was removed from mainline
linux and wasn't even working correctly.
Finally drivers/mtd/devices/m25p80.c is simplified by using spi-mem.

The series was tested with the Layerscape LS1046a and SocFPGA Cyclone5
SoCs.

Best regards,
Steffen

Steffen Trumtrar (10):
  mtd: spi-nor: cadence: add cqspi_set_protocol
  spi: Generalize SPI "master" to "controller"
  spi: Import more spi mode defines from Linux
  spi: Extend the core to ease integration of SPI memory controllers
  mtd: spi-nor: remove unused write_enable from write_reg
  mtd: spi-nor: remove unused read_xfer/write_xfer hooks
  spi: add driver for Freescale QSPI controller
  mtd: spi-nor: introduce SPI 1-2-2 and SPI 1-4-4 protocols
  mtd: spi-nor: provide default erase_sector implementation
  mtd: devices: m25p80: use the spi_mem_xx() API

 commands/spi.c                        |  16 +-
 drivers/mtd/devices/Kconfig           |   1 +-
 drivers/mtd/devices/m25p80.c          | 158 ++---
 drivers/mtd/spi-nor/cadence-quadspi.c | 257 ++++----
 drivers/mtd/spi-nor/spi-nor.c         | 669 +++++++++++++++------
 drivers/spi/Kconfig                   |  18 +-
 drivers/spi/Makefile                  |   2 +-
 drivers/spi/spi-fsl-qspi.c            | 869 +++++++++++++++++++++++++++-
 drivers/spi/spi-mem.c                 | 524 ++++++++++++++++-
 drivers/spi/spi.c                     | 110 ++-
 include/linux/mtd/spi-nor.h           | 230 +++++--
 include/linux/spi/spi-mem.h           | 307 ++++++++++-
 include/spi/spi.h                     |  95 ++-
 13 files changed, 2777 insertions(+), 479 deletions(-)
 create mode 100644 drivers/spi/spi-fsl-qspi.c
 create mode 100644 drivers/spi/spi-mem.c
 create mode 100644 include/linux/spi/spi-mem.h

base-commit: 9688b49cd3bc0b61a019e8e1311236c9975a0777
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
