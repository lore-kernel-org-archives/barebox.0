Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBR7-0003QS-I5
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:10 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so2914713lbg.7
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:13 +0400
Message-Id: <1394977701-5889-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 02/10] ARM: initial support for TI DaVinci SoCs
To: barebox@lists.infradead.org

This commit adds minimal support for the DaVinci DM365 SoCs
from Texas Instruments.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                              |  5 ++
 arch/arm/Makefile                             |  1 +
 arch/arm/mach-davinci/Kconfig                 |  7 ++
 arch/arm/mach-davinci/Makefile                |  1 +
 arch/arm/mach-davinci/include/mach/hardware.h | 29 ++++++++
 arch/arm/mach-davinci/include/mach/serial.h   | 20 ++++++
 arch/arm/mach-davinci/include/mach/time.h     | 18 +++++
 arch/arm/mach-davinci/time.c                  | 95 +++++++++++++++++++++++++++
 8 files changed, 176 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 21f9012..42ff01b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -54,6 +54,10 @@ config ARCH_CLPS711X
 	select GPIOLIB
 	select MFD_SYSCON
 
+config ARCH_DAVINCI
+	bool "TI Davinci"
+	select CPU_ARM926T
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -188,6 +192,7 @@ source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-bcm2835/Kconfig
 source arch/arm/mach-clps711x/Kconfig
+source arch/arm/mach-davinci/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-highbank/Kconfig
 source arch/arm/mach-imx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 2bbba35..c1bd836 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -54,6 +54,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
 machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
