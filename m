Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q1-1l
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:38 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:11 +0200
Message-Id: <1346660298-18148-5-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 04/11] ARM i.MX21: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    1 +
 arch/arm/mach-imx/imx21.c |   22 +++++++++++++---------
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 112dcb1..c069ae8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -153,6 +153,7 @@ config ARCH_IMX1
 
 config ARCH_IMX21
 	bool "i.MX21"
+	select GPIOLIB
 	select CPU_ARM926T
 
 config ARCH_IMX25
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index bbef33d..264477a 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -28,14 +28,18 @@ int imx_silicon_revision(void)
 	return CID;
 }
 
-void *imx_gpio_base[] = {
-	(void *)0x10015000,
-	(void *)0x10015100,
-	(void *)0x10015200,
-	(void *)0x10015300,
-	(void *)0x10015400,
-	(void *)0x10015500,
-};
+static int imx21_init(void)
+{
+	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
+			IORESOURCE_MEM, NULL);
 
-int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
+	add_generic_device("imx-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
 
+	return 0;
+}
+coredevice_initcall(imx21_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
