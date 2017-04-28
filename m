Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d4768-0005BK-T5
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 14:42:18 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Apr 2017 16:41:40 +0200
Message-Id: <4bf3ce312dc1215817950962465cc03dc08f114c.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 4/8] ARM: socfpga: make debug_ll configurable
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Allow configuring the serial port and clock rate
instead of hardcoding it.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/debug_ll.h | 69 ++++++++++++--------
 common/Kconfig                                | 20 ++++++-
 2 files changed, 64 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/debug_ll.h b/arch/arm/mach-socfpga/include/mach/debug_ll.h
index f378435970d8..4e906ea66edd 100644
--- a/arch/arm/mach-socfpga/include/mach/debug_ll.h
+++ b/arch/arm/mach-socfpga/include/mach/debug_ll.h
@@ -2,24 +2,33 @@
 #define   __MACH_DEBUG_LL_H__
 
 #include <io.h>
+#include <errno.h>
 
-#define UART_BASE	0xffc02000
+#ifdef CONFIG_DEBUG_LL
+#define UART_BASE	CONFIG_DEBUG_SOCFPGA_UART_PHYS_ADDR
+#endif
 
 #define LSR_THRE	0x20	/* Xmit holding register empty */
-#define LSR		(5 << 2)
-#define THR		(0 << 2)
+#define LSR_TEMT	0x40
 
 #define LCR_BKSE	0x80	/* Bank select enable */
-#define LSR		(5 << 2)
-#define THR		(0 << 2)
-#define DLL		(0 << 2)
-#define IER		(1 << 2)
-#define DLM		(1 << 2)
-#define FCR		(2 << 2)
-#define LCR		(3 << 2)
-#define MCR		(4 << 2)
-#define MDR		(8 << 2)
+#define LCRVAL		0x3
+#define MCRVAL		0x3
+#define FCRVAL		0xc1
+
+#define RBR		0x0
+#define DLL		0x0
+#define IER		0x4
+#define DLM		0x4
+#define FCR		0x8
+#define LCR		0xc
+#define MCR		0x10
+#define LSR		0x14
+#define MSR		0x18
+#define SCR		0x1c
+#define THR		0x30
 
+#ifdef CONFIG_DEBUG_LL
 static inline unsigned int ns16550_calc_divisor(unsigned int clk,
 					 unsigned int baudrate)
 {
@@ -28,19 +37,20 @@ static inline unsigned int ns16550_calc_divisor(unsigned int clk,
 
 static inline void INIT_LL(void)
 {
-	unsigned int clk = 100000000;
-	unsigned int divisor = clk / 16 / 115200;
-
-	writeb(0x00, UART_BASE + LCR);
-	writeb(0x00, UART_BASE + IER);
-	writeb(0x07, UART_BASE + MDR);
-	writeb(LCR_BKSE, UART_BASE + LCR);
-	writeb(divisor & 0xff, UART_BASE + DLL);
-	writeb(divisor >> 8, UART_BASE + DLM);
-	writeb(0x03, UART_BASE + LCR);
-	writeb(0x03, UART_BASE + MCR);
-	writeb(0x07, UART_BASE + FCR);
-	writeb(0x00, UART_BASE + MDR);
+	unsigned int div = ns16550_calc_divisor(CONFIG_DEBUG_SOCFPGA_UART_CLOCK,
+						115200);
+
+	while ((readl(UART_BASE + LSR) & LSR_TEMT) == 0);
+
+	writel(0x00, UART_BASE + IER);
+
+	writel(LCR_BKSE, UART_BASE + LCR);
+	writel(div & 0xff, UART_BASE + DLL);
+	writel((div >> 8) & 0xff, UART_BASE + DLM);
+	writel(LCRVAL, UART_BASE + LCR);
+
+	writel(MCRVAL, UART_BASE + MCR);
+	writel(FCRVAL, UART_BASE + FCR);
 }
 
 static inline void PUTC_LL(char c)
@@ -52,4 +62,13 @@ static inline void PUTC_LL(char c)
 	/* Wait to make sure it hits the line, in case we die too soon. */
 	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
 }
+
+#else
+static inline unsigned int ns16550_calc_divisor(unsigned int clk,
+					 unsigned int baudrate) {
+	return -ENOSYS;
+}
+static inline void INIT_LL(void) {}
+static inline void PUTC_LL(char c) {}
+#endif
 #endif
diff --git a/common/Kconfig b/common/Kconfig
index f7ff04664d6c..1901c2a256b3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1116,6 +1116,14 @@ config DEBUG_ROCKCHIP_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3XXX.
 
+config DEBUG_SOCFPGA_UART0
+	bool "Use SOCFPGA UART0 for low-level debug"
+	depends on ARCH_SOCFPGA
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on SOCFPGA(Cyclone 5 and Arria 5) based platforms.
+
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
@@ -1158,6 +1166,18 @@ config DEBUG_ROCKCHIP_UART_PORT
 	  Choose UART port on which kernel low-level debug messages
 	  should be output.
 
+config DEBUG_SOCFPGA_UART_PHYS_ADDR
+	hex "Physical base address of debug UART" if DEBUG_LL
+	default 0xffc02000 if DEBUG_SOCFPGA_UART0
+	depends on ARCH_SOCFPGA
+
+config DEBUG_SOCFPGA_UART_CLOCK
+	int "SoCFPGA UART debug clock" if DEBUG_LL
+	default 100000000
+	depends on ARCH_SOCFPGA
+	help
+	  Choose UART root clock.
+
 config DEBUG_INITCALLS
 	bool "Trace initcalls"
 	help
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
