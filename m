Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FL-E8
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:34 +0200
Message-Id: <1376731537-12102-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
References: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] ARM: MXS: move iomux definitions to iomux.h
To: barebox@lists.infradead.org

mach/gpio.h is for the gpio API, so move unrelated stuff
away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c     |  1 +
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  1 +
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  1 +
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  1 +
 arch/arm/boards/karo-tx28/tx28-stk5.c              |  1 +
 arch/arm/boards/karo-tx28/tx28.c                   |  1 +
 arch/arm/mach-mxs/include/mach/gpio.h              | 11 --------
 arch/arm/mach-mxs/include/mach/iomux.h             | 30 ++++++++++++++++++++++
 arch/arm/mach-mxs/iomux-imx.c                      |  1 +
 9 files changed, 37 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/iomux.h

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index b029261..3b97551 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -30,6 +30,7 @@
 #include <mach/mci.h>
 #include <mach/fb.h>
 #include <mach/usb.h>
+#include <mach/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 47f7031..3b82760 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -26,6 +26,7 @@
 #include <mach/mci.h>
 #include <usb/fsl_usb2.h>
 #include <mach/usb.h>
+#include <mach/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index dfb1878..606ff46 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -29,6 +29,7 @@
 #include <mach/iomux-imx28.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
+#include <mach/iomux.h>
 #include <mach/ocotp.h>
 #include <mach/devices.h>
 #include <spi/spi.h>
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index ce59a2a..dc8a099 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -35,6 +35,7 @@
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/mci.h>
+#include <mach/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index a1b161a..8e8b62c 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -28,6 +28,7 @@
 #include <mach/mci.h>
 #include <mach/fb.h>
 #include <mach/ocotp.h>
+#include <mach/iomux.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA,
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 4cacca3..198d212 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -22,6 +22,7 @@
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
 #include <mach/devices.h>
+#include <mach/iomux.h>
 #include <asm/mmu.h>
 
 /* setup the CPU card internal signals */
diff --git a/arch/arm/mach-mxs/include/mach/gpio.h b/arch/arm/mach-mxs/include/mach/gpio.h
index 4e7c8fe..8643c98 100644
--- a/arch/arm/mach-mxs/include/mach/gpio.h
+++ b/arch/arm/mach-mxs/include/mach/gpio.h
@@ -16,17 +16,6 @@
 #ifndef __ASM_MACH_GPIO_H
 #define __ASM_MACH_GPIO_H
 
-#include <types.h>
-
-#if defined CONFIG_ARCH_IMX23
-# include <mach/iomux-imx23.h>
-#endif
-#if defined CONFIG_ARCH_IMX28
-# include <mach/iomux-imx28.h>
-#endif
-
 #include <asm-generic/gpio.h>
 
-void imx_gpio_mode(uint32_t);
-
 #endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-mxs/include/mach/iomux.h b/arch/arm/mach-mxs/include/mach/iomux.h
new file mode 100644
index 0000000..84496c6
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/iomux.h
@@ -0,0 +1,30 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __ASM_MACH_IOMUX_H
+#define __ASM_MACH_IOMUX_H
+
+#include <types.h>
+
+#if defined CONFIG_ARCH_IMX23
+# include <mach/iomux-imx23.h>
+#endif
+#if defined CONFIG_ARCH_IMX28
+# include <mach/iomux-imx28.h>
+#endif
+
+void imx_gpio_mode(uint32_t);
+
+#endif /* __ASM_MACH_IOMUX_H */
diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index 3d26302..b8b69b3 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -18,6 +18,7 @@
 #include <gpio.h>
 #include <errno.h>
 #include <io.h>
+#include <mach/iomux.h>
 #include <stmp-device.h>
 #include <mach/imx-regs.h>
 
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
