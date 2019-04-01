Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHi-0000ku-C1
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:30:58 +0200
Message-Id: <20190401093106.4595-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190401093106.4595-1-a.fatoum@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 02/10] ARM: at91: debug_ll: make UART base address
 configurable
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

This is in line with other platforms such as i.MX, which allow
specifying a debug port. As we can't use port indices because
the UARTs aren't mapped consecutively, allow specifying a hex
base at configuration time.

A side effect of this patch is that sama5d4's HAVE_AT91_DBGU2
is now honored as well. Previously anything besides DBGU0
defaulted to DBGU1.

Fixes: 06a0773ee31 ("ARM: at91: add sama5d4 soc support #2")
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Sam Ravnborg <sam@ravnborg.org>
[afa: moved base address defaults to common/Kconfig]
Signed-off-by: Ahmad Fatoum <afa@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                 | 17 -----------------
 arch/arm/mach-at91/include/mach/debug_ll.h | 13 +++----------
 common/Kconfig                             | 21 +++++++++++++++++++++
 3 files changed, 24 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index efed73827849..8e1bf0629ab7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -1,14 +1,5 @@
 if ARCH_AT91
 
-config HAVE_AT91_DBGU0
-	bool
-
-config HAVE_AT91_DBGU1
-	bool
-
-config HAVE_AT91_DBGU2
-	bool
-
 config HAVE_AT91_UTMI
 	bool
 
@@ -115,7 +106,6 @@ config SOC_AT91RM9200
 config SOC_AT91SAM9260
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
@@ -124,21 +114,18 @@ config SOC_AT91SAM9260
 config SOC_AT91SAM9261
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
 config SOC_AT91SAM9263
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config SOC_AT91SAM9G45
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	help
 	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
@@ -147,7 +134,6 @@ config SOC_AT91SAM9G45
 config SOC_AT91SAM9X5
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select COMMON_CLK_OF_PROVIDER
 	help
@@ -160,7 +146,6 @@ config SOC_AT91SAM9X5
 config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
@@ -213,14 +198,12 @@ config ARCH_AT91SAM9N12
 config ARCH_SAMA5D3
 	bool "SAMA5D3x"
 	select SOC_SAMA5D3
-	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D4
 	bool "SAMA5D4"
 	select SOC_SAMA5D4
-	select HAVE_AT91_DBGU2
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
 
diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
index fd26cae21ef2..b71393042463 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -9,13 +9,6 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/hardware.h>
-
-#ifdef CONFIG_HAVE_AT91_DBGU0
-#define UART_BASE	AT91_BASE_DBGU0
-#else
-#define UART_BASE	AT91_BASE_DBGU1
-#endif
 
 #define ATMEL_US_CSR		0x0014
 #define ATMEL_US_THR		0x001c
@@ -31,11 +24,11 @@
  */
 static inline void PUTC_LL(char c)
 {
-	while (!(readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
+	while (!(readl(CONFIG_DEBUG_AT91_UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
 		barrier();
-	writel(c, UART_BASE + ATMEL_US_THR);
+	writel(c, CONFIG_DEBUG_AT91_UART_BASE + ATMEL_US_THR);
 
-	while (!(readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
+	while (!(readl(CONFIG_DEBUG_AT91_UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
 		barrier();
 }
 #endif
diff --git a/common/Kconfig b/common/Kconfig
index 7832df5c554f..2f30b2acf890 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1168,6 +1168,13 @@ config DEBUG_RPI1_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 1 boards.
 
+config DEBUG_AT91_UART
+	bool "AT91 Debug UART"
+	depends on ARCH_AT91
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on AT91 based platforms.
+
 config DEBUG_RPI2_3_UART
 	bool "RaspberryPi 2/3 PL011 UART"
 	depends on ARCH_BCM283X
@@ -1238,6 +1245,7 @@ config DEBUG_SOCFPGA_UART_CLOCK
 	help
 	  Choose UART root clock.
 
+
 config DEBUG_LAYERSCAPE_UART_PORT
 	int "Layerscape UART port selection"
 	depends on ARCH_LAYERSCAPE
@@ -1246,6 +1254,19 @@ config DEBUG_LAYERSCAPE_UART_PORT
 	  Select the UART port number used for early debugging here. Port
 	  numbers start counting from 1.
 
+config DEBUG_AT91_UART_BASE
+	hex "AT91 Debug UART Port Selection" if DEBUG_AT91_UART
+	default 0xfffff200 if SOC_AT91RM9200  || SOC_AT91SAM9260 \
+	                   || SOC_AT91SAM9261 || SOC_AT91SAM9X5  \
+			   || SOC_AT91SAM9N12
+	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || ARCH_SAMA5D3
+	default 0xfc069000 if ARCH_SAMA5D4
+	default 0xfffff200
+	depends on ARCH_AT91
+	help
+	  Specify UART port base address on which barebox low-level
+	  debug messages should be output.
+
 config DEBUG_INITCALLS
 	bool "Trace initcalls"
 	help
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
