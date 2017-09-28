Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhze-0004T8-Ef
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:26 +0000
Received: by mail-wr0-x242.google.com with SMTP id 97so3469498wrb.0
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:13:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:43 +0300
Message-Id: <20170928231249.4158-5-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 04/10] RISC-V: add nmon nano-monitor
To: barebox@lists.infradead.org

nmon is a tiny (<1024 bytes) monitor program
for the RV32I processors.

It can operate with NO working RAM at all!

It uses only the processor registers and NS16550-compatible
UART port for operation, so it can be used for a memory
controller setup code debugging.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                  |  24 ++++
 arch/riscv/boot/start.S             |  14 +++
 arch/riscv/include/asm/riscv_nmon.h | 234 ++++++++++++++++++++++++++++++++++++
 3 files changed, 272 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f4bfbea7c..ce5f317cf 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -75,6 +75,30 @@ source arch/riscv/mach-erizo/Kconfig
 
 endmenu
 
+menu "RISC-V specific settings"
+
+config HAS_NMON
+	bool
+
+config NMON
+	bool "nmon"
+	depends on HAS_NMON
+	depends on DEBUG_LL
+	help
+	  Say yes here to add the nmon to pbl.
+	  nmon -- nano-monitor program for the RISC-V processors.
+	  It can operate with NO working RAM, using only
+	  the processor registers.
+
+config NMON_HELP
+	bool "nmon help message"
+	depends on NMON
+	help
+	  Say yes here to get the nmon commands message on
+	  every nmon start.
+
+endmenu
+
 source common/Kconfig
 source commands/Kconfig
 source net/Kconfig
diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
index 2fd00f63d..c2ca6f9a1 100644
--- a/arch/riscv/boot/start.S
+++ b/arch/riscv/boot/start.S
@@ -21,12 +21,21 @@
 
 #include <asm-generic/memory_layout.h>
 
+#include "mach/debug_ll.h"
+
+#include "asm/riscv_nmon.h"
+
 	.text
 	.section ".text_entry"
 	.align 2
 
 .globl _start
 _start:
+
+	debug_ll_ns16550_init
+
+	riscv_nmon
+
 	li sp, STACK_BASE + STACK_SIZE
 
 	# make room for HLS and initialize it
@@ -66,9 +75,14 @@ copy_loop:
 	addi	a1, a1, LONGSIZE * 2
 	bgeu	a2, a0, copy_loop
 
+	nmon_outs copy_loop_done_message
+
 	/* Alas! At the moment I can't load main_entry __link__ address
 	   into a0 with la. Use CONFIG_TEXT_BASE instead. This solution
 	   leads to extra cycles for repeat sp initialization. */
 
 	li	a0, CONFIG_TEXT_BASE
 	jalr	a0
