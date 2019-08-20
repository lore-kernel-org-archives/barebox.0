Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyEB-0006cD-Jn
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 07:06:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Aug 2019 09:06:36 +0200
Message-Id: <20190820070640.3526-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 0/4] extend support for SAMA5D27 SOM1 EK 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This patches are needed to make Quad SPI work on SAMA5D27 SOM1 EK.
Proper/fixed devicetree will be needed as well. Currently none of
upstream projects (kernel or u-boot) do not have all needed parts/fixes
to make QSPI work with this boards. All changes was ported from
linux4sam repository.

Oleksij Rempel (4):
  serial: atmel: set linux_console_name
  mtd: spi-nor: add UNLOCK_GLOBAL_BLOCK support
  mtd: spi-nor: add support for sst26vf series
  spi: add atmel-quadspi support

 drivers/mtd/spi-nor/spi-nor.c |  50 +++-
 drivers/serial/atmel.c        |   1 +
 drivers/spi/Kconfig           |   9 +
 drivers/spi/Makefile          |   1 +
 drivers/spi/atmel-quadspi.c   | 541 ++++++++++++++++++++++++++++++++++
 include/linux/mtd/spi-nor.h   |   1 +
 6 files changed, 602 insertions(+), 1 deletion(-)
 create mode 100644 drivers/spi/atmel-quadspi.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
