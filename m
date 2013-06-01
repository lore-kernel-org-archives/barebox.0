Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f174.google.com ([209.85.217.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdv-0001xy-W1
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:29 +0000
Received: by mail-lb0-f174.google.com with SMTP id u10so2387378lbi.33
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:54:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:49 +0400
Message-Id: <1370073169-29009-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/6] MIPS: unificate ns16550 debug_ll support code
To: barebox@lists.infradead.org

This commit moves the C debug_ll code from
the MIPS <debug_ll_ns16550.h> header file to
the MIPS <asm/debug_ll_ns16550.h> header file,
so the C code and the asm code can use the same
register address macros.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/debug_ll_ns16550.h      |   15 ++++++++++
 arch/mips/include/debug_ll_ns16550.h          |   37 -------------------------
 arch/mips/mach-malta/include/mach/debug_ll.h  |    2 +-
 arch/mips/mach-xburst/include/mach/debug_ll.h |    2 +-
 4 files changed, 17 insertions(+), 39 deletions(-)
 delete mode 100644 arch/mips/include/debug_ll_ns16550.h

diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index 5dd1b39..f00f348 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -48,6 +48,20 @@
 
 #define UART_LSR_THRE	0x20	/* Xmit holding register empty */
 
+#ifndef __ASSEMBLY__
+/*
+ * C macros
+ */
+
+#include <asm/io.h>
+
+static __inline__ void PUTC_LL(char ch)
+{
+	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
+		;
+	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
+}
+#else /* __ASSEMBLY__ */
 /*
  * Macros for use in assembly language code
  */
@@ -96,5 +110,6 @@
 	debug_ll_ns16550_outc '\n'
 #endif /* CONFIG_DEBUG_LL */
 .endm
+#endif /* __ASSEMBLY__ */
 
 #endif /* __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__ */
diff --git a/arch/mips/include/debug_ll_ns16550.h b/arch/mips/include/debug_ll_ns16550.h
deleted file mode 100644
index e9c7ecf..0000000
--- a/arch/mips/include/debug_ll_ns16550.h
+++ /dev/null
@@ -1,37 +0,0 @@
-/*
- * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-/** @file
- *  This file contains declaration for early output support
- */
-#ifndef __INCLUDE_ARCH_DEBUG_LL_NS16550_H__
-#define __INCLUDE_ARCH_DEBUG_LL_NS16550_H__
-
-#include <asm/io.h>
-
-#define rbr		(0 << DEBUG_LL_UART_SHIFT)
-#define lsr		(5 << DEBUG_LL_UART_SHIFT)
-
-#define LSR_THRE	0x20	/* Xmit holding register empty */
-
-static __inline__ void PUTC_LL(char ch)
-{
-	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
-	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + rbr);
-}
-
-#endif  /* __INCLUDE_ARCH_DEBUG_LL_NS16550_H__ */
diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
index 3a91c93..3e8b01b 100644
--- a/arch/mips/mach-malta/include/mach/debug_ll.h
+++ b/arch/mips/mach-malta/include/mach/debug_ll.h
@@ -23,6 +23,6 @@
 
 #include <mach/hardware.h>
 
-#include <debug_ll_ns16550.h>
+#include <asm/debug_ll_ns16550.h>
 
 #endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/mach-xburst/include/mach/debug_ll.h
index f260e65..6c3c980 100644
--- a/arch/mips/mach-xburst/include/mach/debug_ll.h
+++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
@@ -22,6 +22,6 @@
  *  This File contains declaration for early output support
  */
 #include <board/debug_ll.h>
-#include <debug_ll_ns16550.h>
+#include <asm/debug_ll_ns16550.h>
 
 #endif  /* __MACH_XBURST_DEBUG_LL__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
