Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclr-0003FP-FE
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:35 +0200
Message-Id: <1376731537-12102-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM: Samsung: move iomux definitions to iomux.h
To: barebox@lists.infradead.org

mach/gpio.h is for the gpio API, so move unrelated stuff
away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  1 +
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |  1 +
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |  1 +
 .../friendlyarm-tiny6410/development-board.c       |  1 +
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |  1 +
 arch/arm/mach-samsung/gpio-s3c24x0.c               |  1 +
 arch/arm/mach-samsung/gpio-s3c64xx.c               |  1 +
 arch/arm/mach-samsung/gpio-s5pcxx.c                |  1 +
 arch/arm/mach-samsung/include/mach/gpio.h          | 12 ----------
 arch/arm/mach-samsung/include/mach/iomux.h         | 28 ++++++++++++++++++++++
 10 files changed, 36 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux.h

diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index aec3e67..cf96183 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -35,6 +35,7 @@
 #include <asm/sections.h>
 #include <io.h>
 #include <gpio.h>
+#include <mach/iomux.h>
 #include <mach/s3c-iomap.h>
 #include <mach/devices-s3c24xx.h>
 #include <mach/s3c24xx-nand.h>
diff --git a/arch/arm/boards/friendlyarm-mini6410/mini6410.c b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
index 01437ac..ebe97f0 100644
--- a/arch/arm/boards/friendlyarm-mini6410/mini6410.c
+++ b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
@@ -21,6 +21,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/devices-s3c64xx.h>
 #include <mach/s3c-generic.h>
+#include <mach/iomux.h>
 
 /*
  * dm9000 network controller onboard
diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
index fb144f5..c78e9df 100644
--- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
+++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
@@ -35,6 +35,7 @@
 #include <io.h>
 #include <nand.h>
 #include <asm/armlinux.h>
+#include <mach/iomux.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-clocks.h>
 #include <mach/s3c-generic.h>
diff --git a/arch/arm/boards/friendlyarm-tiny6410/development-board.c b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
index bf339d3..2bcb7df 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/development-board.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
@@ -26,6 +26,7 @@
 #include <dm9000.h>
 #include <mach/devices-s3c64xx.h>
 #include <mach/s3c-generic.h>
+#include <mach/iomux.h>
 
 #include "tiny6410.h"
 
diff --git a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
index db13c06..97dc322 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
@@ -19,6 +19,7 @@
 #include <asm/armlinux.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
+#include <mach/iomux.h>
 
 static const unsigned tiny6410_pin_usage[] = {
 	/* UART0 */
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
index 36b2db4..f62588f 100644
--- a/arch/arm/mach-samsung/gpio-s3c24x0.c
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -17,6 +17,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/gpio.h>
 #include <mach/s3c24xx-gpio.h>
+#include <mach/iomux.h>
 
 static const unsigned char group_offset[] =
 {
diff --git a/arch/arm/mach-samsung/gpio-s3c64xx.c b/arch/arm/mach-samsung/gpio-s3c64xx.c
index ee68261..d70a871 100644
--- a/arch/arm/mach-samsung/gpio-s3c64xx.c
+++ b/arch/arm/mach-samsung/gpio-s3c64xx.c
@@ -23,6 +23,7 @@
 #include <errno.h>
 #include <io.h>
 #include <gpio.h>
+#include <mach/iomux.h>
 #include <mach/s3c-iomap.h>
 
 #define S3C_GPACON (S3C_GPIO_BASE)
diff --git a/arch/arm/mach-samsung/gpio-s5pcxx.c b/arch/arm/mach-samsung/gpio-s5pcxx.c
index 604a63f..1a422f1 100644
--- a/arch/arm/mach-samsung/gpio-s5pcxx.c
+++ b/arch/arm/mach-samsung/gpio-s5pcxx.c
@@ -24,6 +24,7 @@
 #include <errno.h>
 #include <io.h>
 #include <gpio.h>
+#include <mach/iomux.h>
 #include <mach/s3c-iomap.h>
 
 #define S3C_GPACON (S3C_GPIO_BASE)
diff --git a/arch/arm/mach-samsung/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
index 9e64a84..3920667 100644
--- a/arch/arm/mach-samsung/include/mach/gpio.h
+++ b/arch/arm/mach-samsung/include/mach/gpio.h
@@ -13,18 +13,6 @@
 #ifndef __ASM_MACH_GPIO_H
 #define __ASM_MACH_GPIO_H
 
-#ifdef CONFIG_ARCH_S3C24xx
-# include <mach/iomux-s3c24x0.h>
-#endif
-#ifdef CONFIG_ARCH_S3C64xx
-# include <mach/iomux-s3c64xx.h>
-#endif
-#ifdef CONFIG_ARCH_S5PCxx
-# include <mach/iomux-s5pcxx.h>
-#endif
-
 #include <asm-generic/gpio.h>
 
-void s3c_gpio_mode(unsigned);
-
 #endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-samsung/include/mach/iomux.h b/arch/arm/mach-samsung/include/mach/iomux.h
new file mode 100644
index 0000000..48651d8
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/iomux.h
@@ -0,0 +1,28 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __ASM_MACH_IOMUX_H
+#define __ASM_MACH_IOMUX_H
+
+#ifdef CONFIG_ARCH_S3C24xx
+# include <mach/iomux-s3c24x0.h>
+#endif
+#ifdef CONFIG_ARCH_S3C64xx
+# include <mach/iomux-s3c64xx.h>
+#endif
+#ifdef CONFIG_ARCH_S5PCxx
+# include <mach/iomux-s5pcxx.h>
+#endif
+
+void s3c_gpio_mode(unsigned);
+
+#endif /* __ASM_MACH_IOMUX_H */
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
