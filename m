Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDouG-0004dg-4M
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 05:00:01 +0000
Received: by mail-la0-f53.google.com with SMTP id el20so1962042lab.40
 for <barebox@lists.infradead.org>; Sun, 25 Aug 2013 21:59:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 26 Aug 2013 08:57:10 +0400
Message-Id: <1377493037-2229-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/8] ARM: add very initial support for Canon DIGIC chips
To: barebox@lists.infradead.org

TODO: the clocksource driver need improvement!

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                            |  9 ++++
 arch/arm/Makefile                           |  1 +
 arch/arm/dts/digic4.dtsi                    | 24 +++++++++++
 arch/arm/mach-digic/Kconfig                 | 11 +++++
 arch/arm/mach-digic/Makefile                |  2 +
 arch/arm/mach-digic/core.c                  | 24 +++++++++++
 arch/arm/mach-digic/csrc-timer.c            | 67 +++++++++++++++++++++++++++++
 arch/arm/mach-digic/include/mach/debug_ll.h | 40 +++++++++++++++++
 arch/arm/mach-digic/include/mach/digic4.h   | 29 +++++++++++++
 arch/arm/mach-digic/include/mach/gpio.h     |  1 +
 10 files changed, 208 insertions(+)
 create mode 100644 arch/arm/dts/digic4.dtsi
 create mode 100644 arch/arm/mach-digic/Kconfig
 create mode 100644 arch/arm/mach-digic/Makefile
 create mode 100644 arch/arm/mach-digic/core.c
 create mode 100644 arch/arm/mach-digic/csrc-timer.c
 create mode 100644 arch/arm/mach-digic/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-digic/include/mach/digic4.h
 create mode 100644 arch/arm/mach-digic/include/mach/gpio.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 687acca..42cae36 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -54,6 +54,14 @@ config ARCH_CLPS711X
 	select GPIOLIB
 	select MFD_SYSCON
 
+config ARCH_DIGIC
+	bool "Canon DIGIC-based cameras"
+	select CPU_32v5
+	select HAS_DEBUG_LL
+	select GPIOLIB
+	help
+	  Support for Canon's digital cameras that use the DIGIC4 chip.
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -173,6 +181,7 @@ source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-bcm2835/Kconfig
 source arch/arm/mach-clps711x/Kconfig
+source arch/arm/mach-digic/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-highbank/Kconfig
 source arch/arm/mach-imx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 590a0d8..99929eb 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -54,6 +54,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
 machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
+machine-$(CONFIG_ARCH_DIGIC)		:= digic
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
 machine-$(CONFIG_ARCH_IMX)		:= imx
