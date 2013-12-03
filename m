Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnwnC-0000Om-VR
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 20:42:04 +0000
Received: by mail-la0-f42.google.com with SMTP id ec20so9467303lab.15
 for <barebox@lists.infradead.org>; Tue, 03 Dec 2013 12:41:40 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  4 Dec 2013 00:48:55 +0400
Message-Id: <1386103735-30029-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1386103735-30029-1-git-send-email-antonynpavlov@gmail.com>
References: <1386103735-30029-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] MIPS: import exception registers saving from linux kernel
To: barebox@lists.infradead.org

Checking registers saving:

    $ make qemu-malta_defconfig
    $ make

    ...

    $ qemu-system-mips -nodefaults -M malta -m 256 \
       -nographic -serial stdio -bios ./barebox-flash-image

    ...

    barebox:/ md -l 0x03

    Ooops, address error on load or ifetch!

    $ 0   : 00000000 00000000 ffffffff 0000003f
    $ 4   : 00000000 ffffffff 00000004 00000004
    $ 8   : 00000003 a0404d50 00000001 00000002
    $12   : a0404d50 0000000a a0840000 00000003
    $16   : 00000100 a0404d50 00000100 00000003
    $20   : 00000000 a0406cd8 00000000 00000000
    $24   : a083b4d8 a083058c
    $28   : 00000000 a03ffca8 a0406ab0 a0830604
    Hi    : 00000000
    Lo    : 00000040
    epc   : a083056c
    ra    : a0830604
    Status: 00000006
    Cause : 00000410
    Config: 80008482

    ### ERROR ### Please RESET the board ###

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/stackframe.h | 105 +++++++++++++++++++++++++++++++++++++
 arch/mips/lib/genex.S              |   2 +
 arch/mips/lib/traps.c              |  46 +++++++++++++---
 3 files changed, 146 insertions(+), 7 deletions(-)
 create mode 100644 arch/mips/include/asm/stackframe.h

diff --git a/arch/mips/include/asm/stackframe.h b/arch/mips/include/asm/stackframe.h
new file mode 100644
index 0000000..0266ec6
--- /dev/null
+++ b/arch/mips/include/asm/stackframe.h
@@ -0,0 +1,105 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994, 95, 96, 99, 2001 Ralf Baechle
+ * Copyright (C) 1994, 1995, 1996 Paul M. Antoine.
+ * Copyright (C) 1999 Silicon Graphics, Inc.
+ * Copyright (C) 2007  Maciej W. Rozycki
+ */
+#ifndef _ASM_STACKFRAME_H
+#define _ASM_STACKFRAME_H
+
+#include <asm/asm.h>
+#include <asm/mipsregs.h>
+#include <asm/asm-offsets.h>
+
+		.macro	SAVE_AT
+		.set	push
+		.set	noat
+		LONG_S	$1, PT_R1(sp)
+		.set	pop
+		.endm
+
+		.macro	SAVE_TEMP
+		mfhi	v1
+#ifdef CONFIG_32BIT
+		LONG_S	$8, PT_R8(sp)
+		LONG_S	$9, PT_R9(sp)
+#endif
+		LONG_S	$10, PT_R10(sp)
+		LONG_S	$11, PT_R11(sp)
+		LONG_S	$12, PT_R12(sp)
+
+		LONG_S	v1, PT_HI(sp)
+		mflo	v1
+
+		LONG_S	$13, PT_R13(sp)
+		LONG_S	$14, PT_R14(sp)
+		LONG_S	$15, PT_R15(sp)
+		LONG_S	$24, PT_R24(sp)
+
+		LONG_S	v1, PT_LO(sp)
+
+		.endm
+
+		.macro	SAVE_STATIC
+		LONG_S	$16, PT_R16(sp)
+		LONG_S	$17, PT_R17(sp)
+		LONG_S	$18, PT_R18(sp)
+		LONG_S	$19, PT_R19(sp)
+		LONG_S	$20, PT_R20(sp)
+		LONG_S	$21, PT_R21(sp)
+		LONG_S	$22, PT_R22(sp)
+		LONG_S	$23, PT_R23(sp)
+		LONG_S	$30, PT_R30(sp)
+		.endm
+
+		.macro	SAVE_SOME
+		.set	push
+		.set	noat
+		.set	reorder
+		.set	at=k0
+		move	k1, sp
+		PTR_SUBU k1, PT_SIZE
+		.set	noat
+		move	k0, sp
+		move	sp, k1
+		LONG_S	k0, PT_R29(sp)
+		LONG_S	$3, PT_R3(sp)
+		/*
+		 * You might think that you don't need to save $0,
+		 * but the FPU emulator and gdb remote debug stub
+		 * need it to operate correctly
+		 */
+		LONG_S	$0, PT_R0(sp)
+		mfc0	v1, CP0_STATUS
+		LONG_S	$2, PT_R2(sp)
+		LONG_S	v1, PT_STATUS(sp)
+		LONG_S	$4, PT_R4(sp)
+		mfc0	v1, CP0_CAUSE
+		LONG_S	$5, PT_R5(sp)
+		LONG_S	v1, PT_CAUSE(sp)
+		LONG_S	$6, PT_R6(sp)
+		MFC0	v1, CP0_EPC
+		LONG_S	$7, PT_R7(sp)
+#ifdef CONFIG_64BIT
+		LONG_S	$8, PT_R8(sp)
+		LONG_S	$9, PT_R9(sp)
+#endif
+		LONG_S	v1, PT_EPC(sp)
+		LONG_S	$25, PT_R25(sp)
+		LONG_S	$28, PT_R28(sp)
+		LONG_S	$31, PT_R31(sp)
+		.set	pop
+		.endm
+
+		.macro	SAVE_ALL
+		SAVE_SOME
+		SAVE_AT
+		SAVE_TEMP
+		SAVE_STATIC
+		.endm
+
+#endif /* _ASM_STACKFRAME_H */
diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
index d6f65a2..8941714 100644
--- a/arch/mips/lib/genex.S
+++ b/arch/mips/lib/genex.S
@@ -1,6 +1,7 @@
 #include <asm/asm.h>
 #include <asm/regdef.h>
 #include <asm/mipsregs.h>
