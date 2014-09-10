Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYT-0003xD-BT
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:06 +0000
Received: by mail-la0-f54.google.com with SMTP id b17so20607852lan.41
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:22 +0400
Message-Id: <1410334946-12922-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/9] MIPS: xburst: debug_ll: rework common code,
 add JZ4780 support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/Kconfig                      | 19 +++++---
 .../mach-xburst/include/mach/debug_ll_jz4750d.h    |  6 +--
 .../mach-xburst/include/mach/debug_ll_jz4780.h     | 51 ++++++++++++++++++++++
 arch/mips/mach-xburst/include/mach/jz4780.h        | 30 +++++++++++++
 4 files changed, 98 insertions(+), 8 deletions(-)

diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 4d57015..e3db61e 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -27,21 +27,30 @@ config BOARD_RZX50
 endchoice
 
 if DEBUG_LL
-if CPU_JZ4755
 choice
 	prompt "DEBUG_LL port"
 
-config JZ4750D_DEBUG_LL_UART0
+config JZ47XX_DEBUG_LL_UART0
+	depends on CPU_JZ4755 || CPU_JZ4780
 	bool "UART0"
 
-config JZ4750D_DEBUG_LL_UART1
+config JZ47XX_DEBUG_LL_UART1
+	depends on CPU_JZ4755 || CPU_JZ4780
 	bool "UART1"
 
-config JZ4750D_DEBUG_LL_UART2
+config JZ47XX_DEBUG_LL_UART2
+	depends on CPU_JZ4755 || CPU_JZ4780
 	bool "UART2"
 
+config JZ47XX_DEBUG_LL_UART3
+	depends on CPU_JZ4780
+	bool "UART3"
+
+config JZ47XX_DEBUG_LL_UART4
+	depends on CPU_JZ4780
+	bool "UART4"
+
 endchoice
-endif # CPU_JZ4755
 endif # DEBUG_LL
 
 endif
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
index 2a55dea..6d18366 100644
--- a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
+++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
@@ -20,15 +20,15 @@
 
 #include <mach/jz4750d_regs.h>
 
-#ifdef CONFIG_JZ4750D_DEBUG_LL_UART0
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART0
 #define DEBUG_LL_UART_ADDR	UART0_BASE
 #endif
 
-#ifdef CONFIG_JZ4750D_DEBUG_LL_UART1
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART1
 #define DEBUG_LL_UART_ADDR	UART1_BASE
 #endif
 
-#ifdef CONFIG_JZ4750D_DEBUG_LL_UART2
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART2
 #define DEBUG_LL_UART_ADDR	UART2_BASE
 #endif
 
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h
new file mode 100644
index 0000000..0bdc58c
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h
@@ -0,0 +1,51 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#ifndef __INCLUDE_DEBUG_LL_JZ4780_H__
+#define __INCLUDE_DEBUG_LL_JZ4780_H__
+
+#include <mach/jz4780.h>
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART0
+#define DEBUG_LL_UART_ADDR	JZ4780_UART0_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART1
+#define DEBUG_LL_UART_ADDR	JZ4780_UART1_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART2
+#define DEBUG_LL_UART_ADDR	JZ4780_UART2_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART3
+#define DEBUG_LL_UART_ADDR	JZ4780_UART3_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART4
+#define DEBUG_LL_UART_ADDR	JZ4780_UART4_BASE
+#endif
+
+#define DEBUG_LL_UART_SHIFT	2
+
+#ifndef DEBUG_LL_UART_CLK
+#define DEBUG_LL_UART_CLK	(48000000 / 16)
+#endif
+#define DEBUG_LL_UART_BPS	CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR	(DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#endif /* __INCLUDE_DEBUG_LL_JZ4780_H__ */
diff --git a/arch/mips/mach-xburst/include/mach/jz4780.h b/arch/mips/mach-xburst/include/mach/jz4780.h
new file mode 100644
index 0000000..4503a93
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/jz4780.h
@@ -0,0 +1,30 @@
+/*
+ * JZ4780 SoC definitions
+ *
+ * Copyright (c) 2013 Imagination Technologies
+ * Author: Paul Burton <paul.burton@imgtec.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MIPS_ASM_MACH_JZ4780_JZ4780_H__
+#define __MIPS_ASM_MACH_JZ4780_JZ4780_H__
+
+/* APB bus devices */
+#define JZ4780_UART0_BASE	0xb0030000
+#define JZ4780_UART1_BASE	0xb0031000
+#define JZ4780_UART2_BASE	0xb0032000
+#define JZ4780_UART3_BASE	0xb0033000
+#define JZ4780_UART4_BASE	0xb0034000
+#define JZ4780_UARTn_BASE(n)	(JZ4780_UART0_BASE + (n * 0x1000))
+
+#endif /* __MIPS_ASM_MACH_JZ4780_JZ4780_H__ */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
