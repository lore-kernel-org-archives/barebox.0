Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f46.google.com ([74.125.83.46])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCcMk-0002wx-N7
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:52:12 +0000
Received: by mail-ee0-f46.google.com with SMTP id e49so4144259eek.5
 for <barebox@lists.infradead.org>; Mon, 04 Mar 2013 12:52:08 -0800 (PST)
Date: Mon, 4 Mar 2013 21:53:22 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130304205321.GE911@x61s.8.8.8.8>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
 <1362427389-2144-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362427389-2144-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 6/6] ARM: Add relocatable binary support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Mar 04, 2013 at 09:03:09PM +0100, Sascha Hauer wrote:
> For making the same binary executable on different SoCs which have
> different DRAM addresses we have to be independent of the compile
> time link address.
> 
> This patch adds relocatable binary support for the ARM architecture.
> With this two new functions are available. relocate_to_current_adr
> will fixup the binary to continue executing from the current position.
> relocate_to_adr will copy the binary to a given address, fixup the
> binary and continue executing from there.
> 
> For the PBL and the real image relocatable support can be enabled
> independently. This is done to (hopefully) better cope with setups
> where the PBL runs from SRAM or ROM and the real binary does not.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig                   |  9 +++++
>  arch/arm/Makefile                  |  4 +++
>  arch/arm/cpu/Makefile              |  3 ++
>  arch/arm/cpu/common.c              | 68 ++++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/setupc.S              | 59 +++++++++++++++++++++++++++++++++
>  arch/arm/cpu/start-pbl.c           | 18 +++++++---
>  arch/arm/cpu/start.c               |  5 +++
>  arch/arm/include/asm/barebox-arm.h | 26 +++++++++++++++
>  arch/arm/lib/barebox.lds.S         | 17 ++++++++++
>  arch/arm/pbl/Makefile              |  3 ++
>  arch/arm/pbl/zbarebox.lds.S        | 16 +++++++++
>  common/Kconfig                     |  2 +-
>  pbl/Kconfig                        | 10 ++++++
>  13 files changed, 235 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/cpu/common.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 7ac134e..efe0773 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -12,6 +12,15 @@ config ARM_LINUX
>  	default y
>  	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
>  
> +config RELOCATABLE
> +	prompt "relocatable binary"
> +	bool
> +	help
> +	  Generate a binary which can relocate itself during startup to run
> +	  on different addresses. This is useful if your memory layout is not
> +	  known during compile time. Selecting this will result in a slightly
> +	  bigger image.
> +
>  config HAVE_MACH_ARM_HEAD
>  	bool
>  
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index b98d6b8..5125b87 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -181,6 +181,10 @@ CPPFLAGS += -fdata-sections -ffunction-sections
>  LDFLAGS_barebox += -static --gc-sections
>  endif
>  
> +ifdef CONFIG_RELOCATABLE
> +LDFLAGS_barebox += -pie
> +endif
> +
>  ifdef CONFIG_IMAGE_COMPRESSION
>  KBUILD_BINARY := arch/arm/pbl/zbarebox.bin
>  KBUILD_TARGET := zbarebox.bin
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 44410ee..5935e1c 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -21,3 +21,6 @@ pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
>  obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
>  
>  pbl-y += start-pbl.o setupc.o
> +
> +obj-y += common.o
> +pbl-y += common.o
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> new file mode 100644
> index 0000000..856ddf2
> --- /dev/null
> +++ b/arch/arm/cpu/common.c
> @@ -0,0 +1,68 @@
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
> +
> +#include <common.h>
> +#include <init.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/sections.h>
> +#include <asm/pgtable.h>
> +#include <asm/cache.h>
> +
> +/*
> + * relocate binary to the currently running address
> + */
> +void relocate_to_current_adr(void)
> +{
> +	uint32_t offset;
> +	uint32_t *dstart, *dend, *dynsym;
> +	uint32_t *dynend;

Some nitpick... we can do this in one line maybe with fixup and type.

> +
> +	/* Get offset between linked address and runtime address */
> +	offset = get_runtime_offset();
> +
> +	dstart = (void *)(ld_var(__rel_dyn_start) - offset);
> +	dend = (void *)(ld_var(__rel_dyn_end) - offset);
> +
> +	dynsym = (void *)(ld_var(__dynsym_start) - offset);
> +	dynend = (void *)(ld_var(__dynsym_end) - offset);
> +
> +	while (dstart < dend) {
> +		uint32_t *fixup = (uint32_t *)(*dstart - offset);
> +		uint32_t type = *(dstart + 1);
> +
> +		if ((type & 0xff) == 0x17) {
> +			*fixup = *fixup - offset;
> +		} else {
> +			int index = type >> 8;
> +			uint32_t r = dynsym[index * 4 + 1];
> +
> +			*fixup = *fixup + r - offset;
> +		}
> +
> +		*dstart -= offset;
> +		dstart += 2;
> +	}
> +
> +	while (dynsym < dynend)
> +		*dynsym++ = 0;

I think here we can use a memset. :-)

