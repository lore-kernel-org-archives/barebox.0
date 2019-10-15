Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJDD-0007Ov-VI
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 09:33:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 15 Oct 2019 11:33:45 +0200
Message-Id: <20191015093347.5032-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 1/3] ARM: stm32mp: enable ARM_AMBA
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

It is needed for mci/sd/mmc driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 30a380f2f2..5e110bfff7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -199,6 +199,7 @@ config ARCH_STM32MP
 	select HAS_DEBUG_LL
 	select HAVE_CLK
 	select GPIOLIB
+	select ARM_AMBA
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
