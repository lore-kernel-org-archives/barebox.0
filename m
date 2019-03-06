Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1T4W-0006qZ-Ck
 for barebox@lists.infradead.org; Wed, 06 Mar 2019 09:42:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Mar 2019 10:42:38 +0100
Message-Id: <20190306094239.29413-5-s.hauer@pengutronix.de>
In-Reply-To: <20190306094239.29413-1-s.hauer@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] ARM: rpi: move debug UART Kconfig settings
To: Barebox List <barebox@lists.infradead.org>

In contrast to other architectures, R.Pi debug UART config was placed
under the "System Type" menu, not under the "Debugging -> low-level
debugging port". This made this setting easy to miss when enabling low
level debug mesages.

While at it use the existing base address defines rather than defining
them again in Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-bcm283x/Kconfig                 | 20 -------------------
 arch/arm/mach-bcm283x/include/mach/debug_ll.h | 12 +++++++----
 common/Kconfig                                | 13 ++++++++++++
 3 files changed, 21 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index bb5f75dc90..9d6a7b2ec2 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -33,24 +33,4 @@ config MACH_RPI_CM3
 
 endmenu
 
-config MACH_RPI_DEBUG_UART_BASE
-	hex
-	default 0x20201000 if MACH_RPI_DEBUG_UART_RPI
-	default 0x3f201000 if MACH_RPI_DEBUG_UART_RPI2
-
-if DEBUG_LL
-
-choice
-	prompt "Lowlevel debug UART"
-
-config MACH_RPI_DEBUG_UART_RPI
-	bool "use RaspberryPi 1 compatible base"
-
-config MACH_RPI_DEBUG_UART_RPI2
-	bool "use RaspberryPi 2 and 3 compatible base"
-
-endchoice
-
-endif
-
 endif
diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index 2e95bf8320..2d2103e338 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -20,12 +20,16 @@
 
 #include <mach/platform.h>
 
-#ifndef CONFIG_MACH_RPI_DEBUG_UART_BASE
-#define CONFIG_MACH_RPI_DEBUG_UART_BASE 0
-#endif
+#ifdef CONFIG_DEBUG_RPI1_UART
+
+#define DEBUG_LL_UART_ADDR BCM2835_PL011_BASE
+#include <debug_ll/pl011.h>
 
-#define DEBUG_LL_UART_ADDR CONFIG_MACH_RPI_DEBUG_UART_BASE
+#elif defined CONFIG_DEBUG_RPI2_3_UART
 
+#define DEBUG_LL_UART_ADDR BCM2836_PL011_BASE
 #include <debug_ll/pl011.h>
 
+#endif
+
 #endif /* __MACH_BCM2835_DEBUG_LL_H__ */
diff --git a/common/Kconfig b/common/Kconfig
index 21b33f06f7..563cf15fb1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1159,6 +1159,19 @@ config DEBUG_SOCFPGA_UART1
 	  Say Y here if you want kernel low-level debugging support
 	  on SOCFPGA(Arria 10) based platforms.
 
+config DEBUG_RPI1_UART
+	bool "RaspberryPi 1 debug UART"
+	depends on ARCH_BCM283X
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 1 boards.
+
+config DEBUG_RPI2_UART
+	bool "RaspberryPi 2/3 debug UART"
+	depends on ARCH_BCM283X
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 2 and 3 boards.
 
 endchoice
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
