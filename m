Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2Jc-0003Zu-Mq
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:53:33 +0000
Received: by bwf12 with SMTP id 12so5981914bwf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 02:53:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 13:52:41 +0400
Message-Id: <1309859569-11119-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
References: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 04/12 v4-draft] MIPS: import header files from linux-2.6.39
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/bitsperlong.h |    8 +
 arch/mips/include/asm/byteorder.h   |   19 +
 arch/mips/include/asm/elf.h         |  384 ++++++++
 arch/mips/include/asm/io.h          |  365 ++++++++
 arch/mips/include/asm/mipsregs.h    | 1665 +++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/regdef.h      |  100 +++
 arch/mips/include/asm/sgidefs.h     |   44 +
 arch/mips/include/asm/swab.h        |   59 ++
 arch/mips/include/asm/types.h       |   49 +
 include/asm-generic/int-ll64.h      |   78 ++
 10 files changed, 2771 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/include/asm/bitsperlong.h
 create mode 100644 arch/mips/include/asm/byteorder.h
 create mode 100644 arch/mips/include/asm/elf.h
 create mode 100644 arch/mips/include/asm/io.h
 create mode 100644 arch/mips/include/asm/mipsregs.h
 create mode 100644 arch/mips/include/asm/regdef.h
 create mode 100644 arch/mips/include/asm/sgidefs.h
 create mode 100644 arch/mips/include/asm/swab.h
 create mode 100644 arch/mips/include/asm/types.h
 create mode 100644 include/asm-generic/int-ll64.h

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
index 0000000..455c0ac
--- /dev/null
+++ b/arch/mips/include/asm/elf.h
@@ -0,0 +1,384 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Much of this is taken from binutils and GNU libc ...
+ */
+#ifndef _ASM_ELF_H
+#define _ASM_ELF_H
+
+
+/* ELF header e_flags defines. */
+/* MIPS architecture level. */
+#define EF_MIPS_ARCH_1		0x00000000	/* -mips1 code.  */
+#define EF_MIPS_ARCH_2		0x10000000	/* -mips2 code.  */
+#define EF_MIPS_ARCH_3		0x20000000	/* -mips3 code.  */
+#define EF_MIPS_ARCH_4		0x30000000	/* -mips4 code.  */
+#define EF_MIPS_ARCH_5		0x40000000	/* -mips5 code.  */
+#define EF_MIPS_ARCH_32		0x50000000	/* MIPS32 code.  */
+#define EF_MIPS_ARCH_64		0x60000000	/* MIPS64 code.  */
+#define EF_MIPS_ARCH_32R2	0x70000000	/* MIPS32 R2 code.  */
+#define EF_MIPS_ARCH_64R2	0x80000000	/* MIPS64 R2 code.  */
+
+/* The ABI of a file. */
+#define EF_MIPS_ABI_O32		0x00001000	/* O32 ABI.  */
+#define EF_MIPS_ABI_O64		0x00002000	/* O32 extended for 64 bit.  */
+
+#define PT_MIPS_REGINFO		0x70000000
+#define PT_MIPS_RTPROC		0x70000001
+#define PT_MIPS_OPTIONS		0x70000002
+
+/* Flags in the e_flags field of the header */
+#define EF_MIPS_NOREORDER	0x00000001
+#define EF_MIPS_PIC		0x00000002
+#define EF_MIPS_CPIC		0x00000004
+#define EF_MIPS_ABI2		0x00000020
+#define EF_MIPS_OPTIONS_FIRST	0x00000080
+#define EF_MIPS_32BITMODE	0x00000100
+#define EF_MIPS_ABI		0x0000f000
+#define EF_MIPS_ARCH		0xf0000000
+
+#define DT_MIPS_RLD_VERSION	0x70000001
+#define DT_MIPS_TIME_STAMP	0x70000002
+#define DT_MIPS_ICHECKSUM	0x70000003
+#define DT_MIPS_IVERSION	0x70000004
+#define DT_MIPS_FLAGS		0x70000005
+	#define RHF_NONE	0x00000000
+	#define RHF_HARDWAY	0x00000001
+	#define RHF_NOTPOT	0x00000002
+	#define RHF_SGI_ONLY	0x00000010
+#define DT_MIPS_BASE_ADDRESS	0x70000006
+#define DT_MIPS_CONFLICT	0x70000008
+#define DT_MIPS_LIBLIST		0x70000009
+#define DT_MIPS_LOCAL_GOTNO	0x7000000a
+#define DT_MIPS_CONFLICTNO	0x7000000b
+#define DT_MIPS_LIBLISTNO	0x70000010
+#define DT_MIPS_SYMTABNO	0x70000011
+#define DT_MIPS_UNREFEXTNO	0x70000012
+#define DT_MIPS_GOTSYM		0x70000013
+#define DT_MIPS_HIPAGENO	0x70000014
+#define DT_MIPS_RLD_MAP		0x70000016
+
+#define R_MIPS_NONE		0
+#define R_MIPS_16		1
+#define R_MIPS_32		2
+#define R_MIPS_REL32		3
+#define R_MIPS_26		4
+#define R_MIPS_HI16		5
+#define R_MIPS_LO16		6
+#define R_MIPS_GPREL16		7
+#define R_MIPS_LITERAL		8
+#define R_MIPS_GOT16		9
+#define R_MIPS_PC16		10
+#define R_MIPS_CALL16		11
+#define R_MIPS_GPREL32		12
+/* The remaining relocs are defined on Irix, although they are not
+   in the MIPS ELF ABI.  */
+#define R_MIPS_UNUSED1		13
+#define R_MIPS_UNUSED2		14
+#define R_MIPS_UNUSED3		15
+#define R_MIPS_SHIFT5		16
+#define R_MIPS_SHIFT6		17
+#define R_MIPS_64		18
+#define R_MIPS_GOT_DISP		19
+#define R_MIPS_GOT_PAGE		20
+#define R_MIPS_GOT_OFST		21
+/*
+ * The following two relocation types are specified in the MIPS ABI
+ * conformance guide version 1.2 but not yet in the psABI.
+ */
+#define R_MIPS_GOTHI16		22
+#define R_MIPS_GOTLO16		23
+#define R_MIPS_SUB		24
+#define R_MIPS_INSERT_A		25
+#define R_MIPS_INSERT_B		26
+#define R_MIPS_DELETE		27
+#define R_MIPS_HIGHER		28
+#define R_MIPS_HIGHEST		29
+/*
+ * The following two relocation types are specified in the MIPS ABI
+ * conformance guide version 1.2 but not yet in the psABI.
+ */
+#define R_MIPS_CALLHI16		30
+#define R_MIPS_CALLLO16		31
+/*
+ * This range is reserved for vendor specific relocations.
+ */
+#define R_MIPS_LOVENDOR		100
+#define R_MIPS_HIVENDOR		127
+
+#define SHN_MIPS_ACCOMON	0xff00		/* Allocated common symbols */
+#define SHN_MIPS_TEXT		0xff01		/* Allocated test symbols.  */
+#define SHN_MIPS_DATA		0xff02		/* Allocated data symbols.  */
+#define SHN_MIPS_SCOMMON	0xff03		/* Small common symbols */
+#define SHN_MIPS_SUNDEFINED	0xff04		/* Small undefined symbols */
+
+#define SHT_MIPS_LIST		0x70000000
+#define SHT_MIPS_CONFLICT	0x70000002
+#define SHT_MIPS_GPTAB		0x70000003
+#define SHT_MIPS_UCODE		0x70000004
+#define SHT_MIPS_DEBUG		0x70000005
+#define SHT_MIPS_REGINFO	0x70000006
+#define SHT_MIPS_PACKAGE	0x70000007
+#define SHT_MIPS_PACKSYM	0x70000008
+#define SHT_MIPS_RELD		0x70000009
+#define SHT_MIPS_IFACE		0x7000000b
+#define SHT_MIPS_CONTENT	0x7000000c
+#define SHT_MIPS_OPTIONS	0x7000000d
+#define SHT_MIPS_SHDR		0x70000010
+#define SHT_MIPS_FDESC		0x70000011
+#define SHT_MIPS_EXTSYM		0x70000012
+#define SHT_MIPS_DENSE		0x70000013
+#define SHT_MIPS_PDESC		0x70000014
+#define SHT_MIPS_LOCSYM		0x70000015
+#define SHT_MIPS_AUXSYM		0x70000016
+#define SHT_MIPS_OPTSYM		0x70000017
+#define SHT_MIPS_LOCSTR		0x70000018
+#define SHT_MIPS_LINE		0x70000019
+#define SHT_MIPS_RFDESC		0x7000001a
+#define SHT_MIPS_DELTASYM	0x7000001b
+#define SHT_MIPS_DELTAINST	0x7000001c
+#define SHT_MIPS_DELTACLASS	0x7000001d
+#define SHT_MIPS_DWARF		0x7000001e
+#define SHT_MIPS_DELTADECL	0x7000001f
+#define SHT_MIPS_SYMBOL_LIB	0x70000020
+#define SHT_MIPS_EVENTS		0x70000021
+#define SHT_MIPS_TRANSLATE	0x70000022
+#define SHT_MIPS_PIXIE		0x70000023
+#define SHT_MIPS_XLATE		0x70000024
+#define SHT_MIPS_XLATE_DEBUG	0x70000025
+#define SHT_MIPS_WHIRL		0x70000026
+#define SHT_MIPS_EH_REGION	0x70000027
+#define SHT_MIPS_XLATE_OLD	0x70000028
+#define SHT_MIPS_PDR_EXCEPTION	0x70000029
+
+#define SHF_MIPS_GPREL		0x10000000
+#define SHF_MIPS_MERGE		0x20000000
+#define SHF_MIPS_ADDR		0x40000000
+#define SHF_MIPS_STRING		0x80000000
+#define SHF_MIPS_NOSTRIP	0x08000000
+#define SHF_MIPS_LOCAL		0x04000000
+#define SHF_MIPS_NAMES		0x02000000
+#define SHF_MIPS_NODUPES	0x01000000
+
+#ifndef ELF_ARCH
+/* ELF register definitions */
+#define ELF_NGREG	45
+#define ELF_NFPREG	33
+
+typedef unsigned long elf_greg_t;
+typedef elf_greg_t elf_gregset_t[ELF_NGREG];
+
+typedef double elf_fpreg_t;
+typedef elf_fpreg_t elf_fpregset_t[ELF_NFPREG];
+
+#ifdef CONFIG_32BIT
+
+/*
+ * This is used to ensure we don't load something for the wrong architecture.
+ */
+#define elf_check_arch(hdr)						\
+({									\
+	int __res = 1;							\
+	struct elfhdr *__h = (hdr);					\
+									\
+	if (__h->e_machine != EM_MIPS)					\
+		__res = 0;						\
+	if (__h->e_ident[EI_CLASS] != ELFCLASS32)			\
+		__res = 0;						\
+	if ((__h->e_flags & EF_MIPS_ABI2) != 0)				\
+		__res = 0;						\
+	if (((__h->e_flags & EF_MIPS_ABI) != 0) &&			\
+	    ((__h->e_flags & EF_MIPS_ABI) != EF_MIPS_ABI_O32))		\
+		__res = 0;						\
+									\
+	__res;								\
+})
+
+/*
+ * These are used to set parameters in the core dumps.
+ */
+#define ELF_CLASS	ELFCLASS32
+
+#endif /* CONFIG_32BIT */
+
+#ifdef CONFIG_64BIT
+/*
+ * This is used to ensure we don't load something for the wrong architecture.
+ */
+#define elf_check_arch(hdr)						\
+({									\
+	int __res = 1;							\
+	struct elfhdr *__h = (hdr);					\
+									\
+	if (__h->e_machine != EM_MIPS)					\
+		__res = 0;						\
+	if (__h->e_ident[EI_CLASS] != ELFCLASS64) 			\
+		__res = 0;						\
+									\
+	__res;								\
+})
+
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
+
+struct mips_abi;
+
+extern struct mips_abi mips_abi;
+extern struct mips_abi mips_abi_32;
+extern struct mips_abi mips_abi_n32;
+
+#ifdef CONFIG_32BIT
+
+#define SET_PERSONALITY(ex)						\
+do {									\
+	if (personality(current->personality) != PER_LINUX)		\
+		set_personality(PER_LINUX);				\
+									\
+	current->thread.abi = &mips_abi;				\
+} while (0)
+
+#endif /* CONFIG_32BIT */
+
+#ifdef CONFIG_64BIT
+
+#ifdef CONFIG_MIPS32_N32
+#define __SET_PERSONALITY32_N32()					\
+	do {								\
+		set_thread_flag(TIF_32BIT_ADDR);			\
+		current->thread.abi = &mips_abi_n32;			\
+	} while (0)
+#else
+#define __SET_PERSONALITY32_N32()					\
+	do { } while (0)
+#endif
+
+#ifdef CONFIG_MIPS32_O32
+#define __SET_PERSONALITY32_O32()					\
+	do {								\
+		set_thread_flag(TIF_32BIT_REGS);			\
+		set_thread_flag(TIF_32BIT_ADDR);			\
+		current->thread.abi = &mips_abi_32;			\
+	} while (0)
+#else
+#define __SET_PERSONALITY32_O32()					\
+	do { } while (0)
+#endif
+
+#ifdef CONFIG_MIPS32_COMPAT
+#define __SET_PERSONALITY32(ex)						\
+do {									\
+	if ((((ex).e_flags & EF_MIPS_ABI2) != 0) &&			\
+	     ((ex).e_flags & EF_MIPS_ABI) == 0)				\
+		__SET_PERSONALITY32_N32();				\
+	else								\
+		__SET_PERSONALITY32_O32();				\
+} while (0)
+#else
+#define __SET_PERSONALITY32(ex)	do { } while (0)
+#endif
+
+#define SET_PERSONALITY(ex)						\
+do {									\
+	unsigned int p;							\
+									\
+	clear_thread_flag(TIF_32BIT_REGS);				\
+	clear_thread_flag(TIF_32BIT_ADDR);				\
+									\
+	if ((ex).e_ident[EI_CLASS] == ELFCLASS32)			\
+		__SET_PERSONALITY32(ex);				\
+	else								\
+		current->thread.abi = &mips_abi;			\
+									\
+	p = personality(current->personality);				\
+	if (p != PER_LINUX32 && p != PER_LINUX)				\
+		set_personality(PER_LINUX);				\
+} while (0)
+
+#endif /* CONFIG_64BIT */
+
+struct pt_regs;
+struct task_struct;
+
+extern void elf_dump_regs(elf_greg_t *, struct pt_regs *regs);
+extern int dump_task_regs(struct task_struct *, elf_gregset_t *);
+extern int dump_task_fpu(struct task_struct *, elf_fpregset_t *);
+
+#ifndef ELF_CORE_COPY_REGS
+#define ELF_CORE_COPY_REGS(elf_regs, regs)			\
+	elf_dump_regs((elf_greg_t *)&(elf_regs), regs);
+#endif
+#ifndef ELF_CORE_COPY_TASK_REGS
+#define ELF_CORE_COPY_TASK_REGS(tsk, elf_regs) dump_task_regs(tsk, elf_regs)
+#endif
+#define ELF_CORE_COPY_FPREGS(tsk, elf_fpregs)			\
+	dump_task_fpu(tsk, elf_fpregs)
+
+#define ELF_EXEC_PAGESIZE	PAGE_SIZE
+
+/* This yields a mask that user programs can use to figure out what
+   instruction set this cpu supports.  This could be done in userspace,
+   but it's not easy, and we've already done it here.  */
+
+#define ELF_HWCAP       (0)
+
+/*
+ * This yields a string that ld.so will use to load implementation
+ * specific libraries for optimization.  This is more specific in
+ * intent than poking at uname or /proc/cpuinfo.
+ */
+
+#define ELF_PLATFORM  __elf_platform
+extern const char *__elf_platform;
+
+/*
+ * See comments in asm-alpha/elf.h, this is the same thing
+ * on the MIPS.
+ */
+#define ELF_PLAT_INIT(_r, load_addr)	do { \
+	_r->regs[1] = _r->regs[2] = _r->regs[3] = _r->regs[4] = 0;	\
+	_r->regs[5] = _r->regs[6] = _r->regs[7] = _r->regs[8] = 0;	\
+	_r->regs[9] = _r->regs[10] = _r->regs[11] = _r->regs[12] = 0;	\
+	_r->regs[13] = _r->regs[14] = _r->regs[15] = _r->regs[16] = 0;	\
+	_r->regs[17] = _r->regs[18] = _r->regs[19] = _r->regs[20] = 0;	\
+	_r->regs[21] = _r->regs[22] = _r->regs[23] = _r->regs[24] = 0;	\
+	_r->regs[25] = _r->regs[26] = _r->regs[27] = _r->regs[28] = 0;	\
+	_r->regs[30] = _r->regs[31] = 0;				\
+} while (0)
+
+/* This is the location that an ET_DYN program is loaded if exec'ed.  Typical
+   use of this is to invoke "./ld.so someprog" to test out a new version of
+   the loader.  We need to make sure that it is out of the way of the program
+   that it will "exec", and that there is sufficient room for the brk.  */
+
+#ifndef ELF_ET_DYN_BASE
+#define ELF_ET_DYN_BASE         (TASK_SIZE / 3 * 2)
+#endif
+
+#define ARCH_HAS_SETUP_ADDITIONAL_PAGES 1
+struct linux_binprm;
+extern int arch_setup_additional_pages(struct linux_binprm *bprm,
+				       int uses_interp);
+
+struct mm_struct;
+extern unsigned long arch_randomize_brk(struct mm_struct *mm);
+#define arch_randomize_brk arch_randomize_brk
+
+#endif /* _ASM_ELF_H */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
new file mode 100644
index 0000000..e0ffa3d
--- /dev/null
+++ b/arch/mips/include/asm/io.h
@@ -0,0 +1,365 @@
+/* Generic I/O port emulation, based on MN10300 code
+ *
+ * Copyright (C) 2007 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public Licence
+ * as published by the Free Software Foundation; either version
+ * 2 of the Licence, or (at your option) any later version.
+ */
+#ifndef __ASM_GENERIC_IO_H
+#define __ASM_GENERIC_IO_H
+
+#include <asm/page.h> /* I/O is all done through memory accesses */
+#include <asm/cacheflush.h>
+#include <linux/types.h>
+
+#ifdef CONFIG_GENERIC_IOMAP
+#include <asm-generic/iomap.h>
+#endif
+
+#ifndef mmiowb
+#define mmiowb() do {} while (0)
+#endif
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
+#define readb __raw_readb
+#define readw(addr) __le16_to_cpu(__raw_readw(addr))
+#define readl(addr) __le32_to_cpu(__raw_readl(addr))
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
+#define writeb __raw_writeb
+#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
+#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
+
+#ifdef CONFIG_64BIT
+static inline u64 __raw_readq(const volatile void __iomem *addr)
+{
+	return *(const volatile u64 __force *) addr;
+}
+#define readq(addr) __le64_to_cpu(__raw_readq(addr))
+
+static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
+{
+	*(volatile u64 __force *) addr = b;
+}
+#define writeq(b,addr) __raw_writeq(__cpu_to_le64(b),addr)
+#endif
+
+#ifndef PCI_IOBASE
+#define PCI_IOBASE ((void __iomem *) 0)
+#endif
+
+/*****************************************************************************/
+/*
+ * traditional input/output functions
+ */
+
+static inline u8 inb(unsigned long addr)
+{
+	return readb(addr + PCI_IOBASE);
+}
+
+static inline u16 inw(unsigned long addr)
+{
+	return readw(addr + PCI_IOBASE);
+}
+
+static inline u32 inl(unsigned long addr)
+{
+	return readl(addr + PCI_IOBASE);
+}
+
+static inline void outb(u8 b, unsigned long addr)
+{
+	writeb(b, addr + PCI_IOBASE);
+}
+
+static inline void outw(u16 b, unsigned long addr)
+{
+	writew(b, addr + PCI_IOBASE);
+}
+
+static inline void outl(u32 b, unsigned long addr)
+{
+	writel(b, addr + PCI_IOBASE);
+}
+
+#define inb_p(addr)	inb(addr)
+#define inw_p(addr)	inw(addr)
+#define inl_p(addr)	inl(addr)
+#define outb_p(x, addr)	outb((x), (addr))
+#define outw_p(x, addr)	outw((x), (addr))
+#define outl_p(x, addr)	outl((x), (addr))
+
+#ifndef insb
+static inline void insb(unsigned long addr, void *buffer, int count)
+{
+	if (count) {
+		u8 *buf = buffer;
+		do {
+			u8 x = inb(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef insw
+static inline void insw(unsigned long addr, void *buffer, int count)
+{
+	if (count) {
+		u16 *buf = buffer;
+		do {
+			u16 x = inw(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef insl
+static inline void insl(unsigned long addr, void *buffer, int count)
+{
+	if (count) {
+		u32 *buf = buffer;
+		do {
+			u32 x = inl(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef outsb
+static inline void outsb(unsigned long addr, const void *buffer, int count)
+{
+	if (count) {
+		const u8 *buf = buffer;
+		do {
+			outb(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef outsw
+static inline void outsw(unsigned long addr, const void *buffer, int count)
+{
+	if (count) {
+		const u16 *buf = buffer;
+		do {
+			outw(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+
+#ifndef outsl
+static inline void outsl(unsigned long addr, const void *buffer, int count)
+{
+	if (count) {
+		const u32 *buf = buffer;
+		do {
+			outl(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+
+static inline void readsl(const void __iomem *addr, void *buf, int len)
+{
+	insl(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void readsw(const void __iomem *addr, void *buf, int len)
+{
+	insw(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void readsb(const void __iomem *addr, void *buf, int len)
+{
+	insb(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void writesl(const void __iomem *addr, const void *buf, int len)
+{
+	outsl(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void writesw(const void __iomem *addr, const void *buf, int len)
+{
+	outsw(addr - PCI_IOBASE, buf, len);
+}
+
+static inline void writesb(const void __iomem *addr, const void *buf, int len)
+{
+	outsb(addr - PCI_IOBASE, buf, len);
+}
+
+#ifndef CONFIG_GENERIC_IOMAP
+#define ioread8(addr)		readb(addr)
+#define ioread16(addr)		readw(addr)
+#define ioread16be(addr)	be16_to_cpu(ioread16(addr))
+#define ioread32(addr)		readl(addr)
+#define ioread32be(addr)	be32_to_cpu(ioread32(addr))
+
+#define iowrite8(v, addr)	writeb((v), (addr))
+#define iowrite16(v, addr)	writew((v), (addr))
+#define iowrite16be(v, addr)	iowrite16(be16_to_cpu(v), (addr))
+#define iowrite32(v, addr)	writel((v), (addr))
+#define iowrite32be(v, addr)	iowrite32(be32_to_cpu(v), (addr))
+
+#define ioread8_rep(p, dst, count) \
+	insb((unsigned long) (p), (dst), (count))
+#define ioread16_rep(p, dst, count) \
+	insw((unsigned long) (p), (dst), (count))
+#define ioread32_rep(p, dst, count) \
+	insl((unsigned long) (p), (dst), (count))
+
+#define iowrite8_rep(p, src, count) \
+	outsb((unsigned long) (p), (src), (count))
+#define iowrite16_rep(p, src, count) \
+	outsw((unsigned long) (p), (src), (count))
+#define iowrite32_rep(p, src, count) \
+	outsl((unsigned long) (p), (src), (count))
+#endif /* CONFIG_GENERIC_IOMAP */
+
+#ifndef IO_SPACE_LIMIT
+#define IO_SPACE_LIMIT 0xffff
+#endif
+
+#ifdef __KERNEL__
+
+#include <linux/vmalloc.h>
+#define __io_virt(x) ((void __force *) (x))
+
+#ifndef CONFIG_GENERIC_IOMAP
+/* Create a virtual mapping cookie for a PCI BAR (memory or IO) */
+struct pci_dev;
+extern void __iomem *pci_iomap(struct pci_dev *dev, int bar, unsigned long max);
+static inline void pci_iounmap(struct pci_dev *dev, void __iomem *p)
+{
+}
+#endif /* CONFIG_GENERIC_IOMAP */
+
+/*
+ * Change virtual addresses to physical addresses and vv.
+ * These are pretty trivial
+ */
+static inline unsigned long virt_to_phys(volatile void *address)
+{
+	return __pa((unsigned long)address);
+}
+
+static inline void *phys_to_virt(unsigned long address)
+{
+	return __va(address);
+}
+
+/*
+ * Change "struct page" to physical address.
+ */
+static inline void __iomem *ioremap(phys_addr_t offset, unsigned long size)
+{
+	return (void __iomem*) (unsigned long)offset;
+}
+
+#define __ioremap(offset, size, flags)	ioremap(offset, size)
+
+#ifndef ioremap_nocache
+#define ioremap_nocache ioremap
+#endif
+
+#ifndef ioremap_wc
+#define ioremap_wc ioremap_nocache
+#endif
+
+static inline void iounmap(void *addr)
+{
+}
+
+#ifndef CONFIG_GENERIC_IOMAP
+static inline void __iomem *ioport_map(unsigned long port, unsigned int nr)
+{
+	return (void __iomem *) port;
+}
+
+static inline void ioport_unmap(void __iomem *p)
+{
+}
+#else /* CONFIG_GENERIC_IOMAP */
+extern void __iomem *ioport_map(unsigned long port, unsigned int nr);
+extern void ioport_unmap(void __iomem *p);
+#endif /* CONFIG_GENERIC_IOMAP */
+
+#define xlate_dev_kmem_ptr(p)	p
+#define xlate_dev_mem_ptr(p)	((void *) (p))
+
+#ifndef virt_to_bus
+static inline unsigned long virt_to_bus(volatile void *address)
+{
+	return ((unsigned long) address);
+}
+
+static inline void *bus_to_virt(unsigned long address)
+{
+	return (void *) address;
+}
+#endif
+
+#define memset_io(a, b, c)	memset(__io_virt(a), (b), (c))
+#define memcpy_fromio(a, b, c)	memcpy((a), __io_virt(b), (c))
+#define memcpy_toio(a, b, c)	memcpy(__io_virt(a), (b), (c))
+
+#endif /* __KERNEL__ */
+
+#endif /* __ASM_GENERIC_IO_H */
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
new file mode 100644
index 0000000..6a6f8a8
--- /dev/null
+++ b/arch/mips/include/asm/mipsregs.h
@@ -0,0 +1,1665 @@
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
+#include <linux/linkage.h>
+#include <asm/hazards.h>
+#include <asm/war.h>
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
+ * Default page size for a given kernel configuration
+ */
+#ifdef CONFIG_PAGE_SIZE_4KB
+#define PM_DEFAULT_MASK	PM_4K
+#elif defined(CONFIG_PAGE_SIZE_8KB)
+#define PM_DEFAULT_MASK	PM_8K
+#elif defined(CONFIG_PAGE_SIZE_16KB)
+#define PM_DEFAULT_MASK	PM_16K
+#elif defined(CONFIG_PAGE_SIZE_32KB)
+#define PM_DEFAULT_MASK	PM_32K
+#elif defined(CONFIG_PAGE_SIZE_64KB)
+#define PM_DEFAULT_MASK	PM_64K
+#else
+#error Bad page size configuration!
+#endif
+
+/*
+ * Default huge tlb size for a given kernel configuration
+ */
+#ifdef CONFIG_PAGE_SIZE_4KB
+#define PM_HUGE_MASK	PM_1M
+#elif defined(CONFIG_PAGE_SIZE_8KB)
+#define PM_HUGE_MASK	PM_4M
+#elif defined(CONFIG_PAGE_SIZE_16KB)
+#define PM_HUGE_MASK	PM_16M
+#elif defined(CONFIG_PAGE_SIZE_32KB)
+#define PM_HUGE_MASK	PM_64M
+#elif defined(CONFIG_PAGE_SIZE_64KB)
+#define PM_HUGE_MASK	PM_256M
+#elif defined(CONFIG_HUGETLB_PAGE)
+#error Bad page size configuration for hugetlbfs!
+#endif
+
+/*
+ * Values used for computation of new tlb entries
+ */
+#define PL_4K		12
+#define PL_16K		14
+#define PL_64K		16
+#define PL_256K		18
+#define PL_1M		20
+#define PL_4M		22
+#define PL_16M		24
+#define PL_64M		26
+#define PL_256M		28
+
+/*
+ * PageGrain bits
+ */
+#define PG_RIE		(_ULCAST_(1) <<  31)
+#define PG_XIE		(_ULCAST_(1) <<  30)
+#define PG_ELPA		(_ULCAST_(1) <<  29)
+#define PG_ESP		(_ULCAST_(1) <<  28)
+
+/*
+ * R4x00 interrupt enable / cause bits
+ */
+#define IE_SW0          (_ULCAST_(1) <<  8)
+#define IE_SW1          (_ULCAST_(1) <<  9)
+#define IE_IRQ0         (_ULCAST_(1) << 10)
+#define IE_IRQ1         (_ULCAST_(1) << 11)
+#define IE_IRQ2         (_ULCAST_(1) << 12)
+#define IE_IRQ3         (_ULCAST_(1) << 13)
+#define IE_IRQ4         (_ULCAST_(1) << 14)
+#define IE_IRQ5         (_ULCAST_(1) << 15)
+
+/*
+ * R4x00 interrupt cause bits
+ */
+#define C_SW0           (_ULCAST_(1) <<  8)
+#define C_SW1           (_ULCAST_(1) <<  9)
+#define C_IRQ0          (_ULCAST_(1) << 10)
+#define C_IRQ1          (_ULCAST_(1) << 11)
+#define C_IRQ2          (_ULCAST_(1) << 12)
+#define C_IRQ3          (_ULCAST_(1) << 13)
+#define C_IRQ4          (_ULCAST_(1) << 14)
+#define C_IRQ5          (_ULCAST_(1) << 15)
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
+ * Functions to access the R10000 performance counters.  These are basically
+ * mfc0 and mtc0 instructions from and to coprocessor register with a 5-bit
+ * performance counter number encoded into bits 1 ... 5 of the instruction.
+ * Only performance counters 0 to 1 actually exist, so for a non-R10000 aware
+ * disassembler these will look like an access to sel 0 or 1.
+ */
+#define read_r10k_perf_cntr(counter)				\
+({								\
+	unsigned int __res;					\
+	__asm__ __volatile__(					\
+	"mfpc\t%0, %1"						\
+        : "=r" (__res)						\
+	: "i" (counter));					\
+								\
+        __res;							\
+})
+
+#define write_r10k_perf_cntr(counter,val)                       \
+do {								\
+	__asm__ __volatile__(					\
+	"mtpc\t%0, %1"						\
+	:							\
+	: "r" (val), "i" (counter));				\
+} while (0)
+
+#define read_r10k_perf_event(counter)				\
+({								\
+	unsigned int __res;					\
+	__asm__ __volatile__(					\
+	"mfps\t%0, %1"						\
+        : "=r" (__res)						\
+	: "i" (counter));					\
+								\
+        __res;							\
+})
+
+#define write_r10k_perf_cntl(counter,val)                       \
+do {								\
+	__asm__ __volatile__(					\
+	"mtps\t%0, %1"						\
+	:							\
+	: "r" (val), "i" (counter));				\
+} while (0)
+
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
+
+/* Cavium OCTEON (cnMIPS) */
+#define read_c0_cvmcount()	__read_ulong_c0_register($9, 6)
+#define write_c0_cvmcount(val)	__write_ulong_c0_register($9, 6, val)
+
+#define read_c0_cvmctl()	__read_64bit_c0_register($9, 7)
+#define write_c0_cvmctl(val)	__write_64bit_c0_register($9, 7, val)
+
+#define read_c0_cvmmemctl()	__read_64bit_c0_register($11, 7)
+#define write_c0_cvmmemctl(val)	__write_64bit_c0_register($11, 7, val)
+/*
+ * The cacheerr registers are not standardized.  On OCTEON, they are
+ * 64 bits wide.
+ */
+#define read_octeon_c0_icacheerr()	__read_64bit_c0_register($27, 0)
+#define write_octeon_c0_icacheerr(val)	__write_64bit_c0_register($27, 0, val)
+
+#define read_octeon_c0_dcacheerr()	__read_64bit_c0_register($27, 1)
+#define write_octeon_c0_dcacheerr(val)	__write_64bit_c0_register($27, 1, val)
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
+/*
+ * Macros to access the floating point coprocessor control registers
+ */
+#define read_32bit_cp1_register(source)                         \
+({ int __res;                                                   \
+	__asm__ __volatile__(                                   \
+	".set\tpush\n\t"					\
+	".set\treorder\n\t"					\
+	/* gas fails to assemble cfc1 for some archs (octeon).*/ \
+	".set\tmips1\n\t"					\
+        "cfc1\t%0,"STR(source)"\n\t"                            \
+	".set\tpop"						\
+        : "=r" (__res));                                        \
+        __res;})
+
+#define rddsp(mask)							\
+({									\
+	unsigned int __res;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push				\n"		\
+	"	.set	noat				\n"		\
+	"	# rddsp $1, %x1				\n"		\
+	"	.word	0x7c000cb8 | (%x1 << 16)	\n"		\
+	"	move	%0, $1				\n"		\
+	"	.set	pop				\n"		\
+	: "=r" (__res)							\
+	: "i" (mask));							\
+	__res;								\
+})
+
+#define wrdsp(val, mask)						\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# wrdsp $1, %x1					\n"	\
+	"	.word	0x7c2004f8 | (%x1 << 11)		\n"	\
+	"	.set	pop					\n"	\
+        :								\
+	: "r" (val), "i" (mask));					\
+} while (0)
+
+#if 0	/* Need DSP ASE capable assembler ... */
+#define mflo0() ({ long mflo0; __asm__("mflo %0, $ac0" : "=r" (mflo0)); mflo0;})
+#define mflo1() ({ long mflo1; __asm__("mflo %0, $ac1" : "=r" (mflo1)); mflo1;})
+#define mflo2() ({ long mflo2; __asm__("mflo %0, $ac2" : "=r" (mflo2)); mflo2;})
+#define mflo3() ({ long mflo3; __asm__("mflo %0, $ac3" : "=r" (mflo3)); mflo3;})
+
+#define mfhi0() ({ long mfhi0; __asm__("mfhi %0, $ac0" : "=r" (mfhi0)); mfhi0;})
+#define mfhi1() ({ long mfhi1; __asm__("mfhi %0, $ac1" : "=r" (mfhi1)); mfhi1;})
+#define mfhi2() ({ long mfhi2; __asm__("mfhi %0, $ac2" : "=r" (mfhi2)); mfhi2;})
+#define mfhi3() ({ long mfhi3; __asm__("mfhi %0, $ac3" : "=r" (mfhi3)); mfhi3;})
+
+#define mtlo0(x) __asm__("mtlo %0, $ac0" ::"r" (x))
+#define mtlo1(x) __asm__("mtlo %0, $ac1" ::"r" (x))
+#define mtlo2(x) __asm__("mtlo %0, $ac2" ::"r" (x))
+#define mtlo3(x) __asm__("mtlo %0, $ac3" ::"r" (x))
+
+#define mthi0(x) __asm__("mthi %0, $ac0" ::"r" (x))
+#define mthi1(x) __asm__("mthi %0, $ac1" ::"r" (x))
+#define mthi2(x) __asm__("mthi %0, $ac2" ::"r" (x))
+#define mthi3(x) __asm__("mthi %0, $ac3" ::"r" (x))
+
+#else
+
+#define mfhi0()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mfhi	%0, $ac0		\n"			\
+	"	.word	0x00000810		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mfhi1()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mfhi	%0, $ac1		\n"			\
+	"	.word	0x00200810		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mfhi2()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mfhi	%0, $ac2		\n"			\
+	"	.word	0x00400810		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mfhi3()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mfhi	%0, $ac3		\n"			\
+	"	.word	0x00600810		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mflo0()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mflo	%0, $ac0		\n"			\
+	"	.word	0x00000812		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mflo1()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mflo	%0, $ac1		\n"			\
+	"	.word	0x00200812		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mflo2()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mflo	%0, $ac2		\n"			\
+	"	.word	0x00400812		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mflo3()								\
+({									\
+	unsigned long __treg;						\
+									\
+	__asm__ __volatile__(						\
+	"	.set	push			\n"			\
+	"	.set	noat			\n"			\
+	"	# mflo	%0, $ac3		\n"			\
+	"	.word	0x00600812		\n"			\
+	"	move	%0, $1			\n"			\
+	"	.set	pop			\n"			\
+	: "=r" (__treg));						\
+	__treg;								\
+})
+
+#define mthi0(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mthi	$1, $ac0				\n"	\
+	"	.word	0x00200011				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mthi1(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mthi	$1, $ac1				\n"	\
+	"	.word	0x00200811				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mthi2(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mthi	$1, $ac2				\n"	\
+	"	.word	0x00201011				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mthi3(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mthi	$1, $ac3				\n"	\
+	"	.word	0x00201811				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mtlo0(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mtlo	$1, $ac0				\n"	\
+	"	.word	0x00200013				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mtlo1(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mtlo	$1, $ac1				\n"	\
+	"	.word	0x00200813				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mtlo2(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mtlo	$1, $ac2				\n"	\
+	"	.word	0x00201013				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#define mtlo3(x)							\
+do {									\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noat					\n"	\
+	"	move	$1, %0					\n"	\
+	"	# mtlo	$1, $ac3				\n"	\
+	"	.word	0x00201813				\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "r" (x));							\
+} while (0)
+
+#endif
+
+/*
+ * TLB operations.
+ *
+ * It is responsibility of the caller to take care of any TLB hazards.
+ */
+static inline void tlb_probe(void)
+{
+	__asm__ __volatile__(
+		".set noreorder\n\t"
+		"tlbp\n\t"
+		".set reorder");
+}
+
+static inline void tlb_read(void)
+{
+#if MIPS34K_MISSED_ITLB_WAR
+	int res = 0;
+
+	__asm__ __volatile__(
+	"	.set	push					\n"
+	"	.set	noreorder				\n"
+	"	.set	noat					\n"
+	"	.set	mips32r2				\n"
+	"	.word	0x41610001		# dvpe $1	\n"
+	"	move	%0, $1					\n"
+	"	ehb						\n"
+	"	.set	pop					\n"
+	: "=r" (res));
+
+	instruction_hazard();
+#endif
+
+	__asm__ __volatile__(
+		".set noreorder\n\t"
+		"tlbr\n\t"
+		".set reorder");
+
+#if MIPS34K_MISSED_ITLB_WAR
+	if ((res & _ULCAST_(1)))
+		__asm__ __volatile__(
+		"	.set	push				\n"
+		"	.set	noreorder			\n"
+		"	.set	noat				\n"
+		"	.set	mips32r2			\n"
+		"	.word	0x41600021	# evpe		\n"
+		"	ehb					\n"
+		"	.set	pop				\n");
+#endif
+}
+
+static inline void tlb_write_indexed(void)
+{
+	__asm__ __volatile__(
+		".set noreorder\n\t"
+		"tlbwi\n\t"
+		".set reorder");
+}
+
+static inline void tlb_write_random(void)
+{
+	__asm__ __volatile__(
+		".set noreorder\n\t"
+		"tlbwr\n\t"
+		".set reorder");
+}
+
+/*
+ * Manipulate bits in a c0 register.
+ */
+#ifndef CONFIG_MIPS_MT_SMTC
+/*
+ * SMTC Linux requires shutting-down microthread scheduling
+ * during CP0 register read-modify-write sequences.
+ */
+#define __BUILD_SET_C0(name)					\
+static inline unsigned int					\
+set_c0_##name(unsigned int set)					\
+{								\
+	unsigned int res, new;					\
+								\
+	res = read_c0_##name();					\
+	new = res | set;					\
+	write_c0_##name(new);					\
+								\
+	return res;						\
+}								\
+								\
+static inline unsigned int					\
+clear_c0_##name(unsigned int clear)				\
+{								\
+	unsigned int res, new;					\
+								\
+	res = read_c0_##name();					\
+	new = res & ~clear;					\
+	write_c0_##name(new);					\
+								\
+	return res;						\
+}								\
+								\
+static inline unsigned int					\
+change_c0_##name(unsigned int change, unsigned int val)		\
+{								\
+	unsigned int res, new;					\
+								\
+	res = read_c0_##name();					\
+	new = res & ~change;					\
+	new |= (val & change);					\
+	write_c0_##name(new);					\
+								\
+	return res;						\
+}
+
+#else /* SMTC versions that manage MT scheduling */
+
+#include <linux/irqflags.h>
+
+/*
+ * This is a duplicate of dmt() in mipsmtregs.h to avoid problems with
+ * header file recursion.
+ */
+static inline unsigned int __dmt(void)
+{
+	int res;
+
+	__asm__ __volatile__(
+	"	.set	push						\n"
+	"	.set	mips32r2					\n"
+	"	.set	noat						\n"
+	"	.word	0x41610BC1			# dmt $1	\n"
+	"	ehb							\n"
+	"	move	%0, $1						\n"
+	"	.set	pop						\n"
+	: "=r" (res));
+
+	instruction_hazard();
+
+	return res;
+}
+
+#define __VPECONTROL_TE_SHIFT	15
+#define __VPECONTROL_TE		(1UL << __VPECONTROL_TE_SHIFT)
+
+#define __EMT_ENABLE		__VPECONTROL_TE
+
+static inline void __emt(unsigned int previous)
+{
+	if ((previous & __EMT_ENABLE))
+		__asm__ __volatile__(
+		"	.set	mips32r2				\n"
+		"	.word	0x41600be1		# emt		\n"
+		"	ehb						\n"
+		"	.set	mips0					\n");
+}
+
+static inline void __ehb(void)
+{
+	__asm__ __volatile__(
+	"	.set	mips32r2					\n"
+	"	ehb							\n"		"	.set	mips0						\n");
+}
+
+/*
+ * Note that local_irq_save/restore affect TC-specific IXMT state,
+ * not Status.IE as in non-SMTC kernel.
+ */
+
+#define __BUILD_SET_C0(name)					\
+static inline unsigned int					\
+set_c0_##name(unsigned int set)					\
+{								\
+	unsigned int res;					\
+	unsigned int new;					\
+	unsigned int omt;					\
+	unsigned long flags;					\
+								\
+	local_irq_save(flags);					\
+	omt = __dmt();						\
+	res = read_c0_##name();					\
+	new = res | set;					\
+	write_c0_##name(new);					\
+	__emt(omt);						\
+	local_irq_restore(flags);				\
+								\
+	return res;						\
+}								\
+								\
+static inline unsigned int					\
+clear_c0_##name(unsigned int clear)				\
+{								\
+	unsigned int res;					\
+	unsigned int new;					\
+	unsigned int omt;					\
+	unsigned long flags;					\
+								\
+	local_irq_save(flags);					\
+	omt = __dmt();						\
+	res = read_c0_##name();					\
+	new = res & ~clear;					\
+	write_c0_##name(new);					\
+	__emt(omt);						\
+	local_irq_restore(flags);				\
+								\
+	return res;						\
+}								\
+								\
+static inline unsigned int					\
+change_c0_##name(unsigned int change, unsigned int newbits)	\
+{								\
+	unsigned int res;					\
+	unsigned int new;					\
+	unsigned int omt;					\
+	unsigned long flags;					\
+								\
+	local_irq_save(flags);					\
+								\
+	omt = __dmt();						\
+	res = read_c0_##name();					\
+	new = res & ~change;					\
+	new |= (newbits & change);				\
+	write_c0_##name(new);					\
+	__emt(omt);						\
+	local_irq_restore(flags);				\
+								\
+	return res;						\
+}
+#endif
+
+__BUILD_SET_C0(status)
+__BUILD_SET_C0(cause)
+__BUILD_SET_C0(config)
+__BUILD_SET_C0(intcontrol)
+__BUILD_SET_C0(intctl)
+__BUILD_SET_C0(srsmap)
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* _ASM_MIPSREGS_H */
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
