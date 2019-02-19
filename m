Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw4AC-0006nP-3u
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 12:06:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw4A9-0001yo-Jg
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:06:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw4A9-0003o7-Aa
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:06:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 13:06:10 +0100
Message-Id: <20190219120612.728-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190219120612.728-1-a.fatoum@pengutronix.de>
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: at91: debug_ll: make UART base address configurable
To: barebox@lists.infradead.org

This is in line with other platforms such as i.MX, which allow
specifying a debug port. As we can't use port indices because
the UARTs aren't mapped consecutively, allow specifying a hex
base at configuration time.

A side effect of this patch is that sama5d4's HAVE_AT91_DBGU2
is now honored as well. Previously anything besides DBGU0
defaulted to DBGU1.

Fixes: 06a0773ee31 ("ARM: at91: add sama5d4 soc support #2")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                 | 23 +++++++---------------
 arch/arm/mach-at91/include/mach/debug_ll.h | 12 +++--------
 common/Kconfig                             | 14 +++++++++++++
 3 files changed, 24 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3443444294df..9d6033bc57fb 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -1,13 +1,12 @@
 if ARCH_AT91
 
-config HAVE_AT91_DBGU0
-	bool
-
-config HAVE_AT91_DBGU1
-	bool
-
-config HAVE_AT91_DBGU2
-	bool
+config AT91_DEBUG_DEFAULT_BASE
+	hex
+	default 0xfffff200 if SOC_AT91RM9200 || SOC_AT91SAM9260 || SOC_AT91SAM9261 \
+	                   || SOC_AT91SAM9X5 || SOC_AT91SAM9N12
+	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || ARCH_SAMA5D3
+	default 0xfc069000 if ARCH_SAMA5D4
+	default 0xfffff200
 
 config HAVE_AT91_UTMI
 	bool
@@ -109,7 +108,6 @@ config SOC_AT91RM9200
 config SOC_AT91SAM9260
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
@@ -118,21 +116,18 @@ config SOC_AT91SAM9260
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
@@ -141,7 +136,6 @@ config SOC_AT91SAM9G45
 config SOC_AT91SAM9X5
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select COMMON_CLK_OF_PROVIDER
 	help
@@ -154,7 +148,6 @@ config SOC_AT91SAM9X5
 config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
-	select HAVE_AT91_DBGU0
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
@@ -207,14 +200,12 @@ config ARCH_AT91SAM9N12
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
index fd26cae21ef2..8534d5b5745c 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -11,12 +11,6 @@
 #include <asm/io.h>
 #include <mach/hardware.h>
 
-#ifdef CONFIG_HAVE_AT91_DBGU0
-#define UART_BASE	AT91_BASE_DBGU0
-#else
-#define UART_BASE	AT91_BASE_DBGU1
-#endif
-
 #define ATMEL_US_CSR		0x0014
 #define ATMEL_US_THR		0x001c
 #define ATMEL_US_TXRDY		(1 << 1)
@@ -31,11 +25,11 @@
  */
 static inline void PUTC_LL(char c)
 {
-	while (!(readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
+	while (!(readl(CONFIG_AT91_DEBUG_DEFAULT_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
 		barrier();
-	writel(c, UART_BASE + ATMEL_US_THR);
+	writel(c, CONFIG_AT91_DEBUG_DEFAULT_BASE + ATMEL_US_THR);
 
-	while (!(readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
+	while (!(readl(CONFIG_AT91_DEBUG_DEFAULT_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
 		barrier();
 }
 #endif
diff --git a/common/Kconfig b/common/Kconfig
index 21b33f06f786..0ac83a22ca0c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1159,6 +1159,12 @@ config DEBUG_SOCFPGA_UART1
 	  Say Y here if you want kernel low-level debugging support
 	  on SOCFPGA(Arria 10) based platforms.
 
+config DEBUG_AT91_UART
+	bool "AT91 Debug UART"
+	depends on ARCH_AT91
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on AT91 based platforms.
 
 endchoice
 
@@ -1217,6 +1223,14 @@ config DEBUG_SOCFPGA_UART_CLOCK
 	help
 	  Choose UART root clock.
 
+config DEBUG_AT91_UART_BASE
+	hex "AT91 Debug UART Port Selection" if DEBUG_AT91_UART
+	default AT91_DEBUG_DEFAULT_BASE
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
