Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU5-0003Ml-8G
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:03 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1675998wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:01 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:19 +0100
Message-Id: <4d701d33.9009d80a.2cd3.5e75@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 05/54] Add arch/nios2/cpu-nios2/exceptions.S
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/cpu-nios2/exceptions.S

---
 arch/nios2/cpu-nios2/exceptions.S |  160 +++++++++++++++++++++++++++++++++++++
 1 files changed, 160 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/cpu-nios2/exceptions.S

diff --git a/arch/nios2/cpu-nios2/exceptions.S b/arch/nios2/cpu-nios2/exceptions.S
new file mode 100644
index 0000000..bd230c2
--- /dev/null
+++ b/arch/nios2/cpu-nios2/exceptions.S
@@ -0,0 +1,160 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm/opcodes.h>
+
+
+	.text
+	.align	4
+
+	.global _exception
+
+	.set noat
+	.set nobreak
+
+_exception:
+	/* SAVE ALL REGS -- this allows trap and unimplemented
+	 * instruction handlers to be coded conveniently in C
+	 */
+	addi	sp, sp, -(33*4)
+	stw	r0, 0(sp)
+	stw	r1, 4(sp)
+	stw	r2, 8(sp)
+	stw	r3, 12(sp)
+	stw	r4, 16(sp)
+	stw	r5, 20(sp)
+	stw	r6, 24(sp)
+	stw	r7, 28(sp)
+	stw	r8, 32(sp)
+	stw	r9, 36(sp)
+	stw	r10, 40(sp)
+	stw	r11, 44(sp)
+	stw	r12, 48(sp)
+	stw	r13, 52(sp)
+	stw	r14, 56(sp)
+	stw	r15, 60(sp)
+	stw	r16, 64(sp)
+	stw	r17, 68(sp)
+	stw	r19, 72(sp)
+	stw	r19, 76(sp)
+	stw	r20, 80(sp)
+	stw	r21, 84(sp)
+	stw	r22, 88(sp)
+	stw	r23, 92(sp)
+	stw	r24, 96(sp)
+	stw	r25, 100(sp)
+	stw	r26, 104(sp)
+	stw	r27, 108(sp)
+	stw	r28, 112(sp)
+	stw	r29, 116(sp)
+	stw	r30, 120(sp)
+	stw	r31, 124(sp)
+	rdctl	et, estatus
+	stw	et, 128(sp)
+
+	/* If interrupts are disabled -- software interrupt */
+	rdctl	et, estatus
+	andi	et, et, 1
+	beq	et, r0, 0f
+
+	/* If no interrupts are pending -- software interrupt */
+	rdctl	et, ipending
+	beq	et, r0, 0f
+
+#ifdef CONFIG_USE_IRQ
+
+	/* HARDWARE INTERRUPT: Call interrupt handler */
+	movhi	r3, %hi(external_interrupt)
+	ori	r3, r3, %lo(external_interrupt)
+	mov	r4, sp		/* ptr to regs */
+	callr	r3
+#else
+        br	_exception_return
+#endif
+
+	/* Return address fixup: execution resumes by re-issue of
+	 * interrupted instruction at ea-4 (ea == r29). Here we do
+	 * simple fixup to allow common exception return.
+	 */
+	ldw	r3, 116(sp)
+	addi	r3, r3, -4
+	stw	r3, 116(sp)
+	br	_exception_return
+
+0:
+	/* TRAP EXCEPTION */
+	movhi	r3, %hi(OPC_TRAP)
+	ori	r3, r3, %lo(OPC_TRAP)
+	addi	r1, ea, -4
+	ldw	r1, 0(r1)
+	bne	r1, r3, 1f
+	movhi	r3, %hi(trap_handler)
+	ori	r3, r3, %lo(trap_handler)
+	mov	r4, sp		/* ptr to regs */
+	callr	r3
+	br	_exception_return
+
+1:
+	/* UNIMPLEMENTED INSTRUCTION EXCEPTION */
+	movhi	r3, %hi(soft_emulation)
+	ori	r3, r3, %lo(soft_emulation)
+	mov	r4, sp		/* ptr to regs */
+	callr	r3
+
+	/* Restore regsisters and return from exception*/
+_exception_return:
+	ldw	r1, 4(sp)
+	ldw	r2, 8(sp)
+	ldw	r3, 12(sp)
+	ldw	r4, 16(sp)
+	ldw	r5, 20(sp)
+	ldw	r6, 24(sp)
+	ldw	r7, 28(sp)
+	ldw	r8, 32(sp)
+	ldw	r9, 36(sp)
+	ldw	r10, 40(sp)
+	ldw	r11, 44(sp)
+	ldw	r12, 48(sp)
+	ldw	r13, 52(sp)
+	ldw	r14, 56(sp)
+	ldw	r15, 60(sp)
+	ldw	r16, 64(sp)
+	ldw	r17, 68(sp)
+	ldw	r19, 72(sp)
+	ldw	r19, 76(sp)
+	ldw	r20, 80(sp)
+	ldw	r21, 84(sp)
+	ldw	r22, 88(sp)
+	ldw	r23, 92(sp)
+	ldw	r24, 96(sp)
+	ldw	r25, 100(sp)
+	ldw	r26, 104(sp)
+	ldw	r27, 108(sp)
+	ldw	r28, 112(sp)
+	ldw	r29, 116(sp)
+	ldw	r30, 120(sp)
+	ldw	r31, 124(sp)
+	addi	sp, sp, (33*4)
+	eret
+/*-------------------------------------------------------------*/
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