+#include <asm/stackframe.h>
 
 	.text
 	.set	macro
@@ -10,6 +11,7 @@
 
 /* Exception vector */
 NESTED(handle_reserved, 0, sp)
+	SAVE_ALL
 	la	k0, barebox_exc_handler
 	jal	k0
 	 move	a0, sp
diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
index 4e167cc..0a5914e 100644
--- a/arch/mips/lib/traps.c
+++ b/arch/mips/lib/traps.c
@@ -1,8 +1,9 @@
 #include <common.h>
 
 #include <asm/mipsregs.h>
+#include <asm/ptrace.h>
 
-void barebox_exc_handler(void *regs);
+void barebox_exc_handler(const struct pt_regs *regs);
 
 /*
  * Trap codes from OpenBSD trap.h
@@ -95,13 +96,44 @@ static char *get_exc_name(u32 cause)
 	return "unknown exception";
 }
 
-void barebox_exc_handler(void *regs)
+void barebox_exc_handler(const struct pt_regs *regs)
 {
-	printf("\nOoops, %s!\n", get_exc_name(read_c0_cause()));
-	printf("EPC = 0x%08x\n", read_c0_epc());
-	printf("CP0_STATUS = 0x%08x\n", read_c0_status());
-	printf("CP0_CAUSE = 0x%08x\n", read_c0_cause());
-	printf("CP0_CONFIG = 0x%08x\n\n", read_c0_config());
+	const int field = 2 * sizeof(unsigned long);
+	unsigned int cause = regs->cp0_cause;
+	int i;
+
+	printf("\nOoops, %s!\n\n", get_exc_name(cause));
+
+	/*
+	 * Saved main processor registers
+	 */
+	for (i = 0; i < 32; ) {
+		if ((i % 4) == 0)
+			printf("$%2d   :", i);
+		if (i == 0)
+			printf(" %0*lx", field, 0UL);
+		else if (i == 26 || i == 27)
+			printf(" %*s", field, "");
+		else
+			printf(" %0*lx", field, regs->regs[i]);
+
+		i++;
+		if ((i % 4) == 0)
+			printf("\n");
+	}
+
+	printf("Hi    : %0*lx\n", field, regs->hi);
+	printf("Lo    : %0*lx\n", field, regs->lo);
+
+	/*
+	 * Saved cp0 registers
+	 */
+	printf("epc   : %0*lx\n", field, regs->cp0_epc);
+	printf("ra    : %0*lx\n", field, regs->regs[31]);
+
+	printf("Status: %08x\n", (uint32_t) regs->cp0_status);
+	printf("Cause : %08x\n", cause);
+	printf("Config: %08x\n\n", read_c0_config());
 
 	hang();
 }
-- 
1.8.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
