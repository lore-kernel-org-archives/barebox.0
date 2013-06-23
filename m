Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqDu-0000V9-EK
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 19:45:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 21:44:52 +0200
Message-Id: <1372016693-30160-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372016693-30160-1-git-send-email-s.hauer@pengutronix.de>
References: <1372016693-30160-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX: Make debug UART selectable from Kconfig
To: barebox@lists.infradead.org

To make early debugging on i.MX a bit simpler. This uses a similar
magic than the kernel does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 31 +++++++++--
 common/Kconfig                            | 92 +++++++++++++++++++++++++++++++
 2 files changed, 117 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index cb6dd03..0bb28ee 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -13,13 +13,31 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 
-/* #define IMX_DEBUG_LL_UART_BASE MXxy_UARTx_BASE_ADDR */
-
-#ifndef IMX_DEBUG_LL_UART_BASE
-#warning define IMX_DEBUG_LL_UART_BASE properly for debug_ll
-#define IMX_DEBUG_LL_UART_BASE 0
+#ifdef CONFIG_DEBUG_IMX1_UART
+#define IMX_DEBUG_SOC MX1
+#elif defined CONFIG_DEBUG_IMX21_UART
+#define IMX_DEBUG_SOC MX21
+#elif defined CONFIG_DEBUG_IMX25_UART
+#define IMX_DEBUG_SOC MX25
+#elif defined CONFIG_DEBUG_IMX27_UART
+#define IMX_DEBUG_SOC MX27
+#elif defined CONFIG_DEBUG_IMX31_UART
+#define IMX_DEBUG_SOC MX31
+#elif defined CONFIG_DEBUG_IMX35_UART
+#define IMX_DEBUG_SOC MX35
+#elif defined CONFIG_DEBUG_IMX51_UART
+#define IMX_DEBUG_SOC MX51
+#elif defined CONFIG_DEBUG_IMX53_UART
+#define IMX_DEBUG_SOC MX53
+#elif defined CONFIG_DEBUG_IMX6Q_UART
+#define IMX_DEBUG_SOC MX6
+#else
+#error "unknown i.MX debug uart soc type"
 #endif
 
+#define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
+#define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
+
 #define URTX0		0x40		/* Transmitter Register */
 
 #define UCR1		0x80		/* Control Register 1 */
@@ -30,7 +48,8 @@
 
 static inline void PUTC_LL(int c)
 {
-	void __iomem *base = (void *)IMX_DEBUG_LL_UART_BASE;
+	void __iomem *base = (void *)IMX_UART_BASE(IMX_DEBUG_SOC,
+			CONFIG_DEBUG_IMX_UART_PORT);
 
 	if (!base)
 		return;
diff --git a/common/Kconfig b/common/Kconfig
index d7e2ebd..6a72267 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -618,6 +618,98 @@ config DEBUG_LL
 	  This requires SoC specific support. Most SoCs require the debug UART to be
 	  initialized by a debugger or first stage bootloader.
 
+choice
+	prompt "Kernel low-level debugging port"
+	depends on DEBUG_LL
+
+config DEBUG_IMX1_UART
+	bool "i.MX1 Debug UART"
+	depends on ARCH_IMX1
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX1.
+
+config DEBUG_IMX21_UART
+	bool "i.MX21 Debug UART"
+	depends on ARCH_IMX21
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX21.
+
+config DEBUG_IMX25_UART
+	bool "i.MX25 Debug UART"
+	depends on ARCH_IMX25
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX25.
+
+config DEBUG_IMX27_UART
+	bool "i.MX27 Debug UART"
+	depends on ARCH_IMX1
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX27.
+
+config DEBUG_IMX31_UART
+	bool "i.MX31 Debug UART"
+	depends on ARCH_IMX31
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX31.
+
+config DEBUG_IMX35_UART
+	bool "i.MX35 Debug UART"
+	depends on ARCH_IMX35
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX35.
+
+config DEBUG_IMX51_UART
+	bool "i.MX51 Debug UART"
+	depends on ARCH_IMX51
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX51.
+
+config DEBUG_IMX53_UART
+	bool "i.MX53 Debug UART"
+	depends on ARCH_IMX53
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX53.
+
+config DEBUG_IMX6Q_UART
+	bool "i.MX6Q Debug UART"
+	depends on ARCH_IMX6Q
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX6Q.
+
+config DEBUG_IMX6SL_UART
+	bool "i.MX6SL Debug UART"
+	depends on ARCH_IMX6SL
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX6SL.
+
+endchoice
+
+config DEBUG_IMX_UART_PORT
+	int "i.MX Debug UART Port Selection" if DEBUG_IMX1_UART || \
+						DEBUG_IMX25_UART || \
+						DEBUG_IMX21_IMX27_UART || \
+						DEBUG_IMX31_UART || \
+						DEBUG_IMX35_UART || \
+						DEBUG_IMX51_UART || \
+						DEBUG_IMX53_UART || \
+						DEBUG_IMX6Q_UART || \
+						DEBUG_IMX6SL_UART
+	default 1
+	depends on ARCH_IMX
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output.
+
 endmenu
 
 config HAS_DEBUG_LL
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
