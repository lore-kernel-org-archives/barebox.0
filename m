Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaO4z-0004sf-0A
 for barebox@lists.infradead.org; Fri, 01 Jun 2012 09:23:36 +0000
Received: by lbbgg6 with SMTP id gg6so1832381lbb.36
 for <barebox@lists.infradead.org>; Fri, 01 Jun 2012 02:23:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Jun 2012 13:23:21 +0400
Message-Id: <1338542601-28151-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
References: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] MIPS: XBurst: suitable solution for per-board debug_ll
To: barebox@lists.infradead.org

In the commit 40492a0c1305835c996e15eb1cce2406473ae76d
(MIPS: add common header file for DEBUG_LL via NS16550)
introduced common DEBUG_LL via NS16550 for MIPS
(see file arch/mips/include/debug_ll_ns16550.h).

In the commit 1cbe2b2c00de0efca503a983d0d008833f186f33
(MIPS: XBurst: add Ritmix RZX-50 board support)
the file debug_ll_ns16550.h used in
the file arch/mips/mach-xburst/include/mach/debug_ll.h.

Usage looks like this:

------------------------------------------------
+#ifdef CONFIG_BOARD_RZX50
+#include <mach/debug_ll_jz4755.h>
+#endif
+
+#include <debug_ll_ns16550.h>
------------------------------------------------

So after adding another board (e.g. A320) we will have something like this:

------------------------------------------------
 #ifdef CONFIG_BOARD_RZX50
 #include <mach/debug_ll_jz4755.h>
 #endif

+#ifdef CONFIG_BOARD_A320
+#include <mach/debug_ll_jz4740.h>
+#endif

 #include <debug_ll_ns16550.h>
------------------------------------------------

This approach has disadvantage:
* the files mach/debug_ll_jz4740.h and mach/debug_ll_jz4755.h
(they go to arch/mips/arch-xburst) are __BOARD-SPECIFIC__
(not SOC- or mach-specific!); The file mach-xburst/include/mach/debug_ll.h
is outside board directory, but it contains some board related information.

This commit introduce a more suitable solution.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/include/board/debug_ll.h    |   29 ++++++++++++++++++++
 arch/mips/mach-xburst/include/mach/debug_ll.h      |    5 +---
 .../mach-xburst/include/mach/debug_ll_jz4755.h     |   29 --------------------
 3 files changed, 30 insertions(+), 33 deletions(-)
 create mode 100644 arch/mips/boards/rzx50/include/board/debug_ll.h
 delete mode 100644 arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h

diff --git a/arch/mips/boards/rzx50/include/board/debug_ll.h b/arch/mips/boards/rzx50/include/board/debug_ll.h
new file mode 100644
index 0000000..4164e47
--- /dev/null
+++ b/arch/mips/boards/rzx50/include/board/debug_ll.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#ifndef __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
+#define __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
+
+#include <mach/jz4750d_regs.h>
+
+#define DEBUG_LL_UART_ADDR	UART1_BASE
+#define DEBUG_LL_UART_SHIFT	2
+
+#endif  /* __INCLUDE_RZX50_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/mach-xburst/include/mach/debug_ll.h
index c3dbaa2..6e0cc93 100644
--- a/arch/mips/mach-xburst/include/mach/debug_ll.h
+++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
@@ -24,10 +24,7 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#ifdef CONFIG_BOARD_RZX50
-#include <mach/debug_ll_jz4755.h>
-#endif
-
+#include <board/debug_ll.h>
 #include <debug_ll_ns16550.h>
 
 #endif  /* __MACH_XBURST_DEBUG_LL__ */
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h
deleted file mode 100644
index babe296..0000000
--- a/arch/mips/mach-xburst/include/mach/debug_ll_jz4755.h
+++ /dev/null
@@ -1,29 +0,0 @@
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
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#ifndef __INCLUDE_DEBUG_LL_JZ4755_H__
-#define __INCLUDE_DEBUG_LL_JZ4755_H__
-
-#include <mach/jz4750d_regs.h>
-
-#define DEBUG_LL_UART_ADDR	UART1_BASE
-#define DEBUG_LL_UART_SHIFT	2
-
-#endif  /* __INCLUDE_DEBUG_LL_JZ4755_H__ */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
