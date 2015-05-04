Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpFUI-0005FO-Nn
 for barebox@lists.infradead.org; Mon, 04 May 2015 12:28:43 +0000
Received: by labbd9 with SMTP id bd9so102844326lab.2
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 05:28:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 May 2015 15:29:23 +0300
Message-Id: <1430742565-18714-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
References: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] MIPS: mach-ath79: debug_ll.h: add assembler routines
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/debug_ll.h | 136 ++++++++++++++++++++++++++-
 1 file changed, 131 insertions(+), 5 deletions(-)

diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
index de4c00d..c697318 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -18,17 +18,26 @@
 #ifndef __AR933X_DEBUG_LL__
 #define __AR933X_DEBUG_LL__
 
-#include <io.h>
-#include <linux/bitops.h>
 #include <asm/addrspace.h>
 
-#include <mach/ar71xx_regs.h>
+/* Alas! <mach/ar71xx_regs.h> isn't assembly-tolerant */
+#define AR71XX_APB_BASE     0x18000000
+#define AR933X_UART_BASE    (AR71XX_APB_BASE + 0x00020000)
+
+#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR933X_UART_BASE)
 
 #define AR933X_UART_DATA_REG            0x00
 #define AR933X_UART_DATA_TX_RX_MASK     0xff
-#define AR933X_UART_DATA_TX_CSR         BIT(9)
+#define AR933X_UART_DATA_TX_CSR		0x200
+#define AR933X_UART_DATA_RX_CSR		0x100
 
-#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR933X_UART_BASE)
+#ifndef __ASSEMBLY__
+
+#include <io.h>
+
+/*
+ * C macros
+ */
 
 static inline void ar933x_debug_ll_writel(u32 b, int offset)
 {
@@ -52,5 +61,122 @@ static inline void PUTC_LL(int ch)
 	data = (ch & AR933X_UART_DATA_TX_RX_MASK) | AR933X_UART_DATA_TX_CSR;
 	ar933x_debug_ll_writel(data, AR933X_UART_DATA_REG);
 }
+#else /* __ASSEMBLY__ */
+/*
+ * Macros for use in assembly language code
+ */
+
+/*
+ * output a character in a0
+ */
+.macro	debug_ll_outc_a0
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+201:
+	lw	t1, AR933X_UART_DATA_REG(t0)	/* get line status */
+	andi	t1, t1, AR933X_UART_DATA_TX_CSR	/* check for transmitter empty */
+	beqz	t1, 201b	/* try again */
+	andi	a0, a0, AR933X_UART_DATA_TX_RX_MASK
+	ori	a0, a0, AR933X_UART_DATA_TX_CSR
+	sw	a0, 0(t0)	/* write the character */
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character
+ */
+.macro	debug_ll_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	debug_ll_outc_a0
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a 32-bit value in hex
+ */
+.macro debug_ll_outhexw
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	move	t6, a0
+	li		t5, 32
+
+202:
+	addi	t5, t5, -4
+	srlv	a0, t6, t5
+
+	/* output one hex digit */
+	andi	a0, a0, 15
+	blt	a0, 10, 203f
+
+	addi	a0, a0, ('a' - '9' - 1)
+
+203:
+	addi	a0, a0, '0'
+
+	debug_ll_outc_a0
+
+	bgtz	t5, 202b
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * check character in input buffer
+ * return value:
+ *  v0 = 0   no character in input buffer
+ *  v0 != 0  character in input buffer
+ */
+/* FIXME: use tstc */
+.macro	debug_ll_tstc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+
+	/* get line status and check for data present */
+	lw	v0, AR933X_UART_DATA_REG(t0)
+	andi	v0, v0, AR933X_UART_DATA_RX_CSR
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * get character to v0
+ */
+.macro	debug_ll_getc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la	t0, DEBUG_LL_UART_ADDR
+204:
+	lw	v0, AR933X_UART_DATA_REG(t0)
+	andi	v0, v0, AR933X_UART_DATA_RX_CSR
+
+	/* try again */
+	beqz	v0, 204b
+
+	/* read a character */
+	lw	v0, AR933X_UART_DATA_REG(t0)
+	andi	v0, v0, AR933X_UART_DATA_TX_RX_MASK
+
+	/* remove the character from the FIFO */
+	li	t1, AR933X_UART_DATA_RX_CSR
+	sw  t1, AR933X_UART_DATA_REG(t0)
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+#endif /* __ASSEMBLY__ */
 
 #endif /* __AR933X_DEBUG_LL__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
