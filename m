Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfqN-0003Kx-4C
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 09:43:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2019 11:43:44 +0200
Message-Id: <20191016094344.2091-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: stm32mp: select ARCH_HAS_RESET_CONTROLLER
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Many STM32 peripherals, including I2C, SPI, USB and SDMMC use the RCC
reset controller for reset. Enable ARCH_HAS_RESET_CONTROLLER, so drivers
depending on RESET_CONTROLLER become available for selection.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b227bb78b64f..16bd82fe6b9f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -217,6 +217,7 @@ config ARCH_STM32MP
 	select HAS_DEBUG_LL
 	select HAVE_CLK
 	select GPIOLIB
+	select ARCH_HAS_RESET_CONTROLLER
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