> +
> +	arm_early_mmu_cache_flush();
> +	flush_icache();
> +}
> diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
> index d0de87d..7fd5d01 100644
> --- a/arch/arm/cpu/setupc.S
> +++ b/arch/arm/cpu/setupc.S
> @@ -1,4 +1,5 @@
>  #include <linux/linkage.h>
> +#include <asm/sections.h>
>  
>  .section .text.setupc
>  
> @@ -35,3 +36,61 @@ ENTRY(setup_c)
>  	pop	{r4, r5}
>  	mov	pc, lr
>  ENDPROC(setup_c)
> +
> +#ifdef CONFIG_RELOCATABLE
> +/*
> + * void relocate_to_adr(unsigned long targetadr)
> + *
> + * Copy binary to targetadr, relocate code, clear bss and continue
> + * executing at new address.
> + */
> +.section .text.relocate_to_adr
> +ENTRY(relocate_to_adr)
> +					/* r0: target address */
> +	push	{r3, r4, r5, r6, r7, r8}
> +	mov	r7, lr
> +
> +	mov	r6, r0
> +
> +	bl	get_runtime_offset
> +
> +	mov	r5, r0
> +
> +	ld_var	_text, r0, r4
> +	mov	r8, r0
> +
> +	sub	r1, r0, r5		/* r1: from address */
> +
> +	cmp	r1, r6			/* already at correct address? */
> +	beq	1f			/* yes, skip copy to new address */
> +
> +	ld_var	__bss_start, r2, r4
> +
> +	sub	r2, r2, r0		/* r2: size */
> +	mov	r0, r6			/* r0: target */
> +
> +	add	r7, r7, r0		/* adjust return address */
> +	sub	r7, r7, r1		/* lr += offset */
> +
> +	bl	memcpy			/* copy binary */
> +
> +#ifdef CONFIG_MMU
> +	bl	arm_early_mmu_cache_flush
> +#endif
> +	mov	r0,#0
> +	mcr	p15, 0, r0, c7, c5, 0	/* flush icache */
> +
> +	ldr	r0,=1f
> +	sub	r0, r0, r8
> +	add	r0, r0, r6
> +	mov	pc, r0			/* jump to relocated address */
> +1:

Is this label ever used? I don't see it.

