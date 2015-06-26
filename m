Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Z2w-0001Yj-Pt
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 19:12:19 +0000
Received: from tellur.intern.lynxeye.de (p57B5F16F.dip0.t-ipconnect.de
 [87.181.241.111]) by lynxeye.de (Postfix) with ESMTPA id 1559626C2004
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 20:59:28 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Jun 2015 20:59:23 +0200
Message-Id: <1435345163-16565-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
References: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/4] mtd: spi-nor: depend on SPI
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mtd/spi-nor/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index a84591f..7594c1c 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -1,6 +1,7 @@
 menuconfig MTD_SPI_NOR
 	tristate "SPI-NOR device support"
 	depends on MTD
+	depends on SPI
 	help
 	  This is the framework for the SPI NOR which can be used by the SPI
 	  device drivers and the SPI-NOR device driver.
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
