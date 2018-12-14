Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHp-0003Rl-IP
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:24 +0100
Message-Id: <20181214141730.26181-18-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/23] ARM: omap: enable am33xx_uart_soft_reset for AM35xx
To: Barebox List <barebox@lists.infradead.org>

am33xx_uart_soft_reset() can be used on AM35xx aswell, so move it
to a more generic place where it can be added to am35xx compilation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile                   |  3 +-
 arch/arm/mach-omap/am33xx_generic.c           | 27 ----------------
 arch/arm/mach-omap/am3xxx.c                   | 32 +++++++++++++++++++
 .../mach-omap/include/mach/am3xxx-silicon.h   |  6 ++++
 4 files changed, 40 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/mach-omap/am3xxx.c
 create mode 100644 arch/arm/mach-omap/include/mach/am3xxx-silicon.h

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index e6132342e1..901cc90373 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -21,7 +21,8 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
-obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
+obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o
+obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index c446431537..fe3c4a8b17 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -262,33 +262,6 @@ int am33xx_devices_init(void)
 	return 0;
 }
 
-/* UART Defines */
-#define UART_SYSCFG_OFFSET	0x54
-#define UART_SYSSTS_OFFSET	0x58
-
-#define UART_CLK_RUNNING_MASK	0x1
-#define UART_RESET		(0x1 << 1)
-#define UART_SMART_IDLE_EN	(0x1 << 0x3)
-
-void am33xx_uart_soft_reset(void __iomem *uart_base)
-{
-	int reg;
-
-	reg = readl(uart_base + UART_SYSCFG_OFFSET);
-	reg |= UART_RESET;
-	writel(reg, (uart_base + UART_SYSCFG_OFFSET));
-
-	while ((readl(uart_base + UART_SYSSTS_OFFSET) &
-		UART_CLK_RUNNING_MASK) != UART_CLK_RUNNING_MASK)
-		;
-
-	/* Disable smart idle */
-	reg = readl((uart_base + UART_SYSCFG_OFFSET));
-	reg |= UART_SMART_IDLE_EN;
-	writel(reg, (uart_base + UART_SYSCFG_OFFSET));
-}
-
-
 #define VTP_CTRL_READY		(0x1 << 5)
 #define VTP_CTRL_ENABLE		(0x1 << 6)
 #define VTP_CTRL_START_EN	(0x1)
diff --git a/arch/arm/mach-omap/am3xxx.c b/arch/arm/mach-omap/am3xxx.c
new file mode 100644
index 0000000000..75965a8e0e
--- /dev/null
+++ b/arch/arm/mach-omap/am3xxx.c
@@ -0,0 +1,32 @@
+#include <common.h>
+#include <io.h>
+#include <mach/am3xxx-silicon.h>
+
+/* UART Defines */
+#define UART_SYSCFG_OFFSET	0x54
+#define UART_SYSSTS_OFFSET	0x58
+
+#define UART_CLK_RUNNING_MASK	0x1
+#define UART_RESET		(0x1 << 1)
+#define UART_SMART_IDLE_EN	(0x1 << 0x3)
+
+void am3xxx_uart_soft_reset(void __iomem *uart_base)
+{
+	int reg;
+
+	reg = readl(uart_base + UART_SYSCFG_OFFSET);
+	reg |= UART_RESET;
+	writel(reg, (uart_base + UART_SYSCFG_OFFSET));
+
+	while ((readl(uart_base + UART_SYSSTS_OFFSET) &
+		UART_CLK_RUNNING_MASK) != UART_CLK_RUNNING_MASK)
+		;
+
+	/* Disable smart idle */
+	reg = readl((uart_base + UART_SYSCFG_OFFSET));
+	reg |= UART_SMART_IDLE_EN;
+	writel(reg, (uart_base + UART_SYSCFG_OFFSET));
+}
+
+void am33xx_uart_soft_reset(void __iomem *uart_base)
+	__alias(am3xxx_uart_soft_reset);
\ No newline at end of file
diff --git a/arch/arm/mach-omap/include/mach/am3xxx-silicon.h b/arch/arm/mach-omap/include/mach/am3xxx-silicon.h
new file mode 100644
index 0000000000..c5f73ad457
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/am3xxx-silicon.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_ARCH_AM33XX_H
+#define __ASM_ARCH_AM33XX_H
+
+void am3xxx_uart_soft_reset(void __iomem *uart_base);
+
+#endif /* __ASM_ARCH_AM33XX_H */
\ No newline at end of file
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