> +	bl	relocate_to_current_adr	/* relocate binary */
> +
> +	mov	lr, r7
> +
> +	pop	{r3, r4, r5, r6, r7, r8}
> +	mov	pc, lr
> +
> +ENDPROC(relocate_to_adr)
> +#endif
> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> index 91bc8fe..6f03c4a 100644
> --- a/arch/arm/cpu/start-pbl.c
> +++ b/arch/arm/cpu/start-pbl.c
> @@ -55,9 +55,13 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
>  	uint32_t pg_start, pg_end, pg_len;
>  	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
>  	uint32_t endmem = membase + memsize;
> +	unsigned long barebox_base;
>  
>  	endmem -= STACK_SIZE; /* stack */
>  
> +	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
> +		relocate_to_current_adr();
> +
>  	/* Get offset between linked address and runtime address */
>  	offset = get_runtime_offset();
>  
> @@ -65,8 +69,13 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
>  	pg_end = (uint32_t)&input_data_end - offset;
>  	pg_len = pg_end - pg_start;
>  
> +	if (IS_ENABLED(CONFIG_RELOCATABLE))
> +		barebox_base = arm_barebox_image_place(membase + memsize);
> +	else
> +		barebox_base = TEXT_BASE;
> +
>  	if (offset && (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY) ||
> -				region_overlap(pg_start, pg_len, TEXT_BASE, pg_len * 4))) {
> +				region_overlap(pg_start, pg_len, barebox_base, pg_len * 4))) {
>  		/*
>  		 * copy piggydata binary to its link address
>  		 */
> @@ -86,14 +95,15 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
>  	free_mem_ptr = endmem;
>  	free_mem_end_ptr = free_mem_ptr + SZ_128K;
>  
> -	pbl_barebox_uncompress((void*)TEXT_BASE, (void *)pg_start, pg_len);
> +	pbl_barebox_uncompress((void*)barebox_base, (void *)pg_start, pg_len);
>  
> +	arm_early_mmu_cache_flush();
>  	flush_icache();
>  
>  	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> -		barebox = (void *)(TEXT_BASE + 1);
> +		barebox = (void *)(barebox_base + 1);
>  	else
> -		barebox = (void *)TEXT_BASE;
> +		barebox = (void *)barebox_base;
>  
>  	barebox(membase, memsize, boarddata);
>  }
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index cd34d9c..7c2bcd0 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -37,6 +37,11 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
>  	unsigned long endmem = membase + memsize;
>  	unsigned long malloc_start, malloc_end;
>  
> +	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
> +		unsigned long barebox_base = arm_barebox_image_place(endmem);
> +		relocate_to_adr(barebox_base);
> +	}
> +
>  	setup_c();
>  
>  	arm_stack_top = endmem;
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index f051fe3..76e31a0 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -26,6 +26,7 @@
>  #define _BAREBOX_ARM_H_
>  
>  #include <sizes.h>
> +#include <asm-generic/memory_layout.h>
>  
>  /* cpu/.../cpu.c */
>  int	cleanup_before_linux(void);
> @@ -40,6 +41,8 @@ void board_init_lowlevel(void);
>  uint32_t get_runtime_offset(void);
>  
>  void setup_c(void);
> +void relocate_to_current_adr(void);
> +void relocate_to_adr(unsigned long target);
>  void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
>  
>  #ifdef CONFIG_RELOCATABLE
> @@ -50,4 +53,27 @@ static inline void arm_fixup_vectors(void)
>  }
>  #endif
>  
> +/*
> + * For relocatable binaries find a suitable start address for the
> + * relocated binary. Beginning at the memory end substract the reserved
> + * space and round down a bit at the end. This is used by the pbl to
> + * extract the image to a suitable place so that the uncompressed image
> + * does not have to copy itself to another place. Also it's used by
> + * the uncompressed image to relocate itself to the same place.
> + */
> +static inline unsigned long arm_barebox_image_place(unsigned long endmem)
> +{
> +	endmem -= STACK_SIZE;
> +	endmem -= SZ_32K; /* ttb */
> +	endmem -= SZ_128K; /* early malloc */
> +	endmem -= SZ_1M; /* place for barebox image */
> +
> +	/*
> +	 * round down to make translating the objdump easier
> +	 */
> +	endmem &= ~(SZ_1M - 1);
> +
> +	return endmem;
> +}
> +
>  #endif	/* _BAREBOX_ARM_H_ */
> diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> index e5aee8c..abdd69e 100644
> --- a/arch/arm/lib/barebox.lds.S
> +++ b/arch/arm/lib/barebox.lds.S
> @@ -25,7 +25,11 @@ OUTPUT_ARCH(arm)
>  ENTRY(start)
>  SECTIONS
>  {
> +#ifdef CONFIG_RELOCATABLE
> +	. = 0x0;
> +#else
>  	. = TEXT_BASE;
> +#endif
>  
>  #ifndef CONFIG_PBL_IMAGE
>  	PRE_IMAGE
> @@ -88,7 +92,20 @@ SECTIONS
>  	__usymtab : { BAREBOX_SYMS }
>  	__usymtab_end = .;
>  
> +	.rel.dyn : {
> +		__rel_dyn_start = .;
> +		*(.rel*)
> +		__rel_dyn_end = .;
> +	}
> +
> +	.dynsym : {
> +		__dynsym_start = .;
> +		*(.dynsym)
> +		__dynsym_end = .;
> +	}
> +
>  	_edata = .;
> +
>  	. = ALIGN(4);
>  	__bss_start = .;
>  	.bss : { *(.bss*) }
> diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
> index 6eeee73..3f50f77 100644
> --- a/arch/arm/pbl/Makefile
> +++ b/arch/arm/pbl/Makefile
> @@ -23,6 +23,9 @@ $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
>  PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
>  LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map
>  LDFLAGS_zbarebox	+= -static --gc-sections
> +ifdef CONFIG_PBL_RELOCATABLE
> +LDFLAGS_zbarebox += -pie
> +endif
>  zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
>  zbarebox-lds := $(obj)/zbarebox.lds
>  
> diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
> index 564b3c6..6b23bbe 100644
> --- a/arch/arm/pbl/zbarebox.lds.S
> +++ b/arch/arm/pbl/zbarebox.lds.S
> @@ -29,7 +29,11 @@ OUTPUT_ARCH(arm)
>  ENTRY(pbl_start)
>  SECTIONS
>  {
> +#ifdef CONFIG_PBL_RELOCATABLE
> +	. = 0x0;
> +#else
>  	. = TEXT_BASE - SZ_2M;
> +#endif
>  
>  	PRE_IMAGE
>  
> @@ -58,6 +62,18 @@ SECTIONS
>  	. = ALIGN(4);
>  	.data : { *(.data*) }
>  
> +	.rel.dyn : {
> +		__rel_dyn_start = .;
> +		*(.rel*)
> +		__rel_dyn_end = .;
> +	}
> +
> +	.dynsym : {
> +		__dynsym_start = .;
> +		*(.dynsym)
> +		__dynsym_end = .;
> +	}
> +
>  	. = ALIGN(4);
>  	__bss_start = .;
>  	.bss : { *(.bss*) }
> diff --git a/common/Kconfig b/common/Kconfig
> index 3a55e01..92a6fdf 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -243,7 +243,7 @@ config KALLSYMS
>  	  This is useful to print a nice backtrace when an exception occurs.
>  
>  config RELOCATABLE
> -	depends on PPC
> +	depends on PPC || ARM
>  	bool "generate relocatable barebox binary"
>  	help
>  	  A non relocatable barebox binary will run at it's compiled in
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index 39752cc..5c7f62e 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -18,6 +18,16 @@ config PBL_FORCE_PIGGYDATA_COPY
>  
>  if PBL_IMAGE
>  
> +config PBL_RELOCATABLE
> +	depends on ARM
> +	bool "relocatable pbl image"
> +	help
> +	  Generate a pbl binary which can relocate itself during startup to run
> +	  on different addresses. This is useful if your memory layout is not
> +	  known during compile time.
> +	  This option only inflluences the PBL image. See RELOCATABLE to also make
> +	  the real image relocatable.
> +
>  config IMAGE_COMPRESSION
>  	bool
>  	depends on HAVE_IMAGE_COMPRESSION
> -- 
> 1.8.2.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
