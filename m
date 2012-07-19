Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrrQh-0000WH-To
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 14:10:22 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EAD92FFA2F8
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 16:15:39 +0200 (CEST)
Date: Thu, 19 Jul 2012 16:10:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120719141042.GD22657@game.jcrosoft.org>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-10-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342685582-13244-10-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] Add compressed image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:13 Thu 19 Jul     , Sascha Hauer wrote:
> This allows for creating a lzo compressed binary. This is done by
> linking barebox twice using two linker scripts. One is the regular
> uncompressed binary but without the lowlevel init stuff. The
> other contains the lowlevel init stuff, the decompressor and the
> compressed binary.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Makefile                              |   31 +++++++++++++-
>  arch/arm/Kconfig                      |    1 +
>  arch/arm/Makefile                     |    1 +
>  arch/arm/cpu/start.c                  |   73 +++++++++++++++++++++++++++++++--
>  arch/arm/lib/Makefile                 |    1 +
>  arch/arm/lib/barebox-compressed.lds.S |   71 ++++++++++++++++++++++++++++++++
>  arch/arm/lib/barebox.lds.S            |    3 +-
>  common/Kconfig                        |   12 ++++++
>  include/asm-generic/memory_layout.h   |    2 +
>  lib/vsprintf.c                        |   25 ++++++++++-
>  piggy.lzo.S                           |    6 +++
>  11 files changed, 220 insertions(+), 6 deletions(-)
>  create mode 100644 arch/arm/lib/barebox-compressed.lds.S
>  create mode 100644 piggy.lzo.S
> 
> diff --git a/Makefile b/Makefile
> index ebcf9bf..3ade6cc 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -512,6 +512,7 @@ common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
>  barebox-common := $(common-y)
>  barebox-all    := $(barebox-common)
>  barebox-lds    := $(lds-y)
> +barebox-compressed-lds    := $(lds-compressed-y)
>  
>  # Rule to link barebox
>  # May be overridden by arch/$(ARCH)/Makefile
> @@ -667,6 +668,7 @@ quiet_cmd_objcopy = OBJCOPY $@
>        cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
>  
>  OBJCOPYFLAGS_barebox.bin = -O binary
> +OBJCOPYFLAGS_barebox-uncompressed.bin = -O binary
>  
>  barebox.bin: barebox FORCE
>  	$(call if_changed,objcopy)
> @@ -700,13 +702,39 @@ quiet_cmd_disasm = DISASM  $@
>  
>  barebox.S: barebox FORCE
>  	$(call if_changed,disasm)
> +barebox-uncompressed.S: barebox-uncompressed FORCE
> +	$(call if_changed,disasm)
>  endif
>  
>  # barebox image
> +barebox-uncompressed: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o)
> +	$(call barebox-modpost)
> +	$(call if_changed_rule,barebox__)
> +	$(Q)rm -f .old_version
> +
> +barebox-uncompressed.bin: barebox-uncompressed
> +	$(call if_changed,objcopy)
> +
> +barebox-uncompressed.bin.lzo: barebox-uncompressed.bin
> +	@echo "  LZO    " $@
> +	$(Q)lzop -f -9 -o $@ barebox-uncompressed.bin
> +
> +piggy.lzo.o: barebox-uncompressed.bin.lzo piggy.lzo.S
> +	@echo "  CC     " $@
> +	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c piggy.lzo.S -o $@
> +
> +ifdef CONFIG_IMAGE_COMPRESSION_LZO
> +barebox: piggy.lzo.o
> +	@echo "  LD     " $@
> +	$(Q)$(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
> +		-T $(barebox-compressed-lds) $(barebox-compressed) \
> +		--start-group $(barebox-common) piggy.lzo.o --end-group
> +else
>  barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
>  	$(call barebox-modpost)
>  	$(call if_changed_rule,barebox__)
>  	$(Q)rm -f .old_version
> +endif
>  
>  barebox.srec: barebox
>  	$(OBJCOPY) -O srec $< $@
> @@ -1004,7 +1032,8 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                  .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
>  		.tmp_kallsyms* barebox_default_env* barebox.ldr \
>  		scripts/bareboxenv-target \
> -		Doxyfile.version barebox.srec barebox.s5p
> +		Doxyfile.version barebox.srec barebox.s5p \
> +		barebox-uncompressed barebox-uncompressed.bin barebox-uncompressed.bin.lzo
>  
>  # Directories & files removed with 'make mrproper'
>  MRPROPER_DIRS  += include/config include2 usr/include
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index d988455..2396bae 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -4,6 +4,7 @@ config ARM
>  	select HAS_MODULES
>  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	select HAVE_CONFIGURABLE_TEXT_BASE
> +	select HAVE_IMAGE_COMPRESSION
>  	default y
>  
>  config ARM_AMBA
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index cbbc0a0..a93c4d5 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -208,5 +208,6 @@ common-y += $(BOARD) $(MACH)
>  common-y += arch/arm/lib/ arch/arm/cpu/
>  
>  lds-y	:= arch/arm/lib/barebox.lds
> +lds-compressed-y := arch/arm/lib/barebox-compressed.lds
>  
>  CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index cabe4d2..f4aeefe 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -28,16 +28,36 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/sections.h>
>  
> +#ifdef CONFIG_IMAGE_COMPRESSION_LZO
> +void __naked __section(.text_head_entry) compressed_start(void)
> +{
> +	barebox_arm_head();
> +}
> +
> +void __naked __section(.text_entry) start(void)
can we have a have for all of the __section stuff
> +{
> +	u32 r;
> +
> +	/* Setup the stack */
> +	r = STACK_BASE + STACK_SIZE - 16;
> +	__asm__ __volatile__("mov sp, %0" : : "r"(r));
> +	/* clear bss */
> +	memset(__bss_start, 0, __bss_stop - __bss_start);
> +
> +	start_barebox();
> +}
> +#else
>  void __naked __section(.text_entry) start(void)
>  {
>  	barebox_arm_head();
>  }
> +#endif
>  
>  void __naked __section(.text_exceptions) exception_vectors(void)
>  {
>  	__asm__ __volatile__ (
>  		".arm\n"
> -		"b reset\n"				/* reset */
> +		"1: b 1b\n"					/* reset */
>  #ifdef CONFIG_ARM_EXCEPTIONS
>  		"ldr pc, =undefined_instruction\n"	/* undefined instruction */
>  		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
> @@ -98,6 +118,34 @@ void __naked __bare_init reset(void)
>  	board_init_lowlevel_return();
>  }
>  
> +extern void *input_data;
> +extern void *input_data_end;
> +
> +#define STATIC static
> +#include "../../../lib/decompress_unlzo.c"
> +
> +void barebox_uncompress(void *compressed_start, unsigned int len)
> +{
> +	void (*barebox)(void);
> +
> +#ifdef CONFIG_THUMB2_BAREBOX
> +	barebox = (void *)(TEXT_BASE + 1);
> +#else
> +	barebox = (void *)TEXT_BASE;
> +#endif
I hate the ifdef please use if (IS_ENABLED(x))
> +
> +	decompress_unlzo((void *)compressed_start,
> +			len,
> +			NULL, NULL,
> +			(void *)TEXT_BASE, NULL, NULL);
> +
> +	/* flush I-cache before jumping to the uncompressed binary */
> +	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
macro or inline?
> +
> +	barebox();
> +}
> +
> +
>  /*
>   * Board code can jump here by either returning from board_init_lowlevel
>   * or by calling this function directly.
> @@ -105,7 +153,10 @@ void __naked __bare_init reset(void)
>  void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
>  {
>  	uint32_t r, addr, offset;
> -
> +#ifdef CONFIG_IMAGE_COMPRESSION_LZO
> +	uint32_t compressed_start, compressed_end, len;
> +	void (*uncompress)(void *compressed_start, unsigned int len);
> +#endif
>  	/*
>  	 * Get runtime address of this function. Do not
>  	 * put any code above this.
> @@ -130,8 +181,24 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
>  	/* flush I-cache before jumping to the copied binary */
>  	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
>  
> +#ifdef CONFIG_IMAGE_COMPRESSION_LZO
> +	compressed_start = (uint32_t)&input_data - offset;
> +	compressed_end = (uint32_t)&input_data_end - offset;
> +	len = compressed_end - compressed_start;
> +
> +	uncompress = barebox_uncompress;
> +
> +	/* call start_barebox with its absolute address */
> +	__asm__ __volatile__(
> +			"mov r0, %1\n"
> +			"mov r1, %2\n"
> +			"mov pc, %0\n"
> +			:
> +			: "r"(uncompress), "r"(compressed_start), "r"(len)
> +			: "r0", "r1");
> +#else
>  	/* call start_barebox with its absolute address */
>  	r = (unsigned int)&start_barebox;
>  	__asm__ __volatile__("mov pc, %0" : : "r"(r));
> +#endif
ifdef rrrr :(
>  }
> -
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 1eaf474..044d3e6 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -21,3 +21,4 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
>  obj-$(CONFIG_ARM_UNWIND) += unwind.o
>  obj-$(CONFIG_MODULES) += module.o
>  extra-y += barebox.lds
> +extra-$(CONFIG_IMAGE_COMPRESSION_LZO) += barebox-compressed.lds
> diff --git a/arch/arm/lib/barebox-compressed.lds.S b/arch/arm/lib/barebox-compressed.lds.S
> new file mode 100644
> index 0000000..f267da9
> --- /dev/null
> +++ b/arch/arm/lib/barebox-compressed.lds.S
> @@ -0,0 +1,71 @@
> +/*
> + * (C) Copyright 2000-2004
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
you can put you onw copyright
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <asm-generic/barebox.lds.h>
> +#include <asm-generic/memory_layout.h>
> +
> +OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
> +OUTPUT_ARCH(arm)
> +ENTRY(compressed_start)
> +SECTIONS
> +{
> +	. = HEAD_TEXT_BASE;
> +
> +	PRE_IMAGE
> +
> +	. = ALIGN(4);
> +	.text      :
> +	{
> +		_stext = .;
> +		_text = .;
> +		*(.text_head_entry*)
> +		__ll_return = .;
> +		*(.text_ll_return*)
> +		__bare_init_start = .;
> +		*(.text_bare_init*)
> +		__bare_init_end = .;
> +		*(.text*)
> +	}
macro?
> +	BAREBOX_BARE_INIT_SIZE
> +
> +	. = ALIGN(4);
> +	.rodata : { *(.rodata*) }
> +
> +	_etext = .;			/* End of text and rodata section */
> +
> +	. = ALIGN(4);
> +	.piggydata : {
> +		*(.piggydata)
> +	}
> +
> +	. = ALIGN(4);
> +	.data : { *(.data*) }

ditto
> +
> +	. = ALIGN(4);
> +	__bss_start = .;
> +	.bss : { *(.bss*) }
> +	__bss_stop = .;
ditto
> +	_end = .;
> +	_barebox_image_size = __bss_start - HEAD_TEXT_BASE;
ditto
> +}
> diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> index e0bae70..b415830 100644
> --- a/arch/arm/lib/barebox.lds.S
> +++ b/arch/arm/lib/barebox.lds.S
> @@ -31,8 +31,9 @@ SECTIONS
>  {
>  	. = TEXT_BASE;
>  
> +#ifndef CONFIG_IMAGE_COMPRESSION_LZO
>  	PRE_IMAGE
> -
> +#endif
>  	. = ALIGN(4);
>  	.text      :
>  	{
> diff --git a/common/Kconfig b/common/Kconfig
> index b776031..0e81b57 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -93,6 +93,13 @@ config ENVIRONMENT_VARIABLES
>  
>  menu "memory layout                 "
>  
> +config HAVE_IMAGE_COMPRESSION
> +	bool
> +
> +config IMAGE_COMPRESSION_LZO
> +	depends on HAVE_IMAGE_COMPRESSION
> +	bool "lzo compressed image"
> +
>  config MMU
>  	bool "Enable MMU"
>  	help
> @@ -173,6 +180,11 @@ config MALLOC_SIZE
>  	hex
>  	default 0x400000
>  	prompt "malloc area size"
> +
> +config HEAD_TEXT_BASE
> +	depends on MEMORY_LAYOUT_FIXED && IMAGE_COMPRESSION_LZO
> +	hex
> +	prompt "HEAD_TEXT_BASE"
>  endmenu
>  
>  config BROKEN
> diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
> index 941cd42..a5efaf0 100644
> --- a/include/asm-generic/memory_layout.h
> +++ b/include/asm-generic/memory_layout.h
> @@ -5,11 +5,13 @@
>  
>  #define MALLOC_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE)
>  #define STACK_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE - CONFIG_STACK_SIZE)
> +#define HEAD_TEXT_BASE (TEXT_BASE - 0x100000)
>  
>  #else
>  
>  #define STACK_BASE CONFIG_STACK_BASE
>  #define MALLOC_BASE CONFIG_MALLOC_BASE
> +#define HEAD_TEXT_BASE CONFIG_HEAD_TEXT_BASE
>  
>  #endif
>  
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 17c1973..3f23bf1 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -18,6 +18,7 @@
>  #include <kallsyms.h>
>  
>  #include <common.h>
> +#include <init.h>
>  #include <led.h>
>  
>  unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
> @@ -618,7 +619,7 @@ char *asprintf(const char *fmt, ...)
>  }
>  EXPORT_SYMBOL(asprintf);
>  
> -void __noreturn panic(const char *fmt, ...)
> +static void __noreturn __panic(const char *fmt, ...)
>  {
>  	va_list	args;
>  	va_start(args, fmt);
> @@ -637,4 +638,26 @@ void __noreturn panic(const char *fmt, ...)
>  	reset_cpu(0);
>  #endif
>  }
> +
> +static void (*panic_fn)(const char *fmt, ...);
how about have a default empty panic
> +
> +static int panic_init(void)
> +{
> +	panic_fn = __panic;
> +
> +	return 0;
> +}
> +core_initcall(panic_init);
> +
> +void __noreturn panic(const char *fmt, ...)
> +{
> +	if (panic_fn) {
so we can drop the test
> +		va_list	args;
> +		va_start(args, fmt);
> +		panic_fn(fmt, args);
> +		va_end(args);
> +	}
> +
> +	while(1);
> +}

Best Regrds,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
