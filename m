Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q5-6X
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:42 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:12 +0200
Message-Id: <1346660298-18148-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346660298-18148-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346660298-18148-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 05/11] ARM i.MX25: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    1 +
 arch/arm/mach-imx/imx25.c |   13 ++++---------
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c069ae8..eb7518f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -158,6 +158,7 @@ config ARCH_IMX21
 
 config ARCH_IMX25
 	bool "i.MX25"
+	select GPIOLIB
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
 
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 19a2909..2c739b3 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -24,15 +24,6 @@
 
 #include "gpio.h"
 
-void *imx_gpio_base[] = {
-	(void *)0x53fcc000,
-	(void *)0x53fd0000,
-	(void *)0x53fa4000,
-	(void *)0x53f9c000,
-};
-
-int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
-
 u64 imx_uid(void)
 {
 	u64 uid = 0;
@@ -59,6 +50,10 @@ static int imx25_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
+	add_generic_device("imx-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x53f9c000, 0x1000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx25_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
