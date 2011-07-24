Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql4Fx-0004zK-FD
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 19:22:45 +0000
Received: by fxg17 with SMTP id 17so6336857fxg.16
	for <barebox@lists.infradead.org>; Sun, 24 Jul 2011 12:22:28 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 24 Jul 2011 23:22:10 +0400
Message-Id: <1311535336-4534-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 03/10] MIPS: import header files
To: barebox@lists.infradead.org

from linux-2.6.39:
 * arch/mips/include/asm/*
 * include/asm-generic/int-ll64.h

from barebox-2011.07.0 arch/x86:
 * arch/mips/include/asm/sections.h

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/asm.h         |  409 +++++++++++++++
 arch/mips/include/asm/bitsperlong.h |    8 +
 arch/mips/include/asm/byteorder.h   |   19 +
 arch/mips/include/asm/elf.h         |   52 ++
 arch/mips/include/asm/io.h          |   65 +++
 arch/mips/include/asm/mipsregs.h    |  988 +++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/posix_types.h |  144 +++++
 arch/mips/include/asm/regdef.h      |  100 ++++
 arch/mips/include/asm/sections.h    |    1 +
 arch/mips/include/asm/sgidefs.h     |   44 ++
 arch/mips/include/asm/swab.h        |   59 ++
 arch/mips/include/asm/types.h       |   49 ++
 include/asm-generic/int-ll64.h      |   78 +++
 13 files changed, 2016 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/include/asm/asm.h
 create mode 100644 arch/mips/include/asm/bitsperlong.h
 create mode 100644 arch/mips/include/asm/byteorder.h
 create mode 100644 arch/mips/include/asm/elf.h
 create mode 100644 arch/mips/include/asm/io.h
 create mode 100644 arch/mips/include/asm/mipsregs.h
 create mode 100644 arch/mips/include/asm/posix_types.h
 create mode 100644 arch/mips/include/asm/regdef.h
 create mode 100644 arch/mips/include/asm/sections.h
 create mode 100644 arch/mips/include/asm/sgidefs.h
 create mode 100644 arch/mips/include/asm/swab.h
 create mode 100644 arch/mips/include/asm/types.h
 create mode 100644 include/asm-generic/int-ll64.h

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
new file mode 100644
index 0000000..608cfcf
--- /dev/null
+++ b/arch/mips/include/asm/asm.h
@@ -0,0 +1,409 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1995, 1996, 1997, 1999, 2001 by Ralf Baechle
+ * Copyright (C) 1999 by Silicon Graphics, Inc.
+ * Copyright (C) 2001 MIPS Technologies, Inc.
+ * Copyright (C) 2002  Maciej W. Rozycki
+ *
+ * Some useful macros for MIPS assembler code
+ *
+ * Some of the routines below contain useless nops that will be optimized
+ * away by gas in -O mode. These nops are however required to fill delay
+ * slots in noreorder mode.
+ */
+#ifndef __ASM_ASM_H
+#define __ASM_ASM_H
+
+#include <asm/sgidefs.h>
+
+#ifndef CAT
+#ifdef __STDC__
+#define __CAT(str1, str2) str1##str2
+#else
+#define __CAT(str1, str2) str1/**/str2
+#endif
+#define CAT(str1, str2) __CAT(str1, str2)
+#endif
+
+/*
+ * PIC specific declarations
+ * Not used for the kernel but here seems to be the right place.
+ */
+#ifdef __PIC__
+#define CPRESTORE(register)                             \
+		.cprestore register
+#define CPADD(register)                                 \
+		.cpadd	register
+#define CPLOAD(register)                                \
+		.cpload	register
+#else
+#define CPRESTORE(register)
+#define CPADD(register)
+#define CPLOAD(register)
+#endif
+
+/*
+ * LEAF - declare leaf routine
+ */
+#define	LEAF(symbol)                                    \
+		.globl	symbol;                         \
+		.align	2;                              \
+		.type	symbol, @function;              \
+		.ent	symbol, 0;                      \
+symbol:		.frame	sp, 0, ra
+
+/*
+ * NESTED - declare nested routine entry point
+ */
+#define	NESTED(symbol, framesize, rpc)                  \
+		.globl	symbol;                         \
+		.align	2;                              \
+		.type	symbol, @function;              \
+		.ent	symbol, 0;                       \
+symbol:		.frame	sp, framesize, rpc
+
+/*
+ * END - mark end of function
+ */
+#define	END(function)                                   \
+		.end	function;		        \
+		.size	function, .-function
+
+/*
+ * EXPORT - export definition of symbol
+ */
+#define EXPORT(symbol)					\
+		.globl	symbol;                         \
+symbol:
+
+/*
+ * FEXPORT - export definition of a function symbol
+ */
+#define FEXPORT(symbol)					\
+		.globl	symbol;				\
+		.type	symbol, @function;		\
+symbol:
+
+/*
+ * ABS - export absolute symbol
+ */
+#define	ABS(symbol,value)                               \
+		.globl	symbol;                         \
+symbol		=	value
+
+#define	PANIC(msg)                                      \
+		.set	push;				\
+		.set	reorder;                        \
+		PTR_LA	a0, 8f;                          \
+		jal	panic;                          \
+9:		b	9b;                             \
+		.set	pop;				\
+		TEXT(msg)
+
+/*
+ * Print formatted string
+ */
+#ifdef CONFIG_PRINTK
+#define PRINT(string)                                   \
+		.set	push;				\
+		.set	reorder;                        \
+		PTR_LA	a0, 8f;                          \
+		jal	printk;                         \
+		.set	pop;				\
+		TEXT(string)
+#else
+#define PRINT(string)
+#endif
+
+#define	TEXT(msg)                                       \
+		.pushsection .data;			\
+8:		.asciiz	msg;                            \
+		.popsection;
+
+/*
+ * Build text tables
+ */
+#define TTABLE(string)                                  \
+		.pushsection .text;			\
+		.word	1f;                             \
+		.popsection				\
+		.pushsection .data;			\
+1:		.asciiz	string;                         \
+		.popsection
+
+/*
+ * MIPS IV pref instruction.
+ * Use with .set noreorder only!
+ *
+ * MIPS IV implementations are free to treat this as a nop.  The R5000
+ * is one of them.  So we should have an option not to use this instruction.
+ */
+#ifdef CONFIG_CPU_HAS_PREFETCH
+
+#define PREF(hint,addr)                                 \
+		.set	push;				\
+		.set	mips4;				\
+		pref	hint, addr;			\
+		.set	pop
+
+#define PREFX(hint,addr)                                \
+		.set	push;				\
+		.set	mips4;				\
+		prefx	hint, addr;			\
+		.set	pop
+
+#else /* !CONFIG_CPU_HAS_PREFETCH */
+
+#define PREF(hint, addr)
+#define PREFX(hint, addr)
+
+#endif /* !CONFIG_CPU_HAS_PREFETCH */
+
+/*
+ * MIPS ISA IV/V movn/movz instructions and equivalents for older CPUs.
+ */
+#if (_MIPS_ISA == _MIPS_ISA_MIPS1)
+#define MOVN(rd, rs, rt)                                \
+		.set	push;				\
+		.set	reorder;			\
+		beqz	rt, 9f;                         \
+		move	rd, rs;                         \
+		.set	pop;				\
+9:
+#define MOVZ(rd, rs, rt)                                \
+		.set	push;				\
+		.set	reorder;			\
+		bnez	rt, 9f;                         \
+		move	rd, rs;                         \
+		.set	pop;				\
+9:
+#endif /* _MIPS_ISA == _MIPS_ISA_MIPS1 */
+#if (_MIPS_ISA == _MIPS_ISA_MIPS2) || (_MIPS_ISA == _MIPS_ISA_MIPS3)
+#define MOVN(rd, rs, rt)                                \
+		.set	push;				\
+		.set	noreorder;			\
+		bnezl	rt, 9f;                         \
+		 move	rd, rs;                         \
+		.set	pop;				\
+9:
+#define MOVZ(rd, rs, rt)                                \
+		.set	push;				\
+		.set	noreorder;			\
+		beqzl	rt, 9f;                         \
+		 move	rd, rs;                         \
+		.set	pop;				\
+9:
+#endif /* (_MIPS_ISA == _MIPS_ISA_MIPS2) || (_MIPS_ISA == _MIPS_ISA_MIPS3) */
+#if (_MIPS_ISA == _MIPS_ISA_MIPS4 ) || (_MIPS_ISA == _MIPS_ISA_MIPS5) || \
+    (_MIPS_ISA == _MIPS_ISA_MIPS32) || (_MIPS_ISA == _MIPS_ISA_MIPS64)
+#define MOVN(rd, rs, rt)                                \
+		movn	rd, rs, rt
+#define MOVZ(rd, rs, rt)                                \
+		movz	rd, rs, rt
+#endif /* MIPS IV, MIPS V, MIPS32 or MIPS64 */
+
+/*
+ * Stack alignment
+ */
+#if (_MIPS_SIM == _MIPS_SIM_ABI32)
+#define ALSZ	7
+#define ALMASK	~7
+#endif
+#if (_MIPS_SIM == _MIPS_SIM_NABI32) || (_MIPS_SIM == _MIPS_SIM_ABI64)
+#define ALSZ	15
+#define ALMASK	~15
+#endif
+
+/*
+ * Macros to handle different pointer/register sizes for 32/64-bit code
+ */
+
+/*
+ * Size of a register
+ */
+#ifdef __mips64
+#define SZREG	8
+#else
+#define SZREG	4
+#endif
+
+/*
+ * Use the following macros in assemblercode to load/store registers,
+ * pointers etc.
+ */
+#if (_MIPS_SIM == _MIPS_SIM_ABI32)
+#define REG_S		sw
+#define REG_L		lw
+#define REG_SUBU	subu
+#define REG_ADDU	addu
+#endif
+#if (_MIPS_SIM == _MIPS_SIM_NABI32) || (_MIPS_SIM == _MIPS_SIM_ABI64)
+#define REG_S		sd
+#define REG_L		ld
+#define REG_SUBU	dsubu
+#define REG_ADDU	daddu
+#endif
+
+/*
+ * How to add/sub/load/store/shift C int variables.
+ */
+#if (_MIPS_SZINT == 32)
+#define INT_ADD		add
+#define INT_ADDU	addu
+#define INT_ADDI	addi
+#define INT_ADDIU	addiu
+#define INT_SUB		sub
+#define INT_SUBU	subu
+#define INT_L		lw
+#define INT_S		sw
+#define INT_SLL		sll
+#define INT_SLLV	sllv
+#define INT_SRL		srl
+#define INT_SRLV	srlv
+#define INT_SRA		sra
+#define INT_SRAV	srav
+#endif
+
+#if (_MIPS_SZINT == 64)
+#define INT_ADD		dadd
+#define INT_ADDU	daddu
+#define INT_ADDI	daddi
+#define INT_ADDIU	daddiu
+#define INT_SUB		dsub
+#define INT_SUBU	dsubu
+#define INT_L		ld
+#define INT_S		sd
+#define INT_SLL		dsll
+#define INT_SLLV	dsllv
+#define INT_SRL		dsrl
+#define INT_SRLV	dsrlv
+#define INT_SRA		dsra
+#define INT_SRAV	dsrav
+#endif
+
+/*
+ * How to add/sub/load/store/shift C long variables.
+ */
+#if (_MIPS_SZLONG == 32)
+#define LONG_ADD	add
+#define LONG_ADDU	addu
+#define LONG_ADDI	addi
+#define LONG_ADDIU	addiu
+#define LONG_SUB	sub
+#define LONG_SUBU	subu
+#define LONG_L		lw
+#define LONG_S		sw
+#define LONG_SLL	sll
+#define LONG_SLLV	sllv
+#define LONG_SRL	srl
+#define LONG_SRLV	srlv
+#define LONG_SRA	sra
+#define LONG_SRAV	srav
+
+#define LONG		.word
+#define LONGSIZE	4
+#define LONGMASK	3
+#define LONGLOG		2
+#endif
+
+#if (_MIPS_SZLONG == 64)
+#define LONG_ADD	dadd
+#define LONG_ADDU	daddu
+#define LONG_ADDI	daddi
+#define LONG_ADDIU	daddiu
+#define LONG_SUB	dsub
+#define LONG_SUBU	dsubu
+#define LONG_L		ld
+#define LONG_S		sd
+#define LONG_SLL	dsll
+#define LONG_SLLV	dsllv
+#define LONG_SRL	dsrl
+#define LONG_SRLV	dsrlv
+#define LONG_SRA	dsra
+#define LONG_SRAV	dsrav
+
+#define LONG		.dword
+#define LONGSIZE	8
+#define LONGMASK	7
+#define LONGLOG		3
+#endif
+
+/*
+ * How to add/sub/load/store/shift pointers.
+ */
+#if (_MIPS_SZPTR == 32)
+#define PTR_ADD		add
+#define PTR_ADDU	addu
+#define PTR_ADDI	addi
+#define PTR_ADDIU	addiu
+#define PTR_SUB		sub
+#define PTR_SUBU	subu
+#define PTR_L		lw
+#define PTR_S		sw
+#define PTR_LA		la
+#define PTR_LI		li
+#define PTR_SLL		sll
+#define PTR_SLLV	sllv
+#define PTR_SRL		srl
+#define PTR_SRLV	srlv
+#define PTR_SRA		sra
+#define PTR_SRAV	srav
+
+#define PTR_SCALESHIFT	2
+
+#define PTR		.word
+#define PTRSIZE		4
+#define PTRLOG		2
+#endif
+
+#if (_MIPS_SZPTR == 64)
+#define PTR_ADD		dadd
+#define PTR_ADDU	daddu
+#define PTR_ADDI	daddi
+#define PTR_ADDIU	daddiu
+#define PTR_SUB		dsub
+#define PTR_SUBU	dsubu
+#define PTR_L		ld
+#define PTR_S		sd
+#define PTR_LA		dla
+#define PTR_LI		dli
+#define PTR_SLL		dsll
+#define PTR_SLLV	dsllv
+#define PTR_SRL		dsrl
+#define PTR_SRLV	dsrlv
+#define PTR_SRA		dsra
+#define PTR_SRAV	dsrav
+
+#define PTR_SCALESHIFT	3
+
+#define PTR		.dword
+#define PTRSIZE		8
+#define PTRLOG		3
+#endif
+
+/*
+ * Some cp0 registers were extended to 64bit for MIPS III.
+ */
+#if (_MIPS_SIM == _MIPS_SIM_ABI32)
+#define MFC0		mfc0
+#define MTC0		mtc0
+#endif
+#if (_MIPS_SIM == _MIPS_SIM_NABI32) || (_MIPS_SIM == _MIPS_SIM_ABI64)
+#define MFC0		dmfc0
+#define MTC0		dmtc0
+#endif
+
+#define SSNOP		sll zero, zero, 1
+
+#ifdef CONFIG_SGI_IP28
+/* Inhibit speculative stores to volatile (e.g.DMA) or invalid addresses. */
+#include <asm/cacheops.h>
+#define R10KCBARRIER(addr)  cache   Cache_Barrier, addr;
+#else
+#define R10KCBARRIER(addr)
+#endif
+
+#endif /* __ASM_ASM_H */
diff --git a/arch/mips/include/asm/bitsperlong.h b/arch/mips/include/asm/bitsperlong.h
new file mode 100644
index 0000000..3e4c10a
--- /dev/null
+++ b/arch/mips/include/asm/bitsperlong.h
@@ -0,0 +1,8 @@
+#ifndef __ASM_MIPS_BITSPERLONG_H
+#define __ASM_MIPS_BITSPERLONG_H
+
+#define __BITS_PER_LONG _MIPS_SZLONG
+
+#include <asm-generic/bitsperlong.h>
+
+#endif /* __ASM_MIPS_BITSPERLONG_H */
diff --git a/arch/mips/include/asm/byteorder.h b/arch/mips/include/asm/byteorder.h
new file mode 100644
index 0000000..9579051
--- /dev/null
+++ b/arch/mips/include/asm/byteorder.h
@@ -0,0 +1,19 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 99, 2003 by Ralf Baechle
+ */
+#ifndef _ASM_BYTEORDER_H
+#define _ASM_BYTEORDER_H
+
+#if defined(__MIPSEB__)
+#include <linux/byteorder/big_endian.h>
+#elif defined(__MIPSEL__)
+#include <linux/byteorder/little_endian.h>
+#else
+# error "MIPS, but neither __MIPSEB__, nor __MIPSEL__???"
+#endif
+
+#endif /* _ASM_BYTEORDER_H */
diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
new file mode 100644
index 0000000..b8b8219
--- /dev/null
+++ b/arch/mips/include/asm/elf.h
@@ -0,0 +1,52 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Much of this is taken from binutils and GNU libc ...
+ */
+
+/**
+ * @file
+ * @brief mips specific elf information
+ *
+ */
+
+#ifndef _ASM_MIPS_ELF_H
+#define _ASM_MIPS_ELF_H
+
+#ifndef ELF_ARCH
+
+#ifdef CONFIG_32BIT
+
+/*
+ * This is used to ensure we don't load something for the wrong architecture.
+ */
+#define elf_check_arch(hdr)						\
+/*
+ * These are used to set parameters in the core dumps.
+ */
+#define ELF_CLASS	ELFCLASS32
+
+#endif /* CONFIG_32BIT */
+
+#ifdef CONFIG_64BIT
+/*
+ * These are used to set parameters in the core dumps.
+ */
+#define ELF_CLASS	ELFCLASS64
+
+#endif /* CONFIG_64BIT */
+
+/*
+ * These are used to set parameters in the core dumps.
+ */
+#ifdef __MIPSEB__
+#define ELF_DATA	ELFDATA2MSB
+#elif defined(__MIPSEL__)
+#define ELF_DATA	ELFDATA2LSB
+#endif
+#define ELF_ARCH	EM_MIPS
+
+#endif /* !defined(ELF_ARCH) */
+#endif /* _ASM_MIPS_ELF_H */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
new file mode 100644
index 0000000..97ea231
--- /dev/null
+++ b/arch/mips/include/asm/io.h
@@ -0,0 +1,65 @@
+/*
+ * Stolen from the linux-2.6/include/asm-generic/io.h
+ */
+
+/**
+ * @file
+ * @brief mips IO access functions
+ */
+
+#ifndef __ASM_MIPS_IO_H
+#define __ASM_MIPS_IO_H
+
+#include <linux/compiler.h>
+#include <asm/types.h>
+
+/*****************************************************************************/
+/*
+ * readX/writeX() are used to access memory mapped devices. On some
+ * architectures the memory mapped IO stuff needs to be accessed
+ * differently. On the simple architectures, we just read/write the
+ * memory location directly.
+ */
+#ifndef __raw_readb
+static inline u8 __raw_readb(const volatile void __iomem *addr)
+{
+	return *(const volatile u8 __force *) addr;
+}
+#endif
+
+#ifndef __raw_readw
+static inline u16 __raw_readw(const volatile void __iomem *addr)
+{
+	return *(const volatile u16 __force *) addr;
+}
+#endif
+
+#ifndef __raw_readl
+static inline u32 __raw_readl(const volatile void __iomem *addr)
+{
+	return *(const volatile u32 __force *) addr;
+}
+#endif
+
+#ifndef __raw_writeb
+static inline void __raw_writeb(u8 b, volatile void __iomem *addr)
+{
+	*(volatile u8 __force *) addr = b;
+}
+#endif
+
+#ifndef __raw_writew
+static inline void __raw_writew(u16 b, volatile void __iomem *addr)
+{
+	*(volatile u16 __force *) addr = b;
+}
+#endif
+
+#ifndef __raw_writel
+static inline void __raw_writel(u32 b, volatile void __iomem *addr)
+{
+	*(volatile u32 __force *) addr = b;
+}
+#endif
+
+#endif	/* __ASM_MIPS_IO_H */
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
new file mode 100644
index 0000000..f3d1ae2
--- /dev/null
+++ b/arch/mips/include/asm/mipsregs.h
@@ -0,0 +1,988 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994, 1995, 1996, 1997, 2000, 2001 by Ralf Baechle
+ * Copyright (C) 2000 Silicon Graphics, Inc.
+ * Modified for further R[236]000 support by Paul M. Antoine, 1996.
+ * Kevin D. Kissell, kevink@mips.com and Carsten Langgaard, carstenl@mips.com
+ * Copyright (C) 2000, 07 MIPS Technologies, Inc.
+ * Copyright (C) 2003, 2004  Maciej W. Rozycki
+ */
+#ifndef _ASM_MIPSREGS_H
+#define _ASM_MIPSREGS_H
+
+/*
+ * The following macros are especially useful for __asm__
+ * inline assembler.
+ */
+#ifndef __STR
+#define __STR(x) #x
+#endif
+#ifndef STR
+#define STR(x) __STR(x)
+#endif
+
+/*
+ *  Configure language
+ */
+#ifdef __ASSEMBLY__
+#define _ULCAST_
+#else
+#define _ULCAST_ (unsigned long)
+#endif
+
+/*
+ * Coprocessor 0 register names
+ */
+#define CP0_INDEX $0
+#define CP0_RANDOM $1
+#define CP0_ENTRYLO0 $2
+#define CP0_ENTRYLO1 $3
+#define CP0_CONF $3
+#define CP0_CONTEXT $4
+#define CP0_PAGEMASK $5
+#define CP0_WIRED $6
+#define CP0_INFO $7
+#define CP0_BADVADDR $8
+#define CP0_COUNT $9
+#define CP0_ENTRYHI $10
+#define CP0_COMPARE $11
+#define CP0_STATUS $12
+#define CP0_CAUSE $13
+#define CP0_EPC $14
+#define CP0_PRID $15
+#define CP0_CONFIG $16
+#define CP0_LLADDR $17
+#define CP0_WATCHLO $18
+#define CP0_WATCHHI $19
+#define CP0_XCONTEXT $20
+#define CP0_FRAMEMASK $21
+#define CP0_DIAGNOSTIC $22
+#define CP0_DEBUG $23
+#define CP0_DEPC $24
+#define CP0_PERFORMANCE $25
+#define CP0_ECC $26
+#define CP0_CACHEERR $27
+#define CP0_TAGLO $28
+#define CP0_TAGHI $29
+#define CP0_ERROREPC $30
+#define CP0_DESAVE $31
+
+/*
+ * R4640/R4650 cp0 register names.  These registers are listed
+ * here only for completeness; without MMU these CPUs are not useable
+ * by Linux.  A future ELKS port might take make Linux run on them
+ * though ...
+ */
+#define CP0_IBASE $0
+#define CP0_IBOUND $1
+#define CP0_DBASE $2
+#define CP0_DBOUND $3
+#define CP0_CALG $17
+#define CP0_IWATCH $18
+#define CP0_DWATCH $19
+
+/*
+ * Coprocessor 0 Set 1 register names
+ */
+#define CP0_S1_DERRADDR0  $26
+#define CP0_S1_DERRADDR1  $27
+#define CP0_S1_INTCONTROL $20
+
+/*
+ * Coprocessor 0 Set 2 register names
+ */
+#define CP0_S2_SRSCTL	  $12	/* MIPSR2 */
+
+/*
+ * Coprocessor 0 Set 3 register names
+ */
+#define CP0_S3_SRSMAP	  $12	/* MIPSR2 */
+
+/*
+ *  TX39 Series
+ */
+#define CP0_TX39_CACHE	$7
+
+/*
+ * Coprocessor 1 (FPU) register names
+ */
+#define CP1_REVISION   $0
+#define CP1_STATUS     $31
+
+/*
+ * FPU Status Register Values
+ */
+/*
+ * Status Register Values
+ */
+
+#define FPU_CSR_FLUSH   0x01000000      /* flush denormalised results to 0 */
+#define FPU_CSR_COND    0x00800000      /* $fcc0 */
+#define FPU_CSR_COND0   0x00800000      /* $fcc0 */
+#define FPU_CSR_COND1   0x02000000      /* $fcc1 */
+#define FPU_CSR_COND2   0x04000000      /* $fcc2 */
+#define FPU_CSR_COND3   0x08000000      /* $fcc3 */
+#define FPU_CSR_COND4   0x10000000      /* $fcc4 */
+#define FPU_CSR_COND5   0x20000000      /* $fcc5 */
+#define FPU_CSR_COND6   0x40000000      /* $fcc6 */
+#define FPU_CSR_COND7   0x80000000      /* $fcc7 */
+
+/*
+ * Bits 18 - 20 of the FPU Status Register will be read as 0,
+ * and should be written as zero.
+ */
+#define FPU_CSR_RSVD	0x001c0000
+
+/*
+ * X the exception cause indicator
+ * E the exception enable
+ * S the sticky/flag bit
+*/
+#define FPU_CSR_ALL_X   0x0003f000
+#define FPU_CSR_UNI_X   0x00020000
+#define FPU_CSR_INV_X   0x00010000
+#define FPU_CSR_DIV_X   0x00008000
+#define FPU_CSR_OVF_X   0x00004000
+#define FPU_CSR_UDF_X   0x00002000
+#define FPU_CSR_INE_X   0x00001000
+
+#define FPU_CSR_ALL_E   0x00000f80
+#define FPU_CSR_INV_E   0x00000800
+#define FPU_CSR_DIV_E   0x00000400
+#define FPU_CSR_OVF_E   0x00000200
+#define FPU_CSR_UDF_E   0x00000100
+#define FPU_CSR_INE_E   0x00000080
+
+#define FPU_CSR_ALL_S   0x0000007c
+#define FPU_CSR_INV_S   0x00000040
+#define FPU_CSR_DIV_S   0x00000020
+#define FPU_CSR_OVF_S   0x00000010
+#define FPU_CSR_UDF_S   0x00000008
+#define FPU_CSR_INE_S   0x00000004
+
+/* Bits 0 and 1 of FPU Status Register specify the rounding mode */
+#define FPU_CSR_RM	0x00000003
+#define FPU_CSR_RN      0x0     /* nearest */
+#define FPU_CSR_RZ      0x1     /* towards zero */
+#define FPU_CSR_RU      0x2     /* towards +Infinity */
+#define FPU_CSR_RD      0x3     /* towards -Infinity */
+
+/*
+ * Values for PageMask register
+ */
+#ifdef CONFIG_CPU_VR41XX
+
+/* Why doesn't stupidity hurt ... */
+
+#define PM_1K		0x00000000
+#define PM_4K		0x00001800
+#define PM_16K		0x00007800
+#define PM_64K		0x0001f800
+#define PM_256K		0x0007f800
+
+#else
+
+#define PM_4K		0x00000000
+#define PM_8K		0x00002000
+#define PM_16K		0x00006000
+#define PM_32K		0x0000e000
+#define PM_64K		0x0001e000
+#define PM_128K		0x0003e000
+#define PM_256K		0x0007e000
+#define PM_512K		0x000fe000
+#define PM_1M		0x001fe000
+#define PM_2M		0x003fe000
+#define PM_4M		0x007fe000
+#define PM_8M		0x00ffe000
+#define PM_16M		0x01ffe000
+#define PM_32M		0x03ffe000
+#define PM_64M		0x07ffe000
+#define PM_256M		0x1fffe000
+#define PM_1G		0x7fffe000
+
+#endif
+
+/*
+ * Bitfields in the R4xx0 cp0 status register
+ */
+#define ST0_IE			0x00000001
+#define ST0_EXL			0x00000002
+#define ST0_ERL			0x00000004
+#define ST0_KSU			0x00000018
+#  define KSU_USER		0x00000010
+#  define KSU_SUPERVISOR	0x00000008
+#  define KSU_KERNEL		0x00000000
+#define ST0_UX			0x00000020
+#define ST0_SX			0x00000040
+#define ST0_KX 			0x00000080
+#define ST0_DE			0x00010000
+#define ST0_CE			0x00020000
+
+/*
+ * Setting c0_status.co enables Hit_Writeback and Hit_Writeback_Invalidate
+ * cacheops in userspace.  This bit exists only on RM7000 and RM9000
+ * processors.
+ */
+#define ST0_CO			0x08000000
+
+/*
+ * Bitfields in the R[23]000 cp0 status register.
+ */
+#define ST0_IEC                 0x00000001
+#define ST0_KUC			0x00000002
+#define ST0_IEP			0x00000004
+#define ST0_KUP			0x00000008
+#define ST0_IEO			0x00000010
+#define ST0_KUO			0x00000020
+/* bits 6 & 7 are reserved on R[23]000 */
+#define ST0_ISC			0x00010000
+#define ST0_SWC			0x00020000
+#define ST0_CM			0x00080000
+
+/*
+ * Bits specific to the R4640/R4650
+ */
+#define ST0_UM			(_ULCAST_(1) <<  4)
+#define ST0_IL			(_ULCAST_(1) << 23)
+#define ST0_DL			(_ULCAST_(1) << 24)
+
+/*
+ * Enable the MIPS MDMX and DSP ASEs
+ */
+#define ST0_MX			0x01000000
+
+/*
+ * Bitfields in the TX39 family CP0 Configuration Register 3
+ */
+#define TX39_CONF_ICS_SHIFT	19
+#define TX39_CONF_ICS_MASK	0x00380000
+#define TX39_CONF_ICS_1KB 	0x00000000
+#define TX39_CONF_ICS_2KB 	0x00080000
+#define TX39_CONF_ICS_4KB 	0x00100000
+#define TX39_CONF_ICS_8KB 	0x00180000
+#define TX39_CONF_ICS_16KB 	0x00200000
+
+#define TX39_CONF_DCS_SHIFT	16
+#define TX39_CONF_DCS_MASK	0x00070000
+#define TX39_CONF_DCS_1KB 	0x00000000
+#define TX39_CONF_DCS_2KB 	0x00010000
+#define TX39_CONF_DCS_4KB 	0x00020000
+#define TX39_CONF_DCS_8KB 	0x00030000
+#define TX39_CONF_DCS_16KB 	0x00040000
+
+#define TX39_CONF_CWFON 	0x00004000
+#define TX39_CONF_WBON  	0x00002000
+#define TX39_CONF_RF_SHIFT	10
+#define TX39_CONF_RF_MASK	0x00000c00
+#define TX39_CONF_DOZE		0x00000200
+#define TX39_CONF_HALT		0x00000100
+#define TX39_CONF_LOCK		0x00000080
+#define TX39_CONF_ICE		0x00000020
+#define TX39_CONF_DCE		0x00000010
+#define TX39_CONF_IRSIZE_SHIFT	2
+#define TX39_CONF_IRSIZE_MASK	0x0000000c
+#define TX39_CONF_DRSIZE_SHIFT	0
+#define TX39_CONF_DRSIZE_MASK	0x00000003
+
+/*
+ * Status register bits available in all MIPS CPUs.
+ */
+#define ST0_IM			0x0000ff00
+#define  STATUSB_IP0		8
+#define  STATUSF_IP0		(_ULCAST_(1) <<  8)
+#define  STATUSB_IP1		9
+#define  STATUSF_IP1		(_ULCAST_(1) <<  9)
+#define  STATUSB_IP2		10
+#define  STATUSF_IP2		(_ULCAST_(1) << 10)
+#define  STATUSB_IP3		11
+#define  STATUSF_IP3		(_ULCAST_(1) << 11)
+#define  STATUSB_IP4		12
+#define  STATUSF_IP4		(_ULCAST_(1) << 12)
+#define  STATUSB_IP5		13
+#define  STATUSF_IP5		(_ULCAST_(1) << 13)
+#define  STATUSB_IP6		14
+#define  STATUSF_IP6		(_ULCAST_(1) << 14)
+#define  STATUSB_IP7		15
+#define  STATUSF_IP7		(_ULCAST_(1) << 15)
+#define  STATUSB_IP8		0
+#define  STATUSF_IP8		(_ULCAST_(1) <<  0)
+#define  STATUSB_IP9		1
+#define  STATUSF_IP9		(_ULCAST_(1) <<  1)
+#define  STATUSB_IP10		2
+#define  STATUSF_IP10		(_ULCAST_(1) <<  2)
+#define  STATUSB_IP11		3
+#define  STATUSF_IP11		(_ULCAST_(1) <<  3)
+#define  STATUSB_IP12		4
+#define  STATUSF_IP12		(_ULCAST_(1) <<  4)
+#define  STATUSB_IP13		5
+#define  STATUSF_IP13		(_ULCAST_(1) <<  5)
+#define  STATUSB_IP14		6
+#define  STATUSF_IP14		(_ULCAST_(1) <<  6)
+#define  STATUSB_IP15		7
+#define  STATUSF_IP15		(_ULCAST_(1) <<  7)
+#define ST0_CH			0x00040000
+#define ST0_NMI			0x00080000
+#define ST0_SR			0x00100000
+#define ST0_TS			0x00200000
+#define ST0_BEV			0x00400000
+#define ST0_RE			0x02000000
+#define ST0_FR			0x04000000
+#define ST0_CU			0xf0000000
+#define ST0_CU0			0x10000000
+#define ST0_CU1			0x20000000
+#define ST0_CU2			0x40000000
+#define ST0_CU3			0x80000000
+#define ST0_XX			0x80000000	/* MIPS IV naming */
+
+/*
+ * Bitfields and bit numbers in the coprocessor 0 IntCtl register. (MIPSR2)
+ *
+ * Refer to your MIPS R4xx0 manual, chapter 5 for explanation.
+ */
+#define INTCTLB_IPPCI		26
+#define INTCTLF_IPPCI		(_ULCAST_(7) << INTCTLB_IPPCI)
+#define INTCTLB_IPTI		29
+#define INTCTLF_IPTI		(_ULCAST_(7) << INTCTLB_IPTI)
+
+/*
+ * Bitfields and bit numbers in the coprocessor 0 cause register.
+ *
+ * Refer to your MIPS R4xx0 manual, chapter 5 for explanation.
+ */
+#define  CAUSEB_EXCCODE		2
+#define  CAUSEF_EXCCODE		(_ULCAST_(31)  <<  2)
+#define  CAUSEB_IP		8
+#define  CAUSEF_IP		(_ULCAST_(255) <<  8)
+#define  CAUSEB_IP0		8
+#define  CAUSEF_IP0		(_ULCAST_(1)   <<  8)
+#define  CAUSEB_IP1		9
+#define  CAUSEF_IP1		(_ULCAST_(1)   <<  9)
+#define  CAUSEB_IP2		10
+#define  CAUSEF_IP2		(_ULCAST_(1)   << 10)
+#define  CAUSEB_IP3		11
+#define  CAUSEF_IP3		(_ULCAST_(1)   << 11)
+#define  CAUSEB_IP4		12
+#define  CAUSEF_IP4		(_ULCAST_(1)   << 12)
+#define  CAUSEB_IP5		13
+#define  CAUSEF_IP5		(_ULCAST_(1)   << 13)
+#define  CAUSEB_IP6		14
+#define  CAUSEF_IP6		(_ULCAST_(1)   << 14)
+#define  CAUSEB_IP7		15
+#define  CAUSEF_IP7		(_ULCAST_(1)   << 15)
+#define  CAUSEB_IV		23
+#define  CAUSEF_IV		(_ULCAST_(1)   << 23)
+#define  CAUSEB_CE		28
+#define  CAUSEF_CE		(_ULCAST_(3)   << 28)
+#define  CAUSEB_TI		30
+#define  CAUSEF_TI		(_ULCAST_(1)   << 30)
+#define  CAUSEB_BD		31
+#define  CAUSEF_BD		(_ULCAST_(1)   << 31)
+
+/*
+ * Bits in the coprocessor 0 config register.
+ */
+/* Generic bits.  */
+#define CONF_CM_CACHABLE_NO_WA		0
+#define CONF_CM_CACHABLE_WA		1
+#define CONF_CM_UNCACHED		2
+#define CONF_CM_CACHABLE_NONCOHERENT	3
+#define CONF_CM_CACHABLE_CE		4
+#define CONF_CM_CACHABLE_COW		5
+#define CONF_CM_CACHABLE_CUW		6
+#define CONF_CM_CACHABLE_ACCELERATED	7
+#define CONF_CM_CMASK			7
+#define CONF_BE			(_ULCAST_(1) << 15)
+
+/* Bits common to various processors.  */
+#define CONF_CU			(_ULCAST_(1) <<  3)
+#define CONF_DB			(_ULCAST_(1) <<  4)
+#define CONF_IB			(_ULCAST_(1) <<  5)
+#define CONF_DC			(_ULCAST_(7) <<  6)
+#define CONF_IC			(_ULCAST_(7) <<  9)
+#define CONF_EB			(_ULCAST_(1) << 13)
+#define CONF_EM			(_ULCAST_(1) << 14)
+#define CONF_SM			(_ULCAST_(1) << 16)
+#define CONF_SC			(_ULCAST_(1) << 17)
+#define CONF_EW			(_ULCAST_(3) << 18)
+#define CONF_EP			(_ULCAST_(15)<< 24)
+#define CONF_EC			(_ULCAST_(7) << 28)
+#define CONF_CM			(_ULCAST_(1) << 31)
+
+/* Bits specific to the R4xx0.  */
+#define R4K_CONF_SW		(_ULCAST_(1) << 20)
+#define R4K_CONF_SS		(_ULCAST_(1) << 21)
+#define R4K_CONF_SB		(_ULCAST_(3) << 22)
+
+/* Bits specific to the R5000.  */
+#define R5K_CONF_SE		(_ULCAST_(1) << 12)
+#define R5K_CONF_SS		(_ULCAST_(3) << 20)
+
+/* Bits specific to the RM7000.  */
+#define RM7K_CONF_SE		(_ULCAST_(1) <<  3)
+#define RM7K_CONF_TE		(_ULCAST_(1) << 12)
+#define RM7K_CONF_CLK		(_ULCAST_(1) << 16)
+#define RM7K_CONF_TC		(_ULCAST_(1) << 17)
+#define RM7K_CONF_SI		(_ULCAST_(3) << 20)
+#define RM7K_CONF_SC		(_ULCAST_(1) << 31)
+
+/* Bits specific to the R10000.  */
+#define R10K_CONF_DN		(_ULCAST_(3) <<  3)
+#define R10K_CONF_CT		(_ULCAST_(1) <<  5)
+#define R10K_CONF_PE		(_ULCAST_(1) <<  6)
+#define R10K_CONF_PM		(_ULCAST_(3) <<  7)
+#define R10K_CONF_EC		(_ULCAST_(15)<<  9)
+#define R10K_CONF_SB		(_ULCAST_(1) << 13)
+#define R10K_CONF_SK		(_ULCAST_(1) << 14)
+#define R10K_CONF_SS		(_ULCAST_(7) << 16)
+#define R10K_CONF_SC		(_ULCAST_(7) << 19)
+#define R10K_CONF_DC		(_ULCAST_(7) << 26)
+#define R10K_CONF_IC		(_ULCAST_(7) << 29)
+
+/* Bits specific to the VR41xx.  */
+#define VR41_CONF_CS		(_ULCAST_(1) << 12)
+#define VR41_CONF_P4K		(_ULCAST_(1) << 13)
+#define VR41_CONF_BP		(_ULCAST_(1) << 16)
+#define VR41_CONF_M16		(_ULCAST_(1) << 20)
+#define VR41_CONF_AD		(_ULCAST_(1) << 23)
+
+/* Bits specific to the R30xx.  */
+#define R30XX_CONF_FDM		(_ULCAST_(1) << 19)
+#define R30XX_CONF_REV		(_ULCAST_(1) << 22)
+#define R30XX_CONF_AC		(_ULCAST_(1) << 23)
+#define R30XX_CONF_RF		(_ULCAST_(1) << 24)
+#define R30XX_CONF_HALT		(_ULCAST_(1) << 25)
+#define R30XX_CONF_FPINT	(_ULCAST_(7) << 26)
+#define R30XX_CONF_DBR		(_ULCAST_(1) << 29)
+#define R30XX_CONF_SB		(_ULCAST_(1) << 30)
+#define R30XX_CONF_LOCK		(_ULCAST_(1) << 31)
+
+/* Bits specific to the TX49.  */
+#define TX49_CONF_DC		(_ULCAST_(1) << 16)
+#define TX49_CONF_IC		(_ULCAST_(1) << 17)  /* conflict with CONF_SC */
+#define TX49_CONF_HALT		(_ULCAST_(1) << 18)
+#define TX49_CONF_CWFON		(_ULCAST_(1) << 27)
+
+/* Bits specific to the MIPS32/64 PRA.  */
+#define MIPS_CONF_MT		(_ULCAST_(7) <<  7)
+#define MIPS_CONF_AR		(_ULCAST_(7) << 10)
+#define MIPS_CONF_AT		(_ULCAST_(3) << 13)
+#define MIPS_CONF_M		(_ULCAST_(1) << 31)
+
+/*
+ * Bits in the MIPS32/64 PRA coprocessor 0 config registers 1 and above.
+ */
+#define MIPS_CONF1_FP		(_ULCAST_(1) <<  0)
+#define MIPS_CONF1_EP		(_ULCAST_(1) <<  1)
+#define MIPS_CONF1_CA		(_ULCAST_(1) <<  2)
+#define MIPS_CONF1_WR		(_ULCAST_(1) <<  3)
+#define MIPS_CONF1_PC		(_ULCAST_(1) <<  4)
+#define MIPS_CONF1_MD		(_ULCAST_(1) <<  5)
+#define MIPS_CONF1_C2		(_ULCAST_(1) <<  6)
+#define MIPS_CONF1_DA		(_ULCAST_(7) <<  7)
+#define MIPS_CONF1_DL		(_ULCAST_(7) << 10)
+#define MIPS_CONF1_DS		(_ULCAST_(7) << 13)
+#define MIPS_CONF1_IA		(_ULCAST_(7) << 16)
+#define MIPS_CONF1_IL		(_ULCAST_(7) << 19)
+#define MIPS_CONF1_IS		(_ULCAST_(7) << 22)
+#define MIPS_CONF1_TLBS		(_ULCAST_(63)<< 25)
+
+#define MIPS_CONF2_SA		(_ULCAST_(15)<<  0)
+#define MIPS_CONF2_SL		(_ULCAST_(15)<<  4)
+#define MIPS_CONF2_SS		(_ULCAST_(15)<<  8)
+#define MIPS_CONF2_SU		(_ULCAST_(15)<< 12)
+#define MIPS_CONF2_TA		(_ULCAST_(15)<< 16)
+#define MIPS_CONF2_TL		(_ULCAST_(15)<< 20)
+#define MIPS_CONF2_TS		(_ULCAST_(15)<< 24)
+#define MIPS_CONF2_TU		(_ULCAST_(7) << 28)
+
+#define MIPS_CONF3_TL		(_ULCAST_(1) <<  0)
+#define MIPS_CONF3_SM		(_ULCAST_(1) <<  1)
+#define MIPS_CONF3_MT		(_ULCAST_(1) <<  2)
+#define MIPS_CONF3_SP		(_ULCAST_(1) <<  4)
+#define MIPS_CONF3_VINT		(_ULCAST_(1) <<  5)
+#define MIPS_CONF3_VEIC		(_ULCAST_(1) <<  6)
+#define MIPS_CONF3_LPA		(_ULCAST_(1) <<  7)
+#define MIPS_CONF3_DSP		(_ULCAST_(1) << 10)
+#define MIPS_CONF3_ULRI		(_ULCAST_(1) << 13)
+
+#define MIPS_CONF4_MMUSIZEEXT	(_ULCAST_(255) << 0)
+#define MIPS_CONF4_MMUEXTDEF	(_ULCAST_(3) << 14)
+#define MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT (_ULCAST_(1) << 14)
+
+#define MIPS_CONF7_WII		(_ULCAST_(1) << 31)
+
+#define MIPS_CONF7_RPS		(_ULCAST_(1) << 2)
+
+
+/*
+ * Bits in the MIPS32/64 coprocessor 1 (FPU) revision register.
+ */
+#define MIPS_FPIR_S		(_ULCAST_(1) << 16)
+#define MIPS_FPIR_D		(_ULCAST_(1) << 17)
+#define MIPS_FPIR_PS		(_ULCAST_(1) << 18)
+#define MIPS_FPIR_3D		(_ULCAST_(1) << 19)
+#define MIPS_FPIR_W		(_ULCAST_(1) << 20)
+#define MIPS_FPIR_L		(_ULCAST_(1) << 21)
+#define MIPS_FPIR_F64		(_ULCAST_(1) << 22)
+
+#ifndef __ASSEMBLY__
+
+/*
+ * Macros to access the system control coprocessor
+ */
+
+#define __read_32bit_c0_register(source, sel)				\
+({ int __res;								\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			"mfc0\t%0, " #source "\n\t"			\
+			: "=r" (__res));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips32\n\t"				\
+			"mfc0\t%0, " #source ", " #sel "\n\t"		\
+			".set\tmips0\n\t"				\
+			: "=r" (__res));				\
+	__res;								\
+})
+
+#define __read_64bit_c0_register(source, sel)				\
+({ unsigned long long __res;						\
+	if (sizeof(unsigned long) == 4)					\
+		__res = __read_64bit_c0_split(source, sel);		\
+	else if (sel == 0)						\
+		__asm__ __volatile__(					\
+			".set\tmips3\n\t"				\
+			"dmfc0\t%0, " #source "\n\t"			\
+			".set\tmips0"					\
+			: "=r" (__res));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmfc0\t%0, " #source ", " #sel "\n\t"		\
+			".set\tmips0"					\
+			: "=r" (__res));				\
+	__res;								\
+})
+
+#define __write_32bit_c0_register(register, sel, value)			\
+do {									\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			"mtc0\t%z0, " #register "\n\t"			\
+			: : "Jr" ((unsigned int)(value)));		\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips32\n\t"				\
+			"mtc0\t%z0, " #register ", " #sel "\n\t"	\
+			".set\tmips0"					\
+			: : "Jr" ((unsigned int)(value)));		\
+} while (0)
+
+#define __write_64bit_c0_register(register, sel, value)			\
+do {									\
+	if (sizeof(unsigned long) == 4)					\
+		__write_64bit_c0_split(register, sel, value);		\
+	else if (sel == 0)						\
+		__asm__ __volatile__(					\
+			".set\tmips3\n\t"				\
+			"dmtc0\t%z0, " #register "\n\t"			\
+			".set\tmips0"					\
+			: : "Jr" (value));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmtc0\t%z0, " #register ", " #sel "\n\t"	\
+			".set\tmips0"					\
+			: : "Jr" (value));				\
+} while (0)
+
+#define __read_ulong_c0_register(reg, sel)				\
+	((sizeof(unsigned long) == 4) ?					\
+	(unsigned long) __read_32bit_c0_register(reg, sel) :		\
+	(unsigned long) __read_64bit_c0_register(reg, sel))
+
+#define __write_ulong_c0_register(reg, sel, val)			\
+do {									\
+	if (sizeof(unsigned long) == 4)					\
+		__write_32bit_c0_register(reg, sel, val);		\
+	else								\
+		__write_64bit_c0_register(reg, sel, val);		\
+} while (0)
+
+/*
+ * On RM7000/RM9000 these are uses to access cop0 set 1 registers
+ */
+#define __read_32bit_c0_ctrl_register(source)				\
+({ int __res;								\
+	__asm__ __volatile__(						\
+		"cfc0\t%0, " #source "\n\t"				\
+		: "=r" (__res));					\
+	__res;								\
+})
+
+#define __write_32bit_c0_ctrl_register(register, value)			\
+do {									\
+	__asm__ __volatile__(						\
+		"ctc0\t%z0, " #register "\n\t"				\
+		: : "Jr" ((unsigned int)(value)));			\
+} while (0)
+
+/*
+ * These versions are only needed for systems with more than 38 bits of
+ * physical address space running the 32-bit kernel.  That's none atm :-)
+ */
+#define __read_64bit_c0_split(source, sel)				\
+({									\
+	unsigned long long __val;					\
+	unsigned long __flags;						\
+									\
+	local_irq_save(__flags);					\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmfc0\t%M0, " #source "\n\t"			\
+			"dsll\t%L0, %M0, 32\n\t"			\
+			"dsra\t%M0, %M0, 32\n\t"			\
+			"dsra\t%L0, %L0, 32\n\t"			\
+			".set\tmips0"					\
+			: "=r" (__val));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmfc0\t%M0, " #source ", " #sel "\n\t"		\
+			"dsll\t%L0, %M0, 32\n\t"			\
+			"dsra\t%M0, %M0, 32\n\t"			\
+			"dsra\t%L0, %L0, 32\n\t"			\
+			".set\tmips0"					\
+			: "=r" (__val));				\
+	local_irq_restore(__flags);					\
+									\
+	__val;								\
+})
+
+#define __write_64bit_c0_split(source, sel, val)			\
+do {									\
+	unsigned long __flags;						\
+									\
+	local_irq_save(__flags);					\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dsll\t%L0, %L0, 32\n\t"			\
+			"dsrl\t%L0, %L0, 32\n\t"			\
+			"dsll\t%M0, %M0, 32\n\t"			\
+			"or\t%L0, %L0, %M0\n\t"				\
+			"dmtc0\t%L0, " #source "\n\t"			\
+			".set\tmips0"					\
+			: : "r" (val));					\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dsll\t%L0, %L0, 32\n\t"			\
+			"dsrl\t%L0, %L0, 32\n\t"			\
+			"dsll\t%M0, %M0, 32\n\t"			\
+			"or\t%L0, %L0, %M0\n\t"				\
+			"dmtc0\t%L0, " #source ", " #sel "\n\t"		\
+			".set\tmips0"					\
+			: : "r" (val));					\
+	local_irq_restore(__flags);					\
+} while (0)
+
+#define read_c0_index()		__read_32bit_c0_register($0, 0)
+#define write_c0_index(val)	__write_32bit_c0_register($0, 0, val)
+
+#define read_c0_random()	__read_32bit_c0_register($1, 0)
+#define write_c0_random(val)	__write_32bit_c0_register($1, 0, val)
+
+#define read_c0_entrylo0()	__read_ulong_c0_register($2, 0)
+#define write_c0_entrylo0(val)	__write_ulong_c0_register($2, 0, val)
+
+#define read_c0_entrylo1()	__read_ulong_c0_register($3, 0)
+#define write_c0_entrylo1(val)	__write_ulong_c0_register($3, 0, val)
+
+#define read_c0_conf()		__read_32bit_c0_register($3, 0)
+#define write_c0_conf(val)	__write_32bit_c0_register($3, 0, val)
+
+#define read_c0_context()	__read_ulong_c0_register($4, 0)
+#define write_c0_context(val)	__write_ulong_c0_register($4, 0, val)
+
+#define read_c0_userlocal()	__read_ulong_c0_register($4, 2)
+#define write_c0_userlocal(val)	__write_ulong_c0_register($4, 2, val)
+
+#define read_c0_pagemask()	__read_32bit_c0_register($5, 0)
+#define write_c0_pagemask(val)	__write_32bit_c0_register($5, 0, val)
+
+#define read_c0_pagegrain()	__read_32bit_c0_register($5, 1)
+#define write_c0_pagegrain(val)	__write_32bit_c0_register($5, 1, val)
+
+#define read_c0_wired()		__read_32bit_c0_register($6, 0)
+#define write_c0_wired(val)	__write_32bit_c0_register($6, 0, val)
+
+#define read_c0_info()		__read_32bit_c0_register($7, 0)
+
+#define read_c0_cache()		__read_32bit_c0_register($7, 0)	/* TX39xx */
+#define write_c0_cache(val)	__write_32bit_c0_register($7, 0, val)
+
+#define read_c0_badvaddr()	__read_ulong_c0_register($8, 0)
+#define write_c0_badvaddr(val)	__write_ulong_c0_register($8, 0, val)
+
+#define read_c0_count()		__read_32bit_c0_register($9, 0)
+#define write_c0_count(val)	__write_32bit_c0_register($9, 0, val)
+
+#define read_c0_count2()	__read_32bit_c0_register($9, 6) /* pnx8550 */
+#define write_c0_count2(val)	__write_32bit_c0_register($9, 6, val)
+
+#define read_c0_count3()	__read_32bit_c0_register($9, 7) /* pnx8550 */
+#define write_c0_count3(val)	__write_32bit_c0_register($9, 7, val)
+
+#define read_c0_entryhi()	__read_ulong_c0_register($10, 0)
+#define write_c0_entryhi(val)	__write_ulong_c0_register($10, 0, val)
+
+#define read_c0_compare()	__read_32bit_c0_register($11, 0)
+#define write_c0_compare(val)	__write_32bit_c0_register($11, 0, val)
+
+#define read_c0_compare2()	__read_32bit_c0_register($11, 6) /* pnx8550 */
+#define write_c0_compare2(val)	__write_32bit_c0_register($11, 6, val)
+
+#define read_c0_compare3()	__read_32bit_c0_register($11, 7) /* pnx8550 */
+#define write_c0_compare3(val)	__write_32bit_c0_register($11, 7, val)
+
+#define read_c0_status()	__read_32bit_c0_register($12, 0)
+#ifdef CONFIG_MIPS_MT_SMTC
+#define write_c0_status(val)						\
+do {									\
+	__write_32bit_c0_register($12, 0, val);				\
+	__ehb();							\
+} while (0)
+#else
+/*
+ * Legacy non-SMTC code, which may be hazardous
+ * but which might not support EHB
+ */
+#define write_c0_status(val)	__write_32bit_c0_register($12, 0, val)
+#endif /* CONFIG_MIPS_MT_SMTC */
+
+#define read_c0_cause()		__read_32bit_c0_register($13, 0)
+#define write_c0_cause(val)	__write_32bit_c0_register($13, 0, val)
+
+#define read_c0_epc()		__read_ulong_c0_register($14, 0)
+#define write_c0_epc(val)	__write_ulong_c0_register($14, 0, val)
+
+#define read_c0_prid()		__read_32bit_c0_register($15, 0)
+
+#define read_c0_config()	__read_32bit_c0_register($16, 0)
+#define read_c0_config1()	__read_32bit_c0_register($16, 1)
+#define read_c0_config2()	__read_32bit_c0_register($16, 2)
+#define read_c0_config3()	__read_32bit_c0_register($16, 3)
+#define read_c0_config4()	__read_32bit_c0_register($16, 4)
+#define read_c0_config5()	__read_32bit_c0_register($16, 5)
+#define read_c0_config6()	__read_32bit_c0_register($16, 6)
+#define read_c0_config7()	__read_32bit_c0_register($16, 7)
+#define write_c0_config(val)	__write_32bit_c0_register($16, 0, val)
+#define write_c0_config1(val)	__write_32bit_c0_register($16, 1, val)
+#define write_c0_config2(val)	__write_32bit_c0_register($16, 2, val)
+#define write_c0_config3(val)	__write_32bit_c0_register($16, 3, val)
+#define write_c0_config4(val)	__write_32bit_c0_register($16, 4, val)
+#define write_c0_config5(val)	__write_32bit_c0_register($16, 5, val)
+#define write_c0_config6(val)	__write_32bit_c0_register($16, 6, val)
+#define write_c0_config7(val)	__write_32bit_c0_register($16, 7, val)
+
+/*
+ * The WatchLo register.  There may be up to 8 of them.
+ */
+#define read_c0_watchlo0()	__read_ulong_c0_register($18, 0)
+#define read_c0_watchlo1()	__read_ulong_c0_register($18, 1)
+#define read_c0_watchlo2()	__read_ulong_c0_register($18, 2)
+#define read_c0_watchlo3()	__read_ulong_c0_register($18, 3)
+#define read_c0_watchlo4()	__read_ulong_c0_register($18, 4)
+#define read_c0_watchlo5()	__read_ulong_c0_register($18, 5)
+#define read_c0_watchlo6()	__read_ulong_c0_register($18, 6)
+#define read_c0_watchlo7()	__read_ulong_c0_register($18, 7)
+#define write_c0_watchlo0(val)	__write_ulong_c0_register($18, 0, val)
+#define write_c0_watchlo1(val)	__write_ulong_c0_register($18, 1, val)
+#define write_c0_watchlo2(val)	__write_ulong_c0_register($18, 2, val)
+#define write_c0_watchlo3(val)	__write_ulong_c0_register($18, 3, val)
+#define write_c0_watchlo4(val)	__write_ulong_c0_register($18, 4, val)
+#define write_c0_watchlo5(val)	__write_ulong_c0_register($18, 5, val)
+#define write_c0_watchlo6(val)	__write_ulong_c0_register($18, 6, val)
+#define write_c0_watchlo7(val)	__write_ulong_c0_register($18, 7, val)
+
+/*
+ * The WatchHi register.  There may be up to 8 of them.
+ */
+#define read_c0_watchhi0()	__read_32bit_c0_register($19, 0)
+#define read_c0_watchhi1()	__read_32bit_c0_register($19, 1)
+#define read_c0_watchhi2()	__read_32bit_c0_register($19, 2)
+#define read_c0_watchhi3()	__read_32bit_c0_register($19, 3)
+#define read_c0_watchhi4()	__read_32bit_c0_register($19, 4)
+#define read_c0_watchhi5()	__read_32bit_c0_register($19, 5)
+#define read_c0_watchhi6()	__read_32bit_c0_register($19, 6)
+#define read_c0_watchhi7()	__read_32bit_c0_register($19, 7)
+
+#define write_c0_watchhi0(val)	__write_32bit_c0_register($19, 0, val)
+#define write_c0_watchhi1(val)	__write_32bit_c0_register($19, 1, val)
+#define write_c0_watchhi2(val)	__write_32bit_c0_register($19, 2, val)
+#define write_c0_watchhi3(val)	__write_32bit_c0_register($19, 3, val)
+#define write_c0_watchhi4(val)	__write_32bit_c0_register($19, 4, val)
+#define write_c0_watchhi5(val)	__write_32bit_c0_register($19, 5, val)
+#define write_c0_watchhi6(val)	__write_32bit_c0_register($19, 6, val)
+#define write_c0_watchhi7(val)	__write_32bit_c0_register($19, 7, val)
+
+#define read_c0_xcontext()	__read_ulong_c0_register($20, 0)
+#define write_c0_xcontext(val)	__write_ulong_c0_register($20, 0, val)
+
+#define read_c0_intcontrol()	__read_32bit_c0_ctrl_register($20)
+#define write_c0_intcontrol(val) __write_32bit_c0_ctrl_register($20, val)
+
+#define read_c0_framemask()	__read_32bit_c0_register($21, 0)
+#define write_c0_framemask(val)	__write_32bit_c0_register($21, 0, val)
+
+/* RM9000 PerfControl performance counter control register */
+#define read_c0_perfcontrol()	__read_32bit_c0_register($22, 0)
+#define write_c0_perfcontrol(val) __write_32bit_c0_register($22, 0, val)
+
+#define read_c0_diag()		__read_32bit_c0_register($22, 0)
+#define write_c0_diag(val)	__write_32bit_c0_register($22, 0, val)
+
+#define read_c0_diag1()		__read_32bit_c0_register($22, 1)
+#define write_c0_diag1(val)	__write_32bit_c0_register($22, 1, val)
+
+#define read_c0_diag2()		__read_32bit_c0_register($22, 2)
+#define write_c0_diag2(val)	__write_32bit_c0_register($22, 2, val)
+
+#define read_c0_diag3()		__read_32bit_c0_register($22, 3)
+#define write_c0_diag3(val)	__write_32bit_c0_register($22, 3, val)
+
+#define read_c0_diag4()		__read_32bit_c0_register($22, 4)
+#define write_c0_diag4(val)	__write_32bit_c0_register($22, 4, val)
+
+#define read_c0_diag5()		__read_32bit_c0_register($22, 5)
+#define write_c0_diag5(val)	__write_32bit_c0_register($22, 5, val)
+
+#define read_c0_debug()		__read_32bit_c0_register($23, 0)
+#define write_c0_debug(val)	__write_32bit_c0_register($23, 0, val)
+
+#define read_c0_depc()		__read_ulong_c0_register($24, 0)
+#define write_c0_depc(val)	__write_ulong_c0_register($24, 0, val)
+
+/*
+ * MIPS32 / MIPS64 performance counters
+ */
+#define read_c0_perfctrl0()	__read_32bit_c0_register($25, 0)
+#define write_c0_perfctrl0(val)	__write_32bit_c0_register($25, 0, val)
+#define read_c0_perfcntr0()	__read_32bit_c0_register($25, 1)
+#define write_c0_perfcntr0(val)	__write_32bit_c0_register($25, 1, val)
+#define read_c0_perfctrl1()	__read_32bit_c0_register($25, 2)
+#define write_c0_perfctrl1(val)	__write_32bit_c0_register($25, 2, val)
+#define read_c0_perfcntr1()	__read_32bit_c0_register($25, 3)
+#define write_c0_perfcntr1(val)	__write_32bit_c0_register($25, 3, val)
+#define read_c0_perfctrl2()	__read_32bit_c0_register($25, 4)
+#define write_c0_perfctrl2(val)	__write_32bit_c0_register($25, 4, val)
+#define read_c0_perfcntr2()	__read_32bit_c0_register($25, 5)
+#define write_c0_perfcntr2(val)	__write_32bit_c0_register($25, 5, val)
+#define read_c0_perfctrl3()	__read_32bit_c0_register($25, 6)
+#define write_c0_perfctrl3(val)	__write_32bit_c0_register($25, 6, val)
+#define read_c0_perfcntr3()	__read_32bit_c0_register($25, 7)
+#define write_c0_perfcntr3(val)	__write_32bit_c0_register($25, 7, val)
+
+/* RM9000 PerfCount performance counter register */
+#define read_c0_perfcount()	__read_64bit_c0_register($25, 0)
+#define write_c0_perfcount(val)	__write_64bit_c0_register($25, 0, val)
+
+#define read_c0_ecc()		__read_32bit_c0_register($26, 0)
+#define write_c0_ecc(val)	__write_32bit_c0_register($26, 0, val)
+
+#define read_c0_derraddr0()	__read_ulong_c0_register($26, 1)
+#define write_c0_derraddr0(val)	__write_ulong_c0_register($26, 1, val)
+
+#define read_c0_cacheerr()	__read_32bit_c0_register($27, 0)
+
+#define read_c0_derraddr1()	__read_ulong_c0_register($27, 1)
+#define write_c0_derraddr1(val)	__write_ulong_c0_register($27, 1, val)
+
+#define read_c0_taglo()		__read_32bit_c0_register($28, 0)
+#define write_c0_taglo(val)	__write_32bit_c0_register($28, 0, val)
+
+#define read_c0_dtaglo()	__read_32bit_c0_register($28, 2)
+#define write_c0_dtaglo(val)	__write_32bit_c0_register($28, 2, val)
+
+#define read_c0_ddatalo()	__read_32bit_c0_register($28, 3)
+#define write_c0_ddatalo(val)	__write_32bit_c0_register($28, 3, val)
+
+#define read_c0_staglo()	__read_32bit_c0_register($28, 4)
+#define write_c0_staglo(val)	__write_32bit_c0_register($28, 4, val)
+
+#define read_c0_taghi()		__read_32bit_c0_register($29, 0)
+#define write_c0_taghi(val)	__write_32bit_c0_register($29, 0, val)
+
+#define read_c0_errorepc()	__read_ulong_c0_register($30, 0)
+#define write_c0_errorepc(val)	__write_ulong_c0_register($30, 0, val)
+
+/* MIPSR2 */
+#define read_c0_hwrena()	__read_32bit_c0_register($7, 0)
+#define write_c0_hwrena(val)	__write_32bit_c0_register($7, 0, val)
+
+#define read_c0_intctl()	__read_32bit_c0_register($12, 1)
+#define write_c0_intctl(val)	__write_32bit_c0_register($12, 1, val)
+
+#define read_c0_srsctl()	__read_32bit_c0_register($12, 2)
+#define write_c0_srsctl(val)	__write_32bit_c0_register($12, 2, val)
+
+#define read_c0_srsmap()	__read_32bit_c0_register($12, 3)
+#define write_c0_srsmap(val)	__write_32bit_c0_register($12, 3, val)
+
+#define read_c0_ebase()		__read_32bit_c0_register($15, 1)
+#define write_c0_ebase(val)	__write_32bit_c0_register($15, 1, val)
+
+/* BMIPS3300 */
+#define read_c0_brcm_config_0()		__read_32bit_c0_register($22, 0)
+#define write_c0_brcm_config_0(val)	__write_32bit_c0_register($22, 0, val)
+
+#define read_c0_brcm_bus_pll()		__read_32bit_c0_register($22, 4)
+#define write_c0_brcm_bus_pll(val)	__write_32bit_c0_register($22, 4, val)
+
+#define read_c0_brcm_reset()		__read_32bit_c0_register($22, 5)
+#define write_c0_brcm_reset(val)	__write_32bit_c0_register($22, 5, val)
+
+/* BMIPS4380 */
+#define read_c0_brcm_cmt_intr()		__read_32bit_c0_register($22, 1)
+#define write_c0_brcm_cmt_intr(val)	__write_32bit_c0_register($22, 1, val)
+
+#define read_c0_brcm_cmt_ctrl()		__read_32bit_c0_register($22, 2)
+#define write_c0_brcm_cmt_ctrl(val)	__write_32bit_c0_register($22, 2, val)
+
+#define read_c0_brcm_cmt_local()	__read_32bit_c0_register($22, 3)
+#define write_c0_brcm_cmt_local(val)	__write_32bit_c0_register($22, 3, val)
+
+#define read_c0_brcm_config_1()		__read_32bit_c0_register($22, 5)
+#define write_c0_brcm_config_1(val)	__write_32bit_c0_register($22, 5, val)
+
+#define read_c0_brcm_cbr()		__read_32bit_c0_register($22, 6)
+#define write_c0_brcm_cbr(val)		__write_32bit_c0_register($22, 6, val)
+
+/* BMIPS5000 */
+#define read_c0_brcm_config()		__read_32bit_c0_register($22, 0)
+#define write_c0_brcm_config(val)	__write_32bit_c0_register($22, 0, val)
+
+#define read_c0_brcm_mode()		__read_32bit_c0_register($22, 1)
+#define write_c0_brcm_mode(val)		__write_32bit_c0_register($22, 1, val)
+
+#define read_c0_brcm_action()		__read_32bit_c0_register($22, 2)
+#define write_c0_brcm_action(val)	__write_32bit_c0_register($22, 2, val)
+
+#define read_c0_brcm_edsp()		__read_32bit_c0_register($22, 3)
+#define write_c0_brcm_edsp(val)		__write_32bit_c0_register($22, 3, val)
+
+#define read_c0_brcm_bootvec()		__read_32bit_c0_register($22, 4)
+#define write_c0_brcm_bootvec(val)	__write_32bit_c0_register($22, 4, val)
+
+#define read_c0_brcm_sleepcount()	__read_32bit_c0_register($22, 7)
+#define write_c0_brcm_sleepcount(val)	__write_32bit_c0_register($22, 7, val)
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* _ASM_MIPSREGS_H */
diff --git a/arch/mips/include/asm/posix_types.h b/arch/mips/include/asm/posix_types.h
new file mode 100644
index 0000000..c200102
--- /dev/null
+++ b/arch/mips/include/asm/posix_types.h
@@ -0,0 +1,144 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 97, 98, 99, 2000 by Ralf Baechle
+ * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_POSIX_TYPES_H
+#define _ASM_POSIX_TYPES_H
+
+#include <asm/sgidefs.h>
+
+/*
+ * This file is generally used by user-level software, so you need to
+ * be a little careful about namespace pollution etc.  Also, we cannot
+ * assume GCC is being used.
+ */
+
+typedef unsigned long	__kernel_ino_t;
+typedef unsigned int	__kernel_mode_t;
+#if (_MIPS_SZLONG == 32)
+typedef unsigned long	__kernel_nlink_t;
+#endif
+#if (_MIPS_SZLONG == 64)
+typedef unsigned int	__kernel_nlink_t;
+#endif
+typedef long		__kernel_off_t;
+typedef int		__kernel_pid_t;
+typedef int		__kernel_ipc_pid_t;
+typedef unsigned int	__kernel_uid_t;
+typedef unsigned int	__kernel_gid_t;
+#if (_MIPS_SZLONG == 32)
+typedef unsigned int	__kernel_size_t;
+typedef int		__kernel_ssize_t;
+typedef int		__kernel_ptrdiff_t;
+#endif
+#if (_MIPS_SZLONG == 64)
+typedef unsigned long	__kernel_size_t;
+typedef long		__kernel_ssize_t;
+typedef long		__kernel_ptrdiff_t;
+#endif
+typedef long		__kernel_time_t;
+typedef long		__kernel_suseconds_t;
+typedef long		__kernel_clock_t;
+typedef int		__kernel_timer_t;
+typedef int		__kernel_clockid_t;
+typedef long		__kernel_daddr_t;
+typedef char *		__kernel_caddr_t;
+
+typedef unsigned short	__kernel_uid16_t;
+typedef unsigned short	__kernel_gid16_t;
+typedef unsigned int	__kernel_uid32_t;
+typedef unsigned int	__kernel_gid32_t;
+typedef __kernel_uid_t	__kernel_old_uid_t;
+typedef __kernel_gid_t	__kernel_old_gid_t;
+typedef unsigned int	__kernel_old_dev_t;
+
+#ifdef __GNUC__
+typedef long long      __kernel_loff_t;
+#endif
+
+typedef struct {
+#if (_MIPS_SZLONG == 32)
+	long	val[2];
+#endif
+#if (_MIPS_SZLONG == 64)
+	int	val[2];
+#endif
+} __kernel_fsid_t;
+
+#if defined(__KERNEL__)
+
+#undef __FD_SET
+static __inline__ void __FD_SET(unsigned long __fd, __kernel_fd_set *__fdsetp)
+{
+	unsigned long __tmp = __fd / __NFDBITS;
+	unsigned long __rem = __fd % __NFDBITS;
+	__fdsetp->fds_bits[__tmp] |= (1UL<<__rem);
+}
+
+#undef __FD_CLR
+static __inline__ void __FD_CLR(unsigned long __fd, __kernel_fd_set *__fdsetp)
+{
+	unsigned long __tmp = __fd / __NFDBITS;
+	unsigned long __rem = __fd % __NFDBITS;
+	__fdsetp->fds_bits[__tmp] &= ~(1UL<<__rem);
+}
+
+#undef __FD_ISSET
+static __inline__ int __FD_ISSET(unsigned long __fd, const __kernel_fd_set *__p)
+{
+	unsigned long __tmp = __fd / __NFDBITS;
+	unsigned long __rem = __fd % __NFDBITS;
+	return (__p->fds_bits[__tmp] & (1UL<<__rem)) != 0;
+}
+
+/*
+ * This will unroll the loop for the normal constant case (8 ints,
+ * for a 256-bit fd_set)
+ */
+#undef __FD_ZERO
+static __inline__ void __FD_ZERO(__kernel_fd_set *__p)
+{
+	unsigned long *__tmp = __p->fds_bits;
+	int __i;
+
+	if (__builtin_constant_p(__FDSET_LONGS)) {
+		switch (__FDSET_LONGS) {
+		case 16:
+			__tmp[ 0] = 0; __tmp[ 1] = 0;
+			__tmp[ 2] = 0; __tmp[ 3] = 0;
+			__tmp[ 4] = 0; __tmp[ 5] = 0;
+			__tmp[ 6] = 0; __tmp[ 7] = 0;
+			__tmp[ 8] = 0; __tmp[ 9] = 0;
+			__tmp[10] = 0; __tmp[11] = 0;
+			__tmp[12] = 0; __tmp[13] = 0;
+			__tmp[14] = 0; __tmp[15] = 0;
+			return;
+
+		case 8:
+			__tmp[ 0] = 0; __tmp[ 1] = 0;
+			__tmp[ 2] = 0; __tmp[ 3] = 0;
+			__tmp[ 4] = 0; __tmp[ 5] = 0;
+			__tmp[ 6] = 0; __tmp[ 7] = 0;
+			return;
+
+		case 4:
+			__tmp[ 0] = 0; __tmp[ 1] = 0;
+			__tmp[ 2] = 0; __tmp[ 3] = 0;
+			return;
+		}
+	}
+	__i = __FDSET_LONGS;
+	while (__i) {
+		__i--;
+		*__tmp = 0;
+		__tmp++;
+	}
+}
+
+#endif /* defined(__KERNEL__) */
+
+#endif /* _ASM_POSIX_TYPES_H */
diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
new file mode 100644
index 0000000..7c8ecb6
--- /dev/null
+++ b/arch/mips/include/asm/regdef.h
@@ -0,0 +1,100 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1985 MIPS Computer Systems, Inc.
+ * Copyright (C) 1994, 95, 99, 2003 by Ralf Baechle
+ * Copyright (C) 1990 - 1992, 1999 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_REGDEF_H
+#define _ASM_REGDEF_H
+
+#include <asm/sgidefs.h>
+
+#if _MIPS_SIM == _MIPS_SIM_ABI32
+
+/*
+ * Symbolic register names for 32 bit ABI
+ */
+#define zero    $0      /* wired zero */
+#define AT      $1      /* assembler temp  - uppercase because of ".set at" */
+#define v0      $2      /* return value */
+#define v1      $3
+#define a0      $4      /* argument registers */
+#define a1      $5
+#define a2      $6
+#define a3      $7
+#define t0      $8      /* caller saved */
+#define t1      $9
+#define t2      $10
+#define t3      $11
+#define t4      $12
+#define t5      $13
+#define t6      $14
+#define t7      $15
+#define s0      $16     /* callee saved */
+#define s1      $17
+#define s2      $18
+#define s3      $19
+#define s4      $20
+#define s5      $21
+#define s6      $22
+#define s7      $23
+#define t8      $24     /* caller saved */
+#define t9      $25
+#define jp      $25     /* PIC jump register */
+#define k0      $26     /* kernel scratch */
+#define k1      $27
+#define gp      $28     /* global pointer */
+#define sp      $29     /* stack pointer */
+#define fp      $30     /* frame pointer */
+#define s8	$30	/* same like fp! */
+#define ra      $31     /* return address */
+
+#endif /* _MIPS_SIM == _MIPS_SIM_ABI32 */
+
+#if _MIPS_SIM == _MIPS_SIM_ABI64 || _MIPS_SIM == _MIPS_SIM_NABI32
+
+#define zero	$0	/* wired zero */
+#define AT	$at	/* assembler temp - uppercase because of ".set at" */
+#define v0	$2	/* return value - caller saved */
+#define v1	$3
+#define a0	$4	/* argument registers */
+#define a1	$5
+#define a2	$6
+#define a3	$7
+#define a4	$8	/* arg reg 64 bit; caller saved in 32 bit */
+#define ta0	$8
+#define a5	$9
+#define ta1	$9
+#define a6	$10
+#define ta2	$10
+#define a7	$11
+#define ta3	$11
+#define t0	$12	/* caller saved */
+#define t1	$13
+#define t2	$14
+#define t3	$15
+#define s0	$16	/* callee saved */
+#define s1	$17
+#define s2	$18
+#define s3	$19
+#define s4	$20
+#define s5	$21
+#define s6	$22
+#define s7	$23
+#define t8	$24	/* caller saved */
+#define t9	$25	/* callee address for PIC/temp */
+#define jp	$25	/* PIC jump register */
+#define k0	$26	/* kernel temporary */
+#define k1	$27
+#define gp	$28	/* global pointer - caller saved for PIC */
+#define sp	$29	/* stack pointer */
+#define fp	$30	/* frame pointer */
+#define s8	$30	/* callee saved */
+#define ra	$31	/* return address */
+
+#endif /* _MIPS_SIM == _MIPS_SIM_ABI64 || _MIPS_SIM == _MIPS_SIM_NABI32 */
+
+#endif /* _ASM_REGDEF_H */
diff --git a/arch/mips/include/asm/sections.h b/arch/mips/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/mips/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/mips/include/asm/sgidefs.h b/arch/mips/include/asm/sgidefs.h
new file mode 100644
index 0000000..876442f
--- /dev/null
+++ b/arch/mips/include/asm/sgidefs.h
@@ -0,0 +1,44 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 1999, 2001 Ralf Baechle
+ * Copyright (C) 1999 Silicon Graphics, Inc.
+ * Copyright (C) 2001 MIPS Technologies, Inc.
+ */
+#ifndef __ASM_SGIDEFS_H
+#define __ASM_SGIDEFS_H
+
+/*
+ * Using a Linux compiler for building Linux seems logic but not to
+ * everybody.
+ */
+#ifndef __linux__
+#error Use a Linux compiler or give up.
+#endif
+
+/*
+ * Definitions for the ISA levels
+ *
+ * With the introduction of MIPS32 / MIPS64 instruction sets definitions
+ * MIPS ISAs are no longer subsets of each other.  Therefore comparisons
+ * on these symbols except with == may result in unexpected results and
+ * are forbidden!
+ */
+#define _MIPS_ISA_MIPS1		1
+#define _MIPS_ISA_MIPS2		2
+#define _MIPS_ISA_MIPS3		3
+#define _MIPS_ISA_MIPS4		4
+#define _MIPS_ISA_MIPS5		5
+#define _MIPS_ISA_MIPS32	6
+#define _MIPS_ISA_MIPS64	7
+
+/*
+ * Subprogram calling convention
+ */
+#define _MIPS_SIM_ABI32		1
+#define _MIPS_SIM_NABI32	2
+#define _MIPS_SIM_ABI64		3
+
+#endif /* __ASM_SGIDEFS_H */
diff --git a/arch/mips/include/asm/swab.h b/arch/mips/include/asm/swab.h
new file mode 100644
index 0000000..97c2f81
--- /dev/null
+++ b/arch/mips/include/asm/swab.h
@@ -0,0 +1,59 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 99, 2003 by Ralf Baechle
+ */
+#ifndef _ASM_SWAB_H
+#define _ASM_SWAB_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+#define __SWAB_64_THRU_32__
+
+#ifdef CONFIG_CPU_MIPSR2
+
+static inline __attribute_const__ __u16 __arch_swab16(__u16 x)
+{
+	__asm__(
+	"	wsbh	%0, %1			\n"
+	: "=r" (x)
+	: "r" (x));
+
+	return x;
+}
+#define __arch_swab16 __arch_swab16
+
+static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
+{
+	__asm__(
+	"	wsbh	%0, %1			\n"
+	"	rotr	%0, %0, 16		\n"
+	: "=r" (x)
+	: "r" (x));
+
+	return x;
+}
+#define __arch_swab32 __arch_swab32
+
+/*
+ * Having already checked for CONFIG_CPU_MIPSR2, enable the
+ * optimized version for 64-bit kernel on r2 CPUs.
+ */
+#ifdef CONFIG_64BIT
+static inline __attribute_const__ __u64 __arch_swab64(__u64 x)
+{
+	__asm__(
+	"	dsbh	%0, %1\n"
+	"	dshd	%0, %0"
+	: "=r" (x)
+	: "r" (x));
+
+	return x;
+}
+#define __arch_swab64 __arch_swab64
+#endif /* CONFIG_64BIT */
+#endif /* CONFIG_CPU_MIPSR2 */
+#endif /* _ASM_SWAB_H */
diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
new file mode 100644
index 0000000..533812b
--- /dev/null
+++ b/arch/mips/include/asm/types.h
@@ -0,0 +1,49 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994, 1995, 1996, 1999 by Ralf Baechle
+ * Copyright (C) 2008 Wind River Systems,
+ *   written by Ralf Baechle
+ * Copyright (C) 1999 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_TYPES_H
+#define _ASM_TYPES_H
+
+/*
+ * We don't use int-l64.h for the kernel anymore but still use it for
+ * userspace to avoid code changes.
+ */
+#if (_MIPS_SZLONG == 64) && !defined(__KERNEL__)
+# include <asm-generic/int-l64.h>
+#else
+# include <asm-generic/int-ll64.h>
+#endif
+
+#ifndef __ASSEMBLY__
+
+typedef unsigned short umode_t;
+
+#endif /* __ASSEMBLY__ */
+
+/*
+ * These aren't exported outside the kernel to avoid name space clashes
+ */
+#ifdef __KERNEL__
+#ifndef __ASSEMBLY__
+
+/*
+ * Don't use phys_t.  You've been warned.
+ */
+#ifdef CONFIG_64BIT_PHYS_ADDR
+typedef unsigned long long phys_t;
+#else
+typedef unsigned long phys_t;
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif /* _ASM_TYPES_H */
diff --git a/include/asm-generic/int-ll64.h b/include/asm-generic/int-ll64.h
new file mode 100644
index 0000000..f394147
--- /dev/null
+++ b/include/asm-generic/int-ll64.h
@@ -0,0 +1,78 @@
+/*
+ * asm-generic/int-ll64.h
+ *
+ * Integer declarations for architectures which use "long long"
+ * for 64-bit types.
+ */
+
+#ifndef _ASM_GENERIC_INT_LL64_H
+#define _ASM_GENERIC_INT_LL64_H
+
+#include <asm/bitsperlong.h>
+
+#ifndef __ASSEMBLY__
+/*
+ * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
+ * header files exported to user space
+ */
+
+typedef __signed__ char __s8;
+typedef unsigned char __u8;
+
+typedef __signed__ short __s16;
+typedef unsigned short __u16;
+
+typedef __signed__ int __s32;
+typedef unsigned int __u32;
+
+#ifdef __GNUC__
+__extension__ typedef __signed__ long long __s64;
+__extension__ typedef unsigned long long __u64;
+#else
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#ifdef __KERNEL__
+
+#ifndef __ASSEMBLY__
+
+typedef signed char s8;
+typedef unsigned char u8;
+
+typedef signed short s16;
+typedef unsigned short u16;
+
+typedef signed int s32;
+typedef unsigned int u32;
+
+typedef signed long long s64;
+typedef unsigned long long u64;
+
+#define S8_C(x)  x
+#define U8_C(x)  x ## U
+#define S16_C(x) x
+#define U16_C(x) x ## U
+#define S32_C(x) x
+#define U32_C(x) x ## U
+#define S64_C(x) x ## LL
+#define U64_C(x) x ## ULL
+
+#else /* __ASSEMBLY__ */
+
+#define S8_C(x)  x
+#define U8_C(x)  x
+#define S16_C(x) x
+#define U16_C(x) x
+#define S32_C(x) x
+#define U32_C(x) x
+#define S64_C(x) x
+#define U64_C(x) x
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif /* _ASM_GENERIC_INT_LL64_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
