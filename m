Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q8-6w
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:43 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:18 +0200
Message-Id: <1346660298-18148-12-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 11/11] ARM i.MX6: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    1 +
 arch/arm/mach-imx/imx6.c  |   26 ++++++++++++++------------
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0c09b57..eb4c2ae 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -194,6 +194,7 @@ config ARCH_IMX53
 config ARCH_IMX6
 	bool "i.MX6"
 	select ARCH_HAS_FEC_IMX
+	select GPIOLIB
 	select CPU_V7
 
 endchoice
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index a443343..80f558e 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -23,18 +23,6 @@
 
 #include "gpio.h"
 
-void *imx_gpio_base[] = {
-	(void *)MX6_GPIO1_BASE_ADDR,
-	(void *)MX6_GPIO2_BASE_ADDR,
-	(void *)MX6_GPIO3_BASE_ADDR,
-	(void *)MX6_GPIO4_BASE_ADDR,
-	(void *)MX6_GPIO5_BASE_ADDR,
-	(void *)MX6_GPIO6_BASE_ADDR,
-	(void *)MX6_GPIO7_BASE_ADDR,
-};
-
-int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
-
 void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
@@ -69,3 +57,17 @@ void imx6_init_lowlevel(void)
 	writel(0xffffffff, 0x020c407c);
 	writel(0xffffffff, 0x020c4080);
 }
+
+static int imx6_init(void)
+{
+	add_generic_device("imx-gpio", 0, NULL, MX6_GPIO1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, MX6_GPIO2_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, MX6_GPIO3_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, MX6_GPIO4_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 4, NULL, MX6_GPIO5_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 5, NULL, MX6_GPIO6_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 6, NULL, MX6_GPIO7_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(imx6_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