+machine-$(CONFIG_ARCH_DAVINCI)		:= davinci
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
 machine-$(CONFIG_ARCH_IMX)		:= imx
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
new file mode 100644
index 0000000..5677f8d
--- /dev/null
+++ b/arch/arm/mach-davinci/Kconfig
@@ -0,0 +1,7 @@
+if ARCH_DAVINCI
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x82000000
+
+endif
diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
new file mode 100644
index 0000000..b96d414
--- /dev/null
+++ b/arch/arm/mach-davinci/Makefile
@@ -0,0 +1 @@
+obj-y += time.o
diff --git a/arch/arm/mach-davinci/include/mach/hardware.h b/arch/arm/mach-davinci/include/mach/hardware.h
new file mode 100644
index 0000000..ea9f481
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/hardware.h
@@ -0,0 +1,29 @@
+/*
+ * Hardware definitions common to all DaVinci family processors
+ *
+ * Author: Kevin Hilman, Deep Root Systems, LLC
+ *
+ * 2007 (c) Deep Root Systems, LLC. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+#ifndef __ASM_ARCH_HARDWARE_H
+#define __ASM_ARCH_HARDWARE_H
+
+#include <asm/memory.h>
+
+/*
+ * Before you add anything to this file:
+ *
+ * This header is for defines common to ALL DaVinci family chips.
+ * Anything that is chip specific should go in <chipname>.h,
+ * and the chip/board init code should then explicitly include
+ * <chipname>.h
+ */
+/*
+ * I/O mapping
+ */
+#define IO_PHYS				UL(0x01c00000)
+
+#endif /* __ASM_ARCH_HARDWARE_H */
diff --git a/arch/arm/mach-davinci/include/mach/serial.h b/arch/arm/mach-davinci/include/mach/serial.h
new file mode 100644
index 0000000..bc7449f
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/serial.h
@@ -0,0 +1,20 @@
+/*
+ * DaVinci serial device definitions
+ *
+ * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
+ *
+ * 2007 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+#ifndef __ASM_ARCH_SERIAL_H
+#define __ASM_ARCH_SERIAL_H
+
+#include <mach/hardware.h>
+
+#define DAVINCI_UART0_BASE	(IO_PHYS + 0x20000)
+#define DAVINCI_UART1_BASE	(IO_PHYS + 0x20400)
+#define DAVINCI_UART2_BASE	(IO_PHYS + 0x20800)
+
+#endif /* __ASM_ARCH_SERIAL_H */
diff --git a/arch/arm/mach-davinci/include/mach/time.h b/arch/arm/mach-davinci/include/mach/time.h
new file mode 100644
index 0000000..741e90c
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/time.h
@@ -0,0 +1,18 @@
+/*
+ * Local header file for DaVinci time code.
+ *
+ * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
+ *
+ * 2007 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+#ifndef __ARCH_ARM_MACH_DAVINCI_TIME_H
+#define __ARCH_ARM_MACH_DAVINCI_TIME_H
+
+#include <mach/hardware.h>
+
+#define DAVINCI_WDOG_BASE		(IO_PHYS + 0x21C00)
+
+#endif /* __ARCH_ARM_MACH_DAVINCI_TIME_H */
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
new file mode 100644
index 0000000..1e00719
--- /dev/null
+++ b/arch/arm/mach-davinci/time.c
@@ -0,0 +1,95 @@
+/*
+ * DaVinci timer subsystem
+ *
+ * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
+ *
+ * 2007 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+
+#include <common.h>
+#include <io.h>
+
+#include <mach/time.h>
+
+/* Timer register offsets */
+#define PID12			0x0
+#define TIM12			0x10
+#define TIM34			0x14
+#define PRD12			0x18
+#define PRD34			0x1c
+#define TCR			0x20
+#define TGCR			0x24
+#define WDTCR			0x28
+
+/* Timer register bitfields */
+#define TCR_ENAMODE_DISABLE          0x0
+#define TCR_ENAMODE_ONESHOT          0x1
+#define TCR_ENAMODE_PERIODIC         0x2
+#define TCR_ENAMODE_MASK             0x3
+
+#define TGCR_TIMMODE_SHIFT           2
+#define TGCR_TIMMODE_64BIT_GP        0x0
+#define TGCR_TIMMODE_32BIT_UNCHAINED 0x1
+#define TGCR_TIMMODE_64BIT_WDOG      0x2
+#define TGCR_TIMMODE_32BIT_CHAINED   0x3
+
+#define TGCR_TIM12RS_SHIFT           0
+#define TGCR_TIM34RS_SHIFT           1
+#define TGCR_RESET                   0x0
+#define TGCR_UNRESET                 0x1
+#define TGCR_RESET_MASK              0x3
+
+#define WDTCR_WDEN_SHIFT             14
+#define WDTCR_WDEN_DISABLE           0x0
+#define WDTCR_WDEN_ENABLE            0x1
+#define WDTCR_WDKEY_SHIFT            16
+#define WDTCR_WDKEY_SEQ0             0xa5c6
+#define WDTCR_WDKEY_SEQ1             0xda7e
+
+/* reset board using watchdog timer */
+void __noreturn reset_cpu(ulong addr)
+{
+	u32 tgcr, wdtcr;
+	void __iomem *base;
+
+	base = IOMEM(DAVINCI_WDOG_BASE);
+
+	/* disable, internal clock source */
+	__raw_writel(0, base + TCR);
+
+	/* reset timer, set mode to 64-bit watchdog, and unreset */
+	tgcr = 0;
+	__raw_writel(tgcr, base + TGCR);
+	tgcr = TGCR_TIMMODE_64BIT_WDOG << TGCR_TIMMODE_SHIFT;
+	tgcr |= (TGCR_UNRESET << TGCR_TIM12RS_SHIFT) |
+		(TGCR_UNRESET << TGCR_TIM34RS_SHIFT);
+	__raw_writel(tgcr, base + TGCR);
+
+	/* clear counter and period regs */
+	__raw_writel(0, base + TIM12);
+	__raw_writel(0, base + TIM34);
+	__raw_writel(0, base + PRD12);
+	__raw_writel(0, base + PRD34);
+
+	/* put watchdog in pre-active state */
+	wdtcr = __raw_readl(base + WDTCR);
+	wdtcr = (WDTCR_WDKEY_SEQ0 << WDTCR_WDKEY_SHIFT) |
+		(WDTCR_WDEN_ENABLE << WDTCR_WDEN_SHIFT);
+	__raw_writel(wdtcr, base + WDTCR);
+
+	/* put watchdog in active state */
+	wdtcr = (WDTCR_WDKEY_SEQ1 << WDTCR_WDKEY_SHIFT) |
+		(WDTCR_WDEN_ENABLE << WDTCR_WDEN_SHIFT);
+	__raw_writel(wdtcr, base + WDTCR);
+
+	/* write an invalid value to the WDKEY field to trigger
+	 * a watchdog reset */
+	wdtcr = 0x00004000;
+	__raw_writel(wdtcr, base + WDTCR);
+
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
