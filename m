Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKffh-00067w-Vl
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 09:32:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2019 11:32:41 +0200
Message-Id: <20191016093241.17382-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191015093347.5032-1-o.rempel@pengutronix.de>
References: <20191015093347.5032-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] fixup! mci: add support for stm32mp sd/mmc controller
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We need reset controller support in the driver, depend on it.
---
 drivers/mci/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 5b560310136a..4a71a4609763 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -156,6 +156,7 @@ config MMC_SPI_CRC_ON
 config MCI_STM32_SDMMC2
 	bool "STMicroelectronics STM32H7 SD/MMC Host Controller support"
 	depends on ARM_AMBA
+	depends on RESET_CONTROLLER
 	help
 	  This selects support for the SD/MMC controller on STM32H7 SoCs.
 	  If you have a board based on such a SoC and with a SD/MMC slot,
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
