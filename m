Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1WI-00050n-Jz
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 08:36:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 09:36:03 +0100
Message-Id: <20200325083608.15676-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/5] Add fsl-dspi driver support
To: Barebox List <barebox@lists.infradead.org>

The fsl-dspi is a SPI core that is found on Freescale Layerscape SoCs. This
series adds support for it. It uses regmap to access registers and it's
connected in big-endian, so we need some regmap patches to support such
maps.

Sascha Hauer (5):
  regmap-mmio: Add missing pieces for 64bit support
  regmap-mmio: Add big endian support
  spi: validate spi messages
  spi: Add fsl-dspi driver
  mtd: spi-nor: Add support for cy15x104q

 drivers/base/regmap/internal.h    |   4 +
 drivers/base/regmap/regmap-mmio.c |  94 ++++-
 drivers/base/regmap/regmap.c      |  44 ++
 drivers/mtd/spi-nor/spi-nor.c     |   3 +
 drivers/spi/Kconfig               |   7 +
 drivers/spi/Makefile              |   1 +
 drivers/spi/spi-fsl-dspi.c        | 655 ++++++++++++++++++++++++++++++
 drivers/spi/spi.c                 |  46 +++
 include/regmap.h                  |  13 +
 include/spi/spi.h                 |   4 +
 10 files changed, 857 insertions(+), 14 deletions(-)
 create mode 100644 drivers/spi/spi-fsl-dspi.c

-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