diff --git a/arch/arm/dts/digic4.dtsi b/arch/arm/dts/digic4.dtsi
new file mode 100644
index 0000000..8304bbe
--- /dev/null
+++ b/arch/arm/dts/digic4.dtsi
@@ -0,0 +1,24 @@
+/include/ "skeleton.dtsi"
+
+/ {
+	compatible = "canon,digic4";
+
+	uart: uart {
+		compatible = "canon,digic-serial";
+		reg = <0xc0800000 0x1c>;
+	};
+
+	/*
+	 * I don't know real max GPIO number but this page
+	 *   http://magiclantern.wikia.com/wiki/Register_Map#GPIO_Ports
+	 * says about 93 pins on 5DMkIII.
+	 * Assume that DIGIC4 has at least 96 pins.
+	 * So resource size is 96 * 4 = 0x180.
+	 */
+	gpio: gpio {
+		compatible = "canon,digic-gpio";
+		reg = <0xc0220000 0x180>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
new file mode 100644
index 0000000..878a1a9
--- /dev/null
+++ b/arch/arm/mach-digic/Kconfig
@@ -0,0 +1,11 @@
+if ARCH_DIGIC
+
+choice
+	prompt "camera type"
+
+endchoice
+
+config DIGIC_CSRC_TIMER
+	bool
+
+endif
diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
new file mode 100644
index 0000000..1d7cb72
--- /dev/null
+++ b/arch/arm/mach-digic/Makefile
@@ -0,0 +1,2 @@
+obj-y += core.o
+obj-$(CONFIG_DIGIC_CSRC_TIMER) += csrc-timer.o
diff --git a/arch/arm/mach-digic/core.c b/arch/arm/mach-digic/core.c
new file mode 100644
index 0000000..a442633
--- /dev/null
+++ b/arch/arm/mach-digic/core.c
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+
+void __noreturn reset_cpu(unsigned long ignored)
+{
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-digic/csrc-timer.c b/arch/arm/mach-digic/csrc-timer.c
new file mode 100644
index 0000000..9ae33c4
--- /dev/null
+++ b/arch/arm/mach-digic/csrc-timer.c
@@ -0,0 +1,67 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+
+#include <mach/digic4.h>
+
+#define DIGIC_TIMER_CLOCK 1000000
+
+#define DIGIC_TIMER_CONTROL 0x00
+#define DIGIC_TIMER_VALUE 0x0c
+
+static void *digic_timer_base;
+
+static uint64_t dummy_cs_read(void)
+{
+	return (uint64_t)(0xffff - readl(digic_timer_base + DIGIC_TIMER_VALUE));
+}
+
+static struct clocksource dummy_cs = {
+	.read	= dummy_cs_read,
+	.mask   = CLOCKSOURCE_MASK(16),
+};
+
+static int clocksource_init(void)
+{
+	clocks_calc_mult_shift(&dummy_cs.mult, &dummy_cs.shift,
+		DIGIC_TIMER_CLOCK, NSEC_PER_SEC, 1);
+
+	digic_timer_base = (void *)DIGIC4_TIMER2;
+
+	/* disable timer */
+	writel(0x80000000, digic_timer_base + DIGIC_TIMER_CONTROL);
+
+	/* magic values... divider? */
+	writel(0x00000002, digic_timer_base + 0x04);
+	writel(0x00000003, digic_timer_base + 0x14);
+
+	/* max counter value */
+	writel(0x0000ffff, digic_timer_base + 0x08);
+
+	init_clock(&dummy_cs);
+
+	/* enable timer */
+	writel(0x00000001, digic_timer_base + DIGIC_TIMER_CONTROL);
+	/* start timer */
+	writel(0x00000001, digic_timer_base + 0x10);
+
+	return 0;
+}
+core_initcall(clocksource_init);
diff --git a/arch/arm/mach-digic/include/mach/debug_ll.h b/arch/arm/mach-digic/include/mach/debug_ll.h
new file mode 100644
index 0000000..5f4579e
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/debug_ll.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+#include <mach/digic4.h>
+
+#define DEBUG_LL_UART         DIGIC4_UART
+
+/* Serial interface registers */
+#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + 0x0)
+#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + 0x14)
+ #define UART_ST_TX_RDY	2
+
+static inline void PUTC_LL(char ch)
+{
+	while (!(readl(DEBUG_LL_UART_ST) & UART_ST_TX_RDY))
+		; /* noop */
+
+	writel(0x06, DEBUG_LL_UART_ST);
+	writel(ch, DEBUG_LL_UART_TX);
+}
+
+#endif
diff --git a/arch/arm/mach-digic/include/mach/digic4.h b/arch/arm/mach-digic/include/mach/digic4.h
new file mode 100644
index 0000000..c0e50a4
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/digic4.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __DIGIC4_H__
+#define __DIGIC4_H__
+
+#define DIGIC4_UART	0xc0800000
+
+#define DIGIC4_TIMER0	0xc0210000
+#define DIGIC4_TIMER1	0xc0210100
+#define DIGIC4_TIMER2	0xc0210200
+
+#define DIGIC4_GPIO(n)	(0xc0220000 + 4*n)
+
+#endif /* __DIGIC4_H__ */
diff --git a/arch/arm/mach-digic/include/mach/gpio.h b/arch/arm/mach-digic/include/mach/gpio.h
new file mode 100644
index 0000000..306ab4c
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/gpio.h
@@ -0,0 +1 @@
+#include <asm-generic/gpio.h>
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
