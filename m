Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCBH-0002KM-Pp
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:12:05 +0000
Received: by mail-la0-f46.google.com with SMTP id eg20so10810458lab.5
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 12:11:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Jun 2013 23:10:10 +0400
Message-Id: <1372101012-11666-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
References: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: pbl: add nmon MIPS nano-monitor
To: barebox@lists.infradead.org

nmon is a tiny monitor (<1200 bytes) program
for the MIPS processors.
It can operate with NO working RAM at all!
It uses only the processor registers and NS16550-compatible
UART port for operation, so it can be used for a memory
controller setup code debugging.

With no changes nmon should work on different MIPS
processors as it uses only common MIPS-I instructions.

nmon is inspired by mmon, MIPS VR4300 Mini-monitor.

mmon is copyrighted 1996, 2003 by Eric Smith.
Also Alexander Voropay must be noted for his work
on qemu & YAMON mmon adaptations made in 2006 and 2007.

See http://www.brouhaha.com/~eric/software/mmon/
for mmon details.

The mmon's features missed in nmon:

 * batch memory dumps;
 * byte and 16-bit half-words dumps and stores;
 * fill memory;
 * load S-records (this function make sense only
 if RAM works properly).

nmon has only 4 commands:
 q - quit to barebox
 d <addr> - read 32-bit word from <addr> address
 w <addr> <val> - write 32-bit word <val> to <addr>
 g <addr> - jump to <addr>

Addresses and data must be given in hexadecimal.
Everything (including hex digits 'a'..'f') must
be in lower case.

EXAMPLE: change value of word with address 0xa0000000

nmon> d a0000000
00000000
nmon> w a0000000 12345678
nmon> d a0000000
12345678
nmon>

There is no error checking of any kind. If you
give an invalid address you will probably get
an exception which will hang the board and you
will have to press the reset button.

You can interrupt current command (e.g. you have
made error in input <addr> value) by pressing
the <ESC> key.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                        |   46 +++++
 arch/mips/include/asm/debug_ll_ns16550.h |  100 ++++++++++-
 arch/mips/include/asm/pbl_nmon.h         |  270 ++++++++++++++++++++++++++++++
 3 files changed, 410 insertions(+), 6 deletions(-)
 create mode 100644 arch/mips/include/asm/pbl_nmon.h

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 6179fd8..b2452c7 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -245,6 +245,52 @@ config CMD_MIPS_CPUINFO
 	  Say yes here to get a cpuinfo command to show some
 	  information about the cpu model.
 
+config HAS_NMON
+	bool
+
+config NMON
+	bool "nmon"
+	depends on HAS_NMON
+	depends on DEBUG_LL
+	help
+	  Say yes here to add the nmon to pbl.
+	  nmon -- nano-monitor program for the MIPS processors.
+	  It can operate with NO working RAM, using only
+	  the processor registers.
+
+config NMON_USER_START
+	bool "'press any key to start nmon' dialog"
+	depends on NMON
+	help
+	  Say yes here to get the 'press any key to start nmon'
+	  dialog on start.
+
+config NMON_1S_DELAY
+	prompt "number of delay loops for 1s time interval"
+	depends on NMON_USER_START
+	hex
+	default 0x400000
+	help
+	nmon uses a very simple delay loop for time measurement.
+	The delay is CPU-dependent or even board-dependent.
+	The NMON_1S_DELAY parameter specify delay loop count
+	for near 1 second time interval.
+
+config NMON_USER_START_DELAY
+	prompt "'press any key to start nmon' dialog delay"
+	depends on NMON_USER_START
+	hex
+	default 3
+	help
+	  Select the delay interval for nmon 'press any key to start nmon' dialog.
+
+config NMON_HELP
+	bool "nmon help message"
+	depends on NMON
+	help
+	  Say yes here to get the nmon commands message on
+	  every nmon start.
+
 endmenu
 
 source common/Kconfig
diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index f00f348..f36010c 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -38,6 +38,7 @@
 #endif /* CONFIG_DEBUG_LL */
 
 #define UART_THR	(0x0 << DEBUG_LL_UART_SHIFT)
+#define UART_RBR	(0x0 << DEBUG_LL_UART_SHIFT)
 #define UART_DLL	(0x0 << DEBUG_LL_UART_SHIFT)
 #define UART_DLM	(0x1 << DEBUG_LL_UART_SHIFT)
 #define UART_LCR	(0x3 << DEBUG_LL_UART_SHIFT)
