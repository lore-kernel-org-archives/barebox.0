Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gn-6w
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:06 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006Vy-Rg
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006zp-Pa
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Message-Id: <20100112102054.672384188@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:40 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_lib_code.diff
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
Subject: [PATCHv2 06/14] Add some generic functions to make x86 work
To: barebox@lists.infradead.org

Add some generic functions to make barebox work on x86.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/lib/Makefile      |    7 +
 arch/x86/lib/barebox.lds.S |  194 +++++++++++++++++++++++++++++++++++++++++++++
 arch/x86/lib/gdt.c         |   55 ++++++++++++
 arch/x86/lib/memory.c      |   67 +++++++++++++++
 arch/x86/lib/memory16.S    |   73 ++++++++++++++++
 arch/x86/lib/traveler.S    |  183 ++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 579 insertions(+)

Index: barebox-2009.12.0/arch/x86/lib/Makefile
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/Makefile
@@ -0,0 +1,7 @@
+extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
+obj-y += memory.o
+obj-y += gdt.o
+
+# needed, when running via a 16 bit BIOS
+obj-$(CONFIG_X86_BIOS_BRINGUP) += memory16.o
+obj-$(CONFIG_X86_BIOS_BRINGUP) += traveler.o
Index: barebox-2009.12.0/arch/x86/lib/barebox.lds.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/barebox.lds.S
@@ -0,0 +1,194 @@
+/*
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
+ *
+ */
+
+#undef i386
+#include <asm/barebox.lds.h>
+
+OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
+OUTPUT_ARCH(i386)
+ENTRY(_start)
+
+MEMORY
+{
+	mbr(rwx): ORIGIN = TEXT_BASE, LENGTH = 2 * SECTOR_SIZE
+	barebox (rwx) : ORIGIN = TEXT_BASE + SECTOR_SIZE, LENGTH = (256 * 1024 * 1024)
+}
+
+SECTIONS
+{
+#ifdef CONFIG_X86_HDBOOT
+
+	.ramlayout : {
+		boot_stack = INDIRECT_AREA;
+		indirect_area = INDIRECT_AREA;
+	}
+	/* describing the main boot sector */
+	.bootsector : AT (0) {
+		*(.boot_start)
+
+		. = 0x00b;
+		/*
+		 * Maybe later on occupied by a "BIOS parameter block". So,
+		 * keep it free from code.
+		 * - BytesPerSector dw@0x000B
+		 * - SectorsPerCluster db@0x000D
+		 * - ReservedSectors dw@0x000E
+		 * - FatCopies db@0x0010
+		 * - RootDirEntries dw@0x0011
+		 * - NumSectors dw@0x0013
+		 * - MediaType db@0x0015
+		 * - SectorsPerFAT dw@0x0016
+		 * - SectorsPerTrack dw@0x0018
+		 * - NumberOfHeads dw@0x001A
+		 * - HiddenSectors dd@0x001C
+		 * - SectorsBig dd@0x0020
+		 */
+		LONG(0);
+
+		. = 0x024;
+		*(.boot_code)
+		*(.boot_data)
+
+		/*
+		 * embed one "Disk Address Packet Structure" into the boot sector
+		 * This DAPS points to the 'indirect' sector to give the boot code
+		 * an idea what and where to load. Its content must be adapted
+		 * to the system it should run on, so, this structure must be
+		 * located at a well known offset.
+		 */
+		. = PATCH_AREA;
+		indirect_sector_lba = .;
+		SHORT(0x0010);		/* size of this structure */
+		SHORT(0x0001);		/* one sector */
+		SHORT(indirect_area);	/* where to store: offset */
+		SHORT(0x0000);		/* where to store: segment */
+		/* the following values are filled by the installer */
+		LONG(0x00000000);	/* LBA start lower */
+		LONG(0x00000000);	/* LBA start upper */
+
+		/* boot disk number used by upper layers */
+		. = PATCH_AREA + PATCH_AREA_BOOT_DEV;
+		boot_disk = .;
+		BYTE(0x00);		/* boot disk number (provided by the BIOS)
+
+		/* information about the persistant environment storage */
+		. = PATCH_AREA + PATCH_AREA_PERS_START;
+		pers_env_storage = .;
+		LONG(0x00000000);	/* LBA start lower */
+		LONG(0x00000000);	/* LBA start upper */
+
+		. = PATCH_AREA + PATCH_AREA_PERS_SIZE;
+		pers_env_size = .;
+		SHORT(PATCH_AREA_PERS_SIZE_UNUSED);	/* size of this area in sectors */
+
+		. = PATCH_AREA + PATCH_AREA_PERS_DRIVE;
+		pers_env_drive = .;
+		BYTE(0x00);		/* used drive */
+
+		/* partition table area (fixed location) */
+		. = OFFSET_OF_PARTITION_TABLE;
+		/* create an empty one */
+		LONG(0x00000000); LONG(0x00000000); LONG(0x00000000); LONG(0x00000000);
+		LONG(0x00000000); LONG(0x00000000); LONG(0x00000000); LONG(0x00000000);
+		LONG(0x00000000); LONG(0x00000000); LONG(0x00000000); LONG(0x00000000);
+		LONG(0x00000000); LONG(0x00000000); LONG(0x00000000); LONG(0x00000000);
+
+		/* boot sector signature */
+		. = OFFSET_OF_SIGNATURE;
+		BYTE(0x55);
+		BYTE(0xAA);
+		/* end of the first sector */
+
+		/*
+		 * The indirect sector starts here
+		 */
+		. = SECTOR_SIZE;
+		BYTE(MARK_DAPS_INVALID);	/* mark the first entry invalid */
+		BYTE(0x00);
+		. = SECTOR_SIZE + 496;
+		BYTE(MARK_DAPS_INVALID);	/* mark the last entry invalid */
+		BYTE(0x00);
+		. = SECTOR_SIZE + 508;
+		LONG(0x00000000);	/* LBA start upper */
+	} > mbr
+
+	/* some real mode bootstrapping */
+	.bootstrapping : AT ( LOADADDR(.bootsector) + SIZEOF(.bootsector) ) {
+		*(.boot.head)
+		*(.boot.text*)
+		*(.boot.rodata*)
+		*(.boot.data*)
+		. = ALIGN(4);
+	} > barebox
+#endif
+
+	/* the main barebox part (32 bit) */
+	.text : AT ( LOADADDR(.bootstrapping) + SIZEOF(.bootstrapping) ) {
+		/* do not align here! It may fails with the LOADADDR! */
+		_stext = .;
+		*(.text_entry*)
+		*(.text_bare_init*)
+		*(.text*)
+		. = ALIGN(4);
+		*(.rodata*)
+		. = ALIGN(4);
+		_etext = .;			/* End of text and rodata section */
+	} > barebox
+
+	.data : AT ( LOADADDR(.text) + SIZEOF(.text) ) {
+		*(.data*)
+		. = ALIGN(4);
+	} > barebox
+
+	.got : AT ( LOADADDR(.data) + SIZEOF (.data) ) {
+		*(.got*)
+		. = ALIGN(4);
+	} > barebox
+
+	.barebox_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
+		__barebox_cmd_start = .;
+		BAREBOX_CMDS
+		__barebox_cmd_end = .;
+		. = ALIGN(4);
+	} > barebox
+
+	.barebox_initcalls : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
+		__barebox_initcalls_start = .;
+		INITCALLS
+		__barebox_initcalls_end = .;
+		. = ALIGN(4);
+	} > barebox
+
+	.__usymtab : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
+		__usymtab_start = .;
+		BAREBOX_SYMS
+		__usymtab_end = .;
+		. = ALIGN(4);
+	} > barebox
+
+	.bss : {
+		__bss_start = .;
+		*(.bss*);
+		*( COMMON )
+		__bss_end = .;
+		_end = .;
+	} > barebox
+}
Index: barebox-2009.12.0/arch/x86/lib/gdt.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/gdt.c
@@ -0,0 +1,55 @@
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
+ * @brief Definition of the Global Descriptor Table
+ */
+
+#include <types.h>
+#include <asm/modes.h>
+#include <asm/segment.h>
+
+/**
+ * The 'Global Descriptor Table' used in barebox
+ *
+ * Note: This table must reachable by real and flat mode code
+ */
+uint64_t gdt[] __attribute__((aligned(16))) __bootdata = {
+	/* CS: code, read/execute, 4 GB, base 0 */
+	[GDT_ENTRY_BOOT_CS] = GDT_ENTRY(0xc09b, 0, 0xfffff),
+	/* DS: data, read/write, 4 GB, base 0 */
+	[GDT_ENTRY_BOOT_DS] = GDT_ENTRY(0xc093, 0, 0xfffff),
+	/* CS: for real mode calls */
+	[GDT_ENTRY_REAL_CS] = GDT_ENTRY(0x009E, 0, 0x0ffff),
+	/* DS: for real mode calls */
+	[GDT_ENTRY_REAL_DS] = GDT_ENTRY(0x0092, 0, 0x0ffff),
+	/* TSS: 32-bit tss, 104 bytes, base 4096 */
+	/* We only have a TSS here to keep Intel VT happy;
+	   we don't actually use it for anything. */
+	[GDT_ENTRY_BOOT_TSS] = GDT_ENTRY(0x0089, 4096, 103),
+};
+
+/**
+ * Size of the GDT must be known to load it
+ *
+ * Note: This varibale must reachable by real and flat mode code
+ */
+unsigned gdt_size __bootdata = sizeof(gdt);
Index: barebox-2009.12.0/arch/x86/lib/memory.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/memory.c
@@ -0,0 +1,67 @@
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
+ * @brief Memory management
+ */
+
+#include <init.h>
+#include <stdio.h>
+#include <mem_malloc.h>
+#include <asm/syslib.h>
+#include <asm-generic/memory_layout.h>
+
+/**
+ * Handling of free memory
+ *
+ * Topics:
+ * - areas used by BIOS code
+ * - The 0xa0000... 0xfffff hole
+ * - memory above 0x100000
+ */
+
+static int x86_mem_malloc_init(void)
+{
+#ifdef CONFIG_MEMORY_LAYOUT_DEFAULT
+	unsigned long memory_size;
+
+	memory_size = bios_get_memsize();
+	memory_size <<= 10;	/* BIOS reports in kiB */
+
+	/*
+	 * We do not want to conflict with the kernel. So, we keep the
+	 * area from 0x100000 ... 0xFFFFFF free from usage
+	 */
+	if (memory_size >= (15 * 1024 * 1024 + MALLOC_SIZE))
+		mem_malloc_init((void*)(16 * 1024 * 1024),
+				(void*)(16 * 1024 * 1024) + MALLOC_SIZE);
+	else
+		return -1;
+#else
+	mem_malloc_init((void *)MALLOC_BASE,
+			(void *)(MALLOC_BASE + MALLOC_SIZE));
+#endif
+	return 0;
+}
+
+core_initcall(x86_mem_malloc_init);
Index: barebox-2009.12.0/arch/x86/lib/traveler.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/traveler.S
@@ -0,0 +1,183 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * Mostly stolen from the GRUB2 project
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
+ * @brief Switch from the flat mode world into the real mode world and vice versa
+ *
+ * Note: These functions are *called* and return in a different operating mode
+ */
+
+/**
+ * @fn void real_to_prot(void)
+ * @brief Switch from temp. real mode back to flat mode
+ *
+ * Called from a 32 bit flat mode segment and returns into a 16 bit segment
+ */
+
+/**
+ * @fn void prot_to_real(void)
+ * @brief Switch from flat mode to real mode
+ *
+ * Called from a 16 bit real mode segment and returns into a 32 bit segment
+ */
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+#include <asm/modes.h>
+
+	.file "walkyrie.S"
+
+/* keep the current flat mode stack pointer, while playing in real mode */
+	.section .boot.data.protstack
+	.code32
+protstack: .long 4
+/* temp. store */
+return_addr: .long 4
+
+
+	.section .boot.text.real_to_prot, "ax"
+	.code16
+	.globl	real_to_prot
+	.type	real_to_prot, @function
+
+/* Note: This routine should not change any other standard registers than eax */
+real_to_prot:
+	/*
+	 * Always disable the interrupts, when returning to flat mode
+	 */
+	cli
+
+	/* turn on protected mode */
+	movl %cr0, %eax
+	orl $0x00000001, %eax
+	movl %eax, %cr0
+
+	/* jump to relocation, flush prefetch queue, and reload %cs */
+	DATA32 ljmp $__BOOT_CS, $return_to_flatmode
+
+/* ----------------------------------------------------------------------- */
+	.section .boot.text.return_to_flatmode, "ax"
+	.type return_to_flatmode, @function
+	.code32
+
+return_to_flatmode:
+	/* reload other segment registers */
+	movw $__BOOT_DS, %ax
+	movw %ax, %ds
+	movw %ax, %es
+	movw %ax, %fs
+	movw %ax, %gs
+	movw %ax, %ss
+
+	/* move the return address from the real mode to the flat mode stack */
+	movl (%esp), %eax
+	movl %eax, return_addr
+
+	/* setup again the flat mode stack */
+	movl protstack, %eax
+	movl %eax, %esp
+	movl %eax, %ebp
+
+	movl return_addr, %eax
+	movl %eax, (%esp)
+
+	/* flag we returned happy here */
+	xorl %eax, %eax
+	ret
+
+	.size real_to_prot, .-real_to_prot
+
+/* ------------------------------------------------------------------------ */
+
+/* Note: This routine should not change any other standard registers than eax */
+
+	.section .boot.text.prot_to_real, "ax"
+	.globl prot_to_real
+	.type prot_to_real, @function
+	.extern boot_stack
+	.code32
+
+prot_to_real:
+	/* save the protected mode stack */
+	movl %esp, %eax
+	movl %eax, protstack
+
+	/* prepare the real mode stack */
+	/* - address to call to the top of this stack */
+	movl (%esp), %eax
+	movl %eax, boot_stack - 4
+
+	/* - the stack itself */
+	movl $boot_stack - 4, %eax
+	movl %eax, %esp
+	movl %eax, %ebp
+
+	/* prepare segments limits to 16 bit */
+	movw $__REAL_DS, %ax
+	movw %ax, %ds
+	movw %ax, %es
+	movw %ax, %fs
+	movw %ax, %gs
+	movw %ax, %ss
+
+	/* at last, also limit the code segment to 16 bit */
+	ljmp $__REAL_CS, $return_to_realmode
+
+/* ----------------------------------------------------------------------- */
+
+	.section .boot.text.return_to_realmode, "ax"
+return_to_realmode:
+	.code16
+
+	/* disable protected mode */
+	movl %cr0, %eax
+	andl $(~0x00000001), %eax
+	movl %eax, %cr0
+
+	/*
+	 * all the protected mode settings are still cached in the CPU.
+	 * Refresh them by re-loading all registers in realmode
+	 * Start with the CS, continue with the data registers
+	 */
+	ljmp $0, $enter_realmode
+
+enter_realmode:
+	xorl %eax, %eax
+	movw %ax, %ds
+	movw %ax, %es
+	movw %ax, %fs
+	movw %ax, %gs
+	movw %ax, %ss
+	/*
+	 * back in plain real mode now, we can play again with the BIOS
+	 */
+
+	/* restore interrupts */
+	sti
+
+	/* return on realmode stack! */
+	DATA32 ret
+
+	.size prot_to_real, .-prot_to_real
+
+#endif
Index: barebox-2009.12.0/arch/x86/lib/memory16.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/memory16.S
@@ -0,0 +1,73 @@
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
+ * @brief Query the memory layout information from the BIOS
+ *
+ * Note: This function is running in flat and real mode. Due to some
+ * other restrictions it must running from an address space below 0x10000
+ */
+
+/**
+ * @fn unsigned short bios_get_memsize(void)
+ * @brief Does a BIOS call "INT 15H, AH=88H" to get extended memory size
+ * @return Extended memory size in KB
+ *
+ * @note This call is limited to 64 MiB. So, if the system provides more than
+ * 64 MiB of memory, still 64 MiB are reported.
+ *
+ */
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+	.section .boot.text.bios_get_memsize, "ax"
+	.code32
+	.globl bios_get_memsize
+	.type bios_get_memsize, @function
+
+	.extern prot_to_real
+
+bios_get_memsize:
+
+	pushl %ebp
+
+	call prot_to_real	/* enter real mode */
+	.code16
+
+	movb $0x88, %ah
+	int $0x15
+
+	movw %ax, %dx
+
+	DATA32	call real_to_prot
+
+	.code32
+
+	movw %dx, %ax
+
+	popl %ebp
+	ret
+
+	.size bios_get_memsize, .-bios_get_memsize
+
+#endif

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
