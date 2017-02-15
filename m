Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo177.mail-out.ovh.net ([46.105.39.154])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ce5GP-0007Li-Be
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 19:29:43 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 8A66A2F83F
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2017 20:28:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 15 Feb 2017 20:34:16 +0100
Message-Id: <1487187257-29082-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/12] ARCH: efi: Finally drop it as now we can build efi
 bootup from x86
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/Kconfig                   |  53 -------------------
 arch/efi/Makefile                  |  43 ---------------
 arch/efi/configs/efi_defconfig     |  79 ---------------------------
 arch/efi/include/asm/barebox.h     |   1 -
 arch/efi/include/asm/bitops.h      |  22 --------
 arch/efi/include/asm/bitsperlong.h |  10 ----
 arch/efi/include/asm/byteorder.h   |   8 ---
 arch/efi/include/asm/common.h      |   4 --
 arch/efi/include/asm/dma.h         |  13 -----
 arch/efi/include/asm/elf.h         |  60 ---------------------
 arch/efi/include/asm/io.h          |  55 -------------------
 arch/efi/include/asm/posix_types.h |   1 -
 arch/efi/include/asm/sections.h    |   1 -
 arch/efi/include/asm/string.h      |   1 -
 arch/efi/include/asm/swab.h        |   6 ---
 arch/efi/include/asm/types.h       |  65 -----------------------
 arch/efi/include/asm/unaligned.h   |  19 -------
 arch/efi/include/mach/debug_ll.h   |   1 -
 arch/efi/lib/.gitignore            |   2 -
 arch/efi/lib/Makefile              |   4 --
 arch/efi/lib/asm-offsets.c         |  12 -----
 arch/efi/lib/crt0-efi-ia32.S       |  76 --------------------------
 arch/efi/lib/crt0-efi-x86_64.S     |  75 --------------------------
 arch/efi/lib/elf_ia32_efi.lds.S    | 106 -------------------------------------
 arch/efi/lib/elf_x86_64_efi.lds.S  | 100 ----------------------------------
 arch/efi/lib/reloc_ia32.c          |  97 ---------------------------------
 arch/efi/lib/reloc_x86_64.c        |  96 ---------------------------------
 arch/x86/configs/efi_defconfig     |   1 +
 28 files changed, 1 insertion(+), 1010 deletions(-)
 delete mode 100644 arch/efi/Kconfig
 delete mode 100644 arch/efi/Makefile
 delete mode 100644 arch/efi/configs/efi_defconfig
 delete mode 100644 arch/efi/include/asm/barebox.h
 delete mode 100644 arch/efi/include/asm/bitops.h
 delete mode 100644 arch/efi/include/asm/bitsperlong.h
 delete mode 100644 arch/efi/include/asm/byteorder.h
 delete mode 100644 arch/efi/include/asm/common.h
 delete mode 100644 arch/efi/include/asm/dma.h
 delete mode 100644 arch/efi/include/asm/elf.h
 delete mode 100644 arch/efi/include/asm/io.h
 delete mode 100644 arch/efi/include/asm/posix_types.h
 delete mode 100644 arch/efi/include/asm/sections.h
 delete mode 100644 arch/efi/include/asm/string.h
 delete mode 100644 arch/efi/include/asm/swab.h
 delete mode 100644 arch/efi/include/asm/types.h
 delete mode 100644 arch/efi/include/asm/unaligned.h
 delete mode 100644 arch/efi/include/mach/debug_ll.h
 delete mode 100644 arch/efi/lib/.gitignore
 delete mode 100644 arch/efi/lib/Makefile
 delete mode 100644 arch/efi/lib/asm-offsets.c
 delete mode 100644 arch/efi/lib/crt0-efi-ia32.S
 delete mode 100644 arch/efi/lib/crt0-efi-x86_64.S
 delete mode 100644 arch/efi/lib/elf_ia32_efi.lds.S
 delete mode 100644 arch/efi/lib/elf_x86_64_efi.lds.S
 delete mode 100644 arch/efi/lib/reloc_ia32.c
 delete mode 100644 arch/efi/lib/reloc_x86_64.c

