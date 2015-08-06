Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNJHa-0008HJ-QT
 for barebox@lists.infradead.org; Thu, 06 Aug 2015 11:24:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Aug 2015 13:23:51 +0200
Message-Id: <1438860232-26898-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438860232-26898-1-git-send-email-s.hauer@pengutronix.de>
References: <1438860232-26898-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] gpio: Drop asm-generic/gpio.h
To: Barebox List <barebox@lists.infradead.org>

Since we no longer have custom gpio function prototypes we can
drop the prototypes from asm-generic/gpio.h can add them to
include/gpio.h instead. While at it add static inline dummy wrappers
for !CONFIG_GENERIC_GPIO so that code using gpios can compile without
gpio support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/gpio.h               | 10 ----------
 arch/arm/mach-at91/include/mach/gpio.h    |  2 --
 arch/arm/mach-ep93xx/include/mach/gpio.h  |  1 -
 arch/arm/mach-mxs/include/mach/gpio.h     | 21 ---------------------
 arch/arm/mach-pxa/include/mach/gpio.h     |  1 -
 arch/arm/mach-samsung/include/mach/gpio.h | 18 ------------------
 arch/mips/include/asm/gpio.h              |  6 ------
 arch/ppc/mach-mpc85xx/include/mach/gpio.h |  2 --
 include/asm-generic/gpio.h                |  9 ---------
 include/gpio.h                            | 24 +++++++++++++++++++++++-
 10 files changed, 23 insertions(+), 71 deletions(-)
 delete mode 100644 arch/arm/include/asm/gpio.h
 delete mode 100644 arch/arm/mach-ep93xx/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-mxs/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/gpio.h
 delete mode 100644 arch/mips/include/asm/gpio.h
 delete mode 100644 include/asm-generic/gpio.h

diff --git a/arch/arm/include/asm/gpio.h b/arch/arm/include/asm/gpio.h
deleted file mode 100644
index b3c1efe..0000000
--- a/arch/arm/include/asm/gpio.h
+++ /dev/null
@@ -1,10 +0,0 @@
-#ifndef _ARCH_ARM_GPIO_H
-#define _ARCH_ARM_GPIO_H
-
-#ifndef CONFIG_GPIOLIB
-#include <mach/gpio.h>
-#else
-#include <asm-generic/gpio.h>
-#endif
-
-#endif /* _ARCH_ARM_GPIO_H */
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 4e9d686..bdc0cb6 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -7,8 +7,6 @@
 #ifndef __AT91_GPIO_H__
 #define __AT91_GPIO_H__
 
-#include <asm-generic/gpio.h>
-
 #define MAX_NB_GPIO_PER_BANK	32
 
 static inline unsigned pin_to_bank(unsigned pin)
diff --git a/arch/arm/mach-ep93xx/include/mach/gpio.h b/arch/arm/mach-ep93xx/include/mach/gpio.h
deleted file mode 100644
index 306ab4c..0000000
--- a/arch/arm/mach-ep93xx/include/mach/gpio.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/gpio.h>
diff --git a/arch/arm/mach-mxs/include/mach/gpio.h b/arch/arm/mach-mxs/include/mach/gpio.h
deleted file mode 100644
index 8643c98..0000000
--- a/arch/arm/mach-mxs/include/mach/gpio.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert - Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __ASM_MACH_GPIO_H
-#define __ASM_MACH_GPIO_H
-
-#include <asm-generic/gpio.h>
-
-#endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/arm/mach-pxa/include/mach/gpio.h b/arch/arm/mach-pxa/include/mach/gpio.h
index 950bb1a..e6724e1 100644
--- a/arch/arm/mach-pxa/include/mach/gpio.h
+++ b/arch/arm/mach-pxa/include/mach/gpio.h
@@ -20,7 +20,6 @@
 #ifndef __ASM_ARCH_PXA_GPIO_H
 #define __ASM_ARCH_PXA_GPIO_H
 
-#include <asm-generic/gpio.h>
 #include <mach/hardware.h>
 
 #define GPIO_REGS_VIRT	(0x40E00000)
diff --git a/arch/arm/mach-samsung/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
deleted file mode 100644
index 3920667..0000000
--- a/arch/arm/mach-samsung/include/mach/gpio.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef __ASM_MACH_GPIO_H
-#define __ASM_MACH_GPIO_H
-
-#include <asm-generic/gpio.h>
-
-#endif /* __ASM_MACH_GPIO_H */
diff --git a/arch/mips/include/asm/gpio.h b/arch/mips/include/asm/gpio.h
deleted file mode 100644
index 41a9589..0000000
--- a/arch/mips/include/asm/gpio.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef _ARCH_MIPS_GPIO_H
-#define _ARCH_MIPS_GPIO_H
-
-#include <asm-generic/gpio.h>
-
-#endif /* _ARCH_MIPS_GPIO_H */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gpio.h b/arch/ppc/mach-mpc85xx/include/mach/gpio.h
index 61f6349..b41ecc5 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/gpio.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/gpio.h
@@ -10,8 +10,6 @@
 #ifndef _MACH_PPC_GPIO_H
 #define _MACH_PPC_GPIO_H
 
-#include <asm-generic/gpio.h>
-
 extern void fsl_enable_gpiout(void);
 
 #endif /* _MACH_PPC_GPIO_H */
diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
deleted file mode 100644
index 7674970..0000000
--- a/include/asm-generic/gpio.h
+++ /dev/null
@@ -1,9 +0,0 @@
-#ifndef __ASM_GENERIC_GPIO_H
-#define __ASM_GENERIC_GPIO_H
-
-void gpio_set_value(unsigned gpio, int value);
-int gpio_get_value(unsigned gpio);
-int gpio_direction_output(unsigned gpio, int value);
-int gpio_direction_input(unsigned gpio);
-
-#endif /* __ASM_GENERIC_GPIO_H */
diff --git a/include/gpio.h b/include/gpio.h
index f116ea6..2fb320e 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -1,7 +1,29 @@
 #ifndef __GPIO_H
 #define __GPIO_H
 
-#include <asm/gpio.h>
+#ifdef CONFIG_GENERIC_GPIO
+void gpio_set_value(unsigned gpio, int value);
+int gpio_get_value(unsigned gpio);
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+#else
+static inline void gpio_set_value(unsigned gpio, int value)
+{
+}
+static inline int gpio_get_value(unsigned gpio)
+{
+	return 0;
+}
+static inline int gpio_direction_output(unsigned gpio, int value);
+{
+	return -EINVAL;
+}
+
+static inline int gpio_direction_input(unsigned gpio)
+{
+	return -EINVAL;
+}
+#endif
 
 #define ARCH_NR_GPIOS 256
 
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
