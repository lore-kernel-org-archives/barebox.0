Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q4-6V
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:40 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:13 +0200
Message-Id: <1346660298-18148-7-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 06/11] ARM i.MX27: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    1 +
 arch/arm/mach-imx/imx27.c |   17 ++++++-----------
 2 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index eb7518f..fcb5b27 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -164,6 +164,7 @@ config ARCH_IMX25
 
 config ARCH_IMX27
 	bool "i.MX27"
+	select GPIOLIB
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
 
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 1af291d..7930f73 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -28,17 +28,6 @@ int imx_silicon_revision(void)
 	return CID >> 28;
 }
 
-void *imx_gpio_base[] = {
-	(void *)0x10015000,
-	(void *)0x10015100,
-	(void *)0x10015200,
-	(void *)0x10015300,
-	(void *)0x10015400,
-	(void *)0x10015500,
-};
-
-int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
-
 /*
  * Initialize MAX on i.MX27. necessary to give the DMA engine
  * higher priority to the memory than the CPU. Needed for proper
@@ -86,6 +75,12 @@ static int imx27_init(void)
 
 	imx27_init_max();
 
+	add_generic_device("imx-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx27_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
