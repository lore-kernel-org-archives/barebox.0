Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Taijv-0001tU-Aa
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 07:59:28 +0000
Date: Tue, 20 Nov 2012 08:59:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121120075925.GC10369@pengutronix.de>
References: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
 <1353154239-31574-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353154239-31574-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 1/3] MIPS: add pre-bootloader (pbl) image support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 17, 2012 at 04:10:37PM +0400, Antony Pavlov wrote:
> This patch is based on ARM pbl support and allows
> creating a pre-bootloader binary for compressed image.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Kconfig               |    2 +
>  arch/mips/Makefile              |   18 +++++
>  arch/mips/boot/Makefile         |    2 +
>  arch/mips/boot/main_entry-pbl.c |   90 ++++++++++++++++++++++++
>  arch/mips/boot/start-pbl.S      |  146 +++++++++++++++++++++++++++++++++++++++
>  arch/mips/pbl/.gitignore        |    6 ++
>  arch/mips/pbl/Makefile          |   40 +++++++++++
>  arch/mips/pbl/piggy.gzip.S      |    6 ++
>  arch/mips/pbl/piggy.lzo.S       |    6 ++
>  arch/mips/pbl/zbarebox.lds.S    |   57 +++++++++++++++
>  10 files changed, 373 insertions(+)
>  create mode 100644 arch/mips/boot/main_entry-pbl.c
>  create mode 100644 arch/mips/boot/start-pbl.S
>  create mode 100644 arch/mips/pbl/.gitignore
>  create mode 100644 arch/mips/pbl/Makefile
>  create mode 100644 arch/mips/pbl/piggy.gzip.S
>  create mode 100644 arch/mips/pbl/piggy.lzo.S
>  create mode 100644 arch/mips/pbl/zbarebox.lds.S
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 7a1eeac..853d406 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -6,6 +6,8 @@ config MIPS
>  	select HAS_KALLSYMS
>  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	select HAVE_CONFIGURABLE_TEXT_BASE
> +	select HAVE_PBL_IMAGE
> +	select HAVE_IMAGE_COMPRESSION
>  	default y
>  
>  config SYS_SUPPORTS_BIG_ENDIAN
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 5e40de7..819e7a3 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -58,6 +58,15 @@ CPPFLAGS += -fdata-sections -ffunction-sections
>  LDFLAGS_barebox += -static --gc-sections
>  endif
>  
> +ifdef CONFIG_IMAGE_COMPRESSION
> +KBUILD_BINARY := arch/mips/pbl/zbarebox.bin
> +KBUILD_TARGET := zbarebox.bin
> +$(KBUILD_BINARY): $(KBUILD_TARGET)
> +else
> +KBUILD_BINARY := barebox.bin
> +KBUILD_TARGET := barebox.bin
> +endif
> +
>  LDFLAGS_barebox += -nostdlib
>  
>  machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
> @@ -106,3 +115,12 @@ CFLAGS += $(cflags-y)
>  lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
>  
>  CLEAN_FILES    += arch/mips/lib/barebox.lds barebox.map barebox.S
> +
> +pbl := arch/mips/pbl
> +zbarebox.S zbarebox.bin zbarebox: barebox.bin
> +	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
> +
> +archclean:
> +	$(MAKE) $(clean)=$(pbl)
> +
> +KBUILD_IMAGE ?= $(KBUILD_BINARY)
> diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
> index d6d28ce..6b093f1 100644
> --- a/arch/mips/boot/Makefile
> +++ b/arch/mips/boot/Makefile
> @@ -1,2 +1,4 @@
>  obj-y += start.o
>  obj-y += main_entry.o
> +
> +pbl-y += start-pbl.o main_entry-pbl.o
> diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
> new file mode 100644
> index 0000000..51b9176
> --- /dev/null
> +++ b/arch/mips/boot/main_entry-pbl.c
> @@ -0,0 +1,90 @@
> +/*
> + * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
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
> +#include <common.h>
> +#include <init.h>
> +#include <sizes.h>
> +#include <string.h>
> +#include <asm/sections.h>
> +#include <asm-generic/memory_layout.h>
> +#include <debug_ll.h>
> +
> +extern void *input_data;
> +extern void *input_data_end;
> +
> +unsigned long free_mem_ptr;
> +unsigned long free_mem_end_ptr;
> +
> +#define STATIC static
> +
> +#ifdef CONFIG_IMAGE_COMPRESSION_LZO
> +#include "../../../lib/decompress_unlzo.c"
> +#endif
> +
> +#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
> +#include "../../../lib/decompress_inflate.c"
> +#endif
> +
> +void pbl_main_entry(void);
> +
> +static unsigned long *ttb;
> +
> +static noinline void errorfn(char *error)
> +{
> +	PUTS_LL(error);
> +	PUTC_LL('\n');
> +
> +	unreachable();
> +}
> +
> +static void barebox_uncompress(void *compressed_start, unsigned int len)
> +{
> +	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> +	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
> +	free_mem_end_ptr = free_mem_ptr + SZ_128K;
> +
> +	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
> +
> +	decompress((void *)compressed_start,
> +			len,
> +			NULL, NULL,
> +			(void *)TEXT_BASE, NULL, errorfn);
> +
> +	/* FIXME: just now we have no MIPS cache support */
> +	/* flush_icache(); */
> +}
> +
> +void __section(.text_entry) pbl_main_entry(void)
> +{
> +	u32 pg_start, pg_end, pg_len;
> +	void (*barebox)(void);
> +
> +	PUTS_LL("pbl_main_entry()\n");
> +
> +	/* clear bss */
> +	memset(__bss_start, 0, __bss_stop - __bss_start);
> +
> +	pg_start = (u32)&input_data;
> +	pg_end = (u32)&input_data_end;
> +	pg_len = pg_end - pg_start;
> +
> +	barebox_uncompress(&input_data, pg_len);
> +
> +	barebox = (void *)TEXT_BASE;
> +	barebox();
> +}
> diff --git a/arch/mips/boot/start-pbl.S b/arch/mips/boot/start-pbl.S
> new file mode 100644
> index 0000000..ad39f42
> --- /dev/null
> +++ b/arch/mips/boot/start-pbl.S
> @@ -0,0 +1,146 @@
> +/*
> + * Startup Code for MIPS CPU
> + *
> + * Copyright (C) 2011, 2012 Antony Pavlov <antonynpavlov@gmail.com>
> + * ADR macro copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <asm/regdef.h>
> +#include <asm/mipsregs.h>
> +#include <asm/asm.h>
> +#include <asm-generic/memory_layout.h>
> +#include <generated/compile.h>
> +#include <generated/utsrelease.h>
> +
> +//#include <mach/kernel-entry-init.h>
> +
> +	/*
> +	 * ADR macro instruction (inspired by ARM)
> +	 *
> +	 * ARM architecture doesn't have PC-relative jump instruction
> +	 * like MIPS' B/BAL insns. When ARM makes PC-relative jumps,
> +	 * it uses ADR insn. ADR is used to get a destination address
> +	 * of 'label' against current PC. With this, ARM can safely
> +	 * make PC-relative jumps.
> +	 */
> +	.macro	ADR rd label temp
> +	.set	push
> +	.set	noreorder
> +	move	\temp, ra			# preserve ra beforehand
> +	bal	_pc
> +	 nop

This file contains some whitespace damages you could cleanup along the
way.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
