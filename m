Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FN-Dc
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:37 +0200
Message-Id: <1376731537-12102-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: remove include of mach/gpio.h for gpiolib users
To: barebox@lists.infradead.org

gpiolib user have nothing to define in their machine
specific gpio.h, so do not include it.

The only thing they could define would be ARCH_NR_GPIOS,
but currently no architecture defines it. Should an architecure
feel the need to do it this would be a good opportunity to
get rid of this limitation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/gpio.h                | 5 ++++-
 arch/arm/mach-bcm2835/include/mach/gpio.h  | 1 -
 arch/arm/mach-clps711x/include/mach/gpio.h | 3 ---
 arch/arm/mach-highbank/include/mach/gpio.h | 1 -
 arch/arm/mach-imx/include/mach/gpio.h      | 6 ------
 arch/arm/mach-mvebu/include/mach/gpio.h    | 6 ------
 arch/arm/mach-omap/include/mach/gpio.h     | 1 -
 arch/arm/mach-tegra/include/mach/gpio.h    | 1 -
 8 files changed, 4 insertions(+), 20 deletions(-)
 delete mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-clps711x/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-imx/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-mvebu/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-omap/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-tegra/include/mach/gpio.h

diff --git a/arch/arm/include/asm/gpio.h b/arch/arm/include/asm/gpio.h
index 166a7a3..b3c1efe 100644
--- a/arch/arm/include/asm/gpio.h
+++ b/arch/arm/include/asm/gpio.h
@@ -1,7 +1,10 @@
 #ifndef _ARCH_ARM_GPIO_H
 #define _ARCH_ARM_GPIO_H
 
-/* not all ARM platforms necessarily support this API ... */
+#ifndef CONFIG_GPIOLIB
 #include <mach/gpio.h>
+#else
+#include <asm-generic/gpio.h>
+#endif
 
 #endif /* _ARCH_ARM_GPIO_H */
diff --git a/arch/arm/mach-bcm2835/include/mach/gpio.h b/arch/arm/mach-bcm2835/include/mach/gpio.h
deleted file mode 100644
index 306ab4c..0000000
--- a/arch/arm/mach-bcm2835/include/mach/gpio.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/gpio.h>
diff --git a/arch/arm/mach-clps711x/include/mach/gpio.h b/arch/arm/mach-clps711x/include/mach/gpio.h
deleted file mode 100644
index 3428fe5..0000000
--- a/arch/arm/mach-clps711x/include/mach/gpio.h
+++ /dev/null
@@ -1,3 +0,0 @@
-#include <asm-generic/gpio.h>
-
-#define CLPS711X_GPIO(prt,bit)	((prt) * 8 + (bit))
diff --git a/arch/arm/mach-highbank/include/mach/gpio.h b/arch/arm/mach-highbank/include/mach/gpio.h
deleted file mode 100644
index 306ab4c..0000000
--- a/arch/arm/mach-highbank/include/mach/gpio.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/gpio.h>
diff --git a/arch/arm/mach-imx/include/mach/gpio.h b/arch/arm/mach-imx/include/mach/gpio.h
deleted file mode 100644
index fee693e..0000000
--- a/arch/arm/mach-imx/include/mach/gpio.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_ARCH_GPIO_H
-#define __ASM_ARCH_GPIO_H
-
-#include <asm-generic/gpio.h>
-
-#endif /* __ASM_ARCH_GPIO_H */
diff --git a/arch/arm/mach-mvebu/include/mach/gpio.h b/arch/arm/mach-mvebu/include/mach/gpio.h
deleted file mode 100644
index fee693e..0000000
--- a/arch/arm/mach-mvebu/include/mach/gpio.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_ARCH_GPIO_H
-#define __ASM_ARCH_GPIO_H
-
-#include <asm-generic/gpio.h>
-
-#endif /* __ASM_ARCH_GPIO_H */
diff --git a/arch/arm/mach-omap/include/mach/gpio.h b/arch/arm/mach-omap/include/mach/gpio.h
deleted file mode 100644
index 306ab4c..0000000
--- a/arch/arm/mach-omap/include/mach/gpio.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/gpio.h>
diff --git a/arch/arm/mach-tegra/include/mach/gpio.h b/arch/arm/mach-tegra/include/mach/gpio.h
deleted file mode 100644
index 306ab4c..0000000
--- a/arch/arm/mach-tegra/include/mach/gpio.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/gpio.h>
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
