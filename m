Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzA-0006oR-AZ
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-Ur
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:43 +0100
Message-Id: <20191129151505.23946-18-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 17/39] mci: MCI_IMX_ESDHC_PBL has no dependency on MCI
To: barebox@lists.infradead.org

While it is located in the MCI deirectory, it has no direct dependency
on the MCI core, so it should not be under the MCI condition in Kconfig.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/Makefile    | 2 +-
 drivers/mci/Kconfig | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/Makefile b/drivers/Makefile
index 5a52225ee07e..b0d3a3f2006d 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -9,7 +9,7 @@ obj-y	+= usb/
 obj-$(CONFIG_DISK) += ata/
 obj-$(CONFIG_SPI) += spi/
 obj-$(CONFIG_I2C) += i2c/
-obj-$(CONFIG_MCI) += mci/
+obj-y += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
 obj-y	+= clocksource/
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 4a71a4609763..33b700d7a629 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -97,9 +97,6 @@ config MCI_IMX_ESDHC_PIO
 	help
 	  mostly useful for debugging. Normally you should use DMA.
 
-config MCI_IMX_ESDHC_PBL
-	bool
-
 config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
 	depends on ARCH_OMAP4 || ARCH_OMAP3 || ARCH_AM33XX
@@ -163,3 +160,6 @@ config MCI_STM32_SDMMC2
 	  say Y or M here.
 
 endif
+
+config MCI_IMX_ESDHC_PBL
+	bool
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
