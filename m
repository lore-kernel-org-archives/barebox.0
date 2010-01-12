Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gl-6i
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:07 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006Vs-Hr
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006yx-Et
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Message-Id: <20100112102054.332735890@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:38 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=x86_headers.diff
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
Subject: [PATCHv2 04/14] Adding required architecture header files
To: barebox@lists.infradead.org

Add architecture header files. Some of these files are empty, they only must
exists to make the build system happy.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/include/asm/barebox.h     |   21 ++++++
 arch/x86/include/asm/barebox.lds.h |  113 +++++++++++++++++++++++++++++++++++++
 arch/x86/include/asm/bitops.h      |   32 ++++++++++
 arch/x86/include/asm/byteorder.h   |   30 +++++++++
 arch/x86/include/asm/common.h      |   29 +++++++++
 arch/x86/include/asm/elf.h         |   30 +++++++++
 arch/x86/include/asm/io.h          |   73 +++++++++++++++++++++++
 arch/x86/include/asm/modes.h       |   65 +++++++++++++++++++++
 arch/x86/include/asm/module.h      |   37 ++++++++++++
 arch/x86/include/asm/posix_types.h |   49 ++++++++++++++++
 arch/x86/include/asm/segment.h     |   43 ++++++++++++++
 arch/x86/include/asm/string.h      |   31 ++++++++++
 arch/x86/include/asm/syslib.h      |   29 +++++++++
 arch/x86/include/asm/types.h       |   44 ++++++++++++++
 14 files changed, 626 insertions(+)