diff --git a/arch/efi/Kconfig b/arch/efi/Kconfig
deleted file mode 100644
index 561aac2b2..000000000
--- a/arch/efi/Kconfig
+++ /dev/null
@@ -1,53 +0,0 @@
-config ARCH_EFI
-	bool
-	default y
-	select HAS_DEBUG_LL
-	select HAS_KALLSYMS
-	select EFI_GUID
-	select EFI_BOOTUP
-	select EFI_DEVICEPATH
-	select PRINTF_UUID
-	select GENERIC_FIND_NEXT_BIT
-	select CLOCKSOURCE_EFI
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x0
-
-menu "EFI specific settings"
-
-config 64BIT
-	def_bool y
-	help
-	  Say yes to build a 64-bit binary - formerly known as x86_64
-	  Say no to build a 32-bit binary - formerly known as i386.
-
-	  32-bit support currently does not compile and is not tested
-	  due to the lack of hardware.
-
-config X86_32
-	def_bool y
-	depends on !64BIT
-
-config X86_64
-	def_bool y
-	depends on 64BIT
-
-config ARCH_EFI_REGISTER_COM1
-	bool "Register first serial port"
-	help
-	  Say yes here to register the first serial port on ioport 0x3f8.
-	  This is useful to control barebox over a serial port if the board
-	  has one. Enabling this option may not work on boards which do not
-	  have a serial port. Also enable DRIVER_SERIAL_NS16550 to enable
-	  the NS16550 driver.
-
-endmenu
-
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
diff --git a/arch/efi/Makefile b/arch/efi/Makefile
deleted file mode 100644
index c87a421ad..000000000
--- a/arch/efi/Makefile
+++ /dev/null
@@ -1,43 +0,0 @@
-KBUILD_DEFCONFIG := efi_defconfig
-
-CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
-
-ifeq ($(CONFIG_X86_32),y)
-	UTS_MACHINE := i386
-	biarch := $(call cc-option,-m32)
-	AFLAGS += $(biarch)
-	CFLAGS += $(biarch)
-	TARGET = efi-app-ia32
-else
-	UTS_MACHINE := x86_64
-	AFLAGS += -m64
-	CFLAGS += -m64 -mno-red-zone
-	TARGET = efi-app-x86_64
-endif
-
-lds-$(CONFIG_X86_32)   := arch/efi/lib/elf_ia32_efi.lds
-lds-$(CONFIG_X86_64)   := arch/efi/lib/elf_x86_64_efi.lds
-
-cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
-		-T $(lds-y)					\
-		-shared -Bsymbolic -nostdlib -znocombreloc	\
-		--start-group $(barebox-common)			\
-		--end-group					\
-		$(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
-
-quiet_cmd_efi_image = EFI-IMG $@
-      cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
-		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
-		      -j __barebox_exitcalls -j __barebox_cmd -j .barebox_magicvar \
-		      -j .bbenv.* --target=$(TARGET) $< $@
-
-KBUILD_BINARY := barebox
-
-LDFLAGS := -m elf_$(UTS_MACHINE) --no-undefined
-
-barebox.efi: $(KBUILD_BINARY) FORCE
-	$(call if_changed,efi_image)
-
-KBUILD_IMAGE := barebox.efi
-
-common-y += arch/efi/lib/
diff --git a/arch/efi/configs/efi_defconfig b/arch/efi/configs/efi_defconfig
deleted file mode 100644
index f24148d3b..000000000
--- a/arch/efi/configs/efi_defconfig
+++ /dev/null
@@ -1,79 +0,0 @@
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_POLLER=y
-CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_LL=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_HOST=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENUTREE=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_2048=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_SERIAL_EFI_STDIO=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_EFI_SNP=y
-# CONFIG_SPI is not set
-CONFIG_DISK=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_EFI=y
-CONFIG_FS_EFIVARFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/efi/include/asm/barebox.h b/arch/efi/include/asm/barebox.h
deleted file mode 100644
index 2997587d8..000000000
--- a/arch/efi/include/asm/barebox.h
+++ /dev/null
@@ -1 +0,0 @@
-/* dummy */
diff --git a/arch/efi/include/asm/bitops.h b/arch/efi/include/asm/bitops.h
deleted file mode 100644
index 447023da6..000000000
--- a/arch/efi/include/asm/bitops.h
+++ /dev/null
@@ -1,22 +0,0 @@
-#ifndef _SANDBOX_BITOPS_H
-#define _SANDBOX_BITOPS_H
-
-/* nothing but the defaults.. */
-#include <asm-generic/bitops/__ffs.h>
-#include <asm-generic/bitops/__fls.h>
-#include <asm-generic/bitops/ffs.h>
-#include <asm-generic/bitops/fls.h>
-#include <asm-generic/bitops/ffz.h>
-#include <asm-generic/bitops/find.h>
-#include <asm-generic/bitops/fls64.h>
-#include <asm-generic/bitops/hweight.h>
-#include <asm-generic/bitops/ops.h>
-
-#define set_bit(x, y)			__set_bit(x, y)
-#define clear_bit(x, y)			__clear_bit(x, y)
-#define change_bit(x, y)		__change_bit(x, y)
-#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
-#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
-#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
-
-#endif
diff --git a/arch/efi/include/asm/bitsperlong.h b/arch/efi/include/asm/bitsperlong.h
deleted file mode 100644
index 00c1fc262..000000000
--- a/arch/efi/include/asm/bitsperlong.h
+++ /dev/null
@@ -1,10 +0,0 @@
-#ifndef __ASM_BITSPERLONG_H
-#define __ASM_BITSPERLONG_H
-
-#ifdef __x86_64__
-#define BITS_PER_LONG 64
-#else
-#define BITS_PER_LONG 32
-#endif
-
-#endif /* __ASM_BITSPERLONG_H */
diff --git a/arch/efi/include/asm/byteorder.h b/arch/efi/include/asm/byteorder.h
deleted file mode 100644
index 37316f237..000000000
--- a/arch/efi/include/asm/byteorder.h
+++ /dev/null
@@ -1,8 +0,0 @@
-#ifndef _I386_BYTEORDER_H
-#define _I386_BYTEORDER_H
-
-#include <asm/types.h>
-
-#include <linux/byteorder/little_endian.h>
-
-#endif /* _I386_BYTEORDER_H */
diff --git a/arch/efi/include/asm/common.h b/arch/efi/include/asm/common.h
deleted file mode 100644
index b0e6b7fb1..000000000
--- a/arch/efi/include/asm/common.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef ASM_COMMON_H
-#define ASM_COMMON_H
-
-#endif /* ASM_COMMON_H */
diff --git a/arch/efi/include/asm/dma.h b/arch/efi/include/asm/dma.h
deleted file mode 100644
index 459536779..000000000
--- a/arch/efi/include/asm/dma.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/*
- * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
- */
-
-#ifndef __ASM_DMA_H
-#define __ASM_DMA_H
-
-/* empty*/
-
-#endif /* __ASM_DMA_H */
diff --git a/arch/efi/include/asm/elf.h b/arch/efi/include/asm/elf.h
deleted file mode 100644
index ddde03518..000000000
--- a/arch/efi/include/asm/elf.h
+++ /dev/null
@@ -1,60 +0,0 @@
-#ifndef __ASM_SANDBOX_ELF_H__
-#define __ASM_SANDBOX_ELF_H__
-
-#ifdef __i386__
-
-typedef struct user_fxsr_struct elf_fpxregset_t;
-
-#define R_386_NONE	0
-#define R_386_32	1
-#define R_386_PC32	2
-#define R_386_GOT32	3
-#define R_386_PLT32	4
-#define R_386_COPY	5
-#define R_386_GLOB_DAT	6
-#define R_386_JMP_SLOT	7
-#define R_386_RELATIVE	8
-#define R_386_GOTOFF	9
-#define R_386_GOTPC	10
-#define R_386_NUM	11
-
-/*
- * These are used to set parameters in the core dumps.
- */
-#define ELF_CLASS	ELFCLASS32
-#define ELF_DATA	ELFDATA2LSB
-#define ELF_ARCH	EM_386
-
-#else
-
-/* x86-64 relocation types */
-#define R_X86_64_NONE		0	/* No reloc */
-#define R_X86_64_64		1	/* Direct 64 bit  */
-#define R_X86_64_PC32		2	/* PC relative 32 bit signed */
-#define R_X86_64_GOT32		3	/* 32 bit GOT entry */
-#define R_X86_64_PLT32		4	/* 32 bit PLT address */
-#define R_X86_64_COPY		5	/* Copy symbol at runtime */
-#define R_X86_64_GLOB_DAT	6	/* Create GOT entry */
-#define R_X86_64_JUMP_SLOT	7	/* Create PLT entry */
-#define R_X86_64_RELATIVE	8	/* Adjust by program base */
-#define R_X86_64_GOTPCREL	9	/* 32 bit signed pc relative
-					   offset to GOT */
-#define R_X86_64_32		10	/* Direct 32 bit zero extended */
-#define R_X86_64_32S		11	/* Direct 32 bit sign extended */
-#define R_X86_64_16		12	/* Direct 16 bit zero extended */
-#define R_X86_64_PC16		13	/* 16 bit sign extended pc relative */
-#define R_X86_64_8		14	/* Direct 8 bit sign extended  */
-#define R_X86_64_PC8		15	/* 8 bit sign extended pc relative */
-
-#define R_X86_64_NUM		16
-
-/*
- * These are used to set parameters in the core dumps.
- */
-#define ELF_CLASS	ELFCLASS64
-#define ELF_DATA	ELFDATA2LSB
-#define ELF_ARCH	EM_X86_64
-
-#endif
-
-#endif /* __ASM_SANDBOX_ELF_H__ */
diff --git a/arch/efi/include/asm/io.h b/arch/efi/include/asm/io.h
deleted file mode 100644
index ac8a9c1b3..000000000
--- a/arch/efi/include/asm/io.h
+++ /dev/null
@@ -1,55 +0,0 @@
-#ifndef __ASM_SANDBOX_IO_H
-#define __ASM_SANDBOX_IO_H
-
-#define build_mmio_read(name, size, type, reg, barrier) \
- static inline type name(const volatile void *addr) \
- { type ret; asm volatile("mov" size " %1,%0":reg (ret) \
- :"m" (*(volatile type*)addr) barrier); return ret; }
-
-build_mmio_read(readb, "b", unsigned char, "=q", :"memory")
-build_mmio_read(readw, "w", unsigned short, "=r", :"memory")
-build_mmio_read(readl, "l", unsigned int, "=r", :"memory")
-
-#define build_mmio_write(name, size, type, reg, barrier) \
- static inline void name(type val, volatile void *addr) \
- { asm volatile("mov" size " %0,%1": :reg (val), \
- "m" (*(volatile type*)addr) barrier); }
-
-build_mmio_write(writeb, "b", unsigned char, "q", :"memory")
-build_mmio_write(writew, "w", unsigned short, "r", :"memory")
-build_mmio_write(writel, "l", unsigned int, "r", :"memory")
-
-#define BUILDIO(bwl, bw, type)						\
-static inline void out##bwl(unsigned type value, int port)		\
-{									\
-	asm volatile("out" #bwl " %" #bw "0, %w1"			\
-		     : : "a"(value), "Nd"(port));			\
-}									\
-									\
-static inline unsigned type in##bwl(int port)				\
-{									\
-	unsigned type value;						\
-	asm volatile("in" #bwl " %w1, %" #bw "0"			\
-		     : "=a"(value) : "Nd"(port));			\
-	return value;							\
-}									\
-									\
-static inline void outs##bwl(int port, const void *addr, unsigned long count) \
-{									\
-	asm volatile("rep; outs" #bwl					\
-		     : "+S"(addr), "+c"(count) : "d"(port));		\
-}									\
-									\
-static inline void ins##bwl(int port, void *addr, unsigned long count)	\
-{									\
-	asm volatile("rep; ins" #bwl					\
-		     : "+D"(addr), "+c"(count) : "d"(port));		\
-}
-
-BUILDIO(b, b, char)
-BUILDIO(w, w, short)
-BUILDIO(l, , int)
-
-#define  IO_SPACE_LIMIT  0xffff
-
-#endif /* __ASM_SANDBOX_IO_H */
diff --git a/arch/efi/include/asm/posix_types.h b/arch/efi/include/asm/posix_types.h
deleted file mode 100644
index 22cae6230..000000000
--- a/arch/efi/include/asm/posix_types.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/posix_types.h>
diff --git a/arch/efi/include/asm/sections.h b/arch/efi/include/asm/sections.h
deleted file mode 100644
index 2b8c51603..000000000
--- a/arch/efi/include/asm/sections.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/sections.h>
diff --git a/arch/efi/include/asm/string.h b/arch/efi/include/asm/string.h
deleted file mode 100644
index 2997587d8..000000000
--- a/arch/efi/include/asm/string.h
+++ /dev/null
@@ -1 +0,0 @@
-/* dummy */
diff --git a/arch/efi/include/asm/swab.h b/arch/efi/include/asm/swab.h
deleted file mode 100644
index 60a90120b..000000000
--- a/arch/efi/include/asm/swab.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef _ASM_SWAB_H
-#define _ASM_SWAB_H
-
-/* nothing. use generic functions */
-
-#endif /* _ASM_SWAB_H */
diff --git a/arch/efi/include/asm/types.h b/arch/efi/include/asm/types.h
deleted file mode 100644
index 3caac398d..000000000
--- a/arch/efi/include/asm/types.h
+++ /dev/null
@@ -1,65 +0,0 @@
-#ifndef __ASM_I386_TYPES_H
-#define __ASM_I386_TYPES_H
-
-#ifndef __ASSEMBLY__
-
-#ifdef __x86_64__
-/*
- * This is used in dlmalloc. On X86_64 we need it to be
- * 64 bit
- */
-#define INTERNAL_SIZE_T unsigned long
-
-/*
- * This is a Kconfig variable in the Kernel, but we want to detect
- * this during compile time, so we set it here.
- */
-#define CONFIG_PHYS_ADDR_T_64BIT
-
-#endif
-
-typedef unsigned short umode_t;
-
-/*
- * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
- * header files exported to user space
- */
-
-typedef __signed__ char __s8;
-typedef unsigned char __u8;
-
-typedef __signed__ short __s16;
-typedef unsigned short __u16;
-
-typedef __signed__ int __s32;
-typedef unsigned int __u32;
-
-#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
-typedef __signed__ long long __s64;
-typedef unsigned long long __u64;
-#endif
-
-/*
- * These aren't exported outside the kernel to avoid name space clashes
- */
-#ifdef __KERNEL__
-
-typedef signed char s8;
-typedef unsigned char u8;
-
-typedef signed short s16;
-typedef unsigned short u16;
-
-typedef signed int s32;
-typedef unsigned int u32;
-
-typedef signed long long s64;
-typedef unsigned long long u64;
-
-#include <asm/bitsperlong.h>
-
-#endif /* __KERNEL__ */
-
-#endif
-
-#endif
diff --git a/arch/efi/include/asm/unaligned.h b/arch/efi/include/asm/unaligned.h
deleted file mode 100644
index d02da6e60..000000000
--- a/arch/efi/include/asm/unaligned.h
+++ /dev/null
@@ -1,19 +0,0 @@
-#ifndef _ASM_SANDBOX_UNALIGNED_H
-#define _ASM_SANDBOX_UNALIGNED_H
-
-/*
- * The architecture sandbox is compiled on can do unaligned accesses itself.
- */
-
-#include <linux/unaligned/access_ok.h>
-#include <linux/unaligned/generic.h>
-
-#if __BYTE_ORDER == __LITTLE_ENDIAN
-#define get_unaligned __get_unaligned_le
-#define put_unaligned __put_unaligned_le
-#else
-#define get_unaligned __get_unaligned_be
-#define put_unaligned __put_unaligned_be
-#endif
-
-#endif /* _ASM_SANDBOX_UNALIGNED_H */
diff --git a/arch/efi/include/mach/debug_ll.h b/arch/efi/include/mach/debug_ll.h
deleted file mode 100644
index e144d86e0..000000000
--- a/arch/efi/include/mach/debug_ll.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <efi/debug_ll.h>
diff --git a/arch/efi/lib/.gitignore b/arch/efi/lib/.gitignore
deleted file mode 100644
index 847e31770..000000000
--- a/arch/efi/lib/.gitignore
+++ /dev/null
@@ -1,2 +0,0 @@
-elf_x86_64_efi.lds
-elf_ia32_efi.lds
diff --git a/arch/efi/lib/Makefile b/arch/efi/lib/Makefile
deleted file mode 100644
index c8a97bae0..000000000
--- a/arch/efi/lib/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-obj-$(CONFIG_X86_64) += reloc_x86_64.o crt0-efi-x86_64.o
-obj-$(CONFIG_X86_32) += reloc_ia32.o crt0-efi-ia32.o
-extra-$(CONFIG_X86_32) += elf_ia32_efi.lds
-extra-$(CONFIG_X86_64) += elf_x86_64_efi.lds
diff --git a/arch/efi/lib/asm-offsets.c b/arch/efi/lib/asm-offsets.c
deleted file mode 100644
index 22f382b71..000000000
--- a/arch/efi/lib/asm-offsets.c
+++ /dev/null
@@ -1,12 +0,0 @@
-/*
- * Generate definitions needed by assembly language modules.
- * This code generates raw asm output which is post-processed to extract
- * and format the required data.
- */
-
-#include <linux/kbuild.h>
-
-int main(void)
-{
-	return 0;
-}
diff --git a/arch/efi/lib/crt0-efi-ia32.S b/arch/efi/lib/crt0-efi-ia32.S
deleted file mode 100644
index 6f0f2e872..000000000
--- a/arch/efi/lib/crt0-efi-ia32.S
+++ /dev/null
@@ -1,76 +0,0 @@
-/* crt0-efi-ia32.S - x86 EFI startup code.
-   Copyright (C) 1999 Hewlett-Packard Co.
-	Contributed by David Mosberger <davidm@hpl.hp.com>.
-
-    All rights reserved.
-
-    Redistribution and use in source and binary forms, with or without
-    modification, are permitted provided that the following conditions
-    are met:
-
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above
-      copyright notice, this list of conditions and the following
-      disclaimer in the documentation and/or other materials
-      provided with the distribution.
-    * Neither the name of Hewlett-Packard Co. nor the names of its
-      contributors may be used to endorse or promote products derived
-      from this software without specific prior written permission.
-
-    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
-    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
-    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
-    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
-    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
-    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
-    SUCH DAMAGE.
-*/
-
-	.text
-	.align 4
-
-	.globl _start
-_start:
-	pushl %ebp
-	movl %esp,%ebp
-
-	pushl 12(%ebp)			# copy "image" argument
-	pushl  8(%ebp)			# copy "systab" argument
-
-	call 0f
-0:	popl %eax
-	movl %eax,%ebx
-
-	addl $image_base-0b,%eax		# %eax = ldbase
-	addl $_DYNAMIC-0b,%ebx		# %ebx = _DYNAMIC
-
-	pushl %ebx			# pass _DYNAMIC as second argument
-	pushl %eax			# pass ldbase as first argument
-	call _relocate
-	popl %ebx
-	popl %ebx
-	testl %eax,%eax
-	jne .exit
-
-	call efi_main			# call app with "image" and "systab" argument
-
-.exit:	leave
-	ret
-
-	/* hand-craft a dummy .reloc section so EFI knows it's a relocatable executable: */
-
-	.data
-dummy:	.long	0
-
-#define IMAGE_REL_ABSOLUTE	0
-	.section .reloc
-	.long	dummy					/* Page RVA */
-	.long	10					/* Block Size (2*4+2) */
-	.word	(IMAGE_REL_ABSOLUTE<<12) +  0		/* reloc for dummy */
diff --git a/arch/efi/lib/crt0-efi-x86_64.S b/arch/efi/lib/crt0-efi-x86_64.S
deleted file mode 100644
index aa03106e9..000000000
--- a/arch/efi/lib/crt0-efi-x86_64.S
+++ /dev/null
@@ -1,75 +0,0 @@
-/* crt0-efi-x86_64.S - x86_64 EFI startup code.
-   Copyright (C) 1999 Hewlett-Packard Co.
-	Contributed by David Mosberger <davidm@hpl.hp.com>.
-   Copyright (C) 2005 Intel Co.
-	Contributed by Fenghua Yu <fenghua.yu@intel.com>.
-
-    All rights reserved.
-
-    Redistribution and use in source and binary forms, with or without
-    modification, are permitted provided that the following conditions
-    are met:
-
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above
-      copyright notice, this list of conditions and the following
-      disclaimer in the documentation and/or other materials
-      provided with the distribution.
-    * Neither the name of Hewlett-Packard Co. nor the names of its
-      contributors may be used to endorse or promote products derived
-      from this software without specific prior written permission.
-
-    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
-    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
-    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
-    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
-    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
-    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
-    SUCH DAMAGE.
-*/
-	.text
-	.align 4
-
-	.globl _start
-_start:
-	subq $8, %rsp
-	pushq %rcx
-	pushq %rdx
-
-0:
-	lea image_base(%rip), %rdi
-	lea _DYNAMIC(%rip), %rsi
-
-	popq %rcx
-	popq %rdx
-	pushq %rcx
-	pushq %rdx
-	call _relocate
-
-	popq %rdi
-	popq %rsi
-
-	call efi_main
-	addq $8, %rsp
-
-.exit:
-	ret
-
-	/* hand-craft a dummy .reloc section so EFI knows it's a relocatable executable: */
-
-	.data
-dummy:	.long	0
-
-#define IMAGE_REL_ABSOLUTE	0
-	.section .reloc, "a"
-label1:
-	.long	dummy-label1				/* Page RVA */
-	.long	10					/* Block Size (2*4+2) */
-	.word	(IMAGE_REL_ABSOLUTE<<12) +  0		/* reloc for dummy */
diff --git a/arch/efi/lib/elf_ia32_efi.lds.S b/arch/efi/lib/elf_ia32_efi.lds.S
deleted file mode 100644
index 69f43f554..000000000
--- a/arch/efi/lib/elf_ia32_efi.lds.S
+++ /dev/null
@@ -1,106 +0,0 @@
-#include <asm-generic/barebox.lds.h>
-
-OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
-OUTPUT_ARCH(i386)
-ENTRY(_start)
-SECTIONS
-{
-	. = 0;
-	image_base = .;
-	.hash : { *(.hash) }	/* this MUST come first! */
-	. = ALIGN(4096);
-	.text :
-	{
-		_stext = .;
-		_text = .;
-		*(.text)
-		*(.text.*)
-		*(.gnu.linkonce.t.*)
-	}
-
-	_etext = .;
-
-	. = ALIGN(4096);
-	.sdata : {
-		*(.got.plt)
-		*(.got)
-		*(.srodata)
-		*(.sdata)
-		*(.sbss)
-		*(.scommon)
-	}
-
-	. = ALIGN(4096);
-	_sdata = .;
-
-	.data : {
-		*(.rodata*)
-		*(.data)
-		*(.data1)
-		*(.data.*)
-		*(.sdata)
-		*(.got.plt)
-		*(.got)
-		/* the EFI loader doesn't seem to like a .bss section, so we stick
-		 * it all into .data: */
-		*(.sbss)
-		*(.scommon)
-		*(.dynbss)
-		*(.bss)
-		*(COMMON)
-	}
-
-	. = ALIGN(64);
-
-	__barebox_initcalls_start = .;
-	__barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	__barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	. = ALIGN(64);
-	__barebox_magicvar_start = .;
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	. = ALIGN(64);
-	__barebox_cmd_start = .;
-	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	. = ALIGN(4096);
-	.dynamic : { *(.dynamic) }
-	. = ALIGN(4096);
-	.rel : {
-		*(.rel.data)
-		*(.rel.data.*)
-		*(.rel.got)
-		*(.rel.stab)
-		*(.data.rel.ro.local)
-		*(.data.rel.local)
-		*(.data.rel.ro)
-		*(.data.rel*)
-	}
-
-	. = ALIGN(4096);
-	.reloc :		/* This is the PECOFF .reloc section! */
-	{
-		*(.reloc)
-	}
-
-	. = ALIGN(4096);
-	.dynsym : { *(.dynsym) }
-	. = ALIGN(4096);
-	.dynstr : { *(.dynstr) }
-	. = ALIGN(4096);
-	/DISCARD/ :
-	{
-		*(.rel.reloc)
-		*(.eh_frame)
-		*(.note.GNU-stack)
-	}
-
-	.comment 0 : { *(.comment) }
-}
diff --git a/arch/efi/lib/elf_x86_64_efi.lds.S b/arch/efi/lib/elf_x86_64_efi.lds.S
deleted file mode 100644
index 93d34d17a..000000000
--- a/arch/efi/lib/elf_x86_64_efi.lds.S
+++ /dev/null
@@ -1,100 +0,0 @@
-#include <asm-generic/barebox.lds.h>
-
-/* Same as elf_x86_64_fbsd_efi.lds, except for OUTPUT_FORMAT below - KEEP IN SYNC */
-
-OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64", "elf64-x86-64")
-OUTPUT_ARCH(i386:x86-64)
-ENTRY(_start)
-SECTIONS
-{
-	. = 0;
-	image_base = .;
-	.hash : { *(.hash) }	/* this MUST come first! */
-	. = ALIGN(4096);
-	.eh_frame : {
-		*(.eh_frame)
-	}
-
-	. = ALIGN(4096);
-
-	.text : {
-		_stext = .;
-		_text = .;
-		*(.text)
-		*(.text.*)
-		*(.gnu.linkonce.t.*)
-	}
-
-	_etext = .;
-
-	. = ALIGN(4096);
-
-	.reloc : {
-		*(.reloc)
-	}
-
-	. = ALIGN(4096);
-	_sdata = .;
-
-	.data : {
-		*(.rodata*)
-		*(.got.plt)
-		*(.got)
-		*(.data*)
-		*(.sdata)
-		/* the EFI loader doesn't seem to like a .bss section, so we stick
-		 * it all into .data: */
-		*(.sbss)
-		*(.scommon)
-		*(.dynbss)
-		*(.bss)
-		*(COMMON)
-		*(.rel.local)
-	}
-
-	. = ALIGN(64);
-
-	__barebox_initcalls_start = .;
-	__barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	__barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	. = ALIGN(64);
-	__barebox_magicvar_start = .;
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	. = ALIGN(64);
-	__barebox_cmd_start = .;
-	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	. = ALIGN(4096);
-	.dynamic : { *(.dynamic) }
-	. = ALIGN(4096);
-
-	.rela : {
-		*(.rela.data*)
-		*(.rela.barebox*)
-		*(.rela.initcall*)
-		*(.rela.exitcall*)
-		*(.rela.got)
-		*(.rela.stab)
-	}
-
-	. = ALIGN(4096);
-	.dynsym : { *(.dynsym) }
-	. = ALIGN(4096);
-	.dynstr : { *(.dynstr) }
-	. = ALIGN(4096);
-	.ignored.reloc : {
-		*(.rela.reloc)
-		*(.eh_frame)
-		*(.note.GNU-stack)
-	}
-
-	.comment 0 : { *(.comment) }
-}
diff --git a/arch/efi/lib/reloc_ia32.c b/arch/efi/lib/reloc_ia32.c
deleted file mode 100644
index 46929631e..000000000
--- a/arch/efi/lib/reloc_ia32.c
+++ /dev/null
@@ -1,97 +0,0 @@
-/* reloc_ia32.c - position independent x86 ELF shared object relocator
-   Copyright (C) 1999 Hewlett-Packard Co.
-	Contributed by David Mosberger <davidm@hpl.hp.com>.
-
-    All rights reserved.
-
-    Redistribution and use in source and binary forms, with or without
-    modification, are permitted provided that the following conditions
-    are met:
-
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above
-      copyright notice, this list of conditions and the following
-      disclaimer in the documentation and/or other materials
-      provided with the distribution.
-    * Neither the name of Hewlett-Packard Co. nor the names of its
-      contributors may be used to endorse or promote products derived
-      from this software without specific prior written permission.
-
-    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
-    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
-    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
-    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
-    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
-    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
-    SUCH DAMAGE.
-*/
-
-#include <common.h>
-#include <efi.h>
-
-#include <elf.h>
-
-efi_status_t _relocate(long ldbase, Elf32_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
-{
-	long relsz = 0, relent = 0;
-	Elf32_Rel *rel = 0;
-	unsigned long *addr;
-	int i;
-
-	for (i = 0; dyn[i].d_tag != DT_NULL; ++i) {
-		switch (dyn[i].d_tag) {
-			case DT_REL:
-				rel = (Elf32_Rel*)
-					((unsigned long)dyn[i].d_un.d_ptr
-					 + ldbase);
-				break;
-
-			case DT_RELSZ:
-				relsz = dyn[i].d_un.d_val;
-				break;
-
-			case DT_RELENT:
-				relent = dyn[i].d_un.d_val;
-				break;
-
-			case DT_RELA:
-				break;
-
-			default:
-				break;
-		}
-	}
-
-        if (!rel && relent == 0)
-                return EFI_SUCCESS;
-
-	if (!rel || relent == 0)
-		return EFI_LOAD_ERROR;
-
-	while (relsz > 0) {
-		/* apply the relocs */
-		switch (ELF32_R_TYPE (rel->r_info)) {
-			case R_386_NONE:
-				break;
-
-			case R_386_RELATIVE:
-				addr = (unsigned long *)
-					(ldbase + rel->r_offset);
-				*addr += ldbase;
-				break;
-
-			default:
-				break;
-		}
-		rel = (Elf32_Rel*) ((char *) rel + relent);
-		relsz -= relent;
-	}
-	return EFI_SUCCESS;
-}
diff --git a/arch/efi/lib/reloc_x86_64.c b/arch/efi/lib/reloc_x86_64.c
deleted file mode 100644
index 1db72f5db..000000000
--- a/arch/efi/lib/reloc_x86_64.c
+++ /dev/null
@@ -1,96 +0,0 @@
-/* reloc_x86_64.c - position independent x86_64 ELF shared object relocator
-   Copyright (C) 1999 Hewlett-Packard Co.
-	Contributed by David Mosberger <davidm@hpl.hp.com>.
-   Copyright (C) 2005 Intel Co.
-	Contributed by Fenghua Yu <fenghua.yu@intel.com>.
-
-    All rights reserved.
-
-    Redistribution and use in source and binary forms, with or without
-    modification, are permitted provided that the following conditions
-    are met:
-
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above
-      copyright notice, this list of conditions and the following
-      disclaimer in the documentation and/or other materials
-      provided with the distribution.
-    * Neither the name of Hewlett-Packard Co. nor the names of its
-      contributors may be used to endorse or promote products derived
-      from this software without specific prior written permission.
-
-    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
-    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
-    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
-    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
-    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
-    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
-    SUCH DAMAGE.
-*/
-
-#include <common.h>
-#include <efi.h>
-
-#include <elf.h>
-
-efi_status_t _relocate (long ldbase, Elf64_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
-{
-	long relsz = 0, relent = 0;
-	Elf64_Rel *rel = 0;
-	unsigned long *addr;
-	int i;
-
-	for (i = 0; dyn[i].d_tag != DT_NULL; ++i) {
-		switch (dyn[i].d_tag) {
-			case DT_RELA:
-				rel = (Elf64_Rel*)
-					((unsigned long)dyn[i].d_un.d_ptr
-					 + ldbase);
-				break;
-
-			case DT_RELASZ:
-				relsz = dyn[i].d_un.d_val;
-				break;
-
-			case DT_RELAENT:
-				relent = dyn[i].d_un.d_val;
-				break;
-
-			default:
-				break;
-		}
-	}
-
-        if (!rel && relent == 0)
-                return EFI_SUCCESS;
-
-	if (!rel || relent == 0)
-		return EFI_LOAD_ERROR;
-
-	while (relsz > 0) {
-		/* apply the relocs */
-		switch (ELF64_R_TYPE (rel->r_info)) {
-			case R_X86_64_NONE:
-				break;
-
-			case R_X86_64_RELATIVE:
-				addr = (unsigned long *)
-					(ldbase + rel->r_offset);
-				*addr += ldbase;
-				break;
-
-			default:
-				break;
-		}
-		rel = (Elf64_Rel*) ((char *) rel + relent);
-		relsz -= relent;
-	}
-	return EFI_SUCCESS;
-}
diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 3f7332258..0d9a44a4d 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -20,6 +20,7 @@ CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
