Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg4T-000415-33
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:46:00 +0000
Received: by mail-pf0-x241.google.com with SMTP id a20-v6so4096492pfo.0
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:45:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:07 -0700
Message-Id: <20180526204451.16530-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/48] aarch64: Add i.MX8 debug UART support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
[andrew.smirnov@gmail.com: Added imx8_uart_setup_ll()]
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

fixup! aarch64: Add i.MX8 debug UART support
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 11 +++++++++++
 common/Kconfig                            |  8 ++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index d54d601db..1550e059e 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -15,6 +15,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/imx8mq-regs.h>
 #include <mach/vf610-regs.h>
 
 #include <serial/imx-uart.h>
@@ -47,6 +48,8 @@
 #define IMX_DEBUG_SOC MX6
 #elif defined CONFIG_DEBUG_IMX7D_UART
 #define IMX_DEBUG_SOC MX7
+#elif defined CONFIG_DEBUG_IMX8MQ_UART
+#define IMX_DEBUG_SOC MX8MQ
 #elif defined CONFIG_DEBUG_VF610_UART
 #define IMX_DEBUG_SOC VF610
 #else
@@ -95,6 +98,13 @@ static inline void vf610_uart_setup_ll(void)
 	lpuart_setup(base, 66000000);
 }
 
+static inline void imx8_uart_setup_ll(void)
+{
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
+					 CONFIG_DEBUG_IMX_UART_PORT));
+	imx8mq_uart_setup(base);
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
@@ -117,6 +127,7 @@ static inline void imx53_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
 static inline void imx7_uart_setup_ll(void)  {}
 static inline void vf610_uart_setup_ll(void) {}
+static inline void imx8_uart_setup_ll(void)  {}
 
 #endif /* CONFIG_DEBUG_LL */
 
diff --git a/common/Kconfig b/common/Kconfig
index b7000c4d7..75aea460a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1099,6 +1099,13 @@ config DEBUG_IMX7D_UART
 	  Say Y here if you want barebox low-level debugging support
 	  on i.MX7D.
 
+config DEBUG_IMX8MQ_UART
+	bool "i.MX8MQ Debug UART"
+	depends on ARCH_IMX8MQ
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on i.MX8MQ.
+
 config DEBUG_VF610_UART
 	bool "VF610 Debug UART"
 	depends on ARCH_VF610
@@ -1163,6 +1170,7 @@ config DEBUG_IMX_UART_PORT
 						DEBUG_IMX6Q_UART || \
 						DEBUG_IMX6SL_UART || \
 						DEBUG_IMX7D_UART || \
+						DEBUG_IMX8MQ_UART || \
 						DEBUG_VF610_UART
 	default 1
 	depends on ARCH_IMX
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
