Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q0-0b
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:38 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:10 +0200
Message-Id: <1346660298-18148-4-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 03/11] ARM i.MX1: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    1 +
 arch/arm/mach-imx/imx1.c  |   18 +++++++++---------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ce5edaa..112dcb1 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -148,6 +148,7 @@ choice
 
 config ARCH_IMX1
 	bool "i.MX1"
+	select GPIOLIB
 	select CPU_ARM920T
 
 config ARCH_IMX21
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 742a260..bdd4f74 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -19,13 +19,13 @@
 
 #include "gpio.h"
 
-void *imx_gpio_base[] = {
-	(void *)0x0021c000,
-	(void *)0x0021c100,
-	(void *)0x0021c200,
-	(void *)0x0021c300,
-};
-
-int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
-
+static int imx1_init(void)
+{
+	add_generic_device("imx-gpio", 0, NULL, 0x0021c000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x0021c100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x0021c200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x0021c300, 0x100, IORESOURCE_MEM, NULL);
 
+	return 0;
+}
+coredevice_initcall(imx1_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
