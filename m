Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdo-0001xq-8r
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:21 +0000
Received: by mail-lb0-f169.google.com with SMTP id 10so2396335lbf.0
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:53:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:44 +0400
Message-Id: <1370073169-29009-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/6] MIPS: XBurst: use mach-specific debug_ll setup
To: barebox@lists.infradead.org

Ingenic JZ4755 SoC (JZ4750D family) has three UARTs.
So we can give to the user choose which one of them
to use for low level debug (debug_ll) output.

Also this commit adapts the only JZ4755 board
(Ritmix RZX50) for using the new debug_ll port
selection.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/include/board/debug_ll.h    |    5 +--
 arch/mips/mach-xburst/Kconfig                      |   18 ++++++++++
 .../mach-xburst/include/mach/debug_ll_jz4750d.h    |   37 ++++++++++++++++++++
 arch/mips/mach-xburst/include/mach/jz4750d_regs.h  |    2 ++
 4 files changed, 58 insertions(+), 4 deletions(-)
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h

diff --git a/arch/mips/boards/rzx50/include/board/debug_ll.h b/arch/mips/boards/rzx50/include/board/debug_ll.h
index 3d183b0..7ae0e2a 100644
--- a/arch/mips/boards/rzx50/include/board/debug_ll.h
+++ b/arch/mips/boards/rzx50/include/board/debug_ll.h
@@ -18,9 +18,6 @@
 #ifndef __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
 #define __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
 
-#include <mach/jz4750d_regs.h>
-
-#define DEBUG_LL_UART_ADDR	UART1_BASE
-#define DEBUG_LL_UART_SHIFT	2
+#include <mach/debug_ll_jz4750d.h>
 
 #endif  /* __INCLUDE_RZX50_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index c72b741..e6413d5 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -17,6 +17,24 @@ config BOARD_RZX50
 
 endchoice
 
+if DEBUG_LL
+if CPU_JZ4755
+choice
+	prompt "DEBUG_LL port"
+
+config JZ4750D_DEBUG_LL_UART0
+	bool "UART0"
+
+config JZ4750D_DEBUG_LL_UART1
+	bool "UART1"
+
+config JZ4750D_DEBUG_LL_UART2
+	bool "UART2"
+
+endchoice
+endif # CPU_JZ4755
+endif # DEBUG_LL
+
 source arch/mips/boards/rzx50/Kconfig
 
 endif
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
new file mode 100644
index 0000000..7bf66b1
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
@@ -0,0 +1,37 @@
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
+#ifndef __INCLUDE_DEBUG_LL_JZ4750D_H__
+#define __INCLUDE_DEBUG_LL_JZ4750D_H__
+
+#include <mach/jz4750d_regs.h>
+
+#ifdef CONFIG_JZ4750D_DEBUG_LL_UART0
+#define DEBUG_LL_UART_ADDR	UART0_BASE
+#endif
+
+#ifdef CONFIG_JZ4750D_DEBUG_LL_UART1
+#define DEBUG_LL_UART_ADDR	UART1_BASE
+#endif
+
+#ifdef CONFIG_JZ4750D_DEBUG_LL_UART2
+#define DEBUG_LL_UART_ADDR	UART2_BASE
+#endif
+
+#define DEBUG_LL_UART_SHIFT	2
+
+#endif /* __INCLUDE_DEBUG_LL_JZ4750D_H__ */
diff --git a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
index eafdd2f..7a3daad 100644
--- a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
+++ b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
@@ -16,7 +16,9 @@
 #define TCU_BASE        0xb0002000
 #define WDT_BASE        0xb0002000
 #define RTC_BASE        0xb0003000
+#define UART0_BASE      0xb0030000
 #define UART1_BASE      0xb0031000
+#define UART2_BASE      0xb0032000
 
 /*************************************************************************
  * TCU (Timer Counter Unit)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
