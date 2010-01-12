Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Go-6N
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-0006W2-28
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-00070G-Up
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Message-Id: <20100112102054.844290281@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:41 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_boot_code.diff
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
Subject: [PATCHv2 07/14] Add functions to be able to boot with BIOSs help
To: barebox@lists.infradead.org

These functions are special: They are running in the 16 bit real mode world
to bring up barebox on an x86 box.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/boot/Kconfig         |   20 ++++
 arch/x86/boot/Makefile        |   13 ++
 arch/x86/boot/a20.c           |  170 ++++++++++++++++++++++++++++++++++++
 arch/x86/boot/bioscall.S      |   99 +++++++++++++++++++++
 arch/x86/boot/boot.h          |  193 ++++++++++++++++++++++++++++++++++++++++++
 arch/x86/boot/boot_hdisk.S    |  176 ++++++++++++++++++++++++++++++++++++++
 arch/x86/boot/boot_main.S     |   58 ++++++++++++
 arch/x86/boot/main_entry.c    |   44 +++++++++
 arch/x86/boot/pmjump.S        |   89 +++++++++++++++++++
 arch/x86/boot/prepare_uboot.c |   86 ++++++++++++++++++
 arch/x86/boot/regs.c          |   34 +++++++
 arch/x86/boot/tty.c           |   45 +++++++++
 12 files changed, 1027 insertions(+)

