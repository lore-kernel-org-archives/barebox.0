Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6503-0007Kb-Fu
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 20:34:00 +0000
Received: by mail-lb0-f175.google.com with SMTP id 13so1580585lba.20
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 13:33:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Aug 2013 00:25:23 +0400
Message-Id: <1375647927-30627-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
References: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/5] ARM: add very initial support for Canon DIGIC chips
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                            |  8 +++++
 arch/arm/Makefile                           |  1 +
 arch/arm/mach-digic/Kconfig                 |  8 +++++
 arch/arm/mach-digic/Makefile                |  1 +
 arch/arm/mach-digic/core.c                  | 25 +++++++++++++++
 arch/arm/mach-digic/include/mach/debug_ll.h | 48 +++++++++++++++++++++++++++++
 6 files changed, 91 insertions(+)
 create mode 100644 arch/arm/mach-digic/Kconfig
 create mode 100644 arch/arm/mach-digic/Makefile
 create mode 100644 arch/arm/mach-digic/core.c
 create mode 100644 arch/arm/mach-digic/include/mach/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e4db8da..377f667 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -54,6 +54,13 @@ config ARCH_CLPS711X
 	select GPIOLIB
 	select MFD_SYSCON
 
+config ARCH_DIGIC
+	bool "Canon DIGIC-based cameras"
+	select CPU_32v5
+	select HAS_DEBUG_LL
+	help
+	  Support for Canon's digital cameras that use the DIGIC4 ASIC.
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -171,6 +178,7 @@ source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
 source arch/arm/mach-bcm2835/Kconfig
 source arch/arm/mach-clps711x/Kconfig
+source arch/arm/mach-digic/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-highbank/Kconfig
 source arch/arm/mach-imx/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d80c12c..1b3040e 100644
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
index 0000000..f222c5b
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
+	while (1)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-digic/include/mach/debug_ll.h b/arch/arm/mach-digic/include/mach/debug_ll.h
new file mode 100644
index 0000000..23e5966
--- /dev/null
+++ b/arch/arm/mach-digic/include/mach/debug_ll.h
@@ -0,0 +1,48 @@
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
+
+/* _sleep(0x400000); -> 3 seconds on Canon EOS 600D */
+static inline void _sleep(int delay)
+{
+	int i;
+
+	for (i = 0; i < delay; i++) {
+		asm ("nop\n");
+		asm ("nop\n");
+	}
+}
+
+/* Serial interface registers */
+#define UART_BASE       0xC0800000
+#define UART_TX         (UART_BASE + 0x0)
+#define UART_RX         (UART_BASE + 0x4)
+#define UART_ST         (UART_BASE + 0x14)
+
+static inline void PUTC_LL(char ch)
+{
+	/* FIXME! need check UART status first */
+
+	writeb(ch, UART_TX);
+	_sleep(0x1000);
+}
+
+#endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
