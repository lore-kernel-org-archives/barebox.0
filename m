Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ar5HT-0004Sd-Ed
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 15:04:00 +0000
Received: by mail-lf0-x242.google.com with SMTP id p64so17257464lfg.0
 for <barebox@lists.infradead.org>; Fri, 15 Apr 2016 08:03:13 -0700 (PDT)
Date: Fri, 15 Apr 2016 18:03:18 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160415180318.3b453f910f9e9f2ff51fc887@gmail.com>
In-Reply-To: <1460707525-16590-1-git-send-email-poggi.raph@gmail.com>
References: <1460707525-16590-1-git-send-email-poggi.raph@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] arch: add minimal aarch64 support
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, 15 Apr 2016 10:05:25 +0200
Raphael Poggi <poggi.raph@gmail.com> wrote:

> This commit add minimal support for aarch64/arm64 architecture.
> =

> The main current limitations are:
> 	- MMU not implemented
> 	- barebox running at EL1
> 	- barebox env not working
> 	- only test on qemu

Your patch is suffering from whitespace errors.

Also please check pbl paths in your pbl code, e.g.:

$ grep arch/arm/ YOUR_PATCH | grep incbin
+       .incbin "arch/arm/pbl/piggy.gzip"
+       .incbin "arch/arm/pbl/piggy.lz4"
+       .incbin "arch/arm/pbl/piggy.lzo"
+       .incbin "arch/arm/pbl/piggy.shipped"
+       .incbin "arch/arm/pbl/piggy.xzkern"

> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm64/Kconfig                           | 140 +++++++
>  arch/arm64/Makefile                          | 109 +++++
>  arch/arm64/boards/Makefile                   |   2 +
>  arch/arm64/boards/virt/Kconfig               |   8 +
>  arch/arm64/boards/virt/Makefile              |   3 +
>  arch/arm64/boards/virt/env/config            |  38 ++
>  arch/arm64/boards/virt/init.c                |  52 +++
>  arch/arm64/boards/virt/lowlevel.c            |  18 +
>  arch/arm64/configs/virt_defconfig            |  53 +++
>  arch/arm64/cpu/Kconfig                       |  54 +++
>  arch/arm64/cpu/Makefile                      |  30 ++
>  arch/arm64/cpu/cache-armv8.S                 | 168 ++++++++
>  arch/arm64/cpu/cache.c                       | 110 ++++++
>  arch/arm64/cpu/cpu.c                         | 106 +++++
>  arch/arm64/cpu/cpuinfo.c                     | 211 ++++++++++
>  arch/arm64/cpu/entry.c                       |  38 ++
>  arch/arm64/cpu/entry.h                       |  18 +
>  arch/arm64/cpu/exceptions.S                  | 127 ++++++
>  arch/arm64/cpu/interrupts.c                  | 162 ++++++++
>  arch/arm64/cpu/lowlevel.S                    |  49 +++
>  arch/arm64/cpu/mmu-early.c                   |  53 +++
>  arch/arm64/cpu/mmu-early.h                   |   6 +
>  arch/arm64/cpu/mmu.c                         | 492 +++++++++++++++++++++=
++
>  arch/arm64/cpu/mmu.h                         |  14 +
>  arch/arm64/cpu/mmuinfo.c                     | 104 +++++
>  arch/arm64/cpu/no-mmu.c                      |  61 +++
>  arch/arm64/cpu/start-pbl.c                   | 102 +++++
>  arch/arm64/cpu/start.c                       | 247 ++++++++++++
>  arch/arm64/cpu/uncompress.c                  | 111 ++++++
>  arch/arm64/include/asm/armlinux.h            |  43 ++
>  arch/arm64/include/asm/assembler.h           | 116 ++++++
>  arch/arm64/include/asm/barebox-arm-head.h    |  65 +++
>  arch/arm64/include/asm/barebox-arm.h         | 165 ++++++++
>  arch/arm64/include/asm/barebox.h             |  12 +
>  arch/arm64/include/asm/bitops.h              |  48 +++
>  arch/arm64/include/asm/bitsperlong.h         |   1 +
>  arch/arm64/include/asm/byteorder.h           |  32 ++
>  arch/arm64/include/asm/cache-l2x0.h          | 101 +++++
>  arch/arm64/include/asm/cache.h               |  16 +
>  arch/arm64/include/asm/common.h              |  48 +++
>  arch/arm64/include/asm/cputype.h             | 100 +++++
>  arch/arm64/include/asm/debug_ll_pl011.h      |  25 ++
>  arch/arm64/include/asm/dma.h                 |  46 +++
>  arch/arm64/include/asm/elf.h                 | 119 ++++++
>  arch/arm64/include/asm/errata.h              |  79 ++++
>  arch/arm64/include/asm/gic.h                 | 128 ++++++
>  arch/arm64/include/asm/hardware/arm_timer.h  |  38 ++
>  arch/arm64/include/asm/hardware/sp810.h      |  68 ++++
>  arch/arm64/include/asm/io.h                  |  87 ++++
>  arch/arm64/include/asm/linkage.h             |  11 +
>  arch/arm64/include/asm/memory.h              |  19 +
>  arch/arm64/include/asm/mmu.h                 |  65 +++
>  arch/arm64/include/asm/module.h              |  13 +
>  arch/arm64/include/asm/pgtable.h             |  90 +++++
>  arch/arm64/include/asm/posix_types.h         |   1 +
>  arch/arm64/include/asm/processor.h           | 131 ++++++
>  arch/arm64/include/asm/ptrace.h              |  34 ++
>  arch/arm64/include/asm/sections.h            |  34 ++
>  arch/arm64/include/asm/semihosting.h         |  19 +
>  arch/arm64/include/asm/setup.h               | 216 ++++++++++
>  arch/arm64/include/asm/stacktrace.h          |  16 +
>  arch/arm64/include/asm/string.h              |  13 +
>  arch/arm64/include/asm/swab.h                |  69 ++++
>  arch/arm64/include/asm/system.h              | 125 ++++++
>  arch/arm64/include/asm/system_info.h         | 194 +++++++++
>  arch/arm64/include/asm/types.h               |  54 +++
>  arch/arm64/include/asm/unaligned.h           |  19 +
>  arch/arm64/include/asm/unified.h             | 127 ++++++
>  arch/arm64/include/asm/unwind.h              |  51 +++
>  arch/arm64/lib/Makefile                      |  16 +
>  arch/arm64/lib/armlinux.c                    | 275 +++++++++++++
>  arch/arm64/lib/asm-offsets.c                 |  16 +
>  arch/arm64/lib/barebox.lds                   | 125 ++++++
>  arch/arm64/lib/barebox.lds.S                 | 125 ++++++
>  arch/arm64/lib/bootm.c                       | 572 +++++++++++++++++++++=
++++++
>  arch/arm64/lib/bootu.c                       |  44 +++
>  arch/arm64/lib/bootz.c                       | 136 +++++++
>  arch/arm64/lib/copy_template.S               | 192 +++++++++
>  arch/arm64/lib/div0.c                        |  27 ++
>  arch/arm64/lib/memcpy.S                      |  74 ++++
>  arch/arm64/lib/memset.S                      | 215 ++++++++++
>  arch/arm64/lib/module.c                      |  98 +++++
>  arch/arm64/lib/pbl.lds.S                     |  96 +++++
>  arch/arm64/lib/runtime-offset.S              |  52 +++
>  arch/arm64/lib/unwind.c                      | 349 ++++++++++++++++
>  arch/arm64/mach-virt/Kconfig                 |  15 +
>  arch/arm64/mach-virt/Makefile                |   1 +
>  arch/arm64/mach-virt/devices.c               |  30 ++
>  arch/arm64/mach-virt/include/mach/debug_ll.h |  24 ++
>  arch/arm64/mach-virt/include/mach/devices.h  |  13 +
>  arch/arm64/mach-virt/reset.c                 |  24 ++
>  arch/arm64/pbl/Makefile                      |  58 +++
>  arch/arm64/pbl/piggy.gzip.S                  |   6 +
>  arch/arm64/pbl/piggy.lz4.S                   |   6 +
>  arch/arm64/pbl/piggy.lzo.S                   |   6 +
>  arch/arm64/pbl/piggy.shipped.S               |   6 +
>  arch/arm64/pbl/piggy.xzkern.S                |   6 +
>  97 files changed, 7931 insertions(+)
>  create mode 100644 arch/arm64/Kconfig
>  create mode 100644 arch/arm64/Makefile
>  create mode 100644 arch/arm64/boards/Makefile
>  create mode 100644 arch/arm64/boards/virt/Kconfig
>  create mode 100644 arch/arm64/boards/virt/Makefile
>  create mode 100644 arch/arm64/boards/virt/env/config
>  create mode 100644 arch/arm64/boards/virt/init.c
>  create mode 100644 arch/arm64/boards/virt/lowlevel.c
>  create mode 100644 arch/arm64/configs/virt_defconfig
>  create mode 100644 arch/arm64/cpu/Kconfig
>  create mode 100644 arch/arm64/cpu/Makefile
>  create mode 100644 arch/arm64/cpu/cache-armv8.S
>  create mode 100644 arch/arm64/cpu/cache.c
>  create mode 100644 arch/arm64/cpu/cpu.c
>  create mode 100644 arch/arm64/cpu/cpuinfo.c
>  create mode 100644 arch/arm64/cpu/entry.c
>  create mode 100644 arch/arm64/cpu/entry.h
>  create mode 100644 arch/arm64/cpu/exceptions.S
>  create mode 100644 arch/arm64/cpu/interrupts.c
>  create mode 100644 arch/arm64/cpu/lowlevel.S
>  create mode 100644 arch/arm64/cpu/mmu-early.c
>  create mode 100644 arch/arm64/cpu/mmu-early.h
>  create mode 100644 arch/arm64/cpu/mmu.c
>  create mode 100644 arch/arm64/cpu/mmu.h
>  create mode 100644 arch/arm64/cpu/mmuinfo.c
>  create mode 100644 arch/arm64/cpu/no-mmu.c
>  create mode 100644 arch/arm64/cpu/start-pbl.c
>  create mode 100644 arch/arm64/cpu/start.c
>  create mode 100644 arch/arm64/cpu/uncompress.c
>  create mode 100644 arch/arm64/include/asm/armlinux.h
>  create mode 100644 arch/arm64/include/asm/assembler.h
>  create mode 100644 arch/arm64/include/asm/barebox-arm-head.h
>  create mode 100644 arch/arm64/include/asm/barebox-arm.h
>  create mode 100644 arch/arm64/include/asm/barebox.h
>  create mode 100644 arch/arm64/include/asm/bitops.h
>  create mode 100644 arch/arm64/include/asm/bitsperlong.h
>  create mode 100644 arch/arm64/include/asm/byteorder.h
>  create mode 100644 arch/arm64/include/asm/cache-l2x0.h
>  create mode 100644 arch/arm64/include/asm/cache.h
>  create mode 100644 arch/arm64/include/asm/common.h
>  create mode 100644 arch/arm64/include/asm/cputype.h
>  create mode 100644 arch/arm64/include/asm/debug_ll_pl011.h
>  create mode 100644 arch/arm64/include/asm/dma.h
>  create mode 100644 arch/arm64/include/asm/elf.h
>  create mode 100644 arch/arm64/include/asm/errata.h
>  create mode 100644 arch/arm64/include/asm/gic.h
>  create mode 100644 arch/arm64/include/asm/hardware/arm_timer.h
>  create mode 100644 arch/arm64/include/asm/hardware/sp810.h
>  create mode 100644 arch/arm64/include/asm/io.h
>  create mode 100644 arch/arm64/include/asm/linkage.h
>  create mode 100644 arch/arm64/include/asm/memory.h
>  create mode 100644 arch/arm64/include/asm/mmu.h
>  create mode 100644 arch/arm64/include/asm/module.h
>  create mode 100644 arch/arm64/include/asm/pgtable.h
>  create mode 100644 arch/arm64/include/asm/posix_types.h
>  create mode 100644 arch/arm64/include/asm/processor.h
>  create mode 100644 arch/arm64/include/asm/ptrace.h
>  create mode 100644 arch/arm64/include/asm/sections.h
>  create mode 100644 arch/arm64/include/asm/semihosting.h
>  create mode 100644 arch/arm64/include/asm/setup.h
>  create mode 100644 arch/arm64/include/asm/stacktrace.h
>  create mode 100644 arch/arm64/include/asm/string.h
>  create mode 100644 arch/arm64/include/asm/swab.h
>  create mode 100644 arch/arm64/include/asm/system.h
>  create mode 100644 arch/arm64/include/asm/system_info.h
>  create mode 100644 arch/arm64/include/asm/types.h
>  create mode 100644 arch/arm64/include/asm/unaligned.h
>  create mode 100644 arch/arm64/include/asm/unified.h
>  create mode 100644 arch/arm64/include/asm/unwind.h
>  create mode 100644 arch/arm64/lib/Makefile
>  create mode 100644 arch/arm64/lib/armlinux.c
>  create mode 100644 arch/arm64/lib/asm-offsets.c
>  create mode 100644 arch/arm64/lib/barebox.lds
>  create mode 100644 arch/arm64/lib/barebox.lds.S
>  create mode 100644 arch/arm64/lib/bootm.c
>  create mode 100644 arch/arm64/lib/bootu.c
>  create mode 100644 arch/arm64/lib/bootz.c
>  create mode 100644 arch/arm64/lib/copy_template.S
>  create mode 100644 arch/arm64/lib/div0.c
>  create mode 100644 arch/arm64/lib/memcpy.S
>  create mode 100644 arch/arm64/lib/memset.S
>  create mode 100644 arch/arm64/lib/module.c
>  create mode 100644 arch/arm64/lib/pbl.lds.S
>  create mode 100644 arch/arm64/lib/runtime-offset.S
>  create mode 100644 arch/arm64/lib/unwind.c
>  create mode 100644 arch/arm64/mach-virt/Kconfig
>  create mode 100644 arch/arm64/mach-virt/Makefile
>  create mode 100644 arch/arm64/mach-virt/devices.c
>  create mode 100644 arch/arm64/mach-virt/include/mach/debug_ll.h
>  create mode 100644 arch/arm64/mach-virt/include/mach/devices.h
>  create mode 100644 arch/arm64/mach-virt/reset.c
>  create mode 100644 arch/arm64/pbl/Makefile
>  create mode 100644 arch/arm64/pbl/piggy.gzip.S
>  create mode 100644 arch/arm64/pbl/piggy.lz4.S
>  create mode 100644 arch/arm64/pbl/piggy.lzo.S
>  create mode 100644 arch/arm64/pbl/piggy.shipped.S
>  create mode 100644 arch/arm64/pbl/piggy.xzkern.S
> =

> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> new file mode 100644
> index 0000000..7d10404
> --- /dev/null
> +++ b/arch/arm64/Kconfig
> @@ -0,0 +1,140 @@
> +config ARM
> +	bool
> +	select HAS_KALLSYMS
> +	select HAS_MODULES
> +	select HAS_DMA
> +	select HAS_CACHE
> +	select HAVE_CONFIGURABLE_TEXT_BASE
> +	select HAVE_PBL_IMAGE
> +	select HAVE_IMAGE_COMPRESSION
> +	default y
> +
> +config ARM_LINUX
> +	bool
> +	default y
> +	depends on CMD_BOOTZ || CMD_BOOTU || BOOTM
> +
> +config HAVE_MACH_ARM_HEAD
> +	bool
> +
> +config ARM_USE_COMPRESSED_DTB
> +	bool
> +	select UNCOMPRESS
> +	select LZO_DECOMPRESS
> +
> +menu "System Type"
> +
> +config BUILTIN_DTB
> +	bool "link a DTB into the barebox image"
> +	depends on OFTREE
> +	depends on !HAVE_PBL_MULTI_IMAGES
> +
> +config BUILTIN_DTB_NAME
> +	string "DTB to build into the barebox image"
> +	depends on BUILTIN_DTB
> +	default "canon-a1100" if MACH_CANON_A1100
> +	default "imx51-genesi-efika-sb" if MACH_EFIKA_MX_SMARTBOOK
> +	default "versatile-pb" if ARCH_VERSATILE_PB
> +	default "virt2real" if MACH_VIRT2REAL
> +	default "module-mb7707" if MACH_MB7707
> +
> +choice
> +	prompt "ARM system type"
> +
> +config ARCH_VIRT
> +	bool "ARM QEMU virt boards"
> +	select HAS_DEBUG_LL
> +	select CPU_V8
> +	select SYS_SUPPORTS_64BIT_KERNEL
> +	select ARM_AMBA
> +	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> +
> +endchoice
> +
> +source arch/arm64/cpu/Kconfig
> +source arch/arm64/mach-virt/Kconfig
> +
> +config ARM_ASM_UNIFIED
> +	bool
> +
> +config AEABI
> +	bool "Use the ARM EABI to compile barebox"
> +	help
> +	  This option allows for barebox to be compiled using the latest
> +	  ARM ABI (aka EABI).
> +
> +	  To use this you need GCC version 4.0.0 or later.
> +
> +config ARM_BOARD_APPEND_ATAG
> +	bool "Let board specific code to add ATAGs to be passed to the kernel"
> +	depends on ARM_LINUX
> +	help
> +	  This option is purely to start some vendor provided kernels.
> +	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
> +
> +endmenu
> +
> +choice
> +	prompt "Barebox code model"
> +	help
> +	  You should only select this option if you have a workload that
> +	  actually benefits from 64-bit processing or if your machine has
> +	  large memory. You will only be presented a single option in this
> +	  menu if your system does not support both 32-bit and 64-bit modes.
> +
> +config 32BIT
> +	bool "32-bit barebox"
> +	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
> +	help
> +	  Select this option if you want to build a 32-bit barebox.
> +
> +config 64BIT
> +	bool "64-bit barebox"
> +	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
> +	select ARCH_DMA_ADDR_T_64BIT
> +	help
> +	  Select this option if you want to build a 64-bit barebox.
> +
> +endchoice
> +
> +menu "ARM specific settings"
> +
> +config ARM_OPTIMZED_STRING_FUNCTIONS
> +	bool "use assembler optimized string functions"
> +	help
> +	  Say yes here to use assembler optimized memcpy / memset functions.
> +	  These functions work much faster than the normal versions but
> +	  increase your binary size.
> +
> +config ARM_EXCEPTIONS
> +	bool "enable arm exception handling support"
> +	default y
> +
> +config ARM_UNWIND
> +	bool "enable stack unwinding support"
> +	depends on AEABI
> +	help
> +	  This option enables stack unwinding support in barebox
> +	  using the information automatically generated by the
> +	  compiler. The resulting kernel image is slightly bigger but
> +	  the performance is not affected. Currently, this feature
> +	  only works with EABI compilers. If unsure say Y.
> +
> +config ARM_SEMIHOSTING
> +	bool "enable ARM semihosting support"
> +	help
> +	  This option enables ARM semihosting support in barebox. ARM
> +	  semihosting is a communication discipline that allows code
> +	  running on target ARM cpu perform system calls and access
> +	  the data on the host computer connected to the target via
> +	  debugging channel (JTAG, SWD). If unsure say N
> +
> +endmenu
> +
> +source common/Kconfig
> +source commands/Kconfig
> +source net/Kconfig
> +source drivers/Kconfig
> +source fs/Kconfig
> +source lib/Kconfig
> +source crypto/Kconfig
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> new file mode 100644
> index 0000000..b5a90c4
> --- /dev/null
> +++ b/arch/arm64/Makefile
> @@ -0,0 +1,109 @@
> +
> +CPPFLAGS	+=3D -D__ARM__ -fno-strict-aliasing
> +CPPFLAGS	+=3D$(call cc-option,-maarch64,)
> +
> +ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> +CPPFLAGS	+=3D -mbig-endian
> +AS		+=3D -EB
> +LD		+=3D -EB
> +else
> +CPPFLAGS	+=3D -mlittle-endian
> +AS		+=3D -EL
> +LD		+=3D -EL
> +endif
> +
> +# This selects which instruction set is used.
> +# Note that GCC does not numerically define an architecture version
> +# macro, but instead defines a whole series of macros which makes
> +# testing for a specific architecture or later rather impossible.
> +arch-$(CONFIG_CPU_64v8)		:=3D -D__LINUX_ARM_ARCH__=3D8 $(call cc-option,=
-march=3Darmv8-a)
> +
> +CFLAGS_ABI	:=3D-mabi=3Dlp64
> +
> +ifeq ($(CONFIG_ARM_UNWIND),y)
> +CFLAGS_ABI	+=3D-funwind-tables
> +endif
> +
> +CPPFLAGS +=3D $(CFLAGS_ABI) $(arch-y) $(tune-y) =

