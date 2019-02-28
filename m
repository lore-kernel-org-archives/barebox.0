Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gzK1u-0008B1-Bq
 for barebox@lists.infradead.org; Thu, 28 Feb 2019 11:39:12 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gzK1l-0006ay-SY
 for barebox@lists.infradead.org; Thu, 28 Feb 2019 12:39:01 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 28 Feb 2019 12:39:00 +0100
Message-Id: <20190228113900.16177-1-tomaz.solc@tablix.org>
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
Subject: [PATCH] ARM: rpi: refactor debug UART Kconfig settings.
To: barebox@lists.infradead.org

This fixes the following issues in the debug UART config for Raspberry
Pi boards:

When debug UART support is enabled, only R.Pi 1 or 2/3 boards
can be supported in a single build. However, this limitation was not
enforced in the "boards to be built" menu. E.g. it was possible to
build a R.Pi 3 image with (non-functional) debug UART support for R.Pi
1.

In contrast to other architectures, R.Pi debug UART config was placed
under the "System Type" menu, not under the "Debugging -> low-level
debugging port". This made this setting easy to miss when enabling low
level debug mesages.
---
 arch/arm/mach-bcm283x/Kconfig                 | 24 ++++------------------
 arch/arm/mach-bcm283x/include/mach/debug_ll.h |  6 +++---
 common/Kconfig                                | 29 +++++++++++++++++++++++++++
 3 files changed, 36 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index bb5f75dc9..df9206d61 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -13,44 +13,28 @@ config MACH_RPI
 	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
 	select CPU_V6
 	select MACH_RPI_COMMON
+	depends on (!DEBUG_LL) || DEBUG_RPI1_UART
 
 config MACH_RPI2
 	bool "RaspberryPi 2 (BCM2836/CORTEX-A7)"
 	select CPU_V7
 	select MACH_RPI_COMMON
+	depends on (!DEBUG_LL) || DEBUG_RPI2_UART
 
 config MACH_RPI3
 	bool "RaspberryPi 3 (BCM2837/CORTEX-A53)"
 	select CPU_V7
 	select MACH_RPI_COMMON
 	select ARM_SECURE_MONITOR
+	depends on (!DEBUG_LL) || DEBUG_RPI2_UART
 
 config MACH_RPI_CM3
 	bool "RaspberryPi Compute Module 3 (BCM2837/CORTEX-A53)"
 	select CPU_V7
 	select MACH_RPI_COMMON
 	select ARM_SECURE_MONITOR
+	depends on (!DEBUG_LL) || DEBUG_RPI2_UART
 
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
index a625a8bdb..e4a935800 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -20,11 +20,11 @@
 
 #include <mach/platform.h>
 
-#ifndef CONFIG_MACH_RPI_DEBUG_UART_BASE
-#define CONFIG_MACH_RPI_DEBUG_UART_BASE 0
+#ifndef CONFIG_DEBUG_RPI_UART_BASE
+#define CONFIG_DEBUG_RPI_UART_BASE 0
 #endif
 
-#define DEBUG_LL_UART_ADDR CONFIG_MACH_RPI_DEBUG_UART_BASE
+#define DEBUG_LL_UART_ADDR CONFIG_DEBUG_RPI_UART_BASE
 
 #include <asm/debug_ll_pl011.h>
 
diff --git a/common/Kconfig b/common/Kconfig
index 21b33f06f..7e2ac2feb 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1159,6 +1159,29 @@ config DEBUG_SOCFPGA_UART1
 	  Say Y here if you want kernel low-level debugging support
 	  on SOCFPGA(Arria 10) based platforms.
 
+config DEBUG_RPI1_UART
+	bool "RaspberryPi 1 low-level debug UART"
+	depends on ARCH_BCM283X
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 1 boards.
+
+	  Selecting this also limits available choices in "boards to
+	  be built" under "system type". If you want to build images
+	  that work on both RaspberryPi 1 and 2/3, you need to deselect
+	  low-level debug.
+
+config DEBUG_RPI2_UART
+	bool "RaspberryPi 2/3 low-level debug UART"
+	depends on ARCH_BCM283X
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 2 and 3 boards.
+
+	  Selecting this also limits available choices in "boards to
+	  be built" under "system type". If you want to build images
+	  that work on both RaspberryPi 1 and 2/3, you need to deselect
+	  low-level debug.
 
 endchoice
 
@@ -1209,6 +1232,12 @@ config DEBUG_SOCFPGA_UART_PHYS_ADDR
 	default 0xffc02100 if DEBUG_SOCFPGA_UART1
 	depends on ARCH_SOCFPGA
 
+config DEBUG_RPI_UART_BASE
+	hex
+	default 0x20201000 if DEBUG_RPI1_UART
+	default 0x3f201000 if DEBUG_RPI2_UART
+	depends on ARCH_BCM283X
+
 config DEBUG_SOCFPGA_UART_CLOCK
 	int "SoCFPGA UART debug clock" if DEBUG_LL
 	default 100000000 if ARCH_SOCFPGA_CYCLONE5
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