Index: barebox-2009.12.0/arch/x86/boot/Kconfig
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/Kconfig
@@ -0,0 +1,20 @@
+if X86_BIOS_BRINGUP
+
+menu "BIOS boot source              "
+
+config X86_HDBOOT
+	bool "HD boot"
+	help
+	  Add code to boot from harddisk
+
+config X86_VESA
+	bool
+	default y if X86_GENERIC_HAS_VIDEO
+
+config X86_VGA
+	bool
+	default y if X86_GENERIC_HAS_VIDEO
+
+endmenu
+
+endif
Index: barebox-2009.12.0/arch/x86/boot/Makefile
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/Makefile
@@ -0,0 +1,13 @@
+
+CPPFLAGS += -D__I386__ -fno-strict-aliasing -m32 -g -Os -march=i386 \
+	-mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -ffreestanding \
+	-fno-toplevel-reorder -fno-unit-at-a-time -fno-stack-protector \
+	-mpreferred-stack-boundary=2
+
+obj-$(CONFIG_X86_HDBOOT)	+= boot_main.o boot_hdisk.o
+
+obj-$(CONFIG_X86_BIOS_BRINGUP)	+= prepare_uboot.o a20.o bioscall.o regs.o tty.o pmjump.o main_entry.o
+
+obj-$(CONFIG_X86_VESA) += console_vesa.o
+obj-$(CONFIG_X86_VGA) += console_vga.o
+obj-$(CONFIG_X86_SERIAL) += console_serial.o
Index: barebox-2009.12.0/arch/x86/boot/a20.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/a20.c
@@ -0,0 +1,170 @@
+/* -*- linux-c -*- ------------------------------------------------------- *
+ *
+ *   Copyright (C) 1991, 1992 Linus Torvalds
+ *   Copyright 2007-2008 rPath, Inc. - All Rights Reserved
+ *   Copyright 2009 Intel Corporation; author H. Peter Anvin
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2.
+ *
+ * ----------------------------------------------------------------------- */
+
+/*
+ * Enable A20 gate (return -1 on failure)
+ */
+
+#include <asm/segment.h>
+#include <asm/io.h>
+#include "boot.h"
+
+#define MAX_8042_LOOPS	100000
+#define MAX_8042_FF	32
+
+/* be aware of: */
+THIS_IS_REALMODE_CODE
+
+static int __bootcode empty_8042(void)
+{
+	u8 status;
+	int loops = MAX_8042_LOOPS;
+	int ffs   = MAX_8042_FF;
+
+	while (loops--) {
+		io_delay();
+
+		status = inb(0x64);
+		if (status == 0xff) {
+			/* FF is a plausible, but very unlikely status */
+			if (!--ffs)
+				return -1; /* Assume no KBC present */
+		}
+		if (status & 1) {
+			/* Read and discard input data */
+			io_delay();
+			(void)inb(0x60);
+		} else if (!(status & 2)) {
+			/* Buffers empty, finished! */
+			return 0;
+		}
+	}
+
+	return -1;
+}
+
+/* Returns nonzero if the A20 line is enabled.  The memory address
+   used as a test is the int $0x80 vector, which should be safe. */
+
+#define A20_TEST_ADDR	(4*0x80)
+#define A20_TEST_SHORT  32
+#define A20_TEST_LONG	2097152	/* 2^21 */
+
+static int __bootcode a20_test(int loops)
+{
+	int ok = 0;
+	int saved, ctr;
+
+	set_fs(0x0000);
+	set_gs(0xffff);
+
+	saved = ctr = rdfs32(A20_TEST_ADDR);
+
+	while (loops--) {
+		wrfs32(++ctr, A20_TEST_ADDR);
+		io_delay();	/* Serialize and make delay constant */
+		ok = rdgs32(A20_TEST_ADDR+0x10) ^ ctr;
+		if (ok)
+			break;
+	}
+
+	wrfs32(saved, A20_TEST_ADDR);
+	return ok;
+}
+
+/* Quick test to see if A20 is already enabled */
+static int __bootcode a20_test_short(void)
+{
+	return a20_test(A20_TEST_SHORT);
+}
+
+/* Longer test that actually waits for A20 to come on line; this
+   is useful when dealing with the KBC or other slow external circuitry. */
+static int __bootcode a20_test_long(void)
+{
+	return a20_test(A20_TEST_LONG);
+}
+
+static void __bootcode enable_a20_bios(void)
+{
+	struct biosregs ireg;
+
+	initregs(&ireg);
+	ireg.ax = 0x2401;
+	intcall(0x15, &ireg, NULL);
+}
+
+static void __bootcode enable_a20_kbc(void)
+{
+	empty_8042();
+
+	outb(0xd1, 0x64);	/* Command write */
+	empty_8042();
+
+	outb(0xdf, 0x60);	/* A20 on */
+	empty_8042();
+
+	outb(0xff, 0x64);	/* Null command, but UHCI wants it */
+	empty_8042();
+}
+
+static void __bootcode enable_a20_fast(void)
+{
+	u8 port_a;
+
+	port_a = inb(0x92);	/* Configuration port A */
+	port_a |=  0x02;	/* Enable A20 */
+	port_a &= ~0x01;	/* Do not reset machine */
+	outb(port_a, 0x92);
+}
+
+/*
+ * Actual routine to enable A20; return 0 on ok, -1 on failure
+ */
+
+#define A20_ENABLE_LOOPS 255	/* Number of times to try */
+
+int __bootcode enable_a20(void)
+{
+       int loops = A20_ENABLE_LOOPS;
+       int kbc_err;
+
+       while (loops--) {
+	       /* First, check to see if A20 is already enabled
+		  (legacy free, etc.) */
+	       if (a20_test_short())
+		       return 0;
+
+	       /* Next, try the BIOS (INT 0x15, AX=0x2401) */
+	       enable_a20_bios();
+	       if (a20_test_short())
+		       return 0;
+
+	       /* Try enabling A20 through the keyboard controller */
+	       kbc_err = empty_8042();
+
+	       if (a20_test_short())
+		       return 0; /* BIOS worked, but with delayed reaction */
+
+	       if (!kbc_err) {
+		       enable_a20_kbc();
+		       if (a20_test_long())
+			       return 0;
+	       }
+
+	       /* Finally, try enabling the "fast A20 gate" */
+	       enable_a20_fast();
+	       if (a20_test_long())
+		       return 0;
+       }
+
+       return -1;
+}
Index: barebox-2009.12.0/arch/x86/boot/bioscall.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/bioscall.S
@@ -0,0 +1,99 @@
+/* -----------------------------------------------------------------------
+ *
+ *   Copyright 2009 Intel Corporation; author H. Peter Anvin
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2 or (at your
+ *   option) any later version; incorporated herein by reference.
+ *
+ * ----------------------------------------------------------------------- */
+
+/*
+ * "Glove box" for BIOS calls.  Avoids the constant problems with BIOSes
+ * touching registers they shouldn't be.
+ */
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+	.file	"bioscall.S"
+	.code16
+	.section .boot.text.intcall, "ax"
+
+	.globl	intcall
+	.type	intcall, @function
+intcall:
+	/* Self-modify the INT instruction.  Ugly, but works. */
+	cmpb	%al, 3f
+	je	1f
+	movb	%al, 3f
+	jmp	1f		/* Synchronize pipeline */
+1:
+	/* Save state */
+	pushfl
+	pushw	%fs
+	pushw	%gs
+	pushal
+
+	/* Copy input state to stack frame */
+	subw	$44, %sp
+	movw	%dx, %si
+	movw	%sp, %di
+	movw	$11, %cx
+	rep; movsd
+
+	/* Pop full state from the stack */
+	popal
+	popw	%gs
+	popw	%fs
+	popw	%es
+	popw	%ds
+	popfl
+
+	/* Actual INT */
+	.byte	0xcd		/* INT opcode */
+3:	.byte	0
+
+	/* Push full state to the stack */
+	pushfl
+	pushw	%ds
+	pushw	%es
+	pushw	%fs
+	pushw	%gs
+	pushal
+
+	/* Re-establish C environment invariants */
+	cld
+	movzwl	%sp, %esp
+	movw	%cs, %ax
+	movw	%ax, %ds
+	movw	%ax, %es
+
+	/* Copy output state from stack frame */
+	movw	68(%esp), %di	/* Original %cx == 3rd argument */
+	andw	%di, %di
+	jz	4f
+	movw	%sp, %si
+	movw	$11, %cx
+	rep; movsd
+4:	addw	$44, %sp
+
+	/* Restore state and return */
+	popal
+	popw	%gs
+	popw	%fs
+	popfl
+	retl
+	.size	intcall, .-intcall
+
+/* ------------------------------------------------------------------------ */
+	.code16
+	.section .boot.text.die, "ax"
+
+	.globl	die
+	.type	die, @function
+die:
+        hlt
+        jmp     die
+	.size	die, .-die
+
+#endif /* DOXYGEN_SHOULD_SKIP_THIS */
Index: barebox-2009.12.0/arch/x86/boot/boot.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/boot.h
@@ -0,0 +1,193 @@
+/* -*- linux-c -*- ------------------------------------------------------- *
+ *
+ *   Copyright (C) 1991, 1992 Linus Torvalds
+ *   Copyright 2007 rPath, Inc. - All Rights Reserved
+ *   Copyright 2009 Intel Corporation; author H. Peter Anvin
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2.
+ *
+ * ----------------------------------------------------------------------- */
+
+/**
+ * @file
+ * @brief Main declarations for the real mode code
+ */
+
+#ifndef BOOT_BOOT_H
+#define BOOT_BOOT_H
+
+#define STACK_SIZE	512	/* Minimum number of bytes for stack */
+
+/** Carry flag */
+#define X86_EFLAGS_CF	0x00000001
+
+/** PE flag */
+#define X86_CR0_PE      0x00000001
+
+#ifndef __ASSEMBLY__
+
+#include <types.h>
+
+/* we are still in real mode here! */
+#define THIS_IS_REALMODE_CODE asm(".code16gcc");
+
+struct biosregs {
+	union {
+		struct {
+			uint32_t edi;
+			uint32_t esi;
+			uint32_t ebp;
+			uint32_t _esp;
+			uint32_t ebx;
+			uint32_t edx;
+			uint32_t ecx;
+			uint32_t eax;
+			uint32_t _fsgs;
+			uint32_t _dses;
+			uint32_t eflags;
+		};
+		struct {
+			uint16_t di, hdi;
+			uint16_t si, hsi;
+			uint16_t bp, hbp;
+			uint16_t _sp, _hsp;
+			uint16_t bx, hbx;
+			uint16_t dx, hdx;
+			uint16_t cx, hcx;
+			uint16_t ax, hax;
+			uint16_t gs, fs;
+			uint16_t es, ds;
+			uint16_t flags, hflags;
+		};
+		struct {
+			uint8_t dil, dih, edi2, edi3;
+			uint8_t sil, sih, esi2, esi3;
+			uint8_t bpl, bph, ebp2, ebp3;
+			uint8_t _spl, _sph, _esp2, _esp3;
+			uint8_t bl, bh, ebx2, ebx3;
+			uint8_t dl, dh, edx2, edx3;
+			uint8_t cl, ch, ecx2, ecx3;
+			uint8_t al, ah, eax2, eax3;
+		};
+	};
+};
+
+/* functions in the realmode part */
+extern int enable_a20(void);
+extern void initregs(struct biosregs *regs);
+extern void intcall(uint8_t int_no, const struct biosregs *ireg, struct biosregs *oreg);
+extern void boot_puts(char*);
+extern void __attribute__((noreturn)) die(void);
+extern void __attribute__((noreturn)) protected_mode_jump(void);
+
+struct gdt_ptr {
+	uint16_t len;
+	uint32_t ptr;
+} __attribute__((packed));
+
+/* These functions are used to reference data in other segments. */
+
+static inline uint16_t ds(void)
+{
+	uint16_t seg;
+	asm("movw %%ds,%0" : "=rm" (seg));
+	return seg;
+}
+
+static inline void set_fs(uint16_t seg)
+{
+	asm volatile("movw %0,%%fs" : : "rm" (seg));
+}
+
+static inline uint16_t fs(void)
+{
+	uint16_t seg;
+	asm volatile("movw %%fs,%0" : "=rm" (seg));
+	return seg;
+}
+
+static inline void set_gs(uint16_t seg)
+{
+	asm volatile("movw %0,%%gs" : : "rm" (seg));
+}
+
+static inline uint16_t gs(void)
+{
+	uint16_t seg;
+	asm volatile("movw %%gs,%0" : "=rm" (seg));
+	return seg;
+}
+
+typedef unsigned int addr_t;
+
+static inline uint8_t rdfs8(addr_t addr)
+{
+	uint8_t v;
+	asm volatile("movb %%fs:%1,%0" : "=q" (v) : "m" (*(uint8_t *)addr));
+	return v;
+}
+static inline uint16_t rdfs16(addr_t addr)
+{
+	uint16_t v;
+	asm volatile("movw %%fs:%1,%0" : "=r" (v) : "m" (*(uint16_t *)addr));
+	return v;
+}
+static inline uint32_t rdfs32(addr_t addr)
+{
+	uint32_t v;
+	asm volatile("movl %%fs:%1,%0" : "=r" (v) : "m" (*(uint32_t *)addr));
+	return v;
+}
+
+static inline void wrfs8(uint8_t v, addr_t addr)
+{
+	asm volatile("movb %1,%%fs:%0" : "+m" (*(uint8_t *)addr) : "qi" (v));
+}
+static inline void wrfs16(uint16_t v, addr_t addr)
+{
+	asm volatile("movw %1,%%fs:%0" : "+m" (*(uint16_t *)addr) : "ri" (v));
+}
+static inline void wrfs32(uint32_t v, addr_t addr)
+{
+	asm volatile("movl %1,%%fs:%0" : "+m" (*(uint32_t *)addr) : "ri" (v));
+}
+
+static inline uint8_t rdgs8(addr_t addr)
+{
+	uint8_t v;
+	asm volatile("movb %%gs:%1,%0" : "=q" (v) : "m" (*(uint8_t *)addr));
+	return v;
+}
+static inline uint16_t rdgs16(addr_t addr)
+{
+	uint16_t v;
+	asm volatile("movw %%gs:%1,%0" : "=r" (v) : "m" (*(uint16_t *)addr));
+	return v;
+}
+static inline uint32_t rdgs32(addr_t addr)
+{
+	uint32_t v;
+	asm volatile("movl %%gs:%1,%0" : "=r" (v) : "m" (*(uint32_t *)addr));
+	return v;
+}
+
+static inline void wrgs8(uint8_t v, addr_t addr)
+{
+	asm volatile("movb %1,%%gs:%0" : "+m" (*(uint8_t *)addr) : "qi" (v));
+}
+static inline void wrgs16(uint16_t v, addr_t addr)
+{
+	asm volatile("movw %1,%%gs:%0" : "+m" (*(uint16_t *)addr) : "ri" (v));
+}
+static inline void wrgs32(uint32_t v, addr_t addr)
+{
+	asm volatile("movl %1,%%gs:%0" : "+m" (*(uint32_t *)addr) : "ri" (v));
+}
+
+/** use the built in memset function for the real mode code */
+#define memset(d,c,l) __builtin_memset(d,c,l)
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* BOOT_BOOT_H */
Index: barebox-2009.12.0/arch/x86/boot/boot_hdisk.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/boot_hdisk.S
@@ -0,0 +1,176 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * This code was inspired by the GRUB2 project.
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Loading the barebox image from a disk drive in LBA mode
+ */
+
+/**
+ * @fn void real_start(void)
+ * @brief A very simple and small loader to fetch all required sectors
+ * from the boot media.
+ */
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+	.file "boot_hdisk.S"
+	.code16
+
+	/*
+	 * These symbols are generated by the linker, because they need a
+	 * special layout. This layout is needed to be able to setup this
+	 * bootloader by patching the binary when it gets stored into the
+	 * master boot record.
+	 */
+	.extern indirect_sector_lba
+	.extern boot_stack
+	.extern start_pre_uboot
+	.extern boot_disk
+	.section .boot_code, "ax"
+
+	.globl real_start
+	.type real_start, @function
+
+real_start:
+
+	xorw %ax, %ax	/* set up %ds and %ss as offset from 0 */
+	movw %ax, %ds
+	movw %ax, %ss
+
+	/* set up the REAL stack */
+	movw $boot_stack, %sp
+
+	sti		/* we're safe again */
+
+	/* save drive reference first thing! */
+	movb %dl, boot_disk
+	pushw %dx
+
+	movw $notification_string, %si
+	call output_message
+
+	/*
+	 * This boot code only supports LBA. We fail here, if the BIOS
+	 * does not support LBA for the harddisk
+	 */
+
+	/* check if LBA is supported */
+	movb $0x41, %ah
+	movw $0x55aa, %bx
+	int $0x13
+
+	/*
+	 *  %dl may have been clobbered by INT 13, AH=41H.
+	 *  This happens, for example, with AST BIOS 1.04.
+	 */
+	popw %dx
+	pushw %dx
+
+	/* stop if no LBA support */
+	jc no_lba
+	cmpw $0xaa55, %bx
+	jne no_lba
+	andw $1, %cx
+	jz no_lba
+
+lba_mode:
+	/*
+	 * Load the indirect sector. Its content is ready for use,
+	 * provided by the installer
+	 */
+	movw $indirect_sector_lba, %si
+	movb $0x42, %ah
+	int $0x13
+	jc no_lba	/* error? Then die */
+
+	/*
+	 * Now loop through all valid entries in the indirect sector
+	 */
+	movw $indirect_area, %si
+
+load_loop:
+	/*
+	 * Stop if this "Disk Address Packet Structure" is invalid
+	 * We call it invalid, if the size member is zero. If it is invalid
+	 * we are optimistic and calling the loaded image
+	 */
+	movw (%si), %ax
+	cmpw $0x0000, %ax
+	je start_main
+
+	/*
+	 * Load this entry
+	 */
+	movb $0x42, %ah
+	int $0x13
+	jc no_lba
+
+	addw (%si), %si	/* next entry */
+	cmpw $indirect_area + 512, %si
+	jne load_loop
+	/*
+	 * fall through to start u-boot.
+	 */
+start_main:
+	movw $jmp_string, %si
+	call output_message
+	jmp start_pre_uboot
+/*
+ * die if there is no LBA support
+ */
+no_lba:	movw $chs_string, %si
+	call output_message
+	hlt
+
+/*
+ * message: write the string pointed to by %si
+ *
+ *   WARNING: trashes %si, %ax, and %bx
+ */
+
+/*
+ * Use BIOS "int 10H Function 0Eh" to write character in teletype mode
+ *	%ah = 0xe	%al = character
+ *	%bh = page	%bl = foreground color (graphics modes)
+ */
+
+1:
+	movw	$0x0001, %bx
+	movb	$0xe, %ah
+	int	$0x10		/* display this char */
+
+output_message:
+	lodsb
+	cmpb	$0, %al
+	jne	1b	/* if not end of string, next char */
+	ret
+
+/* ---------------------------------------------------------------------- */
+
+	.section .boot_data
+
+notification_string:	.asciz "UBOOT2 "
+chs_string:	.asciz "CHS "
+jmp_string:	.asciz "JMP "
+
+#endif
Index: barebox-2009.12.0/arch/x86/boot/boot_main.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/boot_main.S
@@ -0,0 +1,58 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * This code was inspired by the GRUB2 project.
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Common boot sector main routine to be entered by the BIOS
+ */
+/**
+ * @fn void _start(void)
+ *
+ * @brief Fix segment:offset settings of some buggy BIOSs
+ */
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+	.file "boot_main.S"
+	.code16
+
+	.extern real_start
+
+	.section .boot_start, "ax"
+	.type _start, @function
+
+	/*
+	 * The BIOS loads this code to address 0x00007c00.
+	 * The code should be called with CS:IP 0:0x7c00 (hopefully).
+	 */
+	.globl _start
+_start:
+	cli		/* we're not safe here! */
+	/*
+	 * It seems there are implementations in the wild which call this
+	 * code with CS:IP 0x07C0:0000 instead. We fix it immediately.
+	 */
+	ljmp $0, $real_start
+
+	.size _start, .-_start
+
+#endif
Index: barebox-2009.12.0/arch/x86/boot/main_entry.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/main_entry.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Start of the 32 bit flat mode
+ */
+
+#include <string.h>
+
+/* These symbols are generated by the linker */
+extern char __bss_start;
+extern char __bss_end;
+
+extern void start_barebox(void);
+
+/**
+ * Called plainly from assembler that switches from real to flat mode
+ *
+ * @note The C environment isn't initialized yet
+ */
+void uboot_entry(void)
+{
+	/* clear the BSS first */
+	memset(&__bss_start, 0x00, &__bss_end - &__bss_start);
+	start_barebox();
+}
Index: barebox-2009.12.0/arch/x86/boot/pmjump.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/pmjump.S
@@ -0,0 +1,89 @@
+/* ----------------------------------------------------------------------- *
+ *
+ *   Copyright (C) 1991, 1992 Linus Torvalds
+ *   Copyright 2007 rPath, Inc. - All Rights Reserved
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2.
+ *
+ * ----------------------------------------------------------------------- */
+
+/**
+ * @file
+ * @brief The actual transition into protected mode
+ *
+ * Note: This function is running in flat and real mode. Due to some
+ * other restrictions it must running from an address space below 0x10000
+ */
+
+/**
+ * @fn void protected_mode_jump(void)
+ * @brief Switches the first time from real mode to flat mode
+ */
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+#include <asm/modes.h>
+#include "boot.h"
+
+	.file "pmjump.S"
+	.code16
+	.section .boot.text.protected_mode_jump, "ax"
+
+	.globl	protected_mode_jump
+	.type	protected_mode_jump, @function
+
+protected_mode_jump:
+	jmp 1f			/* Short jump to serialize on 386/486 */
+1:
+
+	movw $__BOOT_DS, %cx
+	movw $__BOOT_TSS, %di
+
+	movl %cr0, %edx
+	orb $X86_CR0_PE, %dl	/* enable protected mode */
+	movl %edx, %cr0
+
+	/* Transition to 32-bit flat mode */
+	data32  ljmp $__BOOT_CS, $in_pm32
+
+/* ------------------------------------------------------------------------ */
+
+	.section ".text.in_pm32","ax"
+	.code32
+
+	.extern uboot_entry
+	.extern __bss_end
+
+	.type	in_pm32, @function
+in_pm32:
+	# Set up data segments for flat 32-bit mode
+	movl %ecx, %ds
+	movl %ecx, %es
+	movl %ecx, %fs
+	movl %ecx, %gs
+	movl %ecx, %ss
+/*
+ * Our flat mode code uses its own stack area behind the bss. With this we
+ * are still able to return to real mode temporarely
+ */
+	movl $__bss_end + 32768, %esp
+
+	# Set up TR to make Intel VT happy
+	ltr %di
+
+	# Clear registers to allow for future extensions to the
+	# 32-bit boot protocol
+	xorl %ecx, %ecx
+	xorl %edx, %edx
+	xorl %ebx, %ebx
+	xorl %ebp, %ebp
+	xorl %edi, %edi
+
+	# Set up LDTR to make Intel VT happy
+	lldt %cx
+
+	jmp uboot_entry
+
+	.size protected_mode_jump, .-protected_mode_jump
+
+#endif
Index: barebox-2009.12.0/arch/x86/boot/prepare_uboot.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/prepare_uboot.c
@@ -0,0 +1,86 @@
+/* -*- linux-c -*- ------------------------------------------------------- *
+ *
+ *   Copyright (C) 1991, 1992 Linus Torvalds
+ *   Copyright 2007 rPath, Inc. - All Rights Reserved
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2.
+ *
+ * ----------------------------------------------------------------------- */
+
+/*
+ * Prepare the machine for transition to protected mode.
+ */
+#include <asm/segment.h>
+#include <asm/modes.h>
+#include <asm/io.h>
+#include "boot.h"
+
+/* be aware of: */
+THIS_IS_REALMODE_CODE
+
+/*
+ * While we are in flat mode, we can't handle interrupts. But we can't
+ * switch them off for ever in the PIC, because we need them again while
+ * entering real mode code again and again....
+ */
+static void __bootcode realmode_switch_hook(void)
+{
+	asm volatile("cli");
+	outb(0x80, 0x70); /* Disable NMI */
+	io_delay();
+}
+
+/*
+ * Reset IGNNE# if asserted in the FPU.
+ */
+static void __bootcode reset_coprocessor(void)
+{
+	outb(0, 0xf0);
+	io_delay();
+	outb(0, 0xf1);
+	io_delay();
+}
+
+/**
+ * Setup and register the global descriptor table (GDT)
+ *
+ * @note This is for the first time only
+ */
+static void __bootcode setup_gdt(void)
+{
+	/* Xen HVM incorrectly stores a pointer to the gdt_ptr, instead
+	   of the gdt_ptr contents.  Thus, make it static so it will
+	   stay in memory, at least long enough that we switch to the
+	   proper kernel GDT. */
+	static struct gdt_ptr __bootdata gdt_ptr;
+
+	gdt_ptr.len = gdt_size - 1;
+	gdt_ptr.ptr = (uint32_t)&gdt + (ds() << 4);
+
+	asm volatile("lgdtl %0" : : "m" (gdt_ptr));
+}
+
+static char a20_message[] __bootdata = "A20 gate not responding, unable to boot...\n";
+
+/*
+ * Actual invocation sequence
+ */
+void __bootcode start_pre_uboot(void)
+{
+	/* Hook before leaving real mode, also disables interrupts */
+	realmode_switch_hook();
+
+	/* Enable the A20 gate */
+	if (enable_a20()) {
+		boot_puts(a20_message);
+		die();
+	}
+
+	/* Reset coprocessor (IGNNE#) */
+	reset_coprocessor();
+
+	setup_gdt();
+	/* Actual transition to protected mode... */
+	protected_mode_jump();
+}
Index: barebox-2009.12.0/arch/x86/boot/regs.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/regs.c
@@ -0,0 +1,34 @@
+/* -----------------------------------------------------------------------
+ *
+ *   Copyright 2009 Intel Corporation; author H. Peter Anvin
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2 or (at your
+ *   option) any later version; incorporated herein by reference.
+ *
+ * ----------------------------------------------------------------------- */
+
+/**
+ * @file
+ * @brief Simple helper function for initializing a register set.
+ *
+ * Note that this sets EFLAGS_CF in the input register set; this
+ * makes it easier to catch functions which do nothing but don't
+ * explicitly set CF.
+ */
+
+#include <asm/segment.h>
+#include "boot.h"
+
+/* be aware of: */
+THIS_IS_REALMODE_CODE
+
+void __bootcode initregs(struct biosregs *reg)
+{
+	memset(reg, 0, sizeof *reg);
+	reg->eflags |= X86_EFLAGS_CF;
+	reg->ds = ds();
+	reg->es = ds();
+	reg->fs = fs();
+	reg->gs = gs();
+}
Index: barebox-2009.12.0/arch/x86/boot/tty.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/boot/tty.c
@@ -0,0 +1,45 @@
+/* -*- linux-c -*- ------------------------------------------------------- *
+ *
+ *   Copyright (C) 1991, 1992 Linus Torvalds
+ *   Copyright 2007 rPath, Inc. - All Rights Reserved
+ *   Copyright 2009 Intel Corporation; author H. Peter Anvin
+ *
+ *   This file is part of the Linux kernel, and is made available under
+ *   the terms of the GNU General Public License version 2.
+ *
+ * ----------------------------------------------------------------------- */
+
+/**
+ * @file
+ * @brief Very simple screen I/O for the initialization stage
+ *
+ * @todo Probably should add very simple serial I/O?
+ * @attention This is real mode code!
+ */
+
+#include <asm/segment.h>
+#include "boot.h"
+
+/* be aware of: */
+THIS_IS_REALMODE_CODE
+
+static void __bootcode putchar(int ch)
+{
+	struct biosregs ireg;
+
+	if (ch == '\n')
+		putchar('\r');	/* \n -> \r\n */
+
+	initregs(&ireg);
+	ireg.bx = 0x0007;
+	ireg.cx = 0x0001;
+	ireg.ah = 0x0e;
+	ireg.al = ch;
+	intcall(0x10, &ireg, NULL);
+}
+
+void __bootcode boot_puts(char *str)
+{
+	while (*str)
+		putchar(*str++);
+}

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
