Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgiGZ-0001zF-SI
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 23:23:16 +0000
Received: by lbcga7 with SMTP id ga7so24108441lbc.1
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 16:22:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 11 Apr 2015 02:22:58 +0300
Message-Id: <1428708181-12506-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
References: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] MIPS: xburst: debug_ll: add JZ4770 support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/Kconfig                      |  8 ++--
 .../mach-xburst/include/mach/debug_ll_jz4770.h     | 47 ++++++++++++++++++++++
 arch/mips/mach-xburst/include/mach/jz4770.h        | 25 ++++++++++++
 3 files changed, 76 insertions(+), 4 deletions(-)

diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 1fadf3f..3623d1a 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -41,19 +41,19 @@ choice
 	prompt "DEBUG_LL port"
 
 config JZ47XX_DEBUG_LL_UART0
-	depends on CPU_JZ4755 || CPU_JZ4780
+	depends on CPU_JZ4755 || CPU_JZ4770 || CPU_JZ4780
 	bool "UART0"
 
 config JZ47XX_DEBUG_LL_UART1
-	depends on CPU_JZ4755 || CPU_JZ4780
+	depends on CPU_JZ4755 || CPU_JZ4770 || CPU_JZ4780
 	bool "UART1"
 
 config JZ47XX_DEBUG_LL_UART2
-	depends on CPU_JZ4755 || CPU_JZ4780
+	depends on CPU_JZ4755 || CPU_JZ4770 || CPU_JZ4780
 	bool "UART2"
 
 config JZ47XX_DEBUG_LL_UART3
-	depends on CPU_JZ4780
+	depends on CPU_JZ4770 || CPU_JZ4780
 	bool "UART3"
 
 config JZ47XX_DEBUG_LL_UART4
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4770.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4770.h
new file mode 100644
index 0000000..79d72a0
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4770.h
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
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
+#ifndef __INCLUDE_DEBUG_LL_JZ4770_H__
+#define __INCLUDE_DEBUG_LL_JZ4770_H__
+
+#include <mach/jz4770.h>
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART0
+#define DEBUG_LL_UART_ADDR	JZ4770_UART0_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART1
+#define DEBUG_LL_UART_ADDR	JZ4770_UART1_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART2
+#define DEBUG_LL_UART_ADDR	JZ4770_UART2_BASE
+#endif
+
+#ifdef CONFIG_JZ47XX_DEBUG_LL_UART3
+#define DEBUG_LL_UART_ADDR	JZ4770_UART3_BASE
+#endif
+
+#define DEBUG_LL_UART_SHIFT	2
+
+#ifndef DEBUG_LL_UART_CLK
+#define DEBUG_LL_UART_CLK	(12000000 / 16)
+#endif
+#define DEBUG_LL_UART_BPS	CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR	(DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#endif /* __INCLUDE_DEBUG_LL_JZ4770_H__ */
diff --git a/arch/mips/mach-xburst/include/mach/jz4770.h b/arch/mips/mach-xburst/include/mach/jz4770.h
new file mode 100644
index 0000000..161c1af
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/jz4770.h
@@ -0,0 +1,25 @@
+/*
+ * JZ4770 SoC definitions
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
+#ifndef __MIPS_ASM_MACH_JZ4770_JZ4770_H__
+#define __MIPS_ASM_MACH_JZ4770_JZ4770_H__
+
+/* APB bus devices */
+#define JZ4770_UART0_BASE	0xb0030000
+#define JZ4770_UART1_BASE	0xb0031000
+#define JZ4770_UART2_BASE	0xb0032000
+#define JZ4770_UART3_BASE	0xb0033000
+
+#endif /* __MIPS_ASM_MACH_JZ4770_JZ4770_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
