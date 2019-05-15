Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQnlD-0000RL-MJ
 for barebox@lists.infradead.org; Wed, 15 May 2019 06:51:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 May 2019 08:51:27 +0200
Message-Id: <20190515065127.20914-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] spi: Kconfig: remove dependency list from Freescale QSPI
 controller
To: Barebox List <barebox@lists.infradead.org>

The dependency list for the Freescale QSPI controller doesn't match
the SoCs the hardware is in at all. Remove the dependency entirely as
the driver builds on all machines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index d687105ea4..86411a76ff 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -27,7 +27,6 @@ config DRIVER_SPI_ATMEL
 
 config DRIVER_SPI_FSL_QUADSPI
 	bool "Freescale QSPI controller"
-	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE
 	depends on SPI_MEM
 	help
 	  This enables support for the Quad SPI controller in master mode.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
