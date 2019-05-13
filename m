Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQKrH-0005k6-Pq
 for barebox@lists.infradead.org; Mon, 13 May 2019 23:59:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so7253250pln.9
 for <barebox@lists.infradead.org>; Mon, 13 May 2019 16:59:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 May 2019 16:59:44 -0700
Message-Id: <20190513235944.19307-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] spi: Enable Freescale QSPI controller driver for VF610
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

VF610 is supported by this driver, so modify its Kconfig entry to
reflect that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index d687105ea..2e57457dc 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -27,7 +27,7 @@ config DRIVER_SPI_ATMEL
 
 config DRIVER_SPI_FSL_QUADSPI
 	bool "Freescale QSPI controller"
-	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE
+	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE || ARCH_VF610
 	depends on SPI_MEM
 	help
 	  This enables support for the Quad SPI controller in master mode.
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