> +
> +AFLAGS   +=3D -include asm/unified.h
> +
> +# Machine directory name.  This list is sorted alphanumerically
> +# by CONFIG_* macro name.
> +machine-$(CONFIG_ARCH_VIRT)		:=3D virt
> +
> +
> +machdirs :=3D $(patsubst %,arch/arm64/mach-%/,$(machine-y))
> +
> +ifeq ($(KBUILD_SRC),)
> +CPPFLAGS +=3D $(patsubst %,-I%include,$(machdirs))
> +else
> +CPPFLAGS +=3D $(patsubst %,-I$(srctree)/%include,$(machdirs))
> +endif
> +
> +TEXT_BASE =3D $(CONFIG_TEXT_BASE)
> +
> +CPPFLAGS +=3D -DTEXT_BASE=3D$(TEXT_BASE)
> +
> +# Add cleanup flags
> +CPPFLAGS +=3D -fdata-sections -ffunction-sections
> +LDFLAGS_barebox +=3D --gc-sections
> +
> +ifdef CONFIG_RELOCATABLE
> +LDFLAGS_barebox +=3D -pie
> +else
> +LDFLAGS_barebox +=3D -static
> +endif
> +
> +ifdef CONFIG_IMAGE_COMPRESSION
> +KBUILD_BINARY :=3D arch/arm64/pbl/zbarebox.bin
> +else
> +KBUILD_BINARY :=3D barebox.bin
> +endif
> +
> +barebox.netx: $(KBUILD_BINARY)
> +	$(Q)scripts/gen_netx_image -i $< -o barebox.netx		\
> +		--sdramctrl=3D$(CONFIG_NETX_SDRAM_CTRL)			\
> +		--sdramtimctrl=3D$(CONFIG_NETX_SDRAM_TIMING_CTRL)		\
> +		--memctrl=3D$(CONFIG_NETX_MEM_CTRL)			\
> +		--entrypoint=3D$(CONFIG_TEXT_BASE)			\
> +		--cookie=3D$(CONFIG_NETX_COOKIE);
> +
> +ifeq ($(machine-y),netx)
> +KBUILD_IMAGE :=3D barebox.netx
> +endif
> +
> +barebox.s5p: $(KBUILD_BINARY)
> +	$(Q)scripts/s5p_cksum $< barebox.s5p
> +
> +boarddir =3D $(srctree)/arch/arm64/boards
> +
> +pbl :=3D arch/arm64/pbl
> +$(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin FORCE
> +	$(Q)$(MAKE) $(build)=3D$(pbl) $@
> +
> +archclean:
> +	$(MAKE) $(clean)=3D$(pbl)
> +
> +KBUILD_IMAGE ?=3D $(KBUILD_BINARY)
> +
> +ifneq ($(board-y),)
> +BOARD :=3D arch/arm64/boards/$(board-y)/
> +else
> +BOARD :=3D
> +endif
> +
> +ifneq ($(machine-y),)
> +MACH :=3D arch/arm64/mach-$(machine-y)/
> +else
> +MACH :=3D
> +endif
> +
> +common-y +=3D $(BOARD) arch/arm64/boards/ $(MACH)
> +common-y +=3D arch/arm64/lib/ arch/arm64/cpu/
> +
> +lds-y	:=3D arch/arm64/lib/barebox.lds
> +
> +common- +=3D $(patsubst %,arch/arm64/boards/%/,$(board-))
> +
> +CLEAN_FILES +=3D include/generated/mach-types.h arch/arm64/lib/barebox.l=
ds barebox-flash-image
> diff --git a/arch/arm64/boards/Makefile b/arch/arm64/boards/Makefile
> new file mode 100644
> index 0000000..2207c05
> --- /dev/null
> +++ b/arch/arm64/boards/Makefile
> @@ -0,0 +1,2 @@
> +# keep sorted by CONFIG_* macro name.
> +obj-$(CONFIG_MACH_VIRT)			+=3D virt/
> diff --git a/arch/arm64/boards/virt/Kconfig b/arch/arm64/boards/virt/Kcon=
fig
> new file mode 100644
> index 0000000..b239127
> --- /dev/null
> +++ b/arch/arm64/boards/virt/Kconfig
> @@ -0,0 +1,8 @@
> +
> +if MACH_VIRT
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x40000000
> +
> +endif
> diff --git a/arch/arm64/boards/virt/Makefile b/arch/arm64/boards/virt/Mak=
efile
> new file mode 100644
> index 0000000..e11fd5b
> --- /dev/null
> +++ b/arch/arm64/boards/virt/Makefile
> @@ -0,0 +1,3 @@
> +obj-y +=3D init.o
> +
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm64/boards/virt/env/config b/arch/arm64/boards/virt/e=
nv/config
> new file mode 100644
> index 0000000..6c0abda
> --- /dev/null
> +++ b/arch/arm64/boards/virt/env/config
> @@ -0,0 +1,38 @@
> +#!/bin/sh
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=3Ddhcp
> +global.dhcp.vendor_id=3Dbarebox-${global.hostname}
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=3Da.b.c.d
> +#eth0.netmask=3Da.b.c.d
> +#eth0.gateway=3Da.b.c.d
> +#eth0.serverip=3Da.b.c.d
> +
> +# can be either 'nfs', 'tftp' or 'nor'
> +kernel_loc=3Dtftp
> +# can be either 'net', 'nor' or 'initrd'
> +rootfs_loc=3Dinitrd
> +
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=3Dubifs
> +rootfsimage=3Droot.$rootfs_type
> +
> +kernelimage=3DzImage
> +#kernelimage=3DuImage
> +#kernelimage=3DImage
> +#kernelimage=3DImage.lzo
> +
> +nfsroot=3D"$eth0.serverip:/opt/work/busybox/arm9/rootfs_arm"
> +
> +nor_parts=3D"256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
> +rootfs_mtdblock_nor=3D3
> +
> +autoboot_timeout=3D3
> +
> +bootargs=3D"console=3DttyAMA0,115200n8 CONSOLE=3D/dev/ttyAMA0"
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1=3D"\e[1;31m[barebox@\h]:\w\e[0m\n# "
> diff --git a/arch/arm64/boards/virt/init.c b/arch/arm64/boards/virt/init.c
> new file mode 100644
> index 0000000..0ba41b7
> --- /dev/null
> +++ b/arch/arm64/boards/virt/init.c
> @@ -0,0 +1,52 @@
> +/*
> + * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <asm/system_info.h>
> +#include <mach/devices.h>
> +#include <environment.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <globalvar.h>
> +
> +static int virt_mem_init(void)
> +{
> +	virt_add_ddram(SZ_256M);
> +
> +	add_cfi_flash_device(0, 0x00000000, SZ_4M, 0);
> +
> +	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "s=
elf0");
> +	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "e=
nv0");
> +
> +	return 0;
> +}
> +mem_initcall(virt_mem_init);
> +
> +static int virt_console_init(void)
> +{
> +	virt_register_uart(0);
> +
> +	return 0;
> +}
> +console_initcall(virt_console_init);
> +
> +static int virt_core_init(void)
> +{
> +	char *hostname =3D "virt";
> +
> +	if (cpu_is_cortex_a53())
> +		hostname =3D "virt-a53";
> +	else if (cpu_is_cortex_a57())
> +		hostname =3D "virt-a57";
> +
> +	barebox_set_model("ARM QEMU virt");
> +	barebox_set_hostname(hostname);
> +
> +	return 0;
> +}
> +postcore_initcall(virt_core_init);
> diff --git a/arch/arm64/boards/virt/lowlevel.c b/arch/arm64/boards/virt/l=
owlevel.c
> new file mode 100644
> index 0000000..ab62121
> --- /dev/null
> +++ b/arch/arm64/boards/virt/lowlevel.c
> @@ -0,0 +1,18 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft=
.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system_info.h>
> +
> +void barebox_arm_reset_vector(void)
> +{
> +	arm_cpu_lowlevel_init();
> +
> +	barebox_arm_entry(0x40000000, SZ_512M, NULL);
> +}
> diff --git a/arch/arm64/configs/virt_defconfig b/arch/arm64/configs/virt_=
defconfig
> new file mode 100644
> index 0000000..e0d78bf
> --- /dev/null
> +++ b/arch/arm64/configs/virt_defconfig
> @@ -0,0 +1,53 @@
> +CONFIG_AEABI=3Dy
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x05000000
> +CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=3D0x01000000
> +CONFIG_MEMORY_LAYOUT_FIXED=3Dy
> +CONFIG_STACK_BASE=3D0x60000000
> +CONFIG_MALLOC_BASE=3D0x50000000
> +CONFIG_PROMPT=3D"virt: "
> +CONFIG_HUSH_FANCY_PROMPT=3Dy
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +CONFIG_MENU=3Dy
> +CONFIG_PASSWORD=3Dy
> +CONFIG_PARTITION=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm64/boards/virt/env"
> +CONFIG_DEBUG_INFO=3Dy
> +# CONFIG_CMD_ARM_CPUINFO is not set
> +CONFIG_LONGHELP=3Dy
> +# CONFIG_CMD_BOOTM is not set
> +# CONFIG_CMD_BOOTU is not set
> +# CONFIG_CMD_MOUNT is not set
> +# CONFIG_CMD_UMOUNT is not set
> +# CONFIG_CMD_CAT is not set
> +# CONFIG_CMD_CD is not set
> +# CONFIG_CMD_CP is not set
> +# CONFIG_CMD_LS is not set
> +# CONFIG_CMD_MKDIR is not set
> +# CONFIG_CMD_PWD is not set
> +# CONFIG_CMD_RM is not set
> +# CONFIG_CMD_RMDIR is not set
> +# CONFIG_CMD_FALSE is not set
> +# CONFIG_CMD_TEST is not set
> +# CONFIG_CMD_TRUE is not set
> +# CONFIG_CMD_CLEAR is not set
> +# CONFIG_CMD_ECHO is not set
> +CONFIG_CMD_CRC=3Dy
> +CONFIG_CMD_CRC_CMP=3Dy
> +# CONFIG_CMD_MD is not set
> +# CONFIG_CMD_MEMCMP is not set
> +# CONFIG_CMD_MEMCPY is not set
> +# CONFIG_CMD_MEMSET is not set
> +# CONFIG_CMD_MW is not set
> +CONFIG_SERIAL_AMBA_PL011=3Dy
> +# CONFIG_SPI is not set
> +CONFIG_MTD=3Dy
> +CONFIG_DRIVER_CFI=3Dy
> +CONFIG_DRIVER_CFI_BANK_WIDTH_8=3Dy
> +CONFIG_CFI_BUFFER_WRITE=3Dy
> +CONFIG_NAND=3Dy
> +# CONFIG_FS_RAMFS is not set
> +CONFIG_DIGEST_SHA1_GENERIC=3Dy
> +CONFIG_DIGEST_SHA256_GENERIC=3Dy
> diff --git a/arch/arm64/cpu/Kconfig b/arch/arm64/cpu/Kconfig
> new file mode 100644
> index 0000000..86d64a4
> --- /dev/null
> +++ b/arch/arm64/cpu/Kconfig
> @@ -0,0 +1,54 @@
> +comment "Processor Type"
> +
> +config CPU_64
> +	bool
> +	default y
> +
> +# Select CPU types depending on the architecture selected. This selects
> +# which CPUs we support in the kernel image, and the compiler instruction
> +# optimiser behaviour.
> +
> +# ARMv8
> +config CPU_V8
> +	bool
> +	select CPU_64v8
> +	select CPU_SUPPORTS_64BIT_KERNEL
> +
> +config CPU_64v8
> +	bool
> +
> +comment "processor features"
> +
> +config ARCH_SUPPORTS_BIG_ENDIAN
> +	bool
> +
> +config CPU_BIG_ENDIAN
> +	bool "Build big-endian kernel"
> +	depends on ARCH_SUPPORTS_BIG_ENDIAN
> +	help
> +	  Say Y if you plan on running a kernel in big-endian mode.
> +	  Note that your board must be properly built and your board
> +	  port must properly enable any big-endian related features
> +	  of your chipset/board/processor.
> +
> +config BOOT_ENDIANNESS_SWITCH
> +	bool "Support switching of Linux kernel endianness"
> +	help
> +	  Say Y here if you need to switch CPU endianness before running
> +	  Linux kernel, e.g. if you want big-endian Barebox to run
> +	  little-endian Linux.
> +
> +	  Currently implemented only by "bootz" command.
> +
> +config SYS_SUPPORTS_32BIT_KERNEL
> +	bool
> +
> +config SYS_SUPPORTS_64BIT_KERNEL
> +	bool
> +
> +config CPU_SUPPORTS_32BIT_KERNEL
> +	bool
> +
> +config CPU_SUPPORTS_64BIT_KERNEL
> +	bool
> +
> diff --git a/arch/arm64/cpu/Makefile b/arch/arm64/cpu/Makefile
> new file mode 100644
> index 0000000..9b0009d
> --- /dev/null
> +++ b/arch/arm64/cpu/Makefile
> @@ -0,0 +1,30 @@
> +obj-y +=3D cpu.o
> +obj-$(CONFIG_ARM_EXCEPTIONS) +=3D exceptions.o
> +obj-$(CONFIG_ARM_EXCEPTIONS) +=3D interrupts.o
> +obj-y +=3D start.o entry.o
> +
> +#
> +# Any variants can be called as start-armxyz.S
> +#
> +obj-$(CONFIG_CMD_ARM_CPUINFO) +=3D cpuinfo.o
> +obj-$(CONFIG_CMD_ARM_MMUINFO) +=3D mmuinfo.o
> +obj-$(CONFIG_MMU) +=3D mmu.o cache.o mmu-early.o
> +pbl-$(CONFIG_MMU) +=3D mmu-early.o
> +
> +ifeq ($(CONFIG_MMU),)
> +#obj-y +=3D no-mmu.o
> +endif
> +
> +AFLAGS_cache-armv8.o       :=3D-Wa,-march=3Darmv8-a
> +obj-$(CONFIG_CPU_64v8) +=3D cache-armv8.o
> +AFLAGS_pbl-cache-armv8.o       :=3D-Wa,-march=3Darmv8-a
> +pbl-$(CONFIG_CPU_64v8) +=3D cache-armv8.o
> +
> +pbl-y +=3D setupc.o entry.o
> +pbl-$(CONFIG_PBL_SINGLE_IMAGE) +=3D start-pbl.o
> +pbl-$(CONFIG_PBL_MULTI_IMAGES) +=3D uncompress.o
> +
> +obj-y +=3D cache.o
> +pbl-y +=3D cache.o
> +
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm64/cpu/cache-armv8.S b/arch/arm64/cpu/cache-armv8.S
> new file mode 100644
> index 0000000..82b2f81
> --- /dev/null
> +++ b/arch/arm64/cpu/cache-armv8.S
> @@ -0,0 +1,168 @@
> +/*
> + * (C) Copyright 2013
> + * David Feng <fenghua@phytium.com.cn>
> + *
> + * This file is based on sample code from ARMv8 ARM.
> + *
> + * SPDX-License-Identifier:	GPL-2.0+
> + */
> +
> +#include <config.h>
> +#include <linux/linkage.h>
> +#include <init.h>
> +
> +/*
> + * void v8_flush_dcache_level(level)
> + *
> + * clean and invalidate one level cache.
> + *
> + * x0: cache level
> + * x1: 0 flush & invalidate, 1 invalidate only
> + * x2~x9: clobbered
> + */
> +.section .text.v8_flush_dcache_level
> +ENTRY(v8_flush_dcache_level)
> +	lsl	x12, x0, #1
> +	msr	csselr_el1, x12		/* select cache level */
> +	isb				/* sync change of cssidr_el1 */
> +	mrs	x6, ccsidr_el1		/* read the new cssidr_el1 */
> +	and	x2, x6, #7		/* x2 <- log2(cache line size)-4 */
> +	add	x2, x2, #4		/* x2 <- log2(cache line size) */
> +	mov	x3, #0x3ff
> +	and	x3, x3, x6, lsr #3	/* x3 <- max number of #ways */
> +	clz	w5, w3			/* bit position of #ways */
> +	mov	x4, #0x7fff
> +	and	x4, x4, x6, lsr #13	/* x4 <- max number of #sets */
> +	/* x12 <- cache level << 1 */
> +	/* x2 <- line length offset */
> +	/* x3 <- number of cache ways - 1 */
> +	/* x4 <- number of cache sets - 1 */
> +	/* x5 <- bit position of #ways */
> +
> +loop_set:
> +	mov	x6, x3			/* x6 <- working copy of #ways */
> +loop_way:
> +	lsl	x7, x6, x5
> +	orr	x9, x12, x7		/* map way and level to cisw value */
> +	lsl	x7, x4, x2
> +	orr	x9, x9, x7		/* map set number to cisw value */
> +	tbz	w1, #0, 1f
> +	dc	isw, x9
> +	b	2f
> +1:	dc	cisw, x9		/* clean & invalidate by set/way */
> +2:	subs	x6, x6, #1		/* decrement the way */
> +	b.ge	loop_way
> +	subs	x4, x4, #1		/* decrement the set */
> +	b.ge	loop_set
> +
> +	ret
> +ENDPROC(v8_flush_dcache_level)
> +
> +/*
> + * void v8_flush_dcache_all(int invalidate_only)
> + *
> + * x0: 0 flush & invalidate, 1 invalidate only
> + *
> + * clean and invalidate all data cache by SET/WAY.
> + */
> +.section .text.v8_dcache_all
> +ENTRY(v8_dcache_all)
> +	mov	x1, x0
> +	dsb	sy
> +	mrs	x10, clidr_el1		/* read clidr_el1 */
> +	lsr	x11, x10, #24
> +	and	x11, x11, #0x7		/* x11 <- loc */
> +	cbz	x11, finished		/* if loc is 0, exit */
> +	mov	x15, x30
> +	mov	x0, #0			/* start flush at cache level 0 */
> +	/* x0  <- cache level */
> +	/* x10 <- clidr_el1 */
> +	/* x11 <- loc */
> +	/* x15 <- return address */
> +
> +loop_level:
> +	lsl	x12, x0, #1
> +	add	x12, x12, x0		/* x0 <- tripled cache level */
> +	lsr	x12, x10, x12
> +	and	x12, x12, #7		/* x12 <- cache type */
> +	cmp	x12, #2
> +	b.lt	skip			/* skip if no cache or icache */
> +	bl	v8_flush_dcache_level	/* x1 =3D 0 flush, 1 invalidate */
> +skip:
> +	add	x0, x0, #1		/* increment cache level */
> +	cmp	x11, x0
> +	b.gt	loop_level
> +
> +	mov	x0, #0
> +	msr	csselr_el1, x0		/* restore csselr_el1 */
> +	dsb	sy
> +	isb
> +	mov	x30, x15
> +
> +finished:
> +	ret
> +ENDPROC(v8_dcache_all)
> +
> +.section .text.v8_flush_dcache_all
> +ENTRY(v8_flush_dcache_all)
> +	mov	x16, x30
> +	mov	x0, #0
> +	bl	v8_dcache_all
> +	mov	x30, x16
> +	ret
> +ENDPROC(v8_flush_dcache_all)
> +
> +.section .text.v8_invalidate_dcache_all
> +ENTRY(v8_invalidate_dcache_all)
> +	mov	x16, x30
> +	mov	x0, #0x1
> +	bl	v8_dcache_all
> +	mov	x30, x16
> +	ret
> +ENDPROC(v8_invalidate_dcache_all)
> +
> +/*
> + * void v8_flush_dcache_range(start, end)
> + *
> + * clean & invalidate data cache in the range
> + *
> + * x0: start address
> + * x1: end address
> + */
> +.section .text.v8_flush_dcache_range
> +ENTRY(v8_flush_dcache_range)
> +	mrs	x3, ctr_el0
> +	lsr	x3, x3, #16
> +	and	x3, x3, #0xf
> +	mov	x2, #4
> +	lsl	x2, x2, x3		/* cache line size */
> +
> +	/* x2 <- minimal cache line size in cache system */
> +	sub	x3, x2, #1
> +	bic	x0, x0, x3
> +1:	dc	civac, x0	/* clean & invalidate data or unified cache */
> +	add	x0, x0, x2
> +	cmp	x0, x1
> +	b.lo	1b
> +	dsb	sy
> +	ret
> +ENDPROC(v8_flush_dcache_range)
> +
> +/*
> + * void v8_invalidate_icache_all(void)
> + *
> + * invalidate all tlb entries.
> + */
> +.section .text.v8_invalidate_icache_all
> +ENTRY(v8_invalidate_icache_all)
> +	ic	ialluis
> +	isb	sy
> +	ret
> +ENDPROC(v8_invalidate_icache_all)
> +
> +.section .text.v8_flush_l3_cache
> +ENTRY(v8_flush_l3_cache)
> +	mov	x0, #0			/* return status as success */
> +	ret
> +ENDPROC(v8_flush_l3_cache)
> +	.weak	v8_flush_l3_cache
> diff --git a/arch/arm64/cpu/cache.c b/arch/arm64/cpu/cache.c
> new file mode 100644
> index 0000000..8465cf9
> --- /dev/null
> +++ b/arch/arm64/cpu/cache.c
> @@ -0,0 +1,110 @@
> +#include <common.h>
> +#include <init.h>
> +#include <asm/mmu.h>
> +#include <asm/cache.h>
> +#include <asm/system_info.h>
> +
> +struct cache_fns {
> +	void (*dma_clean_range)(unsigned long start, unsigned long end);
> +	void (*dma_flush_range)(unsigned long start, unsigned long end);
> +	void (*dma_inv_range)(unsigned long start, unsigned long end);
> +	void (*mmu_cache_on)(void);
> +	void (*mmu_cache_off)(void);
> +	void (*mmu_cache_flush)(void);
> +};
> +
> +struct cache_fns *cache_fns;
> +
> +#define DEFINE_CPU_FNS(arch) \
> +	void arch##_dma_clean_range(unsigned long start, unsigned long end);	\
> +	void arch##_dma_flush_range(unsigned long start, unsigned long end);	\
> +	void arch##_dma_inv_range(unsigned long start, unsigned long end);	\
> +	void arch##_mmu_cache_on(void);						\
> +	void arch##_mmu_cache_off(void);					\
> +	void arch##_mmu_cache_flush(void);					\
> +										\
> +	static struct cache_fns __maybe_unused cache_fns_arm##arch =3D {		\
> +		.dma_clean_range =3D arch##_dma_clean_range,			\
> +		.dma_flush_range =3D arch##_dma_flush_range,			\
> +		.dma_inv_range =3D arch##_dma_inv_range,				\
> +		.mmu_cache_on =3D arch##_mmu_cache_on,				\
> +		.mmu_cache_off =3D arch##_mmu_cache_off,				\
> +		.mmu_cache_flush =3D arch##_mmu_cache_flush,			\
> +	};
> +
> +DEFINE_CPU_FNS(v8)
> +
> +void __dma_clean_range(unsigned long start, unsigned long end)
> +{
> +	if (cache_fns)
> +		cache_fns->dma_clean_range(start, end);
> +}
> +
> +void __dma_flush_range(unsigned long start, unsigned long end)
> +{
> +	if (cache_fns)
> +		cache_fns->dma_flush_range(start, end);
> +}
> +
> +void __dma_inv_range(unsigned long start, unsigned long end)
> +{
> +	if (cache_fns)
> +		cache_fns->dma_inv_range(start, end);
> +}
> +
> +void __mmu_cache_on(void)
> +{
> +	if (cache_fns)
> +		cache_fns->mmu_cache_on();
> +}
> +
> +void __mmu_cache_off(void)
> +{
> +	if (cache_fns)
> +		cache_fns->mmu_cache_off();
> +}
> +
> +void __mmu_cache_flush(void)
> +{
> +	if (cache_fns)
> +		cache_fns->mmu_cache_flush();
> +	if (outer_cache.flush_all)
> +		outer_cache.flush_all();
> +}
> +
> +int arm_set_cache_functions(void)
> +{
> +	switch (cpu_architecture()) {
> +	case CPU_ARCH_ARMv8:
> +		cache_fns =3D &cache_fns_armv8;
> +		break;
> +	default:
> +		while(1);
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * Early function to flush the caches. This is for use when the
> + * C environment is not yet fully initialized.
> + */
> +void arm_early_mmu_cache_flush(void)
> +{
> +	switch (arm_early_get_cpu_architecture()) {
> +	case CPU_ARCH_ARMv8:
> +//		v7_mmu_cache_flush();
> +		return;
> +	}
> +}
> +
> +//void v7_mmu_cache_invalidate(void);
> +
> +void arm_early_mmu_cache_invalidate(void)
> +{
> +	switch (arm_early_get_cpu_architecture()) {
> +	case CPU_ARCH_ARMv8:
> +//		v7_mmu_cache_invalidate();
> +		return;
> +	}
> +}
> diff --git a/arch/arm64/cpu/cpu.c b/arch/arm64/cpu/cpu.c
> new file mode 100644
> index 0000000..2a27e72
> --- /dev/null
> +++ b/arch/arm64/cpu/cpu.c
> @@ -0,0 +1,106 @@
> +/*
> + * cpu.c - A few helper functions for ARM
> + *
> + * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +/**
> + * @file
> + * @brief A few helper functions for ARM
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <command.h>
> +#include <cache.h>
> +#include <asm/mmu.h>
> +#include <asm/system.h>
> +#include <asm/memory.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/cputype.h>
> +#include <asm/cache.h>
> +#include <asm/ptrace.h>
> +
> +#include "mmu.h"
> +
> +/**
> + * Enable processor's instruction cache
> + */
> +void icache_enable(void)
> +{
> +	v8_invalidate_icache_all();
> +	set_sctlr(get_sctlr() | CR_I);
> +}
> +
> +/**
> + * Disable processor's instruction cache
> + */
> +void icache_disable(void)
> +{
> +	set_sctlr(get_sctlr() & ~CR_I);
> +}
> +
> +/**
> + * Detect processor's current instruction cache status
> + * @return 0=3Ddisabled, 1=3Denabled
> + */
> +int icache_status(void)
> +{
> +	return (get_sctlr() & CR_I) !=3D 0;
> +}
> +
> +/*
> + * SoC like the ux500 have the l2x0 always enable
> + * with or without MMU enable
> + */
> +struct outer_cache_fns outer_cache;
> +
> +/*
> + * Clean and invalide caches, disable MMU
> + */
> +void mmu_disable(void)
> +{
> +	__mmu_cache_flush();
> +	if (outer_cache.disable) {
> +		outer_cache.flush_all();
> +		outer_cache.disable();
> +	}
> +	__mmu_cache_off();
> +}
> +
> +/**
> + * Disable MMU and D-cache, flush caches
> + * @return 0 (always)
> + *
> + * This function is called by shutdown_barebox to get a clean
> + * memory/cache state.
> + */
> +static void arch_shutdown(void)
> +{
> +	mmu_disable();
> +	flush_icache();
> +}
> +archshutdown_exitcall(arch_shutdown);
> +
> +extern unsigned long arm_stack_top;
> +
> +static int arm_request_stack(void)
> +{
> +	if (!request_sdram_region("stack", arm_stack_top - STACK_SIZE, STACK_SI=
ZE))
> +		pr_err("Error: Cannot request SDRAM region for stack\n");
> +
> +	return 0;
> +}
> +coredevice_initcall(arm_request_stack);
> diff --git a/arch/arm64/cpu/cpuinfo.c b/arch/arm64/cpu/cpuinfo.c
> new file mode 100644
> index 0000000..2306101
> --- /dev/null
> +++ b/arch/arm64/cpu/cpuinfo.c
> @@ -0,0 +1,211 @@
> +/*
> + * cpuinfo.c - Show information about cp15 registers
> + *
> + * Copyright (c) 2009 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +
> +#define CPU_ARCH_UNKNOWN	0
> +#define CPU_ARCH_ARMv8		10
> +
> +#define ARM_CPU_PART_CORTEX_A53	    0xD034
> +#define ARM_CPU_PART_CORTEX_A57	    0xD070
> +
> +static void decode_cache(unsigned long size)
> +{
> +	int linelen =3D 1 << ((size & 0x3) + 3);
> +	int mult =3D 2 + ((size >> 2) & 1);
> +	int cache_size =3D mult << (((size >> 6) & 0x7) + 8);
> +
> +	if (((size >> 2) & 0xf) =3D=3D 1)
> +		printf("no cache\n");
> +	else
> +		printf("%d bytes (linelen =3D %d)\n", cache_size, linelen);
> +}
> +
> +static char *crbits[] =3D {"M", "A", "C", "W", "P", "D", "L", "B", "S", =
"R",
> +	"F", "Z", "I", "V", "RR", "L4", "DT", "", "IT", "ST", "", "FI", "U", "X=
P",
> +	"VE", "EE", "L2", "", "TRE", "AFE", "TE"};
> +
> +static int do_cpuinfo(int argc, char *argv[])
> +{
> +	unsigned long mainid, cache, cr;
> +	char *architecture, *implementer;
> +	int i;
> +	int cpu_arch;
> +
> +	__asm__ __volatile__(
> +		"mrs	%0, midr_el1\n"
> +		: "=3Dr" (mainid)
> +		:
> +		: "memory");
> +
> +//	__asm__ __volatile__(
> +//		"mrc    p15, 0, %0, c0, c0, 1   @ read control reg\n"
> +//		: "=3Dr" (cache)
> +//		:
> +//		: "memory");
> +//
> +//	__asm__ __volatile__(
> +//		"mrc    p15, 0, %0, c1, c0, 0   @ read control reg\n"
> +//			: "=3Dr" (cr)
> +//			:
> +//			: "memory");
> +
> +	switch (mainid >> 24) {
> +	case 0x41:
> +		implementer =3D "ARM";
> +		break;
> +	case 0x44:
> +		implementer =3D "Digital Equipment Corp.";
> +		break;
> +	case 0x40:
> +		implementer =3D "Motorola - Freescale Semiconductor Inc.";
> +		break;
> +	case 0x56:
> +		implementer =3D "Marvell Semiconductor Inc.";
> +		break;
> +	case 0x69:
> +		implementer =3D "Intel Corp.";
> +		break;
> +	default:
> +		implementer =3D "Unknown";
> +	}
> +
> +	if ((mainid & 0x0008f000) =3D=3D 0) {
> +		cpu_arch =3D CPU_ARCH_UNKNOWN;
> +	} else if ((mainid & 0x0008f000) =3D=3D 0x00007000) {
> +		cpu_arch =3D (mainid & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_ARMv3;
> +	} else if ((mainid & 0x00080000) =3D=3D 0x00000000) {
> +		cpu_arch =3D (mainid >> 16) & 7;
> +		if (cpu_arch)
> +			cpu_arch +=3D CPU_ARCH_ARMv3;
> +	} else if ((mainid & 0x000f0000) =3D=3D 0x000f0000) {
> +		unsigned int mmfr0;
> +
> +		/* Revised CPUID format. Read the Memory Model Feature
> +		 * Register 0 and check for VMSAv7 or PMSAv7 */
> +//		asm("mrc	p15, 0, %0, c0, c1, 4"
> +//		    : "=3Dr" (mmfr0));
> +		if ((mmfr0 & 0x0000000f) >=3D 0x00000003 ||
> +		    (mmfr0 & 0x000000f0) >=3D 0x00000030)
> +			cpu_arch =3D CPU_ARCH_ARMv7;
> +		else if ((mmfr0 & 0x0000000f) =3D=3D 0x00000002 ||
> +			 (mmfr0 & 0x000000f0) =3D=3D 0x00000020)
> +			cpu_arch =3D CPU_ARCH_ARMv6;
> +		else
> +			cpu_arch =3D CPU_ARCH_UNKNOWN;
> +	} else
> +		cpu_arch =3D CPU_ARCH_UNKNOWN;
> +
> +	switch (cpu_arch) {
> +	case CPU_ARCH_ARMv3:
> +		architecture =3D "v3";
> +		break;
> +	case CPU_ARCH_ARMv4:
> +		architecture =3D "v4";
> +		break;
> +	case CPU_ARCH_ARMv4T:
> +		architecture =3D "v4T";
> +		break;
> +	case CPU_ARCH_ARMv5:
> +		architecture =3D "v5";
> +		break;
> +	case CPU_ARCH_ARMv5T:
> +		architecture =3D "v5T";
> +		break;
> +	case CPU_ARCH_ARMv5TE:
> +		architecture =3D "v5TE";
> +		break;
> +	case CPU_ARCH_ARMv5TEJ:
> +		architecture =3D "v5TEJ";
> +		break;
> +	case CPU_ARCH_ARMv6:
> +		architecture =3D "v6";
> +		break;
> +	case CPU_ARCH_ARMv7:
> +		architecture =3D "v7";
> +		break;
> +	case CPU_ARCH_ARMv8:
> +		architecture =3D "v8";
> +		break;
> +	case CPU_ARCH_UNKNOWN:
> +	default:
> +		architecture =3D "Unknown";
> +	}
> +
> +	printf("implementer: %s\narchitecture: %s\n",
> +			implementer, architecture);
> +
> +	if (cpu_arch =3D=3D CPU_ARCH_ARMv7) {
> +		unsigned int major, minor;
> +		char *part;
> +		major =3D (mainid >> 20) & 0xf;
> +		minor =3D mainid & 0xf;
> +		switch (mainid & 0xfff0) {
> +		case ARM_CPU_PART_CORTEX_A5:
> +			part =3D "Cortex-A5";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A7:
> +			part =3D "Cortex-A7";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A8:
> +			part =3D "Cortex-A8";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A9:
> +			part =3D "Cortex-A9";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A15:
> +			part =3D "Cortex-A15";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A53:
> +			part =3D "Cortex-A53";
> +		default:
> +			part =3D "unknown";
> +		}
> +		printf("core: %s r%up%u\n", part, major, minor);
> +	}
> +
> +//	if (cache & (1 << 24)) {
> +//		/* separate I/D cache */
> +//		printf("I-cache: ");
> +//		decode_cache(cache & 0xfff);
> +//		printf("D-cache: ");
> +//		decode_cache((cache >> 12) & 0xfff);
> +//	} else {
> +//		/* unified I/D cache */
> +//		printf("cache: ");
> +//		decode_cache(cache & 0xfff);
> +//	}
> +
> +//	printf("Control register: ");
> +//	for (i =3D 0; i < ARRAY_SIZE(crbits); i++)
> +//		if (cr & (1 << i))
> +//			printf("%s ", crbits[i]);
> +//	printf("\n");
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(cpuinfo)
> +	.cmd            =3D do_cpuinfo,
> +	BAREBOX_CMD_DESC("show info about CPU")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +	BAREBOX_CMD_COMPLETE(empty_complete)
> +BAREBOX_CMD_END
> +
> diff --git a/arch/arm64/cpu/entry.c b/arch/arm64/cpu/entry.c
> new file mode 100644
> index 0000000..a029f09
> --- /dev/null
> +++ b/arch/arm64/cpu/entry.c
> @@ -0,0 +1,38 @@
> +#include <types.h>
> +
> +#include <asm/cache.h>
> +
> +#include "entry.h"
> +
> +/*
> + * Main ARM entry point. Call this with the memory region you can
> + * spare for barebox. This doesn't necessarily have to be the full
> + * SDRAM. The currently running binary can be inside or outside of
> + * this region. TEXT_BASE can be inside or outside of this
> + * region. boarddata will be preserved and can be accessed later with
> + * barebox_arm_boarddata().
> + *
> + * -> membase + memsize
> + *   STACK_SIZE              - stack
> + *   16KiB, aligned to 16KiB - First level page table if early MMU suppo=
rt
> + *                             is enabled
> + *   128KiB                  - early memory space
> + * -> maximum end of barebox binary
> + *
> + * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory =
should
> + * be fine.
> + */
> +
> +void __noreturn barebox_arm_entry(unsigned long membase,
> +					  unsigned long memsize, void *boarddata)
> +{
> +	arm_setup_stack(membase + memsize - 16);
> +	arm_early_mmu_cache_invalidate();
> +
> +	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
> +		barebox_multi_pbl_start(membase, memsize, boarddata);
> +	else if (IS_ENABLED(CONFIG_PBL_SINGLE_IMAGE))
> +		barebox_single_pbl_start(membase, memsize, boarddata);
> +	else
> +		barebox_non_pbl_start(membase, memsize, boarddata);
> +}
> diff --git a/arch/arm64/cpu/entry.h b/arch/arm64/cpu/entry.h
> new file mode 100644
> index 0000000..f0163a3
> --- /dev/null
> +++ b/arch/arm64/cpu/entry.h
> @@ -0,0 +1,18 @@
> +#ifndef __ENTRY_H__
> +#define __ENTRY_H__
> +
> +#include <common.h>
> +
> +void __noreturn barebox_non_pbl_start(unsigned long membase,
> +				      unsigned long memsize,
> +				      void *boarddata);
> +
> +void __noreturn barebox_multi_pbl_start(unsigned long membase,
> +					unsigned long memsize,
> +					void *boarddata);
> +
> +void __noreturn barebox_single_pbl_start(unsigned long membase,
> +					 unsigned long memsize,
> +					 void *boarddata);
> +
> +#endif
> diff --git a/arch/arm64/cpu/exceptions.S b/arch/arm64/cpu/exceptions.S
> new file mode 100644
> index 0000000..5812025
> --- /dev/null
> +++ b/arch/arm64/cpu/exceptions.S
> @@ -0,0 +1,127 @@
> +/*
> + * (C) Copyright 2013
> + * David Feng <fenghua@phytium.com.cn>
> + *
> + * SPDX-License-Identifier:	GPL-2.0+
> + */
> +
> +#include <config.h>
> +#include <asm/ptrace.h>
> +#include <linux/linkage.h>
> +
> +/*
> + * Enter Exception.
> + * This will save the processor state that is ELR/X0~X30
> + * to the stack frame.
> + */
> +.macro	exception_entry
> +	stp	x29, x30, [sp, #-16]!
> +	stp	x27, x28, [sp, #-16]!
> +	stp	x25, x26, [sp, #-16]!
> +	stp	x23, x24, [sp, #-16]!
> +	stp	x21, x22, [sp, #-16]!
> +	stp	x19, x20, [sp, #-16]!
> +	stp	x17, x18, [sp, #-16]!
> +	stp	x15, x16, [sp, #-16]!
> +	stp	x13, x14, [sp, #-16]!
> +	stp	x11, x12, [sp, #-16]!
> +	stp	x9, x10, [sp, #-16]!
> +	stp	x7, x8, [sp, #-16]!
> +	stp	x5, x6, [sp, #-16]!
> +	stp	x3, x4, [sp, #-16]!
> +	stp	x1, x2, [sp, #-16]!
> +
> +	/* Could be running at EL3/EL2/EL1 */
> +	mrs	x11, CurrentEL
> +	cmp	x11, #0xC		/* Check EL3 state */
> +	b.eq	1f
> +	cmp	x11, #0x8		/* Check EL2 state */
> +	b.eq	2f
> +	cmp	x11, #0x4		/* Check EL1 state */
> +	b.eq	3f
> +3:	mrs	x1, esr_el3
> +	mrs	x2, elr_el3
> +	b	0f
> +2:	mrs	x1, esr_el2
> +	mrs	x2, elr_el2
> +	b	0f
> +1:	mrs	x1, esr_el1
> +	mrs	x2, elr_el1
> +0:
> +	stp	x2, x0, [sp, #-16]!
> +	mov	x0, sp
> +.endm
> +
> +/*
> + * Exception vectors.
> + */
> +	.align	11
> +	.globl	vectors
> +vectors:
> +	.align	7
> +	b	_do_bad_sync	/* Current EL Synchronous Thread */
> +
> +	.align	7
> +	b	_do_bad_irq	/* Current EL IRQ Thread */
> +
> +	.align	7
> +	b	_do_bad_fiq	/* Current EL FIQ Thread */
> +
> +	.align	7
> +	b	_do_bad_error	/* Current EL Error Thread */
> +
> +	.align	7
> +	b	_do_sync	/* Current EL Synchronous Handler */
> +
> +	.align	7
> +	b	_do_irq		/* Current EL IRQ Handler */
> +
> +	.align	7
> +	b	_do_fiq		/* Current EL FIQ Handler */
> +
> +	.align	7
> +	b	_do_error	/* Current EL Error Handler */
> +
> +
> +_do_bad_sync:
> +	exception_entry
> +	bl	do_bad_sync
> +
> +_do_bad_irq:
> +	exception_entry
> +	bl	do_bad_irq
> +
> +_do_bad_fiq:
> +	exception_entry
> +	bl	do_bad_fiq
> +
> +_do_bad_error:
> +	exception_entry
> +	bl	do_bad_error
> +
> +_do_sync:
> +	exception_entry
> +	bl	do_sync
> +
> +_do_irq:
> +	exception_entry
> +	bl	do_irq
> +
> +_do_fiq:
> +	exception_entry
> +	bl	do_fiq
> +
> +_do_error:
> +	exception_entry
> +	bl	do_error
> +
> +.section .data
> +.align 4
> +.global arm_ignore_data_abort
> +arm_ignore_data_abort:
> +.word 0 /* When !=3D 0 data aborts are ignored */
> +.global arm_data_abort_occurred
> +arm_data_abort_occurred:
> +.word 0 /* set !=3D 0 by the data abort handler */
> +abort_stack:
> +.space 8
> diff --git a/arch/arm64/cpu/interrupts.c b/arch/arm64/cpu/interrupts.c
> new file mode 100644
> index 0000000..32f5b4b
> --- /dev/null
> +++ b/arch/arm64/cpu/interrupts.c
> @@ -0,0 +1,162 @@
> +/*
> + * interrupts.c - Interrupt Support Routines
> + *
> + * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +/**
> + * @file
> + * @brief Interrupt Support Routines
> + */
> +
> +#include <common.h>
> +#include <abort.h>
> +#include <asm/ptrace.h>
> +#include <asm/unwind.h>
> +
> +static void __noreturn do_exception(struct pt_regs *pt_regs)
> +{
> +	panic("");
> +}
> +
> +/**
> + * The CPU runs into an undefined instruction. That really should not ha=
ppen!
> + * @param[in] pt_regs Register set content when the accident happens
> + */
> +void do_undefined_instruction (struct pt_regs *pt_regs)
> +{
> +	printf ("undefined instruction\n");
> +	do_exception(pt_regs);
> +}
> +
> +/**
> + * The CPU catches a software interrupt
> + * @param[in] pt_regs Register set content when the interrupt happens
> + *
> + * There is no function behind this feature. So what to do else than
> + * a reset?
> + */
> +void do_software_interrupt (struct pt_regs *pt_regs)
> +{
> +	printf ("software interrupt\n");
> +	do_exception(pt_regs);
> +}
> +
> +/**
> + * The CPU catches a prefetch abort. That really should not happen!
> + * @param[in] pt_regs Register set content when the accident happens
> + *
> + * instruction fetch from an unmapped area
> + */
> +void do_prefetch_abort (struct pt_regs *pt_regs)
> +{
> +	printf ("prefetch abort\n");
> +	do_exception(pt_regs);
> +}
> +
> +/**
> + * The CPU catches a data abort. That really should not happen!
> + * @param[in] pt_regs Register set content when the accident happens
> + *
> + * data fetch from an unmapped area
> + */
> +void do_data_abort (struct pt_regs *pt_regs)
> +{
> +	u32 far;
> +
> +	printf("unable to handle %s at address 0x%08x\n",
> +			far < PAGE_SIZE ? "NULL pointer dereference" :
> +			"paging request", far);
> +
> +	do_exception(pt_regs);
> +}
> +
> +/**
> + * The CPU catches a fast interrupt request.
> + * @param[in] pt_regs Register set content when the interrupt happens
> + *
> + * We never enable FIQs, so this should not happen
> + */
> +void do_fiq (struct pt_regs *pt_regs)
> +{
> +	printf ("fast interrupt request\n");
> +	do_exception(pt_regs);
> +}
> +
> +/**
> + * The CPU catches a regular interrupt.
> + * @param[in] pt_regs Register set content when the interrupt happens
> + *
> + * We never enable interrupts, so this should not happen
> + */
> +void do_irq (struct pt_regs *pt_regs)
> +{
> +	printf ("interrupt request\n");
> +	do_exception(pt_regs);
> +}
> +
> +void do_bad_sync(struct pt_regs *pt_regs)
> +{
> +	printf("bad sync\n");
> +	do_exception(pt_regs);
> +}
> +
> +void do_bad_irq(struct pt_regs *pt_regs)
> +{
> +	printf("bad irq\n");
> +	do_exception(pt_regs);
> +}
> +
> +void do_bad_fiq(struct pt_regs *pt_regs)
> +{
> +	printf("bad fiq\n");
> +	do_exception(pt_regs);
> +}
> +
> +void do_bad_error(struct pt_regs *pt_regs)
> +{
> +	printf("bad error\n");
> +	do_exception(pt_regs);
> +}
> +
> +void do_sync(struct pt_regs *pt_regs)
> +{
> +	printf("sync exception\n");
> +	do_exception(pt_regs);
> +}
> +
> +
> +void do_error(struct pt_regs *pt_regs)
> +{
> +	printf("error exception\n");
> +	do_exception(pt_regs);
> +}
> +
> +extern volatile int arm_ignore_data_abort;
> +extern volatile int arm_data_abort_occurred;
> +
> +void data_abort_mask(void)
> +{
> +	arm_data_abort_occurred =3D 0;
> +	arm_ignore_data_abort =3D 1;
> +}
> +
> +int data_abort_unmask(void)
> +{
> +	arm_ignore_data_abort =3D 0;
> +
> +	return arm_data_abort_occurred !=3D 0;
> +}
> diff --git a/arch/arm64/cpu/lowlevel.S b/arch/arm64/cpu/lowlevel.S
> new file mode 100644
> index 0000000..87d6ecf
> --- /dev/null
> +++ b/arch/arm64/cpu/lowlevel.S
> @@ -0,0 +1,49 @@
> +#include <linux/linkage.h>
> +#include <init.h>
> +#include <asm/system.h>
> +#include <asm/gic.h>
> +#include <asm-generic/memory_layout.h>
> +
> +.section ".text_bare_init_","ax"
> +
> +ENTRY(arm_cpu_lowlevel_init)
> +	adr	x0, vectors
> +	mrs	x1, CurrentEL
> +	cmp	x1, #0xC		/* Check EL3 state */
> +	b.eq	1f
> +	cmp	x1, #0x8		/* Check EL2 state */
> +	b.eq	2f
> +	cmp	x1, #0x4		/* Check EL1 state */
> +	b.eq	3f
> +
> +1:
> +	msr	vbar_el3, x0
> +	mov	x0, #1			/* Non-Secure EL0/1 */
> +	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
> +	msr	scr_el3, x0
> +	msr	cptr_el3, xzr
> +	b	done
> +
> +2:
> +	msr	vbar_el2, x0
> +	mov	x0, #0x33ff		/* Enable FP/SIMD */
> +	msr	cptr_el2, x0
> +	b	done
> +	=

> +
> +3:
> +	msr	vbar_el1, x0
> +	mov	x0, #(3 << 20)		/* Enable FP/SIMD */
> +	msr	cpacr_el1, x0
> +	b	done
> +
> +done:
> +	ldr	x1, =3DSTACK_BASE
> +	mov	sp, x1
> +	mov     x29, #0
> +	stp     x29, x29, [sp, #-16]!
> +	mov     x29, sp
> +
> +	ret
> +
> +ENDPROC(arm_cpu_lowlevel_init)
> diff --git a/arch/arm64/cpu/mmu-early.c b/arch/arm64/cpu/mmu-early.c
> new file mode 100644
> index 0000000..2e4d316
> --- /dev/null
> +++ b/arch/arm64/cpu/mmu-early.c
> @@ -0,0 +1,53 @@
> +#include <common.h>
> +#include <asm/mmu.h>
> +#include <errno.h>
> +#include <linux/sizes.h>
> +#include <asm/memory.h>
> +#include <asm/system.h>
> +#include <asm/cache.h>
> +
> +#include "mmu.h"
> +
> +static uint32_t *ttb;
> +
> +static void create_sections(unsigned long addr, int size_m, unsigned int=
 flags)
> +{
> +	int i;
> +
> +	addr >>=3D 20;
> +
> +	for (i =3D size_m; i > 0; i--, addr++)
> +		ttb[addr] =3D (addr << 20) | flags;
> +}
> +
> +static void map_cachable(unsigned long start, unsigned long size)
> +{
> +	start &=3D ~(SZ_1M - 1);
> +	size =3D (size + (SZ_1M - 1)) & ~(SZ_1M - 1);
> +
> +	create_sections(start, size >> 20, PMD_SECT_AP_WRITE |
> +			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
> +}
> +
> +void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t _ttb)
> +{
> +	int i;
> +
> +	ttb =3D (uint32_t *)_ttb;
> +
> +	arm_set_cache_functions();
> +
> +	/* Set the ttb register */
> +	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
> +
> +	/* Set the Domain Access Control Register */
> +	i =3D 0x3;
> +	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
> +
> +	create_sections(0, 4096, PMD_SECT_AP_WRITE |
> +			PMD_SECT_AP_READ | PMD_TYPE_SECT);
> +
> +	map_cachable(membase, memsize);
> +
> +	__mmu_cache_on();
> +}
> diff --git a/arch/arm64/cpu/mmu-early.h b/arch/arm64/cpu/mmu-early.h
> new file mode 100644
> index 0000000..af21f52
> --- /dev/null
> +++ b/arch/arm64/cpu/mmu-early.h
> @@ -0,0 +1,6 @@
> +#ifndef __ARM_CPU_MMU_EARLY_H
> +#define __ARM_CPU_MMU_EARLY_H
> +
> +void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t ttb);
> +
> +#endif /* __ARM_CPU_MMU_EARLY_H */
> diff --git a/arch/arm64/cpu/mmu.c b/arch/arm64/cpu/mmu.c
> new file mode 100644
> index 0000000..bc5325f
> --- /dev/null
> +++ b/arch/arm64/cpu/mmu.c
> @@ -0,0 +1,492 @@
> +/*
> + * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengut=
ronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#define pr_fmt(fmt)	"mmu: " fmt
> +
> +#include <common.h>
> +#include <dma-dir.h>
> +#include <init.h>
> +#include <mmu.h>
> +#include <errno.h>
> +#include <linux/sizes.h>
> +#include <asm/memory.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <asm/cache.h>
> +#include <memory.h>
> +#include <asm/system_info.h>
> +
> +#include "mmu.h"
> +
> +static unsigned long *ttb;
> +
> +static void create_sections(unsigned long virt, unsigned long phys, int =
size_m,
> +		unsigned int flags)
> +{
> +	int i;
> +
> +	phys >>=3D 20;
> +	virt >>=3D 20;
> +
> +	for (i =3D size_m; i > 0; i--, virt++, phys++)
> +		ttb[virt] =3D (phys << 20) | flags;
> +
> +	__mmu_cache_flush();
> +}
> +
> +/*
> + * Do it the simple way for now and invalidate the entire
> + * tlb
> + */
> +static inline void tlb_invalidate(void)
> +{
> +	asm volatile (
> +		"mov	r0, #0\n"
> +		"mcr	p15, 0, r0, c7, c10, 4;	@ drain write buffer\n"
> +		"mcr	p15, 0, r0, c8, c6, 0;  @ invalidate D TLBs\n"
> +		"mcr	p15, 0, r0, c8, c5, 0;  @ invalidate I TLBs\n"
> +		:
> +		:
> +		: "r0"
> +	);
> +}
> +
> +#define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHE=
ABLE)
> +#define PTE_FLAGS_WC_V7 PTE_EXT_TEX(1)
> +#define PTE_FLAGS_UNCACHED_V7 (0)
> +#define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE=
_CACHEABLE)
> +#define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
> +
> +/*
> + * PTE flags to set cached and uncached areas.
> + * This will be determined at runtime.
> + */
> +static uint32_t pte_flags_cached;
> +static uint32_t pte_flags_wc;
> +static uint32_t pte_flags_uncached;
> +
> +#define PTE_MASK ((1 << 12) - 1)
> +
> +static void arm_mmu_not_initialized_error(void)
> +{
> +	/*
> +	 * This means:
> +	 * - one of the MMU functions like dma_alloc_coherent
> +	 *   or remap_range is called too early, before the MMU is initialized
> +	 * - Or the MMU initialization has failed earlier
> +	 */
> +	panic("MMU not initialized\n");
> +}
> +
> +/*
> + * Create a second level translation table for the given virtual address.
> + * We initially create a flat uncached mapping on it.
> + * Not yet exported, but may be later if someone finds use for it.
> + */
> +static u32 *arm_create_pte(unsigned long virt)
> +{
> +	u32 *table;
> +	int i;
> +
> +	table =3D memalign(0x400, 0x400);
> +
> +	if (!ttb)
> +		arm_mmu_not_initialized_error();
> +
> +	ttb[virt >> 20] =3D (unsigned long)table | PMD_TYPE_TABLE;
> +
> +	for (i =3D 0; i < 256; i++) {
> +		table[i] =3D virt | PTE_TYPE_SMALL | pte_flags_uncached;
> +		virt +=3D PAGE_SIZE;
> +	}
> +
> +	return table;
> +}
> +
> +static u32 *find_pte(unsigned long adr)
> +{
> +	u32 *table;
> +
> +	if (!ttb)
> +		arm_mmu_not_initialized_error();
> +
> +	if ((ttb[adr >> 20] & PMD_TYPE_MASK) !=3D PMD_TYPE_TABLE) {
> +		struct memory_bank *bank;
> +		int i =3D 0;
> +
> +		/*
> +		 * This should only be called for page mapped memory inside our
> +		 * memory banks. It's a bug to call it with section mapped memory
> +		 * locations.
> +		 */
> +		pr_crit("%s: TTB for address 0x%08lx is not of type table\n",
> +				__func__, adr);
> +		pr_crit("Memory banks:\n");
> +		for_each_memory_bank(bank)
> +			pr_crit("#%d 0x%08lx - 0x%08lx\n", i, bank->start,
> +					bank->start + bank->size - 1);
> +		BUG();
> +	}
> +
> +	/* find the coarse page table base address */
> +	table =3D (u32 *)(ttb[adr >> 20] & ~0x3ff);
> +
> +	/* find second level descriptor */
> +	return &table[(adr >> PAGE_SHIFT) & 0xff];
> +}
> +
> +static void dma_flush_range(unsigned long start, unsigned long end)
> +{
> +	__dma_flush_range(start, end);
> +	if (outer_cache.flush_range)
> +		outer_cache.flush_range(start, end);
> +}
> +
> +static void dma_inv_range(unsigned long start, unsigned long end)
> +{
> +	if (outer_cache.inv_range)
> +		outer_cache.inv_range(start, end);
> +	__dma_inv_range(start, end);
> +}
> +
> +static int __remap_range(void *_start, size_t size, u32 pte_flags)
> +{
> +	unsigned long start =3D (unsigned long)_start;
> +	u32 *p;
> +	int numentries, i;
> +
> +	numentries =3D size >> PAGE_SHIFT;
> +	p =3D find_pte(start);
> +
> +	for (i =3D 0; i < numentries; i++) {
> +		p[i] &=3D ~PTE_MASK;
> +		p[i] |=3D pte_flags | PTE_TYPE_SMALL;
> +	}
> +
> +	dma_flush_range((unsigned long)p,
> +			(unsigned long)p + numentries * sizeof(u32));
> +
> +	tlb_invalidate();
> +
> +	return 0;
> +}
> +
> +int arch_remap_range(void *start, size_t size, unsigned flags)
> +{
> +	u32 pte_flags;
> +
> +	switch (flags) {
> +	case MAP_CACHED:
> +		pte_flags =3D pte_flags_cached;
> +		break;
> +	case MAP_UNCACHED:
> +		pte_flags =3D pte_flags_uncached;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return __remap_range(start, size, pte_flags);
> +}
> +
> +void *map_io_sections(unsigned long phys, void *_start, size_t size)
> +{
> +	unsigned long start =3D (unsigned long)_start, sec;
> +
> +	phys >>=3D 20;
> +	for (sec =3D start; sec < start + size; sec +=3D (1 << 20))
> +		ttb[sec >> 20] =3D (phys++ << 20) | PMD_SECT_DEF_UNCACHED;
> +
> +	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
> +	tlb_invalidate();
> +	return _start;
> +}
> +
> +/*
> + * remap the memory bank described by mem cachable and
> + * bufferable
> + */
> +static int arm_mmu_remap_sdram(struct memory_bank *bank)
> +{
> +	unsigned long phys =3D (unsigned long)bank->start;
> +	unsigned long ttb_start =3D phys >> 20;
> +	unsigned long ttb_end =3D (phys >> 20) + (bank->size >> 20);
> +	unsigned long num_ptes =3D bank->size >> 12;
> +	int i, pte;
> +	u32 *ptes;
> +
> +	pr_debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
> +			phys, bank->size);
> +
> +	/*
> +	 * We replace each 1MiB section in this range with second level page
> +	 * tables, therefore we must have 1Mib aligment here.
> +	 */
> +	if ((phys & (SZ_1M - 1)) || (bank->size & (SZ_1M - 1)))
> +		return -EINVAL;
> +
> +	ptes =3D xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
> +
> +	pr_debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
> +			ptes, ttb_start, ttb_end);
> +
> +	for (i =3D 0; i < num_ptes; i++) {
> +		ptes[i] =3D (phys + i * PAGE_SIZE) | PTE_TYPE_SMALL |
> +			pte_flags_cached;
> +	}
> +
> +	pte =3D 0;
> +
> +	for (i =3D ttb_start; i < ttb_end; i++) {
> +		ttb[i] =3D (unsigned long)(&ptes[pte]) | PMD_TYPE_TABLE |
> +			(0 << 4);
> +		pte +=3D 256;
> +	}
> +
> +	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
> +	dma_flush_range((unsigned long)ptes,
> +			(unsigned long)ptes + num_ptes * sizeof(u32));
> +
> +	tlb_invalidate();
> +
> +	return 0;
> +}
> +/*
> + * We have 8 exception vectors and the table consists of absolute
> + * jumps, so we need 8 * 4 bytes for the instructions and another
> + * 8 * 4 bytes for the addresses.
> + */
> +#define ARM_VECTORS_SIZE	(sizeof(u32) * 8 * 2)
> +
> +/*
> + * Map vectors and zero page
> + */
> +static void vectors_init(void)
> +{
> +	u32 *exc, *zero =3D NULL;
> +	void *vectors;
> +	u32 cr;
> +
> +	cr =3D get_cr();
> +	cr |=3D CR_V;
> +	set_cr(cr);
> +	cr =3D get_cr();
> +
> +	if (cr & CR_V) {
> +		/*
> +		 * If we can use high vectors, create the second level
> +		 * page table for the high vectors and zero page
> +		 */
> +		exc =3D arm_create_pte(0xfff00000);
> +		zero =3D arm_create_pte(0x0);
> +
> +		/* Set the zero page to faulting */
> +		zero[0] =3D 0;
> +	} else {
> +		/*
> +		 * Otherwise map the vectors to the zero page. We have to
> +		 * live without being able to catch NULL pointer dereferences
> +		 */
> +		exc =3D arm_create_pte(0x0);
> +
> +		if (cpu_architecture() >=3D CPU_ARCH_ARMv7) {
> +			/*
> +			 * ARMv7 CPUs allow to remap low vectors from
> +			 * 0x0 to an arbitrary address using VBAR
> +			 * register, so let's make sure we have it
> +			 * pointing to the correct address
> +			 */
> +			set_vbar(0x0);
> +		}
> +	}
> +
> +	arm_fixup_vectors();
> +
> +	vectors =3D xmemalign(PAGE_SIZE, PAGE_SIZE);
> +	memset(vectors, 0, PAGE_SIZE);
> +	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_st=
art);
> +
> +	if (cr & CR_V)
> +		exc[256 - 16] =3D (u32)vectors | PTE_TYPE_SMALL |
> +			pte_flags_cached;
> +	else
> +		exc[0] =3D (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
> +}
> +
> +/*
> + * Prepare MMU for usage enable it.
> + */
> +static int mmu_init(void)
> +{
> +	struct memory_bank *bank;
> +	int i;
> +
> +	if (list_empty(&memory_banks))
> +		/*
> +		 * If you see this it means you have no memory registered.
> +		 * This can be done either with arm_add_mem_device() in an
> +		 * initcall prior to mmu_initcall or via devicetree in the
> +		 * memory node.
> +		 */
> +		panic("MMU: No memory bank found! Cannot continue\n");
> +
> +	arm_set_cache_functions();
> +
> +	if (cpu_architecture() >=3D CPU_ARCH_ARMv7) {
> +		pte_flags_cached =3D PTE_FLAGS_CACHED_V7;
> +		pte_flags_wc =3D PTE_FLAGS_WC_V7;
> +		pte_flags_uncached =3D PTE_FLAGS_UNCACHED_V7;
> +	} else {
> +		pte_flags_cached =3D PTE_FLAGS_CACHED_V4;
> +		pte_flags_wc =3D PTE_FLAGS_UNCACHED_V4;
> +		pte_flags_uncached =3D PTE_FLAGS_UNCACHED_V4;
> +	}
> +
> +	if (get_cr() & CR_M) {
> +		/*
> +		 * Early MMU code has already enabled the MMU. We assume a
> +		 * flat 1:1 section mapping in this case.
> +		 */
> +		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=3Dr"(ttb));
> +
> +		/* Clear unpredictable bits [13:0] */
> +		ttb =3D (unsigned long *)((unsigned long)ttb & ~0x3fff);
> +
> +		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
> +			/*
> +			 * This can mean that:
> +			 * - the early MMU code has put the ttb into a place
> +			 *   which we don't have inside our available memory
> +			 * - Somebody else has occupied the ttb region which means
> +			 *   the ttb will get corrupted.
> +			 */
> +			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
> +					ttb);
> +	} else {
> +		ttb =3D memalign(0x10000, 0x4000);
> +	}
> +
> +	pr_debug("ttb: 0x%p\n", ttb);
> +
> +	/* Set the ttb register */
> +	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
> +
> +	/* Set the Domain Access Control Register */
> +	i =3D 0x3;
> +	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
> +
> +	/* create a flat mapping using 1MiB sections */
> +	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
> +			PMD_TYPE_SECT);
> +
> +	vectors_init();
> +
> +	/*
> +	 * First remap sdram cached using sections.
> +	 * This is to speed up the generation of 2nd level page tables
> +	 * below
> +	 */
> +	for_each_memory_bank(bank)
> +		create_sections(bank->start, bank->start, bank->size >> 20,
> +				PMD_SECT_DEF_CACHED);
> +
> +	__mmu_cache_on();
> +
> +	/*
> +	 * Now that we have the MMU and caches on remap sdram again using
> +	 * page tables
> +	 */
> +	for_each_memory_bank(bank)
> +		arm_mmu_remap_sdram(bank);
> +
> +	return 0;
> +}
> +mmu_initcall(mmu_init);
> +
> +void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
> +{
> +	void *ret;
> +
> +	size =3D PAGE_ALIGN(size);
> +	ret =3D xmemalign(PAGE_SIZE, size);
> +	if (dma_handle)
> +		*dma_handle =3D (dma_addr_t)ret;
> +
> +	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
> +
> +	__remap_range(ret, size, pte_flags_uncached);
> +
> +	return ret;
> +}
> +
> +void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
> +{
> +	void *ret;
> +
> +	size =3D PAGE_ALIGN(size);
> +	ret =3D xmemalign(PAGE_SIZE, size);
> +	if (dma_handle)
> +		*dma_handle =3D (dma_addr_t)ret;
> +
> +	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
> +
> +	__remap_range(ret, size, pte_flags_wc);
> +
> +	return ret;
> +}
> +
> +unsigned long virt_to_phys(volatile void *virt)
> +{
> +	return (unsigned long)virt;
> +}
> +
> +void *phys_to_virt(unsigned long phys)
> +{
> +	return (void *)phys;
> +}
> +
> +void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
> +{
> +	size =3D PAGE_ALIGN(size);
> +	__remap_range(mem, size, pte_flags_cached);
> +
> +	free(mem);
> +}
> +
> +void dma_sync_single_for_cpu(unsigned long address, size_t size,
> +			     enum dma_data_direction dir)
> +{
> +	if (dir !=3D DMA_TO_DEVICE) {
> +		if (outer_cache.inv_range)
> +			outer_cache.inv_range(address, address + size);
> +		__dma_inv_range(address, address + size);
> +	}
> +}
> +
> +void dma_sync_single_for_device(unsigned long address, size_t size,
> +				enum dma_data_direction dir)
> +{
> +	if (dir =3D=3D DMA_FROM_DEVICE) {
> +		__dma_inv_range(address, address + size);
> +		if (outer_cache.inv_range)
> +			outer_cache.inv_range(address, address + size);
> +	} else {
> +		__dma_clean_range(address, address + size);
> +		if (outer_cache.clean_range)
> +			outer_cache.clean_range(address, address + size);
> +	}
> +}
> diff --git a/arch/arm64/cpu/mmu.h b/arch/arm64/cpu/mmu.h
> new file mode 100644
> index 0000000..79ebc80
> --- /dev/null
> +++ b/arch/arm64/cpu/mmu.h
> @@ -0,0 +1,14 @@
> +#ifndef __ARM_MMU_H
> +#define __ARM_MMU_H
> +
> +#ifdef CONFIG_MMU
> +void __mmu_cache_on(void);
> +void __mmu_cache_off(void);
> +void __mmu_cache_flush(void);
> +#else
> +static inline void __mmu_cache_on(void) {}
> +static inline void __mmu_cache_off(void) {}
> +static inline void __mmu_cache_flush(void) {}
> +#endif
> +
> +#endif /* __ARM_MMU_H */
> diff --git a/arch/arm64/cpu/mmuinfo.c b/arch/arm64/cpu/mmuinfo.c
> new file mode 100644
> index 0000000..c7ec76c
> --- /dev/null
> +++ b/arch/arm64/cpu/mmuinfo.c
> @@ -0,0 +1,104 @@
> +/*
> + * mmuinfo.c - Show MMU/cache information from cp15 registers
> + *
> + * Copyright (c) Jan Luebbe <j.luebbe@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +
> +static char *inner_attr[] =3D {
> +	"0b000 Non-cacheable",
> +	"0b001 Strongly-ordered",
> +	"0b010 (reserved)",
> +	"0b011 Device",
> +	"0b100 (reserved)",
> +	"0b101 Write-Back, Write-Allocate",
> +	"0b110 Write-Through",
> +	"0b111 Write-Back, no Write-Allocate",
> +};
> +
> +static char *outer_attr[] =3D {
> +	"0b00 Non-cacheable",
> +	"0b01 Write-Back, Write-Allocate",
> +	"0b10 Write-Through, no Write-Allocate",
> +	"0b11 Write-Back, no Write-Allocate",
> +};
> +
> +static void decode_par(unsigned long par)
> +{
> +	printf("  Physical Address [31:12]: 0x%08lx\n", par & 0xFFFFF000);
> +	printf("  Reserved [11]:            0x%lx\n", (par >> 11) & 0x1);
> +	printf("  Not Outer Shareable [10]: 0x%lx\n", (par >> 10) & 0x1);
> +	printf("  Non-Secure [9]:           0x%lx\n", (par >> 9) & 0x1);
> +	printf("  Impl. def. [8]:           0x%lx\n", (par >> 8) & 0x1);
> +	printf("  Shareable [7]:            0x%lx\n", (par >> 7) & 0x1);
> +	printf("  Inner mem. attr. [6:4]:   0x%lx (%s)\n", (par >> 4) & 0x7,
> +		inner_attr[(par >> 4) & 0x7]);
> +	printf("  Outer mem. attr. [3:2]:   0x%lx (%s)\n", (par >> 2) & 0x3,
> +		outer_attr[(par >> 2) & 0x3]);
> +	printf("  SuperSection [1]:         0x%lx\n", (par >> 1) & 0x1);
> +	printf("  Failure [0]:              0x%lx\n", (par >> 0) & 0x1);
> +}
> +
> +static int do_mmuinfo(int argc, char *argv[])
> +{
> +	unsigned long addr =3D 0, priv_read, priv_write;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	addr =3D strtoul_suffix(argv[1], NULL, 0);
> +
> +	__asm__ __volatile__(
> +		"mcr    p15, 0, %0, c7, c8, 0   @ write VA to PA translation (priv rea=
d)\n"
> +		:
> +		: "r" (addr)
> +		: "memory");
> +
> +	__asm__ __volatile__(
> +		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
> +		: "=3Dr" (priv_read)
> +		:
> +		: "memory");
> +
> +	__asm__ __volatile__(
> +		"mcr    p15, 0, %0, c7, c8, 1   @ write VA to PA translation (priv wri=
te)\n"
> +		:
> +		: "r" (addr)
> +		: "memory");
> +
> +	__asm__ __volatile__(
> +		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
> +		: "=3Dr" (priv_write)
> +		:
> +		: "memory");
> +
> +	printf("PAR result for 0x%08lx: \n", addr);
> +	printf(" privileged read: 0x%08lx\n", priv_read);
> +	decode_par(priv_read);
> +	printf(" privileged write: 0x%08lx\n", priv_write);
> +	decode_par(priv_write);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(mmuinfo)
> +	.cmd            =3D do_mmuinfo,
> +	BAREBOX_CMD_DESC("show MMU/cache information of an address")
> +	BAREBOX_CMD_OPTS("ADDRESS")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +BAREBOX_CMD_END
> diff --git a/arch/arm64/cpu/no-mmu.c b/arch/arm64/cpu/no-mmu.c
> new file mode 100644
> index 0000000..4559509
> --- /dev/null
> +++ b/arch/arm64/cpu/no-mmu.c
> @@ -0,0 +1,61 @@
> +/*
> + * Copyright (c) 2015 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#define pr_fmt(fmt)	"nommu: " fmt
> +
> +#include <common.h>
> +#include <dma-dir.h>
> +#include <init.h>
> +#include <mmu.h>
> +#include <errno.h>
> +#include <linux/sizes.h>
> +#include <asm/memory.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <asm/cache.h>
> +#include <memory.h>
> +#include <asm/system_info.h>
> +#include <debug_ll.h>
> +
> +
> +#define __exceptions_size (__exceptions_stop - __exceptions_start)
> +
> +static int nommu_v8_vectors_init(void)
> +{
> +	void *vectors;
> +	u32 cr;
> +
> +	if (cpu_architecture() < CPU_ARCH_ARMv8)
> +		return 0;
> +
> +//	/*
> +//	 * High vectors cannot be re-mapped, so we have to use normal
> +//	 * vectors
> +//	 */
> +//	cr =3D get_cr();
> +//	cr &=3D ~CR_V;
> +//	set_cr(cr);
> +//
> +//	arm_fixup_vectors();
> +//
> +//	vectors =3D xmemalign(PAGE_SIZE, PAGE_SIZE);
> +//	memset(vectors, 0, PAGE_SIZE);
> +//	memcpy(vectors, __exceptions_start, __exceptions_size);
> +//
> +//	set_vbar((unsigned int)vectors);
> +
> +	return 0;
> +}
> +mmu_initcall(nommu_v8_vectors_init);
> diff --git a/arch/arm64/cpu/start-pbl.c b/arch/arm64/cpu/start-pbl.c
> new file mode 100644
> index 0000000..f723edc
> --- /dev/null
> +++ b/arch/arm64/cpu/start-pbl.c
> @@ -0,0 +1,102 @@
> +/*
> + * start-pbl.c
> + *
> + * Copyright (c) 2010-2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengut=
ronix
> + * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosof=
t.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <pbl.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/sections.h>
> +#include <asm/pgtable.h>
> +#include <asm/cache.h>
> +
> +#include "mmu-early.h"
> +
> +unsigned long free_mem_ptr;
> +unsigned long free_mem_end_ptr;
> +
> +/*
> + * First instructions in the pbl image
> + */
> +void __naked __section(.text_head_entry) pbl_start(void)
> +{
> +	barebox_arm_head();
> +}
> +
> +extern void *input_data;
> +extern void *input_data_end;
> +
> +__noreturn void barebox_single_pbl_start(unsigned long membase,
> +		unsigned long memsize, void *boarddata)
> +{
> +	uint32_t offset;
> +	uint32_t pg_start, pg_end, pg_len;
> +	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
> +	uint32_t endmem =3D membase + memsize;
> +	unsigned long barebox_base;
> +
> +	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
> +		relocate_to_current_adr();
> +
> +	/* Get offset between linked address and runtime address */
> +	offset =3D get_runtime_offset();
> +
> +	pg_start =3D (uint32_t)&input_data - offset;
> +	pg_end =3D (uint32_t)&input_data_end - offset;
> +	pg_len =3D pg_end - pg_start;
> +
> +	if (IS_ENABLED(CONFIG_RELOCATABLE))
> +		barebox_base =3D arm_mem_barebox_image(membase, endmem, pg_len);
> +	else
> +		barebox_base =3D TEXT_BASE;
> +
> +	if (offset && (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY) ||
> +				region_overlap(pg_start, pg_len, barebox_base, pg_len * 4))) {
> +		/*
> +		 * copy piggydata binary to its link address
> +		 */
> +		memcpy(&input_data, (void *)pg_start, pg_len);
> +		pg_start =3D (uint32_t)&input_data;
> +	}
> +
> +	setup_c();
> +
> +	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> +		unsigned long ttb =3D arm_mem_ttb(membase, endmem);
> +		mmu_early_enable(membase, memsize, ttb);
> +	}
> +
> +	free_mem_ptr =3D arm_mem_early_malloc(membase, endmem);
> +	free_mem_end_ptr =3D arm_mem_early_malloc_end(membase, endmem);
> +
> +	pbl_barebox_uncompress((void*)barebox_base, (void *)pg_start, pg_len);
> +
> +	arm_early_mmu_cache_flush();
> +	flush_icache();
> +
> +	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> +		barebox =3D (void *)(barebox_base + 1);
> +	else
> +		barebox =3D (void *)barebox_base;
> +
> +	barebox(membase, memsize, boarddata);
> +}
> diff --git a/arch/arm64/cpu/start.c b/arch/arm64/cpu/start.c
> new file mode 100644
> index 0000000..e4a48e3
> --- /dev/null
> +++ b/arch/arm64/cpu/start.c
> @@ -0,0 +1,247 @@
> +/*
> + * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#define pr_fmt(fmt) "start.c: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <of.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/sections.h>
> +#include <asm/unaligned.h>
> +#include <asm/cache.h>
> +#include <memory.h>
> +#include <uncompress.h>
> +#include <malloc.h>
> +
> +#include <debug_ll.h>
> +#include "mmu-early.h"
> +
> +unsigned long arm_stack_top;
> +static unsigned long arm_head_bottom;
> +static unsigned long arm_barebox_size;
> +static void *barebox_boarddata;
> +
> +static bool blob_is_fdt(const void *blob)
> +{
> +	return get_unaligned_be32(blob) =3D=3D FDT_MAGIC;
> +}
> +
> +static bool blob_is_compressed_fdt(const void *blob)
> +{
> +	const struct barebox_arm_boarddata_compressed_dtb *dtb =3D blob;
> +
> +	return dtb->magic =3D=3D BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC;
> +}
> +
> +static bool blob_is_arm_boarddata(const void *blob)
> +{
> +	const struct barebox_arm_boarddata *bd =3D blob;
> +
> +	return bd->magic =3D=3D BAREBOX_ARM_BOARDDATA_MAGIC;
> +}
> +
> +u32 barebox_arm_machine(void)
> +{
> +	if (barebox_boarddata && blob_is_arm_boarddata(barebox_boarddata)) {
> +		const struct barebox_arm_boarddata *bd =3D barebox_boarddata;
> +		return bd->machine;
> +	} else {
> +		return 0;
> +	}
> +}
> +
> +void *barebox_arm_boot_dtb(void)
> +{
> +	void *dtb;
> +	void *data;
> +	int ret;
> +	struct barebox_arm_boarddata_compressed_dtb *compressed_dtb;
> +
> +	if (barebox_boarddata && blob_is_fdt(barebox_boarddata)) {
> +		pr_debug("%s: using barebox_boarddata\n", __func__);
> +		return barebox_boarddata;
> +	}
> +
> +	if (!IS_ENABLED(CONFIG_ARM_USE_COMPRESSED_DTB) || !barebox_boarddata
> +			|| !blob_is_compressed_fdt(barebox_boarddata))
> +		return NULL;
> +
> +	compressed_dtb =3D barebox_boarddata;
> +
> +	pr_debug("%s: using compressed_dtb\n", __func__);
> +
> +	dtb =3D malloc(compressed_dtb->datalen_uncompressed);
> +	if (!dtb)
> +		return NULL;
> +
> +	data =3D compressed_dtb + 1;
> +
> +	ret =3D uncompress(data, compressed_dtb->datalen, NULL, NULL,
> +			dtb, NULL, NULL);
> +	if (ret) {
> +		pr_err("uncompressing dtb failed\n");
> +		free(dtb);
> +		return NULL;
> +	}
> +
> +	barebox_boarddata =3D dtb;
> +
> +	return barebox_boarddata;
> +}
> +
> +static inline unsigned long arm_mem_boarddata(unsigned long membase,
> +					      unsigned long endmem,
> +					      unsigned long size)
> +{
> +	unsigned long mem;
> +
> +	mem =3D arm_mem_barebox_image(membase, endmem, barebox_image_size);
> +	mem -=3D ALIGN(size, 64);
> +
> +	return mem;
> +}
> +
> +unsigned long arm_mem_ramoops_get(void)
> +{
> +	return arm_mem_ramoops(0, arm_stack_top);
> +}
> +EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
> +
> +static int barebox_memory_areas_init(void)
> +{
> +	unsigned long start =3D arm_head_bottom;
> +	unsigned long size =3D arm_mem_barebox_image(0, arm_stack_top,
> +						   arm_barebox_size) -
> +			     arm_head_bottom;
> +	request_sdram_region("board data", start, size);
> +
> +	return 0;
> +}
> +device_initcall(barebox_memory_areas_init);
> +
> +__noreturn void barebox_non_pbl_start(unsigned long membase,
> +		unsigned long memsize, void *boarddata)
> +{
> +	unsigned long endmem =3D membase + memsize;
> +	unsigned long malloc_start, malloc_end;
> +	unsigned long barebox_size =3D barebox_image_size +
> +		((unsigned long)&__bss_stop - (unsigned long)&__bss_start);
> +
> +	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
> +		unsigned long barebox_base =3D arm_mem_barebox_image(membase,
> +								   endmem,
> +								   barebox_size);
> +		relocate_to_adr(barebox_base);
> +	}
> +
> +//	setup_c();
> +
> +	barrier();
> +
> +	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> +
> +	arm_stack_top =3D endmem;
> +	arm_barebox_size =3D barebox_size;
> +	arm_head_bottom =3D arm_mem_barebox_image(membase, endmem,
> +						arm_barebox_size);
> +
> +	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> +		unsigned long ttb =3D arm_mem_ttb(membase, endmem);
> +
> +		if (IS_ENABLED(CONFIG_PBL_IMAGE)) {
> +			arm_set_cache_functions();
> +		} else {
> +			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> +			arm_early_mmu_cache_invalidate();
> +			mmu_early_enable(membase, memsize, ttb);
> +		}
> +	}
> +
> +	if (boarddata) {
> +		uint32_t totalsize =3D 0;
> +		const char *name;
> +
> +		if (blob_is_fdt(boarddata)) {
> +			totalsize =3D get_unaligned_be32(boarddata + 4);
> +			name =3D "DTB";
> +		} else if (blob_is_compressed_fdt(boarddata)) {
> +			struct barebox_arm_boarddata_compressed_dtb *bd =3D boarddata;
> +			totalsize =3D bd->datalen + sizeof(*bd);
> +			name =3D "Compressed DTB";
> +		} else if (blob_is_arm_boarddata(boarddata)) {
> +			totalsize =3D sizeof(struct barebox_arm_boarddata);
> +			name =3D "machine type";
> +		}
> +
> +		if (totalsize) {
> +			unsigned long mem =3D arm_mem_boarddata(membase, endmem,
> +							      totalsize);
> +			pr_debug("found %s in boarddata, copying to 0x%lu\n",
> +				 name, mem);
> +			barebox_boarddata =3D memcpy((void *)mem, boarddata,
> +						   totalsize);
> +			arm_head_bottom =3D mem;
> +		}
> +	}
> +
> +	malloc_end =3D arm_head_bottom;
> +
> +	/*
> +	 * Maximum malloc space is the Kconfig value if given
> +	 * or 1GB.
> +	 */
> +	if (MALLOC_SIZE > 0) {
> +		malloc_start =3D malloc_end - MALLOC_SIZE;
> +		if (malloc_start < membase)
> +			malloc_start =3D membase;
> +	} else {
> +		malloc_start =3D malloc_end - (malloc_end - membase) / 2;
> +		if (malloc_end - malloc_start > SZ_1G)
> +			malloc_start =3D malloc_end - SZ_1G;
> +	}
> +
> +	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
> +			malloc_start, malloc_end - malloc_start);
> +
> +	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
> +
> +	pr_debug("starting barebox...\n");
> +
> +	start_barebox();
> +}
> +
> +#ifndef CONFIG_PBL_IMAGE
> +
> +void __section(.text_entry) start(void)
> +{
> +	barebox_arm_head();
> +}
> +
> +#else
> +/*
> + * First function in the uncompressed image. We get here from
> + * the pbl. The stack already has been set up by the pbl.
> + */
> +void __section(.text_entry) start(unsigned long membase,
> +		unsigned long memsize, void *boarddata)
> +{
> +	barebox_non_pbl_start(membase, memsize, boarddata);
> +}
> +#endif
> diff --git a/arch/arm64/cpu/uncompress.c b/arch/arm64/cpu/uncompress.c
> new file mode 100644
> index 0000000..5bcce6b
> --- /dev/null
> +++ b/arch/arm64/cpu/uncompress.c
> @@ -0,0 +1,111 @@
> +/*
> + * uncompress.c - uncompressor code for self extracing pbl image
> + *
> + * Copyright (c) 2010-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengut=
ronix
> + * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosof=
t.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#define pr_fmt(fmt) "uncompress.c: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <pbl.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/sections.h>
> +#include <asm/pgtable.h>
> +#include <asm/cache.h>
> +
> +#include <debug_ll.h>
> +
> +#include "mmu-early.h"
> +
> +unsigned long free_mem_ptr;
> +unsigned long free_mem_end_ptr;
> +
> +static int __attribute__((__used__))
> +	__attribute__((__section__(".image_end")))
> +	__image_end_dummy =3D 0xdeadbeef;
> +
> +void __noreturn barebox_multi_pbl_start(unsigned long membase,
> +		unsigned long memsize, void *boarddata)
> +{
> +	uint32_t pg_len;
> +	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
> +	uint32_t endmem =3D membase + memsize;
> +	unsigned long barebox_base;
> +	uint32_t *image_end;
> +	void *pg_start;
> +	unsigned long pc =3D get_pc();
> +
> +	image_end =3D (void *)ld_var(__image_end) - get_runtime_offset();
> +
> +	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
> +		/*
> +		 * If we run from inside the memory just relocate the binary
> +		 * to the current address. Otherwise it may be a readonly location.
> +		 * Copy and relocate to the start of the memory in this case.
> +		 */
> +		if (pc > membase && pc < membase + memsize)
> +			relocate_to_current_adr();
> +		else
> +			relocate_to_adr(membase);
> +	}
> +
> +	/*
> +	 * image_end is the first location after the executable. It contains
> +	 * the size of the appended compressed binary followed by the binary.
> +	 */
> +	pg_start =3D image_end + 1;
> +	pg_len =3D *(image_end);
> +
> +	if (IS_ENABLED(CONFIG_RELOCATABLE))
> +		barebox_base =3D arm_mem_barebox_image(membase, endmem,
> +						     pg_len);
> +	else
> +		barebox_base =3D TEXT_BASE;
> +
> +	setup_c();
> +
> +	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> +
> +	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> +		unsigned long ttb =3D arm_mem_ttb(membase, endmem);
> +		pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> +		mmu_early_enable(membase, memsize, ttb);
> +	}
> +
> +	free_mem_ptr =3D arm_mem_early_malloc(membase, endmem);
> +	free_mem_end_ptr =3D arm_mem_early_malloc_end(membase, endmem);
> +
> +	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx=
\n",
> +			pg_start, pg_len, barebox_base);
> +
> +	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
> +
> +	arm_early_mmu_cache_flush();
> +	flush_icache();
> +
> +	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> +		barebox =3D (void *)(barebox_base + 1);
> +	else
> +		barebox =3D (void *)barebox_base;
> +
> +	pr_debug("jumping to uncompressed image at 0x%p\n", barebox);
> +
> +	barebox(membase, memsize, boarddata);
> +}
> diff --git a/arch/arm64/include/asm/armlinux.h b/arch/arm64/include/asm/a=
rmlinux.h
> new file mode 100644
> index 0000000..07479fb
> --- /dev/null
> +++ b/arch/arm64/include/asm/armlinux.h
> @@ -0,0 +1,43 @@
> +#ifndef __ARCH_ARMLINUX_H
> +#define __ARCH_ARMLINUX_H
> +
> +#include <asm/memory.h>
> +#include <asm/setup.h>
> +
> +#if defined CONFIG_ARM_LINUX
> +void armlinux_set_bootparams(void *params);
> +void armlinux_set_architecture(int architecture);
> +void armlinux_set_revision(unsigned int);
> +void armlinux_set_serial(u64);
> +#else
> +static inline void armlinux_set_bootparams(void *params)
> +{
> +}
> +
> +static inline void armlinux_set_architecture(int architecture)
> +{
> +}
> +
> +static inline void armlinux_set_revision(unsigned int rev)
> +{
> +}
> +
> +static inline void armlinux_set_serial(u64 serial)
> +{
> +}
> +#endif
> +
> +#if defined CONFIG_ARM_BOARD_APPEND_ATAG
> +void armlinux_set_atag_appender(struct tag *(*)(struct tag *));
> +#else
> +static inline void armlinux_set_atag_appender(struct tag *(*func)(struct=
 tag *))
> +{
> +}
> +#endif
> +
> +struct image_data;
> +
> +void start_linux(void *adr, int swap, unsigned long initrd_address,
> +		unsigned long initrd_size, void *oftree);
> +
> +#endif /* __ARCH_ARMLINUX_H */
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/=
assembler.h
> new file mode 100644
> index 0000000..6116e48
> --- /dev/null
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -0,0 +1,116 @@
> +/*
> + *  arch/arm/include/asm/assembler.h
> + *
> + *  Copyright (C) 1996-2000 Russell King
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + *  This file contains arm architecture specific defines
> + *  for the different processors.
> + *
> + *  Do not include any C declarations in this file - it is included by
> + *  assembler source.
> + */
> +#ifndef __ASSEMBLY__
> +#error "Only include this from assembly code"
> +#endif
> +
> +#include <asm/ptrace.h>
> +
> +/*
> + * Endian independent macros for shifting bytes within registers.
> + */
> +#ifndef __ARMEB__
> +#define pull            lsr
> +#define push            lsl
> +#define get_byte_0      lsl #0
> +#define get_byte_1	lsr #8
> +#define get_byte_2	lsr #16
> +#define get_byte_3	lsr #24
> +#define put_byte_0      lsl #0
> +#define put_byte_1	lsl #8
> +#define put_byte_2	lsl #16
> +#define put_byte_3	lsl #24
> +#else
> +#define pull            lsl
> +#define push            lsr
> +#define get_byte_0	lsr #24
> +#define get_byte_1	lsr #16
> +#define get_byte_2	lsr #8
> +#define get_byte_3      lsl #0
> +#define put_byte_0	lsl #24
> +#define put_byte_1	lsl #16
> +#define put_byte_2	lsl #8
> +#define put_byte_3      lsl #0
> +#endif
> +
> +/*
> + * Data preload for architectures that support it
> + */
> +#if __LINUX_ARM_ARCH__ >=3D 5
> +#define PLD(code...)	code
> +#else
> +#define PLD(code...)
> +#endif
> +
> +/*
> + * This can be used to enable code to cacheline align the destination
> + * pointer when bulk writing to memory.  Experiments on StrongARM and
> + * XScale didn't show this a worthwhile thing to do when the cache is not
> + * set to write-allocate (this would need further testing on XScale when=
 WA
> + * is used).
> + *
> + * On Feroceon there is much to gain however, regardless of cache mode.
> + */
> +#ifdef CONFIG_CPU_FEROCEON
> +#define CALGN(code...) code
> +#else
> +#define CALGN(code...)
> +#endif
> +
> +/*
> + * Enable and disable interrupts
> + */
> +#if __LINUX_ARM_ARCH__ >=3D 6
> +	.macro	disable_irq
> +	cpsid	i
> +	.endm
> +
> +	.macro	enable_irq
> +	cpsie	i
> +	.endm
> +#else
> +	.macro	disable_irq
> +	msr	cpsr_c, #PSR_I_BIT | SVC_MODE
> +	.endm
> +
> +	.macro	enable_irq
> +	msr	cpsr_c, #SVC_MODE
> +	.endm
> +#endif
> +
> +/*
> + * Save the current IRQ state and disable IRQs.  Note that this macro
> + * assumes FIQs are enabled, and that the processor is in SVC mode.
> + */
> +	.macro	save_and_disable_irqs, oldcpsr
> +	mrs	\oldcpsr, cpsr
> +	disable_irq
> +	.endm
> +
> +/*
> + * Restore interrupt state previously stored in a register.  We don't
> + * guarantee that this will preserve the flags.
> + */
> +	.macro	restore_irqs, oldcpsr
> +	msr	cpsr_c, \oldcpsr
> +	.endm
> +
> +#define USER(x...)				\
> +9999:	x;					\
> +	.section __ex_table,"a";		\
> +	.align	3;				\
> +	.long	9999b,9001f;			\
> +	.previous
> diff --git a/arch/arm64/include/asm/barebox-arm-head.h b/arch/arm64/inclu=
de/asm/barebox-arm-head.h
> new file mode 100644
> index 0000000..0a2eb6b
> --- /dev/null
> +++ b/arch/arm64/include/asm/barebox-arm-head.h
> @@ -0,0 +1,65 @@
> +#ifndef __ASM_ARM_HEAD_H
> +#define __ASM_ARM_HEAD_H
> +
> +#include <asm/system.h>
> +
> +#ifndef __ASSEMBLY__
> +
> +void arm_cpu_lowlevel_init(void);
> +
> +/*
> + * 32 bytes at this offset is reserved in the barebox head for board/SoC
> + * usage
> + */
> +#define ARM_HEAD_SPARE_OFS	0x30
> +#define ARM_HEAD_SPARE_MARKER	0x55555555
> +
> +#ifdef CONFIG_HAVE_MACH_ARM_HEAD
> +#include <mach/barebox-arm-head.h>
> +#else
> +static inline void __barebox_arm_head(void)
> +{
> +	__asm__ __volatile__ (
> +#ifdef CONFIG_THUMB2_BAREBOX
> +		".arm\n"
> +		"adr r9, 1f + 1\n"
> +		"bx r9\n"
> +		".thumb\n"
> +		"1:\n"
> +		"bl 2f\n"
> +		".rept 10\n"
> +		"1: b 1b\n"
> +		".endr\n"
> +#else
> +		"b 2f\n"
> +		"1: b 1b\n"
> +		"1: b 1b\n"
> +		"1: b 1b\n"
> +		"1: b 1b\n"
> +		"1: b 1b\n"
> +		"1: b 1b\n"
> +		"1: b 1b\n"
> +#endif
> +		".asciz \"barebox\"\n"
> +		".word _text\n"				/* text base. If copied there,
> +							 * barebox can skip relocation
> +							 */
> +		".word _barebox_image_size\n"		/* image size to copy */
> +		".rept 8\n"
> +		".word 0x55555555\n"
> +		".endr\n"
> +		"2:\n"
> +	);
> +}
> +static inline void barebox_arm_head(void)
> +{
> +	__barebox_arm_head();
> +	__asm__ __volatile__ (
> +		"b barebox_arm_reset_vector\n"
> +	);
> +}
> +#endif
> +
> +#endif /* __ASSEMBLY__ */
> +
> +#endif /* __ASM_ARM_HEAD_H */
> diff --git a/arch/arm64/include/asm/barebox-arm.h b/arch/arm64/include/as=
m/barebox-arm.h
> new file mode 100644
> index 0000000..6713326
> --- /dev/null
> +++ b/arch/arm64/include/asm/barebox-arm.h
> @@ -0,0 +1,165 @@
> +/*
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Marius Groeger <mgroeger@sysgo.de>
> + *
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Alex Zuepke <azu@sysgo.de>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef _BAREBOX_ARM_H_
> +#define _BAREBOX_ARM_H_
> +
> +#include <linux/sizes.h>
> +#include <asm-generic/memory_layout.h>
> +#include <linux/kernel.h>
> +#include <linux/types.h>
> +#include <linux/compiler.h>
> +#include <asm/barebox-arm-head.h>
> +
> +/* cpu/.../cpu.c */
> +int	cleanup_before_linux(void);
> +
> +/* arch/<arch>board(s)/.../... */
> +int	board_init(void);
> +int	dram_init (void);
> +
> +extern char __exceptions_start[], __exceptions_stop[];
> +
> +void board_init_lowlevel(void);
> +uint32_t get_runtime_offset(void);
> +
> +void setup_c(void);
> +void relocate_to_current_adr(void);
> +void relocate_to_adr(unsigned long target);
> +void __noreturn barebox_arm_entry(unsigned long membase, unsigned long m=
emsize, void *boarddata);
> +
> +struct barebox_arm_boarddata {
> +#define BAREBOX_ARM_BOARDDATA_MAGIC	0xabe742c3
> +	u32 magic;
> +	u32 machine; /* machine number to pass to barebox. This may or may
> +		      * not be a ARM machine number registered on arm.linux.org.uk.
> +		      * It must only be unique across barebox. Please use a number
> +		      * that do not potientially clashes with registered machines,
> +		      * i.e. use a number > 0x10000.
> +		      */
> +};
> +
> +/*
> + * Create a boarddata struct at given address. Suitable to be passed
> + * as boarddata to barebox_arm_entry(). The machine can be retrieved
> + * later with barebox_arm_machine().
> + */
> +static inline void boarddata_create(void *adr, u32 machine)
> +{
> +	struct barebox_arm_boarddata *bd =3D adr;
> +
> +	bd->magic =3D BAREBOX_ARM_BOARDDATA_MAGIC;
> +	bd->machine =3D machine;
> +}
> +
> +u32 barebox_arm_machine(void);
> +
> +struct barebox_arm_boarddata_compressed_dtb {
> +#define BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
> +	u32 magic;
> +	u32 datalen;
> +	u32 datalen_uncompressed;
> +};
> +
> +struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
> +
> +#if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
> +void arm_fixup_vectors(void);
> +#else
> +static inline void arm_fixup_vectors(void)
> +{
> +}
> +#endif
> +
> +void *barebox_arm_boot_dtb(void);
> +
> +static inline unsigned long arm_mem_stack(unsigned long membase,
> +					  unsigned long endmem)
> +{
> +	return endmem - STACK_SIZE;
> +}
> +
> +static inline unsigned long arm_mem_ttb(unsigned long membase,
> +					unsigned long endmem)
> +{
> +	endmem =3D arm_mem_stack(membase, endmem);
> +	endmem &=3D ~(SZ_16K - 1);
> +	endmem -=3D SZ_16K;
> +
> +	return endmem;
> +}
> +
> +static inline unsigned long arm_mem_early_malloc(unsigned long membase,
> +						 unsigned long endmem)
> +{
> +	return arm_mem_ttb(membase, endmem) - SZ_128K;
> +}
> +
> +static inline unsigned long arm_mem_early_malloc_end(unsigned long memba=
se,
> +						     unsigned long endmem)
> +{
> +	return arm_mem_ttb(membase, endmem);
> +}
> +
> +static inline unsigned long arm_mem_ramoops(unsigned long membase,
> +					    unsigned long endmem)
> +{
> +	endmem =3D arm_mem_ttb(membase, endmem);
> +#ifdef CONFIG_FS_PSTORE_RAMOOPS
> +	endmem -=3D CONFIG_FS_PSTORE_RAMOOPS_SIZE;
> +	endmem &=3D ~(SZ_4K - 1); /* Align to 4K */
> +#endif
> +
> +	return endmem;
> +}
> +
> +static inline unsigned long arm_mem_barebox_image(unsigned long membase,
> +						  unsigned long endmem,
> +						  unsigned long size)
> +{
> +	endmem =3D arm_mem_ramoops(membase, endmem);
> +
> +	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
> +		endmem -=3D size;
> +		endmem &=3D ~(SZ_1M - 1);
> +	}
> +
> +	return endmem;
> +}
> +
> +#define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
> +	static void __##name(uint32_t, uint32_t, uint32_t);		\
> +									\
> +	void __naked __section(.text_head_entry_##name)	name		\
> +				(uint32_t r0, uint32_t r1, uint32_t r2)	\
> +		{							\
> +			__barebox_arm_head();				\
> +			__##name(r0, r1, r2);				\
> +		}							\
> +		static void __naked noinline __##name			\
> +			(uint32_t arg0, uint32_t arg1, uint32_t arg2)
> +
> +
> +
> +#endif	/* _BAREBOX_ARM_H_ */
> diff --git a/arch/arm64/include/asm/barebox.h b/arch/arm64/include/asm/ba=
rebox.h
> new file mode 100644
> index 0000000..31a8e15
> --- /dev/null
> +++ b/arch/arm64/include/asm/barebox.h
> @@ -0,0 +1,12 @@
> +#ifndef _BAREBOX_H_
> +#define _BAREBOX_H_	1
> +
> +#ifdef CONFIG_ARM_UNWIND
> +#define ARCH_HAS_STACK_DUMP
> +#endif
> +
> +#ifdef CONFIG_ARM_EXCEPTIONS
> +#define ARCH_HAS_DATA_ABORT_MASK
> +#endif
> +
> +#endif	/* _BAREBOX_H_ */
> diff --git a/arch/arm64/include/asm/bitops.h b/arch/arm64/include/asm/bit=
ops.h
> new file mode 100644
> index 0000000..ac85a0a
> --- /dev/null
> +++ b/arch/arm64/include/asm/bitops.h
> @@ -0,0 +1,48 @@
> +/*
> + * Copyright (C) 2012 ARM Ltd.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +#ifndef __ASM_BITOPS_H
> +#define __ASM_BITOPS_H
> +
> +#include <linux/compiler.h>
> +
> +#ifndef _LINUX_BITOPS_H
> +#error only <linux/bitops.h> can be included directly
> +#endif
> +
> +/*
> + * Little endian assembly atomic bitops.
> + */
> +extern void set_bit(int nr, volatile unsigned long *p);
> +extern void clear_bit(int nr, volatile unsigned long *p);
> +extern void change_bit(int nr, volatile unsigned long *p);
> +extern int test_and_set_bit(int nr, volatile unsigned long *p);
> +extern int test_and_clear_bit(int nr, volatile unsigned long *p);
> +extern int test_and_change_bit(int nr, volatile unsigned long *p);
> +
> +#include <asm-generic/bitops/__ffs.h>
> +#include <asm-generic/bitops/ffs.h>
> +#include <asm-generic/bitops/__fls.h>
> +#include <asm-generic/bitops/fls.h>
> +
> +#include <asm-generic/bitops/ffz.h>
> +#include <asm-generic/bitops/fls64.h>
> +#include <asm-generic/bitops/find.h>
> +
> +#include <asm-generic/bitops/hweight.h>
> +
> +#include <asm-generic/bitops/ops.h>
> +
> +#endif /* __ASM_BITOPS_H */
> diff --git a/arch/arm64/include/asm/bitsperlong.h b/arch/arm64/include/as=
m/bitsperlong.h
> new file mode 100644
> index 0000000..6dc0bb0
> --- /dev/null
> +++ b/arch/arm64/include/asm/bitsperlong.h
> @@ -0,0 +1 @@
> +#include <asm-generic/bitsperlong.h>
> diff --git a/arch/arm64/include/asm/byteorder.h b/arch/arm64/include/asm/=
byteorder.h
> new file mode 100644
> index 0000000..c3489f1
> --- /dev/null
> +++ b/arch/arm64/include/asm/byteorder.h
> @@ -0,0 +1,32 @@
> +/*
> + *  linux/include/asm-arm/byteorder.h
> + *
> + * ARM Endian-ness.  In little endian mode, the data bus is connected su=
ch
> + * that byte accesses appear as:
> + *  0 =3D d0...d7, 1 =3D d8...d15, 2 =3D d16...d23, 3 =3D d24...d31
> + * and word accesses (data or instruction) appear as:
> + *  d0...d31
> + *
> + * When in big endian mode, byte accesses appear as:
> + *  0 =3D d24...d31, 1 =3D d16...d23, 2 =3D d8...d15, 3 =3D d0...d7
> + * and word accesses (data or instruction) appear as:
> + *  d0...d31
> + */
> +#ifndef __ASM_ARM_BYTEORDER_H
> +#define __ASM_ARM_BYTEORDER_H
> +
> +
> +#include <asm/types.h>
> +
> +#if !defined(__STRICT_ANSI__) || defined(__KERNEL__)
> +#  define __BYTEORDER_HAS_U64__
> +#  define __SWAB_64_THRU_32__
> +#endif
> +
> +#ifdef __ARMEB__
> +#include <linux/byteorder/big_endian.h>
> +#else
> +#include <linux/byteorder/little_endian.h>
> +#endif
> +
> +#endif
> diff --git a/arch/arm64/include/asm/cache-l2x0.h b/arch/arm64/include/asm=
/cache-l2x0.h
> new file mode 100644
> index 0000000..963dd99
> --- /dev/null
> +++ b/arch/arm64/include/asm/cache-l2x0.h
> @@ -0,0 +1,101 @@
> +/*
> + * arch/arm/include/asm/hardware/cache-l2x0.h
> + *
> + * Copyright (C) 2007 ARM Limited
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef __ASM_ARM_HARDWARE_L2X0_H
> +#define __ASM_ARM_HARDWARE_L2X0_H
> +
> +#define L2X0_CACHE_ID			0x000
> +#define L2X0_CACHE_TYPE			0x004
> +#define L2X0_CTRL			0x100
> +#define L2X0_AUX_CTRL			0x104
> +#define L2X0_TAG_LATENCY_CTRL		0x108
> +#define L2X0_DATA_LATENCY_CTRL		0x10C
> +#define L2X0_EVENT_CNT_CTRL		0x200
> +#define L2X0_EVENT_CNT1_CFG		0x204
> +#define L2X0_EVENT_CNT0_CFG		0x208
> +#define L2X0_EVENT_CNT1_VAL		0x20C
> +#define L2X0_EVENT_CNT0_VAL		0x210
> +#define L2X0_INTR_MASK			0x214
> +#define L2X0_MASKED_INTR_STAT		0x218
> +#define L2X0_RAW_INTR_STAT		0x21C
> +#define L2X0_INTR_CLEAR			0x220
> +#define L2X0_CACHE_SYNC			0x730
> +#define L2X0_DUMMY_REG			0x740
> +#define L2X0_INV_LINE_PA		0x770
> +#define L2X0_INV_WAY			0x77C
> +#define L2X0_CLEAN_LINE_PA		0x7B0
> +#define L2X0_CLEAN_LINE_IDX		0x7B8
> +#define L2X0_CLEAN_WAY			0x7BC
> +#define L2X0_CLEAN_INV_LINE_PA		0x7F0
> +#define L2X0_CLEAN_INV_LINE_IDX		0x7F8
> +#define L2X0_CLEAN_INV_WAY		0x7FC
> +/*
> + * The lockdown registers repeat 8 times for L310, the L210 has only one
> + * D and one I lockdown register at 0x0900 and 0x0904.
> + */
> +#define L2X0_LOCKDOWN_WAY_D_BASE	0x900
> +#define L2X0_LOCKDOWN_WAY_I_BASE	0x904
> +#define L2X0_LOCKDOWN_STRIDE		0x08
> +#define L2X0_ADDR_FILTER_START		0xC00
> +#define L2X0_ADDR_FILTER_END		0xC04
> +#define L2X0_TEST_OPERATION		0xF00
> +#define L2X0_LINE_DATA			0xF10
> +#define L2X0_LINE_TAG			0xF30
> +#define L2X0_DEBUG_CTRL			0xF40
> +#define L2X0_PREFETCH_CTRL		0xF60
> +#define L2X0_POWER_CTRL			0xF80
> +#define   L2X0_DYNAMIC_CLK_GATING_EN	(1 << 1)
> +#define   L2X0_STNDBY_MODE_EN		(1 << 0)
> +
> +/* Registers shifts and masks */
> +#define L2X0_CACHE_ID_PART_MASK		(0xf << 6)
> +#define L2X0_CACHE_ID_PART_L210		(1 << 6)
> +#define L2X0_CACHE_ID_PART_L310		(3 << 6)
> +#define L2X0_CACHE_ID_RTL_MASK          0x3f
> +#define L2X0_CACHE_ID_RTL_R0P0          0x0
> +#define L2X0_CACHE_ID_RTL_R1P0          0x2
> +#define L2X0_CACHE_ID_RTL_R2P0          0x4
> +#define L2X0_CACHE_ID_RTL_R3P0          0x5
> +#define L2X0_CACHE_ID_RTL_R3P1          0x6
> +#define L2X0_CACHE_ID_RTL_R3P2          0x8
> +
> +#define L2X0_AUX_CTRL_MASK			0xc0000fff
> +#define L2X0_AUX_CTRL_DATA_RD_LATENCY_SHIFT	0
> +#define L2X0_AUX_CTRL_DATA_RD_LATENCY_MASK	0x7
> +#define L2X0_AUX_CTRL_DATA_WR_LATENCY_SHIFT	3
> +#define L2X0_AUX_CTRL_DATA_WR_LATENCY_MASK	(0x7 << 3)
> +#define L2X0_AUX_CTRL_TAG_LATENCY_SHIFT		6
> +#define L2X0_AUX_CTRL_TAG_LATENCY_MASK		(0x7 << 6)
> +#define L2X0_AUX_CTRL_DIRTY_LATENCY_SHIFT	9
> +#define L2X0_AUX_CTRL_DIRTY_LATENCY_MASK	(0x7 << 9)
> +#define L2X0_AUX_CTRL_ASSOCIATIVITY_SHIFT	16
> +#define L2X0_AUX_CTRL_WAY_SIZE_SHIFT		17
> +#define L2X0_AUX_CTRL_WAY_SIZE_MASK		(0x7 << 17)
> +#define L2X0_AUX_CTRL_SHARE_OVERRIDE_SHIFT	22
> +#define L2X0_AUX_CTRL_NS_LOCKDOWN_SHIFT		26
> +#define L2X0_AUX_CTRL_NS_INT_CTRL_SHIFT		27
> +#define L2X0_AUX_CTRL_DATA_PREFETCH_SHIFT	28
> +#define L2X0_AUX_CTRL_INSTR_PREFETCH_SHIFT	29
> +#define L2X0_AUX_CTRL_EARLY_BRESP_SHIFT		30
> +
> +#define L2X0_LATENCY_CTRL_SETUP_SHIFT	0
> +#define L2X0_LATENCY_CTRL_RD_SHIFT	4
> +#define L2X0_LATENCY_CTRL_WR_SHIFT	8
> +
> +#define L2X0_ADDR_FILTER_EN		1
> +
> +
> +#endif
> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cach=
e.h
> new file mode 100644
> index 0000000..5a524f3
> --- /dev/null
> +++ b/arch/arm64/include/asm/cache.h
> @@ -0,0 +1,16 @@
> +#ifndef __ASM_CACHE_H
> +#define __ASM_CACHE_H
> +
> +extern void v8_invalidate_icache_all(void);
> +
> +static inline void flush_icache(void)
> +{
> +	v8_invalidate_icache_all();
> +}
> +
> +int arm_set_cache_functions(void);
> +
> +void arm_early_mmu_cache_flush(void);
> +void arm_early_mmu_cache_invalidate(void);
> +
> +#endif
> diff --git a/arch/arm64/include/asm/common.h b/arch/arm64/include/asm/com=
mon.h
> new file mode 100644
> index 0000000..07ae619
> --- /dev/null
> +++ b/arch/arm64/include/asm/common.h
> @@ -0,0 +1,48 @@
> +#ifndef __ASM_ARM_COMMON_H
> +#define __ASM_ARM_COMMON_H
> +
> +static inline unsigned long get_pc(void)
> +{
> +	unsigned long pc;
> +
> +	__asm__ __volatile__(
> +                "mov    %0, pc\n"
> +                : "=3Dr" (pc)
> +                :
> +                : "memory");
> +
> +	return pc;
> +}
> +
> +static inline unsigned long get_lr(void)
> +{
> +	unsigned long lr;
> +
> +	__asm__ __volatile__(
> +                "mov    %0, lr\n"
> +                : "=3Dr" (lr)
> +                :
> +                : "memory");
> +
> +	return lr;
> +}
> +
> +static inline unsigned long get_sp(void)
> +{
> +	unsigned long sp;
> +
> +	__asm__ __volatile__(
> +                "mov    %0, sp\n"
> +                : "=3Dr" (sp)
> +                :
> +                : "memory");
> +
> +	return sp;
> +}
> +
> +static inline void arm_setup_stack(unsigned long top)
> +{
> +	__asm__ __volatile__("mov sp, %0" : : "r"(top));
> +}
> +
> +#endif /* __ASM_ARM_COMMON_H */
> diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cp=
utype.h
> new file mode 100644
> index 0000000..f39939b
> --- /dev/null
> +++ b/arch/arm64/include/asm/cputype.h
> @@ -0,0 +1,100 @@
> +#ifndef __ASM_ARM_CPUTYPE_H
> +#define __ASM_ARM_CPUTYPE_H
> +
> +#include <linux/stringify.h>
> +#include <linux/kernel.h>
> +
> +#define CPUID_ID	0
> +#define CPUID_CACHETYPE	1
> +#define CPUID_TCM	2
> +#define CPUID_TLBTYPE	3
> +#define CPUID_MPIDR	5
> +
> +#define CPUID_EXT_PFR0	"c1, 0"
> +#define CPUID_EXT_PFR1	"c1, 1"
> +#define CPUID_EXT_DFR0	"c1, 2"
> +#define CPUID_EXT_AFR0	"c1, 3"
> +#define CPUID_EXT_MMFR0	"c1, 4"
> +#define CPUID_EXT_MMFR1	"c1, 5"
> +#define CPUID_EXT_MMFR2	"c1, 6"
> +#define CPUID_EXT_MMFR3	"c1, 7"
> +#define CPUID_EXT_ISAR0	"c2, 0"
> +#define CPUID_EXT_ISAR1	"c2, 1"
> +#define CPUID_EXT_ISAR2	"c2, 2"
> +#define CPUID_EXT_ISAR3	"c2, 3"
> +#define CPUID_EXT_ISAR4	"c2, 4"
> +#define CPUID_EXT_ISAR5	"c2, 5"
> +
> +extern unsigned int processor_id;
> +
> +#define read_cpuid(reg)							\
> +	({								\
> +		unsigned int __val;					\
> +		asm("mrc	p15, 0, %0, c0, c0, " __stringify(reg)	\
> +		    : "=3Dr" (__val)					\
> +		    :							\
> +		    : "cc");						\
> +		__val;							\
> +	})
> +#define read_cpuid_ext(ext_reg)						\
> +	({								\
> +		unsigned int __val;					\
> +		asm("mrc	p15, 0, %0, c0, " ext_reg		\
> +		    : "=3Dr" (__val)					\
> +		    :							\
> +		    : "cc");						\
> +		__val;							\
> +	})
> +
> +/*
> + * The CPU ID never changes at run time, so we might as well tell the
> + * compiler that it's constant.  Use this function to read the CPU ID
> + * rather than directly reading processor_id or read_cpuid() directly.
> + */
> +static inline unsigned int __attribute_const__ read_cpuid_id(void)
> +{
> +	return read_cpuid(CPUID_ID);
> +}
> +
> +static inline unsigned int __attribute_const__ read_cpuid_cachetype(void)
> +{
> +	return read_cpuid(CPUID_CACHETYPE);
> +}
> +
> +static inline unsigned int __attribute_const__ read_cpuid_tcmstatus(void)
> +{
> +	return read_cpuid(CPUID_TCM);
> +}
> +
> +static inline unsigned int __attribute_const__ read_cpuid_mpidr(void)
> +{
> +	return read_cpuid(CPUID_MPIDR);
> +}
> +
> +/*
> + * Intel's XScale3 core supports some v6 features (supersections, L2)
> + * but advertises itself as v5 as it does not support the v6 ISA.  For
> + * this reason, we need a way to explicitly test for this type of CPU.
> + */
> +#ifndef CONFIG_CPU_XSC3
> +#define cpu_is_xsc3()	0
> +#else
> +static inline int cpu_is_xsc3(void)
> +{
> +	unsigned int id;
> +	id =3D read_cpuid_id() & 0xffffe000;
> +	/* It covers both Intel ID and Marvell ID */
> +	if ((id =3D=3D 0x69056000) || (id =3D=3D 0x56056000))
> +		return 1;
> +
> +	return 0;
> +}
> +#endif
> +
> +#if !defined(CONFIG_CPU_XSCALE) && !defined(CONFIG_CPU_XSC3)
> +#define	cpu_is_xscale()	0
> +#else
> +#define	cpu_is_xscale()	1
> +#endif
> +
> +#endif
> diff --git a/arch/arm64/include/asm/debug_ll_pl011.h b/arch/arm64/include=
/asm/debug_ll_pl011.h
> new file mode 100644
> index 0000000..db015a3
> --- /dev/null
> +++ b/arch/arm64/include/asm/debug_ll_pl011.h
> @@ -0,0 +1,25 @@
> +#ifndef __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
> +#define __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
> +
> +#ifndef DEBUG_LL_UART_ADDR
> +#error DEBUG_LL_UART_ADDR is undefined!
> +#endif
> +
> +#include <io.h>
> +#include <linux/amba/serial.h>
> +
> +static inline void PUTC_LL(char c)
> +{
> +	/* Wait until there is space in the FIFO */
> +	while (readl(DEBUG_LL_UART_ADDR + UART01x_FR) & UART01x_FR_TXFF)
> +		;
> +
> +	/* Send the character */
> +	writel(c, DEBUG_LL_UART_ADDR + UART01x_DR);
> +
> +	/* Wait to make sure it hits the line, in case we die too soon. */
> +	while (readl(DEBUG_LL_UART_ADDR + UART01x_FR) & UART01x_FR_TXFF)
> +		;
> +}
> +
> +#endif /* __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__ */
> diff --git a/arch/arm64/include/asm/dma.h b/arch/arm64/include/asm/dma.h
> new file mode 100644
> index 0000000..1ba2edf
> --- /dev/null
> +++ b/arch/arm64/include/asm/dma.h
> @@ -0,0 +1,46 @@
> +/*
> + * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
> + *
> + * This file is released under the GPLv2
> + *
> + */
> +
> +#include <common.h>
> +
> +#define dma_alloc dma_alloc
> +static inline void *dma_alloc(size_t size)
> +{
> +	return xmemalign(64, ALIGN(size, 64));
> +}
> +
> +#ifndef CONFIG_MMU
> +static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_hand=
le)
> +{
> +	void *ret =3D xmemalign(4096, size);
> +	if (dma_handle)
> +		*dma_handle =3D (dma_addr_t)ret;
> +
> +	return ret;
> +}
> +
> +static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_=
handle)
> +{
> +	return dma_alloc_coherent(size, dma_handle);
> +}
> +
> +static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
> +				     size_t size)
> +{
> +	free(mem);
> +}
> +
> +static inline void dma_sync_single_for_cpu(unsigned long address, size_t=
 size,
> +					   enum dma_data_direction dir)
> +{
> +}
> +
> +static inline void dma_sync_single_for_device(unsigned long address, siz=
e_t size,
> +					      enum dma_data_direction dir)
> +{
> +}
> +#endif
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> new file mode 100644
> index 0000000..724ebb0
> --- /dev/null
> +++ b/arch/arm64/include/asm/elf.h
> @@ -0,0 +1,119 @@
> +#ifndef __ASMARM_ELF_H
> +#define __ASMARM_ELF_H
> +
> +//#include <asm/hwcap.h>
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * ELF register definitions..
> + */
> +#include <asm/ptrace.h>
> +//#include <asm/user.h>
> +
> +typedef unsigned long elf_greg_t;
> +typedef unsigned long elf_freg_t[3];
> +
> +#define ELF_NGREG (sizeof (struct pt_regs) / sizeof(elf_greg_t))
> +typedef elf_greg_t elf_gregset_t[ELF_NGREG];
> +
> +typedef struct user_fp elf_fpregset_t;
> +#endif
> +
> +#define EM_ARM	40
> +#define EF_ARM_APCS26 0x08
> +#define EF_ARM_SOFT_FLOAT 0x200
> +#define EF_ARM_EABI_MASK 0xFF000000
> +
> +#define R_ARM_NONE	0
> +#define R_ARM_PC24	1
> +#define R_ARM_ABS32	2
> +#define R_ARM_CALL	28
> +#define R_ARM_JUMP24	29
> +
> +/*
> + * These are used to set parameters in the core dumps.
> + */
> +#define ELF_CLASS	ELFCLASS32
> +#ifdef __ARMEB__
> +#define ELF_DATA	ELFDATA2MSB
> +#else
> +#define ELF_DATA	ELFDATA2LSB
> +#endif
> +#define ELF_ARCH	EM_ARM
> +
> +#ifdef __KERNEL__
> +#ifndef __ASSEMBLY__
> +/*
> + * This yields a string that ld.so will use to load implementation
> + * specific libraries for optimization.  This is more specific in
> + * intent than poking at uname or /proc/cpuinfo.
> + *
> + * For now we just provide a fairly general string that describes the
> + * processor family.  This could be made more specific later if someone
> + * implemented optimisations that require it.  26-bit CPUs give you
> + * "v1l" for ARM2 (no SWP) and "v2l" for anything else (ARM1 isn't
> + * supported).  32-bit CPUs give you "v3[lb]" for anything based on an
> + * ARM6 or ARM7 core and "armv4[lb]" for anything based on a StrongARM-1
> + * core.
> + */
> +#define ELF_PLATFORM_SIZE 8
> +#define ELF_PLATFORM	(elf_platform)
> +
> +extern char elf_platform[];
> +#endif
> +
> +/*
> + * This is used to ensure we don't load something for the wrong architec=
ture.
> + */
> +#define elf_check_arch(x) ((x)->e_machine =3D=3D EM_ARM && ELF_PROC_OK(x=
))
> +
> +/*
> + * 32-bit code is always OK.  Some cpus can do 26-bit, some can't.
> + */
> +#define ELF_PROC_OK(x)	(ELF_THUMB_OK(x) && ELF_26BIT_OK(x))
> +
> +#define ELF_THUMB_OK(x) \
> +	((elf_hwcap & HWCAP_THUMB && ((x)->e_entry & 1) =3D=3D 1) || \
> +	 ((x)->e_entry & 3) =3D=3D 0)
> +
> +#define ELF_26BIT_OK(x) \
> +	((elf_hwcap & HWCAP_26BIT && (x)->e_flags & EF_ARM_APCS26) || \
> +	  ((x)->e_flags & EF_ARM_APCS26) =3D=3D 0)
> +
> +#define USE_ELF_CORE_DUMP
> +#define ELF_EXEC_PAGESIZE	4096
> +
> +/* This is the location that an ET_DYN program is loaded if exec'ed.  Ty=
pical
> +   use of this is to invoke "./ld.so someprog" to test out a new version=
 of
> +   the loader.  We need to make sure that it is out of the way of the pr=
ogram
> +   that it will "exec", and that there is sufficient room for the brk.  =
*/
> +
> +#define ELF_ET_DYN_BASE	(2 * TASK_SIZE / 3)
> +
> +/* When the program starts, a1 contains a pointer to a function to be =

> +   registered with atexit, as per the SVR4 ABI.  A value of 0 means we =

> +   have no such handler.  */
> +#define ELF_PLAT_INIT(_r, load_addr)	(_r)->ARM_r0 =3D 0
> +
> +/*
> + * Since the FPA coprocessor uses CP1 and CP2, and iWMMXt uses CP0
> + * and CP1, we only enable access to the iWMMXt coprocessor if the
> + * binary is EABI or softfloat (and thus, guaranteed not to use
> + * FPA instructions.)
> + */
> +#define SET_PERSONALITY(ex, ibcs2)					\
> +	do {								\
> +		if ((ex).e_flags & EF_ARM_APCS26) {			\
> +			set_personality(PER_LINUX);			\
> +		} else {						\
> +			set_personality(PER_LINUX_32BIT);		\
> +			if (elf_hwcap & HWCAP_IWMMXT && (ex).e_flags & (EF_ARM_EABI_MASK | EF=
_ARM_SOFT_FLOAT)) \
> +				set_thread_flag(TIF_USING_IWMMXT);	\
> +			else						\
> +				clear_thread_flag(TIF_USING_IWMMXT);	\
> +		}							\
> +	} while (0)
> +
> +#endif
> +
> +#endif
> diff --git a/arch/arm64/include/asm/errata.h b/arch/arm64/include/asm/err=
ata.h
> new file mode 100644
> index 0000000..9525823
> --- /dev/null
> +++ b/arch/arm64/include/asm/errata.h
> @@ -0,0 +1,79 @@
> +/*
> + * Copyright (C) 2014 Lucas Stach, Pengutronix
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +static inline void enable_arm_errata_709718_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c10, c2, 0\n"
> +		"bic	r0, #3 << 16\n"
> +		"mcr	p15, 0, r0, c10, c2, 0\n"
> +		"mrc	p15, 0, r0, c1, c0, 0\n"
> +		"orr	r0, r0, #1 << 28\n"
> +		"mcr	p15, 0, r0, c1, c0, 0\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_716044_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c1, c0, 0\n"
> +		"orr	r0, r0, #1 << 11\n"
> +		"mcr	p15, 0, r0, c1, c0, 0\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_742230_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 4\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_743622_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 6\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_751472_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 11\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_761320_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 21\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_794072_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 4\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> diff --git a/arch/arm64/include/asm/gic.h b/arch/arm64/include/asm/gic.h
> new file mode 100644
> index 0000000..c7c17e3
> --- /dev/null
> +++ b/arch/arm64/include/asm/gic.h
> @@ -0,0 +1,128 @@
> +#ifndef __GIC_H__
> +#define __GIC_H__
> +
> +/* Generic Interrupt Controller Definitions */
> +//#ifdef CONFIG_GICV3
> +//#define GICD_BASE                       (0x2f000000)
> +//#define GICR_BASE                       (0x2f100000)
> +//#else
> +
> +//#if defined(CONFIG_TARGET_VEXPRESS64_BASE_FVP) || \
> +        defined(CONFIG_TARGET_VEXPRESS64_BASE_FVP_DRAM)
> +//#define GICD_BASE                       (0x2f000000)
> +//#define GICC_BASE                       (0x2c000000)
> +//#elif CONFIG_TARGET_VEXPRESS64_JUNO
> +#define GIC_DIST_BASE                       (0x2C010000)
> +#define GIC_CPU_BASE                       (0x2C02f000)
> +//#else
> +//#error "Unknown board variant"
> +//#endif
> +//#endif /* !CONFIG_GICV3 */
> +
> +/* Register offsets for the ARM generic interrupt controller (GIC) */
> +
> +#define GIC_DIST_OFFSET		0x1000
> +#define GIC_CPU_OFFSET_A9	0x0100
> +#define GIC_CPU_OFFSET_A15	0x2000
> +
> +/* Distributor Registers */
> +#define GICD_CTLR		0x0000
> +#define GICD_TYPER		0x0004
> +#define GICD_IIDR		0x0008
> +#define GICD_STATUSR		0x0010
> +#define GICD_SETSPI_NSR		0x0040
> +#define GICD_CLRSPI_NSR		0x0048
> +#define GICD_SETSPI_SR		0x0050
> +#define GICD_CLRSPI_SR		0x0058
> +#define GICD_SEIR		0x0068
> +#define GICD_IGROUPRn		0x0080
> +#define GICD_ISENABLERn		0x0100
> +#define GICD_ICENABLERn		0x0180
> +#define GICD_ISPENDRn		0x0200
> +#define GICD_ICPENDRn		0x0280
> +#define GICD_ISACTIVERn		0x0300
> +#define GICD_ICACTIVERn		0x0380
> +#define GICD_IPRIORITYRn	0x0400
> +#define GICD_ITARGETSRn		0x0800
> +#define GICD_ICFGR		0x0c00
> +#define GICD_IGROUPMODRn	0x0d00
> +#define GICD_NSACRn		0x0e00
> +#define GICD_SGIR		0x0f00
> +#define GICD_CPENDSGIRn		0x0f10
> +#define GICD_SPENDSGIRn		0x0f20
> +#define GICD_IROUTERn		0x6000
> +
> +/* Cpu Interface Memory Mapped Registers */
> +#define GICC_CTLR		0x0000
> +#define GICC_PMR		0x0004
> +#define GICC_BPR		0x0008
> +#define GICC_IAR		0x000C
> +#define GICC_EOIR		0x0010
> +#define GICC_RPR		0x0014
> +#define GICC_HPPIR		0x0018
> +#define GICC_ABPR		0x001c
> +#define GICC_AIAR		0x0020
> +#define GICC_AEOIR		0x0024
> +#define GICC_AHPPIR		0x0028
> +#define GICC_APRn		0x00d0
> +#define GICC_NSAPRn		0x00e0
> +#define GICC_IIDR		0x00fc
> +#define GICC_DIR		0x1000
> +
> +/* ReDistributor Registers for Control and Physical LPIs */
> +#define GICR_CTLR		0x0000
> +#define GICR_IIDR		0x0004
> +#define GICR_TYPER		0x0008
> +#define GICR_STATUSR		0x0010
> +#define GICR_WAKER		0x0014
> +#define GICR_SETLPIR		0x0040
> +#define GICR_CLRLPIR		0x0048
> +#define GICR_SEIR		0x0068
> +#define GICR_PROPBASER		0x0070
> +#define GICR_PENDBASER		0x0078
> +#define GICR_INVLPIR		0x00a0
> +#define GICR_INVALLR		0x00b0
> +#define GICR_SYNCR		0x00c0
> +#define GICR_MOVLPIR		0x0100
> +#define GICR_MOVALLR		0x0110
> +
> +/* ReDistributor Registers for SGIs and PPIs */
> +#define GICR_IGROUPRn		0x0080
> +#define GICR_ISENABLERn		0x0100
> +#define GICR_ICENABLERn		0x0180
> +#define GICR_ISPENDRn		0x0200
> +#define GICR_ICPENDRn		0x0280
> +#define GICR_ISACTIVERn		0x0300
> +#define GICR_ICACTIVERn		0x0380
> +#define GICR_IPRIORITYRn	0x0400
> +#define GICR_ICFGR0		0x0c00
> +#define GICR_ICFGR1		0x0c04
> +#define GICR_IGROUPMODRn	0x0d00
> +#define GICR_NSACRn		0x0e00
> +
> +/* Cpu Interface System Registers */
> +#define ICC_IAR0_EL1		S3_0_C12_C8_0
> +#define ICC_IAR1_EL1		S3_0_C12_C12_0
> +#define ICC_EOIR0_EL1		S3_0_C12_C8_1
> +#define ICC_EOIR1_EL1		S3_0_C12_C12_1
> +#define ICC_HPPIR0_EL1		S3_0_C12_C8_2
> +#define ICC_HPPIR1_EL1		S3_0_C12_C12_2
> +#define ICC_BPR0_EL1		S3_0_C12_C8_3
> +#define ICC_BPR1_EL1		S3_0_C12_C12_3
> +#define ICC_DIR_EL1		S3_0_C12_C11_1
> +#define ICC_PMR_EL1		S3_0_C4_C6_0
> +#define ICC_RPR_EL1		S3_0_C12_C11_3
> +#define ICC_CTLR_EL1		S3_0_C12_C12_4
> +#define ICC_CTLR_EL3		S3_6_C12_C12_4
> +#define ICC_SRE_EL1		S3_0_C12_C12_5
> +#define ICC_SRE_EL2		S3_4_C12_C9_5
> +#define ICC_SRE_EL3		S3_6_C12_C12_5
> +#define ICC_IGRPEN0_EL1		S3_0_C12_C12_6
> +#define ICC_IGRPEN1_EL1		S3_0_C12_C12_7
> +#define ICC_IGRPEN1_EL3		S3_6_C12_C12_7
> +#define ICC_SEIEN_EL1		S3_0_C12_C13_0
> +#define ICC_SGI0R_EL1		S3_0_C12_C11_7
> +#define ICC_SGI1R_EL1		S3_0_C12_C11_5
> +#define ICC_ASGI1R_EL1		S3_0_C12_C11_6
> +
> +#endif /* __GIC_H__ */
> diff --git a/arch/arm64/include/asm/hardware/arm_timer.h b/arch/arm64/inc=
lude/asm/hardware/arm_timer.h
> new file mode 100644
> index 0000000..8a58390
> --- /dev/null
> +++ b/arch/arm64/include/asm/hardware/arm_timer.h
> @@ -0,0 +1,38 @@
> +#ifndef __ASM_ARM_HARDWARE_ARM_TIMER_H
> +#define __ASM_ARM_HARDWARE_ARM_TIMER_H
> +
> +/*
> + * From Linux v2.6.35
> + * arch/arm/include/asm/hardware/arm_timer.h
> + *
> + * ARM timer implementation, found in Integrator, Versatile and Realview
> + * platforms.  Not all platforms support all registers and bits in these
> + * registers, so we mark them with A for Integrator AP, C for Integrator
> + * CP, V for Versatile and R for Realview.
> + *
> + * Integrator AP has 16-bit timers, Integrator CP, Versatile and Realview
> + * can have 16-bit or 32-bit selectable via a bit in the control registe=
r.
> + *
> + * Every SP804 contains two identical timers.
> + */
> +#define TIMER_1_BASE	0x00
> +#define TIMER_2_BASE	0x20
> +
> +#define TIMER_LOAD	0x00			/* ACVR rw */
> +#define TIMER_VALUE	0x04			/* ACVR ro */
> +#define TIMER_CTRL	0x08			/* ACVR rw */
> +#define TIMER_CTRL_ONESHOT	(1 << 0)	/*  CVR */
> +#define TIMER_CTRL_32BIT	(1 << 1)	/*  CVR */
> +#define TIMER_CTRL_DIV1		(0 << 2)	/* ACVR */
> +#define TIMER_CTRL_DIV16	(1 << 2)	/* ACVR */
> +#define TIMER_CTRL_DIV256	(2 << 2)	/* ACVR */
> +#define TIMER_CTRL_IE		(1 << 5)	/*   VR */
> +#define TIMER_CTRL_PERIODIC	(1 << 6)	/* ACVR */
> +#define TIMER_CTRL_ENABLE	(1 << 7)	/* ACVR */
> +
> +#define TIMER_INTCLR	0x0c			/* ACVR wo */
> +#define TIMER_RIS	0x10			/*  CVR ro */
> +#define TIMER_MIS	0x14			/*  CVR ro */
> +#define TIMER_BGLOAD	0x18			/*  CVR rw */
> +
> +#endif
> diff --git a/arch/arm64/include/asm/hardware/sp810.h b/arch/arm64/include=
/asm/hardware/sp810.h
> new file mode 100644
> index 0000000..3e3996a
> --- /dev/null
> +++ b/arch/arm64/include/asm/hardware/sp810.h
> @@ -0,0 +1,68 @@
> +/*
> + * arch/arm/include/asm/hardware/sp810.h
> + *
> + * ARM PrimeXsys System Controller SP810 header file
> + *
> + * Copyright (C) 2009 ST Microelectronics
> + * Viresh Kumar <viresh.linux@gmail.com>
> + *
> + * This file is licensed under the terms of the GNU General Public
> + * License version 2. This program is licensed "as is" without any
> + * warranty of any kind, whether express or implied.
> + */
> +
> +#ifndef __ASM_ARM_SP810_H
> +#define __ASM_ARM_SP810_H
> +
> +#include <io.h>
> +
> +/* sysctl registers offset */
> +#define SCCTRL			0x000
> +#define SCSYSSTAT		0x004
> +#define SCIMCTRL		0x008
> +#define SCIMSTAT		0x00C
> +#define SCXTALCTRL		0x010
> +#define SCPLLCTRL		0x014
> +#define SCPLLFCTRL		0x018
> +#define SCPERCTRL0		0x01C
> +#define SCPERCTRL1		0x020
> +#define SCPEREN			0x024
> +#define SCPERDIS		0x028
> +#define SCPERCLKEN		0x02C
> +#define SCPERSTAT		0x030
> +#define SCSYSID0		0xEE0
> +#define SCSYSID1		0xEE4
> +#define SCSYSID2		0xEE8
> +#define SCSYSID3		0xEEC
> +#define SCITCR			0xF00
> +#define SCITIR0			0xF04
> +#define SCITIR1			0xF08
> +#define SCITOR			0xF0C
> +#define SCCNTCTRL		0xF10
> +#define SCCNTDATA		0xF14
> +#define SCCNTSTEP		0xF18
> +#define SCPERIPHID0		0xFE0
> +#define SCPERIPHID1		0xFE4
> +#define SCPERIPHID2		0xFE8
> +#define SCPERIPHID3		0xFEC
> +#define SCPCELLID0		0xFF0
> +#define SCPCELLID1		0xFF4
> +#define SCPCELLID2		0xFF8
> +#define SCPCELLID3		0xFFC
> +
> +#define SCCTRL_TIMEREN0SEL_REFCLK	(0 << 15)
> +#define SCCTRL_TIMEREN0SEL_TIMCLK	(1 << 15)
> +
> +#define SCCTRL_TIMEREN1SEL_REFCLK	(0 << 17)
> +#define SCCTRL_TIMEREN1SEL_TIMCLK	(1 << 17)
> +
> +static inline void sysctl_soft_reset(void __iomem *base)
> +{
> +	/* switch to slow mode */
> +	writel(0x2, base + SCCTRL);
> +
> +	/* writing any value to SCSYSSTAT reg will reset system */
> +	writel(0, base + SCSYSSTAT);
> +}
> +
> +#endif	/* __ASM_ARM_SP810_H */
> diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
> new file mode 100644
> index 0000000..eebf093
> --- /dev/null
> +++ b/arch/arm64/include/asm/io.h
> @@ -0,0 +1,87 @@
> +#ifndef __ASM_ARM_IO_H
> +#define __ASM_ARM_IO_H
> +
> +#include <asm-generic/io.h>
> +
> +#define	IO_SPACE_LIMIT	0
> +
> +/*
> + * String version of IO memory access ops:
> + */
> +extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
> +extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
> +extern void memset_io(volatile void __iomem *, int, size_t);
> +
> +/*
> + * Clear and set bits in one shot. These macros can be used to clear and
> + * set multiple bits in a register using a single call. These macros can
> + * also be used to set a multiple-bit bit pattern using a mask, by
> + * specifying the mask in the 'clear' parameter and the new bit pattern
> + * in the 'set' parameter.
> + */
> +
> +#define out_arch(type,endian,a,v)	__raw_write##type(cpu_to_##endian(v),a)
> +#define in_arch(type,endian,a)		endian##_to_cpu(__raw_read##type(a))
> +
> +#define out_le64(a,v)	out_arch(q,le64,a,v)
> +#define out_le32(a,v)	out_arch(l,le32,a,v)
> +#define out_le16(a,v)	out_arch(w,le16,a,v)
> +
> +#define in_le64(a)	in_arch(q,le64,a)
> +#define in_le32(a)	in_arch(l,le32,a)
> +#define in_le16(a)	in_arch(w,le16,a)
> +
> +#define out_be32(a,v)	out_arch(l,be32,a,v)
> +#define out_be16(a,v)	out_arch(w,be16,a,v)
> +
> +#define in_be32(a)	in_arch(l,be32,a)
> +#define in_be16(a)	in_arch(w,be16,a)
> +
> +#define out_8(a,v)	__raw_writeb(v,a)
> +#define in_8(a)		__raw_readb(a)
> +
> +#define clrbits(type, addr, clear) \
> +	out_##type((addr), in_##type(addr) & ~(clear))
> +
> +#define setbits(type, addr, set) \
> +	out_##type((addr), in_##type(addr) | (set))
> +
> +#define clrsetbits(type, addr, clear, set) \
> +	out_##type((addr), (in_##type(addr) & ~(clear)) | (set))
> +
> +#define clrbits_be32(addr, clear) clrbits(be32, addr, clear)
> +#define setbits_be32(addr, set) setbits(be32, addr, set)
> +#define clrsetbits_be32(addr, clear, set) clrsetbits(be32, addr, clear, =
set)
> +
> +#define clrbits_le32(addr, clear) clrbits(le32, addr, clear)
> +#define setbits_le32(addr, set) setbits(le32, addr, set)
> +#define clrsetbits_le32(addr, clear, set) clrsetbits(le32, addr, clear, =
set)
> +
> +#define clrbits_be16(addr, clear) clrbits(be16, addr, clear)
> +#define setbits_be16(addr, set) setbits(be16, addr, set)
> +#define clrsetbits_be16(addr, clear, set) clrsetbits(be16, addr, clear, =
set)
> +
> +#define clrbits_le16(addr, clear) clrbits(le16, addr, clear)
> +#define setbits_le16(addr, set) setbits(le16, addr, set)
> +#define clrsetbits_le16(addr, clear, set) clrsetbits(le16, addr, clear, =
set)
> +
> +#define clrbits_8(addr, clear) clrbits(8, addr, clear)
> +#define setbits_8(addr, set) setbits(8, addr, set)
> +#define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
> +
> +#ifdef CONFIG_MMU
> +void *phys_to_virt(unsigned long phys);
> +unsigned long virt_to_phys(volatile void *virt);
> +#else
> +static inline void *phys_to_virt(unsigned long phys)
> +{
> +	return (void *)phys;
> +}
> +
> +static inline unsigned long virt_to_phys(volatile void *mem)
> +{
> +	return (unsigned long)mem;
> +}
> +#endif
> +
> +#endif	/* __ASM_ARM_IO_H */
> diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/li=
nkage.h
> new file mode 100644
> index 0000000..5a25632
> --- /dev/null
> +++ b/arch/arm64/include/asm/linkage.h
> @@ -0,0 +1,11 @@
> +#ifndef __ASM_LINKAGE_H
> +#define __ASM_LINKAGE_H
> +
> +#define __ALIGN .align 0
> +#define __ALIGN_STR ".align 0"
> +
> +#define ENDPROC(name) \
> +  .type name, %function; \
> +  END(name)
> +
> +#endif
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/mem=
ory.h
> new file mode 100644
> index 0000000..52114d0
> --- /dev/null
> +++ b/arch/arm64/include/asm/memory.h
> @@ -0,0 +1,19 @@
> +#ifndef __ASM_ARM_MEMORY_H
> +#define __ASM_ARM_MEMORY_H
> +
> +#include <memory.h>
> +
> +#include <linux/const.h>
> +/*
> + * Allow for constants defined here to be used from assembly code
> + * by prepending the UL suffix only with actual C code compilation.
> + */
> +#define UL(x) _AC(x, UL)
> +
> +static inline void arm_add_mem_device(const char* name, resource_size_t =
start,
> +				    resource_size_t size)
> +{
> +	barebox_add_memory_bank(name, start, size);
> +}
> +
> +#endif	/* __ASM_ARM_MEMORY_H */
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> new file mode 100644
> index 0000000..8de6544
> --- /dev/null
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -0,0 +1,65 @@
> +#ifndef __ASM_MMU_H
> +#define __ASM_MMU_H
> +
> +#include <common.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <xfuncs.h>
> +
> +#include <asm/pgtable.h>
> +
> +#define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PM=
D_TYPE_SECT)
> +#define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
> +
> +struct arm_memory;
> +
> +static inline void mmu_enable(void)
> +{
> +}
> +void mmu_disable(void);
> +static inline void arm_create_section(unsigned long virt, unsigned long =
phys, int size_m,
> +		unsigned int flags)
> +{
> +}
> +
> +static inline void setup_dma_coherent(unsigned long offset)
> +{
> +}
> +
> +#ifdef CONFIG_MMU
> +#define ARCH_HAS_REMAP
> +#define MAP_ARCH_DEFAULT MAP_CACHED
> +int arch_remap_range(void *_start, size_t size, unsigned flags);
> +void *map_io_sections(unsigned long physaddr, void *start, size_t size);
> +#else
> +#define MAP_ARCH_DEFAULT MAP_UNCACHED
> +static inline void *map_io_sections(unsigned long phys, void *start, siz=
e_t size)
> +{
> +	return (void *)phys;
> +}
> +
> +#endif
> +
> +#ifdef CONFIG_CACHE_L2X0
> +void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask);
> +#else
> +static inline void __init l2x0_init(void __iomem *base, __u32 aux_val, _=
_u32 aux_mask)
> +{
> +}
> +#endif
> +
> +struct outer_cache_fns {
> +	void (*inv_range)(unsigned long, unsigned long);
> +	void (*clean_range)(unsigned long, unsigned long);
> +	void (*flush_range)(unsigned long, unsigned long);
> +	void (*flush_all)(void);
> +	void (*disable)(void);
> +};
> +
> +extern struct outer_cache_fns outer_cache;
> +
> +void __dma_clean_range(unsigned long, unsigned long);
> +void __dma_flush_range(unsigned long, unsigned long);
> +void __dma_inv_range(unsigned long, unsigned long);
> +
> +#endif /* __ASM_MMU_H */
> diff --git a/arch/arm64/include/asm/module.h b/arch/arm64/include/asm/mod=
ule.h
> new file mode 100644
> index 0000000..5b4d1a3
> --- /dev/null
> +++ b/arch/arm64/include/asm/module.h
> @@ -0,0 +1,13 @@
> +#ifndef _ASM_ARM_MODULE_H
> +#define _ASM_ARM_MODULE_H
> +
> +struct mod_arch_specific
> +{
> +	int foo;
> +};
> +
> +#define Elf_Shdr	Elf32_Shdr
> +#define Elf_Sym		Elf32_Sym
> +#define Elf_Ehdr	Elf32_Ehdr
> +
> +#endif /* _ASM_ARM_MODULE_H */
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pg=
table.h
> new file mode 100644
> index 0000000..fd1521d
> --- /dev/null
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -0,0 +1,90 @@
> +/*
> + *  arch/arm/include/asm/pgtable-hwdef.h
> + *
> + *  Copyright (C) 1995-2002 Russell King
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +#ifndef _ASMARM_PGTABLE_HWDEF_H
> +#define _ASMARM_PGTABLE_HWDEF_H
> +
> +/*
> + * Hardware page table definitions.
> + *
> + * + Level 1 descriptor (PMD)
> + *   - common
> + */
> +#define PMD_TYPE_MASK		(3 << 0)
> +#define PMD_TYPE_FAULT		(0 << 0)
> +#define PMD_TYPE_TABLE		(1 << 0)
> +#define PMD_TYPE_SECT		(2 << 0)
> +#define PMD_BIT4		(1 << 4)
> +#define PMD_DOMAIN(x)		((x) << 5)
> +#define PMD_PROTECTION		(1 << 9)	/* v5 */
> +/*
> + *   - section
> + */
> +#define PMD_SECT_BUFFERABLE	(1 << 2)
> +#define PMD_SECT_CACHEABLE	(1 << 3)
> +#define PMD_SECT_XN		(1 << 4)	/* v6 */
> +#define PMD_SECT_AP_WRITE	(1 << 10)
> +#define PMD_SECT_AP_READ	(1 << 11)
> +#define PMD_SECT_TEX(x)		((x) << 12)	/* v5 */
> +#define PMD_SECT_APX		(1 << 15)	/* v6 */
> +#define PMD_SECT_S		(1 << 16)	/* v6 */
> +#define PMD_SECT_nG		(1 << 17)	/* v6 */
> +#define PMD_SECT_SUPER		(1 << 18)	/* v6 */
> +
> +#define PMD_SECT_UNCACHED	(0)
> +#define PMD_SECT_BUFFERED	(PMD_SECT_BUFFERABLE)
> +#define PMD_SECT_WT		(PMD_SECT_CACHEABLE)
> +#define PMD_SECT_WB		(PMD_SECT_CACHEABLE | PMD_SECT_BUFFERABLE)
> +#define PMD_SECT_MINICACHE	(PMD_SECT_TEX(1) | PMD_SECT_CACHEABLE)
> +#define PMD_SECT_WBWA		(PMD_SECT_TEX(1) | PMD_SECT_CACHEABLE | PMD_SECT_=
BUFFERABLE)
> +#define PMD_SECT_NONSHARED_DEV	(PMD_SECT_TEX(2))
> +
> +/*
> + *   - coarse table (not used)
> + */
> +
> +/*
> + * + Level 2 descriptor (PTE)
> + *   - common
> + */
> +#define PTE_TYPE_MASK		(3 << 0)
> +#define PTE_TYPE_FAULT		(0 << 0)
> +#define PTE_TYPE_LARGE		(1 << 0)
> +#define PTE_TYPE_SMALL		(2 << 0)
> +#define PTE_TYPE_EXT		(3 << 0)	/* v5 */
> +#define PTE_BUFFERABLE		(1 << 2)
> +#define PTE_CACHEABLE		(1 << 3)
> +
> +/*
> + *   - extended small page/tiny page
> + */
> +#define PTE_EXT_XN		(1 << 0)	/* v6 */
> +#define PTE_EXT_AP_MASK		(3 << 4)
> +#define PTE_EXT_AP0		(1 << 4)
> +#define PTE_EXT_AP1		(2 << 4)
> +#define PTE_EXT_AP_UNO_SRO	(0 << 4)
> +#define PTE_EXT_AP_UNO_SRW	(PTE_EXT_AP0)
> +#define PTE_EXT_AP_URO_SRW	(PTE_EXT_AP1)
> +#define PTE_EXT_AP_URW_SRW	(PTE_EXT_AP1|PTE_EXT_AP0)
> +#define PTE_EXT_TEX(x)		((x) << 6)	/* v5 */
> +#define PTE_EXT_APX		(1 << 9)	/* v6 */
> +#define PTE_EXT_COHERENT	(1 << 9)	/* XScale3 */
> +#define PTE_EXT_SHARED		(1 << 10)	/* v6 */
> +#define PTE_EXT_NG		(1 << 11)	/* v6 */
> +
> +/*
> + *   - small page
> + */
> +#define PTE_SMALL_AP_MASK	(0xff << 4)
> +#define PTE_SMALL_AP_UNO_SRO	(0x00 << 4)
> +#define PTE_SMALL_AP_UNO_SRW	(0x55 << 4)
> +#define PTE_SMALL_AP_URO_SRW	(0xaa << 4)
> +#define PTE_SMALL_AP_URW_SRW	(0xff << 4)
> +
> +#endif
> diff --git a/arch/arm64/include/asm/posix_types.h b/arch/arm64/include/as=
m/posix_types.h
> new file mode 100644
> index 0000000..22cae62
> --- /dev/null
> +++ b/arch/arm64/include/asm/posix_types.h
> @@ -0,0 +1 @@
> +#include <asm-generic/posix_types.h>
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/=
processor.h
> new file mode 100644
> index 0000000..d5dbab0
> --- /dev/null
> +++ b/arch/arm64/include/asm/processor.h
> @@ -0,0 +1,131 @@
> +/*
> + *  linux/include/asm-arm/processor.h
> + *
> + *  Copyright (C) 1995-2002 Russell King
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#ifndef __ASM_ARM_PROCESSOR_H
> +#define __ASM_ARM_PROCESSOR_H
> +
> +/*
> + * Default implementation of macro that returns current
> + * instruction pointer ("program counter").
> + */
> +#define current_text_addr() ({ __label__ _l; _l: &&_l;})
> +
> +#define FP_SIZE 35
> +
> +struct fp_hard_struct {
> +	unsigned int save[FP_SIZE];		/* as yet undefined */
> +};
> +
> +struct fp_soft_struct {
> +	unsigned int save[FP_SIZE];		/* undefined information */
> +};
> +
> +union fp_state {
> +	struct fp_hard_struct	hard;
> +	struct fp_soft_struct	soft;
> +};
> +
> +typedef unsigned long mm_segment_t;		/* domain register	*/
> +
> +#ifdef __KERNEL__
> +
> +#define EISA_bus 0
> +#define MCA_bus 0
> +#define MCA_bus__is_a_macro
> +
> +#include <asm/atomic.h>
> +#include <asm/ptrace.h>
> +#include <asm/proc/processor.h>
> +#include <asm/types.h>
> +
> +union debug_insn {
> +	u32	arm;
> +	u16	thumb;
> +};
> +
> +struct debug_entry {
> +	u32			address;
> +	union debug_insn	insn;
> +};
> +
> +struct debug_info {
> +	int			nsaved;
> +	struct debug_entry	bp[2];
> +};
> +
> +struct thread_struct {
> +	atomic_t			refcount;
> +							/* fault info	  */
> +	unsigned long			address;
> +	unsigned long			trap_no;
> +	unsigned long			error_code;
> +							/* floating point */
> +	union fp_state			fpstate;
> +							/* debugging	  */
> +	struct debug_info		debug;
> +							/* context info	  */
> +	struct context_save_struct	*save;
> +	EXTRA_THREAD_STRUCT
> +};
> +
> +#define INIT_THREAD  {					\
> +	refcount:	ATOMIC_INIT(1),			\
> +	EXTRA_THREAD_STRUCT_INIT			\
> +}
> +
> +/*
> + * Return saved PC of a blocked thread.
> + */
> +static inline unsigned long thread_saved_pc(struct thread_struct *t)
> +{
> +	return t->save ? pc_pointer(t->save->pc) : 0;
> +}
> +
> +static inline unsigned long thread_saved_fp(struct thread_struct *t)
> +{
> +	return t->save ? t->save->fp : 0;
> +}
> +
> +/* Forward declaration, a strange C thing */
> +struct task_struct;
> +
> +/* Free all resources held by a thread. */
> +extern void release_thread(struct task_struct *);
> +
> +/* Copy and release all segment info associated with a VM */
> +#define copy_segments(tsk, mm)		do { } while (0)
> +#define release_segments(mm)		do { } while (0)
> +
> +unsigned long get_wchan(struct task_struct *p);
> +
> +#define THREAD_SIZE	(8192)
> +
> +extern struct task_struct *alloc_task_struct(void);
> +extern void __free_task_struct(struct task_struct *);
> +#define get_task_struct(p)	atomic_inc(&(p)->thread.refcount)
> +#define free_task_struct(p)					\
> + do {								\
> +	if (atomic_dec_and_test(&(p)->thread.refcount))		\
> +		__free_task_struct((p));			\
> + } while (0)
> +
> +#define init_task	(init_task_union.task)
> +#define init_stack	(init_task_union.stack)
> +
> +#define cpu_relax()	barrier()
> +
> +/*
> + * Create a new kernel thread
> + */
> +extern int arch_kernel_thread(int (*fn)(void *), void *arg, unsigned lon=
g flags);
> +
> +#endif
> +
> +#endif /* __ASM_ARM_PROCESSOR_H */
> diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptr=
ace.h
> new file mode 100644
> index 0000000..450b63a
> --- /dev/null
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -0,0 +1,34 @@
> +/*
> + *  arch/arm/include/asm/ptrace.h
> + *
> + *  Copyright (C) 1996-2003 Russell King
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +#ifndef __ASM_ARM_PTRACE_H
> +#define __ASM_ARM_PTRACE_H
> +
> +#define PTRACE_GETREGS		12
> +#define PTRACE_SETREGS		13
> +#define PTRACE_GETFPREGS	14
> +#define PTRACE_SETFPREGS	15
> +
> +#define PTRACE_SETOPTIONS	21
> +
> +/* options set using PTRACE_SETOPTIONS */
> +#define PTRACE_O_TRACESYSGOOD	0x00000001
> +
> +#ifndef __ASSEMBLY__
> +
> +/* this struct defines the way the registers are stored on the
> +   stack during a system call. */
> +
> +struct pt_regs {
> +	long uregs[31];
> +};
> +
> +#endif	/* __ASSEMBLY__ */
> +
> +#endif
> diff --git a/arch/arm64/include/asm/sections.h b/arch/arm64/include/asm/s=
ections.h
> new file mode 100644
> index 0000000..8c7bc8c
> --- /dev/null
> +++ b/arch/arm64/include/asm/sections.h
> @@ -0,0 +1,34 @@
> +#ifndef __ASM_SECTIONS_H
> +#define __ASM_SECTIONS_H
> +
> +#ifndef __ASSEMBLY__
> +#include <asm-generic/sections.h>
> +
> +/*
> + * Access a linker supplied variable. Use this if your code might not be=
 running
> + * at the address it is linked at.
> + */
> +#define ld_var(name) ({ \
> +	unsigned long __ld_var_##name(void); \
> +	__ld_var_##name(); \
> +})
> +
> +#else
> +
> +/*
> + * Access a linker supplied variable, assembler macro version
> + */
> +.macro ld_var name, reg, scratch
> +	1000:
> +		ldr \reg, 1001f
> +		ldr \scratch, =3D1000b
> +		add \reg, \reg, \scratch
> +		b 1002f
> +	1001:
> +		.word \name - 1000b
> +	1002:
> +.endm
> +
> +#endif
> +
> +#endif /* __ASM_SECTIONS_H */
> diff --git a/arch/arm64/include/asm/semihosting.h b/arch/arm64/include/as=
m/semihosting.h
> new file mode 100644
> index 0000000..b478dad
> --- /dev/null
> +++ b/arch/arm64/include/asm/semihosting.h
> @@ -0,0 +1,19 @@
> +#ifndef __ASM_ARM_SEMIHOSTING_H
> +#define __ASM_ARM_SEMIHOSTING_H
> +
> +int semihosting_open(const char *fname, int flags);
> +int semihosting_close(int fd);
> +int semihosting_writec(char c);
> +int semihosting_write0(const char *str);
> +ssize_t semihosting_write(int fd, const void *buf, size_t count);
> +ssize_t semihosting_read(int fd, void *buf, size_t count);
> +int semihosting_readc(void);
> +int semihosting_isatty(int fd);
> +int semihosting_seek(int fd, loff_t pos);
> +int semihosting_flen(int fd);
> +int semihosting_remove(const char *fname);
> +int semihosting_rename(const char *fname1, const char *fname2);
> +int semihosting_errno(void);
> +int semihosting_system(const char *command);
> +
> +#endif
> diff --git a/arch/arm64/include/asm/setup.h b/arch/arm64/include/asm/setu=
p.h
> new file mode 100644
> index 0000000..6ce35fb
> --- /dev/null
> +++ b/arch/arm64/include/asm/setup.h
> @@ -0,0 +1,216 @@
> +/*
> + *  Copyright (C) 1997-1999 Russell King
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + *  Structure passed to kernel to tell it about the
> + *  hardware it's running on.  See linux/Documentation/arm/Setup
> + *  for more info.
> + */
> +#ifndef __ASMARM_SETUP_H
> +#define __ASMARM_SETUP_H
> +
> +/*
> + * Usage:
> + *  - do not go blindly adding fields, add them at the end
> + *  - when adding fields, don't rely on the address until
> + *    a patch from me has been released
> + *  - unused fields should be zero (for future expansion)
> + *  - this structure is relatively short-lived - only
> + *    guaranteed to contain useful data in setup_arch()
> + */
> +#define COMMAND_LINE_SIZE 1024
> +
> +/*
> + * The new way of passing information: a list of tagged entries
> + */
> +
> +/* The list ends with an ATAG_NONE node. */
> +#define ATAG_NONE	0x00000000
> +
> +struct tag_header {
> +	u32 size;
> +	u32 tag;
> +};
> +
> +/* The list must start with an ATAG_CORE node */
> +#define ATAG_CORE	0x54410001
> +
> +struct tag_core {
> +	u32 flags;		/* bit 0 =3D read-only */
> +	u32 pagesize;
> +	u32 rootdev;
> +};
> +
> +/* it is allowed to have multiple ATAG_MEM nodes */
> +#define ATAG_MEM	0x54410002
> +
> +struct tag_mem32 {
> +	u32	size;
> +	u32	start;	/* physical start address */
> +};
> +
> +/* VGA text type displays */
> +#define ATAG_VIDEOTEXT	0x54410003
> +
> +struct tag_videotext {
> +	u8		x;
> +	u8		y;
> +	u16		video_page;
> +	u8		video_mode;
> +	u8		video_cols;
> +	u16		video_ega_bx;
> +	u8		video_lines;
> +	u8		video_isvga;
> +	u16		video_points;
> +};
> +
> +/* describes how the ramdisk will be used in kernel */
> +#define ATAG_RAMDISK	0x54410004
> +
> +struct tag_ramdisk {
> +	u32 flags;	/* bit 0 =3D load, bit 1 =3D prompt */
> +	u32 size;	/* decompressed ramdisk size in _kilo_ bytes */
> +	u32 start;	/* starting block of floppy-based RAM disk image */
> +};
> +
> +/* describes where the compressed ramdisk image lives (virtual address) =
*/
> +/*
> + * this one accidentally used virtual addresses - as such,
> + * its depreciated.
> + */
> +#define ATAG_INITRD	0x54410005
> +
> +/* describes where the compressed ramdisk image lives (physical address)=
 */
