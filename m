Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PV0LO-0007Km-JX
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 11:25:31 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0007h3-I2
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0000Qv-Fu
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 Dec 2010 12:25:16 +0100
Message-Id: <1292930721-31734-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/9] ARM STM/i.MX: Setting the iomux needs at least 32 bit.
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/gpio.h |    4 +++-
 arch/arm/mach-stm/iomux-imx.c         |    2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/gpio.h b/arch/arm/mach-stm/include/mach/gpio.h
index 5615b67..97566a2 100644
--- a/arch/arm/mach-stm/include/mach/gpio.h
+++ b/arch/arm/mach-stm/include/mach/gpio.h
@@ -20,6 +20,8 @@
 #ifndef __ASM_MACH_GPIO_H
 #define __ASM_MACH_GPIO_H
 
+#include <types.h>
+
 #if defined CONFIG_ARCH_IMX23
 # include <mach/iomux-imx23.h>
 #endif
@@ -27,6 +29,6 @@
 # include <mach/iomux-imx28.h>
 #endif
 
-void imx_gpio_mode(unsigned);
+void imx_gpio_mode(uint32_t);
 
 #endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-stm/iomux-imx.c b/arch/arm/mach-stm/iomux-imx.c
index 2ebe058..85e9684 100644
--- a/arch/arm/mach-stm/iomux-imx.c
+++ b/arch/arm/mach-stm/iomux-imx.c
@@ -79,7 +79,7 @@ static unsigned calc_output_reg(unsigned no)
 /**
  * @param[in] m One of the defines from iomux-mx23.h to configure *one* pin
  */
-void imx_gpio_mode(unsigned m)
+void imx_gpio_mode(uint32_t m)
 {
 	uint32_t reg;
 	unsigned gpio_pin, reg_offset;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
