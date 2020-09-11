Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGiFk-0002kk-JJ
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 12:34:09 +0000
Received: by mail-pf1-x42a.google.com with SMTP id w7so7240848pfi.4
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2020 05:34:06 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Fri, 11 Sep 2020 20:33:57 +0800
Message-Id: <1599827638-15320-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] MIPS: loongson1: enable to run from spi flash
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

initial pll, ddr2 controller, calculate perscale divisor for uart.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/boards/loongson-ls1b/lowlevel.S          |  33 ++++-
 arch/mips/mach-loongson/include/mach/debug_ll.h    |   1 +
 .../include/mach/debug_ll_loongson1.h              |  15 ++
 .../include/mach/pbl_ll_init_loongson1.h           | 162 +++++++++++++++++++++
 arch/mips/mach-loongson/include/mach/pbl_macros.h  |  81 +++++++++++
 5 files changed, 291 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/mach-loongson/include/mach/debug_ll_loongson1.h
 create mode 100644 arch/mips/mach-loongson/include/mach/pbl_ll_init_loongson1.h
 create mode 100644 arch/mips/mach-loongson/include/mach/pbl_macros.h

diff --git a/arch/mips/boards/loongson-ls1b/lowlevel.S b/arch/mips/boards/loongson-ls1b/lowlevel.S
index c533df3..af6ad54 100644
--- a/arch/mips/boards/loongson-ls1b/lowlevel.S
+++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ * Copyright (C) 2020 Du Huanpeng <duhuanpegn@gmail.com>
  */
 
 #define BOARD_PBL_START start_loongson_ls1b
@@ -11,15 +12,45 @@
 #include <asm/pbl_nmon.h>
 #include <linux/sizes.h>
 
+#include <mach/pbl_macros.h>
+#include <mach/pbl_ll_init_loongson1.h>
+
+
 ENTRY_FUNCTION(BOARD_PBL_START)
 
 	mips_barebox_10h
 
 	mips_disable_interrupts
 
-	debug_ll_ns16550_init
+	pbl_blt 0xbf000000 168f t0
 
+	pbl_loongson1_pll
+
+	pbl_loongson1_uart_enable
+	pbl_loongson1_calc_prescale 115200
+	move	a0, v0
+	debug_ll_ns16550_init
+	debug_ll_ns16550_outnl
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
+	debug_ll_outc '1'
+
+	pbl_loongson1_remap
+	debug_ll_outc '2'
+
+	pbl_loongson1_ddr2_init
+	pbl_probe_mem t0, t1, KSEG1
+	bne     t0, t1, .
+	nop
+
+	debug_ll_outc '3'
+
+	mips_cache_reset
+	dcache_enable
+	debug_ll_outc '4'
+
+168:
+	debug_ll_outc '5'
+	debug_ll_ns16550_outnl
 
 ENTRY_FUNCTION_END(BOARD_PBL_START, loongson_ls1b, SZ_64M)
diff --git a/arch/mips/mach-loongson/include/mach/debug_ll.h b/arch/mips/mach-loongson/include/mach/debug_ll.h
index c2d6edb..39d791a 100644
--- a/arch/mips/mach-loongson/include/mach/debug_ll.h
+++ b/arch/mips/mach-loongson/include/mach/debug_ll.h
@@ -9,6 +9,7 @@
 /** @file
  *  This File contains declaration for early output support
  */
+#include <mach/debug_ll_loongson1.h>
 #include <asm/debug_ll_ns16550.h>
 
 #endif /* __MACH_LOONGSON_DEBUG_LL__ */
