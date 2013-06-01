Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdn-0001xp-Rv
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:20 +0000
Received: by mail-la0-f48.google.com with SMTP id fs12so2058929lab.35
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:53:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:45 +0400
Message-Id: <1370073169-29009-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/6] MIPS: pbl: add low-level debug asm macros for ns16550
To: barebox@lists.infradead.org

This patch adds macros for ns16550 port initialisation
and single char output. The macros can be used in
MIPS asm pbl code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/debug_ll_ns16550.h |  100 ++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 arch/mips/include/asm/debug_ll_ns16550.h

diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
new file mode 100644
index 0000000..5dd1b39
--- /dev/null
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -0,0 +1,100 @@
+/*
+ * Copyright (C) 2012, 2013 Antony Pavlov <antonynpavlov@gmail.com>
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
+/** @file
+ *  This file contains declaration for early output support
+ */
+#ifndef __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__
+#define __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__
+
+#ifdef CONFIG_DEBUG_LL
+
+#ifndef DEBUG_LL_UART_ADDR
+#error DEBUG_LL_UART_ADDR is undefined!
+#endif
+
+#ifndef DEBUG_LL_UART_SHIFT
+#error DEBUG_LL_UART_SHIFT is undefined!
+#endif
+
+#ifndef DEBUG_LL_UART_DIVISOR
+#error DEBUG_LL_UART_DIVISOR is undefined!
+#endif
+
+#endif /* CONFIG_DEBUG_LL */
+
+#define UART_THR	(0x0 << DEBUG_LL_UART_SHIFT)
+#define UART_DLL	(0x0 << DEBUG_LL_UART_SHIFT)
+#define UART_DLM	(0x1 << DEBUG_LL_UART_SHIFT)
+#define UART_LCR	(0x3 << DEBUG_LL_UART_SHIFT)
+#define UART_LSR	(0x5 << DEBUG_LL_UART_SHIFT)
+
+#define UART_LCR_W	0x07		/* Set UART to 8,N,2 & DLAB = 0 */
+#define UART_LCR_DLAB	0x87	/* Set UART to 8,N,2 & DLAB = 1 */
+
+#define UART_LSR_THRE	0x20	/* Xmit holding register empty */
+
+/*
+ * Macros for use in assembly language code
+ */
+
+.macro	debug_ll_ns16550_init
+#ifdef CONFIG_DEBUG_LL
+	la	t0, DEBUG_LL_UART_ADDR
+
+	li	t1, UART_LCR_DLAB		/* DLAB on */
+	sb	t1, UART_LCR(t0)		/* Write it out */
+
+	li	t1, DEBUG_LL_UART_DIVISOR
+	sb	t1, UART_DLL(t0)		/* write low order byte */
+	srl	t1, t1, 8
+	sb	t1, UART_DLM(t0)		/* write high order byte */
+
+	li	t1, UART_LCR_W			/* DLAB off */
+	sb	t1, UART_LCR(t0)		/* Write it out */
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character in a0
+ */
+.macro	debug_ll_ns16550_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	la	t0, DEBUG_LL_UART_ADDR
+
+1:	lbu	t1, UART_LSR(t0)	/* get line status */
+	nop
+	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
+	beqz	t1, 1b			/* try again */
+	 nop
+
+	sb	a0, UART_THR(t0)	/* write the character */
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output CR + NL
+ */
+.macro	debug_ll_ns16550_outnl
+#ifdef CONFIG_DEBUG_LL
+	debug_ll_ns16550_outc '\r'
+	debug_ll_ns16550_outc '\n'
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+#endif /* __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
