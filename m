Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZJKf-0001jT-4U
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 16:34:30 +0000
Received: by mail-pg0-x243.google.com with SMTP id c194so10237835pga.12
 for <barebox@lists.infradead.org>; Wed, 10 Jan 2018 08:34:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 10 Jan 2018 08:34:07 -0800
Message-Id: <20180110163407.17552-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX: Select DRIVER_SPI_IMX_2_3 for i.MX7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Select DRIVER_SPI_IMX_2_3 for i.MX7 since that is the variant that's
being used.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index dd1b21451..84945744e 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -38,7 +38,7 @@ config DRIVER_SPI_IMX_0_7
 
 config DRIVER_SPI_IMX_2_3
 	bool
-	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
+	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARCH_IMX7
 	default y
 
 config DRIVER_SPI_MXS
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
