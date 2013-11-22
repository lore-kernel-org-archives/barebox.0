Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Vjs8Y-0003Fe-7p
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:40 +0100
Message-Id: <1385132083-7484-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/16] ARM: OMAP: Make debug_ll UART Kconfig selectable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c      |  2 +-
 arch/arm/mach-omap/include/mach/debug_ll.h | 71 +++++++++++++++---------------
 common/Kconfig                             | 34 ++++++++++++++
 3 files changed, 70 insertions(+), 37 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index a4d3232..992e3e4 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -137,7 +137,7 @@ static int beaglebone_board_init(void)
 
 	am33xx_uart0_soft_reset();
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init();
+	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
 
 	return 0;
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index 2917558..25ddd48 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -18,31 +18,9 @@
 #define   __MACH_DEBUG_LL_H__
 
 #include <io.h>
-
-#ifdef CONFIG_ARCH_OMAP3
 #include <mach/omap3-silicon.h>
-
-#ifdef CONFIG_OMAP_UART1
-#define UART_BASE	OMAP3_UART1_BASE
-#else
-#define UART_BASE	OMAP3_UART3_BASE
-#endif
-
-#endif
-
-#ifdef CONFIG_ARCH_OMAP4
 #include <mach/omap4-silicon.h>
-#ifdef CONFIG_OMAP_UART1
-#define UART_BASE	OMAP44XX_UART1_BASE
-#else
-#define UART_BASE	OMAP44XX_UART3_BASE
-#endif
-#endif
-
-#ifdef CONFIG_ARCH_AM33XX
 #include <mach/am33xx-silicon.h>
-#define UART_BASE	AM33XX_UART0_BASE
-#endif
 
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 #define LCR_BKSE	0x80	/* Bank select enable */
@@ -56,26 +34,47 @@
 #define MCR		(4 << 2)
 #define MDR		(8 << 2)
 
-static inline void omap_uart_lowlevel_init(void)
+static inline void omap_uart_lowlevel_init(void __iomem *base)
 {
-	writeb(0x00, UART_BASE + LCR);
-	writeb(0x00, UART_BASE + IER);
-	writeb(0x07, UART_BASE + MDR);
-	writeb(LCR_BKSE, UART_BASE + LCR);
-	writeb(26, UART_BASE + DLL); /* 115200 */
-	writeb(0, UART_BASE + DLM);
-	writeb(0x03, UART_BASE + LCR);
-	writeb(0x03, UART_BASE + MCR);
-	writeb(0x07, UART_BASE + FCR);
-	writeb(0x00, UART_BASE + MDR);
+	writeb(0x00, base + LCR);
+	writeb(0x00, base + IER);
+	writeb(0x07, base + MDR);
+	writeb(LCR_BKSE, base + LCR);
+	writeb(26, base + DLL); /* 115200 */
+	writeb(0, base + DLM);
+	writeb(0x03, base + LCR);
+	writeb(0x03, base + MCR);
+	writeb(0x07, base + FCR);
+	writeb(0x00, base + MDR);
 }
+
+#ifdef CONFIG_DEBUG_LL
+
+#ifdef CONFIG_DEBUG_OMAP3_UART
+#define OMAP_DEBUG_SOC OMAP3
+#elif defined CONFIG_DEBUG_OMAP4_UART
+#define OMAP_DEBUG_SOC OMAP44XX
+#elif defined CONFIG_DEBUG_AM33XX_UART
+#define OMAP_DEBUG_SOC AM33XX
+#else
+#error "unknown OMAP debug uart soc type"
+#endif
+
+#define __OMAP_UART_BASE(soc, num) soc##_UART##num##_BASE
+#define OMAP_UART_BASE(soc, num) __OMAP_UART_BASE(soc, num)
+
 static inline void PUTC_LL(char c)
 {
+	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
+			CONFIG_DEBUG_OMAP_UART_PORT);
+
 	/* Wait until there is space in the FIFO */
-	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+	while ((readb(base + LSR) & LSR_THRE) == 0);
 	/* Send the character */
-	writeb(c, UART_BASE + THR);
+	writeb(c, base + THR);
 	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+	while ((readb(base + LSR) & LSR_THRE) == 0);
 }
 #endif
+
+#endif
diff --git a/common/Kconfig b/common/Kconfig
index 06edbc2..8fd23aa 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -746,6 +746,27 @@ config DEBUG_IMX6Q_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX6Q.
 
+config DEBUG_OMAP3_UART
+	bool "OMAP3 Debug UART"
+	depends on ARCH_OMAP3
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on OMAP3.
+
+config DEBUG_OMAP4_UART
+	bool "OMAP4 Debug UART"
+	depends on ARCH_OMAP4
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on OMAP4.
+
+config DEBUG_AM33XX_UART
+	bool "AM33XX Debug UART"
+	depends on ARCH_AM33XX
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on AM33XX.
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
@@ -765,6 +786,19 @@ config DEBUG_IMX_UART_PORT
 	  Choose UART port on which kernel low-level debug messages
 	  should be output.
 
+config DEBUG_OMAP_UART_PORT
+	int "OMAP Debug UART Port Selection" if DEBUG_OMAP3_UART || \
+						DEBUG_OMAP4_UART || \
+						DEBUG_AM33XX_UART
+	default 1
+	depends on ARCH_OMAP
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output. Possible values are:
+	  OMAP3: 1 - 3
+	  OMAP4: 1 - 3
+	  AM33XX: 0 - 2
+
 config DEBUG_INITCALLS
 	bool "Trace initcalls"
 	help
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
