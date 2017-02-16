Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceGUJ-0004Sm-25
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 07:28:29 +0000
Date: Thu, 16 Feb 2017 08:27:58 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170216072758.rth6weow52f7tmt2@pengutronix.de>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
 <1487187257-29082-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1487187257-29082-7-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/12] efi: move x86 efi boot support to x86 arch
To: barebox@lists.infradead.org

On Wed, Feb 15, 2017 at 08:34:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> prepare to drop the efi arch as efi boot up is not arch sepecific
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Documentation/boards/efi.rst                 |   2 +-
>  arch/x86/Kconfig                             |  53 ++++++++++++--
>  arch/x86/Makefile                            |  74 +++++++++++++++++--
>  arch/x86/configs/efi_defconfig               |  78 ++++++++++++++++++++
>  arch/x86/configs/generic_defconfig           |   1 +
>  arch/x86/include/asm/elf.h                   |  86 +++++++++++++++-------
>  arch/x86/include/asm/io.h                    |  71 +++++++++---------
>  arch/x86/include/asm/types.h                 |  51 ++++++++-----
>  arch/x86/include/asm/unaligned.h             |   5 ++
>  arch/x86/lib/Makefile                        |   2 +
>  arch/x86/lib/asm-offsets.c                   |   7 ++
>  arch/x86/mach-efi/.gitignore                 |   2 +
>  arch/x86/mach-efi/Makefile                   |   4 +
>  arch/x86/mach-efi/crt0-efi-ia32.S            |  76 +++++++++++++++++++
>  arch/x86/mach-efi/crt0-efi-x86_64.S          |  75 +++++++++++++++++++
>  arch/x86/mach-efi/elf_ia32_efi.lds.S         | 106 +++++++++++++++++++++++++++
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S       |  99 +++++++++++++++++++++++++
>  arch/x86/mach-efi/include/mach/barebox.lds.h |   0

I think this should be done instead of adding an empty file:

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c8a919b928c9..dd2d286d32ec 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -6,7 +6,7 @@
 #define STRUCT_ALIGNMENT 32
 #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
 
-#if defined CONFIG_X86 || \
+#if defined CONFIG_X86_32 || \
 	defined CONFIG_ARCH_EP93XX || \
 	defined CONFIG_ARCH_ZYNQ
 #include <mach/barebox.lds.h>

