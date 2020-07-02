Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr1HJ-0008Py-G0
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 15:37:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 17:37:30 +0200
Message-Id: <20200702153730.24883-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: stm32mp: depend on ARCH_STM32MP for SoC drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The i2c, MCI and reset controller peripherals are STM32-specific.
There is no reason to ask uses on oldconfig about it, thus make them
depend on ARCH_STM32MP || COMPILE_TEST.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/Kconfig | 1 +
 drivers/mci/Kconfig        | 1 +
 drivers/reset/Kconfig      | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 21d2cb21cf5a..3bc8d1b8d2bc 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -59,5 +59,6 @@ config I2C_STM32
 	bool "STM32 I2C master driver"
 	select RESET_CONTROLLER
 	depends on HAVE_CLK
+	depends on ARCH_STM32MP || COMPILE_TEST
 
 endmenu
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 6ae1e812528c..d1695c678c30 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -177,6 +177,7 @@ config MCI_STM32_SDMMC2
 	bool "STMicroelectronics STM32H7 SD/MMC Host Controller support"
 	depends on ARM_AMBA
 	depends on RESET_CONTROLLER
+	depends on ARCH_STM32MP || COMPILE_TEST
 	help
 	  This selects support for the SD/MMC controller on STM32H7 SoCs.
 	  If you have a board based on such a SoC and with a SD/MMC slot,
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 9befc5e55f32..316ece9e7176 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -23,6 +23,7 @@ config RESET_IMX7
 
 config RESET_STM32
 	bool "STM32 Reset Driver"
+	depends on ARCH_STM32MP || COMPILE_TEST
 	help
 	  This enables the reset controller driver for STM32MP and STM32 MCUs.
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
