Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMT3W-0006QP-Lg
 for barebox@lists.infradead.org; Sun, 27 Sep 2020 09:33:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id x5so1593459plo.6
 for <barebox@lists.infradead.org>; Sun, 27 Sep 2020 02:33:15 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun, 27 Sep 2020 17:32:57 +0800
Message-Id: <1601199177-11599-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH v2] asm/debug_ll_ns16550.h: add parament divisor
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de, duhuanpeng <u74147@gmail.com>

From: duhuanpeng <u74147@gmail.com>

add a parameters for the assembly version for passing divisor,
and set the default value to DEBUG_LL_UART_ADDR when no parameter
is given.
now it is possiable to recalculate divisor in runtime to keep
the baudrate unchanged. when pll settings changed outside of barebox.
e.g. jtag.

Signed-off-by: duhuanpeng <u74147@gmail.com>
---
 arch/mips/include/asm/debug_ll_ns16550.h  | 4 ++--
 arch/riscv/include/asm/debug_ll_ns16550.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index df58c4c..703bfae 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -58,14 +58,14 @@ static inline void PUTC_LL(char ch)
  * Macros for use in assembly language code
  */
 
-.macro	debug_ll_ns16550_init
+.macro	debug_ll_ns16550_init divisor=DEBUG_LL_UART_DIVISOR
 #ifdef CONFIG_DEBUG_LL
 	la	t0, DEBUG_LL_UART_ADDR
 
 	li	t1, UART_LCR_DLAB		/* DLAB on */
 	sb	t1, UART_LCR(t0)		/* Write it out */
 
-	li	t1, DEBUG_LL_UART_DIVISOR
+	li	t1, \divisor
 	sb	t1, UART_DLL(t0)		/* write low order byte */
 	srl	t1, t1, 8
 	sb	t1, UART_DLM(t0)		/* write high order byte */
diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
index e891cbd..f1c2ccb 100644
--- a/arch/riscv/include/asm/debug_ll_ns16550.h
+++ b/arch/riscv/include/asm/debug_ll_ns16550.h
@@ -88,14 +88,14 @@ static inline void debug_ll_ns16550_init(void)
  * Macros for use in assembly language code
  */
 
-.macro	debug_ll_ns16550_init
+.macro	debug_ll_ns16550_init divisor=DEBUG_LL_UART_DIVISOR
 #ifdef CONFIG_DEBUG_LL
 	li	t0, DEBUG_LL_UART_ADDR
 
 	li	t1, UART_LCR_DLAB		/* DLAB on */
 	UART_REG_S	t1, UART_LCR(t0)		/* Write it out */
 
-	li	t1, DEBUG_LL_UART_DIVISOR
+	li	t1, \divisor
 	UART_REG_S	t1, UART_DLL(t0)		/* write low order byte */
 	srl	t1, t1, 8
 	UART_REG_S	t1, UART_DLM(t0)		/* write high order byte */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
