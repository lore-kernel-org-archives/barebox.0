Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q7-7m
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:40 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:15 +0200
Message-Id: <1346660298-18148-9-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 08/11] ARM i.MX35: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    1 +
 arch/arm/mach-imx/imx35.c |   12 ++++--------
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 129960f..f06788d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -176,6 +176,7 @@ config ARCH_IMX31
 config ARCH_IMX35
 	bool "i.MX35"
 	select CPU_V6
+	select GPIOLIB
 	select ARCH_HAS_FEC_IMX
 
 config ARCH_IMX51
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index fe0c99e..7bc5401 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -25,14 +25,6 @@
 
 #include "gpio.h"
 
-void *imx_gpio_base[] = {
-	(void *)0x53fcc000,
-	(void *)0x53fd0000,
-	(void *)0x53fa4000,
-};
-
-int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
-
 int imx_silicon_revision()
 {
 	uint32_t reg;
@@ -66,6 +58,10 @@ static int imx35_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 coredevice_initcall(imx35_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