Index: barebox-2009.12.0/arch/x86/include/asm/bitops.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/bitops.h
@@ -0,0 +1,32 @@
+/*
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
+ * @brief x86 bit operations
+ *
+ * This file is required only to make all sources happy including
+ * 'linux/bitops.h'
+ */
+
+#ifndef _ASM_X86_BITOPS_H_
+#define _ASM_X86_BITOPS_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_X86_BITOPS_H_ */
Index: barebox-2009.12.0/arch/x86/include/asm/byteorder.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/byteorder.h
@@ -0,0 +1,30 @@
+/*
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
+ * @brief x86 endianess declaration
+ */
+
+#ifndef __ASM_X86_BYTEORDER_H
+#define __ASM_X86_BYTEORDER_H
+
+#include <asm/types.h>
+#include <linux/byteorder/little_endian.h>
+
+#endif
Index: barebox-2009.12.0/arch/x86/include/asm/common.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/common.h
@@ -0,0 +1,29 @@
+/*
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
+ * @brief x86 common declarations
+ */
+
+#ifndef _ASM_X86_COMMON_H_
+#define _ASM_X86_COMMON_H_
+
+/* Nothing exiting yet */
+
+#endif /* _ASM_X86_COMMON_H_ */
Index: barebox-2009.12.0/arch/x86/include/asm/elf.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/elf.h
@@ -0,0 +1,30 @@
+/*
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
+ * @brief x86 specific elf information
+ *
+ */
+
+#ifndef _ASM_X86_ELF_H
+#define _ASM_X86_ELF_H
+
+#define ELF_CLASS ELFCLASS32
+
+#endif /* _ASM_X86_ELF_H */
Index: barebox-2009.12.0/arch/x86/include/asm/io.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/io.h
@@ -0,0 +1,73 @@
+/*
+ * Mostly stolen from the linux kernel
+ */
+
+/**
+ * @file
+ * @brief x86 IO access functions
+ */
+
+#ifndef __ASM_X86_IO_H
+#define __ASM_X86_IO_H
+
+static inline void outb(unsigned char value, int port)
+{
+	asm volatile("outb %b0, %w1" : : "a"(value), "Nd"(port));
+}
+
+static inline void outw(unsigned short value, int port)
+{
+	asm volatile("outw %w0, %w1" : : "a"(value), "Nd"(port));
+}
+
+static inline void outl(unsigned long value, int port)
+{
+	asm volatile("outl %0, %w1" : : "a"(value), "Nd"(port));
+}
+
+static inline unsigned char inb(int port)
+{
+	unsigned char value;
+	asm volatile("inb %w1, %b0" : "=a"(value) : "Nd"(port));
+	return value;
+}
+
+static inline unsigned short inw(int port)
+{
+	unsigned short value;
+	asm volatile("inw %w1, %w0" : "=a"(value) : "Nd"(port));
+	return value;
+}
+
+static inline unsigned long inl(int port)
+{
+	unsigned long value;
+	asm volatile("inl %w1, %0" : "=a"(value) : "Nd"(port));
+	return value;
+}
+
+#define build_mmio_read(name, size, type, reg, barrier) \
+ static inline type name(const volatile void *addr) \
+ { type ret; asm volatile("mov" size " %1,%0":reg (ret) \
+ :"m" (*(volatile type*)addr) barrier); return ret; }
+
+build_mmio_read(readb, "b", unsigned char, "=q", :"memory")
+build_mmio_read(readw, "w", unsigned short, "=r", :"memory")
+build_mmio_read(readl, "l", unsigned int, "=r", :"memory")
+
+#define build_mmio_write(name, size, type, reg, barrier) \
+ static inline void name(type val, volatile void *addr) \
+ { asm volatile("mov" size " %0,%1": :reg (val), \
+ "m" (*(volatile type*)addr) barrier); }
+
+build_mmio_write(writeb, "b", unsigned char, "q", :"memory")
+build_mmio_write(writew, "w", unsigned short, "r", :"memory")
+build_mmio_write(writel, "l", unsigned int, "r", :"memory")
+
+/* do a tiny io delay */
+static inline void io_delay(void)
+{
+	inb(0x80);
+}
+
+#endif	/* __ASM_X86_IO_H */
Index: barebox-2009.12.0/arch/x86/include/asm/posix_types.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/posix_types.h
@@ -0,0 +1,49 @@
+/*
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
+ * @brief x86 posix types
+ *
+ * Minimal set to make all the other header files copied from the Linxu kernel happy
+ */
+
+#ifndef _ASM_X86_POSIX_TYPES_H
+#define _ASM_X86_POSIX_TYPES_H
+
+typedef unsigned long	__kernel_ino_t;
+typedef unsigned short	__kernel_dev_t;
+typedef unsigned short	__kernel_mode_t;
+typedef unsigned short	__kernel_nlink_t;
+typedef long		__kernel_off_t;
+typedef int		__kernel_pid_t;
+typedef unsigned int	__kernel_size_t;
+typedef int		__kernel_ssize_t;
+typedef int		__kernel_ptrdiff_t;
+typedef long		__kernel_time_t;
+typedef long		__kernel_suseconds_t;
+typedef long		__kernel_clock_t;
+typedef int		__kernel_daddr_t;
+typedef char *		__kernel_caddr_t;
+typedef unsigned short	__kernel_uid16_t;
+typedef unsigned short	__kernel_gid16_t;
+typedef unsigned int	__kernel_uid32_t;
+typedef unsigned int	__kernel_gid32_t;
+typedef long long	__kernel_loff_t;
+
+#endif /* _ASM_X86_POSIX_TYPES_H */
Index: barebox-2009.12.0/arch/x86/include/asm/segment.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/segment.h
@@ -0,0 +1,43 @@
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
+#ifndef _ASM_X86_SEGMENT_H
+#define _ASM_X86_SEGMENT_H
+
+#include <linux/compiler.h>
+
+/**
+ * @file
+ * @brief To be able to mark functions running in real _and_ flat mode
+ */
+
+/**
+ * Section for every program code needed to bring barebox from real mode
+ * to flat mode
+ */
+#define __bootcode	__section(.boot.text)
+
+/**
+ * Section for every data needed to bring barebox from real mode
+ * to flat mode
+ */
+#define __bootdata	__section(.boot.data)
+
+#endif /* _ASM_X86_SEGMENT_H */
Index: barebox-2009.12.0/arch/x86/include/asm/string.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/string.h
@@ -0,0 +1,31 @@
+/*
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
+ * @brief x86 specific string optimizations
+ *
+ * Thanks to the Linux kernel here we can add many micro optimized string
+ * functions. But currently it makes no sense, to do so.
+ */
+#ifndef __ASM_X86_STRING_H
+#define __ASM_X86_STRING_H
+
+/* nothing special yet */
+
+#endif
Index: barebox-2009.12.0/arch/x86/include/asm/syslib.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/syslib.h
@@ -0,0 +1,29 @@
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
+extern unsigned int x86_uart_read(unsigned long, unsigned char);
+extern void x86_uart_write(unsigned int, unsigned long, unsigned char);
+
+#ifdef CONFIG_X86_BIOS_BRINGUP
+
+extern int bios_disk_rw_int13_extensions(int, int, void*) __attribute__((regparm(3)));
+extern uint16_t bios_get_memsize(void);
+
+#endif
Index: barebox-2009.12.0/arch/x86/include/asm/types.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/types.h
@@ -0,0 +1,44 @@
+/*
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
+#ifndef __ASM_X86_TYPES_H
+#define __ASM_X86_TYPES_H
+
+#ifndef __ASSEMBLY__
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
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+
+typedef unsigned char u8;
+
+typedef unsigned short u16;
+
+typedef unsigned int u32;
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_X86_TYPES_H */
Index: barebox-2009.12.0/arch/x86/include/asm/barebox.lds.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/barebox.lds.h
@@ -0,0 +1,113 @@
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
+ * @brief Adapt linker script content in accordance to Kconfig settings
+ */
+
+#define INITCALLS			\
+	KEEP(*(.initcall.0))			\
+	KEEP(*(.initcall.1))			\
+	KEEP(*(.initcall.2))			\
+	KEEP(*(.initcall.3))			\
+	KEEP(*(.initcall.4))			\
+	KEEP(*(.initcall.5))			\
+	KEEP(*(.initcall.6))			\
+	KEEP(*(.initcall.7))
+
+#define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
+
+#define BAREBOX_SYMS	KEEP(*(__usymtab))
+
+/**
+ * Area in the MBR of the barebox basic boot code. This offset must be in
+ * accordance to the 'indirect_sector_lba' label.
+ */
+#define PATCH_AREA 400
+
+/**
+ * Offset where to store the boot drive number (BIOS number, 1 byte)
+ */
+#define PATCH_AREA_BOOT_DEV 16
+
+/**
+ * Offset where to store information about the persistant environment storage
+ * It points to an LBA number (8 bytes) and defines the first sector of this
+ * storage on disk.
+ */
+#define PATCH_AREA_PERS_START 20
+
+/**
+ * Offset where to store information about the persistant environment storage
+ * It points to a short number (2 bytes) and defines the sector count of this
+ * storage on disk.
+ */
+#define PATCH_AREA_PERS_SIZE 28
+
+/**
+ * Offset where to store information about the persistant environment storage
+ * drive number (BIOS number, 1 byte)
+ */
+#define PATCH_AREA_PERS_DRIVE 30
+
+/**
+ * Mark the persistant environment as not used
+ */
+#define PATCH_AREA_PERS_SIZE_UNUSED 0x000
+
+/**
+ * Mark a DAPS as unused/invalid
+ */
+#define MARK_DAPS_INVALID 0x0000
+
+/**
+ * Offset of the partition table in an MBR
+ */
+#define OFFSET_OF_PARTITION_TABLE 446
+
+/**
+ * Offset of the signature in an MBR
+ */
+#define OFFSET_OF_SIGNATURE 510
+
+/**
+ * Area where to store indirect sector to loop through. Keep this value
+ * in accordance to the 'indirect_area' label. Note: .
+ *
+ * @attention These addresses are real mode ones (seg:offset)
+ */
+#define INDIRECT_AREA 0x7A00
+#define INDIRECT_SEGMENT 0x0000
+
+/**
+ * Area where to load sectors from disk to. They should start after the
+ * MBR area and must be in accordance to the offset of the '.bootstrapping'
+ * section in the linker file.
+ *
+ * @attention The address must be a multiple of 512.
+ */
+#define LOAD_AREA 0x7e00
+#define LOAD_SEGMENT 0x0000
+
+/**
+ * Size of one sector.
+ */
+#define SECTOR_SIZE 512
Index: barebox-2009.12.0/arch/x86/include/asm/barebox.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/barebox.h
@@ -0,0 +1,21 @@
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
+/* nothing special yet */
Index: barebox-2009.12.0/arch/x86/include/asm/modes.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/modes.h
@@ -0,0 +1,65 @@
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
+ * @brief Declarations to bring some light in the real/protected/flat mode darkness
+ */
+#ifndef _ASM_X86_MODES_H
+#define _ASM_X86_MODES_H
+
+#ifndef __ASSEMBLY__
+
+#include <types.h>
+
+extern uint64_t gdt[];
+extern unsigned gdt_size;
+
+#endif
+
+/** to simplify GDT entry generation */
+#define GDT_ENTRY(flags, base, limit)			\
+	((((base)  & 0xff000000ULL) << (56-24)) |	\
+	 (((flags) & 0x0000f0ffULL) << 40) |		\
+	 (((limit) & 0x000f0000ULL) << (48-16)) |	\
+	 (((base)  & 0x00ffffffULL) << 16) |		\
+	 (((limit) & 0x0000ffffULL)))
+
+/** 32 bit barebox text */
+#define GDT_ENTRY_BOOT_CS	2
+#define __BOOT_CS		(GDT_ENTRY_BOOT_CS * 8)
+
+/** 32 bit barebox data */
+#define GDT_ENTRY_BOOT_DS	3
+#define __BOOT_DS		(GDT_ENTRY_BOOT_DS * 8)
+
+/** 16 bit barebox text */
+#define GDT_ENTRY_REAL_CS	4
+#define __REAL_CS		(GDT_ENTRY_REAL_CS * 8)
+
+/** 16 bit barebox data */
+#define GDT_ENTRY_REAL_DS	5
+#define __REAL_DS		(GDT_ENTRY_REAL_DS * 8)
+
+/** Something to make others happy */
+#define GDT_ENTRY_BOOT_TSS	6
+#define __BOOT_TSS		(GDT_ENTRY_BOOT_TSS * 8)
+
+#endif /* _ASM_X86_MODES_H */
Index: barebox-2009.12.0/arch/x86/include/asm/module.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/include/asm/module.h
@@ -0,0 +1,37 @@
+/*
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
+ * @brief x86 module support
+ *
+ */
+
+#ifndef _ASM_X86_MODULE_H_
+#define _ASM_X86_MODULE_H_
+
+/** currently nothing special */
+struct mod_arch_specific
+{
+        int foo;
+};
+
+#define Elf_Shdr        Elf32_Shdr
+#define Elf_Ehdr        Elf32_Ehdr
+
+#endif /* _ASM_X86_MODULE_H_ */

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