> +#define ATAG_INITRD2	0x54420005
> +
> +struct tag_initrd {
> +	u32 start;	/* physical start address */
> +	u32 size;	/* size of compressed ramdisk image in bytes */
> +};
> +
> +/* board serial number. "64 bits should be enough for everybody" */
> +#define ATAG_SERIAL	0x54410006
> +
> +struct tag_serialnr {
> +	u32 low;
> +	u32 high;
> +};
> +
> +/* board revision */
> +#define ATAG_REVISION	0x54410007
> +
> +struct tag_revision {
> +	u32 rev;
> +};
> +
> +/* initial values for vesafb-type framebuffers. see struct screen_info
> + * in include/linux/tty.h
> + */
> +#define ATAG_VIDEOLFB	0x54410008
> +
> +struct tag_videolfb {
> +	u16		lfb_width;
> +	u16		lfb_height;
> +	u16		lfb_depth;
> +	u16		lfb_linelength;
> +	u32		lfb_base;
> +	u32		lfb_size;
> +	u8		red_size;
> +	u8		red_pos;
> +	u8		green_size;
> +	u8		green_pos;
> +	u8		blue_size;
> +	u8		blue_pos;
> +	u8		rsvd_size;
> +	u8		rsvd_pos;
> +};
> +
> +/* command line: \0 terminated string */
> +#define ATAG_CMDLINE	0x54410009
> +
> +struct tag_cmdline {
> +	char	cmdline[1];	/* this is the minimum size */
> +};
> +
> +/* acorn RiscPC specific information */
> +#define ATAG_ACORN	0x41000101
> +
> +struct tag_acorn {
> +	u32 memc_control_reg;
> +	u32 vram_pages;
> +	u8 sounddefault;
> +	u8 adfsdrives;
> +};
> +
> +/* footbridge memory clock, see arch/arm/mach-footbridge/arch.c */
> +#define ATAG_MEMCLK	0x41000402
> +
> +struct tag_memclk {
> +	u32 fmemclk;
> +};
> +
> +struct tag {
> +	struct tag_header hdr;
> +	union {
> +		struct tag_core		core;
> +		struct tag_mem32	mem;
> +		struct tag_videotext	videotext;
> +		struct tag_ramdisk	ramdisk;
> +		struct tag_initrd	initrd;
> +		struct tag_serialnr	serialnr;
> +		struct tag_revision	revision;
> +		struct tag_videolfb	videolfb;
> +		struct tag_cmdline	cmdline;
> +
> +		/*
> +		 * Acorn specific
> +		 */
> +		struct tag_acorn	acorn;
> +
> +		/*
> +		 * DC21285 specific
> +		 */
> +		struct tag_memclk	memclk;
> +	} u;
> +};
> +
> +struct tagtable {
> +	u32 tag;
> +	int (*parse)(const struct tag *);
> +};
> +
> +#define __tag __attribute__((unused, __section__(".taglist")))
> +#define __tagtable(tag, fn) \
> +static struct tagtable __tagtable_##fn __tag =3D { tag, fn }
> +
> +#define tag_member_present(tag,member)				\
> +	((unsigned long)(&((struct tag *)0L)->member + 1)	\
> +		<=3D (tag)->hdr.size * 4)
> +
> +#define tag_next(t)	((struct tag *)((u32 *)(t) + (t)->hdr.size))
> +#define tag_size(type)	((sizeof(struct tag_header) + sizeof(struct type)=
) >> 2)
> +
> +#define for_each_tag(t,base)		\
> +	for (t =3D base; t->hdr.size; t =3D tag_next(t))
> +
> +/*
> + * Memory map description
> + */
> +#define NR_BANKS 8
> +
> +struct meminfo {
> +	int nr_banks;
> +	unsigned long end;
> +	struct {
> +		unsigned long start;
> +		unsigned long size;
> +		int           node;
> +	} bank[NR_BANKS];
> +};
> +
> +extern struct meminfo meminfo;
> +
> +#endif
> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm=
/stacktrace.h
> new file mode 100644
> index 0000000..10f70e1
> --- /dev/null
> +++ b/arch/arm64/include/asm/stacktrace.h
> @@ -0,0 +1,16 @@
> +#ifndef __ASM_STACKTRACE_H
> +#define __ASM_STACKTRACE_H
> +
> +struct stackframe {
> +	unsigned long fp;
> +	unsigned long sp;
> +	unsigned long lr;
> +	unsigned long pc;
> +};
> +
> +extern int unwind_frame(struct stackframe *frame);
> +extern void walk_stackframe(struct stackframe *frame,
> +			    int (*fn)(struct stackframe *, void *), void *data);
> +
> +#endif	/* __ASM_STACKTRACE_H */
> +
> diff --git a/arch/arm64/include/asm/string.h b/arch/arm64/include/asm/str=
ing.h
> new file mode 100644
> index 0000000..435647a
> --- /dev/null
> +++ b/arch/arm64/include/asm/string.h
> @@ -0,0 +1,13 @@
> +#ifndef __ASM_ARM_STRING_H
> +#define __ASM_ARM_STRING_H
> +
> +#ifdef CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS
> +
> +#define __HAVE_ARCH_MEMCPY
> +extern void *memcpy(void *, const void *, __kernel_size_t);
> +#define __HAVE_ARCH_MEMSET
> +extern void *memset(void *, int, __kernel_size_t);
> +
> +#endif
> +
> +#endif
> diff --git a/arch/arm64/include/asm/swab.h b/arch/arm64/include/asm/swab.h
> new file mode 100644
> index 0000000..9997ad2
> --- /dev/null
> +++ b/arch/arm64/include/asm/swab.h
> @@ -0,0 +1,69 @@
> +/*
> + *  arch/arm/include/asm/byteorder.h
> + *
> + * ARM Endian-ness.  In little endian mode, the data bus is connected su=
ch
> + * that byte accesses appear as:
> + *  0 =3D d0...d7, 1 =3D d8...d15, 2 =3D d16...d23, 3 =3D d24...d31
> + * and word accesses (data or instruction) appear as:
> + *  d0...d31
> + *
> + * When in big endian mode, byte accesses appear as:
> + *  0 =3D d24...d31, 1 =3D d16...d23, 2 =3D d8...d15, 3 =3D d0...d7
> + * and word accesses (data or instruction) appear as:
> + *  d0...d31
> + */
> +#ifndef __ASM_ARM_SWAB_H
> +#define __ASM_ARM_SWAB_H
> +
> +#include <linux/compiler.h>
> +#include <linux/types.h>
> +
> +#if !defined(__STRICT_ANSI__) || defined(__KERNEL__)
> +#  define __SWAB_64_THRU_32__
> +#endif
> +
> +#if defined(__KERNEL__) && __LINUX_ARM_ARCH__ >=3D 6
> +
> +static inline __attribute_const__ __u16 __arch_swab16(__u16 x)
> +{
> +	__asm__ ("rev16 %0, %1" : "=3Dr" (x) : "r" (x));
> +	return x;
> +}
> +#define __arch_swab16 __arch_swab16
> +
> +static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
> +{
> +	__asm__ ("rev %0, %1" : "=3Dr" (x) : "r" (x));
> +	return x;
> +}
> +#define __arch_swab32 __arch_swab32
> +
> +#else
> +
> +static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
> +{
> +	__u32 t;
> +
> +#ifndef __thumb__
> +	if (!__builtin_constant_p(x)) {
> +		/*
> +		 * The compiler needs a bit of a hint here to always do the
> +		 * right thing and not screw it up to different degrees
> +		 * depending on the gcc version.
> +		 */
> +		asm ("eor\t%0, %1, %1, ror #16" : "=3Dr" (t) : "r" (x));
> +	} else
> +#endif
> +		t =3D x ^ ((x << 16) | (x >> 16)); /* eor r1,r0,r0,ror #16 */
> +
> +	x =3D (x << 24) | (x >> 8);		/* mov r0,r0,ror #8      */
> +	t &=3D ~0x00FF0000;			/* bic r1,r1,#0x00FF0000 */
> +	x ^=3D (t >> 8);				/* eor r0,r0,r1,lsr #8   */
> +
> +	return x;
> +}
> +#define __arch_swab32 __arch_swab32
> +
> +#endif
> +
> +#endif
> diff --git a/arch/arm64/include/asm/system.h b/arch/arm64/include/asm/sys=
tem.h
> new file mode 100644
> index 0000000..a4f9a71
> --- /dev/null
> +++ b/arch/arm64/include/asm/system.h
> @@ -0,0 +1,125 @@
> +#ifndef __ASM_ARM_SYSTEM_H
> +#define __ASM_ARM_SYSTEM_H
> +
> +#define isb() __asm__ __volatile__ ("isb" : : : "memory")
> +#define dsb() __asm__ __volatile__ ("dsb" : : : "memory")
> +#define dmb() __asm__ __volatile__ ("dmb" : : : "memory")
> +
> +/*
> + * SCTLR_EL1/SCTLR_EL2/SCTLR_EL3 bits definitions
> + */
> +#define CR_M		(1 << 0)	/* MMU enable			*/
> +#define CR_A		(1 << 1)	/* Alignment abort enable	*/
> +#define CR_C		(1 << 2)	/* Dcache enable		*/
> +#define CR_SA		(1 << 3)	/* Stack Alignment Check Enable	*/
> +#define CR_I		(1 << 12)	/* Icache enable		*/
> +#define CR_WXN		(1 << 19)	/* Write Permision Imply XN	*/
> +#define CR_EE		(1 << 25)	/* Exception (Big) Endian	*/
> +
> +#ifndef CONFIG_SYS_FULL_VA
> +#define PGTABLE_SIZE	(0x10000)
> +#else
> +#define PGTABLE_SIZE	CONFIG_SYS_PGTABLE_SIZE
> +#endif
> +
> +/* 2MB granularity */
> +#define MMU_SECTION_SHIFT	21
> +#define MMU_SECTION_SIZE	(1 << MMU_SECTION_SHIFT)
> +
> +#ifndef __ASSEMBLY__
> +
> +enum dcache_option {
> +	DCACHE_OFF =3D 0x3,
> +};
> +
> +#define wfi()				\
> +	({asm volatile(			\
> +	"wfi" : : : "memory");		\
> +	})
> +
> +static inline unsigned int current_el(void)
> +{
> +	unsigned int el;
> +	asm volatile("mrs %0, CurrentEL" : "=3Dr" (el) : : "cc");
> +	return el >> 2;
> +}
> +
> +static inline unsigned int get_sctlr(void)
> +{
> +	unsigned int el, val;
> +
> +	el =3D current_el();
> +	if (el =3D=3D 1)
> +		asm volatile("mrs %0, sctlr_el1" : "=3Dr" (val) : : "cc");
> +	else if (el =3D=3D 2)
> +		asm volatile("mrs %0, sctlr_el2" : "=3Dr" (val) : : "cc");
> +	else
> +		asm volatile("mrs %0, sctlr_el3" : "=3Dr" (val) : : "cc");
> +
> +	return val;
> +}
> +
> +static inline void set_sctlr(unsigned int val)
> +{
> +	unsigned int el;
> +
> +	el =3D current_el();
> +	if (el =3D=3D 1)
> +		asm volatile("msr sctlr_el1, %0" : : "r" (val) : "cc");
> +	else if (el =3D=3D 2)
> +		asm volatile("msr sctlr_el2, %0" : : "r" (val) : "cc");
> +	else
> +		asm volatile("msr sctlr_el3, %0" : : "r" (val) : "cc");
> +
> +	asm volatile("isb");
> +}
> +
> +static inline unsigned long read_mpidr(void)
> +{
> +	unsigned long val;
> +
> +	asm volatile("mrs %0, mpidr_el1" : "=3Dr" (val));
> +
> +	return val;
> +}
> +
> +#define BSP_COREID	0
> +
> +void __asm_flush_dcache_all(void);
> +void __asm_invalidate_dcache_all(void);
> +void __asm_flush_dcache_range(u64 start, u64 end);
> +void __asm_invalidate_tlb_all(void);
> +void __asm_invalidate_icache_all(void);
> +int __asm_flush_l3_cache(void);
> +
> +void armv8_switch_to_el2(void);
> +void armv8_switch_to_el1(void);
> +void gic_init(void);
> +void gic_send_sgi(unsigned long sgino);
> +void wait_for_wakeup(void);
> +void protect_secure_region(void);
> +void smp_kick_all_cpus(void);
> +
> +void flush_l3_cache(void);
> +
> +/*
> + *Issue a hypervisor call in accordance with ARM "SMC Calling convention=
",
> + * DEN0028A
> + *
> + * @args: input and output arguments
> + *
> + */
> +void hvc_call(struct pt_regs *args);
> +
> +/*
> + *Issue a secure monitor call in accordance with ARM "SMC Calling conven=
tion",
> + * DEN0028A
> + *
> + * @args: input and output arguments
> + *
> + */
> +void smc_call(struct pt_regs *args);
> +
> +#endif	/* __ASSEMBLY__ */
> +
> +#endif /* __ASM_ARM_SYSTEM_H */
> diff --git a/arch/arm64/include/asm/system_info.h b/arch/arm64/include/as=
m/system_info.h
> new file mode 100644
> index 0000000..f595aae
> --- /dev/null
> +++ b/arch/arm64/include/asm/system_info.h
> @@ -0,0 +1,194 @@
> +#ifndef __ASM_ARM_SYSTEM_INFO_H
> +#define __ASM_ARM_SYSTEM_INFO_H
> +
> +#include <asm/cputype.h>
> +
> +#define CPU_ARCH_UNKNOWN	0
> +#define CPU_ARCH_ARMv3		1
> +#define CPU_ARCH_ARMv4		2
> +#define CPU_ARCH_ARMv4T		3
> +#define CPU_ARCH_ARMv5		4
> +#define CPU_ARCH_ARMv5T		5
> +#define CPU_ARCH_ARMv5TE	6
> +#define CPU_ARCH_ARMv5TEJ	7
> +#define CPU_ARCH_ARMv6		8
> +#define CPU_ARCH_ARMv7		9
> +#define CPU_ARCH_ARMv8		10
> +
> +#define CPU_IS_ARM720		0x41007200
> +#define CPU_IS_ARM720_MASK	0xff00fff0
> +
> +#define CPU_IS_ARM920		0x41009200
> +#define CPU_IS_ARM920_MASK	0xff00fff0
> +
> +#define CPU_IS_ARM926		0x41069260
> +#define CPU_IS_ARM926_MASK	0xff0ffff0
> +
> +#define CPU_IS_ARM1176		0x410fb760
> +#define CPU_IS_ARM1176_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A8	0x410fc080
> +#define CPU_IS_CORTEX_A8_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A5	0x410fc050
> +#define CPU_IS_CORTEX_A5_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A9	0x410fc090
> +#define CPU_IS_CORTEX_A9_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A7	0x410fc070
> +#define CPU_IS_CORTEX_A7_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A15	0x410fc0f0
> +#define CPU_IS_CORTEX_A15_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A53	0x410fd034
> +#define CPU_IS_CORTEX_A53_MASK	0xff0ffff0
> +
> +#define CPU_IS_CORTEX_A57	0x411fd070
> +#define CPU_IS_CORTEX_A57_MASK	0xff0ffff0
> +
> +#define CPU_IS_PXA250		0x69052100
> +#define CPU_IS_PXA250_MASK	0xfffff7f0
> +
> +#define CPU_IS_PXA255		0x69052d00
> +#define CPU_IS_PXA255_MASK	0xfffffff0
> +
> +#define CPU_IS_PXA270		0x69054110
> +#define CPU_IS_PXA270_MASK	0xfffff7f0
> +
> +#define cpu_is_arm(core) ((read_cpuid_id() & CPU_IS_##core##_MASK) =3D=
=3D CPU_IS_##core)
> +
> +#ifdef CONFIG_CPU_32v4T
> +#ifdef ARM_ARCH
> +#define ARM_MULTIARCH
> +#else
> +#define ARM_ARCH CPU_ARCH_ARMv4T
> +#endif
> +#define cpu_is_arm720()	cpu_is_arm(ARM720)
> +#define cpu_is_arm920()	cpu_is_arm(ARM920)
> +#define cpu_is_pxa250() cpu_is_arm(PXA250)
> +#define cpu_is_pxa255() cpu_is_arm(PXA255)
> +#define cpu_is_pxa270() cpu_is_arm(PXA270)
> +#else
> +#define cpu_is_arm720() (0)
> +#define cpu_is_arm920() (0)
> +#define cpu_is_pxa250() (0)
> +#define cpu_is_pxa255() (0)
> +#define cpu_is_pxa270() (0)
> +#endif
> +
> +#ifdef CONFIG_CPU_32v5
> +#ifdef ARM_ARCH
> +#define ARM_MULTIARCH
> +#else
> +#define ARM_ARCH CPU_ARCH_ARMv5
> +#endif
> +#define cpu_is_arm926() cpu_is_arm(ARM926)
> +#else
> +#define cpu_is_arm926() (0)
> +#endif
> +
> +#ifdef CONFIG_CPU_32v6
> +#ifdef ARM_ARCH
> +#define ARM_MULTIARCH
> +#else
> +#define ARM_ARCH CPU_ARCH_ARMv6
> +#endif
> +#define cpu_is_arm1176()	cpu_is_arm(ARM1176)
> +#else
> +#define cpu_is_arm1176()	(0)
> +#endif
> +
> +#ifdef CONFIG_CPU_32v7
> +#ifdef ARM_ARCH
> +#define ARM_MULTIARCH
> +#else
> +#define ARM_ARCH CPU_ARCH_ARMv7
> +#endif
> +#define cpu_is_cortex_a8() cpu_is_arm(CORTEX_A8)
> +#define cpu_is_cortex_a5() cpu_is_arm(CORTEX_A5)
> +#define cpu_is_cortex_a9() cpu_is_arm(CORTEX_A9)
> +#define cpu_is_cortex_a7() cpu_is_arm(CORTEX_A7)
> +#define cpu_is_cortex_a15() cpu_is_arm(CORTEX_A15)
> +#else
> +#define cpu_is_cortex_a8() (0)
> +#define cpu_is_cortex_a5() (0)
> +#define cpu_is_cortex_a9() (0)
> +#define cpu_is_cortex_a7() (0)
> +#define cpu_is_cortex_a15() (0)
> +#endif
> +
> +
> +#ifdef CONFIG_CPU_64v8
> +#ifdef ARM_ARCH
> +#define ARM_MULTIARCH
> +#else
> +#define ARM_ARCH CPU_ARCH_ARMv8
> +#endif
> +#define cpu_is_cortex_a53() cpu_is_arm(CORTEX_A53)
> +#define cpu_is_cortex_a57() cpu_is_arm(CORTEX_A57)
> +#else
> +#define cpu_is_cortex_a53() (0)
> +#define cpu_is_cortex_a57() (0)
> +#endif
> +
> +#ifndef __ASSEMBLY__
> +
> +#ifdef ARM_MULTIARCH
> +/*
> + * Early version to get the ARM cpu architecture. Only needed during
> + * early startup when the C environment is not yet fully initialized.
> + * Normally you should use cpu_architecture() instead.
> + */
> +static inline int arm_early_get_cpu_architecture(void)
> +{
> +	int cpu_arch;
> +
> +//	if ((read_cpuid_id() & 0x0008f000) =3D=3D 0) {
> +//		cpu_arch =3D CPU_ARCH_UNKNOWN;
> +//	} else if ((read_cpuid_id() & 0x0008f000) =3D=3D 0x00007000) {
> +//		cpu_arch =3D (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_A=
RCH_ARMv3;
> +//	} else if ((read_cpuid_id() & 0x00080000) =3D=3D 0x00000000) {
> +//		cpu_arch =3D (read_cpuid_id() >> 16) & 7;
> +//		if (cpu_arch)
> +//			cpu_arch +=3D CPU_ARCH_ARMv3;
> +//	} else if ((read_cpuid_id() & 0x000f0000) =3D=3D 0x000f0000) {
> +//		unsigned int mmfr0;
> +//
> +//		/* Revised CPUID format. Read the Memory Model Feature
> +//		 * Register 0 and check for VMSAv7 or PMSAv7 */
> +//		asm("mrc	p15, 0, %0, c0, c1, 4"
> +//		    : "=3Dr" (mmfr0));
> +//		if ((mmfr0 & 0x0000000f) >=3D 0x00000003 ||
> +//		    (mmfr0 & 0x000000f0) >=3D 0x00000030)
> +//			cpu_arch =3D CPU_ARCH_ARMv7;
> +//		else if ((mmfr0 & 0x0000000f) =3D=3D 0x00000002 ||
> +//			 (mmfr0 & 0x000000f0) =3D=3D 0x00000020)
> +//			cpu_arch =3D CPU_ARCH_ARMv6;
> +//		else
> +//			cpu_arch =3D CPU_ARCH_UNKNOWN;
> +//	} else
> +//		cpu_arch =3D CPU_ARCH_UNKNOWN;
> +
> +	cpu_arch =3D CPU_ARCH_ARMv8;
> +
> +	return cpu_arch;
> +}
> +
> +extern int __pure cpu_architecture(void);
> +#else
> +static inline int __pure arm_early_get_cpu_architecture(void)
> +{
> +	return ARM_ARCH;
> +}
> +
> +static inline int __pure cpu_architecture(void)
> +{
> +	return ARM_ARCH;
> +}
> +#endif
> +
> +#endif /* !__ASSEMBLY__ */
> +
> +#endif /* __ASM_ARM_SYSTEM_INFO_H */
> diff --git a/arch/arm64/include/asm/types.h b/arch/arm64/include/asm/type=
s.h
> new file mode 100644
> index 0000000..1a7f47a
> --- /dev/null
> +++ b/arch/arm64/include/asm/types.h
> @@ -0,0 +1,54 @@
> +#ifndef __ASM_ARM_TYPES_H
> +#define __ASM_ARM_TYPES_H
> +
> +#ifndef __ASSEMBLY__
> +
> +typedef unsigned short umode_t;
> +
> +/*
> + * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
> + * header files exported to user space
> + */
> +
> +typedef __signed__ char __s8;
> +typedef unsigned char __u8;
> +
> +typedef __signed__ short __s16;
> +typedef unsigned short __u16;
> +
> +typedef __signed__ int __s32;
> +typedef unsigned int __u32;
> +
> +#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
> +typedef __signed__ long long __s64;
> +typedef unsigned long long __u64;
> +#endif
> +
> +#endif /* __ASSEMBLY__ */
> +
> +/*
> + * These aren't exported outside the kernel to avoid name space clashes
> + */
> +#ifdef __KERNEL__
> +
> +#include <asm/bitsperlong.h>
> +
> +#ifndef __ASSEMBLY__
> +
> +typedef signed char s8;
> +typedef unsigned char u8;
> +
> +typedef signed short s16;
> +typedef unsigned short u16;
> +
> +typedef signed int s32;
> +typedef unsigned int u32;
> +
> +typedef signed long long s64;
> +typedef unsigned long long u64;
> +
> +#endif /* __ASSEMBLY__ */
> +
> +#endif /* __KERNEL__ */
> +
> +#endif
> diff --git a/arch/arm64/include/asm/unaligned.h b/arch/arm64/include/asm/=
unaligned.h
> new file mode 100644
> index 0000000..44593a8
> --- /dev/null
> +++ b/arch/arm64/include/asm/unaligned.h
> @@ -0,0 +1,19 @@
> +#ifndef _ASM_ARM_UNALIGNED_H
> +#define _ASM_ARM_UNALIGNED_H
> +
> +#include <linux/unaligned/le_byteshift.h>
> +#include <linux/unaligned/be_byteshift.h>
> +#include <linux/unaligned/generic.h>
> +
> +/*
> + * Select endianness
> + */
> +#ifndef __ARMEB__
> +#define get_unaligned	__get_unaligned_le
> +#define put_unaligned	__put_unaligned_le
> +#else
> +#define get_unaligned	__get_unaligned_be
> +#define put_unaligned	__put_unaligned_be
> +#endif
> +
> +#endif /* _ASM_ARM_UNALIGNED_H */
> diff --git a/arch/arm64/include/asm/unified.h b/arch/arm64/include/asm/un=
ified.h
> new file mode 100644
> index 0000000..13a2bff
> --- /dev/null
> +++ b/arch/arm64/include/asm/unified.h
> @@ -0,0 +1,127 @@
> +/*
> + * include/asm-arm/unified.h - Unified Assembler Syntax helper macros
> + *
> + * Copyright (C) 2008 ARM Limited
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef __ASM_UNIFIED_H
> +#define __ASM_UNIFIED_H
> +
> +#if defined(__ASSEMBLY__) && defined(CONFIG_ARM_ASM_UNIFIED)
> +	.syntax unified
> +#endif
> +
> +#ifdef CONFIG_THUMB2_BAREBOX
> +
> +#if __GNUC__ < 4
> +#error Thumb-2 barebox requires gcc >=3D 4
> +#endif
> +
> +/* The CPSR bit describing the instruction set (Thumb) */
> +#define PSR_ISETSTATE	PSR_T_BIT
> +
> +#define ARM(x...)
> +#define THUMB(x...)	x
> +#ifdef __ASSEMBLY__
> +#define W(instr)	instr.w
> +#endif
> +#define BSYM(sym)	sym + 1
> +
> +#else	/* !CONFIG_THUMB2_BAREBOX */
> +
> +/* The CPSR bit describing the instruction set (ARM) */
> +#define PSR_ISETSTATE	0
> +
> +#define ARM(x...)	x
> +#define THUMB(x...)
> +#ifdef __ASSEMBLY__
> +#define W(instr)	instr
> +#endif
> +#define BSYM(sym)	sym
> +
> +#endif	/* CONFIG_THUMB2_BAREBOX */
> +
> +#ifndef CONFIG_ARM_ASM_UNIFIED
> +
> +/*
> + * If the unified assembly syntax isn't used (in ARM mode), these
> + * macros expand to an empty string
> + */
> +#ifdef __ASSEMBLY__
> +	.macro	it, cond
> +	.endm
> +	.macro	itt, cond
> +	.endm
> +	.macro	ite, cond
> +	.endm
> +	.macro	ittt, cond
> +	.endm
> +	.macro	itte, cond
> +	.endm
> +	.macro	itet, cond
> +	.endm
> +	.macro	itee, cond
> +	.endm
> +	.macro	itttt, cond
> +	.endm
> +	.macro	ittte, cond
> +	.endm
> +	.macro	ittet, cond
> +	.endm
> +	.macro	ittee, cond
> +	.endm
> +	.macro	itett, cond
> +	.endm
> +	.macro	itete, cond
> +	.endm
> +	.macro	iteet, cond
> +	.endm
> +	.macro	iteee, cond
> +	.endm
> +#else	/* !__ASSEMBLY__ */
> +__asm__(
> +"	.macro	it, cond\n"
> +"	.endm\n"
> +"	.macro	itt, cond\n"
> +"	.endm\n"
> +"	.macro	ite, cond\n"
> +"	.endm\n"
> +"	.macro	ittt, cond\n"
> +"	.endm\n"
> +"	.macro	itte, cond\n"
> +"	.endm\n"
> +"	.macro	itet, cond\n"
> +"	.endm\n"
> +"	.macro	itee, cond\n"
> +"	.endm\n"
> +"	.macro	itttt, cond\n"
> +"	.endm\n"
> +"	.macro	ittte, cond\n"
> +"	.endm\n"
> +"	.macro	ittet, cond\n"
> +"	.endm\n"
> +"	.macro	ittee, cond\n"
> +"	.endm\n"
> +"	.macro	itett, cond\n"
> +"	.endm\n"
> +"	.macro	itete, cond\n"
> +"	.endm\n"
> +"	.macro	iteet, cond\n"
> +"	.endm\n"
> +"	.macro	iteee, cond\n"
> +"	.endm\n");
> +#endif	/* __ASSEMBLY__ */
> +
> +#endif	/* CONFIG_ARM_ASM_UNIFIED */
> +
> +#endif	/* !__ASM_UNIFIED_H */
> diff --git a/arch/arm64/include/asm/unwind.h b/arch/arm64/include/asm/unw=
ind.h
> new file mode 100644
> index 0000000..311ad3d
> --- /dev/null
> +++ b/arch/arm64/include/asm/unwind.h
> @@ -0,0 +1,51 @@
> +/*
> + * arch/arm/include/asm/unwind.h
> + *
> + * Copyright (C) 2008 ARM Limited
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef __ASM_UNWIND_H
> +#define __ASM_UNWIND_H
> +
> +#ifndef __ASSEMBLY__
> +
> +/* Unwind reason code according the the ARM EABI documents */
> +enum unwind_reason_code {
> +	URC_OK =3D 0,			/* operation completed successfully */
> +	URC_CONTINUE_UNWIND =3D 8,
> +	URC_FAILURE =3D 9			/* unspecified failure of some kind */
> +};
> +
> +struct unwind_idx {
> +	unsigned long addr;
> +	unsigned long insn;
> +};
> +
> +struct unwind_table {
> +	struct list_head list;
> +	struct unwind_idx *start;
> +	struct unwind_idx *stop;
> +	unsigned long begin_addr;
> +	unsigned long end_addr;
> +};
> +
> +extern struct unwind_table *unwind_table_add(unsigned long start,
> +					     unsigned long size,
> +					     unsigned long text_addr,
> +					     unsigned long text_size);
> +extern void unwind_table_del(struct unwind_table *tab);
> +extern void unwind_backtrace(struct pt_regs *regs);
> +
> +#endif	/* !__ASSEMBLY__ */
> +
> +#endif	/* __ASM_UNWIND_H */
> diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> new file mode 100644
> index 0000000..5b9d4a5
> --- /dev/null
> +++ b/arch/arm64/lib/Makefile
> @@ -0,0 +1,16 @@
> +obj-$(CONFIG_ARM_LINUX)	+=3D armlinux.o
> +obj-$(CONFIG_BOOTM)	+=3D bootm.o
> +obj-$(CONFIG_CMD_BOOTZ)	+=3D bootz.o
> +obj-$(CONFIG_CMD_BOOTU)	+=3D bootu.o
> +obj-y	+=3D div0.o
> +obj-y	+=3D runtime-offset.o
> +pbl-y	+=3D runtime-offset.o
> +obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+=3D memcpy.o
> +obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+=3D memset.o
> +obj-$(CONFIG_ARM_UNWIND) +=3D unwind.o
> +obj-$(CONFIG_MODULES) +=3D module.o
> +extra-y +=3D barebox.lds
> +
> +pbl-y	+=3D lib1funcs.o
> +pbl-y	+=3D ashldi3.o
> +pbl-y	+=3D div0.o
> diff --git a/arch/arm64/lib/armlinux.c b/arch/arm64/lib/armlinux.c
> new file mode 100644
> index 0000000..21a2292
> --- /dev/null
> +++ b/arch/arm64/lib/armlinux.c
> @@ -0,0 +1,275 @@
> +/*
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Marius Groeger <mgroeger@sysgo.de>
> + *
> + * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <boot.h>
> +#include <common.h>
> +#include <command.h>
> +#include <driver.h>
> +#include <environment.h>
> +#include <image.h>
> +#include <init.h>
> +#include <fs.h>
> +#include <linux/list.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <memory.h>
> +#include <of.h>
> +#include <magicvar.h>
> +
> +#include <asm/byteorder.h>
> +#include <asm/setup.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/armlinux.h>
> +#include <asm/system.h>
> +
> +static struct tag *params;
> +static void *armlinux_bootparams =3D NULL;
> +
> +static int armlinux_architecture;
> +static u32 armlinux_system_rev;
> +static u64 armlinux_system_serial;
> +
> +BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
> +BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
> +BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
> +
> +void armlinux_set_architecture(int architecture)
> +{
> +	export_env_ull("armlinux_architecture", architecture);
> +	armlinux_architecture =3D architecture;
> +}
> +
> +int armlinux_get_architecture(void)
> +{
> +	getenv_uint("armlinux_architecture", &armlinux_architecture);
> +
> +	return armlinux_architecture;
> +}
> +
> +void armlinux_set_revision(unsigned int rev)
> +{
> +	export_env_ull("armlinux_system_rev", rev);
> +	armlinux_system_rev =3D rev;
> +}
> +
> +unsigned int armlinux_get_revision(void)
> +{
> +	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
> +
> +	return armlinux_system_rev;
> +}
> +
> +void armlinux_set_serial(u64 serial)
> +{
> +	export_env_ull("armlinux_system_serial", serial);
> +	armlinux_system_serial =3D serial;
> +}
> +
> +u64 armlinux_get_serial(void)
> +{
> +	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
> +
> +	return armlinux_system_serial;
> +}
> +
> +void armlinux_set_bootparams(void *params)
> +{
> +	armlinux_bootparams =3D params;
> +}
> +
> +static struct tag *armlinux_get_bootparams(void)
> +{
> +	struct memory_bank *mem;
> +
> +	if (armlinux_bootparams)
> +		return armlinux_bootparams;
> +
> +	for_each_memory_bank(mem)
> +		return (void *)mem->start + 0x100;
> +
> +	BUG();
> +}
> +
> +#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
> +static struct tag *(*atag_appender)(struct tag *);
> +void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
> +{
> +	atag_appender =3D func;
> +}
> +#endif
> +
> +static void setup_start_tag(void)
> +{
> +	params =3D armlinux_get_bootparams();
> +
> +	params->hdr.tag =3D ATAG_CORE;
> +	params->hdr.size =3D tag_size(tag_core);
> +
> +	params->u.core.flags =3D 0;
> +	params->u.core.pagesize =3D 0;
> +	params->u.core.rootdev =3D 0;
> +
> +	params =3D tag_next(params);
> +}
> +
> +static void setup_memory_tags(void)
> +{
> +	struct memory_bank *bank;
> +
> +	for_each_memory_bank(bank) {
> +		params->hdr.tag =3D ATAG_MEM;
> +		params->hdr.size =3D tag_size(tag_mem32);
> +
> +		params->u.mem.start =3D bank->start;
> +		params->u.mem.size =3D bank->size;
> +
> +		params =3D tag_next(params);
> +	}
> +}
> +
> +static void setup_commandline_tag(const char *commandline, int swap)
> +{
> +	const char *p;
> +	size_t words;
> +
> +	if (!commandline)
> +		return;
> +
> +	/* eat leading white space */
> +	for (p =3D commandline; *p =3D=3D ' '; p++) ;
> +
> +	/*
> +	 * skip non-existent command lines so the kernel will still
> +	 * use its default command line.
> +	 */
> +	if (*p =3D=3D '\0')
> +		return;
> +
> +	words =3D (strlen(p) + 1 /* NUL */ + 3 /* round up */) >> 2;
> +	params->hdr.tag =3D ATAG_CMDLINE;
> +	params->hdr.size =3D (sizeof(struct tag_header) >> 2) + words;
> +
> +	strcpy(params->u.cmdline.cmdline, p);
> +
> +#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
> +	if (swap) {
> +		u32 *cmd =3D (u32 *)params->u.cmdline.cmdline;
> +		while (words--)
> +			cmd[words] =3D swab32(cmd[words]);
> +	}
> +#endif
> +
> +	params =3D tag_next(params);
> +}
> +
> +static void setup_revision_tag(void)
> +{
> +	u32 system_rev =3D armlinux_get_revision();
> +
> +	if (system_rev) {
> +		params->hdr.tag =3D ATAG_REVISION;
> +		params->hdr.size =3D tag_size(tag_revision);
> +
> +		params->u.revision.rev =3D system_rev;
> +
> +		params =3D tag_next(params);
> +	}
> +}
> +
> +static void setup_serial_tag(void)
> +{
> +	u64 system_serial =3D armlinux_get_serial();
> +
> +	if (system_serial) {
> +		params->hdr.tag =3D ATAG_SERIAL;
> +		params->hdr.size =3D tag_size(tag_serialnr);
> +
> +		params->u.serialnr.low  =3D system_serial & 0xffffffff;
> +		params->u.serialnr.high =3D system_serial >> 32;
> +
> +		params =3D tag_next(params);
> +	}
> +}
> +
> +static void setup_initrd_tag(unsigned long start, unsigned long size)
> +{
> +	/* an ATAG_INITRD node tells the kernel where the compressed
> +	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
> +	 */
> +	params->hdr.tag =3D ATAG_INITRD2;
> +	params->hdr.size =3D tag_size(tag_initrd);
> +
> +	params->u.initrd.start =3D start;
> +	params->u.initrd.size =3D size;
> +
> +	params =3D tag_next(params);
> +}
> +
> +static void setup_end_tag (void)
> +{
> +	params->hdr.tag =3D ATAG_NONE;
> +	params->hdr.size =3D 0;
> +}
> +
> +static void setup_tags(unsigned long initrd_address,
> +		unsigned long initrd_size, int swap)
> +{
> +	const char *commandline =3D linux_bootargs_get();
> +
> +	setup_start_tag();
> +	setup_memory_tags();
> +	setup_commandline_tag(commandline, swap);
> +
> +	if (initrd_size)
> +		setup_initrd_tag(initrd_address, initrd_size);
> +
> +	setup_revision_tag();
> +	setup_serial_tag();
> +#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
> +	if (atag_appender !=3D NULL)
> +		params =3D atag_appender(params);
> +#endif
> +	setup_end_tag();
> +
> +	printf("commandline: %s\n"
> +	       "arch_number: %d\n", commandline, armlinux_get_architecture());
> +
> +}
> +
> +void start_linux(void *adr, int swap, unsigned long initrd_address,
> +		unsigned long initrd_size, void *oftree)
> +{
> +	void (*kernel)(int zero, int arch, void *params) =3D adr;
> +	void *params =3D NULL;
> +	int architecture;
> +
> +	if (oftree) {
> +		pr_debug("booting kernel with devicetree\n");
> +		params =3D oftree;
> +	} else {
> +		setup_tags(initrd_address, initrd_size, swap);
> +		params =3D armlinux_get_bootparams();
> +	}
> +	architecture =3D armlinux_get_architecture();
> +
> +	shutdown_barebox();
> +
> +	kernel(0, architecture, params);
> +}
> diff --git a/arch/arm64/lib/asm-offsets.c b/arch/arm64/lib/asm-offsets.c
> new file mode 100644
> index 0000000..7bf6d12
> --- /dev/null
> +++ b/arch/arm64/lib/asm-offsets.c
> @@ -0,0 +1,16 @@
> +/*
> + * Generate definitions needed by assembly language modules.
> + * This code generates raw asm output which is post-processed to extract
> + * and format the required data.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include <linux/kbuild.h>
> +
> +int main(void)
> +{
> +	return 0;
> +}
> diff --git a/arch/arm64/lib/barebox.lds b/arch/arm64/lib/barebox.lds
> new file mode 100644
> index 0000000..a626ff9
> --- /dev/null
> +++ b/arch/arm64/lib/barebox.lds
> @@ -0,0 +1,125 @@
> +/*
> + *
> + * Automatically generated file; DO NOT EDIT.
> + * Barebox/arm64 2016.02.0 Configuration
> + *
> + */
> +/*
> + * Helper macros to use CONFIG_ options in C expressions. Note that
> + * these only work with boolean and tristate options.
> + */
> +/*
> + * Getting something that works in C and CPP for an arg that may or may
> + * not be defined is tricky.  Here, if we have "#define CONFIG_BOOGER 1"
> + * we match on the placeholder define, insert the "0," for arg1 and gene=
rate
> + * the triplet (0, 1, 0).  Then the last step cherry picks the 2nd arg (=
a one).
> + * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and=
 when
> + * the last step cherry picks the 2nd arg, we get a zero.
> + */
> +/*
> + * IS_ENABLED(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y' or =
'm',
> + * 0 otherwise.
> + *
> + */
> +/*
> + * IS_BUILTIN(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', 0
> + * otherwise. For boolean options, this is equivalent to
> + * IS_ENABLED(CONFIG_FOO).
> + */
> +/*
> + * IS_MODULE(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'm', 0
> + * otherwise.
> + */
> +/*
> + * (C) Copyright 2000-2004
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + *
> + */
> +/*
> + * Align to a 32 byte boundary equal to the
> + * alignment gcc 4.5 uses for a struct
> + */
> +/* Indirect stringification.  Doing two levels allows the parameter to b=
e a
> + * macro itself.  For example, compile with -DFOO=3Dbar, __stringify(FOO)
> + * converts to "bar".
> + */
> +/* use 2 ASSERT because ld can not accept '"size" "10"' format */
> +OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littl=
eaarch64")
> +OUTPUT_ARCH(aarch64)
> +ENTRY(start)
> +SECTIONS
> +{
> + . =3D 0x40000000;
> +
> + . =3D ALIGN(4);
> + .text :
> + {
> +  _stext =3D .;
> +  _text =3D .;
> +  *(.text_entry*)
> +  __bare_init_start =3D .;
> +  *(.text_bare_init*)
> +  __bare_init_end =3D .;
> +  __exceptions_start =3D .;
> +  KEEP(*(.text_exceptions*))
> +  __exceptions_stop =3D .;
> +  *(.text*)
> + }
> + _barebox_bare_init_size =3D __bare_init_end - _text; ASSERT(_barebox_ba=
re_init_size < 0x01000000, "Barebox bare_init size > ") ASSERT(_barebox_bar=
e_init_size < 0x01000000, "0x01000000")
> + . =3D ALIGN(4);
> + .rodata : { *(.rodata*) }
> + _etext =3D .; /* End of text and rodata section */
> + _sdata =3D .;
> + . =3D ALIGN(4);
> + .data : { *(.data*) }
> + .barebox_imd : { KEEP(*(.barebox_imd_start)) KEEP(*(.barebox_imd_1*)) *=
(.barebox_imd_0*) KEEP(*(.barebox_imd_end)) }
> + . =3D .;
> + __barebox_cmd_start =3D .;
> + .barebox_cmd : { KEEP(*(SORT_BY_NAME(.barebox_cmd*))) }
> + __barebox_cmd_end =3D .;
> + __barebox_magicvar_start =3D .;
> + .barebox_magicvar : { KEEP(*(SORT_BY_NAME(.barebox_magicvar*))) }
> + __barebox_magicvar_end =3D .;
> + __barebox_initcalls_start =3D .;
> + .barebox_initcalls : { KEEP(*(.initcall.0)) KEEP(*(.initcall.1)) KEEP(*=
(.initcall.2)) KEEP(*(.initcall.3)) KEEP(*(.initcall.4)) KEEP(*(.initcall.5=
)) KEEP(*(.initcall.6)) KEEP(*(.initcall.7)) KEEP(*(.initcall.8)) KEEP(*(.i=
nitcall.9)) KEEP(*(.initcall.10)) KEEP(*(.initcall.11)) KEEP(*(.initcall.12=
)) KEEP(*(.initcall.13)) KEEP(*(.initcall.14)) }
> + __barebox_initcalls_end =3D .;
> + __barebox_exitcalls_start =3D .;
> + .barebox_exitcalls : { KEEP(*(.exitcall.0)) KEEP(*(.exitcall.1)) KEEP(*=
(.exitcall.2)) KEEP(*(.exitcall.3)) KEEP(*(.exitcall.4)) KEEP(*(.exitcall.5=
)) KEEP(*(.exitcall.6)) }
> + __barebox_exitcalls_end =3D .;
> + __usymtab_start =3D .;
> + __usymtab : { KEEP(*(__usymtab)) }
> + __usymtab_end =3D .;
> + .oftables : { . =3D ALIGN(8); __clk_of_table_start =3D .; KEEP(*(.__clk=
_of_table)); KEEP(*(.__clk_of_table_end)); __clk_of_table_end =3D .; }
> + .dtb : { . =3D ALIGN(8); __dtb_start =3D .; KEEP(*(.dtb.rodata.*)); __d=
tb_end =3D .; }
> + .rel.dyn : {
> +  __rel_dyn_start =3D .;
> +  *(.rel*)
> +  __rel_dyn_end =3D .;
> + }
> + .dynsym : {
> +  __dynsym_start =3D .;
> +  *(.dynsym)
> +  __dynsym_end =3D .;
> + }
> + _edata =3D .;
> + . =3D ALIGN(4);
> + __bss_start =3D .;
> + .bss : { *(.bss*) }
> + __bss_stop =3D .;
> + _end =3D .;
> + _barebox_image_size =3D __bss_start - 0x40000000;
> +}
> diff --git a/arch/arm64/lib/barebox.lds.S b/arch/arm64/lib/barebox.lds.S
> new file mode 100644
> index 0000000..240699f
> --- /dev/null
> +++ b/arch/arm64/lib/barebox.lds.S
> @@ -0,0 +1,125 @@
> +/*
> + * (C) Copyright 2000-2004
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + *
> + */
> +
> +#include <asm-generic/barebox.lds.h>
> +
> +OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littl=
eaarch64")
> +OUTPUT_ARCH(aarch64)
> +ENTRY(start)
> +SECTIONS
> +{
> +#ifdef CONFIG_RELOCATABLE
> +	. =3D 0x0;
> +#else
> +	. =3D TEXT_BASE;
> +#endif
> +
> +#ifndef CONFIG_PBL_IMAGE
> +	PRE_IMAGE
> +#endif
> +	. =3D ALIGN(4);
> +	.text      :
> +	{
> +		_stext =3D .;
> +		_text =3D .;
> +		*(.text_entry*)
> +		__bare_init_start =3D .;
> +		*(.text_bare_init*)
> +		__bare_init_end =3D .;
> +		__exceptions_start =3D .;
> +		KEEP(*(.text_exceptions*))
> +		__exceptions_stop =3D .;
> +		*(.text*)
> +	}
> +	BAREBOX_BARE_INIT_SIZE
> +
> +	. =3D ALIGN(4);
> +	.rodata : { *(.rodata*) }
> +
> +#ifdef CONFIG_ARM_UNWIND
> +	/*
> +	 * Stack unwinding tables
> +	 */
> +	. =3D ALIGN(8);
> +	.ARM.unwind_idx : {
> +		__start_unwind_idx =3D .;
> +		*(.ARM.exidx*)
> +		__stop_unwind_idx =3D .;
> +	}
> +	.ARM.unwind_tab : {
> +		__start_unwind_tab =3D .;
> +		*(.ARM.extab*)
> +		__stop_unwind_tab =3D .;
> +	}
> +#endif
> +	_etext =3D .;			/* End of text and rodata section */
> +	_sdata =3D .;
> +
> +	. =3D ALIGN(4);
> +	.data : { *(.data*) }
> +
> +	.barebox_imd : { BAREBOX_IMD }
> +
> +	. =3D .;
> +	__barebox_cmd_start =3D .;
> +	.barebox_cmd : { BAREBOX_CMDS }
> +	__barebox_cmd_end =3D .;
> +
> +	__barebox_magicvar_start =3D .;
> +	.barebox_magicvar : { BAREBOX_MAGICVARS }
> +	__barebox_magicvar_end =3D .;
> +
> +	__barebox_initcalls_start =3D .;
> +	.barebox_initcalls : { INITCALLS }
> +	__barebox_initcalls_end =3D .;
> +
> +	__barebox_exitcalls_start =3D .;
> +	.barebox_exitcalls : { EXITCALLS }
> +	__barebox_exitcalls_end =3D .;
> +
> +	__usymtab_start =3D .;
> +	__usymtab : { BAREBOX_SYMS }
> +	__usymtab_end =3D .;
> +
> +	.oftables : { BAREBOX_CLK_TABLE() }
> +
> +	.dtb : { BAREBOX_DTB() }
> +
> +	.rel.dyn : {
> +		__rel_dyn_start =3D .;
> +		*(.rel*)
> +		__rel_dyn_end =3D .;
> +	}
> +
> +	.dynsym : {
> +		__dynsym_start =3D .;
> +		*(.dynsym)
> +		__dynsym_end =3D .;
> +	}
> +
> +	_edata =3D .;
> +
> +	. =3D ALIGN(4);
> +	__bss_start =3D .;
> +	.bss : { *(.bss*) }
> +	__bss_stop =3D .;
> +	_end =3D .;
> +	_barebox_image_size =3D __bss_start - TEXT_BASE;
> +}
> diff --git a/arch/arm64/lib/bootm.c b/arch/arm64/lib/bootm.c
> new file mode 100644
> index 0000000..1913d5f
> --- /dev/null
> +++ b/arch/arm64/lib/bootm.c
> @@ -0,0 +1,572 @@
> +#include <boot.h>
> +#include <common.h>
> +#include <command.h>
> +#include <driver.h>
> +#include <environment.h>
> +#include <image.h>
> +#include <init.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <linux/list.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <linux/sizes.h>
> +#include <libbb.h>
> +#include <magicvar.h>
> +#include <binfmt.h>
> +#include <restart.h>
> +
> +#include <asm/byteorder.h>
> +#include <asm/setup.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/armlinux.h>
> +#include <asm/system.h>
> +
> +/*
> + * sdram_start_and_size() - determine place for putting the kernel/oftre=
e/initrd
> + *
> + * @start:	returns the start address of the first RAM bank
> + * @size:	returns the usable space at the beginning of the first RAM bank
> + *
> + * This function returns the base address of the first RAM bank and the =
free
> + * space found there.
> + *
> + * return: 0 for success, negative error code otherwise
> + */
> +static int sdram_start_and_size(unsigned long *start, unsigned long *siz=
e)
> +{
> +	struct memory_bank *bank;
> +	struct resource *res;
> +
> +	/*
> +	 * We use the first memory bank for the kernel and other resources
> +	 */
> +	bank =3D list_first_entry_or_null(&memory_banks, struct memory_bank,
> +			list);
> +	if (!bank) {
> +		printf("cannot find first memory bank\n");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * If the first memory bank has child resources we can use the bank up
> +	 * to the beginning of the first child resource, otherwise we can use
> +	 * the whole bank.
> +	 */
> +	res =3D list_first_entry_or_null(&bank->res->children, struct resource,
> +			sibling);
> +	if (res)
> +		*size =3D res->start - bank->start;
> +	else
> +		*size =3D bank->size;
> +
> +	*start =3D bank->start;
> +
> +	return 0;
> +}
> +
> +static int __do_bootm_linux(struct image_data *data, unsigned long free_=
mem, int swap)
> +{
> +	unsigned long kernel;
> +	unsigned long initrd_start =3D 0, initrd_size =3D 0, initrd_end =3D 0;
> +	int ret;
> +
> +	kernel =3D data->os_res->start + data->os_entry;
> +
> +	initrd_start =3D data->initrd_address;
> +
> +	if (initrd_start =3D=3D UIMAGE_INVALID_ADDRESS) {
> +		initrd_start =3D PAGE_ALIGN(free_mem);
> +
> +		if (bootm_verbose(data)) {
> +			printf("no initrd load address, defaulting to 0x%08lx\n",
> +				initrd_start);
> +		}
> +	}
> +
> +	if (bootm_has_initrd(data)) {
> +		ret =3D bootm_load_initrd(data, initrd_start);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (data->initrd_res) {
> +		initrd_start =3D data->initrd_res->start;
> +		initrd_end =3D data->initrd_res->end;
> +		initrd_size =3D resource_size(data->initrd_res);
> +		free_mem =3D PAGE_ALIGN(initrd_end);
> +	}
> +
> +	ret =3D bootm_load_devicetree(data, free_mem);
> +	if (ret)
> +		return ret;
> +
> +	if (bootm_verbose(data)) {
> +		printf("\nStarting kernel at 0x%08lx", kernel);
> +		if (initrd_size)
> +			printf(", initrd at 0x%08lx", initrd_start);
> +		if (data->oftree)
> +			printf(", oftree at 0x%p", data->oftree);
> +		printf("...\n");
> +	}
> +
> +	if (data->dryrun)
> +		return 0;
> +
> +	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftr=
ee);
> +
> +	restart_machine();
> +
> +	return -ERESTARTSYS;
> +}
> +
> +static int do_bootm_linux(struct image_data *data)
> +{
> +	unsigned long load_address, mem_start, mem_size, mem_free;
> +	int ret;
> +
> +	ret =3D sdram_start_and_size(&mem_start, &mem_size);
> +	if (ret)
> +		return ret;
> +
> +	load_address =3D data->os_address;
> +
> +	if (load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
> +		/*
> +		 * Just use a conservative default of 4 times the size of the
> +		 * compressed image, to avoid the need for the kernel to
> +		 * relocate itself before decompression.
> +		 */
> +		load_address =3D mem_start + PAGE_ALIGN(
> +		               bootm_get_os_size(data) * 4);
> +		if (bootm_verbose(data))
> +			printf("no OS load address, defaulting to 0x%08lx\n",
> +				load_address);
> +	}
> +
> +	ret =3D bootm_load_os(data, load_address);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * put oftree/initrd close behind compressed kernel image to avoid
> +	 * placing it outside of the kernels lowmem.
> +	 */
> +	mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
> +
> +	return __do_bootm_linux(data, mem_free, 0);
> +}
> +
> +static struct image_handler uimage_handler =3D {
> +	.name =3D "ARM Linux uImage",
> +	.bootm =3D do_bootm_linux,
> +	.filetype =3D filetype_uimage,
> +	.ih_os =3D IH_OS_LINUX,
> +};
> +
> +static struct image_handler rawimage_handler =3D {
> +	.name =3D "ARM raw image",
> +	.bootm =3D do_bootm_linux,
> +	.filetype =3D filetype_unknown,
> +};
> +
> +struct zimage_header {
> +	u32	unused[9];
> +	u32	magic;
> +	u32	start;
> +	u32	end;
> +};
> +
> +#define ZIMAGE_MAGIC 0x016F2818
> +
> +static int do_bootz_linux_fdt(int fd, struct image_data *data)
> +{
> +	struct fdt_header __header, *header;
> +	void *oftree;
> +	int ret;
> +
> +	u32 end;
> +
> +	if (data->oftree)
> +		return -ENXIO;
> +
> +	header =3D &__header;
> +	ret =3D read(fd, header, sizeof(*header));
> +	if (ret < sizeof(*header))
> +		return ret;
> +
> +	if (file_detect_type(header, sizeof(*header)) !=3D filetype_oftree)
> +		return -ENXIO;
> +
> +	end =3D be32_to_cpu(header->totalsize);
> +
> +	oftree =3D malloc(end + 0x8000);
> +	if (!oftree) {
> +		perror("zImage: oftree malloc");
> +		return -ENOMEM;
> +	}
> +
> +	memcpy(oftree, header, sizeof(*header));
> +
> +	end -=3D sizeof(*header);
> +
> +	ret =3D read_full(fd, oftree + sizeof(*header), end);
> +	if (ret < 0)
> +		goto err_free;
> +	if (ret < end) {
> +		printf("premature end of image\n");
> +		ret =3D -EIO;
> +		goto err_free;
> +	}
> +
> +	if (IS_BUILTIN(CONFIG_OFTREE)) {
> +		data->of_root_node =3D of_unflatten_dtb(oftree);
> +		if (!data->of_root_node) {
> +			pr_err("unable to unflatten devicetree\n");
> +			ret =3D -EINVAL;
> +			goto err_free;
> +		}
> +		free(oftree);
> +	} else {
> +		data->oftree =3D oftree;
> +	}
> +
> +	pr_info("zImage: concatenated oftree detected\n");
> +
> +	return 0;
> +
> +err_free:
> +	free(oftree);
> +
> +	return ret;
> +}
> +
> +static int do_bootz_linux(struct image_data *data)
> +{
> +	int fd, ret, swap =3D 0;
> +	struct zimage_header __header, *header;
> +	void *zimage;
> +	u32 end, start;
> +	size_t image_size;
> +	unsigned long load_address =3D data->os_address;
> +	unsigned long mem_start, mem_size, mem_free;
> +
> +	ret =3D sdram_start_and_size(&mem_start, &mem_size);
> +	if (ret)
> +		return ret;
> +
> +	fd =3D open(data->os_file, O_RDONLY);
> +	if (fd < 0) {
> +		perror("open");
> +		return 1;
> +	}
> +
> +	header =3D &__header;
> +	ret =3D read(fd, header, sizeof(*header));
> +	if (ret < sizeof(*header)) {
> +		printf("could not read %s\n", data->os_file);
> +		goto err_out;
> +	}
> +
> +	switch (header->magic) {
> +	case swab32(ZIMAGE_MAGIC):
> +		swap =3D 1;
> +		/* fall through */
> +	case ZIMAGE_MAGIC:
> +		break;
> +	default:
> +		printf("invalid magic 0x%08x\n", header->magic);
> +		ret =3D -EINVAL;
> +		goto err_out;
> +	}
> +
> +	end =3D header->end;
> +	start =3D header->start;
> +
> +	if (swap) {
> +		end =3D swab32(end);
> +		start =3D swab32(start);
> +	}
> +
> +	image_size =3D end - start;
> +
> +	if (load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
> +		/*
> +		 * Just use a conservative default of 4 times the size of the
> +		 * compressed image, to avoid the need for the kernel to
> +		 * relocate itself before decompression.
> +		 */
> +		data->os_address =3D mem_start + PAGE_ALIGN(image_size * 4);
> +
> +		load_address =3D data->os_address;
> +		if (bootm_verbose(data))
> +			printf("no OS load address, defaulting to 0x%08lx\n",
> +				load_address);
> +	}
> +
> +	data->os_res =3D request_sdram_region("zimage", load_address, image_siz=
e);
> +	if (!data->os_res) {
> +		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%d).=
\n",
> +		       load_address, load_address + image_size, image_size);
> +		ret =3D -ENOMEM;
> +		goto err_out;
> +	}
> +
> +	zimage =3D (void *)data->os_res->start;
> +
> +	memcpy(zimage, header, sizeof(*header));
> +
> +	ret =3D read_full(fd, zimage + sizeof(*header),
> +			image_size - sizeof(*header));
> +	if (ret < 0)
> +		goto err_out;
> +	if (ret < image_size - sizeof(*header)) {
> +		printf("premature end of image\n");
> +		ret =3D -EIO;
> +		goto err_out;
> +	}
> +
> +	if (swap) {
> +		void *ptr;
> +		for (ptr =3D zimage; ptr < zimage + end; ptr +=3D 4)
> +			*(u32 *)ptr =3D swab32(*(u32 *)ptr);
> +	}
> +
> +	ret =3D do_bootz_linux_fdt(fd, data);
> +	if (ret && ret !=3D -ENXIO)
> +		goto err_out;
> +
> +	close(fd);
> +
> +	/*
> +	 * put oftree/initrd close behind compressed kernel image to avoid
> +	 * placing it outside of the kernels lowmem.
> +	 */
> +	mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
> +
> +	return __do_bootm_linux(data, mem_free, swap);
> +
> +err_out:
> +	close(fd);
> +
> +	return ret;
> +}
> +
> +static struct image_handler zimage_handler =3D {
> +	.name =3D "ARM zImage",
> +	.bootm =3D do_bootz_linux,
> +	.filetype =3D filetype_arm_zimage,
> +};
> +
> +static struct image_handler barebox_handler =3D {
> +	.name =3D "ARM barebox",
> +	.bootm =3D do_bootm_linux,
> +	.filetype =3D filetype_arm_barebox,
> +};
> +
> +#include <aimage.h>
> +
> +static int aimage_load_resource(int fd, struct resource *r, void* buf, i=
nt ps)
> +{
> +	int ret;
> +	void *image =3D (void *)r->start;
> +	unsigned to_read =3D ps - resource_size(r) % ps;
> +
> +	ret =3D read_full(fd, image, resource_size(r));
> +	if (ret < 0)
> +		return ret;
> +
> +	ret =3D read_full(fd, buf, to_read);
> +	if (ret < 0)
> +		printf("could not read dummy %u\n", to_read);
> +
> +	return ret;
> +}
> +
> +static int do_bootm_aimage(struct image_data *data)
> +{
> +	struct resource *snd_stage_res;
> +	int fd, ret;
> +	struct android_header __header, *header;
> +	void *buf;
> +	int to_read;
> +	struct android_header_comp *cmp;
> +	unsigned long mem_free;
> +	unsigned long mem_start, mem_size;
> +
> +	ret =3D sdram_start_and_size(&mem_start, &mem_size);
> +	if (ret)
> +		return ret;
> +
> +	fd =3D open(data->os_file, O_RDONLY);
> +	if (fd < 0) {
> +		perror("open");
> +		return 1;
> +	}
> +
> +	header =3D &__header;
> +	ret =3D read(fd, header, sizeof(*header));
> +	if (ret < sizeof(*header)) {
> +		printf("could not read %s\n", data->os_file);
> +		goto err_out;
> +	}
> +
> +	printf("Android Image for '%s'\n", header->name);
> +
> +	/*
> +	 * As on tftp we do not support lseek and we will just have to seek
> +	 * for the size of a page - 1 max just buffer instead to read to dummy
> +	 * data
> +	 */
> +	buf =3D xmalloc(header->page_size);
> +
> +	to_read =3D header->page_size - sizeof(*header);
> +	ret =3D read_full(fd, buf, to_read);
> +	if (ret < 0) {
> +		printf("could not read dummy %d from %s\n", to_read, data->os_file);
> +		goto err_out;
> +	}
> +
> +	cmp =3D &header->kernel;
> +	data->os_res =3D request_sdram_region("akernel", cmp->load_addr, cmp->s=
ize);
> +	if (!data->os_res) {
> +		pr_err("Cannot request region 0x%08x - 0x%08x, using default load addr=
ess\n",
> +				cmp->load_addr, cmp->size);
> +
> +		data->os_address =3D mem_start + PAGE_ALIGN(cmp->size * 4);
> +		data->os_res =3D request_sdram_region("akernel", data->os_address, cmp=
->size);
> +		if (!data->os_res) {
> +			pr_err("Cannot request region 0x%08x - 0x%08x\n",
> +					cmp->load_addr, cmp->size);
> +			ret =3D -ENOMEM;
> +			goto err_out;
> +		}
> +	}
> +
> +	ret =3D aimage_load_resource(fd, data->os_res, buf, header->page_size);
> +	if (ret < 0) {
> +		perror("could not read kernel");
> +		goto err_out;
> +	}
> +
> +	/*
> +	 * fastboot always expect a ramdisk
> +	 * in barebox we can be less restrictive
> +	 */
> +	cmp =3D &header->ramdisk;
> +	if (cmp->size) {
> +		data->initrd_res =3D request_sdram_region("ainitrd", cmp->load_addr, c=
mp->size);
> +		if (!data->initrd_res) {
> +			ret =3D -ENOMEM;
> +			goto err_out;
> +		}
> +
> +		ret =3D aimage_load_resource(fd, data->initrd_res, buf, header->page_s=
ize);
> +		if (ret < 0) {
> +			perror("could not read initrd");
> +			goto err_out;
> +		}
> +	}
> +
> +	if (!getenv("aimage_noverwrite_bootargs"))
> +		linux_bootargs_overwrite(header->cmdline);
> +
> +	if (!getenv("aimage_noverwrite_tags"))
> +		armlinux_set_bootparams((void*)header->tags_addr);
> +
> +	cmp =3D &header->second_stage;
> +	if (cmp->size) {
> +		void (*second)(void);
> +
> +		snd_stage_res =3D request_sdram_region("asecond", cmp->load_addr, cmp-=
>size);
> +		if (!snd_stage_res) {
> +			ret =3D -ENOMEM;
> +			goto err_out;
> +		}
> +
> +		ret =3D aimage_load_resource(fd, snd_stage_res, buf, header->page_size=
);
> +		if (ret < 0) {
> +			perror("could not read initrd");
> +			goto err_out;
> +		}
> +
> +		second =3D (void*)snd_stage_res->start;
> +		shutdown_barebox();
> +
> +		second();
> +
> +		restart_machine();
> +	}
> +
> +	close(fd);
> +
> +	/*
> +	 * Put devicetree right after initrd if present or after the kernel
> +	 * if not.
> +	 */
> +	if (data->initrd_res)
> +		mem_free =3D PAGE_ALIGN(data->initrd_res->end);
> +	else
> +		mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
> +
> +	return __do_bootm_linux(data, mem_free, 0);
> +
> +err_out:
> +	linux_bootargs_overwrite(NULL);
> +	close(fd);
> +
> +	return ret;
> +}
> +
> +static struct image_handler aimage_handler =3D {
> +	.name =3D "ARM Android Image",
> +	.bootm =3D do_bootm_aimage,
> +	.filetype =3D filetype_aimage,
> +};
> +
> +#ifdef CONFIG_CMD_BOOTM_AIMAGE
> +BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the b=
ootargs with the one present in aimage");
> +BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags =
addr with the one present in aimage");
> +#endif
> +
> +static struct image_handler arm_fit_handler =3D {
> +        .name =3D "FIT image",
> +        .bootm =3D do_bootm_linux,
> +        .filetype =3D filetype_oftree,
> +};
> +
> +static struct binfmt_hook binfmt_aimage_hook =3D {
> +	.type =3D filetype_aimage,
> +	.exec =3D "bootm",
> +};
> +
> +static struct binfmt_hook binfmt_arm_zimage_hook =3D {
> +	.type =3D filetype_arm_zimage,
> +	.exec =3D "bootm",
> +};
> +
> +static struct binfmt_hook binfmt_barebox_hook =3D {
> +	.type =3D filetype_arm_barebox,
> +	.exec =3D "bootm",
> +};
> +
> +static int armlinux_register_image_handler(void)
> +{
> +	register_image_handler(&barebox_handler);
> +	register_image_handler(&uimage_handler);
> +	register_image_handler(&rawimage_handler);
> +	register_image_handler(&zimage_handler);
> +	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE)) {
> +		register_image_handler(&aimage_handler);
> +		binfmt_register(&binfmt_aimage_hook);
> +	}
> +	if (IS_BUILTIN(CONFIG_CMD_BOOTM_FITIMAGE))
> +	        register_image_handler(&arm_fit_handler);
> +	binfmt_register(&binfmt_arm_zimage_hook);
> +	binfmt_register(&binfmt_barebox_hook);
> +
> +	return 0;
> +}
> +late_initcall(armlinux_register_image_handler);
> diff --git a/arch/arm64/lib/bootu.c b/arch/arm64/lib/bootu.c
> new file mode 100644
> index 0000000..19009c8
> --- /dev/null
> +++ b/arch/arm64/lib/bootu.c
> @@ -0,0 +1,44 @@
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <of.h>
> +#include <asm/armlinux.h>
> +
> +static int do_bootu(int argc, char *argv[])
> +{
> +	int fd;
> +	void *kernel =3D NULL;
> +	void *oftree =3D NULL;
> +
> +	if (argc !=3D 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	fd =3D open(argv[1], O_RDONLY);
> +	if (fd > 0)
> +		kernel =3D (void *)memmap(fd, PROT_READ);
> +
> +	if (!kernel)
> +		kernel =3D (void *)simple_strtoul(argv[1], NULL, 0);
> +
> +#ifdef CONFIG_OFTREE
> +	oftree =3D of_get_fixed_tree(NULL);
> +#endif
> +
> +	start_linux(kernel, 0, 0, 0, oftree);
> +
> +	return 1;
> +}
> +
> +static const __maybe_unused char cmd_bootu_help[] =3D
> +"Usage: bootu <address>\n";
> +
> +BAREBOX_CMD_START(bootu)
> +	.cmd            =3D do_bootu,
> +	BAREBOX_CMD_DESC("boot into already loaded Linux kernel")
> +	BAREBOX_CMD_OPTS("ADDRESS")
> +	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
> +	BAREBOX_CMD_HELP(cmd_bootu_help)
> +BAREBOX_CMD_END
> +
> diff --git a/arch/arm64/lib/bootz.c b/arch/arm64/lib/bootz.c
> new file mode 100644
> index 0000000..5167c9d
> --- /dev/null
> +++ b/arch/arm64/lib/bootz.c
> @@ -0,0 +1,136 @@
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <of.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <linux/sizes.h>
> +#include <asm/byteorder.h>
> +#include <asm/armlinux.h>
> +#include <asm/system.h>
> +#include <asm-generic/memory_layout.h>
> +#include <memory.h>
> +
> +struct zimage_header {
> +	u32	unused[9];
> +	u32	magic;
> +	u32	start;
> +	u32	end;
> +};
> +
> +#define ZIMAGE_MAGIC 0x016F2818
> +
> +static int do_bootz(int argc, char *argv[])
> +{
> +	int fd, ret, swap =3D 0;
> +	struct zimage_header __header, *header;
> +	void *zimage;
> +	void *oftree =3D NULL;
> +	u32 end;
> +	int usemap =3D 0;
> +	struct memory_bank *bank =3D list_first_entry(&memory_banks, struct mem=
ory_bank, list);
> +	struct resource *res =3D NULL;
> +
> +	if (argc !=3D 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	fd =3D open(argv[1], O_RDONLY);
> +	if (fd < 0) {
> +		perror("open");
> +		return 1;
> +	}
> +
> +	/*
> +	 * We can save the memcpy of the zImage if it already is in
> +	 * the first 128MB of SDRAM.
> +	 */
> +	zimage =3D memmap(fd, PROT_READ);
> +	if (zimage && (unsigned long)zimage  >=3D bank->start &&
> +			(unsigned long)zimage < bank->start + SZ_128M) {
> +		usemap =3D 1;
> +		header =3D zimage;
> +	}
> +
> +	if (!usemap) {
> +		header =3D &__header;
> +		ret =3D read(fd, header, sizeof(*header));
> +		if (ret < sizeof(*header)) {
> +			printf("could not read %s\n", argv[1]);
> +			goto err_out;
> +		}
> +	}
> +
> +	switch (header->magic) {
> +#ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
> +	case swab32(ZIMAGE_MAGIC):
> +		swap =3D 1;
> +		/* fall through */
> +#endif
> +	case ZIMAGE_MAGIC:
> +		break;
> +	default:
> +		printf("invalid magic 0x%08x\n", header->magic);
> +		goto err_out;
> +	}
> +
> +	end =3D header->end;
> +
> +	if (swap)
> +		end =3D swab32(end);
> +
> +	if (!usemap) {
> +		if (bank->size <=3D SZ_128M) {
> +			zimage =3D xmalloc(end);
> +		} else {
> +			zimage =3D (void *)bank->start + SZ_8M;
> +			res =3D request_sdram_region("zimage",
> +					bank->start + SZ_8M, end);
> +			if (!res) {
> +				printf("can't request region for kernel\n");
> +				goto err_out1;
> +			}
> +		}
> +
> +		memcpy(zimage, header, sizeof(*header));
> +
> +		ret =3D read(fd, zimage + sizeof(*header), end - sizeof(*header));
> +		if (ret < end - sizeof(*header)) {
> +			printf("could not read %s\n", argv[1]);
> +			goto err_out2;
> +		}
> +	}
> +
> +	if (swap) {
> +		void *ptr;
> +		for (ptr =3D zimage; ptr < zimage + end; ptr +=3D 4)
> +			*(u32 *)ptr =3D swab32(*(u32 *)ptr);
> +	}
> +
> +	printf("loaded zImage from %s with size %d\n", argv[1], end);
> +#ifdef CONFIG_OFTREE
> +	oftree =3D of_get_fixed_tree(NULL);
> +#endif
> +
> +	start_linux(zimage, swap, 0, 0, oftree);
> +
> +	return 0;
> +
> +err_out2:
> +	if (res)
> +		release_sdram_region(res);
> +err_out1:
> +	free(zimage);
> +err_out:
> +	close(fd);
> +
> +	return 1;
> +}
> +
> +BAREBOX_CMD_START(bootz)
> +	.cmd            =3D do_bootz,
> +	BAREBOX_CMD_DESC("boot Linux zImage")
> +	BAREBOX_CMD_OPTS("FILE")
> +	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
> +BAREBOX_CMD_END
> +
> diff --git a/arch/arm64/lib/copy_template.S b/arch/arm64/lib/copy_templat=
e.S
> new file mode 100644
> index 0000000..cc9a842
> --- /dev/null
> +++ b/arch/arm64/lib/copy_template.S
> @@ -0,0 +1,192 @@
> +/*
> + * Copyright (C) 2013 ARM Ltd.
> + * Copyright (C) 2013 Linaro.
> + *
> + * This code is based on glibc cortex strings work originally authored b=
y Linaro
> + * and re-licensed under GPLv2 for the Linux kernel. The original code c=
an
> + * be found @
> + *
> + * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trun=
k/
> + * files/head:/src/aarch64/
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +
> +/*
> + * Copy a buffer from src to dest (alignment handled by the hardware)
> + *
> + * Parameters:
> + *	x0 - dest
> + *	x1 - src
> + *	x2 - n
> + * Returns:
> + *	x0 - dest
> + */
> +dstin	.req	x0
> +src	.req	x1
> +count	.req	x2
> +tmp1	.req	x3
> +tmp1w	.req	w3
> +tmp2	.req	x4
> +tmp2w	.req	w4
> +dst	.req	x6
> +
> +A_l	.req	x7
> +A_h	.req	x8
> +B_l	.req	x9
> +B_h	.req	x10
> +C_l	.req	x11
> +C_h	.req	x12
> +D_l	.req	x13
> +D_h	.req	x14
> +
> +	mov	dst, dstin
> +	cmp	count, #16
> +	/*When memory length is less than 16, the accessed are not aligned.*/
> +	b.lo	.Ltiny15
> +
> +	neg	tmp2, src
> +	ands	tmp2, tmp2, #15/* Bytes to reach alignment. */
> +	b.eq	.LSrcAligned
> +	sub	count, count, tmp2
> +	/*
> +	* Copy the leading memory data from src to dst in an increasing
> +	* address order.By this way,the risk of overwritting the source
> +	* memory data is eliminated when the distance between src and
> +	* dst is less than 16. The memory accesses here are alignment.
> +	*/
> +	tbz	tmp2, #0, 1f
> +	ldrb1	tmp1w, src, #1
> +	strb1	tmp1w, dst, #1
> +1:
> +	tbz	tmp2, #1, 2f
> +	ldrh1	tmp1w, src, #2
> +	strh1	tmp1w, dst, #2
> +2:
> +	tbz	tmp2, #2, 3f
> +	ldr1	tmp1w, src, #4
> +	str1	tmp1w, dst, #4
> +3:
> +	tbz	tmp2, #3, .LSrcAligned
> +	ldr1	tmp1, src, #8
> +	str1	tmp1, dst, #8
> +
> +.LSrcAligned:
> +	cmp	count, #64
> +	b.ge	.Lcpy_over64
> +	/*
> +	* Deal with small copies quickly by dropping straight into the
> +	* exit block.
> +	*/
> +.Ltail63:
> +	/*
> +	* Copy up to 48 bytes of data. At this point we only need the
> +	* bottom 6 bits of count to be accurate.
> +	*/
> +	ands	tmp1, count, #0x30
> +	b.eq	.Ltiny15
> +	cmp	tmp1w, #0x20
> +	b.eq	1f
> +	b.lt	2f
> +	ldp1	A_l, A_h, src, #16
> +	stp1	A_l, A_h, dst, #16
> +1:
> +	ldp1	A_l, A_h, src, #16
> +	stp1	A_l, A_h, dst, #16
> +2:
> +	ldp1	A_l, A_h, src, #16
> +	stp1	A_l, A_h, dst, #16
> +.Ltiny15:
> +	/*
> +	* Prefer to break one ldp/stp into several load/store to access
> +	* memory in an increasing address order,rather than to load/store 16
> +	* bytes from (src-16) to (dst-16) and to backward the src to aligned
> +	* address,which way is used in original cortex memcpy. If keeping
> +	* the original memcpy process here, memmove need to satisfy the
> +	* precondition that src address is at least 16 bytes bigger than dst
> +	* address,otherwise some source data will be overwritten when memove
> +	* call memcpy directly. To make memmove simpler and decouple the
> +	* memcpy's dependency on memmove, withdrew the original process.
> +	*/
> +	tbz	count, #3, 1f
> +	ldr1	tmp1, src, #8
> +	str1	tmp1, dst, #8
> +1:
> +	tbz	count, #2, 2f
> +	ldr1	tmp1w, src, #4
> +	str1	tmp1w, dst, #4
> +2:
> +	tbz	count, #1, 3f
> +	ldrh1	tmp1w, src, #2
> +	strh1	tmp1w, dst, #2
> +3:
> +	tbz	count, #0, .Lexitfunc
> +	ldrb1	tmp1w, src, #1
> +	strb1	tmp1w, dst, #1
> +
> +	b	.Lexitfunc
> +
> +.Lcpy_over64:
> +	subs	count, count, #128
> +	b.ge	.Lcpy_body_large
> +	/*
> +	* Less than 128 bytes to copy, so handle 64 here and then jump
> +	* to the tail.
> +	*/
> +	ldp1	A_l, A_h, src, #16
> +	stp1	A_l, A_h, dst, #16
> +	ldp1	B_l, B_h, src, #16
> +	ldp1	C_l, C_h, src, #16
> +	stp1	B_l, B_h, dst, #16
> +	stp1	C_l, C_h, dst, #16
> +	ldp1	D_l, D_h, src, #16
> +	stp1	D_l, D_h, dst, #16
> +
> +	tst	count, #0x3f
> +	b.ne	.Ltail63
> +	b	.Lexitfunc
> +
> +	/*
> +	* Critical loop.  Start at a new cache line boundary.  Assuming
> +	* 64 bytes per line this ensures the entire loop is in one line.
> +	*/
> +.Lcpy_body_large:
> +	/* pre-get 64 bytes data. */
> +	ldp1	A_l, A_h, src, #16
> +	ldp1	B_l, B_h, src, #16
> +	ldp1	C_l, C_h, src, #16
> +	ldp1	D_l, D_h, src, #16
> +1:
> +	/*
> +	* interlace the load of next 64 bytes data block with store of the last
> +	* loaded 64 bytes data.
> +	*/
> +	stp1	A_l, A_h, dst, #16
> +	ldp1	A_l, A_h, src, #16
> +	stp1	B_l, B_h, dst, #16
> +	ldp1	B_l, B_h, src, #16
> +	stp1	C_l, C_h, dst, #16
> +	ldp1	C_l, C_h, src, #16
> +	stp1	D_l, D_h, dst, #16
> +	ldp1	D_l, D_h, src, #16
> +	subs	count, count, #64
> +	b.ge	1b
> +	stp1	A_l, A_h, dst, #16
> +	stp1	B_l, B_h, dst, #16
> +	stp1	C_l, C_h, dst, #16
> +	stp1	D_l, D_h, dst, #16
> +
> +	tst	count, #0x3f
> +	b.ne	.Ltail63
> +.Lexitfunc:
> diff --git a/arch/arm64/lib/div0.c b/arch/arm64/lib/div0.c
> new file mode 100644
> index 0000000..852cb72
> --- /dev/null
> +++ b/arch/arm64/lib/div0.c
> @@ -0,0 +1,27 @@
> +/*
> + * (C) Copyright 2002
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#include <common.h>
> +
> +extern void __div0(void);
> +
> +/* Replacement (=3Ddummy) for GNU/Linux division-by zero handler */
> +void __div0 (void)
> +{
> +	panic("division by zero\n");
> +}
> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
> new file mode 100644
> index 0000000..cfed319
> --- /dev/null
> +++ b/arch/arm64/lib/memcpy.S
> @@ -0,0 +1,74 @@
> +/*
> + * Copyright (C) 2013 ARM Ltd.
> + * Copyright (C) 2013 Linaro.
> + *
> + * This code is based on glibc cortex strings work originally authored b=
y Linaro
> + * and re-licensed under GPLv2 for the Linux kernel. The original code c=
an
> + * be found @
> + *
> + * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trun=
k/
> + * files/head:/src/aarch64/
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <linux/linkage.h>
> +#include <asm/assembler.h>
> +
> +/*
> + * Copy a buffer from src to dest (alignment handled by the hardware)
> + *
> + * Parameters:
> + *	x0 - dest
> + *	x1 - src
> + *	x2 - n
> + * Returns:
> + *	x0 - dest
> + */
> +	.macro ldrb1 ptr, regB, val
> +	ldrb  \ptr, [\regB], \val
> +	.endm
> +
> +	.macro strb1 ptr, regB, val
> +	strb \ptr, [\regB], \val
> +	.endm
> +
> +	.macro ldrh1 ptr, regB, val
> +	ldrh  \ptr, [\regB], \val
> +	.endm
> +
> +	.macro strh1 ptr, regB, val
> +	strh \ptr, [\regB], \val
> +	.endm
> +
> +	.macro ldr1 ptr, regB, val
> +	ldr \ptr, [\regB], \val
> +	.endm
> +
> +	.macro str1 ptr, regB, val
> +	str \ptr, [\regB], \val
> +	.endm
> +
> +	.macro ldp1 ptr, regB, regC, val
> +	ldp \ptr, \regB, [\regC], \val
> +	.endm
> +
> +	.macro stp1 ptr, regB, regC, val
> +	stp \ptr, \regB, [\regC], \val
> +	.endm
> +
> +	.weak memcpy
> +ENTRY(memcpy)
> +#include "copy_template.S"
> +	ret
> +ENDPROC(memcpy)
> diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
> new file mode 100644
> index 0000000..380a540
> --- /dev/null
> +++ b/arch/arm64/lib/memset.S
> @@ -0,0 +1,215 @@
> +/*
> + * Copyright (C) 2013 ARM Ltd.
> + * Copyright (C) 2013 Linaro.
> + *
> + * This code is based on glibc cortex strings work originally authored b=
y Linaro
> + * and re-licensed under GPLv2 for the Linux kernel. The original code c=
an
> + * be found @
> + *
> + * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trun=
k/
> + * files/head:/src/aarch64/
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <linux/linkage.h>
> +#include <asm/assembler.h>
> +
> +/*
> + * Fill in the buffer with character c (alignment handled by the hardwar=
e)
> + *
> + * Parameters:
> + *	x0 - buf
> + *	x1 - c
> + *	x2 - n
> + * Returns:
> + *	x0 - buf
> + */
> +
> +dstin		.req	x0
> +val		.req	w1
> +count		.req	x2
> +tmp1		.req	x3
> +tmp1w		.req	w3
> +tmp2		.req	x4
> +tmp2w		.req	w4
> +zva_len_x	.req	x5
> +zva_len		.req	w5
> +zva_bits_x	.req	x6
> +
> +A_l		.req	x7
> +A_lw		.req	w7
> +dst		.req	x8
> +tmp3w		.req	w9
> +tmp3		.req	x9
> +
> +	.weak memset
> +ENTRY(memset)
> +	mov	dst, dstin	/* Preserve return value.  */
> +	and	A_lw, val, #255
> +	orr	A_lw, A_lw, A_lw, lsl #8
> +	orr	A_lw, A_lw, A_lw, lsl #16
> +	orr	A_l, A_l, A_l, lsl #32
> +
> +	cmp	count, #15
> +	b.hi	.Lover16_proc
> +	/*All store maybe are non-aligned..*/
> +	tbz	count, #3, 1f
> +	str	A_l, [dst], #8
> +1:
> +	tbz	count, #2, 2f
> +	str	A_lw, [dst], #4
> +2:
> +	tbz	count, #1, 3f
> +	strh	A_lw, [dst], #2
> +3:
> +	tbz	count, #0, 4f
> +	strb	A_lw, [dst]
> +4:
> +	ret
> +
> +.Lover16_proc:
> +	/*Whether  the start address is aligned with 16.*/
> +	neg	tmp2, dst
> +	ands	tmp2, tmp2, #15
> +	b.eq	.Laligned
> +/*
> +* The count is not less than 16, we can use stp to store the start 16 by=
tes,
> +* then adjust the dst aligned with 16.This process will make the current
> +* memory address at alignment boundary.
> +*/
> +	stp	A_l, A_l, [dst] /*non-aligned store..*/
> +	/*make the dst aligned..*/
> +	sub	count, count, tmp2
> +	add	dst, dst, tmp2
> +
> +.Laligned:
> +	cbz	A_l, .Lzero_mem
> +
> +.Ltail_maybe_long:
> +	cmp	count, #64
> +	b.ge	.Lnot_short
> +.Ltail63:
> +	ands	tmp1, count, #0x30
> +	b.eq	3f
> +	cmp	tmp1w, #0x20
> +	b.eq	1f
> +	b.lt	2f
> +	stp	A_l, A_l, [dst], #16
> +1:
> +	stp	A_l, A_l, [dst], #16
> +2:
> +	stp	A_l, A_l, [dst], #16
> +/*
> +* The last store length is less than 16,use stp to write last 16 bytes.
> +* It will lead some bytes written twice and the access is non-aligned.
> +*/
> +3:
> +	ands	count, count, #15
> +	cbz	count, 4f
> +	add	dst, dst, count
> +	stp	A_l, A_l, [dst, #-16]	/* Repeat some/all of last store. */
> +4:
> +	ret
> +
> +	/*
> +	* Critical loop. Start at a new cache line boundary. Assuming
> +	* 64 bytes per line, this ensures the entire loop is in one line.
> +	*/
> +.Lnot_short:
> +	sub	dst, dst, #16/* Pre-bias.  */
> +	sub	count, count, #64
> +1:
> +	stp	A_l, A_l, [dst, #16]
> +	stp	A_l, A_l, [dst, #32]
> +	stp	A_l, A_l, [dst, #48]
> +	stp	A_l, A_l, [dst, #64]!
> +	subs	count, count, #64
> +	b.ge	1b
> +	tst	count, #0x3f
> +	add	dst, dst, #16
> +	b.ne	.Ltail63
> +.Lexitfunc:
> +	ret
> +
> +	/*
> +	* For zeroing memory, check to see if we can use the ZVA feature to
> +	* zero entire 'cache' lines.
> +	*/
> +.Lzero_mem:
> +	cmp	count, #63
> +	b.le	.Ltail63
> +	/*
> +	* For zeroing small amounts of memory, it's not worth setting up
> +	* the line-clear code.
> +	*/
> +	cmp	count, #128
> +	b.lt	.Lnot_short /*count is at least  128 bytes*/
> +
> +	mrs	tmp1, dczid_el0
> +	tbnz	tmp1, #4, .Lnot_short
> +	mov	tmp3w, #4
> +	and	zva_len, tmp1w, #15	/* Safety: other bits reserved.  */
> +	lsl	zva_len, tmp3w, zva_len
> +
> +	ands	tmp3w, zva_len, #63
> +	/*
> +	* ensure the zva_len is not less than 64.
> +	* It is not meaningful to use ZVA if the block size is less than 64.
> +	*/
> +	b.ne	.Lnot_short
> +.Lzero_by_line:
> +	/*
> +	* Compute how far we need to go to become suitably aligned. We're
> +	* already at quad-word alignment.
> +	*/
> +	cmp	count, zva_len_x
> +	b.lt	.Lnot_short		/* Not enough to reach alignment.  */
> +	sub	zva_bits_x, zva_len_x, #1
> +	neg	tmp2, dst
> +	ands	tmp2, tmp2, zva_bits_x
> +	b.eq	2f			/* Already aligned.  */
> +	/* Not aligned, check that there's enough to copy after alignment.*/
> +	sub	tmp1, count, tmp2
> +	/*
> +	* grantee the remain length to be ZVA is bigger than 64,
> +	* avoid to make the 2f's process over mem range.*/
> +	cmp	tmp1, #64
> +	ccmp	tmp1, zva_len_x, #8, ge	/* NZCV=3D0b1000 */
> +	b.lt	.Lnot_short
> +	/*
> +	* We know that there's at least 64 bytes to zero and that it's safe
> +	* to overrun by 64 bytes.
> +	*/
> +	mov	count, tmp1
> +1:
> +	stp	A_l, A_l, [dst]
> +	stp	A_l, A_l, [dst, #16]
> +	stp	A_l, A_l, [dst, #32]
> +	subs	tmp2, tmp2, #64
> +	stp	A_l, A_l, [dst, #48]
> +	add	dst, dst, #64
> +	b.ge	1b
> +	/* We've overrun a bit, so adjust dst downwards.*/
> +	add	dst, dst, tmp2
> +2:
> +	sub	count, count, zva_len_x
> +3:
> +	dc	zva, dst
> +	add	dst, dst, zva_len_x
> +	subs	count, count, zva_len_x
> +	b.ge	3b
> +	ands	count, count, zva_bits_x
> +	b.ne	.Ltail_maybe_long
> +	ret
> +ENDPROC(memset)
> diff --git a/arch/arm64/lib/module.c b/arch/arm64/lib/module.c
> new file mode 100644
> index 0000000..be7965d
> --- /dev/null
> +++ b/arch/arm64/lib/module.c
> @@ -0,0 +1,98 @@
> +/*
> + *  linux/arch/arm/kernel/module.c
> + *
> + *  Copyright (C) 2002 Russell King.
> + *  Modified for nommu by Hyok S. Choi
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * Module allocation method suggested by Andi Kleen.
> + */
> +
> +//#include <asm/pgtable.h>
> +#include <common.h>
> +#include <elf.h>
> +#include <module.h>
> +#include <errno.h>
> +
> +int
> +apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int sym=
index,
> +	       unsigned int relindex, struct module *module)
> +{
> +	Elf32_Shdr *symsec =3D sechdrs + symindex;
> +	Elf32_Shdr *relsec =3D sechdrs + relindex;
> +	Elf32_Shdr *dstsec =3D sechdrs + relsec->sh_info;
> +	Elf32_Rel *rel =3D (void *)relsec->sh_addr;
> +	unsigned int i;
> +
> +	for (i =3D 0; i < relsec->sh_size / sizeof(Elf32_Rel); i++, rel++) {
> +		unsigned long loc;
> +		Elf32_Sym *sym;
> +		s32 offset;
> +
> +		offset =3D ELF32_R_SYM(rel->r_info);
> +		if (offset < 0 || offset > (symsec->sh_size / sizeof(Elf32_Sym))) {
> +			printf("%s: bad relocation, section %u reloc %u\n",
> +				module->name, relindex, i);
> +			return -ENOEXEC;
> +		}
> +
> +		sym =3D ((Elf32_Sym *)symsec->sh_addr) + offset;
> +
> +		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)=
) {
> +			printf("%s: out of bounds relocation, "
> +				"section %u reloc %u offset %d size %d\n",
> +				module->name, relindex, i, rel->r_offset,
> +				dstsec->sh_size);
> +			return -ENOEXEC;
> +		}
> +
> +		loc =3D dstsec->sh_addr + rel->r_offset;
> +
> +		switch (ELF32_R_TYPE(rel->r_info)) {
> +		case R_ARM_ABS32:
> +			*(u32 *)loc +=3D sym->st_value;
> +			break;
> +
> +		case R_ARM_PC24:
> +		case R_ARM_CALL:
> +		case R_ARM_JUMP24:
> +			offset =3D (*(u32 *)loc & 0x00ffffff) << 2;
> +			if (offset & 0x02000000)
> +				offset -=3D 0x04000000;
> +
> +			offset +=3D sym->st_value - loc;
> +			if (offset & 3 ||
> +			    offset <=3D (s32)0xfe000000 ||
> +			    offset >=3D (s32)0x02000000) {
> +				printf("%s: relocation out of range, section "
> +				       "%u reloc %u sym '%s'\n", module->name,
> +				       relindex, i, strtab + sym->st_name);
> +				return -ENOEXEC;
> +			}
> +
> +			offset >>=3D 2;
> +
> +			*(u32 *)loc &=3D 0xff000000;
> +			*(u32 *)loc |=3D offset & 0x00ffffff;
> +			break;
> +
> +		default:
> +			printf("%s: unknown relocation: %u\n",
> +			       module->name, ELF32_R_TYPE(rel->r_info));
> +			return -ENOEXEC;
> +		}
> +	}
> +	return 0;
> +}
> +
> +int
> +apply_relocate_add(Elf32_Shdr *sechdrs, const char *strtab,
> +		   unsigned int symindex, unsigned int relsec, struct module *module)
> +{
> +	printf("module %s: ADD RELOCATION unsupported\n",
> +	       module->name);
> +	return -ENOEXEC;
> +}
> diff --git a/arch/arm64/lib/pbl.lds.S b/arch/arm64/lib/pbl.lds.S
> new file mode 100644
> index 0000000..73baff0
> --- /dev/null
> +++ b/arch/arm64/lib/pbl.lds.S
> @@ -0,0 +1,96 @@
> +/*
> + * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#include <linux/sizes.h>
> +#include <asm-generic/barebox.lds.h>
> +#include <asm-generic/memory_layout.h>
> +
> +#ifdef CONFIG_PBL_RELOCATABLE
> +#define BASE	0x0
> +#else
> +#define BASE	(TEXT_BASE - SZ_2M)
> +#endif
> +
> +OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
> +OUTPUT_ARCH(arm)
> +SECTIONS
> +{
> +	. =3D BASE;
> +
> +	PRE_IMAGE
> +
> +	. =3D ALIGN(4);
> +	.text      :
> +	{
> +		_stext =3D .;
> +		_text =3D .;
> +		*(.text_head_entry*)
> +		__bare_init_start =3D .;
> +		*(.text_bare_init*)
> +		__bare_init_end =3D .;
> +		*(.text*)
> +	}
> +
> +	/* Discard unwind if enable in barebox */
> +	/DISCARD/ : { *(.ARM.ex*) }
> +
> +	BAREBOX_BARE_INIT_SIZE
> +	BAREBOX_PBL_SIZE
> +
> +	. =3D ALIGN(4);
> +	.rodata : { *(.rodata*) }
> +
> +	.barebox_imd : { BAREBOX_IMD }
> +
> +	_etext =3D .;			/* End of text and rodata section */
> +
> +	. =3D ALIGN(4);
> +	.data : { *(.data*) }
> +
> +	.rel.dyn : {
> +		__rel_dyn_start =3D .;
> +		*(.rel*)
> +		__rel_dyn_end =3D .;
> +	}
> +
> +	.dynsym : {
> +		__dynsym_start =3D .;
> +		*(.dynsym)
> +		__dynsym_end =3D .;
> +	}
> +
> +	. =3D ALIGN(4);
> +	__bss_start =3D .;
> +	.bss : { *(.bss*) }
> +	__bss_stop =3D .;
> +	_end =3D .;
> +
> +	. =3D ALIGN(4);
> +	__piggydata_start =3D .;
> +	.piggydata : {
> +		*(.piggydata)
> +	}
> +	__piggydata_end =3D .;
> +
> +	. =3D ALIGN(4);
> +	.image_end : {
> +		KEEP(*(.image_end))
> +	}
> +	__image_end =3D .;
> +	_barebox_image_size =3D __image_end - BASE;
> +	_barebox_pbl_size =3D __bss_start - BASE;
> +}
> diff --git a/arch/arm64/lib/runtime-offset.S b/arch/arm64/lib/runtime-off=
set.S
> new file mode 100644
> index 0000000..e368baa
> --- /dev/null
> +++ b/arch/arm64/lib/runtime-offset.S
> @@ -0,0 +1,52 @@
> +#include <linux/linkage.h>
> +#include <asm/assembler.h>
> +
> +.section ".text_bare_init","ax"
> +
> +/*
> + * Get the offset between the link address and the address
> + * we are currently running at.
> + */
> +ENTRY(get_runtime_offset)
> +1:	adr x0, 1b
> +	adr x1, get_runtime_offset
> +	subs x0, x1, x0
> +	subs x0, x0, #1
> +	ret
> +
> +linkadr:
> +.word get_runtime_offset
> +ENDPROC(get_runtime_offset)
> +
> +.globl __ld_var_base
> +__ld_var_base:
> +
> +/*
> + * Functions to calculate selected linker supplied variables during runt=
ime.
> + * This is needed for relocatable binaries when the linker variables are
> + * needed before finxing up the relocations.
> + */
> +.macro ld_var_entry name
> +	ENTRY(__ld_var_\name)
> +		ldr x0, __\name
> +		b 1f
> +	__\name: .word \name - __ld_var_base
> +	ENDPROC(__ld_var_\name)
> +.endm
> +
> +ld_var_entry _text
> +ld_var_entry __rel_dyn_start
> +ld_var_entry __rel_dyn_end
> +ld_var_entry __dynsym_start
> +ld_var_entry __dynsym_end
> +ld_var_entry _barebox_image_size
> +ld_var_entry __bss_start
> +ld_var_entry __bss_stop
> +#ifdef __PBL__
> +ld_var_entry __image_end
> +#endif
> +
> +1:
> +	ldr x1, =3D__ld_var_base
> +	adds x0, x0, x1
> +	ret
> diff --git a/arch/arm64/lib/unwind.c b/arch/arm64/lib/unwind.c
> new file mode 100644
> index 0000000..c3dca5b
> --- /dev/null
> +++ b/arch/arm64/lib/unwind.c
> @@ -0,0 +1,349 @@
> +#include <common.h>
> +#include <init.h>
> +#include <asm/stacktrace.h>
> +#include <asm/unwind.h>
> +#include <asm/sections.h>
> +
> +/* Dummy functions to avoid linker complaints */
> +void __aeabi_unwind_cpp_pr0(void)
> +{
> +};
> +EXPORT_SYMBOL(__aeabi_unwind_cpp_pr0);
> +
> +void __aeabi_unwind_cpp_pr1(void)
> +{
> +};
> +EXPORT_SYMBOL(__aeabi_unwind_cpp_pr1);
> +
> +void __aeabi_unwind_cpp_pr2(void)
> +{
> +};
> +EXPORT_SYMBOL(__aeabi_unwind_cpp_pr2);
> +
> +struct unwind_ctrl_block {
> +	unsigned long vrs[16];		/* virtual register set */
> +	unsigned long *insn;		/* pointer to the current instructions word */
> +	int entries;			/* number of entries left to interpret */
> +	int byte;			/* current byte number in the instructions word */
> +};
> +
> +enum regs {
> +	FP =3D 11,
> +	SP =3D 13,
> +	LR =3D 14,
> +	PC =3D 15
> +};
> +
> +#define THREAD_SIZE               8192
> +
> +extern struct unwind_idx __start_unwind_idx[];
> +extern struct unwind_idx __stop_unwind_idx[];
> +
> +/* Convert a prel31 symbol to an absolute address */
> +#define prel31_to_addr(ptr)				\
> +({							\
> +	/* sign-extend to 32 bits */			\
> +	long offset =3D (((long)*(ptr)) << 1) >> 1;	\
> +	(unsigned long)(ptr) + offset;			\
> +})
> +
> +static inline int is_kernel_text(unsigned long addr)
> +{
> +	if ((addr >=3D (unsigned long)_stext && addr <=3D (unsigned long)_etext=
))
> +		return 1;
> +	return 0;
> +}
> +
> +void dump_backtrace_entry(unsigned long where, unsigned long from, unsig=
ned long frame)
> +{
> +#ifdef CONFIG_KALLSYMS
> +	printk("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, =
from, (void *)from);
> +#else
> +	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
> +#endif
> +}
> +
> +/*
> + * Binary search in the unwind index. The entries entries are
> + * guaranteed to be sorted in ascending order by the linker.
> + */
> +static struct unwind_idx *search_index(unsigned long addr,
> +				       struct unwind_idx *first,
> +				       struct unwind_idx *last)
> +{
> +	pr_debug("%s(%08lx, %p, %p)\n", __func__, addr, first, last);
> +
> +	if (addr < first->addr) {
> +		pr_warning("unwind: Unknown symbol address %08lx\n", addr);
> +		return NULL;
> +	} else if (addr >=3D last->addr)
> +		return last;
> +
> +	while (first < last - 1) {
> +		struct unwind_idx *mid =3D first + ((last - first + 1) >> 1);
> +
> +		if (addr < mid->addr)
> +			last =3D mid;
> +		else
> +			first =3D mid;
> +	}
> +
> +	return first;
> +}
> +
> +static struct unwind_idx *unwind_find_idx(unsigned long addr)
> +{
> +	struct unwind_idx *idx =3D NULL;
> +
> +	pr_debug("%s(%08lx)\n", __func__, addr);
> +
> +	if (is_kernel_text(addr))
> +		/* main unwind table */
> +		idx =3D search_index(addr, __start_unwind_idx,
> +				   __stop_unwind_idx - 1);
> +	else {
> +		/* module unwinding not supported */
> +	}
> +
> +	pr_debug("%s: idx =3D %p\n", __func__, idx);
> +	return idx;
> +}
> +
> +static unsigned long unwind_get_byte(struct unwind_ctrl_block *ctrl)
> +{
> +	unsigned long ret;
> +
> +	if (ctrl->entries <=3D 0) {
> +		pr_warning("unwind: Corrupt unwind table\n");
> +		return 0;
> +	}
> +
> +	ret =3D (*ctrl->insn >> (ctrl->byte * 8)) & 0xff;
> +
> +	if (ctrl->byte =3D=3D 0) {
> +		ctrl->insn++;
> +		ctrl->entries--;
> +		ctrl->byte =3D 3;
> +	} else
> +		ctrl->byte--;
> +
> +	return ret;
> +}
> +
> +/*
> + * Execute the current unwind instruction.
> + */
> +static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
> +{
> +	unsigned long insn =3D unwind_get_byte(ctrl);
> +
> +	pr_debug("%s: insn =3D %08lx\n", __func__, insn);
> +
> +	if ((insn & 0xc0) =3D=3D 0x00)
> +		ctrl->vrs[SP] +=3D ((insn & 0x3f) << 2) + 4;
> +	else if ((insn & 0xc0) =3D=3D 0x40)
> +		ctrl->vrs[SP] -=3D ((insn & 0x3f) << 2) + 4;
> +	else if ((insn & 0xf0) =3D=3D 0x80) {
> +		unsigned long mask;
> +		unsigned long *vsp =3D (unsigned long *)ctrl->vrs[SP];
> +		int load_sp, reg =3D 4;
> +
> +		insn =3D (insn << 8) | unwind_get_byte(ctrl);
> +		mask =3D insn & 0x0fff;
> +		if (mask =3D=3D 0) {
> +			pr_warning("unwind: 'Refuse to unwind' instruction %04lx\n",
> +				   insn);
> +			return -URC_FAILURE;
> +		}
> +
> +		/* pop R4-R15 according to mask */
> +		load_sp =3D mask & (1 << (13 - 4));
> +		while (mask) {
> +			if (mask & 1)
> +				ctrl->vrs[reg] =3D *vsp++;
> +			mask >>=3D 1;
> +			reg++;
> +		}
> +		if (!load_sp)
> +			ctrl->vrs[SP] =3D (unsigned long)vsp;
> +	} else if ((insn & 0xf0) =3D=3D 0x90 &&
> +		   (insn & 0x0d) !=3D 0x0d)
> +		ctrl->vrs[SP] =3D ctrl->vrs[insn & 0x0f];
> +	else if ((insn & 0xf0) =3D=3D 0xa0) {
> +		unsigned long *vsp =3D (unsigned long *)ctrl->vrs[SP];
> +		int reg;
> +
> +		/* pop R4-R[4+bbb] */
> +		for (reg =3D 4; reg <=3D 4 + (insn & 7); reg++)
> +			ctrl->vrs[reg] =3D *vsp++;
> +		if (insn & 0x80)
> +			ctrl->vrs[14] =3D *vsp++;
> +		ctrl->vrs[SP] =3D (unsigned long)vsp;
> +	} else if (insn =3D=3D 0xb0) {
> +		if (ctrl->vrs[PC] =3D=3D 0)
> +			ctrl->vrs[PC] =3D ctrl->vrs[LR];
> +		/* no further processing */
> +		ctrl->entries =3D 0;
> +	} else if (insn =3D=3D 0xb1) {
> +		unsigned long mask =3D unwind_get_byte(ctrl);
> +		unsigned long *vsp =3D (unsigned long *)ctrl->vrs[SP];
> +		int reg =3D 0;
> +
> +		if (mask =3D=3D 0 || mask & 0xf0) {
> +			pr_warning("unwind: Spare encoding %04lx\n",
> +			       (insn << 8) | mask);
> +			return -URC_FAILURE;
> +		}
> +
> +		/* pop R0-R3 according to mask */
> +		while (mask) {
> +			if (mask & 1)
> +				ctrl->vrs[reg] =3D *vsp++;
> +			mask >>=3D 1;
> +			reg++;
> +		}
> +		ctrl->vrs[SP] =3D (unsigned long)vsp;
> +	} else if (insn =3D=3D 0xb2) {
> +		unsigned long uleb128 =3D unwind_get_byte(ctrl);
> +
> +		ctrl->vrs[SP] +=3D 0x204 + (uleb128 << 2);
> +	} else {
> +		pr_warning("unwind: Unhandled instruction %02lx\n", insn);
> +		return -URC_FAILURE;
> +	}
> +
> +	pr_debug("%s: fp =3D %08lx sp =3D %08lx lr =3D %08lx pc =3D %08lx\n", _=
_func__,
> +		 ctrl->vrs[FP], ctrl->vrs[SP], ctrl->vrs[LR], ctrl->vrs[PC]);
> +
> +	return URC_OK;
> +}
> +
> +/*
> + * Unwind a single frame starting with *sp for the symbol at *pc. It
> + * updates the *pc and *sp with the new values.
> + */
> +int unwind_frame(struct stackframe *frame)
> +{
> +	unsigned long high, low;
> +	struct unwind_idx *idx;
> +	struct unwind_ctrl_block ctrl;
> +
> +	/* only go to a higher address on the stack */
> +	low =3D frame->sp;
> +	high =3D ALIGN(low, THREAD_SIZE);
> +
> +	pr_debug("%s(pc =3D %08lx lr =3D %08lx sp =3D %08lx)\n", __func__,
> +		 frame->pc, frame->lr, frame->sp);
> +
> +	if (!is_kernel_text(frame->pc))
> +		return -URC_FAILURE;
> +
> +	idx =3D unwind_find_idx(frame->pc);
> +	if (!idx) {
> +		pr_warning("unwind: Index not found %08lx\n", frame->pc);
> +		return -URC_FAILURE;
> +	}
> +
> +	ctrl.vrs[FP] =3D frame->fp;
> +	ctrl.vrs[SP] =3D frame->sp;
> +	ctrl.vrs[LR] =3D frame->lr;
> +	ctrl.vrs[PC] =3D 0;
> +
> +	if (idx->insn =3D=3D 1)
> +		/* can't unwind */
> +		return -URC_FAILURE;
> +	else if ((idx->insn & 0x80000000) =3D=3D 0)
> +		/* prel31 to the unwind table */
> +		ctrl.insn =3D (unsigned long *)prel31_to_addr(&idx->insn);
> +	else if ((idx->insn & 0xff000000) =3D=3D 0x80000000)
> +		/* only personality routine 0 supported in the index */
> +		ctrl.insn =3D &idx->insn;
> +	else {
> +		pr_warning("unwind: Unsupported personality routine %08lx in the index=
 at %p\n",
> +			   idx->insn, idx);
> +		return -URC_FAILURE;
> +	}
> +
> +	/* check the personality routine */
> +	if ((*ctrl.insn & 0xff000000) =3D=3D 0x80000000) {
> +		ctrl.byte =3D 2;
> +		ctrl.entries =3D 1;
> +	} else if ((*ctrl.insn & 0xff000000) =3D=3D 0x81000000) {
> +		ctrl.byte =3D 1;
> +		ctrl.entries =3D 1 + ((*ctrl.insn & 0x00ff0000) >> 16);
> +	} else {
> +		pr_warning("unwind: Unsupported personality routine %08lx at %p\n",
> +			   *ctrl.insn, ctrl.insn);
> +		return -URC_FAILURE;
> +	}
> +
> +	while (ctrl.entries > 0) {
> +		int urc =3D unwind_exec_insn(&ctrl);
> +		if (urc < 0)
> +			return urc;
> +		if (ctrl.vrs[SP] < low || ctrl.vrs[SP] >=3D high)
> +			return -URC_FAILURE;
> +	}
> +
> +	if (ctrl.vrs[PC] =3D=3D 0)
> +		ctrl.vrs[PC] =3D ctrl.vrs[LR];
> +
> +	/* check for infinite loop */
> +	if (frame->pc =3D=3D ctrl.vrs[PC])
> +		return -URC_FAILURE;
> +
> +	frame->fp =3D ctrl.vrs[FP];
> +	frame->sp =3D ctrl.vrs[SP];
> +	frame->lr =3D ctrl.vrs[LR];
> +	frame->pc =3D ctrl.vrs[PC];
> +
> +	return URC_OK;
> +}
> +
> +void unwind_backtrace(struct pt_regs *regs)
> +{
> +	struct stackframe frame;
> +	register unsigned long current_sp asm ("sp");
> +
> +	pr_debug("%s\n", __func__);
> +
> +	if (regs) {
> +		frame.fp =3D regs->ARM_fp;
> +		frame.sp =3D regs->ARM_sp;
> +		frame.lr =3D regs->ARM_lr;
> +		/* PC might be corrupted, use LR in that case. */
> +		frame.pc =3D is_kernel_text(regs->ARM_pc)
> +			 ? regs->ARM_pc : regs->ARM_lr;
> +	} else {
> +		frame.sp =3D current_sp;
> +		frame.lr =3D (unsigned long)__builtin_return_address(0);
> +		frame.pc =3D (unsigned long)unwind_backtrace;
> +	}
> +
> +	while (1) {
> +		int urc;
> +		unsigned long where =3D frame.pc;
> +
> +		urc =3D unwind_frame(&frame);
> +		if (urc < 0)
> +			break;
> +		dump_backtrace_entry(where, frame.pc, frame.sp - 4);
> +	}
> +}
> +
> +void dump_stack(void)
> +{
> +	unwind_backtrace(NULL);
> +}
> +
> +static int unwind_init(void)
> +{
> +	struct unwind_idx *idx;
> +
> +	/* Convert the symbol addresses to absolute values */
> +	for (idx =3D __start_unwind_idx; idx < __stop_unwind_idx; idx++)
> +		idx->addr =3D prel31_to_addr(&idx->addr);
> +
> +	return 0;
> +}
> +core_initcall(unwind_init);
> diff --git a/arch/arm64/mach-virt/Kconfig b/arch/arm64/mach-virt/Kconfig
> new file mode 100644
> index 0000000..1f43606
> --- /dev/null
> +++ b/arch/arm64/mach-virt/Kconfig
> @@ -0,0 +1,15 @@
> +if ARCH_VIRT
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x40000000
> +
> +choice
> +	prompt "ARM Board type"
> +
> +config MACH_VIRT
> +	bool "ARM QEMU virt"
> +
> +endchoice
> +
> +endif
> diff --git a/arch/arm64/mach-virt/Makefile b/arch/arm64/mach-virt/Makefile
> new file mode 100644
> index 0000000..5662311
> --- /dev/null
> +++ b/arch/arm64/mach-virt/Makefile
> @@ -0,0 +1 @@
> +obj-y +=3D devices.o reset.o
> diff --git a/arch/arm64/mach-virt/devices.c b/arch/arm64/mach-virt/device=
s.c
> new file mode 100644
> index 0000000..391f4bf
> --- /dev/null
> +++ b/arch/arm64/mach-virt/devices.c
> @@ -0,0 +1,30 @@
> +/*
> + * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <linux/amba/bus.h>
> +#include <asm/memory.h>
> +#include <mach/devices.h>
> +#include <linux/ioport.h>
> +
> +void virt_add_ddram(u32 size)
> +{
> +	arm_add_mem_device("ram0", 0x50000000, size);
> +}
> +
> +void virt_register_uart(unsigned id)
> +{
> +	resource_size_t start;
> +
> +	switch (id) {
> +	case 0:
> +		start =3D 0x09000000;
> +		break;
> +	default:
> +		return;
> +	}
> +	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
> +}
> diff --git a/arch/arm64/mach-virt/include/mach/debug_ll.h b/arch/arm64/ma=
ch-virt/include/mach/debug_ll.h
> new file mode 100644
> index 0000000..89b0692
> --- /dev/null
> +++ b/arch/arm64/mach-virt/include/mach/debug_ll.h
> @@ -0,0 +1,24 @@
> +/*
> + * Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagniol@jcrosoft.co=
m>
> + *
> + * GPLv2 only
> + */
> +
> +#ifndef __MACH_DEBUG_LL_H__
> +#define   __MACH_DEBUG_LL_H__
> +
> +#include <linux/amba/serial.h>
> +#include <io.h>
> +
> +#define DEBUG_LL_PHYS_BASE		0x10000000
> +#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
> +
> +#ifdef MP
> +#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
> +#else
> +#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
> +#endif
> +
> +#include <asm/debug_ll_pl011.h>
> +
> +#endif
> diff --git a/arch/arm64/mach-virt/include/mach/devices.h b/arch/arm64/mac=
h-virt/include/mach/devices.h
> new file mode 100644
> index 0000000..9872c61
> --- /dev/null
> +++ b/arch/arm64/mach-virt/include/mach/devices.h
> @@ -0,0 +1,13 @@
> +/*
> + * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> + *
> + * GPLv2 only
> + */
> +
> +#ifndef __ASM_ARCH_DEVICES_H__
> +#define __ASM_ARCH_DEVICES_H__
> +
> +void virt_add_ddram(u32 size);
> +void virt_register_uart(unsigned id);
> +
> +#endif /* __ASM_ARCH_DEVICES_H__ */
> diff --git a/arch/arm64/mach-virt/reset.c b/arch/arm64/mach-virt/reset.c
> new file mode 100644
> index 0000000..fb895eb
> --- /dev/null
> +++ b/arch/arm64/mach-virt/reset.c
> @@ -0,0 +1,24 @@
> +/*
> + * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <init.h>
> +#include <restart.h>
> +#include <mach/devices.h>
> +
> +static void virt_reset_soc(struct restart_handler *rst)
> +{
> +	hang();
> +}
> +
> +static int restart_register_feature(void)
> +{
> +	restart_handler_register_fn(virt_reset_soc);
> +
> +	return 0;
> +}
> +coredevice_initcall(restart_register_feature);
> diff --git a/arch/arm64/pbl/Makefile b/arch/arm64/pbl/Makefile
> new file mode 100644
> index 0000000..1ff39db
> --- /dev/null
> +++ b/arch/arm64/pbl/Makefile
> @@ -0,0 +1,58 @@
> +
> +suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) =3D gzip
> +suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	=3D lzo
> +suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	=3D lz4
> +suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN)	=3D xzkern
> +suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	=3D shipped
> +
> +OBJCOPYFLAGS_zbarebox.bin =3D -O binary
> +piggy_o :=3D piggy.$(suffix_y).o
> +
> +targets :=3D zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
> +	   $(piggy_o) piggy.$(suffix_y)
> +
> +# Make sure files are removed during clean
> +extra-y       +=3D piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzker=
n piggy.shipped zbarebox.map
> +
> +ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> +FIX_SIZE=3D-b
> +else
> +FIX_SIZE=3D
> +endif
> +
> +$(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
> +	$(call if_changed,objcopy)
> +	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
> +	$(Q)$(kecho) '  Barebox: fix size'
> +	$(Q)$(objtree)/scripts/fix_size -i -f $(objtree)/$@ $(FIX_SIZE)
> +	$(Q)$(kecho) '  Barebox: $@ is ready'
> +
> +$(obj)/zbarebox.S: $(obj)/zbarebox FORCE
> +	$(call if_changed,disasm)
> +
> +PBL_CPPFLAGS		+=3D -fdata-sections -ffunction-sections
> +LDFLAGS_zbarebox	:=3D -Map $(obj)/zbarebox.map --gc-sections
> +ifdef CONFIG_PBL_RELOCATABLE
> +LDFLAGS_zbarebox +=3D -pie
> +else
> +LDFLAGS_zbarebox +=3D -static
> +endif
> +zbarebox-common :=3D $(barebox-pbl-common) $(obj)/$(piggy_o)
> +zbarebox-lds :=3D $(obj)/zbarebox.lds
> +
> +$(zbarebox-lds): $(obj)/../lib/pbl.lds.S FORCE
> +	$(call if_changed_dep,cpp_lds_S)
> +
> +quiet_cmd_zbarebox__ ?=3D LD      $@
> +      cmd_zbarebox__ ?=3D $(LD) $(LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
> +      -e pbl_start -T $(zbarebox-lds)                              \
> +      --start-group $(zbarebox-common) --end-group                 \
> +      $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
> +
> +$(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
> +	$(call if_changed,zbarebox__)
> +
> +$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
> +	$(call if_changed,$(suffix_y))
> +
> +$(obj)/$(piggy_o): $(obj)/piggy.$(suffix_y) FORCE
> diff --git a/arch/arm64/pbl/piggy.gzip.S b/arch/arm64/pbl/piggy.gzip.S
> new file mode 100644
> index 0000000..4a623c0
> --- /dev/null
> +++ b/arch/arm64/pbl/piggy.gzip.S
> @@ -0,0 +1,6 @@
> +	.section .piggydata,#alloc
> +	.globl  input_data
> +input_data:
> +	.incbin "arch/arm/pbl/piggy.gzip"
> +	.globl  input_data_end
> +input_data_end:
> diff --git a/arch/arm64/pbl/piggy.lz4.S b/arch/arm64/pbl/piggy.lz4.S
> new file mode 100644
> index 0000000..fa9b246
> --- /dev/null
> +++ b/arch/arm64/pbl/piggy.lz4.S
> @@ -0,0 +1,6 @@
> +	.section .piggydata,#alloc
> +	.globl	input_data
> +input_data:
> +	.incbin	"arch/arm/pbl/piggy.lz4"
> +	.globl	input_data_end
> +input_data_end:
> diff --git a/arch/arm64/pbl/piggy.lzo.S b/arch/arm64/pbl/piggy.lzo.S
> new file mode 100644
> index 0000000..e0484c7
> --- /dev/null
> +++ b/arch/arm64/pbl/piggy.lzo.S
> @@ -0,0 +1,6 @@
> +	.section .piggydata,#alloc
> +	.globl	input_data
> +input_data:
> +	.incbin	"arch/arm/pbl/piggy.lzo"
> +	.globl	input_data_end
> +input_data_end:
> diff --git a/arch/arm64/pbl/piggy.shipped.S b/arch/arm64/pbl/piggy.shippe=
d.S
> new file mode 100644
> index 0000000..dbc2569
> --- /dev/null
> +++ b/arch/arm64/pbl/piggy.shipped.S
> @@ -0,0 +1,6 @@
> +	.section .piggydata,#alloc
> +	.globl  input_data
> +input_data:
> +	.incbin "arch/arm/pbl/piggy.shipped"
> +	.globl  input_data_end
> +input_data_end:
> diff --git a/arch/arm64/pbl/piggy.xzkern.S b/arch/arm64/pbl/piggy.xzkern.S
> new file mode 100644
> index 0000000..a7c0259
> --- /dev/null
> +++ b/arch/arm64/pbl/piggy.xzkern.S
> @@ -0,0 +1,6 @@
> +	.section .piggydata,#alloc
> +	.globl	input_data
> +input_data:
> +	.incbin	"arch/arm/pbl/piggy.xzkern"
> +	.globl	input_data_end
> +input_data_end:
> -- =

> 2.1.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