@@ -46,6 +47,7 @@
 #define UART_LCR_W	0x07		/* Set UART to 8,N,2 & DLAB = 0 */
 #define UART_LCR_DLAB	0x87	/* Set UART to 8,N,2 & DLAB = 1 */
 
+#define UART_LSR_DR     0x01    /* UART received data present */
 #define UART_LSR_THRE	0x20	/* Xmit holding register empty */
 
 #ifndef __ASSEMBLY__
@@ -86,18 +88,30 @@ static __inline__ void PUTC_LL(char ch)
 /*
  * output a character in a0
  */
-.macro	debug_ll_ns16550_outc chr
+.macro	debug_ll_ns16550_outc_a0
 #ifdef CONFIG_DEBUG_LL
-	li	a0, \chr
+	.set	push
+	.set	reorder
+
 	la	t0, DEBUG_LL_UART_ADDR
 
-1:	lbu	t1, UART_LSR(t0)	/* get line status */
-	nop
+201:	lbu	t1, UART_LSR(t0)	/* get line status */
 	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
-	beqz	t1, 1b			/* try again */
-	 nop
+	beqz	t1, 201b			/* try again */
 
 	sb	a0, UART_THR(t0)	/* write the character */
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * output a character
+ */
+.macro	debug_ll_ns16550_outc chr
+#ifdef CONFIG_DEBUG_LL
+	li	a0, \chr
+	debug_ll_ns16550_outc_a0
 #endif /* CONFIG_DEBUG_LL */
 .endm
 
@@ -110,6 +124,80 @@ static __inline__ void PUTC_LL(char ch)
 	debug_ll_ns16550_outc '\n'
 #endif /* CONFIG_DEBUG_LL */
 .endm
+
+/*
+ * output a 32-bit value in hex
+ */
+.macro debug_ll_ns16550_outhexw
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
+	debug_ll_ns16550_outc_a0
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
+.macro	debug_ll_ns16550_check_char
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+	la      t0, DEBUG_LL_UART_ADDR
+
+	/* get line status and check for data present */
+	lbu	t1, UART_LSR(t0)
+	andi	v0, t1, UART_LSR_DR
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
+/*
+ * get character to v0
+ */
+.macro	debug_ll_ns16550_getc
+#ifdef CONFIG_DEBUG_LL
+	.set	push
+	.set	reorder
+
+204:
+	debug_ll_ns16550_check_char
+
+	/* try again */
+	beqz	v0, 204b
+
+	/* read a character */
+	lbu	v0, UART_RBR(t0)
+
+	.set	pop
+#endif /* CONFIG_DEBUG_LL */
+.endm
 #endif /* __ASSEMBLY__ */
 
 #endif /* __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__ */
diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
new file mode 100644
index 0000000..e7baa4c
--- /dev/null
+++ b/arch/mips/include/asm/pbl_nmon.h
@@ -0,0 +1,270 @@
+/*
+ * nano-monitor for MIPS CPU
+ *
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <board/debug_ll.h>
+#include <asm/debug_ll_ns16550.h>
+
+#define CODE_ESC	0x1b
+
+/*
+ * Delay slot warning!
+ *
+ * NMON was made with code portability in mind.
+ * So it uses '.set reorder' directives allowing
+ * assembler to insert necessary 'nop' instructions
+ * into delay slots (after branch instruction) and
+ * into load delay slot (after memory load instruction
+ * on very old R2000/R3000 processors).
+ */
+
+	.macro	nmon_outs msg
+	.set	push
+	.set	reorder
+
+	ADR	a1, \msg, t1
+
+	bal	_nmon_outs
+
+	.set	pop
+	.endm
+
+
+	.macro	mips_nmon
+	.set	push
+	.set	reorder
+
+#ifdef CONFIG_NMON
+#ifdef CONFIG_NMON_USER_START
+
+#if CONFIG_NMON_USER_START_DELAY < 1
+#error CONFIG_NMON_USER_START_DELAY must be >= 1!
+#endif
+
+	nmon_outs	msg_nmon_press_any_key
+
+	li	s0, CONFIG_NMON_USER_START_DELAY
+	move	s1, s0
+
+1:
+	li	a0, '.'
+	bal	_nmon_outc_a0
+	addi	s1, s1, -1
+	bnez	s1, 1b
+
+	move	s1, s0
+
+nmon_wait_user:
+	pbl_sleep s2, CONFIG_NMON_1S_DELAY
+
+	nmon_outs	msg_bsp
+
+	debug_ll_ns16550_check_char
+
+	bnez	v0, 3f
+
+	addi	s1, s1, -1
+	bnez	s1, nmon_wait_user
+
+	nmon_outs	msg_skipping_nmon
+
+	b	nmon_exit
+
+msg_nmon_press_any_key:
+	.asciz "\r\npress any key to start nmon\r\n"
+
+	.align	4
+3:
+	/* get received char from ns16550's buffer */
+	debug_ll_ns16550_getc
+#endif /* CONFIG_NMON_USER_START */
+
+nmon_main_help:
+#ifdef CONFIG_NMON_HELP
+	nmon_outs	msg_nmon_help
+#endif /* CONFIG_NMON_HELP */
+
+nmon_main:
+	nmon_outs	msg_prompt
+
+	debug_ll_ns16550_getc
+
+	/* prepare a0 for debug_ll_ns16550_outc_a0 */
+	move	a0, v0
+
+	li	v1, 'q'
+	bne	v0, v1, 3f
+
+	bal	_nmon_outc_a0
+
+	b	nmon_exit
+
+3:
+	li	v1, 'd'
+	beq	v0, v1, nmon_cmd_d
+
+	li	v1, 'w'
+	beq	v0, v1, nmon_cmd_w
+
+	li	v1, 'g'
+	beq	v0, v1, nmon_cmd_g
+
+	b	nmon_main_help
+
+nmon_cmd_d:
+	bal	_nmon_outc_a0
+
+	li	a0, ' '
+	bal	_nmon_outc_a0
+
+	bal	_nmon_gethexw
+
+	nmon_outs	msg_nl
+
+	lw	a0, (v0)
+	debug_ll_ns16550_outhexw
+
+	b	nmon_main
+
+nmon_cmd_w:
+	bal	_nmon_outc_a0
+
+	li	a0, ' '
+	bal	_nmon_outc_a0
+	bal	_nmon_gethexw
+	move	s0, v0
+
+	li	a0, ' '
+	bal	_nmon_outc_a0
+	bal	_nmon_gethexw
+
+	sw	v0, (s0)
+	b	nmon_main
+
+nmon_cmd_g:
+	bal	_nmon_outc_a0
+
+	li	a0, ' '
+	bal	_nmon_outc_a0
+
+	bal	_nmon_gethexw
+
+	nmon_outs	msg_nl
+
+	jal	v0
+	b	nmon_main
+
+_nmon_outc_a0:
+	debug_ll_ns16550_outc_a0
+	jr	ra
+
+_nmon_outs:
+	lbu	a0, 0(a1)
+	addi	a1, a1, 1
+	beqz	a0, _nmon_jr_ra_exit
+
+	debug_ll_ns16550_outc_a0
+
+	b	_nmon_outs
+
+_nmon_gethexw:
+
+	li	t3, 8
+	li	t2, 0
+
+_get_hex_digit:
+	debug_ll_ns16550_getc
+
+	li	v1, CODE_ESC
+	beq	v0, v1, nmon_main
+
+	li	v1, '0'
+	bge	v0, v1, 0f
+	b	_get_hex_digit
+
+0:
+	li	v1, '9'
+	ble	v0, v1, 9f
+
+	li	v1, 'f'
+	ble	v0, v1, 1f
+	b	_get_hex_digit
+
+1:
+	li	v1, 'a'
+	bge	v0, v1, 8f
+
+	b	_get_hex_digit
+
+8: /* v0 \in {'a', 'b' ... 'f'} */
+	sub	a3, v0, v1
+	addi	a3, 0xa
+	b	0f
+
+9: /* v0 \in {'0', '1' ... '9'} */
+	li	a3, '0'
+	sub	a3, v0, a3
+
+0:	move	a0, v0
+	debug_ll_ns16550_outc_a0
+
+	sll	t2, t2, 4
+	or	t2, t2, a3
+	sub	t3, t3, 1
+
+	beqz	t3, 0f
+
+	b	_get_hex_digit
+
+0:
+	move	v0, t2
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
+msg_skipping_nmon:
+	.asciz "skipping nmon..."
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
+	.align	4
+
+nmon_exit:
+
+	nmon_outs	msg_nl
+
+#endif /* CONFIG_NMON */
+	.set	pop
+	.endm
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
