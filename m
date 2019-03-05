Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h15tr-0007zL-Md
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 08:58:14 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1h15tZ-0001wT-EO
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 09:57:53 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Tue,  5 Mar 2019 09:57:51 +0100
Message-Id: <20190305085752.3615-2-tomaz.solc@tablix.org>
In-Reply-To: <20190305085752.3615-1-tomaz.solc@tablix.org>
References: <20190305085752.3615-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 1/2] ARM: rpi: move debug UART Kconfig settings.
To: barebox@lists.infradead.org

In contrast to other architectures, R.Pi debug UART config was placed
under the "System Type" menu, not under the "Debugging -> low-level
debugging port". This made this setting easy to miss when enabling low
level debug mesages.
---
 arch/arm/mach-bcm283x/Kconfig                 | 20 --------------------
 arch/arm/mach-bcm283x/include/mach/debug_ll.h |  6 +++---
 common/Kconfig                                | 19 +++++++++++++++++++
 3 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index bb5f75dc9..9d6a7b2ec 100644
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
index 21b33f06f..e30f354e6 100644
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
 
@@ -1209,6 +1222,12 @@ config DEBUG_SOCFPGA_UART_PHYS_ADDR
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