+
+copy_loop_done_message:
+	.asciz "\r\ncopy loop done\r\nrestarting...\r\n"
diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/asm/riscv_nmon.h
new file mode 100644
index 000000000..717f61334
--- /dev/null
+++ b/arch/riscv/include/asm/riscv_nmon.h
@@ -0,0 +1,234 @@
+/*
+ * nano-monitor for RISC-V CPU
+ *
+ * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __ASM_RISCV_NMON_H
+#define __ASM_RISCV_NMON_H
+
+#define CODE_ESC	0x1b
+
+.macro nmon_outs msg
+
+	la	a1, \msg
+
+	jal	_nmon_outs
+
+.endm
+
+/*
+ * output a 32-bit value in hex
+ */
+.macro debug_ll_outhexw
+#ifdef CONFIG_DEBUG_LL
+	move	t6, a0
+	li	t5, 32
+
+202:
+	addi	t5, t5, -4
+	srl	a0, t6, t5
+
+	/* output one hex digit */
+	andi	a0, a0, 15
+	li	t4, 10
+	blt	a0, t4, 203f
+
+	addi	a0, a0, ('a' - '9' - 1)
+
+203:
+	addi	a0, a0, '0'
+
+	debug_ll_outc_a0
+
+	li	t4, 1
+	bge	t5, t4, 202b
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+.macro riscv_nmon
+
+nmon_main_help:
+#ifdef CONFIG_NMON_HELP
+	nmon_outs	msg_nmon_help
+#endif /* CONFIG_NMON_HELP */
+
+nmon_main:
+	nmon_outs	msg_prompt
+
+	debug_ll_getc
+
+	li	a0, 'q'
+	bne	s0, a0, 3f
+
+	jal	_nmon_outc_a0
+
+	j	nmon_exit
+
+3:
+	li	a0, 'd'
+	beq	s0, a0, nmon_cmd_d
+
+	li	a0, 'w'
+	beq	s0, a0, nmon_cmd_w
+
+	li	a0, 'g'
+	beq	s0, a0, nmon_cmd_g
+
+	j	nmon_main_help
+
+nmon_cmd_d:
+	jal	_nmon_outc_a0
+
+	li	a0, ' '
+	jal	_nmon_outc_a0
+
+	jal	_nmon_gethexw
+
+	nmon_outs	msg_nl
+
+	lw	a0, (s0)
+	debug_ll_outhexw
+
+	j	nmon_main
+
+nmon_cmd_w:
+	jal	_nmon_outc_a0
+
+	li	a0, ' '
+	jal	_nmon_outc_a0
+
+	jal	_nmon_gethexw
+	move	s2, s0
+
+	li	a0, ' '
+	jal	_nmon_outc_a0
+	jal	_nmon_gethexw
+
+	sw	s0, 0(s2)
+	j	nmon_main
+
+nmon_cmd_g:
+	jal	_nmon_outc_a0
+
+	li	a0, ' '
+	jal	_nmon_outc_a0
+
+	jal	_nmon_gethexw
+	move	s2, s0
+
+	nmon_outs	msg_nl
+
+	jalr	s2
+	j	nmon_main
+
+_nmon_outc_a0:
+	debug_ll_outc_a0
+	jr	ra
+
+_nmon_outs:
+
+	lb	a0, 0(a1)
+	addi	a1, a1, 1
+	beqz	a0, _nmon_jr_ra_exit
+
+	debug_ll_outc_a0
+
+	j	_nmon_outs
+
+_nmon_gethexw:
+
+	li	t3, 8
+	li	t2, 0
+
+_get_hex_digit:
+	debug_ll_getc
+
+	li	s1, CODE_ESC
+	beq	s0, s1, nmon_main
+
+	li	s1, '0'
+	bge	s0, s1, 0f
+	j	_get_hex_digit
+
+0:
+	li	s1, '9'
+	ble	s0, s1, 9f
+
+	li	s1, 'f'
+	ble	s0, s1, 1f
+	j	_get_hex_digit
+
+1:
+	li	s1, 'a'
+	bge	s0, s1, 8f
+
+	j	_get_hex_digit
+
+8: /* s0 \in {'a', 'b' ... 'f'} */
+	sub	a3, s0, s1
+	addi	a3, a3, 0xa
+	j	0f
+
+9: /* s0 \in {'0', '1' ... '9'} */
+	li	a3, '0'
+	sub	a3, s0, a3
+
+0:	move	a0, s0
+	debug_ll_outc_a0
+
+	sll	t2, t2, 4
+	or	t2, t2, a3
+	li	t0, 1
+	sub	t3, t3, t0
+
+	beqz	t3, 0f
+
+	j	_get_hex_digit
+
+0:
+	move	s0, t2
+
+_nmon_jr_ra_exit:
+	jr	ra
+
+msg_prompt:
+	.asciz "\r\nnmon> "
+
+msg_nl:
+	.asciz "\r\n"
+
+msg_bsp:
+	.asciz "\b \b"
+
+#ifdef CONFIG_NMON_HELP
+msg_nmon_help:
+	.ascii "\r\n\r\nnmon commands:\r\n"
+	.ascii " q - quit\r\n"
+	.ascii " d <addr> - read 32-bit word from <addr>\r\n"
+	.ascii " w <addr> <val> - write 32-bit word to <addr>\r\n"
+	.ascii " g <addr> - jump to <addr>\r\n"
+	.asciz "   use <ESC> key to interrupt current command\r\n"
+#endif /* CONFIG_NMON_HELP */
+
+	.align 2
+nmon_exit:
+	nmon_outs	msg_nl
+
+.endm
+
+#endif /* __ASM_RISCV_NMON_H */
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
