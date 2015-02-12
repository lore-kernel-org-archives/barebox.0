Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3h.mail.yandex.net ([84.201.187.148])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLz73-0006Kk-MG
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 19:07:47 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net [84.201.187.145])
 by forward3h.mail.yandex.net (Yandex) with ESMTP id 7FAFF1362320
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:07:16 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Thu, 12 Feb 2015 22:07:11 +0300
Message-Id: <1423768031-5014-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH] ARM: Rockchip: Add DEBUG_LL based on mach-socfpga
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/Kconfig                               |  1 +
 arch/arm/mach-rockchip/include/mach/debug_ll.h | 60 ++++++++++++++++++++++++++
 common/Kconfig                                 | 15 +++++++
 3 files changed, 76 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/include/mach/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f682803..22fd4d8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -159,6 +159,7 @@ config ARCH_ROCKCHIP
 	select PINCTRL
 	select PINCTRL_ROCKCHIP
 	select HAVE_PBL_MULTI_IMAGES
+	select HAS_DEBUG_LL
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA cyclone5"
diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/arch/arm/mach-rockchip/include/mach/debug_ll.h
new file mode 100644
index 0000000..c666b99
--- /dev/null
+++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
@@ -0,0 +1,60 @@
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+
+#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 0
+#define UART_BASE	0x10124000
+#endif
+#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 1
+#define UART_BASE	0x10126000
+#endif
+#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 2
+#define UART_BASE	0x20064000
+#endif
+#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 3
+#define UART_BASE	0x20068000
+#endif
+
+#define LSR_THRE	0x20	/* Xmit holding register empty */
+#define LSR		(5 << 2)
+#define THR		(0 << 2)
+
+#define LCR_BKSE	0x80	/* Bank select enable */
+#define LSR		(5 << 2)
+#define THR		(0 << 2)
+#define DLL		(0 << 2)
+#define IER		(1 << 2)
+#define DLM		(1 << 2)
+#define FCR		(2 << 2)
+#define LCR		(3 << 2)
+#define MCR		(4 << 2)
+#define MDR		(8 << 2)
+
+static inline void INIT_LL(void)
+{
+	unsigned int clk = 100000000;
+	unsigned int divisor = clk / 16 / 115200;
+
+	writeb(0x00, UART_BASE + LCR);
+	writeb(0x00, UART_BASE + IER);
+	writeb(0x07, UART_BASE + MDR);
+	writeb(LCR_BKSE, UART_BASE + LCR);
+	writeb(divisor & 0xff, UART_BASE + DLL);
+	writeb(divisor >> 8, UART_BASE + DLM);
+	writeb(0x03, UART_BASE + LCR);
+	writeb(0x03, UART_BASE + MCR);
+	writeb(0x07, UART_BASE + FCR);
+	writeb(0x00, UART_BASE + MDR);
+}
+
+static inline void PUTC_LL(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+	/* Send the character */
+	writeb(c, UART_BASE + THR);
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+}
+#endif
diff --git a/common/Kconfig b/common/Kconfig
index d437343..62d82c6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -846,6 +846,13 @@ config DEBUG_AM33XX_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on AM33XX.
 
+config DEBUG_ROCKCHIP_UART
+	bool "RK31xx Debug UART"
+	depends on ARCH_ROCKCHIP
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on RK31XX.
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
@@ -878,6 +885,14 @@ config DEBUG_OMAP_UART_PORT
 	  OMAP4: 1 - 3
 	  AM33XX: 0 - 2
 
+config DEBUG_ROCKCHIP_UART_PORT
+	int "RK31xx UART debug port" if DEBUG_ROCKCHIP_UART
+	default 2
+	depends on ARCH_ROCKCHIP
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output.
+
 config DEBUG_INITCALLS
 	bool "Trace initcalls"
 	help
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
