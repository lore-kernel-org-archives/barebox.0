Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU5-0003Mm-Ad
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:03 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676005wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:01 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:21 +0100
Message-Id: <4d701d34.9009d80a.2cd3.5e77@mx.google.com>
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
Subject: [PATCH 07/54] Add arch/nios2/cpu-nios2/start.S
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/cpu-nios2/start.S

---
 arch/nios2/cpu-nios2/start.S |  165 ++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 165 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/cpu-nios2/start.S

diff --git a/arch/nios2/cpu-nios2/start.S b/arch/nios2/cpu-nios2/start.S
new file mode 100644
index 0000000..4ea05c0
--- /dev/null
+++ b/arch/nios2/cpu-nios2/start.S
@@ -0,0 +1,165 @@
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm-generic/memory_layout.h>
+
+/*************************************************************************
+ * RESTART
+ ************************************************************************/
+
+.section ".text_entry","ax"
+
+_start:
+	wrctl	status, r0		/* Disable interrupts */
+	/* ICACHE INIT -- only the icache line at the reset address
+	 * is invalidated at reset. So the init must stay within
+	 * the cache line size (8 words). If GERMS is used, we'll
+	 * just be invalidating the cache a second time. If cache
+	 * is not implemented initi behaves as nop.
+	 */
+	ori	r4, r0, %lo(ICACHE_LINE_SIZE)
+	movhi	r5, %hi(ICACHE_SIZE)
+	ori	r5, r5, %lo(ICACHE_SIZE)
+0:	initi	r5
+	sub	r5, r5, r4
+	bgt	r5, r0, 0b
+	br	_except_end	/* Skip the tramp */
+
+	/* EXCEPTION TRAMPOLINE -- the following gets copied
+	 * to the exception address (below), but is otherwise at the
+	 * default exception vector offset (0x0020).
+	 */
+_except_start:
+	movhi	et, %hi(_exception)
+	ori	et, et, %lo(_exception)
+	jmp	et
+_except_end:
+
+	/* INTERRUPTS -- for now, all interrupts masked and globally
+	 * disabled.
+	 */
+	wrctl	ienable, r0		/* All disabled	*/
+
+	/* DCACHE INIT -- if dcache not implemented, initd behaves as
+	 * nop.
+	 */
+	movhi	r4, %hi(DCACHE_LINE_SIZE)
+	ori	r4, r4, %lo(DCACHE_LINE_SIZE)
+	movhi	r5, %hi(DCACHE_SIZE)
+	ori	r5, r5, %lo(DCACHE_SIZE)
+	mov	r6, r0
+1:	initd	0(r6)
+	add	r6, r6, r4
+	bltu	r6, r5, 1b
+
+	/* RELOCATE CODE, DATA & COMMAND TABLE -- the following code
+	 * assumes code, data and the command table are all
+	 * contiguous. This lets us relocate everything as a single
+	 * block. Make sure the linker script matches this ;-)
+	 */
+	nextpc	r4
+_cur:	movhi	r5, %hi(_cur - _start)
+	ori	r5, r5, %lo(_cur - _start)
+	sub	r4, r4, r5		/* r4 <- cur _start */
+	mov	r8, r4
+	movhi	r5, %hi(_start)
+	ori	r5, r5, %lo(_start)	/* r5 <- linked _start */
+	beq	r4, r5, 3f
+
+	movhi	r6, %hi(_edata)
+	ori	r6, r6, %lo(_edata)
+2:	ldwio	r7, 0(r4)
+	addi	r4, r4, 4
+	stwio	r7, 0(r5)
+	addi	r5, r5, 4
+	bne	r5, r6, 2b
+3:
+
+	/* ZERO BSS/SBSS -- bss and sbss are assumed to be adjacent
+	 * and between __bss_start and _end.
+	 */
+	 movhi	r5, %hi(__bss_start)
+	 ori	r5, r5, %lo(__bss_start)
+	 movhi	r6, %hi(_end)
+	 ori	r6, r6, %lo(_end)
+	 beq	r5, r6, 5f
+
+4:	stwio	r0, 0(r5)
+	 addi	r5, r5, 4
+	 bne	r5, r6, 4b
+5:
+
+	/* JUMP TO RELOC ADDR */
+	movhi	r4, %hi(_reloc)
+	ori	r4, r4, %lo(_reloc)
+	jmp	r4
+_reloc:
+
+	/* COPY EXCEPTION TRAMPOLINE -- copy the tramp to the
+	 * exception address. Define CONFIG_ROM_STUBS to prevent
+	 * the copy (e.g. exception in flash or in other
+	 * softare/firmware component).
+	 */
+#if !defined(CONFIG_ROM_STUBS)
+	movhi	r4, %hi(_except_start)
+	ori	r4, r4, %lo(_except_start)
+	movhi	r5, %hi(_except_end)
+	ori	r5, r5, %lo(_except_end)
+	movhi	r6, %hi(EXCEPTION_ADDR)
+	ori	r6, r6, %lo(EXCEPTION_ADDR)
+	beq	r4, r6, 7f	/* Skip if at proper addr */
+
+6:	ldwio	r7, 0(r4)
+	stwio	r7, 0(r6)
+	addi	r4, r4, 4
+	addi	r6, r6, 4
+	bne	r4, r5, 6b
+7:
+#endif
+
+	/* STACK INIT -- zero top two words for call back chain.
+	 */
+	movhi	sp, %hi(STACK_BASE)
+	ori	sp, sp, %lo(STACK_BASE)
+	addi	sp, sp, -8
+	stw	r0, 0(sp)
+	stw	r0, 4(sp)
+	mov	fp, sp
+
+        /* Set the global pointer */
+	movhi	r26, %hi(_gp)
+	ori	r26, r26, %lo(_gp)
+
+	/*
+	 * Call board_init -- never returns
+	 */
+	movhi	r4, %hi(start_barebox@h)
+	ori	r4, r4, %lo(start_barebox@h)
+	callr	r4
+
+	/* NEVER RETURNS -- but branch to the _start just
+	 * in case ;-)
+	 */
+	br	_start
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
