Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHF-0002UW-NM
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:16 +0000
Received: by mail-lb0-f180.google.com with SMTP id v6so6347068lbi.11
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:15:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:21 +0400
Message-Id: <1406582130-10116-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 02/11] ARM: add very initial support for Canon DIGIC chips
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                            | 10 +++++++
 arch/arm/Makefile                           |  1 +
 arch/arm/dts/digic4.dtsi                    | 42 +++++++++++++++++++++++++++++
 arch/arm/mach-digic/Kconfig                 |  8 ++++++
 arch/arm/mach-digic/Makefile                |  1 +
 arch/arm/mach-digic/core.c                  | 25 +++++++++++++++++
 arch/arm/mach-digic/include/mach/debug_ll.h | 40 +++++++++++++++++++++++++++
 arch/arm/mach-digic/include/mach/digic4.h   | 23 ++++++++++++++++
 arch/arm/mach-digic/include/mach/uart.h     | 28 +++++++++++++++++++
 9 files changed, 178 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3af0197..ea0abcd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -62,6 +62,15 @@ config ARCH_DAVINCI
 	select HAS_DEBUG_LL
 	select GPIOLIB
 
+config ARCH_DIGIC
+	bool "Canon DIGIC-based cameras"
+	select CPU_ARM946E
+	select HAS_DEBUG_LL
+	select CLOCKSOURCE_DIGIC
+	select GPIOLIB
+	help
+	  Support for Canon's digital cameras that use the DIGIC4 chip.
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -220,6 +229,7 @@ source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-bcm2835/Kconfig
 source arch/arm/mach-clps711x/Kconfig
 source arch/arm/mach-davinci/Kconfig
+source arch/arm/mach-digic/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-highbank/Kconfig
 source arch/arm/mach-imx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 983f7f5..1b0d7fe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -55,6 +55,7 @@ machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
 machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
 machine-$(CONFIG_ARCH_DAVINCI)		:= davinci
+machine-$(CONFIG_ARCH_DIGIC)		:= digic
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
 machine-$(CONFIG_ARCH_IMX)		:= imx
diff --git a/arch/arm/dts/digic4.dtsi b/arch/arm/dts/digic4.dtsi
new file mode 100644
index 0000000..21b004d
--- /dev/null
+++ b/arch/arm/dts/digic4.dtsi
@@ -0,0 +1,42 @@
+/include/ "skeleton.dtsi"
+
+/ {
+	compatible = "canon,digic4";
+
+	timer0: timer@c0210000 {
+		compatible = "canon,digic-timer";
+		reg = <0xc0210000 0x1c>;
+		status = "disabled";
+	};
+
+	timer1: timer@c0210100 {
+		compatible = "canon,digic-timer";
+		reg = <0xc0210100 0x1c>;
+		status = "disabled";
+	};
+
+	timer2: timer@c0210200 {
+		compatible = "canon,digic-timer";
+		reg = <0xc0210200 0x1c>;
+		status = "disabled";
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
+
+	uart: uart {
+		compatible = "canon,digic-uart";
+		reg = <0xc0800000 0x1c>;
+	};
+};
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
new file mode 100644
index 0000000..49ce44a
--- /dev/null
+++ b/arch/arm/mach-digic/Kconfig
@@ -0,0 +1,8 @@
+if ARCH_DIGIC
+
+choice
+	prompt "camera type"
+
+endchoice
+
+endif
diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
new file mode 100644
index 0000000..820eb10
--- /dev/null
+++ b/arch/arm/mach-digic/Makefile
@@ -0,0 +1 @@
+obj-y += core.o
diff --git a/arch/arm/mach-digic/core.c b/arch/arm/mach-digic/core.c
new file mode 100644
index 0000000..b1caec0
--- /dev/null
+++ b/arch/arm/mach-digic/core.c
@@ -0,0 +1,25 @@
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
+	pr_err("%s: unimplemented\n", __func__);
+	hang();
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-digic/include/mach/debug_ll.h b/arch/arm/mach-digic/include/mach/debug_ll.h
new file mode 100644
index 0000000..721fd44
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/debug_ll.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2013, 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <mach/uart.h>
+
+#define DEBUG_LL_UART         DIGIC4_UART
+
+/* Serial interface registers */
+#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + DIGIC_UART_TX)
+#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + DIGIC_UART_ST)
+
+static inline void PUTC_LL(char ch)
+{
+	while (!(readl(DEBUG_LL_UART_ST) & DIGIC_UART_ST_TX_RDY))
+		; /* noop */
+
+	writel(0x06, DEBUG_LL_UART_ST);
+	writel(ch, DEBUG_LL_UART_TX);
+}
+
+#endif /* __MACH_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-digic/include/mach/digic4.h b/arch/arm/mach-digic/include/mach/digic4.h
new file mode 100644
index 0000000..ffc7979
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/digic4.h
@@ -0,0 +1,23 @@
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
+#endif /* __DIGIC4_H__ */
diff --git a/arch/arm/mach-digic/include/mach/uart.h b/arch/arm/mach-digic/include/mach/uart.h
new file mode 100644
index 0000000..043f7cd
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/uart.h
@@ -0,0 +1,28 @@
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
+#ifndef __DIGIC_UART_H__
+#define __DIGIC_UART_H__
+
+/* Serial interface registers offsets */
+#define DIGIC_UART_TX	0x0
+#define DIGIC_UART_RX	0x4
+#define DIGIC_UART_ST	0x14
+# define DIGIC_UART_ST_RX_RDY	1
+# define DIGIC_UART_ST_TX_RDY	2
+
+#endif /* __DIGIC_UART_H__ */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