diff --git a/arch/mips/mach-loongson/include/mach/debug_ll_loongson1.h b/arch/mips/mach-loongson/include/mach/debug_ll_loongson1.h
new file mode 100644
index 0000000..6043690
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/debug_ll_loongson1.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Du Huanpeng <u74147@gmail.com>
+ */
+
+#ifndef __INCLUDE_DEBUG_LL_LOONGSON1_H__
+#define __INCLUDE_DEBUG_LL_LOONGSON1_H__
+
+#include <mach/loongson1.h>
+
+#define DEBUG_LL_UART_ADDR	0xBFE48000
+#define DEBUG_LL_UART_SHIFT	0
+#define DEBUG_LL_UART_DIVISOR	0
+
+#endif /* __INCLUDE_DEBUG_LL_LOONGSON1_H__ */
diff --git a/arch/mips/mach-loongson/include/mach/pbl_ll_init_loongson1.h b/arch/mips/mach-loongson/include/mach/pbl_ll_init_loongson1.h
new file mode 100644
index 0000000..e0cca5c
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/pbl_ll_init_loongson1.h
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020 Du Huanpeng <u74147@gmail.com>
+ */
+
+#ifndef __ASM_MACH_LOONGSON1_PBL_LL_INIT_LOONGSON1_H
+#define __ASM_MACH_LOONGSON1_PBL_LL_INIT_LOONGSON1_H
+
+#include <asm/addrspace.h>
+#include <asm/regdef.h>
+
+/*
+ *              (12 * 1024 + N)     33 * 625
+ * prescale  = ----------------- * ----------
+ *              DIV * (baud/25)       1024
+ */
+
+.macro pbl_loongson1_calc_prescale baud
+	.set	push
+	.set	noreorder
+
+	li a0, \baud
+
+	/* PLL_FREQ -> t8 */
+	li	t8, 0xbfe78030
+	lw	t8, 0 (t8)
+
+	/* N -> t9, t8 -> X */
+	sra	t9, t8, 8
+	andi	t9, 0x3f
+	sll	t8, 10
+	andi	t9, 0x3ff
+	or	t9, t8
+
+	/* t9 += 12 * 1024 */
+	li	t8, 12288
+	add	t9, t8
+	/* DIV -> t8 */
+	li	t8, 0xbfe78030
+	lw	t8, 4 (t8)
+	sra	t8, 14
+	andi	t8, 0xf
+
+	multu	t8, a0
+	mflo	t8
+	li	v0, 25
+	divu	t8, v0
+	/* t9 = a / b */
+	divu	t9, t8
+	mflo	t9
+
+	li	t8, 20955	/* 33 * 625 */
+	multu	t9, t8
+	mflo	t9
+
+	sra	v0, t9, 10
+
+	.set	pop
+.endm
+
+.macro	__pbl_loongson1_ddr2_init
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel 0x00000101, 0xAFFFFE00
+	pbl_reg_writel 0x01000100, 0xAFFFFE04
+	pbl_reg_writel 0x00000000, 0xAFFFFE10
+	pbl_reg_writel 0x01000000, 0xAFFFFE14
+	pbl_reg_writel 0x00000000, 0xAFFFFE20
+	pbl_reg_writel 0x01000101, 0xAFFFFE24
+	pbl_reg_writel 0x01000100, 0xAFFFFE30
+	pbl_reg_writel 0x01010000, 0xAFFFFE34
+	pbl_reg_writel 0x01010101, 0xAFFFFE40
+	pbl_reg_writel 0x01000202, 0xAFFFFE44
+	pbl_reg_writel 0x04030201, 0xAFFFFE50
+	pbl_reg_writel 0x07000000, 0xAFFFFE54
+	pbl_reg_writel 0x02020203, 0xAFFFFE60
+	pbl_reg_writel 0x0a020203, 0xAFFFFE64
+	pbl_reg_writel 0x00010506, 0xAFFFFE70
+	pbl_reg_writel 0x00000400, 0xAFFFFE74
+	pbl_reg_writel 0x08040201, 0xAFFFFE80
+	pbl_reg_writel 0x08040201, 0xAFFFFE84
+	pbl_reg_writel 0x00000000, 0xAFFFFE90
+	pbl_reg_writel 0x00000306, 0xAFFFFE94
+	pbl_reg_writel 0x3f0b020a, 0xAFFFFEA0
+	pbl_reg_writel 0x0000003f, 0xAFFFFEA4
+	pbl_reg_writel 0x00000000, 0xAFFFFEB0
+	pbl_reg_writel 0x37570000, 0xAFFFFEB4
+	pbl_reg_writel 0x08000000, 0xAFFFFEC0
+	pbl_reg_writel 0x002a1503, 0xAFFFFEC4
+	pbl_reg_writel 0x002a002a, 0xAFFFFED0
+	pbl_reg_writel 0x002a002a, 0xAFFFFED4
+	pbl_reg_writel 0x002a002a, 0xAFFFFEE0
+	pbl_reg_writel 0x002a002a, 0xAFFFFEE4
+	pbl_reg_writel 0x00000002, 0xAFFFFEF0
+	pbl_reg_writel 0x00b40020, 0xAFFFFEF4
+	pbl_reg_writel 0x00000087, 0xAFFFFF00
+	pbl_reg_writel 0x000007ff, 0xAFFFFF04
+	pbl_reg_writel 0x44240618, 0xAFFFFF10
+	pbl_reg_writel 0x80808080, 0xAFFFFF14
+	pbl_reg_writel 0x80808080, 0xAFFFFF20
+	pbl_reg_writel 0x001c8080, 0xAFFFFF24
+	pbl_reg_writel 0x00c8006b, 0xAFFFFF30
+	pbl_reg_writel 0x36b00002, 0xAFFFFF34
+	pbl_reg_writel 0x00c80017, 0xAFFFFF40
+	pbl_reg_writel 0x00000000, 0xAFFFFF44
+	pbl_reg_writel 0x00009c40, 0xAFFFFF50
+	pbl_reg_writel 0x00000000, 0xAFFFFF54
+	pbl_reg_writel 0x00000000, 0xAFFFFF60
+	pbl_reg_writel 0x00000000, 0xAFFFFF64
+	pbl_reg_writel 0x00000000, 0xAFFFFF70
+	pbl_reg_writel 0x00000000, 0xAFFFFF74
+	pbl_reg_writel 0x00000000, 0xAFFFFF80
+	pbl_reg_writel 0x00000000, 0xAFFFFF84
+	pbl_reg_writel 0x00000000, 0xAFFFFF90
+	pbl_reg_writel 0x00000000, 0xAFFFFF94
+	pbl_reg_writel 0x00000000, 0xAFFFFFA0
+	pbl_reg_writel 0x00000000, 0xAFFFFFA4
+	pbl_reg_writel 0x00000000, 0xAFFFFFB0
+	pbl_reg_writel 0x00000000, 0xAFFFFFB4
+	pbl_reg_writel 0x00000000, 0xAFFFFFC0
+	pbl_reg_writel 0x00000000, 0xAFFFFFC4
+
+	.set	pop
+.endm
+
+.macro	pbl_loongson1_ddr2_init
+	.set	push
+	.set	noreorder
+
+	/* initial ddr2 controller */
+	pbl_reg_writel 0xfc000000, 0xbfd010c8
+	pbl_reg_writel 0x14000000, 0xbfd010f8
+
+	__pbl_loongson1_ddr2_init
+10:
+	pbl_reg_writel  0x01010100, 0xaffffe34
+
+9:	/* not_locked */
+	li	t0, 0xaffffe00
+	lw      t1, 0x10 (t0)
+	andi    t1, t1, 1
+	beqz    t1, 9b
+	nop
+
+	lh      t1, 0xf2 (t0)
+	sltiu 	t1, t1, 5
+	beqz 	t1, 1f
+	nop
+
+	lw      t1, 0xf4 (t0)
+	addiu   t1, t1, 4
+	sw      t1, 0xf4 (t0)
+	b       10b
+	nop
+1:
+	/* 16bit ddr and disable conf */
+	pbl_reg_set 0x110000, 0xbfd00424
+	.set	pop
+.endm
+
+#endif /* __ASM_MACH_LOONGSON1_PBL_LL_INIT_LOONGSON1_H */
diff --git a/arch/mips/mach-loongson/include/mach/pbl_macros.h b/arch/mips/mach-loongson/include/mach/pbl_macros.h
new file mode 100644
index 0000000..93402d1
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/pbl_macros.h
@@ -0,0 +1,81 @@
+#ifndef __ASM_MACH_LOONGSON1_PBL_MACROS_H
+#define __ASM_MACH_LOONGSON1_PBL_MACROS_H
+
+#include <asm/addrspace.h>
+#include <asm/regdef.h>
+#include <mach/loongson1.h>
+
+#define PLL_FREQ		0xBFE78030
+#define PLL_DIV_PARAM		0xBFE78034
+
+#define CONFIG_CPU_DIV		3
+#define CONFIG_DDR_DIV		4
+#define CONFIG_DC_DIV		4
+#define CONFIG_PLL_FREQ		0x1C
+#define CONFIG_PLL_DIV_PARAM	0x92392a00
+
+.macro	pbl_loongson1_pll
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel 0x92392a00, PLL_DIV_PARAM
+	pbl_reg_writel 0x0000001c, PLL_FREQ
+	pbl_sleep t8, 40
+
+	.set	pop
+.endm
+
+.macro set_cpu_window id, base, mask, mmap
+	.set	push
+	.set	noreorder
+
+	li	t8, 0xbfd00000
+	sw	$0, 0x80 + \id * 8 (t8)
+	li	t9, \base
+	sw	t9, 0x00 + \id * 8 (t8)
+	sw	$0, 0x04 + \id * 8 (t8)
+	li	t9, \mask
+	sw	t9, 0x40 + \id * 8 (t8)
+	sw	$0, 0x44 + \id * 8 (t8)
+	li	t9, \mmap
+	sw	t9, 0x80 + \id * 8 (t8)
+	sw	$0, 0x84 + \id * 8 (t8)
+
+	.set	pop
+.endm
+
+.macro pbl_loongson1_remap
+	.set	push
+
+	set_cpu_window 0, 0x1c300000, 0xfff00000, 0x1c3000d2
+	set_cpu_window 1, 0x1fe10000, 0xffffe000, 0x1fe100d3
+	set_cpu_window 2, 0x1fe20000, 0xffffe000, 0x1fe200d3
+	set_cpu_window 3, 0x1fe10000, 0xffff0000, 0x1fe100d0
+	set_cpu_window 4, 0x1fe20000, 0xffff0000, 0x1fe200d0
+	set_cpu_window 5, 0x1ff00000, 0xfff00000, 0x1ff000d0
+	set_cpu_window 6, 0x1f000000, 0xff000000, 0x1f0000d3
+	set_cpu_window 7, 0x00000000, 0x00000000, 0x000000f0
+	li	t8, 0xbfd000e0
+	lw	t9, 0x0 (t8)
+	and	t9, t9, 0xffffff00
+	ori	t9, t9, 0xd0
+	sw	t9, 0x0 (t8)
+
+	lw	t9, 0x8 (t8)
+	and	t9, t9, 0xffffff00
+	ori	t9, t9, 0xd0
+	sw	t9, 0x8 (t8)
+
+	.set	pop
+.endm
+
+#define GPIOCFG1	0xbfd010C4
+.macro	pbl_loongson1_uart_enable
+	.set	push
+
+	pbl_reg_clr 0x00C00000, GPIOCFG1
+
+	.set	pop
+.endm
+
+#endif /* __ASM_MACH_LOONGSON1_PBL_MACROS_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