>  arch/x86/mach-efi/include/mach/debug_ll.h    |   1 +
>  arch/x86/mach-efi/reloc_ia32.c               |  97 ++++++++++++++++++++++++
>  arch/x86/mach-efi/reloc_x86_64.c             |  96 ++++++++++++++++++++++++
>  commands/Kconfig                             |   2 +-
>  commands/edit.c                              |   2 +-
>  common/memory.c                              |   2 +-
>  drivers/clocksource/Kconfig                  |   2 +-
>  drivers/net/Kconfig                          |   2 +-
>  drivers/of/Kconfig                           |   2 +-
>  drivers/serial/Kconfig                       |   2 +-
>  fs/Kconfig                                   |   4 +-
>  include/efi.h                                |   2 +-
>  30 files changed, 899 insertions(+), 107 deletions(-)
>  create mode 100644 arch/x86/configs/efi_defconfig
>  rewrite arch/x86/include/asm/elf.h (97%)
>  create mode 100644 arch/x86/mach-efi/.gitignore
>  create mode 100644 arch/x86/mach-efi/Makefile
>  create mode 100644 arch/x86/mach-efi/crt0-efi-ia32.S
>  create mode 100644 arch/x86/mach-efi/crt0-efi-x86_64.S
>  create mode 100644 arch/x86/mach-efi/elf_ia32_efi.lds.S
>  create mode 100644 arch/x86/mach-efi/elf_x86_64_efi.lds.S
>  create mode 100644 arch/x86/mach-efi/include/mach/barebox.lds.h
>  create mode 100644 arch/x86/mach-efi/include/mach/debug_ll.h
>  create mode 100644 arch/x86/mach-efi/reloc_ia32.c
>  create mode 100644 arch/x86/mach-efi/reloc_x86_64.c
> 
> diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
> index b7ad40e47..ecadb3ebb 100644
> --- a/Documentation/boards/efi.rst
> +++ b/Documentation/boards/efi.rst
> @@ -25,7 +25,7 @@ Use the following to build barebox for EFI:
>  
>  .. code-block:: sh
>  
> -  export ARCH=efi
> +  export ARCH=x86
>    make efi_defconfig
>    make
>  
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 346640dcd..9803f3f95 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -1,9 +1,16 @@
>  #
>  #
>  #
> +config X86
> +	bool
> +	select HAS_KALLSYMS
> +	select GENERIC_FIND_NEXT_BIT
> +	default y
> +
>  config ARCH_TEXT_BASE
>  	hex
>  	default 0x00007c00 if MACH_X86_GENERIC
> +	default 0x0 if MACH_EFI_GENERIC
>  
>  config BOARD_LINKER_SCRIPT
>  	bool
> @@ -14,17 +21,33 @@ config GENERIC_LINKER_SCRIPT
>  	default y
>  	depends on !BOARD_LINKER_SCRIPT
>  
> -config X86
> +menu "ARCH specific settings"
> +
> +config 64BIT
> +	def_bool y if X86_EFI
> +	help
> +	  Say yes to build a 64-bit binary - formerly known as x86_64
> +	  Say no to build a 32-bit binary - formerly known as i386.
> +
> +	  32-bit support currently does not compile and is not tested
> +	  due to the lack of hardware.
> +
> +config X86_32
> +	def_bool y
> +	depends on !64BIT
> +
> +config X86_64
> +	def_bool y
> +	depends on 64BIT
> +
> +endmenu
> +
> +config X86_BOOTLOADER
>  	bool
> -	select HAS_KALLSYMS
> +	select X86_32
>  	select HAS_MODULES
>  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	select HAVE_CONFIGURABLE_TEXT_BASE
> -	select GENERIC_FIND_NEXT_BIT
> -	default y
> -
> -config X86_BOOTLOADER
> -	bool
>  
>  choice
>  	prompt "Select your board"
> @@ -32,14 +55,30 @@ choice
>  config MACH_X86_GENERIC
>  	bool "Generic x86"
>  	select X86_BOOTLOADER
> +	depends on !X86_EFI 
>  	help
>  	  Say Y here if you want barebox to be your BIOS based bootloader
>  
> +config MACH_EFI_GENERIC
> +	bool "Generic EFI"
> +	depends on X86_EFI 
> +	select HAS_DEBUG_LL
> +	help
> +	  Say Y here if you want barebox to be your EFI based bootloader
> +
>  endchoice
>  
>  choice
>  	prompt "Bring up type"
>  
> +	config X86_EFI
> +		bool "EFI"
> +		select EFI_BOOTUP
> +		select EFI_GUID
> +		select EFI_DEVICEPATH
> +		select PRINTF_UUID
> +		select CLOCKSOURCE_EFI
> +
>  	config X86_BIOS_BRINGUP
>  		bool "16 bit BIOS"
>  		help
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 640c24b62..e837a2df9 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -1,20 +1,47 @@
>  KBUILD_DEFCONFIG := generic_defconfig
>  
> -CPPFLAGS += -D__X86__ -fno-strict-aliasing
> +CPPFLAGS += -D__X86__
>  
> -board-y := x86_generic
> -machine-y := i386
> +board-$(CONFIG_MACH_X86_GENERIC) := x86_generic
>  
>  TEXT_BASE = $(CONFIG_TEXT_BASE)
>  
> -CPPFLAGS += -march=i386 -m32 -DTEXT_BASE=$(TEXT_BASE) \
> +ifeq ($(CONFIG_X86_EFI),y)
> +machine-y := efi
> +CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
> +ifeq ($(CONFIG_X86_32),y)
> +	TARGET = efi-app-ia32
> +else
> +	TARGET = efi-app-x86_64
> +endif
> +else
> +CPPFLAGS += -fno-strict-aliasing
> +CPPFLAGS += -march=i386 -DTEXT_BASE=$(TEXT_BASE) \
>  	-fno-unwind-tables -fno-asynchronous-unwind-tables
> -LDFLAGS += -m elf_i386
> +
> +machine-y := i386
> +endif
> +
> +ifeq ($(CONFIG_X86_32),y)
> +	UTS_MACHINE := i386
> +	biarch := $(call cc-option,-m32)
> +	AFLAGS += $(biarch)
> +	CFLAGS += $(biarch)
> +	CPPFLAGS += $(biarch)
> +else
> +	UTS_MACHINE := x86_64
> +	AFLAGS += -m64
> +	CFLAGS += -m64 -mno-red-zone
> +	CPPFLAGS += -m64
> +endif
> +
>  
>  ifndef CONFIG_MODULES
>  # Add cleanup flags
> +ifneq ($(CONFIG_X86_EFI),y)
>  CPPFLAGS += -fdata-sections -ffunction-sections
> -LDFLAGS_uboot += -static --gc-sections
> +LDFLAGS_barebox += -static --gc-sections
> +endif
>  endif
>  
>  machdirs := $(patsubst %,arch/x86/mach-%/,$(machine-y))
> @@ -39,13 +66,46 @@ endif
>  
>  common-y += $(BOARD) $(MACH)
>  common-y += arch/x86/lib/
> -common-y += arch/x86/boot/
>  common-$(CONFIG_X86_BIOS_BRINGUP) += arch/x86/bios/
>  
>  # arch/x86/cpu/
>  
> +ifeq ($(CONFIG_X86_EFI),y)
> +lds-$(CONFIG_X86_32)   := arch/x86/mach-efi/elf_ia32_efi.lds
> +lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
> +
> +cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
> +		-T $(lds-y)					\
> +		-shared -Bsymbolic -nostdlib -znocombreloc	\
> +		--start-group $(barebox-common)			\
> +		--end-group					\
> +		$(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
> +
> +quiet_cmd_efi_image = EFI-IMG $@
> +      cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
> +		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
I think you created this from ther version before
71f0587f2049397d86e9eee7983bce623de5fb5e ("efi: include and execute exit
calls"). So this is missing:

		      -j __barebox_exitcalls \

and below...

> +		      -j __barebox_cmd -j .barebox_magicvar -j .bbenv.* \
> +		      --target=$(TARGET) $< $@
> +
> +KBUILD_BINARY := barebox
> +
> +LDFLAGS := --no-undefined
> +
> +barebox.efi: $(KBUILD_BINARY) FORCE
> +	$(call if_changed,efi_image)
> +
> +KBUILD_IMAGE := barebox.efi
> +
> +else
> +common-y += arch/x86/boot/
> +
>  lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/x86/lib/barebox.lds
>  lds-$(CONFIG_BOARD_LINKER_SCRIPT)     := $(BOARD)/barebox.lds
>  
> +endif
> +
> +LDFLAGS += -m elf_$(UTS_MACHINE)
> +
> +CLEAN_FILES += $(lds-y)
>  CLEAN_FILES    += arch/x86/lib/barebox.lds barebox.map barebox.S
>  
> diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
> new file mode 100644
> index 000000000..3f7332258
> --- /dev/null
> +++ b/arch/x86/configs/efi_defconfig
> @@ -0,0 +1,78 @@
> +CONFIG_MMU=y
> +CONFIG_MALLOC_SIZE=0x0
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +# CONFIG_TIMESTAMP is not set
> +CONFIG_BOOTM_SHOW_TYPE=y
> +CONFIG_BOOTM_VERBOSE=y
> +CONFIG_BOOTM_INITRD=y
> +CONFIG_BOOTM_OFTREE=y
> +CONFIG_BLSPEC=y
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
> +CONFIG_PARTITION_DISK_EFI=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_POLLER=y
> +CONFIG_DEBUG_INFO=y
> +CONFIG_DEBUG_LL=y
> +CONFIG_LONGHELP=y
> +CONFIG_CMD_IOMEM=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_UIMAGE=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_LOADENV=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_MAGICVAR=y
> +CONFIG_CMD_MAGICVAR_HELP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_FILETYPE=y
> +CONFIG_CMD_LN=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_LET=y
> +CONFIG_CMD_MSLEEP=y
> +CONFIG_CMD_READF=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_DHCP=y
> +CONFIG_CMD_HOST=y
> +CONFIG_CMD_PING=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENUTREE=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_CRC=y
> +CONFIG_CMD_CRC_CMP=y
> +CONFIG_CMD_MM=y
> +CONFIG_CMD_DETECT=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_2048=y
> +CONFIG_CMD_BAREBOX_UPDATE=y
> +CONFIG_CMD_OF_NODE=y
> +CONFIG_CMD_OF_PROPERTY=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_TIME=y
> +CONFIG_NET=y
> +CONFIG_NET_NFS=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_DRIVER_SERIAL_EFI_STDIO=y
> +CONFIG_DRIVER_SERIAL_NS16550=y
> +CONFIG_DRIVER_NET_EFI_SNP=y
> +# CONFIG_SPI is not set
> +CONFIG_DISK=y
> +CONFIG_FS_EXT4=y
> +CONFIG_FS_TFTP=y
> +CONFIG_FS_NFS=y
> +CONFIG_FS_EFI=y
> +CONFIG_FS_EFIVARFS=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_WRITE=y
> +CONFIG_FS_FAT_LFN=y
> diff --git a/arch/x86/configs/generic_defconfig b/arch/x86/configs/generic_defconfig
> index 5ff7f531e..3b94e02a7 100644
> --- a/arch/x86/configs/generic_defconfig
> +++ b/arch/x86/configs/generic_defconfig
> @@ -1,3 +1,4 @@
> +CONFIG_X86_BIOS_BRINGUP=y
>  CONFIG_X86_HDBOOT=y
>  CONFIG_STACK_SIZE=0x7000
>  CONFIG_EXPERIMENTAL=y
> diff --git a/arch/x86/include/asm/elf.h b/arch/x86/include/asm/elf.h
> dissimilarity index 97%
> index 94a40c624..ddde03518 100644
> --- a/arch/x86/include/asm/elf.h
> +++ b/arch/x86/include/asm/elf.h
> @@ -1,26 +1,60 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> -
> -/**
> - * @file
> - * @brief x86 specific elf information
> - *
> - */
> -
> -#ifndef _ASM_X86_ELF_H
> -#define _ASM_X86_ELF_H
> -
> -#define ELF_CLASS ELFCLASS32
> -
> -#endif /* _ASM_X86_ELF_H */
> +#ifndef __ASM_SANDBOX_ELF_H__
> +#define __ASM_SANDBOX_ELF_H__
> +
> +#ifdef __i386__
> +
> +typedef struct user_fxsr_struct elf_fpxregset_t;
> +
> +#define R_386_NONE	0
> +#define R_386_32	1
> +#define R_386_PC32	2
> +#define R_386_GOT32	3
> +#define R_386_PLT32	4
> +#define R_386_COPY	5
> +#define R_386_GLOB_DAT	6
> +#define R_386_JMP_SLOT	7
> +#define R_386_RELATIVE	8
> +#define R_386_GOTOFF	9
> +#define R_386_GOTPC	10
> +#define R_386_NUM	11
> +
> +/*
> + * These are used to set parameters in the core dumps.
> + */
> +#define ELF_CLASS	ELFCLASS32
> +#define ELF_DATA	ELFDATA2LSB
> +#define ELF_ARCH	EM_386
> +
> +#else
> +
> +/* x86-64 relocation types */
> +#define R_X86_64_NONE		0	/* No reloc */
> +#define R_X86_64_64		1	/* Direct 64 bit  */
> +#define R_X86_64_PC32		2	/* PC relative 32 bit signed */
> +#define R_X86_64_GOT32		3	/* 32 bit GOT entry */
> +#define R_X86_64_PLT32		4	/* 32 bit PLT address */
> +#define R_X86_64_COPY		5	/* Copy symbol at runtime */
> +#define R_X86_64_GLOB_DAT	6	/* Create GOT entry */
> +#define R_X86_64_JUMP_SLOT	7	/* Create PLT entry */
> +#define R_X86_64_RELATIVE	8	/* Adjust by program base */
> +#define R_X86_64_GOTPCREL	9	/* 32 bit signed pc relative
> +					   offset to GOT */
> +#define R_X86_64_32		10	/* Direct 32 bit zero extended */
> +#define R_X86_64_32S		11	/* Direct 32 bit sign extended */
> +#define R_X86_64_16		12	/* Direct 16 bit zero extended */
> +#define R_X86_64_PC16		13	/* 16 bit sign extended pc relative */
> +#define R_X86_64_8		14	/* Direct 8 bit sign extended  */
> +#define R_X86_64_PC8		15	/* 8 bit sign extended pc relative */
> +
> +#define R_X86_64_NUM		16
> +
> +/*
> + * These are used to set parameters in the core dumps.
> + */
> +#define ELF_CLASS	ELFCLASS64
> +#define ELF_DATA	ELFDATA2LSB
> +#define ELF_ARCH	EM_X86_64
> +
> +#endif
> +
> +#endif /* __ASM_SANDBOX_ELF_H__ */
> diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
> index f02051056..df4bc99ec 100644
> --- a/arch/x86/include/asm/io.h
> +++ b/arch/x86/include/asm/io.h
> @@ -12,44 +12,6 @@
>  
>  #include <asm/byteorder.h>
>  
> -#define	IO_SPACE_LIMIT	0xffff
> -
> -static inline void outb(unsigned char value, int port)
> -{
> -	asm volatile("outb %b0, %w1" : : "a"(value), "Nd"(port));
> -}
> -
> -static inline void outw(unsigned short value, int port)
> -{
> -	asm volatile("outw %w0, %w1" : : "a"(value), "Nd"(port));
> -}
> -
> -static inline void outl(unsigned long value, int port)
> -{
> -	asm volatile("outl %0, %w1" : : "a"(value), "Nd"(port));
> -}
> -
> -static inline unsigned char inb(int port)
> -{
> -	unsigned char value;
> -	asm volatile("inb %w1, %b0" : "=a"(value) : "Nd"(port));
> -	return value;
> -}
> -
> -static inline unsigned short inw(int port)
> -{
> -	unsigned short value;
> -	asm volatile("inw %w1, %w0" : "=a"(value) : "Nd"(port));
> -	return value;
> -}
> -
> -static inline unsigned long inl(int port)
> -{
> -	unsigned long value;
> -	asm volatile("inl %w1, %0" : "=a"(value) : "Nd"(port));
> -	return value;
> -}
> -
>  #define build_mmio_read(name, size, type, reg, barrier) \
>   static inline type name(const volatile void *addr) \
>   { type ret; asm volatile("mov" size " %1,%0":reg (ret) \
> @@ -68,6 +30,39 @@ build_mmio_write(writeb, "b", unsigned char, "q", :"memory")
>  build_mmio_write(writew, "w", unsigned short, "r", :"memory")
>  build_mmio_write(writel, "l", unsigned int, "r", :"memory")
>  
> +#define BUILDIO(bwl, bw, type)						\
> +static inline void out##bwl(unsigned type value, int port)		\
> +{									\
> +	asm volatile("out" #bwl " %" #bw "0, %w1"			\
> +		     : : "a"(value), "Nd"(port));			\
> +}									\
> +									\
> +static inline unsigned type in##bwl(int port)				\
> +{									\
> +	unsigned type value;						\
> +	asm volatile("in" #bwl " %w1, %" #bw "0"			\
> +		     : "=a"(value) : "Nd"(port));			\
> +	return value;							\
> +}									\
> +									\
> +static inline void outs##bwl(int port, const void *addr, unsigned long count) \
> +{									\
> +	asm volatile("rep; outs" #bwl					\
> +		     : "+S"(addr), "+c"(count) : "d"(port));		\
> +}									\
> +									\
> +static inline void ins##bwl(int port, void *addr, unsigned long count)	\
> +{									\
> +	asm volatile("rep; ins" #bwl					\
> +		     : "+D"(addr), "+c"(count) : "d"(port));		\
> +}
> +
> +BUILDIO(b, b, char)
> +BUILDIO(w, w, short)
> +BUILDIO(l, , int)
> +
> +#define  IO_SPACE_LIMIT  0xffff
> +
>  /* do a tiny io delay */
>  static inline void io_delay(void)
>  {
> diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
> index 7349ba03c..3caac398d 100644
> --- a/arch/x86/include/asm/types.h
> +++ b/arch/x86/include/asm/types.h
> @@ -1,21 +1,29 @@
> +#ifndef __ASM_I386_TYPES_H
> +#define __ASM_I386_TYPES_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#ifdef __x86_64__
> +/*
> + * This is used in dlmalloc. On X86_64 we need it to be
> + * 64 bit
> + */
> +#define INTERNAL_SIZE_T unsigned long
> +
>  /*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> + * This is a Kconfig variable in the Kernel, but we want to detect
> + * this during compile time, so we set it here.
>   */
> +#define CONFIG_PHYS_ADDR_T_64BIT
>  
> -#ifndef __ASM_X86_TYPES_H
> -#define __ASM_X86_TYPES_H
> +#endif
>  
> -#ifndef __ASSEMBLY__
> +typedef unsigned short umode_t;
> +
> +/*
> + * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> + * header files exported to user space
> + */
>  
>  typedef __signed__ char __s8;
>  typedef unsigned char __u8;
> @@ -26,8 +34,15 @@ typedef unsigned short __u16;
>  typedef __signed__ int __s32;
>  typedef unsigned int __u32;
>  
> +#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
>  typedef __signed__ long long __s64;
>  typedef unsigned long long __u64;
> +#endif
> +
> +/*
> + * These aren't exported outside the kernel to avoid name space clashes
> + */
> +#ifdef __KERNEL__
>  
>  typedef signed char s8;
>  typedef unsigned char u8;
> @@ -41,10 +56,10 @@ typedef unsigned int u32;
>  typedef signed long long s64;
>  typedef unsigned long long u64;
>  
> -typedef unsigned short umode_t;
> +#include <asm/bitsperlong.h>
>  
> -#include <asm-generic/bitsperlong.h>
> +#endif /* __KERNEL__ */
>  
> -#endif /* __ASSEMBLY__ */
> +#endif
>  
> -#endif /* __ASM_X86_TYPES_H */
> +#endif
> diff --git a/arch/x86/include/asm/unaligned.h b/arch/x86/include/asm/unaligned.h
> index a7bd416b4..7e38706c5 100644
> --- a/arch/x86/include/asm/unaligned.h
> +++ b/arch/x86/include/asm/unaligned.h
> @@ -8,7 +8,12 @@
>  #include <linux/unaligned/access_ok.h>
>  #include <linux/unaligned/generic.h>
>  
> +#if __BYTE_ORDER == __LITTLE_ENDIAN
>  #define get_unaligned __get_unaligned_le
>  #define put_unaligned __put_unaligned_le
> +#else
> +#define get_unaligned __get_unaligned_be
> +#define put_unaligned __put_unaligned_be
> +#endif
>  
>  #endif /* _ASM_X86_UNALIGNED_H */
> diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
> index 6054b9e3f..05e43f0f2 100644
> --- a/arch/x86/lib/Makefile
> +++ b/arch/x86/lib/Makefile
> @@ -1,6 +1,8 @@
>  extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
> +ifneq ($(CONFIG_X86_EFI),y)
>  obj-y += memory.o
>  obj-y += gdt.o
> +endif
>  
>  # needed, when running via a 16 bit BIOS
>  obj-$(CONFIG_CMD_LINUX16) += linux_start.o
> diff --git a/arch/x86/lib/asm-offsets.c b/arch/x86/lib/asm-offsets.c
> index b1be3e539..0f9c47eaa 100644
> --- a/arch/x86/lib/asm-offsets.c
> +++ b/arch/x86/lib/asm-offsets.c
> @@ -6,6 +6,13 @@
>  
>  #include <linux/kbuild.h>
>  
> +#ifdef CONFIG_EFI_BOOTUP
> +int main(void)
> +{
> +	return 0;
> +}
> +#else
>  void common(void)
>  {
>  }
> +#endif
> diff --git a/arch/x86/mach-efi/.gitignore b/arch/x86/mach-efi/.gitignore
> new file mode 100644
> index 000000000..847e31770
> --- /dev/null
> +++ b/arch/x86/mach-efi/.gitignore
> @@ -0,0 +1,2 @@
> +elf_x86_64_efi.lds
> +elf_ia32_efi.lds
> diff --git a/arch/x86/mach-efi/Makefile b/arch/x86/mach-efi/Makefile
> new file mode 100644
> index 000000000..c8a97bae0
> --- /dev/null
> +++ b/arch/x86/mach-efi/Makefile
> @@ -0,0 +1,4 @@
> +obj-$(CONFIG_X86_64) += reloc_x86_64.o crt0-efi-x86_64.o
> +obj-$(CONFIG_X86_32) += reloc_ia32.o crt0-efi-ia32.o
> +extra-$(CONFIG_X86_32) += elf_ia32_efi.lds
> +extra-$(CONFIG_X86_64) += elf_x86_64_efi.lds
> diff --git a/arch/x86/mach-efi/crt0-efi-ia32.S b/arch/x86/mach-efi/crt0-efi-ia32.S
> new file mode 100644
> index 000000000..6f0f2e872
> --- /dev/null
> +++ b/arch/x86/mach-efi/crt0-efi-ia32.S
> @@ -0,0 +1,76 @@
> +/* crt0-efi-ia32.S - x86 EFI startup code.
> +   Copyright (C) 1999 Hewlett-Packard Co.
> +	Contributed by David Mosberger <davidm@hpl.hp.com>.
> +
> +    All rights reserved.
> +
> +    Redistribution and use in source and binary forms, with or without
> +    modification, are permitted provided that the following conditions
> +    are met:
> +
> +    * Redistributions of source code must retain the above copyright
> +      notice, this list of conditions and the following disclaimer.
> +    * Redistributions in binary form must reproduce the above
> +      copyright notice, this list of conditions and the following
> +      disclaimer in the documentation and/or other materials
> +      provided with the distribution.
> +    * Neither the name of Hewlett-Packard Co. nor the names of its
> +      contributors may be used to endorse or promote products derived
> +      from this software without specific prior written permission.
> +
> +    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
> +    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
> +    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> +    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
> +    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
> +    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
> +    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
> +    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
> +    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
> +    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> +    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
> +    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
> +    SUCH DAMAGE.
> +*/
> +
> +	.text
> +	.align 4
> +
> +	.globl _start
> +_start:
> +	pushl %ebp
> +	movl %esp,%ebp
> +
> +	pushl 12(%ebp)			# copy "image" argument
> +	pushl  8(%ebp)			# copy "systab" argument
> +
> +	call 0f
> +0:	popl %eax
> +	movl %eax,%ebx
> +
> +	addl $image_base-0b,%eax		# %eax = ldbase
> +	addl $_DYNAMIC-0b,%ebx		# %ebx = _DYNAMIC
> +
> +	pushl %ebx			# pass _DYNAMIC as second argument
> +	pushl %eax			# pass ldbase as first argument
> +	call _relocate
> +	popl %ebx
> +	popl %ebx
> +	testl %eax,%eax
> +	jne .exit
> +
> +	call efi_main			# call app with "image" and "systab" argument
> +
> +.exit:	leave
> +	ret
> +
> +	/* hand-craft a dummy .reloc section so EFI knows it's a relocatable executable: */
> +
> +	.data
> +dummy:	.long	0
> +
> +#define IMAGE_REL_ABSOLUTE	0
> +	.section .reloc
> +	.long	dummy					/* Page RVA */
> +	.long	10					/* Block Size (2*4+2) */
> +	.word	(IMAGE_REL_ABSOLUTE<<12) +  0		/* reloc for dummy */
> diff --git a/arch/x86/mach-efi/crt0-efi-x86_64.S b/arch/x86/mach-efi/crt0-efi-x86_64.S
> new file mode 100644
> index 000000000..aa03106e9
> --- /dev/null
> +++ b/arch/x86/mach-efi/crt0-efi-x86_64.S
> @@ -0,0 +1,75 @@
> +/* crt0-efi-x86_64.S - x86_64 EFI startup code.
> +   Copyright (C) 1999 Hewlett-Packard Co.
> +	Contributed by David Mosberger <davidm@hpl.hp.com>.
> +   Copyright (C) 2005 Intel Co.
> +	Contributed by Fenghua Yu <fenghua.yu@intel.com>.
> +
> +    All rights reserved.
> +
> +    Redistribution and use in source and binary forms, with or without
> +    modification, are permitted provided that the following conditions
> +    are met:
> +
> +    * Redistributions of source code must retain the above copyright
> +      notice, this list of conditions and the following disclaimer.
> +    * Redistributions in binary form must reproduce the above
> +      copyright notice, this list of conditions and the following
> +      disclaimer in the documentation and/or other materials
> +      provided with the distribution.
> +    * Neither the name of Hewlett-Packard Co. nor the names of its
> +      contributors may be used to endorse or promote products derived
> +      from this software without specific prior written permission.
> +
> +    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
> +    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
> +    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> +    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
> +    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
> +    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
> +    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
> +    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
> +    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
> +    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> +    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
> +    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
> +    SUCH DAMAGE.
> +*/
> +	.text
> +	.align 4
> +
> +	.globl _start
> +_start:
> +	subq $8, %rsp
> +	pushq %rcx
> +	pushq %rdx
> +
> +0:
> +	lea image_base(%rip), %rdi
> +	lea _DYNAMIC(%rip), %rsi
> +
> +	popq %rcx
> +	popq %rdx
> +	pushq %rcx
> +	pushq %rdx
> +	call _relocate
> +
> +	popq %rdi
> +	popq %rsi
> +
> +	call efi_main
> +	addq $8, %rsp
> +
> +.exit:
> +	ret
> +
> +	/* hand-craft a dummy .reloc section so EFI knows it's a relocatable executable: */
> +
> +	.data
> +dummy:	.long	0
> +
> +#define IMAGE_REL_ABSOLUTE	0
> +	.section .reloc, "a"
> +label1:
> +	.long	dummy-label1				/* Page RVA */
> +	.long	10					/* Block Size (2*4+2) */
> +	.word	(IMAGE_REL_ABSOLUTE<<12) +  0		/* reloc for dummy */
> diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
> new file mode 100644
> index 000000000..69f43f554
> --- /dev/null
> +++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
> @@ -0,0 +1,106 @@
> +#include <asm-generic/barebox.lds.h>
> +
> +OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
> +OUTPUT_ARCH(i386)
> +ENTRY(_start)
> +SECTIONS
> +{
> +	. = 0;
> +	image_base = .;
> +	.hash : { *(.hash) }	/* this MUST come first! */
> +	. = ALIGN(4096);
> +	.text :
> +	{
> +		_stext = .;
> +		_text = .;
> +		*(.text)
> +		*(.text.*)
> +		*(.gnu.linkonce.t.*)
> +	}
> +
> +	_etext = .;
> +
> +	. = ALIGN(4096);
> +	.sdata : {
> +		*(.got.plt)
> +		*(.got)
> +		*(.srodata)
> +		*(.sdata)
> +		*(.sbss)
> +		*(.scommon)
> +	}
> +
> +	. = ALIGN(4096);
> +	_sdata = .;
> +
> +	.data : {
> +		*(.rodata*)
> +		*(.data)
> +		*(.data1)
> +		*(.data.*)
> +		*(.sdata)
> +		*(.got.plt)
> +		*(.got)
> +		/* the EFI loader doesn't seem to like a .bss section, so we stick
> +		 * it all into .data: */
> +		*(.sbss)
> +		*(.scommon)
> +		*(.dynbss)
> +		*(.bss)
> +		*(COMMON)
> +	}
> +
> +	. = ALIGN(64);
> +
> +	__barebox_initcalls_start = .;
> +	__barebox_initcalls : { INITCALLS }
> +	__barebox_initcalls_end = .;
> +
> +	__barebox_exitcalls_start = .;
> +	__barebox_exitcalls : { EXITCALLS }
> +	__barebox_exitcalls_end = .;
> +
> +	. = ALIGN(64);
> +	__barebox_magicvar_start = .;
> +	.barebox_magicvar : { BAREBOX_MAGICVARS }
> +	__barebox_magicvar_end = .;
> +
> +	. = ALIGN(64);
> +	__barebox_cmd_start = .;
> +	__barebox_cmd : { BAREBOX_CMDS }
> +	__barebox_cmd_end = .;
> +
> +	. = ALIGN(4096);
> +	.dynamic : { *(.dynamic) }
> +	. = ALIGN(4096);
> +	.rel : {
> +		*(.rel.data)
> +		*(.rel.data.*)
> +		*(.rel.got)
> +		*(.rel.stab)
> +		*(.data.rel.ro.local)
> +		*(.data.rel.local)
> +		*(.data.rel.ro)
> +		*(.data.rel*)
> +	}
> +
> +	. = ALIGN(4096);
> +	.reloc :		/* This is the PECOFF .reloc section! */
> +	{
> +		*(.reloc)
> +	}
> +
> +	. = ALIGN(4096);
> +	.dynsym : { *(.dynsym) }
> +	. = ALIGN(4096);
> +	.dynstr : { *(.dynstr) }
> +	. = ALIGN(4096);
> +	/DISCARD/ :
> +	{
> +		*(.rel.reloc)
> +		*(.eh_frame)
> +		*(.note.GNU-stack)
> +	}
> +
> +	.comment 0 : { *(.comment) }
> +}
> diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> new file mode 100644
> index 000000000..e1bc2120f
> --- /dev/null
> +++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> @@ -0,0 +1,99 @@
> +#include <asm-generic/barebox.lds.h>
> +
> +/* Same as elf_x86_64_fbsd_efi.lds, except for OUTPUT_FORMAT below - KEEP IN SYNC */
> +
> +OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64", "elf64-x86-64")
> +OUTPUT_ARCH(i386:x86-64)
> +ENTRY(_start)
> +SECTIONS
> +{
> +	. = 0;
> +	image_base = .;
> +	.hash : { *(.hash) }	/* this MUST come first! */
> +	. = ALIGN(4096);
> +	.eh_frame : {
> +		*(.eh_frame)
> +	}
> +
> +	. = ALIGN(4096);
> +
> +	.text : {
> +		_stext = .;
> +		_text = .;
> +		*(.text)
> +		*(.text.*)
> +		*(.gnu.linkonce.t.*)
> +	}
> +
> +	_etext = .;
> +
> +	. = ALIGN(4096);
> +
> +	.reloc : {
> +		*(.reloc)
> +	}
> +
> +	. = ALIGN(4096);
> +	_sdata = .;
> +
> +	.data : {
> +		*(.rodata*)
> +		*(.got.plt)
> +		*(.got)
> +		*(.data*)
> +		*(.sdata)
> +		/* the EFI loader doesn't seem to like a .bss section, so we stick
> +		 * it all into .data: */
> +		*(.sbss)
> +		*(.scommon)
> +		*(.dynbss)
> +		*(.bss)
> +		*(COMMON)
> +		*(.rel.local)
> +	}
> +
> +	. = ALIGN(64);
> +
> +	__barebox_initcalls_start = .;
> +	__barebox_initcalls : { INITCALLS }
> +	__barebox_initcalls_end = .;
> +
> +	__barebox_exitcalls_start = .;
> +	__barebox_exitcalls : { EXITCALLS }
> +	__barebox_exitcalls_end = .;
> +
> +	. = ALIGN(64);
> +	__barebox_magicvar_start = .;
> +	.barebox_magicvar : { BAREBOX_MAGICVARS }
> +	__barebox_magicvar_end = .;
> +
> +	. = ALIGN(64);
> +	__barebox_cmd_start = .;
> +	__barebox_cmd : { BAREBOX_CMDS }
> +	__barebox_cmd_end = .;
> +
> +	. = ALIGN(4096);
> +	.dynamic : { *(.dynamic) }
> +	. = ALIGN(4096);
> +
> +	.rela : {
> +		*(.rela.data*)
> +		*(.rela.barebox*)
> +		*(.rela.initcall*)

... and here:

		*(.rela.exitcall*)

Regards,
Michael

> +		*(.rela.got)
> +		*(.rela.stab)
> +	}
> +
> +	. = ALIGN(4096);
> +	.dynsym : { *(.dynsym) }
> +	. = ALIGN(4096);
> +	.dynstr : { *(.dynstr) }
> +	. = ALIGN(4096);
> +	.ignored.reloc : {
> +		*(.rela.reloc)
> +		*(.eh_frame)
> +		*(.note.GNU-stack)
> +	}
> +
> +	.comment 0 : { *(.comment) }
> +}
> diff --git a/arch/x86/mach-efi/include/mach/barebox.lds.h b/arch/x86/mach-efi/include/mach/barebox.lds.h
> new file mode 100644
> index 000000000..e69de29bb
> diff --git a/arch/x86/mach-efi/include/mach/debug_ll.h b/arch/x86/mach-efi/include/mach/debug_ll.h
> new file mode 100644
> index 000000000..e144d86e0
> --- /dev/null
> +++ b/arch/x86/mach-efi/include/mach/debug_ll.h
> @@ -0,0 +1 @@
> +#include <efi/debug_ll.h>
> diff --git a/arch/x86/mach-efi/reloc_ia32.c b/arch/x86/mach-efi/reloc_ia32.c
> new file mode 100644
> index 000000000..46929631e
> --- /dev/null
> +++ b/arch/x86/mach-efi/reloc_ia32.c
> @@ -0,0 +1,97 @@
> +/* reloc_ia32.c - position independent x86 ELF shared object relocator
> +   Copyright (C) 1999 Hewlett-Packard Co.
> +	Contributed by David Mosberger <davidm@hpl.hp.com>.
> +
> +    All rights reserved.
> +
> +    Redistribution and use in source and binary forms, with or without
> +    modification, are permitted provided that the following conditions
> +    are met:
> +
> +    * Redistributions of source code must retain the above copyright
> +      notice, this list of conditions and the following disclaimer.
> +    * Redistributions in binary form must reproduce the above
> +      copyright notice, this list of conditions and the following
> +      disclaimer in the documentation and/or other materials
> +      provided with the distribution.
> +    * Neither the name of Hewlett-Packard Co. nor the names of its
> +      contributors may be used to endorse or promote products derived
> +      from this software without specific prior written permission.
> +
> +    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
> +    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
> +    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> +    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
> +    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
> +    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
> +    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
> +    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
> +    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
> +    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> +    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
> +    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
> +    SUCH DAMAGE.
> +*/
> +
> +#include <common.h>
> +#include <efi.h>
> +
> +#include <elf.h>
> +
> +efi_status_t _relocate(long ldbase, Elf32_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
> +{
> +	long relsz = 0, relent = 0;
> +	Elf32_Rel *rel = 0;
> +	unsigned long *addr;
> +	int i;
> +
> +	for (i = 0; dyn[i].d_tag != DT_NULL; ++i) {
> +		switch (dyn[i].d_tag) {
> +			case DT_REL:
> +				rel = (Elf32_Rel*)
> +					((unsigned long)dyn[i].d_un.d_ptr
> +					 + ldbase);
> +				break;
> +
> +			case DT_RELSZ:
> +				relsz = dyn[i].d_un.d_val;
> +				break;
> +
> +			case DT_RELENT:
> +				relent = dyn[i].d_un.d_val;
> +				break;
> +
> +			case DT_RELA:
> +				break;
> +
> +			default:
> +				break;
> +		}
> +	}
> +
> +        if (!rel && relent == 0)
> +                return EFI_SUCCESS;
> +
> +	if (!rel || relent == 0)
> +		return EFI_LOAD_ERROR;
> +
> +	while (relsz > 0) {
> +		/* apply the relocs */
> +		switch (ELF32_R_TYPE (rel->r_info)) {
> +			case R_386_NONE:
> +				break;
> +
> +			case R_386_RELATIVE:
> +				addr = (unsigned long *)
> +					(ldbase + rel->r_offset);
> +				*addr += ldbase;
> +				break;
> +
> +			default:
> +				break;
> +		}
> +		rel = (Elf32_Rel*) ((char *) rel + relent);
> +		relsz -= relent;
> +	}
> +	return EFI_SUCCESS;
> +}
> diff --git a/arch/x86/mach-efi/reloc_x86_64.c b/arch/x86/mach-efi/reloc_x86_64.c
> new file mode 100644
> index 000000000..1db72f5db
> --- /dev/null
> +++ b/arch/x86/mach-efi/reloc_x86_64.c
> @@ -0,0 +1,96 @@
> +/* reloc_x86_64.c - position independent x86_64 ELF shared object relocator
> +   Copyright (C) 1999 Hewlett-Packard Co.
> +	Contributed by David Mosberger <davidm@hpl.hp.com>.
> +   Copyright (C) 2005 Intel Co.
> +	Contributed by Fenghua Yu <fenghua.yu@intel.com>.
> +
> +    All rights reserved.
> +
> +    Redistribution and use in source and binary forms, with or without
> +    modification, are permitted provided that the following conditions
> +    are met:
> +
> +    * Redistributions of source code must retain the above copyright
> +      notice, this list of conditions and the following disclaimer.
> +    * Redistributions in binary form must reproduce the above
> +      copyright notice, this list of conditions and the following
> +      disclaimer in the documentation and/or other materials
> +      provided with the distribution.
> +    * Neither the name of Hewlett-Packard Co. nor the names of its
> +      contributors may be used to endorse or promote products derived
> +      from this software without specific prior written permission.
> +
> +    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
> +    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
> +    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> +    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
> +    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
> +    BE LIABLE FOR ANYDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
> +    OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
> +    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
> +    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
> +    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> +    TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
> +    THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
> +    SUCH DAMAGE.
> +*/
> +
> +#include <common.h>
> +#include <efi.h>
> +
> +#include <elf.h>
> +
> +efi_status_t _relocate (long ldbase, Elf64_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
> +{
> +	long relsz = 0, relent = 0;
> +	Elf64_Rel *rel = 0;
> +	unsigned long *addr;
> +	int i;
> +
> +	for (i = 0; dyn[i].d_tag != DT_NULL; ++i) {
> +		switch (dyn[i].d_tag) {
> +			case DT_RELA:
> +				rel = (Elf64_Rel*)
> +					((unsigned long)dyn[i].d_un.d_ptr
> +					 + ldbase);
> +				break;
> +
> +			case DT_RELASZ:
> +				relsz = dyn[i].d_un.d_val;
> +				break;
> +
> +			case DT_RELAENT:
> +				relent = dyn[i].d_un.d_val;
> +				break;
> +
> +			default:
> +				break;
> +		}
> +	}
> +
> +        if (!rel && relent == 0)
> +                return EFI_SUCCESS;
> +
> +	if (!rel || relent == 0)
> +		return EFI_LOAD_ERROR;
> +
> +	while (relsz > 0) {
> +		/* apply the relocs */
> +		switch (ELF64_R_TYPE (rel->r_info)) {
> +			case R_X86_64_NONE:
> +				break;
> +
> +			case R_X86_64_RELATIVE:
> +				addr = (unsigned long *)
> +					(ldbase + rel->r_offset);
> +				*addr += ldbase;
> +				break;
> +
> +			default:
> +				break;
> +		}
> +		rel = (Elf64_Rel*) ((char *) rel + relent);
> +		relsz -= relent;
> +	}
> +	return EFI_SUCCESS;
> +}
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 21d921268..bc0885c69 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -370,7 +370,7 @@ config CMD_BOOTZ
>  
>  config CMD_LINUX16
>  	tristate
> -	depends on X86
> +	depends on X86 && !X86_EFI
>  	default y if X86
>  	prompt "linux16"
>  	help
> diff --git a/commands/edit.c b/commands/edit.c
> index a5415a6e5..696a818d9 100644
> --- a/commands/edit.c
> +++ b/commands/edit.c
> @@ -396,7 +396,7 @@ static int do_edit(int argc, char *argv[])
>  	 * down when we write to the right bottom screen position. Reduce the number
>  	 * of rows by one to work around this.
>  	 */
> -	if (IS_ENABLED(CONFIG_ARCH_EFI))
> +	if (IS_ENABLED(CONFIG_EFI_BOOTUP))
>  		screenheight = 24;
>  	else
>  		screenheight = 25;
> diff --git a/common/memory.c b/common/memory.c
> index 4725f6e38..ad38b00ec 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -67,7 +67,7 @@ void mem_malloc_init(void *start, void *end)
>  	mem_malloc_initialized = 1;
>  }
>  
> -#if !defined __SANDBOX__ && !defined CONFIG_ARCH_EFI
> +#if !defined __SANDBOX__ && !defined CONFIG_EFI_BOOTUP
>  static int mem_malloc_resource(void)
>  {
>  	/*
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index ae1f10eae..54b05bbf3 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -36,7 +36,7 @@ config CLOCKSOURCE_DUMMY_RATE
>  
>  config CLOCKSOURCE_EFI
>  	bool
> -	depends on ARCH_EFI
> +	depends on EFI_BOOTUP
>  
>  config CLOCKSOURCE_MVEBU
>  	bool
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index b723a127f..c3980e78f 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -202,7 +202,7 @@ config DRIVER_NET_TAP
>  
>  config DRIVER_NET_EFI_SNP
>  	bool "EFI SNP ethernet driver"
> -	depends on ARCH_EFI
> +	depends on EFI_BOOTUP
>  
>  config DRIVER_NET_TSE
>  	depends on NIOS2
> diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> index d0a62bda9..a1fac0e61 100644
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -4,7 +4,7 @@ config OFTREE
>  
>  config OFTREE_MEM_GENERIC
>  	depends on OFTREE
> -	depends on PPC || ARM || ARCH_EFI || OPENRISC || SANDBOX
> +	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX
>  	def_bool y
>  
>  config DTC
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 4eab437ea..ced30530a 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -46,7 +46,7 @@ config DRIVER_SERIAL_LINUX_CONSOLE
>  	bool "linux console driver"
>  
>  config DRIVER_SERIAL_EFI_STDIO
> -	depends on ARCH_EFI
> +	depends on EFI_BOOTUP
>  	bool "EFI stdio driver"
>  
>  config DRIVER_SERIAL_MPC5XXX
> diff --git a/fs/Kconfig b/fs/Kconfig
> index c7c42acd7..57f2676f4 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -42,7 +42,7 @@ config FS_NFS
>  	prompt "nfs support"
>  
>  config FS_EFI
> -	depends on ARCH_EFI
> +	depends on EFI_BOOTUP
>  	bool
>  	prompt "EFI filesystem support"
>  	help
> @@ -50,7 +50,7 @@ config FS_EFI
>  	  by the EFI Firmware via the EFI Simple File System Protocol.
>  
>  config FS_EFIVARFS
> -	depends on ARCH_EFI
> +	depends on EFI_BOOTUP
>  	bool
>  	prompt "EFI variable filesystem support (efivarfs)"
>  	help
> diff --git a/include/efi.h b/include/efi.h
> index b2e965bae..fa6fb2782 100644
> --- a/include/efi.h
> +++ b/include/efi.h
> @@ -14,7 +14,7 @@
>  #include <linux/string.h>
>  #include <linux/types.h>
>  
> -#ifdef CONFIG_ARCH_EFI
> +#ifdef CONFIG_EFI_BOOTUP
>  #define EFIAPI __attribute__((ms_abi))
>  #else
>  #define EFIAPI
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
