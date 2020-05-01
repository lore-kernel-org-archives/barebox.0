Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYDN-0003r3-LN
 for barebox@lists.infradead.org; Fri, 01 May 2020 16:08:38 +0000
Received: by mail-lf1-x142.google.com with SMTP id t11so4205147lfe.4
 for <barebox@lists.infradead.org>; Fri, 01 May 2020 09:08:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 May 2020 19:08:30 +0300
Message-Id: <20200501160830.11990-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] spi: Kconfig: drop unneeded dependency
To: barebox@lists.infradead.org

The 'config DRIVER_SPI_MXS' section is already under 'if SPI'
so 'depends on SPI' is unneeded.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/spi/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index c696213f50..a53b961b89 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -77,7 +77,6 @@ config DRIVER_SPI_IMX_2_3
 config DRIVER_SPI_MXS
 	bool "i.MX (23,28) SPI Master driver"
 	depends on ARCH_IMX28
-	depends on SPI
 
 config DRIVER_SPI_MVEBU
 	bool "Marvell MVEBU SoC SPI master driver"
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
