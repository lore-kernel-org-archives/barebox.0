Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOTES-0006Nz-D9
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 13:00:21 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1805EDC237B
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 15:06:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 14:57:58 +0200
Message-Id: <1350478678-28500-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] spi: move the depends on SPI to if SPI and keep config
 alphanum ordered
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/Kconfig |   25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index dc17ead..b003290 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -4,10 +4,19 @@ config SPI
 	bool "Enable SPI driver support"
 	default y
 
+if SPI
+
+config DRIVER_SPI_ALTERA
+	bool "Altera SPI Master driver"
+	depends on NIOS2
+
+config DRIVER_SPI_ATMEL
+	bool "Atmel (AT91) SPI Master driver"
+	depends on ARCH_AT91
+
 config DRIVER_SPI_IMX
 	bool "i.MX SPI Master driver"
 	depends on ARCH_IMX
-	depends on SPI
 
 config DRIVER_SPI_IMX_0_0
 	bool
@@ -24,20 +33,10 @@ config DRIVER_SPI_IMX_2_3
 	depends on ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
 	default y
 
-config DRIVER_SPI_ALTERA
-	bool "Altera SPI Master driver"
-	depends on NIOS2
-	depends on SPI
-
-config DRIVER_SPI_ATMEL
-	bool "Atmel (AT91) SPI Master driver"
-	depends on ARCH_AT91
-	depends on SPI
-
-
 config DRIVER_SPI_OMAP3
 	bool "OMAP3 McSPI Master driver"
 	depends on ARCH_OMAP3
-	depends on SPI
+
+endif
 
 endmenu
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
